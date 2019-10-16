local Thunk = require(script.Parent.Parent.Thunk)

local PromptState = require(script.Parent.Parent.PromptState)

local SetPromptState = require(script.Parent.Parent.Actions.SetPromptState)

local requiredServices = {
}

local function hidePrompt(productInfo, accountInfo, alreadyOwned)
	return Thunk.new(script.Name, requiredServices, function(store, services)
		return store:dispatch(SetPromptState(PromptState.Hiding))
	end)
end

return hidePrompt