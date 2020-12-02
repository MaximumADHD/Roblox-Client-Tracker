local Plugin = script.Parent.Parent.Parent.Parent

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddDevSubKeyError = require(script.Parent.AddDevSubKeyError)

return function(devSub)
    return function(store, contextItems)
        local devSubKey = devSub.Key
        local devSubsController = contextItems.devSubsController
        local cleared = {
            [devSubKey] = {
                isAcceptable = true,
                filteredName = nil,
            }
        }
        store:dispatch(AddChange("DevSubModeration", cleared))

        local acceptable, name = devSubsController:getFilteredDevSub(devSub)
        local filtered = {
            [devSubKey] = {
                isAcceptable = acceptable,
                filteredName = name,
            }
        }
        store:dispatch(AddChange("DevSubModeration", filtered))
        if not acceptable then
            store:dispatch(AddDevSubKeyError(devSubKey, "Name", {Moderated = "Name has been moderated"}))
        end
    end
end