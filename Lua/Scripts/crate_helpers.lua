-- Industrial Supply Helper Functions
IS.Helpers = {}

function IS.Helpers.FillChest(container, item, amount)
    if container == nil then
        return
    end

    if container.Scale == 0.5 then
        return
    end

    local itemContainer = container.GetComponentString("ItemContainer")
    local prefab = ItemPrefab.GetItemPrefab(item)

    if amount == nil then
        amount = itemContainer.Inventory.Capacity * 8
    end

    container.Scale = 0.5 --piękna sztuczka

    if prefab and container then
        if itemContainer and itemContainer.Inventory then
            for i = 1, amount do
                Entity.Spawner.AddItemToSpawnQueue(
                    prefab,
                    itemContainer.Inventory,
                    100.0,  -- condition (100%)
                    nil,    -- quality (default)
                    nil     -- onSpawned callback
                )
            end
            
            print("[Industrial Supply] Filled " .. item .. " crate with " .. amount .. " items")
        end
    end
end

print("[Industrial Supply] Helper functions loaded")