local profile = {};
local varhelper = gFunc.LoadFile('common/varhelper.lua');

local setmanager = gFunc.LoadFile('common/setmanager.lua');

profile.Sets = {
    TP_Priority = {
        Main = {'Magoroku', 'Homura +1', 'Kotetsu', 'Okanehira', 'Gunromaru'},
        Head = {'Emperor Hairpin', 'Mrc. Hachimaki'},
        Neck = {'Spike Necklace', 'Wing Pendant'},
        Ear1 = {'Wyvern Earring', 'Beetle Earring +1', 'Bone Earring +1'},
        Ear2 = {'Beetle Earring +1', 'Bone Earring +1'},
        Body = {'Wonder Kaftan', 'Kenpogi +1'},
        Hands = {'Ochiudo\'s Kote', 'Federation Tekko', 'Ryl.Ftm. Gloves'},
        Ring1 = {'Rajas Ring', 'Deft Ring', 'Balance Ring'},
        Ring2 = {'Woodsman Ring', 'Venerer Ring', 'Deft Ring', 'Balance Ring'},
        Waist = {'Wyvern Belt', 'Brave Belt'},
        Legs = {'Republic Subligar', 'Ryl.Ftm. Trousers'},
        Feet = {'Fuma Kyahan', 'Leaping Boots'},
        Back = {'Agile Mantle', 'Nomad\'s Mantle'}
    },
    WS_Priority = {
        Main = {'Magoroku', 'Homura +1', 'Kotetsu', 'Okanehira', 'Gunromaru'},
        Head = 'Mrc. Hachimaki',
        Neck = 'Spike Necklace',
        Ear1 = {'Beetle Earring +1', 'Bone Earring +1'},
        Ear2 = {'Beetle Earring +1', 'Bone Earring +1'},
        Body = {'Wonder Kaftan', 'Power Gi'},
        Hands = {'Ochiudo\'s Kote', 'Wonder Mitts', 'Ryl.Ftm. Gloves'},
        Ring1 = {'Rajas Ring', 'Courage Ring'},
        Ring2 = {'Puissance Ring', 'Courage Ring'},
        Waist = 'Brave Belt',
        Legs = {'Republic Subligar', 'Ryl.Ftm. Trousers'},
        Feet = {'Wonder Clomps', 'Leaping Boots'},
        Back = {'Agile Mantle', 'Nomad\'s Mantle'}
    },
};


profile.KeyBinds = {
    {'q', '/ja "Third Eye" <me>'},
    {'e', '/ws "Tachi: Enpi" <t>'},
    {'c', '/ja "Jump" <t>'},
    {'+c', '/ja "High Jump" <t>'},
    {'m', '/ja "Meditate" <me>'},
    {'u', '/attack'},
    {'n', '/ma "Utsusemi: Ichi" <me>'},
    {'1', '/ja "Hasso" <me>'},
    {'2', '/ja "Seigan" <me>'},
    {'+1', '/cancel 353'}, --Hasso
}


profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    for k, v in pairs(profile.KeyBinds) do
        AshitaCore:GetChatManager():QueueCommand(-1, '/bind ' .. v[1] .. ' ' .. v[2]);
    end

    setmanager:Init(profile.Sets);
end

profile.OnUnload = function()
    varhelper.Destroy();
    for k, v in pairs(profile.KeyBinds) do
        AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ' .. v[1]);
    end
end

profile.HandleCommand = function(args)
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    setmanager:Recompute();
    gFunc.EquipSet(profile.Sets.TP);
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if (string.match(action.Name, 'Jump')) then
        gFunc.Equip('Back', 'Wyvern Mantle');
    end
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
    gFunc.EquipSet(profile.Sets.WS)
end

return profile;