--!strict
local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local React = require(Packages.React)

local function useEventConnection<T...>(event: RBXScriptSignal?, callback: (T...) -> (), dependencies: { any }?)
	local cachedCallback = React.useMemo(function()
		return callback
	end, dependencies)

	React.useEffect(function(): (() -> ())?
		if event == nil then
			return nil
		end

		local connection = event:Connect(cachedCallback)

		return function()
			connection:Disconnect()
		end
	end, { event, cachedCallback } :: { unknown })
end

return useEventConnection
