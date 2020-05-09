--Increase all pollution
for key, prototype_type in pairs(data.raw) do
    for name, prototype in pairs(prototype_type) do
		--Scaling mining speed
        if prototype.mining_speed then
			prototype.mining_speed = prototype.mining_speed * settings.startup["ir-MiningSpeed"].value
        end
		--Scale crafting speed
        if prototype.crafting_speed then
			prototype.crafting_speed = prototype.crafting_speed * settings.startup["ir-MachineCraftingSpeed"].value
        end
		--Scale research speed
        if prototype.researching_speed then
			prototype.researching_speed = prototype.researching_speed * settings.startup["ir-ResearchSpeed"].value
        end
		--Scale pollution emissions
        if prototype.energy_source then
            if prototype.energy_source.emissions_per_minute and prototype.energy_source.emissions_per_minute > 0.001 then
                prototype.energy_source.emissions_per_minute = prototype.energy_source.emissions_per_minute * settings.startup["ir-PollutionEmission"].value
            end
        end
    end
end