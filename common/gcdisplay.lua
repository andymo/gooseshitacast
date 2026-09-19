-- Modified from https://github.com/yzyii/luashitacast

local Toggles = {}
local Cycles = {}
local fonts = require('fonts')

local gcdisplay = {}

local fontSettings = {
    visible = true,
    font_family = 'Arial',
    font_height = 12,
    color = 0xFFFFFFFF,
    position_x = 2222,
    position_y = 725,
    background = {
        visible = true,
        color = 0x66000000,
    }
}

function gcdisplay.AdvanceCycle(name)
    local ctable = Cycles[name]
    if (type(ctable) ~= 'table') then
        return
    end

    ctable.Index = ctable.Index + 1
    if (ctable.Index > #ctable.Array) then
        ctable.Index = 1
    end
end

function gcdisplay.SetCycleIndex(name, index)
    local ctable = Cycles[name]
    if (type(ctable) ~= 'table') then
        return
    end

    if (index <= #ctable.Array) then
        ctable.Index = index
    end
end

function gcdisplay.AdvanceToggle(name)
    if (type(Toggles[name]) ~= 'boolean') then
        return
    elseif Toggles[name] then
        Toggles[name] = false
    else
        Toggles[name] = true
    end
end

function gcdisplay.Update()
    local player = AshitaCore:GetMemoryManager():GetPlayer()

    local MID = player:GetMainJob()
    Main = AshitaCore:GetResourceManager():GetString("jobs.names_abbr", MID)
end

function gcdisplay.CreateToggle(name, default)
    Toggles[name] = default
end

function gcdisplay.GetToggle(name)
    if (Toggles[name] ~= nil) then
        return Toggles[name]
    else
        return false
    end
end

function gcdisplay.CreateCycle(name, values)
    local newCycle = {
        Index = 1,
        Array = values
    }
    Cycles[name] = newCycle
end

function gcdisplay.GetCycle(name)
    local ctable = Cycles[name]
    if (type(ctable) == 'table') then
        return ctable.Array[ctable.Index]
    else
        return 'Unknown'
    end
end

function gcdisplay.Unload()
    if (gcdisplay.FontObject ~= nil) then
        gcdisplay.FontObject:destroy()
    end
    ashita.events.unregister('d3d_present', 'gcdisplay_present_cb')
end

function gcdisplay.Load()
    gcdisplay.Update()
    gcdisplay.FontObject = fonts.new(fontSettings)
    ashita.events.register('d3d_present', 'gcdisplay_present_cb', function ()
        local display = '  ' .. Main
        for k, v in pairs(Toggles) do
            display = display .. '   '
            if (v == true) then
                display = display .. '\n   |cFF00EE00|' .. k .. '|r'
            else
                display = display .. '\n   |cFF989898|' .. k .. '|r'
            end
        end
        for key, value in pairs(Cycles) do
            display = display .. '\n   ' .. key .. ': ' .. '|cFF00EE00|' .. value.Array[value.Index] .. '|r'
        end
        gcdisplay.FontObject.text = display
    end)
end

return gcdisplay