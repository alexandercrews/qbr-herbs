local sharedItems = exports['qbr-core']:GetItems()

RegisterServerEvent('qbr-herbs:addHerbs')
AddEventHandler('qbr-herbs:addHerbs', function() 
	local src = source
	local ply = exports['qbr-core']:GetPlayer(src)
	local randomNumber = math.random(1,100)

	if randomNumber > 0 and randomNumber <= 70 then
		local _subRan = math.random(1,5)
			if _subRan == 1 then
				ply.Functions.AddItem('blueberry', math.random(1,2))
				TriggerClientEvent('inventory:client:ItemBox', src, sharedItems['blueberry'], "add")
				TriggerClientEvent('QBCore:Notify', src, 9, 'you found blueberry', 5000, 0, 'hud_textures', 'check', 'COLOR_WHITE')
			elseif _subRan == 2 then
				ply.Functions.AddItem('stick', math.random(1,2))
				TriggerClientEvent('inventory:client:ItemBox', src, sharedItems['stick'], "add")
				TriggerClientEvent('QBCore:Notify', src, 9, 'you found a stick', 5000, 0, 'hud_textures', 'check', 'COLOR_WHITE')
			elseif _subRan == 3 then
				ply.Functions.AddItem('sage', math.random(1,2))
				TriggerClientEvent('inventory:client:ItemBox', src, sharedItems['sage'], "add")
				TriggerClientEvent('QBCore:Notify', src, 9, 'you found some sage', 5000, 0, 'hud_textures', 'check', 'COLOR_WHITE')
			elseif _subRan == 4 then
				ply.Functions.AddItem('mint', math.random(1,2))
				TriggerClientEvent('inventory:client:ItemBox', src, sharedItems['mint'], "add")
				TriggerClientEvent('QBCore:Notify', src, 9, 'you found some mint', 5000, 0, 'hud_textures', 'check', 'COLOR_WHITE')
			else
			TriggerClientEvent('QBCore:Notify', src, 9, 'you did not find anything!', 5000, 0, 'mp_lobby_textures', 'cross', 'COLOR_WHITE')
		end

	elseif randomNumber > 70 and randomNumber <= 100 then
		local _subRan = math.random(1,4)
			if _subRan == 1 then
				ply.Functions.AddItem('thyme', math.random(1,2))
				TriggerClientEvent('inventory:client:ItemBox', src, sharedItems['thyme'], "add")
				TriggerClientEvent('QBCore:Notify', src, 9, 'you found some thyme', 5000, 0, 'hud_textures', 'check', 'COLOR_WHITE')
			elseif _subRan == 2 then
				ply.Functions.AddItem('mint', math.random(1,2))
				TriggerClientEvent('inventory:client:ItemBox', src, sharedItems['mint'], "add")
				TriggerClientEvent('QBCore:Notify', src, 9, 'you found some mint', 5000, 0, 'hud_textures', 'check', 'COLOR_WHITE')
			else
				TriggerClientEvent('QBCore:Notify', src, 9, 'you did not find anything!', 5000, 0, 'mp_lobby_textures', 'cross', 'COLOR_WHITE')
			end
		end
	end)

