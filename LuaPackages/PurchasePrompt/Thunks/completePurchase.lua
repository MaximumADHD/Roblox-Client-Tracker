local Workspace = game:GetService("Workspace")

local Thunk = require(script.Parent.Parent.Thunk)

local SetPromptState = require(script.Parent.Parent.Actions.SetPromptState)

local PromptState = require(script.Parent.Parent.PromptState)

--[[
	This delay is used to make sure the animation plays long enough
	for the player to see that the purchase is happening; it's only
	for visual effect
]]
local DELAY = 1

local function completePurchase()
	return Thunk.new(script.Name, {}, function(store, services)
		local startTime = store:getState().purchasingStartTime

		local timeElapsed = startTime - Workspace.DistributedGameTime
		if timeElapsed >= DELAY then
			return store:dispatch(SetPromptState(PromptState.PurchaseComplete))
		else
			delay(DELAY - timeElapsed, function()
				return store:dispatch(SetPromptState(PromptState.PurchaseComplete))
			end)
		end
	end)
end

return completePurchase