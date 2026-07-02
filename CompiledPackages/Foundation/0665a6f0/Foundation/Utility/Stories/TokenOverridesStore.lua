--[[
	Simple pub-sub store for token overrides.
	
	This store allows code to access the current token overrides and react to changes.
	The TokenOverrides.story updates this store when overrides change, and StoryMiddleware
	subscribes to apply them to all stories.
	
	Usage:
		local store = getTokenOverridesStore()
		local overrides = store.getTokenOverrides()
		
	To listen for changes:
		local unsubscribe = store.subscribe(function(newOverrides)
			-- React to token overrides change
		end)
		-- Later: unsubscribe()
]]

local Foundation = script:FindFirstAncestor("Foundation")

local Tokens = require(Foundation.Providers.Style.Tokens)

type TokenOverrides = Tokens.TokenOverrides

export type TokenOverridesStore = {
	getTokenOverrides: () -> TokenOverrides?,
	setTokenOverrides: (value: TokenOverrides?) -> (),
	subscribe: (callback: (TokenOverrides?) -> ()) -> () -> (),
}

local currentValue: TokenOverrides? = nil
local subscribers: { (TokenOverrides?) -> () } = {}

local tokenOverridesStore: TokenOverridesStore = {
	getTokenOverrides = function()
		return currentValue
	end,
	setTokenOverrides = function(value)
		currentValue = value
		for _, callback in subscribers do
			callback(value)
		end
	end,
	subscribe = function(callback)
		table.insert(subscribers, callback)
		return function()
			local index = table.find(subscribers, callback)
			if index then
				table.remove(subscribers, index)
			end
		end
	end,
}

local function getTokenOverridesStore(): TokenOverridesStore
	return tokenOverridesStore
end

return getTokenOverridesStore
