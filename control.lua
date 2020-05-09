require 'Libs/Utility/logger'

--On load game for first time
script.on_init(function(data)
	UpdateHandCraftingSpeed()
end)

--On mod version different or if mod did not previously exist
script.on_configuration_changed(function(data)
	UpdateHandCraftingSpeed()
end)

--Called once per in-game tick
script.on_event(defines.events.on_tick, function(event)
	UpdateHandCraftingSpeed()
end)

function UpdateHandCraftingSpeed()	
	for key, player in pairs(game.players) do		
		player.force.manual_mining_speed_modifier = settings.global["ir-HandCraftingSpeed"].value - 1
		player.force.manual_crafting_speed_modifier = settings.global["ir-HandCraftingSpeed"].value - 1
	end
end

