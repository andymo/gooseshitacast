local layers = gFunc.LoadFile('layers\\layers.lua');
local base = gFunc.LoadFile('common/base.lua');

layers.CreateModeGroup('TPAcc', {'TpAccLow', 'TPAccMid', 'TPAccHigh'}, '=')
layers.CreateModeGroup('Idle', {'IdleDefault', 'IdleSupport', 'IdleHybrid', 'IdlePDT', 'IdleMDT'}, '+=')
layers.CreateModeGroup('Battle', {'BattleSupport', 'BattleTank'}, '^=')
layers.CreateModeGroup('ResistElement', {'Fire', 'Earth', 'Wind', 'Ice', 'Lightning'}, '!=')

local keybinds = {
    {'p', '/lac fwd equipresist'},
    {'^p', '/lac fwd equippdt'},
    {'!p', '/lac fwd equipmdt'},
    {'n', '/ma "Utsusemi: Ni" <me>'},
    {'+n', '/ma "Utsusemi: Ichi" <me>'},
    {'q', ''},
    {'+q', ''},
    {'e', '/ws "Guillotine" <t>'},
    {'+e', ''},
    {'1', ''},
    {'2', ''},
    {'3', ''},
    {'4', ''},
    {'5', ''},
    {'6', ''},
    {'7', '/ma "Drain II" <t>'},
    {'+7', '/ma "Drain" <t>'},
    {'^7', '/ma "Aspir" <t>'},
    {'u', '/attack'},
    {'c', '/ma "Dia II" <t>'},
    {'!c', '/ma "Bio" <t>'},
    {'+c', '/ma "Poison II" <t>'},
    {'m', '/ja "Meditate" <me>'},
    {'+f', '/ma "Stun" <t>'},
    {'^f', '/ja "Weapon Bash" <t>'},
    {'v', '/ma "Sleep II" <t>'},
    {'+v', '/ma "Sleep" <t>'},
    {'+x', '/ma "Bind" <t>'},
    {'space', '/jump'}
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

local function updateLayersSets()
    layers.Sets.Precast = sets.Precast;
    layers.Sets.Midcast = { Main = {{ Name = 'Mandau' }},  Body = "Morrigan's Robe" }

    layers.Sets.Midcast['Restoration'] = { Main = base.ElementalStaffTable['Light'] };
end

layers.UserOnLoad = function()
    base.init(sets, keybinds, updateLayersSets);
    base.onLoad();
end

layers.UserOnUnload = function()
    base.onUnload();
end

layers.RegisterCallback("PreHandleDefault", function()
    base.default();
end, "RecomputeSets")

layers.EnableAutomaticMidcastDelay();
layers.EnableAutomaticMidshotDelay();
layers.EnableDefaultStickyItems();

return layers