local Root = script.Parent.Parent
local Workspace = game:GetService("Workspace")

local SetPromptState = require(Root.Actions.SetPromptState)
local PurchaseCompleteRecieved = require(Root.Actions.PurchaseCompleteRecieved)
local PromptState = require(Root.Enums.PromptState)
local Thunk = require(Root.Thunk)

--[[
	This delay is used to make sure the animation plays long enough
	for the player to see that the purchase is happening; it's only
	for visual effect
]]
local DELAY = 1

local function completePurchase()
	return Thunk.new(script.Name, {}, function(store, services)
		local startTime = store:getState().purchasingStartTime
		local timeElapsed = Workspace.DistributedGameTime - startTime

		store:dispatch(PurchaseCompleteRecieved())

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