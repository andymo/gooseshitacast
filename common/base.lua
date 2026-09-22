local setmanager = gFunc.LoadFile('common/setmanager.lua');
local base = {};

base.keybinds = {}
base.sets = {}
base.updateLayersSets = function () return; end

base.initSets = function()
    local sets = {}
    -- allows setting of priority result sets before they are calculated
    setmetatable(sets, {__index = function () return {} end})
    return sets;
end

base.init = function(sets, keybinds, updateLayersSets)
    base.keybinds = keybinds;
    base.sets = sets;
    base.updateLayersSets = updateLayersSets;
end

base.onLoad = function()
    setmanager:Init(base.sets);
    for k, v in pairs(base.keybinds) do
        AshitaCore:GetChatManager():QueueCommand(-1, '/bind ' .. v[1] .. ' ' .. v[2]);
    end
    base.updateLayersSets();
end

base.onUnload = function ()
    for k, v in pairs(base.keybinds) do
        AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ' .. v[1]);
    end
end

base.default = function()
    setmanager:Recompute();
    base.updateLayersSets();
end

base.HaveItem = function(item)
    return function () return setmanager:HaveItem(item) end;
end

base.ElementalStaffTable = {
    Fire = {{ Name = "Vulcan's Staff", When = base.HaveItem("Vulcan's Staff") }, { Name = "Fire Staff", When = base.HaveItem("Fire Staff") }},
    Earth = {{ Name = "Terra's Staff", When = base.HaveItem("Terra's Staff") }, { Name = "Earth Staff", When = base.HaveItem("Earth Staff") }},
    Water = {{ Name = "Neptune's Staff", When = base.HaveItem("Neptune's Staff") }, { Name = "Water Staff", When = base.HaveItem("Water Staff") }},
    Wind = {{ Name = "Auster's Staff", When = base.HaveItem("Auster's Staff") }, { Name = "Wind Staff", When = base.HaveItem("Wind Staff") }},
    Ice = {{ Name = "Aquilo's Staff", When = base.HaveItem("Aquilo's Staff") }, { Name = "Ice Staff", When = base.HaveItem("Ice Staff") }},
    Lightning = {{ Name = "Jupiter's Staff", When = base.HaveItem("Jupiter's Staff") }, { Name = "Thunder Staff", When = base.HaveItem("Thunder Staff") }},
    Light = {{ Name = "Apollo's Staff", When = base.HaveItem("Apollo's Staff") }, { Name = "Light Staff", When = base.HaveItem("Light Staff") }},
    Dark = {{ Name = "Pluto's Staff", When = base.HaveItem("Pluto's Staff") }, { Name = "Dark Staff", When = base.HaveItem("Dark Staff") }},
};
base.ElementalObiTable = {
    Fire = {{ Name = "Karin Obi", When = base.HaveItem("Karin Obi") }},
    Earth = {{ Name = "Dorin Obi", When = base.HaveItem("Dorin Obi") }},
    Water = {{ Name = "Suirin Obi", When = base.HaveItem("Suirin Obi") }},
    Wind = {{ Name = "Furin Obi", When = base.HaveItem("Furin Obi") }},
    Ice = {{ Name = "Hyorin Obi", When = base.HaveItem("Hyorin Obi") }},
    Lightning = {{ Name = "Rairin Obi", When = base.HaveItem("Rairin Obi") }},
    Light = {{ Name = "Korin Obi", When = base.HaveItem("Korin Obi") }},
    Dark = {{ Name = "Anrin Obi", When = base.HaveItem("Anrin Obi") }},
};

return base;