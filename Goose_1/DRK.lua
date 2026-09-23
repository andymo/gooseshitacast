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
    {'q', '/ja "Last Resort" <me>'},
    {'+q', '/ja "Souleater" <me>'},
    {'e', '/ws "Guillotine" <t>'},
    {'+e', '/ja "Diabolic Eye" <me>'},
    {'1', '/ja "Hasso" <me>'},
    {'+1', '/cancel 353'}, --Hasso
    {'2', '/ja "Seigan" <me>'},
    {'+2', '/cancel 354'}, --Seigan
    {'3', '/ja "Third Eye" <me>'},
    {'4', '/ma "Absorb-TP" <t>'},
    {'+4', '/ma "Absorb-STR" <t>'},
    {'^4', '/ma "Absorb-DEX" <t>'},
    {'5', '/ma "Absorb-INT" <t>'},
    {'+5', '/ma "Absorb-MND" <t>'},
    {'6', '/ma "Absorb-VIT" <t>'},
    {'+6', '/ma "Absorb-AGI" <t>'},
    {'7', '/ma "Drain II" <t>'},
    {'+7', '/ma "Drain" <t>'},
    {'^7', '/ma "Aspir" <t>'},
    {'!7', '/ma "Drain II" <t>'},
    {'+f', '/ma "Dread Spikes" <me>'}
    {'u', '/attack'},
    {'c', '/ma "Stun" <t>'},
    {'+c', '/ja "Weapon Bash" <t>'},
    {'m', '/ja "Meditate" <me>'},
    {'v', '/ma "Sleep II" <t>'},
    {'+v', '/ma "Sleep" <t>'},
    {'+x', '/ma "Bind" <t>'},
    {'space', '/jump'},
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