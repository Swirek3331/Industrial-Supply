Hook.Add(
    "IS.stabilozinecrate.spawn",
    "IS.stabilozinecrate.spawn",
    function(effect, deltaTime, item, targets, worldPosition, element)
        Timer.Wait(function()
            IS.Helpers.FillChest(item, "stabilozine")
        end, 35)
    end
)