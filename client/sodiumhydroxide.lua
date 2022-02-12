local spawnedSodiumHydroxideBarrels = 0
local SodiumHydroxideBarrels = {}
local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)
		local coords = GetEntityCoords(PlayerPedId())		

		if GetDistanceBetweenCoords(coords, Config.CircleZones.SodiumHydroxideFarm.coords, true) < 50 then
			SpawnSodiumHydroxideBarrels()
			Citizen.Wait(500)
		else
			Citizen.Wait(500)
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPe3 = PlayerPedId()
		local coords = GetEntityCoords(playerPe3)
		local nearbyObject3, nearbyID3

		for i=1, #SodiumHydroxideBarrels, 1 do
			if GetDistanceBetweenCoords(coords, GetEntityCoords(SodiumHydroxideBarrels[i]), false) < 1 then
				nearbyObject3, nearbyID3 = SodiumHydroxideBarrels[i], i
			end
		end

		if nearbyObject3 and IsPedOnFoot(playerPe3) then

			if not isPickingUp then
				QBCore.Functions.Draw2DText(0.5, 0.88, 'Press ~g~[E]~w~ to pickup Sodium Hydroxide', 0.5)
			end

			if IsControlJustReleased(0, 38) and not isPickingUp then
				isPickingUp = true
				TaskStartScenarioInPlace(playerPe3, 'world_human_gardener_plant', 0, false)

				QBCore.Functions.Progressbar("search_register", "Picking up Sodium Hydroxide..", 10000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {}, {}, {}, function()
					ClearPedTasks(PlayerPedId())
					QBCore.Functions.DeleteObject(nearbyObject3)

					table.remove(SodiumHydroxideBarrels, nearbyID3)
					spawnedSodiumHydroxideBarrels = spawnedSodiumHydroxideBarrels - 1
	
					TriggerServerEvent('qb-drugtrafficking:pickedUpSodiumHydroxide')

				end, function()
					ClearPedTasks(PlayerPedId())
				end)

				isPickingUp = false
			end
		else
			Citizen.Wait(500)
		end
	end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		for k, v in pairs(SodiumHydroxideBarrels) do
			QBCore.Functions.DeleteObject(v)
		end
	end
end)

function SpawnSodiumHydroxideBarrels()
	while spawnedSodiumHydroxideBarrels < 10 do
		Citizen.Wait(0)
		local weedCoords2 = GenerateSodiumHydroxideCoords()

		QBCore.Functions.SpawnLocalObject('mw_sodium_barrel', weedCoords2, function(obj)
			PlaceObjectOnGroundProperly(obj)
			FreezeEntityPosition(obj, true)

			table.insert(SodiumHydroxideBarrels, obj)
			spawnedSodiumHydroxideBarrels = spawnedSodiumHydroxideBarrels + 1
		end)
	end
end

function ValidateSodiumHydroxideCoord(plantCoord)
	if spawnedSodiumHydroxideBarrels > 0 then
		local validate2 = true

		for k, v in pairs(SodiumHydroxideBarrels) do
			if GetDistanceBetweenCoords(plantCoord, GetEntityCoords(v), true) < 5 then
				validate2 = false
			end
		end

		if GetDistanceBetweenCoords(plantCoord, Config.CircleZones.SulfuricAcidFarm.coords, false) > 50 then
			validate2 = false
		end

		return validate2
	else
		return true
	end
end

function GenerateSodiumHydroxideCoords()
	while true do
		Citizen.Wait(1)

		local weed3CoordX, weed3CoordY

		math.randomseed(GetGameTimer())
		local modX3 = math.random(-7, 7)

		Citizen.Wait(100)

		math.randomseed(GetGameTimer())
		local modY3 = math.random(-7, 7)

		weed3CoordX = Config.CircleZones.SodiumHydroxideFarm.coords.x + modX3
		weed3CoordY = Config.CircleZones.SodiumHydroxideFarm.coords.y + modY3

		local coordZ3 = GetCoordZSodiumHydroxide(weed3CoordX, weed3CoordY)
		local coord3 = vector3(weed3CoordX, weed3CoordY, coordZ3)

		if ValidateSodiumHydroxideCoord(coord3) then
			return coord3
		end
	end
end

function GetCoordZSodiumHydroxide(x, y)
	local groundCheckHeights = { 20.0, 21.0, 22.0, 23.0, 24.0, 25.0, 26.0, 27.0, 28.0, 29.0, 300.0 }

	for i, height in ipairs(groundCheckHeights) do
		local found3Ground, z = GetGroundZFor_3dCoord(x, y, height)

		if found3Ground then
			return z
		end
	end

	return 100.0
end