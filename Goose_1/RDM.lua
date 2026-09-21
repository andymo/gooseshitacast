local layers = gFunc.LoadFile('layers\\layers.lua');
local setmanager = gFunc.LoadFile('common/setmanager.lua');

layers.CreateModeGroup('Spell', {'SpellPotency', 'SpellAccuracy'}, '=')
layers.CreateModeGroup('Idle', {'IdleDefault', 'IdleSupport', 'IdleHybrid', 'IdlePDT', 'IdleMDT'}, '+=')
layers.CreateModeGroup('Battle', {'BattleSupport', 'BattleTank'}, '^=')
layers.CreateModeGroup('ResistElement', {'Fire', 'Earth', 'Wind', 'Ice', 'Lightning'}, '!=')

local Keybinds = {
    {'p', '/lac fwd equipresist'},
    {'^p', '/lac fwd equippdt'},
    {'!p', '/lac fwd equipmdt'},
    {'e', '/ma "Cure IV" <stal>'},
    {'+e', '/ma "Cure III" <stal>'},
    {'q', '/ma "Haste" <stal>'},
    {'+q', '/ma "Refresh" <stal>'},
    {'^q', '/ma "Regen" <stal>'},
    {'!q', '/ma "Erase" <stal>'},
    {'t', '/ma "Curaga II" <me>'},
    {'b', '/ma "Stoneskin" <me>'},
    {'+b', '/ma "Phalanx" <me>'},
    {'^b', '/ma "Aquaveil" <me>'},
    {'!b', '/ma "Blink" <me>'},
    {'n', '/ma "Utsusemi: Ni" <me>'},
    {'+n', '/ma "Utsusemi: Ichi" <me>'},
    {'^\\', '/ma "Protect IV" <stal>'},
    {'!\\', '/ma "Shell IV" <stal>'},
    {'\\', '/ma "Sneak" <stal>'},
    {'+\\', '/ma "Invisible" <stal>'},
    {'1', '/ma "Thunder III" <t>'},
    {'2', '/ma "Blizzard III" <t>'},
    {'3', '/ma "Fire III" <t>'},
    {'4', '/ma "Aero III" <t>'},
    {'5', '/ma "Water III" <t>'},
    {'6', '/ma "Stone III" <t>'},
    {'+1', '/ma "Thunder II" <t>'},
    {'+2', '/ma "Blizzard II" <t>'},
    {'+3', '/ma "Fire II" <t>'},
    {'+4', '/ma "Aero II" <t>'},
    {'+5', '/ma "Water II" <t>'},
    {'+6', '/ma "Stone II" <t>'},
    {'^1', '/ma "Shock" <t>'},
    {'^2', '/ma "Frost" <t>'},
    {'^3', '/ma "Burn" <t>'},
    {'^4', '/ma "Choke" <t>'},
    {'^5', '/ma "Drown" <t>'},
    {'^6', '/ma "Rasp" <t>'},
    {'!1', '/ma "Enthunder" <me>'},
    {'!2', '/ma "Enblizzard" <me>'},
    {'!3', '/ma "Enfire" <me>'},
    {'!4', '/ma "Enaero" <me>'},
    {'!5', '/ma "Enwater" <me>'},
    {'!6', '/ma "Enstone" <me>'},
    {'@1', '/ma "Barthundra" <me>; /ma "Barthunder" <me>'},
    {'@2', '/ma "Barblizzara" <me>; /ma "Barblizzard" <me>'},
    {'@3', '/ma "Barfira" <me>; /ma "Barfire" <me>'},
    {'@4', '/ma "Baraera" <me>; /ma "Baraero" <me>'},
    {'@5', '/ma "Barwatera" <me>; /ma "Barwater" <me>'},
    {'@6', '/ma "Barstonra" <me>; /ma "Barstone" <me>'},
    {'7', '/ma "Aspir" <t>'},
    {'+7', '/ma "Drain" <t>'},
    {'8', '/ma "Paralyna" <stal>'},
    {'+8', '/ma "Silena" <stal>'},
    {'^8', '/ma "Poisona" <stal>'},
    {'!8', '/ma "Cursna" <stal>'},
    {'@8', '/ma "Viruna" <stal>'},
    {'u', '/ma "Paralyze" <t>'},
    {'+u', '/ma "Slow" <t>'},
    {'^u', '/ma "Blind" <t>'},
    {'!u', '/ma "Silence" <t>'},
    {'@u', '/ma "Dispel" <t>'},
    {'c', '/ma "Dia II" <t>'},
    {'!c', '/ma "Bio" <t>'},
    {'+c', '/ma "Poison II" <t>'},
    {'@c', '/ma "Dia" <t>'},
    {'+f', '/ma "Stun" <t>'},
    {'v', '/ma "Sleep II" <t>'},
    {'+v', '/ma "Sleep" <t>'},
    {'!v', '/ma "Sleepga" <t>'},
    {'^v', '/ma "Sleepga" <t>'},
    {'x', '/ma "Gravity" <t>'},
    {'+x', '/ma "Bind" <t>'},
    {'space', '/jump'}
};

local function HaveItem(item)
    return function () return setmanager:HaveItem(item) end;
end
local ElementalStaffTable = {
    Fire = {{ Name = "Vulcan's Staff", When = HaveItem("Vulcan's Staff") }, { Name = "Fire Staff", When = HaveItem("Fire Staff") }},
    Earth = {{ Name = "Terra's Staff", When = HaveItem("Terra's Staff") }, { Name = "Earth Staff", When = HaveItem("Earth Staff") }},
    Water = {{ Name = "Neptune's Staff", When = HaveItem("Neptune's Staff") }, { Name = "Water Staff", When = HaveItem("Water Staff") }},
    Wind = {{ Name = "Auster's Staff", When = HaveItem("Auster's Staff") }, { Name = "Wind Staff", When = HaveItem("Wind Staff") }},
    Ice = {{ Name = "Aquilo's Staff", When = HaveItem("Aquilo's Staff") }, { Name = "Ice Staff", When = HaveItem("Ice Staff") }},
    Lightning = {{ Name = "Jupiter's Staff", When = HaveItem("Jupiter's Staff") }, { Name = "Thunder Staff", When = HaveItem("Thunder Staff") }},
    Light = {{ Name = "Apollo's Staff", When = HaveItem("Apollo's Staff") }, { Name = "Light Staff", When = HaveItem("Light Staff") }},
    Dark = {{ Name = "Pluto's Staff", When = HaveItem("Pluto's Staff") }, { Name = "Dark Staff", When = HaveItem("Dark Staff") }},
};
local ElementalObiTable = {
    Fire = {{ Name = "Karin Obi", When = HaveItem("Karin Obi") }},
    Earth = {{ Name = "Dorin Obi", When = HaveItem("Dorin Obi") }},
    Water = {{ Name = "Suirin Obi", When = HaveItem("Suirin Obi") }},
    Wind = {{ Name = "Furin Obi", When = HaveItem("Furin Obi") }},
    Ice = {{ Name = "Hyorin Obi", When = HaveItem("Hyorin Obi") }},
    Lightning = {{ Name = "Rairin Obi", When = HaveItem("Rairin Obi") }},
    Light = {{ Name = "Korin Obi", When = HaveItem("Korin Obi") }},
    Dark = {{ Name = "Anrin Obi", When = HaveItem("Anrin Obi") }},
};

local sets = {
    Precast_Priority = {
        Head = {
            { Name = 'Wlk. Chapeau +1' },
            { Name = 'Warlock\'s Chapeau' },
        },
        Ear2 = {
            { Name = 'Loquac. Earring' },
        },
        Body = {
            { Name = 'Dls. Tabard +1' },
            { Name = 'Duelist\'s Tabard' },
            { Name = 'Crow Jupon' },
        },
    },

};

setmetatable(sets, {__index = function () return {} end})

local function setLayerSets()
    layers.Sets.Precast = sets.Precast;
    layers.Sets.Midcast = { Main = {{ Name = 'Mandau' }},  Body = "Morrigan's Robe" }

    layers.Sets.Midcast['Restoration'] = { Main = ElementalStaffTable['Light'] };
end

layers.UserOnLoad = function()
    setmanager:Init(sets);
    setLayerSets();
    for k, v in pairs(Keybinds) do
        AshitaCore:GetChatManager():QueueCommand(-1, '/bind ' .. v[1] .. ' ' .. v[2]);
    end
end

layers.UserOnUnload = function()
    for k, v in pairs(Keybinds) do
        AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ' .. v[1]);
    end
end

layers.RegisterCallback("PreHandleDefault", function()
    setmanager:Recompute();
    setLayerSets();
end, "RecomputeSets")

layers.EnableAutomaticMidcastDelay();
layers.EnableAutomaticMidshotDelay();
layers.EnableDefaultStickyItems();

return layers