function tester()
  print("now u can use me")
end

RegisterNetEvent('putInVehicle', function()
  local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
  TriggerServerEvent('esx_policejob:putInVehicle', GetPlayerServerId(closestPlayer))
end)
RegisterNetEvent('fine', function()
  local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
  OpenFineMenu(closestPlayer)
end)
RegisterNetEvent('putOutVehicle', function()
  local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
  TriggerServerEvent('esx_policejob:OutVehicle', GetPlayerServerId(closestPlayer))
end)
RegisterNetEvent('search_person', function()
  OpenBodySearchMenu(ESX.Game.GetClosestPlayer())
end)
RegisterNetEvent('cuff_person', function()
  local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
  print("debug cuff_person")
  TriggerServerEvent('esx_policejob:handcuff', GetPlayerServerId(closestPlayer))
end)
RegisterNetEvent('drag_person', function()
  local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
  TriggerServerEvent('esx_policejob:drag', GetPlayerServerId(closestPlayer))
end)
RegisterNetEvent('communityservice', function()
  local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

  SendToCommunityService(GetPlayerServerId(closestPlayer))
end)
RegisterNetEvent('showid', function()
  local player, distance = ESX.Game.GetClosestPlayer()

  if distance ~= -1 and distance <= 3.0 then
    TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(player), GetPlayerServerId(PlayerId()))
  else
    ESX.ShowNotification('No players nearby')
  end
end)
RegisterNetEvent('showDriveId', function()
  local player, distance = ESX.Game.GetClosestPlayer()

  if distance ~= -1 and distance <= 3.0 then
    TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(player), GetPlayerServerId(PlayerId()), 'driver')
  else
    ESX.ShowNotification('No players nearby')
  end
end)
RegisterNetEvent('showDriveId', function()
  local player, distance = ESX.Game.GetClosestPlayer()

  if distance ~= -1 and distance <= 3.0 then
    TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(player), GetPlayerServerId(PlayerId()), 'driver')
  else
    ESX.ShowNotification('No players nearby')
  end
end)
