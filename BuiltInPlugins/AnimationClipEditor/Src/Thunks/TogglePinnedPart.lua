local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local SetPinnedParts = require(Plugin.Src.Actions.SetPinnedParts)

return function(part)
	return function(store)
		local state = store:getState()

		local pinnedParts = state.Status.PinnedParts
		local newCopy = Cryo.Dictionary.join(pinnedParts)

		if newCopy[part] ~= nil then
			newCopy[part] = not newCopy[part]
		else
			newCopy[part] = true
		end

		store:dispatch(SetPinnedParts(newCopy))
	end
end
