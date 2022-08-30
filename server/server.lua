TriggerEvent('esx_society:registerSociety', 'subway', 'Subway', 'society_subway', 'society_subway', 'society_subway', {type = 'private'})

ESX.RegisterServerCallback('mvx_subway:getEmployee', function(source, cb, jobname)
	local data = {}
    local players = ESX.GetExtendedPlayers('job', jobname)
	for i = 1, #players do
		data[#data+1] = {
			playerId = players[i].playerId,
			name = players[i].variables.lastName..' '..players[i].variables.firstName,
			gradeLabel = players[i].job.grade_label
		}
	end
    cb(data)
end)

RegisterServerEvent('mvx_subway:takeCola')
AddEventHandler('mvx_subway:takeCola', function(item)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.canCarryItem('cola', 1) then
		xPlayer.addInventoryItem('cola', 1)
	end
end)

RegisterServerEvent('mvx_subway:takeMilkshake')
AddEventHandler('mvx_subway:takeMilkshake', function(item)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.canCarryItem('milkshake', 1) then
		xPlayer.addInventoryItem('milkshake', 1)
	end
end)

RegisterServerEvent('mvx_subway:takeCoffee')
AddEventHandler('mvx_subway:takeCoffee', function(item)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.canCarryItem('coffee', 1) then
		xPlayer.addInventoryItem('coffee', 1)
	end
end)

RegisterServerEvent('mvx_subway:takeOrangejuice')
AddEventHandler('mvx_subway:takeOrangejuice', function(item)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.canCarryItem('orangejuice', 1) then
		xPlayer.addInventoryItem('orangejuice', 1)
	end
end)


RegisterServerEvent('mvx_subway:takeWrap')
AddEventHandler('mvx_subway:takeWrap', function(item)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.canCarryItem('wrap', 1) then
		xPlayer.addInventoryItem('wrap', 1)
	end
end)

RegisterServerEvent('mvx_subway:takeSalad')
AddEventHandler('mvx_subway:takeSalad', function(item)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.canCarryItem('salad', 1) then
		xPlayer.addInventoryItem('salad', 1)
	end
end)

RegisterServerEvent('mvx_subway:takeSubwayclub')
AddEventHandler('mvx_subway:takeSubwayclub', function(item)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.canCarryItem('subwayclub', 1) then
		xPlayer.addInventoryItem('subwayclub', 1)
	end
end)




RegisterServerEvent('setJob')
AddEventHandler('setJob', function(target, status)
  local xPlayer = ESX.GetPlayerFromId(source)
  local xTarget = ESX.GetPlayerFromId(target)
	if status == 'fire' then
		xTarget.setJob('unemployed', 0)
		xPlayer.showNotification(_U('you_have_fired')..xTarget.getName())
		xTarget.showNotification(_U('you_have_been_fired'))
	elseif status == 'promote' then
		xTarget.setJob(xPlayer.job.name, xTarget.job.grade+1)
		xPlayer.showNotification(_U('you_have_promoted')..xTarget.getName())
		xTarget.showNotification(_U('you_have_been_promoted'))
	elseif status == 'demote' then
		xTarget.setJob(xPlayer.job.name, xTarget.job.grade-1)
		xPlayer.showNotification(_U('you_have_deomoted')..xTarget.getName())
		xTarget.showNotification(_U('you_have_been_demoted'))
	elseif status == 'recruit' then
		xTarget.setJob(xPlayer.job.name, 0)
		xPlayer.showNotification(_U('you_have_recruit')..xTarget.getName())
		xTarget.showNotification(_U('you_have_been_recruit'))
	end
end)
