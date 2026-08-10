--!strict
local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local React = require(Packages.React)
local GoodSignal = require(Packages.GoodSignal)

local function useEventConnection<T...>(
	event: RBXScriptSignal | GoodSignal.Signal<T...> | nil,
	callback: (T...) -> (),
	dependencies: { any }?
)
	local cachedCallback = React.useMemo(function()
		return callback
	end, dependencies)

	React.useEffect(function(): (() -> ())?
		if event == nil then
			return nil
		end

		-- Necessary for Luau to understand the return value of :Connect
		if typeof(event) == "RBXScriptSignal" then
			local connection: RBXScriptConnection = event:Connect(cachedCallback)

			return function()
				connection:Disconnect()
			end
		end

		local connection: GoodSignal.Connection = event:Connect(cachedCallback)

		return function()
			connection:Disconnect()
		end
	end, { event, cachedCallback } :: { unknown })
end

return useEventConnection
