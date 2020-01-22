local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")

local Rodux = require(LuaPackages.Rodux)

local SetProduct = require(script.Parent.Parent.Actions.SetProduct)
local HidePrompt = require(script.Parent.Parent.Actions.HidePrompt)

local ProductReducer = Rodux.createReducer({}, {
	[SetProduct.name] = function(state, action)
		return {
			id = action.id,
			infoType = action.infoType,
			equipIfPurchased = action.equipIfPurchased,
		}
	end,
	[HidePrompt.name] = function(state, action)
		-- Clear product info when we hide the prompt
		return {}
	end,
})

return ProductReducer