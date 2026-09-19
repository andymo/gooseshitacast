local profile = {};
local varhelper = gFunc.LoadFile('common/varhelper.lua');

profile.ElementalStaffTable = T{
    ['Fire'] = 'Vulcan\'s Staff',
    ['Earth'] = 'Earth Staff',
    ['Water'] = 'Neptune\'s Staff',
    ['Wind'] = 'Auster\'s Staff',
    ['Ice'] = 'Ice Staff',
    ['Thunder'] = 'Thunder Staff',
    ['Light'] = 'Light Staff',
    ['Dark'] = 'Dark Staff'
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
    Precast = {
        Head = 'Warlock\'s Chapeau',
        Ear2 = 'Loquac. Earring',
        Body = 'Dls. Tabard +1',
    },
    Cure_Support = {
        Main = "Yew Wand +1",
        Head = 'Traveler\'s hat',
        Neck = 'Holy Phial',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Body = 'Baron\'s Saio',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'White Cape +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Warlock\'s Tights',
    },
    Cure_Tank = {},
    Midcast_Enmity = {},
    Utsusemi = {},
    Stoneskin = {
        Main = "Solid Wand",
        Head = 'Traveler\'s Hat',
        Neck = 'Holy Phial',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Body = 'Baron\'s Saio',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'White Cape +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Warlock\'s Tights',
    },
    Nuke_Potency = {
        Ammo = 'Morion Tathlum',
        Head = 'Baron\'s Chapeau',
        Neck = 'Checkered Scarf',
        Ear1 = 'Morion Earring',
        Ear2 = 'Morion Earring',
        Body = 'Baron\'s Saio',
        Hands = 'Dream Mittens +1',
        Ring1 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
        Back = 'Black Cape +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Magic Cuisses',
    },
    Nuke_Accuracy = {},
    MND_Accuracy = {
        Head = 'Traveler\'s Hat',
        Neck = 'Holy Phial',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Body = 'baron\'s saio',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'White Cape +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Warlock\'s Tights',
    },
    MND_Potency = {
        Head = 'Traveler\'s Hat',
        Neck = 'Holy Phial',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Body = 'baron\'s saio',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'White Cape +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Warlock\'s Tights',
    },
    INT_Accuracy = {
        Ammo = 'Morion Tathlum',
        Head = 'Baron\'s Chapeau',
        Neck = 'Black Neckerchief',
        Ear1 = 'Morion Earring',
        Ear2 = 'Morion Earring',
        Body = 'Baron\'s Saio',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
        Back = 'Black Cape +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Seer\'s Slacks +1',
    },
    INT_Potency = {
        Ammo = 'Morion Tathlum',
        Head = 'Baron\'s Chapeau',
        Neck = 'Black Neckerchief',
        Ear1 = 'Morion Earring',
        Ear2 = 'Morion Earring',
        Body = 'Baron\'s Saio',
        Hands = 'Seer\'s Mitts +1',
        Ring1 = 'Eremite\'s Ring',
        Ring2 = 'Eremite\'s Ring',
        Back = 'Black Cape +1',
        Waist = 'Penitent\'s Rope',
        Legs = 'Seer\'s Slacks +1',
    },
    Elemental_Debuff = {
    },
    CC_Enfeebling = {
    },
    Idle_PDT = {
    },
    Idle_MDT = {
    },
    Enhancing_General = {
    },
    Enhancing_PhalanxBarspell = {
    },
    Idle_Default = {
        Main = "Yew Wand +1",
        Ammo = "Fortune Egg",
        Head = 'Silver hairpin',
        Neck = 'Holy Phial',
        Ear1 = 'Morion Earring',
        Ear2 = 'Morion Earring',
        Body = 'Seer\'s Tunic +1',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Saintly Ring',
        Ring2 = 'Saintly Ring',
        Back = 'Sarcenet Cape',
        Waist = 'Friar\'s Rope',
        Legs = 'Seer\'s Slacks +1',
        Feet = 'Mage\'s Sandals'
    },
    Idle_Support = {
    },
    Idle_Hybrid = {
    },
    Town = {
    },
    Resting = {
        Main = "Pilgrim\'s Wand",
        Body = "Seer\'s Tunic +1",
        Legs = "Baron\'s Slops",
        back = "Wizard\'s Mantle"
    },
    Dark = {
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
    {'^p', '/lac fwd equippdt'},
    {'!p', '/lac fwd equipmdt'},
    {'e', '/ma "Cure" <stal>'},
    {'+e', '/ma "Cure II" <stal>'},
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
    {'1', '/ma "Thunder" <t>'},
    {'2', '/ma "Blizzard" <t>'},
    {'3', '/ma "Fire" <t>'},
    {'4', '/ma "Aero" <t>'},
    {'5', '/ma "Water" <t>'},
    {'6', '/ma "Stone" <t>'},
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
    {'c', '/ma "Dia" <t>'},
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
    varhelper.CreateToggle('UseRefreshIdle', true);
    varhelper.CreateCycle('BattleType', { [1] = 'Support', [2] = 'Tank' });
    varhelper.CreateCycle('SpellType', { [1] = 'Potency', [2] = 'Accuracy' });
    varhelper.CreateCycle('IdleType', { [1] = 'Default', [2] = 'Support', [3] = 'Hybrid', [4] = 'PDT', [5] = 'MDT' });
    varhelper.CreateCycle('ResistElement', { [1] = 'Fire', [2] = 'Earth', [3] = 'Wind', [4] = 'Ice', [5] = 'Thunder' });
    for k, v in pairs(profile.KeyBinds) do
        AshitaCore:GetChatManager():QueueCommand(-1, '/bind ' .. v[1] .. ' ' .. v[2]);
    end
end

profile.OnUnload = function()
    varhelper.Destroy();
    for k, v in pairs(profile.KeyBinds) do
        AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ' .. v[1]);
    end
end

profile.HandleCommand = function(args)
    if (args[1] == 'battle') then
        varhelper.AdvanceCycle('BattleType');
    elseif (args[1] == 'spell') then
        varhelper.AdvanceCycle('SpellType');
    elseif (args[1] == 'idle') then
        varhelper.AdvanceCycle('IdleType');
    elseif (args[1] == 'resist') then
        varhelper.AdvanceCycle('ResistElement');
    elseif (args[1] == 'equippdt') then
        while (varhelper.GetCycle('IdleType') ~= 'PDT') do
            varhelper.AdvanceCycle('IdleType');
        end
    elseif (args[1] == 'equipmdt') then
        while (varhelper.GetCycle('IdleType') ~= 'MDT') do
            varhelper.AdvanceCycle('IdleType');
        end
    elseif (args[1] == 'equipresist') then
        gFunc.LockSet('Resist_' .. varhelper.GetCycle('ResistElement'), 7); -- 7 for luck
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local zone = gData.GetEnvironment();
    if (player.Status == 'Resting') then
        gFunc.EquipSet(profile.Sets.Resting);
    elseif (player.Status == 'Engaged') and (varhelper.GetCycle('BattleType') ~= 'Tank') then
        -- TODO: equip weapons by type here
        gFunc.EquipSet(profile.Sets.TP);
    else
        if (zone.Area ~= nil) and (profile.Towns:contains(zone.Area)) then
            gFunc.EquipSet(profile.Sets.Town);
        else
            gFunc.EquipSet('Idle_' .. varhelper.GetCycle('IdleType'));
        end
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if string.match(action.Name, 'Convert') then
        gFunc.LockSet('Convert_' .. varhelper.GetCycle('BattleType'), 5);
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
        --gFunc.Equip('Main', profile.ElementalStaffTable[action.Element]);
        if (MndDebuffs:contains(action.Name)) then
            gFunc.EquipSet('MND_' .. varhelper.GetCycle('SpellType'));
        elseif (EnmityDebuffs:contains(action.Name) and varhelper.GetCycle('BattleType') == 'Tank') then
            gFunc.EquipSet('INT_' .. varhelper.GetCycle('SpellType'));
            gFunc.EquipSet(profile.Sets.Midcast_Enmity);
        elseif(not WhateverDebuffs:contains(action.Name)) then
            gFunc.EquipSet('INT_' .. varhelper.GetCycle('SpellType'));
        end
    elseif (action.Skill == 'Elemental Magic') then
        --gFunc.Equip('Main', profile.ElementalStaffTable[action.Element]);
        if (ElementalDebuffs:contains(action.Name)) then
            gFunc.EquipSet(profile.Sets.Elemental_Debuff);
        else
            gFunc.EquipSet('Nuke_' .. varhelper.GetCycle('SpellType'));
            if (action.Element == weather.WeatherElement) or (action.Element == weather.DayElement) then
                gFunc.Equip('Waist', profile.ElementalObiTable[action.Element]);
            end
        end
    elseif (action.Skill == 'Dark Magic') then
        gFunc.EquipSet(profile.Sets.Dark);
        --gFunc.Equip('Main', profile.ElementalStaffTable[action.Element]);
        if (action.Element == weather.WeatherElement) or (action.Element == weather.DayElement) then
            gFunc.Equip('Waist', profile.ElementalObiTable[action.Element]);
        end
    elseif string.match(action.Name, 'Cure') or string.match(action.Name, 'Curaga') then
        gFunc.EquipSet('Cure_' .. varhelper.GetCycle('BattleType'));
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