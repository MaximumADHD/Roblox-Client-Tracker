local root = script:FindFirstAncestor("root")

local constants = require(root.src.constants)

local processBundle = require(root.src.Functions.processBundle)
local processHead = require(root.src.Functions.processHead)
local processAccessory = require(root.src.Functions.processAccessory)

return function(plugin)
	return function(store)
		local state = store:getState()
		if state.plugin.mode == constants.MODE.BUNDLE then
			processBundle(state.plugin.id, state.plugin.rig)
		elseif state.plugin.mode == constants.MODE.HEAD then
			processHead(state.plugin.id, state.plugin.rig)
		elseif state.plugin.mode == constants.MODE.ACCESSORY then
			processAccessory(state.plugin.id, state.plugin.rig)
		end
	end
end
