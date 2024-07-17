local Root = script:FindFirstAncestor("SceneUnderstanding")

local findSourceAssetsFromDescendant = require(Root.findSourceAssetsFromDescendant)
local getSourceAssetsFromDescendants = require(Root.getSourceAssetsFromDescendants)
local isSourceAsset = require(Root.isSourceAsset)
local RangeQueryOptions = require(Root.options.RangeQueryOptions)

type RangeQueryOptions = RangeQueryOptions.RangeQueryOptions

-- MUS-972 TODO: Stress test this

--[=[
	This can be used in conjunction with the client’s Camera to determine what
	Source Assets are in a radius around the current Camera position.

	```lua
	local SceneUnderstanding = require(ReplicatedStorage.Packages.SceneUnderstanding)

	local camera = workspace.CurrentCamera
	if camera then
	    local assets = SceneUnderstanding.getSourceAssetsInRange(camera.CFrame.Position, 100)
	    print(assets)
	end
	```

	@within SceneUnderstanding
	@tag internal
	@since 0.1.0
]=]
local function getSourceAssetsInRange(position: Vector3, options: RangeQueryOptions?): { Instance }
	local candidates = {}
	local internalOptions = RangeQueryOptions.new(options)

	for _, part in workspace:GetPartBoundsInRadius(position, internalOptions.maxDistance) do
		if isSourceAsset(part) or #findSourceAssetsFromDescendant(part) > 0 then
			table.insert(candidates, part)
		end
	end

	return getSourceAssetsFromDescendants(candidates)
end

return getSourceAssetsInRange
