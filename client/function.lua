function tester()
  print("now u can use me")
end

RegisterNetEvent('search_person', function()
  OpenBodySearchMenu(ESX.Game.GetClosestPlayer())
end)
