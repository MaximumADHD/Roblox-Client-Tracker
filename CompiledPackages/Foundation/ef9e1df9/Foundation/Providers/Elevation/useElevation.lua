local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local ElevationLayer = require(Foundation.Enums.ElevationLayer)

local Provider = require(script.Parent.ElevationProvider)
local elevation = require(script.Parent.elevation)

local useElevationManager = Provider.useElevationManager
local useOwnerToken = Provider.useOwnerToken

type Token = elevation.Token
type ElevationLayer = ElevationLayer.ElevationLayer

type Options = {
	stackAboveOwner: boolean,
}

local function useElevation(layer: ElevationLayer, options: Options): Token
	local manager = useElevationManager()
	local owner = useOwnerToken()

	local token = React.useMemo(
		function()
			local isNestedSameLayer = owner ~= nil and owner.layer == layer

			if options.stackAboveOwner then
				if not owner then
					return manager.acquire(layer, { reserve = false })
				end

				if isNestedSameLayer then
					return manager.acquire(layer, { reserve = true, owner = owner })
				end

				local desired = owner.zIndex + 1

				return {
					layer = layer,
					index = -1,
					zIndex = desired,
				}
			end

			return manager.acquire(layer, { reserve = isNestedSameLayer })
		end,
		{
			layer,
			owner,
			manager,
			options.stackAboveOwner,
		} :: { unknown }
	)

	React.useEffect(
		function()
			return function()
				if token.index ~= nil and token.index >= 0 then
					manager.releaseIfTop(layer, token.index)
				end
			end
		end,
		{
			layer,
			token.index,
		} :: { unknown }
	)

	return token
end

return useElevation
