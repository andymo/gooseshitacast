local profile = {};
local gcdisplay = gFunc.LoadFile('common/gcdisplay.lua');
local setmanager = gFunc.LoadFile('common/setmanager.lua');

profile.ElementalStaffTable = T{
    ['Fire'] = 'Vulcan\'s Staff',
    ['Earth'] = 'Terra\'s Staff',
    ['Water'] = 'Water Staff',
    ['Wind'] = 'Auster\'s Staff',
    ['Ice'] = 'Aquilo\'s Staff',
    ['Thunder'] = 'Jupiter\'s Staff',
    ['Light'] = 'Light Staff',
    ['Dark'] = 'Pluto\'s Staff'
};

-- Just comment out anything you don't have and it won't mess up your set
profile.ElementalObiTable = T{
    ['Fire'] = 'Karin Obi',
    ['Earth'] = 'Dorin Obi',
    ['Water'] = 'Suirin Obi',
    ['Wind'] = 'Furin Obi',
    ['Ice'] = 'Hyorin Obi',
    ['Thunder'] = 'Rairin Obi',
    ['Light'] = 'Korin Obi',
    ['Dark'] = 'Anrin Obi'
};

profile.Sets = {
    Precast_Priority = {
        Head = {'Wlk. Chapeau +1', 'Warlock\'s Chapeau'},
        Ear2 = 'Loquac. Earring',
        Body = {'Dls. Tabard +1', 'Duelist\'s Tabard', 'Crow Jupon'},
    },
    Cure_Support_Priority = {
        Main = profile.ElementalStaffTable['Light'],
        Ammo = 'Hedgehog Bomb',
        Head = {'Mahatma Hat', 'Errant Hat', 'Crow Beret'},
        Neck = {'Healing Torque', 'Promise Badge', 'Holy Phial', 'Justice Badge'},
        Ear1 = {'Novia Earring', 'Geist Earring'},
        Ear2 = {'Magnetic Earring', 'Geist Earring'},
        Body = {'Mahatma Hpl.', 'Errant Hpl.', 'Crow Jupon'},
        Hands = {'Hydra Gloves', 'Raven Bracers', 'Crow Bracers', 'Devotee\'s Mitts'},
        Ring1 = {'Serene Ring', 'Aqua Ring', 'Aquamarine Ring', 'Saintly Ring'},
        Ring2 = {'Tamas Ring', 'Aqua Ring', 'Aquamarine Ring', 'Saintly Ring'},
        Back = {'Umbra Cape', 'Errant Cape', 'Prism Cape', 'Rainbow Cape','White Cape +1'},
        Waist = {'Penitent\'s Rope', 'Reverend Sash', 'Friar\'s Rope'},
        Legs = {'Warlock\'s Tights'},
        Feet = {'Mahatma Pigaches', 'Errant Pigaches', 'Warlock\'s Boots'},
    },
    Cure_Tank = {},
    Midcast_Enmity = {},
    Utsusemi = {},
    Stoneskin_Priority = {
        Main = {'Mythic Wand +1', 'Mythic Wand', "Solid Wand", "Yew Wand +1"},
        Sub = {'Numinous Shield'},
        Head = {'Wlk. Chapeau +1', 'Warlock\'s Chapeau', 'Traveler\'s Hat'},
        Neck = {'Promise Badge', 'Holy Phial', 'Justice Badge'},
        Ear1 = {'Magnetic Earring', 'Geist Earring'},
        Ear2 = {'Cmn. Earring', 'Geist Earring'},
        Body = {'Mahatma Hpl.', 'Errant Hpl.', 'Ryl.Sqr. Robe'},
        Hands = {'Devotee\'s Mitts +1', 'Devotee\'s Mitts'},
        Ring1 = {'Aqua Ring', 'Aquamarine Ring', 'Saintly Ring'},
        Ring2 = {'Tamas Ring', 'Aqua Ring', 'Aquamarine Ring', 'Saintly Ring'},
        Back = {'Prism Cape', 'Rainbow Cape','White Cape +1'},
        Waist = {'Penitent\'s Rope', 'Reverend Sash', 'Friar\'s Rope'},
        Legs = 'Warlock\'s Tights',
        Feet = {'Mahatma Pigaches', 'Errant Pigaches', 'Warlock\'s Boots'}
    },
    Nuke_Potency_Priority = {
        Ammo = {'Phtm. Tathlum', 'Morion Tathlum'},
        Head = {'Wlk. Chapeau +1', 'Warlock\'s Chapeau', 'Baron\'s Chapeau'},
        Neck = {'Elemental Torque', 'Checkered Scarf', 'Black Neckerchief'},
        Ear1 = {'Novio Earring', 'Morion Earring'},
        Ear2 = {'Moldavite Earring', 'Morion Earring'},
        Body = {'Mahatma Hpl.', 'Errant Hpl.', 'Ryl.Sqr. Robe'},
        Hands = {'Zenith Mitts', 'Errant Cuffs', 'Dream Mittens +1'},
        Ring1 = {'Snow Ring', 'Zircon Ring'},
        Ring2 = {'Tamas Ring', 'Zircon Ring'},
        Back = {'Prism Cape', 'Rainbow Cape', 'Black Cape +1'},
        Waist = {'Penitent\'s Rope', 'Reverend Sash'},
        Legs = {'Mahatma Slops', 'Errant Slops', 'Magic Cuisses'},
        Feet = {'Duelist\'s Boots', 'Warlock\'s Boots'}
    },
    Nuke_Accuracy_Priority = {
        Ammo = {'Phtm. Tathlum', 'Morion Tathlum'},
        Head = {'Wlk. Chapeau +1', 'Warlock\'s Chapeau', 'Baron\'s Chapeau'},
        Neck = {'Elemental Torque', 'Checkered Scarf', 'Black Neckerchief'},
        Ear1 = {'Novio Earring', 'Morion Earring'},
        Ear2 = {'Moldavite Earring', 'Morion Earring'},
        Body = {'Mahatma Hpl.', 'Errant Hpl.', 'Ryl.Sqr. Robe'},
        Hands = {'Zenith Mitts', 'Errant Cuffs', 'Dream Mittens +1'},
        Ring1 = {'Snow Ring', 'Zircon Ring'},
        Ring2 = {'Tamas Ring', 'Zircon Ring'},
        Back = {'Prism Cape', 'Rainbow Cape', 'Black Cape +1'},
        Waist = {'Penitent\'s Rope', 'Reverend Sash'},
        Legs = {'Nashira Seraweels', 'Mahatma Slops', 'Errant Slops', 'Magic Cuisses'},
        Feet = {'Duelist\'s Boots', 'Warlock\'s Boots'}
    },
    MND_Accuracy_Priority = {
        Head = {'Dls. Chapeau +1', 'Duelist\'s Chapeau', 'Nashira Turban', 'Elite Beret', 'Errant Hat', 'Traveler\'s Hat'},
        Neck = {'Enfeebling Torque', 'Promise Badge', 'Holy Phial'},
        Ear1 = {'Enfeeling Earring', 'Geist Earring'},
        Ear2 = {'Cmn. Earring', 'Geist Earring'},
        Body = {'Wlk. Tabard +1', 'Warlock\'s Tabard', 'Ryl.Sqr. Robe'},
        Hands = {'Dvt. Mitts +1', 'Devotee\'s Mitts'},
        Ring1 = {'Aqua Ring', 'Aquamarine Ring', 'Saintly Ring'},
        Ring2 = {'Tamas Ring', 'Aquamarine Ring', 'Saintly Ring'},
        Back = {'Altruistic Cape', 'Prism Cape', 'Rainbow Cape', 'White Cape +1'},
        Waist = {'Penitent\'s Rope', 'Reverend Sash', 'Friar\'s Rope'},
        Legs = {'Nashira Seraweels', 'Mahatma Slops', 'Errant Slops', 'Warlock\'s Tights', 'Magic Cuisses'},
        Feet = {'Mahatma Pigaches', 'Errant Pigaches', 'Warlock\'s Boots'}
    },
    MND_Potency_Priority = {
        Main = {'Mythic Wand +1'},
        Sub = {'Numinous Shield'},
        Head = {'Errant Hat', 'Traveler\'s Hat'},
        Neck = {'Faith Torque', 'Promise Badge', 'Holy Phial'},
        Ear1 = {'Enfeeling Earring', 'Geist Earring'},
        Ear2 = {'Cmn. Earring', 'Geist Earring'},
        Body = {'Blood Scale Mail', 'Mahatma Hpl.', 'Crimson Scale Mail', 'Errant Hpl.', 'Warlock\'s Tabard', 'Ryl.Sqr. Robe'},
        Hands = {'Dvt. Mitts +1', 'Devotee\'s Mitts'},
        Ring1 = {'Aqua Ring', 'Aquamarine Ring', 'Saintly Ring'},
        Ring2 = {'Tamas Ring', 'Aquamarine Ring', 'Saintly Ring'},
        Back = {'Prism Cape', 'Rainbow Cape', 'White Cape +1', 'White Cape'},
        Waist = {'Penitent\'s Rope', 'Reverend Sash', 'Friar\'s Rope'},
        Legs = {'Mahatma Slops', 'Errant Slops', 'Warlock\'s Tights', 'Magic Cuisses'},
        Feet = {'Mahatma Pigaches', 'Errant Pigaches', 'Warlock\'s Boots'}
    },
    INT_Accuracy_Priority = {
        Ammo = {'Phtm. Tathlum', 'Morion Tathlum'},
        Head = {'Nashira Turban', 'Elite Beret', 'Wlk. Chapeau +1', 'Warlock\'s Chapeau', 'Baron\'s Chapeau'},
        Neck = {'Enfeebling Torque', 'Checkered Scarf', 'Black Neckerchief'},
        Ear1 = {'Enfeebling Earring', 'Morion Earring'},
        Ear2 = {'Morion Earring'},
        Body = {'Mahatma Hpl.', 'Errant Hpl.', 'Ryl.Sqr. Robe'},
        Hands = {'Mahatma Cuffs', 'Errant Cuffs', 'Dream Mittens +1'},
        Ring1 = {'Snow Ring', 'Zircon Ring'},
        Ring2 = {'Tamas Ring', 'Zircon Ring'},
        Back = {'Prism Cape', 'Rainbow Cape', 'Black Cape +1', 'Black Cape'},
        Waist = {'Penitent\'s Rope', 'Reverend Sash'},
        Legs = {'Nashira Seraweels', 'Mahatma Slops', 'Errant Slops', 'Magic Cuisses'},
        Feet = {'Mahatma Pigaches', 'Errant Pigaches', 'Warlock\'s Boots'}
    },
    INT_Potency_Priority = {
        Ammo = {'Phtm. Tathlum', 'Morion Tathlum'},
        Head = {'Wlk. Chapeau +1', 'Warlock\'s Chapeau', 'Baron\'s Chapeau'},
        Neck = {'Checkered Scarf', 'Black Neckerchief'},
        Ear1 = 'Morion Earring',
        Ear2 = 'Morion Earring',
        Body = {'Mahatma Hpl.', 'Errant Hpl.', 'Ryl.Sqr. Robe'},
        Hands = {'Mahatma Cuffs', 'Errant Cuffs', 'Dream Mittens +1'},
        Ring1 = {'Snow Ring', 'Zircon Ring'},
        Ring2 = {'Tamas Ring', 'Zircon Ring'},
        Back = {'Prism Cape', 'Rainbow Cape', 'Black Cape +1'},
        Waist = {'Penitent\'s Rope', 'Reverend Sash'},
        Legs = {'Mahatma Slops', 'Errant Slops', 'Magic Cuisses'},
        Feet = 'Mahatma Pigaches'
    },
    Elemental_Debuff_Priority = {
        Ammo = {'Phtm. Tathlum', 'Morion Tathlum'},
        Head = {'Wlk. Chapeau +1', 'Warlock\'s Chapeau', 'Baron\'s Chapeau'},
        Neck = {'Elemental Torque', 'Checkered Scarf'},
        Ear1 = 'Morion Earring',
        Ear2 = 'Morion Earring',
        Body = {'Mahatma Hpl.', 'Errant Hpl.', 'Ryl.Sqr. Robe'},
        Hands = {'Errant Cuffs', 'Dream Mittens +1'},
        Ring1 = {'Zircon Ring'},
        Ring2 = {'Snow Ring', 'Zircon Ring'},
        Back = {'Prism Cape', 'Black Cape +1'},
        Waist = 'Penitent\'s Rope',
        Legs = {'Mahatma Slops', 'Errant Slops', 'Magic Cuisses'},
        Feet = {'Warlock\'s Boots'}
    },
    CC_Enfeebling = {
    },
    Idle_PDT = {
    },
    Idle_MDT = {
    },
    Enhancing_General = {
        Legs = 'Nashira Seraweels'
    },
    Enhancing_PhalanxBarspell = {
        Neck = 'Enhancing Torque',
        Hands = 'Duelist\'s Gloves',
        Legs = 'Warlock\'s Tights',
    },
    Idle_Default_Priority = {
        Main = {profile.ElementalStaffTable['Earth'], 'Solid Wand'},
        Ammo = {'Hedgehog Bomb', "Fortune Egg"},
        Neck = {'Promise Badge', 'Holy Phial'},
        Ear1 = 'Pigeon Earring',
        Ear2 = 'Pigeon Earring',
        Body = {'Dalmatica', 'Royal Cloak', 'Vermillion Cloak', 'Ryl.Sqr. Robe', 'Carpenter\'s Apron'},
        Hands = {"Blood Fng. Gnt.", 'Errant Cuffs', 'Dvt. Mitts +1', 'Devotee\'s Mitts'},
        Ring1 = {'Merman\'s Ring', 'Snow Ring', 'Zircon Ring'},
        Ring2 = {'Tamas Ring', 'Coral Ring', 'Snow Ring', 'Zircon Ring'},
        Back = {'Empwr. Mantle +1', 'Hexerei Cape', 'Sarcenet Cape'},
        Waist = {'Powerful Rope', 'Hierarch Belt', 'Reverend Sash'},
        Legs = {'Blood Cuisses', 'Nashira Seraweels', 'Warlock\'s Tights', 'Magic Cuisses'},
        Feet = {'Crimson Greaves', 'Dst. Leggings +1', 'Mahatma Pigaches', 'Warlock\'s Boots', "San d'Orian Clogs"}
    },
    Idle_Support = {
    },
    Idle_Hybrid = {
    },
    Town = {
        Main = "Aquilo\'s Staff",
        Head = "Gala Corsage",
        Neck = 'Checkered Scarf',
        Body = "Mahatma Hpl.",
        Hands = "Blood Fng. Gnt.",
        Back = "Prism Cape",
        Ring1 = "Merman\'s Ring",
        Ring2 = "Snow Ring",
        Waist = 'Penitent\'s Rope',
        Legs = 'Blood Cuisses',
        Feet = 'Crimson Greaves'
    },
    Resting_Priority = {
        Main = {"Pluto\'s Staff", "Dark Staff", 'Pilgrim\'s Wand'},
        Neck = 'Checkered Scarf',
        Ear1 = 'Relaxing Earring',
        Ear2 = 'Magnetic Earring',
        Body = {'Mahatma Hpl.', 'Errant Hpl.', 'Royal Cloak'},
        Hands = 'Hydra Gloves',
        Waist = {'Duelist\'s Belt', 'Hierarch Belt', 'Reverend Sash'},
        Legs = "Baron\'s Slops",
        Back = 'Wizard\'s Mantle',
    },
    Dark = {
        Ammo = {'Phtm. Tathlum', 'Morion Tathlum'},
        Head = {'Nashira Turban', 'Elite Beret', 'Wlk. Chapeau +1', 'Warlock\'s Chapeau', 'Baron\'s Chapeau'},
        Neck = {'Enfeebling Torque', 'Checkered Scarf', 'Black Neckerchief'},
        Ear1 = {'Enfeebling Earring', 'Morion Earring'},
        Ear2 = {'Morion Earring'},
        Body = {'Mahatma Hpl.', 'Errant Hpl.', 'Ryl.Sqr. Robe'},
        Hands = {'Mahatma Cuffs', 'Errant Cuffs', 'Dream Mittens +1'},
        Ring1 = {'Snow Ring', 'Zircon Ring'},
        Ring2 = {'Tamas Ring', 'Zircon Ring'},
        Back = {'Prism Cape', 'Rainbow Cape', 'Black Cape +1', 'Black Cape'},
        Waist = {'Penitent\'s Rope', 'Reverend Sash'},
        Legs = {'Nashira Seraweels', 'Mahatma Slops', 'Errant Slops', 'Magic Cuisses'},
        Feet = {'Mahatma Pigaches', 'Errant Pigaches', 'Warlock\'s Boots'}
    },
    Convert_Tank = {
    },
    Convert_Support = {
    },
    Resist_Fire = {
    },
    Resist_Ice = {
    },
    Resist_Wind = {
    },
    Resist_Earth = {
    },
    Resist_Thunder = {
    },
    TP = {
        Main = "Bee Spatha +1",
        Sub = "Marine Shield",
        Ammo = "Morion Tathlum",
        Head = 'Cmp. Eye Circlet',
        Neck = 'Holy Phial',
        Ear1 = 'Morion Earring',
        Ear2 = 'Morion Earring',
        Body = 'Ryl.Ftm. Vest',
        Hands = 'Dream Mittens +1',
        Ring1 = 'Zircon Ring',
        Ring2 = 'Windurstian Ring',
        Back = 'Sarcenet Cape',
        Waist = 'Reverend Sash',
    },
    SneakInvis = {
        Back = 'Skulker\'s Cape',
        Hands = "Dream Mittens +1",
        Feet = "Dream Boots +1"
    },
};
-- TODO: Allow Engaged weapon types (sword + board, e.g... for some reason...)

profile.Packer = {
};

profile.KeyBinds = {
    {'=', '/lac fwd spell'},
    {'+=', '/lac fwd idle'},
    {'^=', '/lac fwd battle'},
    {'!=', '/lac fwd resist'},
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

profile.Towns = T{'Tavnazian Safehold','Al Zahbi','Aht Urhgan Whitegate','Nashmau','Southern San d\'Oria [S]','Bastok Markets [S]','Windurst Waters [S]','San d\'Oria-Jeuno Airship','Bastok-Jeuno Airship','Windurst-Jeuno Airship','Kazham-Jeuno Airship','Southern San d\'Oria','Northern San d\'Oria','Port San d\'Oria','Chateau d\'Oraguille','Bastok Mines','Bastok Markets','Port Bastok','Metalworks','Windurst Waters','Windurst Walls','Port Windurst','Windurst Woods','Heavens Tower','Ru\'Lude Gardens','Upper Jeuno','Lower Jeuno','Port Jeuno','Rabao','Selbina','Mhaura','Kazham','Norg','Mog Garden','Celennia Memorial Library','Western Adoulin','Eastern Adoulin'};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;

    gcdisplay.CreateToggle('UseRefreshIdle', true);
    gcdisplay.CreateCycle('BattleType', { [1] = 'Support', [2] = 'Tank' });
    gcdisplay.CreateCycle('SpellType', { [1] = 'Accuracy', [2] = 'Potency' });
    gcdisplay.CreateCycle('IdleType', { [1] = 'Default', [2] = 'Support', [3] = 'Hybrid', [4] = 'PDT', [5] = 'MDT' });
    gcdisplay.CreateCycle('ResistElement', { [1] = 'Fire', [2] = 'Earth', [3] = 'Wind', [4] = 'Ice', [5] = 'Thunder' });
    for k, v in pairs(profile.KeyBinds) do
        AshitaCore:GetChatManager():QueueCommand(-1, '/bind ' .. v[1] .. ' ' .. v[2]);
    end
    gcdisplay.Load();

    setmanager:Init(profile.Sets);
end

profile.OnUnload = function()
    gcdisplay.Unload();
    for k, v in pairs(profile.KeyBinds) do
        AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ' .. v[1]);
    end
end

profile.HandleCommand = function(args)
    if (args[1] == 'battle') then
        gcdisplay.AdvanceCycle('BattleType');
    elseif (args[1] == 'spell') then
        gcdisplay.AdvanceCycle('SpellType');
    elseif (args[1] == 'idle') then
        gcdisplay.AdvanceCycle('IdleType');
    elseif (args[1] == 'resist') then
        gcdisplay.AdvanceCycle('ResistElement');
    elseif (args[1] == 'equippdt') then
        while (gcdisplay.GetCycle('IdleType') ~= 'PDT') do
            gcdisplay.AdvanceCycle('IdleType');
        end
    elseif (args[1] == 'equipmdt') then
        while (gcdisplay.GetCycle('IdleType') ~= 'MDT') do
            gcdisplay.AdvanceCycle('IdleType');
        end
    elseif (args[1] == 'equipresist') then
        gFunc.LockSet('Resist_' .. gcdisplay.GetCycle('ResistElement'), 7); -- 7 for luck
    elseif (args[1] == 'check') then
        local targetIndex = gData.GetTargetIndex();
        if (targetIndex ~= nil) then
            local targetName = AshitaCore:GetMemoryManager():GetEntity():GetName(targetIndex);
            local targetLevel = AshitaCore:GetMemoryManager():GetEntity():GetLevel(targetIndex);
            AshitaCore:GetChatManager():QueueCommand(-1, '/p check ' .. targetName .. ' ' .. targetLevel)
        end
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local zone = gData.GetEnvironment();

    setmanager:Recompute();

    if (player.Status == 'Resting') then
        gFunc.EquipSet(profile.Sets.Resting);
    elseif (player.Status == 'Engaged') and (gcdisplay.GetCycle('BattleType') ~= 'Tank') then
        -- TODO: equip weapons by type here
        gFunc.EquipSet(profile.Sets.TP);
    else
        if (zone.Area ~= nil) and (profile.Towns:contains(zone.Area)) then
            gFunc.EquipSet(profile.Sets.Town);
        else
            gFunc.EquipSet('Idle_' .. gcdisplay.GetCycle('IdleType'));
        end
    end
    local Windy = T{ 'Windurst Waters [S]','Windurst Waters','Windurst Walls','Port Windurst','Windurst Woods','Heavens Tower' }
    if (zone.Area ~= nil) and (Windy:contains(zone.Area)) then gFunc.Equip('Body', 'Federation Aketon') end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if string.match(action.Name, 'Convert') then
        gFunc.LockSet('Convert_' .. gcdisplay.GetCycle('BattleType'), 5);
    else
        gFunc.EquipSet(profile.Sets.PDT);
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet(profile.Sets.Precast);
end

profile.HandleMidcast = function()
    local MndDebuffs = T{ 'Slow', 'Paralyze', 'Slow II', 'Paralyze II', 'Addle', 'Addle II' };
    local WhateverDebuffs = T{ 'Dia', 'Dia II', 'Dia III' };
    local EnmityDebuffs = T{ 'Blind', 'Blind II', 'Flash' };
    local ElementalDebuffs = T{ 'Burn', 'Rasp', 'Drown', 'Choke', 'Frost', 'Shock' };
    local action = gData.GetAction();
    local weather = gData.GetEnvironment();
    -- TODO: master caster bracelet logic and/or toggle?
    if (action.Skill == 'Enfeebling Magic') then
        gFunc.Equip('Main', profile.ElementalStaffTable[action.Element]);
        if (MndDebuffs:contains(action.Name)) then
            gFunc.EquipSet('MND_' .. gcdisplay.GetCycle('SpellType'));
        elseif (EnmityDebuffs:contains(action.Name) and gcdisplay.GetCycle('BattleType') == 'Tank') then
            gFunc.EquipSet('INT_' .. gcdisplay.GetCycle('SpellType'));
            gFunc.EquipSet(profile.Sets.Midcast_Enmity);
        elseif(not WhateverDebuffs:contains(action.Name)) then
            gFunc.EquipSet('INT_' .. gcdisplay.GetCycle('SpellType'));
        end
    elseif (action.Skill == 'Elemental Magic') then
        gFunc.Equip('Main', profile.ElementalStaffTable[action.Element]);
        if (ElementalDebuffs:contains(action.Name)) then
            gFunc.EquipSet(profile.Sets.Elemental_Debuff);
        else
            gFunc.EquipSet('Nuke_' .. gcdisplay.GetCycle('SpellType'));
            if (action.Element == weather.WeatherElement) or (action.Element == weather.DayElement) then
                gFunc.Equip('Waist', profile.ElementalObiTable[action.Element]);
            end
        end
    elseif (action.Skill == 'Dark Magic') then
        gFunc.EquipSet(profile.Sets.Dark);
        gFunc.Equip('Main', profile.ElementalStaffTable[action.Element]);
        if (action.Element == weather.WeatherElement) or (action.Element == weather.DayElement) then
            gFunc.Equip('Waist', profile.ElementalObiTable[action.Element]);
        end
    elseif string.match(action.Name, 'Cure') or string.match(action.Name, 'Curaga') then
        gFunc.EquipSet('Cure_' .. gcdisplay.GetCycle('BattleType'));
    elseif (action.Skill == 'Enhancing Magic') then
        if string.match(action.Name, 'Phalanx') or string.match(action.Name, 'Bar') then
            gFunc.EquipSet(profile.Sets.Enhancing_PhalanxBarspell)
        elseif string.match(action.Name, 'Stoneskin') then
            gFunc.EquipSet(profile.Sets.Stoneskin);
        else
            gFunc.EquipSet(profile.Sets.Enhancing_General);
        end
        if string.match(action.Name, 'Sneak') or string.match(action.Name, 'Invisible') then
            gFunc.EquipSet(profile.Sets.SneakInvis);
        end
    elseif string.match(action.Name, 'Utsusemi') then
        gFunc.EquipSet(profile.Sets.Utsusemi);
    else
        gFunc.EquipSet(profile.Sets.Haste);
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();
    if (action.Name == 'Savage Blade') then
        gFunc.EquipSet(profile.Sets.WS_SavageBlade);
    elseif (action.Name == 'Sanguine Blade') then
        gFunc.EquipSet(profile.Sets.WS_SanguineBlade);
    elseif (action.Name == 'Spirits Within') then
        gFunc.EquipSet(profile.Sets.WS_SpiritsWithin);
    else
        gFunc.EquipSet(profile.Sets.WS_Default);
    end
    -- TODO: I'm too lazy, sorry.
    gFunc.EquipSet(profile.Sets.TP);
end

return profile;