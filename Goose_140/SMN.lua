local profile = {};
local varhelper = gFunc.LoadFile('common/varhelper.lua');

profile.ElementalStaffTable = T{
    ['Fire'] = 'Vulcan\'s Staff',
    ['Earth'] = 'Terra\'s Staff',
    ['Water'] = 'Neptune\'s Staff',
    ['Wind'] = 'Auster\'s Staff',
    ['Ice'] = 'Aquilo\'s Staff',
    ['Thunder'] = 'Jupiter\'s Staff',
    ['Light'] = 'Apollo\'s Staff',
    ['Dark'] = 'Pluto\'s Staff'
};

profile.Sets = {
    Idle = {
        Main = 'Kukulcan\'s Staff',
        Head = 'Silver Hairpin',
        Neck = 'Justice Bade',
        Ear1 = 'Onyx Earring',
        Ear2 = 'Onyx Earring',
        Body = 'Seer\'s Tunic',
        Hands = 'Carbuncle Mitts',
        Ring1 = 'Conjurer\'s Ring',
        Ring2 = 'Windurstian Ring',
        Waist = 'Friar\'s Rope',
        Legs = 'Evoker\'s Spats',
        Feet = 'Seer\'s Pumps',
    },
    Precast = {
        Ear2 = 'Loquac. Earring',
    },
    Perp = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Smn. Horn +1',
        Neck = 'Beak Necklace +1',
        Ear1 = 'Antivenom Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Penance Robe',
        Hands = 'Nashira Gages',
        Ring1 = 'Conjurer\'s Ring',
        Ring2 = 'Evoker\'s Ring',
        Back = 'Hexerei Cape',
        Waist = 'Hierarch Belt',
        Legs = 'Evk. Spats +1',
        Feet = 'Evk. Pigaches +1',
    },
    PerpCarbuncle = {
        Head = 'Smn. Horn +1',
        Body = 'Yinyang Robe',
        Hands = 'Carbuncle Mitts',
        Feet = 'Herald\'s Gaiters',
    },
    PerpGaruda = { -- this exists for later with the headpiece
    },
    PerpDay = {
        Body = 'Smn. Doublet +1'
    },
    PerpWeather = {
        Body = 'Smn. Horn +1'
    },
    BPDelay = {
        Head = 'Smn. Horn +1', -- same delay as nq and penance
        Body = 'Yinyang Robe',
        Hands = 'Smn. Bracers +1', -- same delay as nq and penance
        Legs = 'Smn. Spats +1',
        Feet = 'Smn. Pigaches +1'
    },
    BPPhys = {
        Main = 'Bahamut\'s Staff', -- lol
        Head = 'Evk. Horn +1',
        Neck = 'Smn. Torque',
        Ear1 = 'Smn. Earring',
        Body = 'Smn. Doublet +1',
        Hands = 'Smn. Bracers +1',
        Ring2 = 'Evoker\'s Ring',
        Back = 'Astute Cape',
        Legs = 'Evk. Spats +1',
        Feet = 'Nashira Crackows', -- penance -1 from this
    },
    MaxSummoningSkill = {
        Main = 'Bahamut\'s Staff', -- lol
        Head = 'Evk. Horn +1',
        Neck = 'Smn. Torque',
        Ear1 = 'Smn. Earring',
        Hands = 'Smn. Bracers +1',
        Ring2 = 'Evoker\'s Ring',
        Back = 'Astute Cape',
        Legs = 'Penance Slops',
        Feet = 'Nashira Crackows', -- penance -1 from this
    },
    MaxHaste = {
        Head = 'Nashira Turban',
        Body = 'Nashira Manteel',
        Hands = 'Nashira Gages',
        Waist = 'Ninurta\'s Sash', -- swift belt
        Legs = 'Nashira Seraweels',
        Feet = 'Nashira Crackows',
    },
    SID = {
        Main = 'Hermit\'s Wand',
        Head = 'Nashira Turban',
        Neck = 'Willpower Torque',
        Ear1 = 'Magnetic Earring',
        Waist = 'Druid\'s Rope', -- heko obi +1 backup
        Feet = 'Mountain Gaiters',
    },
    Stoneskin = {
        Main = 'Kirin\'s Pole',
        Head = 'Mahatma Hat',
        Neck = 'Stone Gorget',
        Ear1 = 'Magnetic Earring', -- mnd rings if no mahatma
        Ear2 = 'Loquac. Earring',
        Body = 'Mahatma Hpl.',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Sapphire Ring',
        Back = 'Rainbow Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Mahatma Pigaches',
    },
    Cure = {
        Main = 'Yew Wand',
        Ammo = 'Hedgehog Bomb',
        Head = 'Hydra Beret',
        Neck = 'Healing Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Magnetic Earring',
        Body = 'Mahatma Hpl.',
        Hands = 'Hydra Gloves',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Sapphire Ring',
        Back = 'Mahatma Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Hydra Brais',
        Feet = 'Mahatma Pigaches',
    },
    Resting = {
        Main = 'Kukulcan\'s Staff',
        Body = 'Seer\'s Tunic',
        Legs = 'Baron\'s Slops'
    },
    HP75 = {

    },
    SneakInvis = {
        Back = 'Skulker\'s Cape',
        Hands = "Dream Mittens +1",
        Feet = "Dream Boots +1"
    },
};

profile.KeyBinds = {
    {'=', '/lac fwd spell'},
    {'e', '/ma "Cure II" <stpt>'},
    {'+e', '/ma "Cure" <stpt>'},
    {'q', '/pet "Assault" <t>'},
    {'+q', '/pet "Release" <me>'},
    {'!q', '/pet "Retreat" <me>'},
    {'^q', '/ma "Regen" <stpt>'},
    {'c', '/ma "Dia" <t>'},
    {'y', '/lac fwd bpr y'},
    {'+y', '/lac fwd bpr +y'},
    {'^y', '/lac fwd bpr ^y'},
    {'!y', '/lac fwd bpr !y'},
    {'u', '/lac fwd bpw u'},
    {'+u', '/lac fwd bpw +u'},
    {'^u', '/lac fwd bpw ^u'},
    {'!u', '/lac fwd bpw !u'},
    {'1', '/ma "Ramuh" <me>'},
    {'+1', '/ma "Thunder Spirit" <me>'},
    {'2', '/ma "Shiva" <me>'},
    {'+2', '/ma "Ice Spirit" <me>'},
    {'3', '/ma "Ifrit" <me>'},
    {'+3', '/ma "Fire Spirit" <me>'},
    {'4', '/ma "Garuda" <me>'},
    {'+4', '/ma "Air Spirit" <me>'},
    {'5', '/ma "Leviathan" <me>'},
    {'+5', '/ma "Water Spirit" <me>'},
    {'6', '/ma "Titan" <me>'},
    {'+6', '/ma "Earth Spirit" <me>'},
    {'7', '/ma "Carbuncle" <me>'},
    {'+7', '/ma "Light Spirit" <me>'},
    {'8', '/ma "Fenrir" <me>'},
    {'+8', '/ma "Dark Spirit" <me>'},
}

profile.BPR = T{
    ['Ramuh'] = T{
        ['y'] = '/pet "Shock Strike" <t>'
    },
    ['Shiva'] = T{
        ['y'] = '/pet "Axe Kick" <t>'
    },
    ['Ifrit'] = T{
        ['y'] = '/pet "Burning Strike" <t>',
        ['+y'] = '/pet "Double Punch" <t>',
        ['^y'] = '/pet "Punch" <t>'
    },
    ['Garuda'] = T{
        ['y'] = '/pet "Claw" <t>'
    },
    ['Leviathan'] = T{
        ['y'] = '/pet "Barracuda Dive" <t>',
        ['+y'] = '/pet "Tail Whip" <t>'
    },
    ['Titan'] = T{
        ['y'] = '/pet "Rock Throw" <t>'
    },
    ['Carbuncle'] = T{
        ['y'] = '/pet "Poison Nails" <t>'
    },
    ['Fenrir'] = T{
        ['y'] = '/pet "Punch" <t>'
    },
}

profile.BPW = {
    ['Ramuh'] = T{
        ['u'] = '/pet "Rolling Thunder" <me>',
        ['+u'] = '/pet "Lightning Armor" <me>'
    },
    ['Shiva'] = T{
        ['u'] = '/pet "Sleepga" <t>',
        ['+u'] = '/pet "Frost Armor" <me>'
    },
    ['Ifrit'] = T{
        ['u'] = '/pet "Crimson Howl" <me>'
    },
    ['Garuda'] = T{
        ['u'] = '/pet "Hastega" <me>',
        ['+u'] = '/pet "Aerial Armor" <me>',
        ['^u'] = '/pet "Whispering Wind" <me>',
    },
    ['Leviathan'] = T{
        ['u'] = '/pet "Spring Water" <me>',
        ['+u'] = '/pet "Slowga" <t>'
    },
    ['Titan'] = T{
        ['u'] = '/pet "Earthen Ward" <me>'
    },
    ['Carbuncle'] = T{
        ['u'] = '/pet "Healing Ruby" <stpt>',
        ['+u'] = '/pet "Healing Ruby II" <stpt>',
        ['^u'] = '/pet "Shining Ruby" <me>',
        ['!u'] = '/pet "Glittering Ruby" <me>'
    },
    ['Fenrir'] = T{
        ['u'] = '/pet "Ecliptic Howl" <me>',
        ['+u'] = '/pet "Ecliptic Growl" <me>',
        ['^u'] = '/pet "Lunar Roar" <t>',
        ['!u'] = '/pet "Lunar Cry" <t>',
    },
}

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
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
    local pet = gData.GetPet();
    if (args[1] == 'bpr') then
        if (pet == nil) then
            return
        end
        AshitaCore:GetChatManager():QueueCommand(-1, profile.BPR[pet.Name][args[2]]);
    elseif (args[1] == 'bpw') then
        if (pet == nil) then
            return
        end
        AshitaCore:GetChatManager():QueueCommand(-1, profile.BPW[pet.Name][args[2]]);
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    if (player.Status == 'Resting') then
        gFunc.EquipSet(profile.Sets.Resting);
    else
        gFunc.EquipSet(profile.Sets.Idle);
    end
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;