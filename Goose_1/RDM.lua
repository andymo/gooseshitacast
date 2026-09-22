local layers = gFunc.LoadFile('layers\\layers.lua');
local base = gFunc.LoadFile('common/base.lua');

layers.CreateModeGroup('Spell', {'SpellPotency', 'SpellAccuracy'}, '=')
layers.CreateModeGroup('Idle', {'IdleDefault', 'IdleSupport', 'IdleHybrid', 'IdlePDT', 'IdleMDT'}, '+=')
layers.CreateModeGroup('Battle', {'BattleSupport', 'BattleTank'}, '^=')
layers.CreateModeGroup('ResistElement', {'Fire', 'Earth', 'Wind', 'Ice', 'Lightning'}, '!=')

local keybinds = {
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