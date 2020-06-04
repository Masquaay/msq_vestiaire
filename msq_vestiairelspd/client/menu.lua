--#############################################|  MASQUAAY/MSQ  |####################################################
-- Masquaay#0909

local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}
ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	Citizen.Wait(0)
    end
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)

_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("Votre Casier","Vos Equipements", nil, nil, "shopui_title_gr_gunmod", "shopui_title_gr_gunmod")
_menuPool:Add(mainMenu)

function AddVestiaireMenu(menu)

	local prendreservice = _menuPool:AddSubMenu(menu, "Prendre votre service", "", "", "shopui_title_lowendfashion2", "shopui_title_lowendfashion2")
	prendreservice.Item:RightLabel("~g~10-6")

	local espaceservicehomme = NativeUI.CreateItem("                              ~b~HOMME~w~                 ", "")
	prendreservice.SubMenu:AddItem(espaceservicehomme)
	espaceservicehomme:SetRightBadge(BadgeStyle.Lock)
	
	local tenuecadet = NativeUI.CreateItem("~b~Tenue~w~ - Cadet/Agent", "")
	prendreservice.SubMenu:AddItem(tenuecadet)
	tenuecadet:SetRightBadge(BadgeStyle.Clothes)

	local tenuesergent = NativeUI.CreateItem("~b~Tenue~w~ - Sergent/Chef", "")
	prendreservice.SubMenu:AddItem(tenuesergent)
	tenuesergent:SetRightBadge(BadgeStyle.Clothes)

	local tenuelieutenant = NativeUI.CreateItem("~b~Tenue~w~ - Lieutenant", "")
	prendreservice.SubMenu:AddItem(tenuelieutenant)
	tenuelieutenant:SetRightBadge(BadgeStyle.Clothes)

	local tenuecapitaine = NativeUI.CreateItem("~b~Tenue~w~ - Capitaine", "")
	prendreservice.SubMenu:AddItem(tenuecapitaine)
	tenuecapitaine:SetRightBadge(BadgeStyle.Clothes)

	local espaceservice = NativeUI.CreateItem("                              ~pi~FEMME~s~                 ", "")
	prendreservice.SubMenu:AddItem(espaceservice)
	espaceservice:SetRightBadge(BadgeStyle.Lock)

	local tenuecadetfemme = NativeUI.CreateItem("~pi~Tenue~w~ - Cadet/Agent", "")
	prendreservice.SubMenu:AddItem(tenuecadetfemme)
	tenuecadetfemme:SetRightBadge(BadgeStyle.Clothes)

	local tenuesergentfemme = NativeUI.CreateItem("~pi~Tenue~w~ - Sergent/Chef", "")
	prendreservice.SubMenu:AddItem(tenuesergentfemme)
	tenuesergentfemme:SetRightBadge(BadgeStyle.Clothes)

	local tenuelieutenantfemme = NativeUI.CreateItem("~pi~Tenue~w~ - Lieutenant", "")
	prendreservice.SubMenu:AddItem(tenuelieutenantfemme)
	tenuelieutenantfemme:SetRightBadge(BadgeStyle.Clothes)

	local tenuecapitainefemme = NativeUI.CreateItem("~pi~Tenue~w~ - Capitaine", "")
	prendreservice.SubMenu:AddItem(tenuecapitainefemme)
	tenuecapitainefemme:SetRightBadge(BadgeStyle.Clothes)

    local accessoiremenu = _menuPool:AddSubMenu(menu, "Accessoires", "", "", "shopui_title_gr_gunmod", "shopui_title_ie_modgarage")
    accessoiremenu.Item:RightLabel(">")

    local givegiletparballe = NativeUI.CreateItem("Gilet par balle", "")
accessoiremenu.SubMenu:AddItem(givegiletparballe)
givegiletparballe:SetRightBadge(BadgeStyle.Armour)


local givegiletjaune = NativeUI.CreateItem("Gilet jaune", "")
accessoiremenu.SubMenu:AddItem(givegiletjaune)
givegiletjaune:SetRightBadge(BadgeStyle.Clothes)

local givecasquette = NativeUI.CreateItem("Casquette", "")
accessoiremenu.SubMenu:AddItem(givecasquette)
givecasquette:SetRightBadge(BadgeStyle.Clothes)

    local espace = _menuPool:AddSubMenu(menu, "--------------------------------------------------------------", "", "", "shopui_title_ie_modgarage", "shopui_title_ie_modgarage")
    espace.Item:SetRightBadge(BadgeStyle.Lock)

    local finservice = _menuPool:AddSubMenu(menu, "Fin de service", "", "", "shopui_title_ie_modgarage", "shopui_title_ie_modgarage")
	finservice.Item:RightLabel("~r~10-7")
	
	local prendrefinservice = NativeUI.CreateItem("Remettre vos habits", "")
	finservice.SubMenu:AddItem(prendrefinservice)
prendrefinservice:SetRightBadge(BadgeStyle.Clothes)

	prendreservice.SubMenu.OnItemSelect = function(_, item ,_)
		if item == tenuecadet then
			SetPedComponentVariation(GetPlayerPed(-1) , 11, 82, false, 0) -- 
			SetPedComponentVariation(GetPlayerPed(-1) , 3, 30, false, 0)  --gants
			SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, true, 0)  --decals
			SetPedComponentVariation(GetPlayerPed(-1) , 5, 42, true, 0)  -- bras
			SetPedComponentVariation(GetPlayerPed(-1) , 4, 35, true, 0)   --pants
			SetPedComponentVariation(GetPlayerPed(-1) , 1, 121, true, 0)   --mask
			SetPedComponentVariation(GetPlayerPed(-1) , 6, 25, true, 0)   --shoes
			SetPedComponentVariation(GetPlayerPed(-1) , 7, 8, true, 0)   --Chaine
			TriggerServerEvent("player:serviceOn", "police")
            ESX.ShowNotification('Vous avez équipé votre ~b~tenue de cadet/agent')
		end
		if item == tenuesergent then
			SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, true, 0) --tshirt 
			SetPedComponentVariation(GetPlayerPed(-1) , 3, 18, true, 1)  --torse
			SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, true, 0)  --decals
			SetPedComponentVariation(GetPlayerPed(-1) , 5, 19, true, 0)  -- bras
			SetPedComponentVariation(GetPlayerPed(-1) , 4, 35, true, 0)   --pants
			SetPedComponentVariation(GetPlayerPed(-1) , 1, 121, true, 0)   --mask
			SetPedComponentVariation(GetPlayerPed(-1) , 6, 25, true, 0)   --shoes
			SetPedComponentVariation(GetPlayerPed(-1) , 7, 8, true, 0)   --Chaine
			TriggerServerEvent("player:serviceOn", "police")
            ESX.ShowNotification('Vous avez équipé votre ~b~tenue de sergent/chef')
		end
		if item == tenuelieutenant then
			SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, true, 0) --tshirt 
			SetPedComponentVariation(GetPlayerPed(-1) , 3, 18, true, 2)  --torse
			SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, true, 0)  --decals
			SetPedComponentVariation(GetPlayerPed(-1) , 5, 19, true, 0)  -- bras
			SetPedComponentVariation(GetPlayerPed(-1) , 4, 35, true, 0)   --pants
			SetPedComponentVariation(GetPlayerPed(-1) , 1, 121, true, 0)   --mask
			SetPedComponentVariation(GetPlayerPed(-1) , 6, 25, true, 0)   --shoes
			SetPedComponentVariation(GetPlayerPed(-1) , 7, 8, true, 0)   --Chaine
			TriggerServerEvent("player:serviceOn", "police")
            ESX.ShowNotification('Vous avez équipé votre ~b~tenue de lieutenant')
		end
		if item == tenuecapitaine then
			SetPedComponentVariation(GetPlayerPed(-1) , 11, 57, true, 0) --tshirt 
			SetPedComponentVariation(GetPlayerPed(-1) , 3, 18, true, 3)  --torse
			SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, true, 0)  --decals
			SetPedComponentVariation(GetPlayerPed(-1) , 5, 19, true, 0)  -- bras
			SetPedComponentVariation(GetPlayerPed(-1) , 4, 35, true, 0)   --pants
			SetPedComponentVariation(GetPlayerPed(-1) , 1, 121, true, 0)   --mask
			SetPedComponentVariation(GetPlayerPed(-1) , 6, 25, true, 0)   --shoes
			SetPedComponentVariation(GetPlayerPed(-1) , 7, 8, true, 0)   --Chaine
			TriggerServerEvent("player:serviceOn", "police")
            ESX.ShowNotification('Vous avez équipé votre ~b~tenue de capitaine')
		end
		if item == tenuecadetfemme then
			SetPedComponentVariation(GetPlayerPed(-1) , 11, 34, true, 0) --tshirt 
			SetPedComponentVariation(GetPlayerPed(-1) , 3, 36, true, 0)  --torse
			SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, true, 0)  --decals
			SetPedComponentVariation(GetPlayerPed(-1) , 5, 31, true, 0)  -- bras
			SetPedComponentVariation(GetPlayerPed(-1) , 4, 34, true, 0)   --pants
			SetPedComponentVariation(GetPlayerPed(-1) , 1, 121, true, 0)   --mask
			SetPedComponentVariation(GetPlayerPed(-1) , 6, 25, true, 0)   --shoes
			SetPedComponentVariation(GetPlayerPed(-1) , 7, 8, true, 0)   --Chaine
			TriggerServerEvent("player:serviceOn", "police")
            ESX.ShowNotification('Vous avez équipé votre ~b~tenue de cadet/agent')
		end
		if item == tenuesergentfemme then
			SetPedComponentVariation(GetPlayerPed(-1) , 11, 34, true, 0) --tshirt 
			SetPedComponentVariation(GetPlayerPed(-1) , 3, 36, true, 1)  --torse
			SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, true, 0)  --decals
			SetPedComponentVariation(GetPlayerPed(-1) , 5, 31, true, 0)  -- bras
			SetPedComponentVariation(GetPlayerPed(-1) , 4, 34, true, 0)   --pants
			SetPedComponentVariation(GetPlayerPed(-1) , 1, 121, true, 0)   --mask
			SetPedComponentVariation(GetPlayerPed(-1) , 6, 25, true, 0)   --shoes
			SetPedComponentVariation(GetPlayerPed(-1) , 7, 8, true, 0)   --Chaine
			TriggerServerEvent("player:serviceOn", "police")
            ESX.ShowNotification('Vous avez équipé votre ~b~tenue de sergent')
		end
		if item == tenuelieutenantfemme then
			SetPedComponentVariation(GetPlayerPed(-1) , 11, 34, true, 0) --tshirt 
			SetPedComponentVariation(GetPlayerPed(-1) , 3, 36, true, 2)  --torse
			SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, true, 0)  --decals
			SetPedComponentVariation(GetPlayerPed(-1) , 5, 31, true, 0)  -- bras
			SetPedComponentVariation(GetPlayerPed(-1) , 4, 34, true, 0)   --pants
			SetPedComponentVariation(GetPlayerPed(-1) , 1, 121, true, 0)   --mask
			SetPedComponentVariation(GetPlayerPed(-1) , 6, 25, true, 0)   --shoes
			SetPedComponentVariation(GetPlayerPed(-1) , 7, 8, true, 0)   --Chaine
			TriggerServerEvent("player:serviceOn", "police")
            ESX.ShowNotification('Vous avez équipé votre ~b~tenue de lieutenant')
		end
		if item == tenuecapitainefemme then
			SetPedComponentVariation(GetPlayerPed(-1) , 11, 34, true, 0) --tshirt 
			SetPedComponentVariation(GetPlayerPed(-1) , 3, 36, true, 3)  --torse
			SetPedComponentVariation(GetPlayerPed(-1) , 10, 0, true, 0)  --decals
			SetPedComponentVariation(GetPlayerPed(-1) , 5, 31, true, 0)  -- bras
			SetPedComponentVariation(GetPlayerPed(-1) , 4, 34, true, 0)   --pants
			SetPedComponentVariation(GetPlayerPed(-1) , 1, 121, true, 0)   --mask
			SetPedComponentVariation(GetPlayerPed(-1) , 6, 25, true, 0)   --shoes
			SetPedComponentVariation(GetPlayerPed(-1) , 7, 8, true, 0)   --Chaine
			TriggerServerEvent("player:serviceOn", "police")
            ESX.ShowNotification('Vous avez équipé votre ~b~tenue de capitaine')
		end

	end
	finservice.SubMenu.OnItemSelect = function(_, item ,_)
        if item == prendrefinservice then
			if Config.EnableNonFreemodePeds then
				ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
					local isMale = skin.sex == 0

					TriggerEvent('skinchanger:loadDefaultModel', isMale, function()
						ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
							TriggerEvent('skinchanger:loadSkin', skin)
							ESX.ShowNotification('Vous avez pris une ~o~fin de service')
						end)
					end)

				end)
			else
				ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
					TriggerEvent('skinchanger:loadSkin', skin)
				end)
			end
		end
	end
	accessoiremenu.SubMenu.OnItemSelect = function(_, item ,_)
        if item == givegiletparballe then
			SetPedComponentVariation(GetPlayerPed(-1) , 9, 2, true, 0)
			SetPedArmour(GetPlayerPed(-1), 100)
            ESX.ShowNotification('Vous avez équipé un ~b~gilet par balle')
        end
        if item == givegiletjaune then
			SetPedComponentVariation(GetPlayerPed(-1) , 9, true, true, true)
            ESX.ShowNotification('Vous avez équipé un ~y~gilet jaune')
		end
	end
    end

AddVestiaireMenu(mainMenu)
_menuPool:RefreshIndex()

local masquaay = {
    {x = 457.631,y = -993.310,z = 30.689}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        _menuPool:MouseEdgeEnabled (false);

        for k in pairs(masquaay) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, masquaay[k].x, masquaay[k].y, masquaay[k].z)

			if dist <= 1.2 then
				if PlayerData.job ~= nil and PlayerData.job.name == 'police' then 
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour ouvrir votre ~b~casier")
				if IsControlJustPressed(1,51) then 
                    mainMenu:Visible(not mainMenu:Visible())
				end
            end
        end
	end
end
end)

