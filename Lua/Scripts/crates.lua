Hook.Add(
    "IS.stabilozinecrate.spawn",
    function(effect, deltaTime, item, targets, worldPosition, element)

        local stabilozinePrefab = ItemPrefab.GetItemPrefab("stabilozine")
        
        if stabilozinePrefab and item then

            local itemContainer = item.GetComponentString("ItemContainer")
            
            if itemContainer and itemContainer.Inventory then
                for i = 1, 160 do

                    Entity.Spawner.AddItemToSpawnQueue(
                        stabilozinePrefab,
                        itemContainer.Inventory,
                        100.0,  -- condition (100%)
                        nil,    -- quality (default)
                        nil     -- onSpawned callback
                    )
                end
            end
        end
    end
)