local Root = script:FindFirstAncestor("SceneUnderstanding")

local queryViewport = require(Root.queryViewport)
local findSourceAssetsFromDescendant = require(Root.findSourceAssetsFromDescendant)
local getSourceAssetsFromDescendants = require(Root.getSourceAssetsFromDescendants)
local isSourceAsset = require(Root.isSourceAsset)
local ViewportQueryOptions = require(Root.options.ViewportQueryOptions)

type ViewportQueryOptions = ViewportQueryOptions.ViewportQueryOptions

-- MUS-972 TODO: Stress test this

--[=[
	Analyzes the viewport to get a list of Source Assets.

	This function is used with the client’s Camera to determine what Source
	Assets they are looking at. For example, the following script when run on
	the client will poll every 5 seconds and print out the Source Assets in
	view.

	```lua
	local SceneUnderstanding = require(ReplicatedStorage.Packages.SceneUnderstanding)

	while true do
	    local camera = workspace.CurrentCamera
	    if camera then
	        local assets = SceneUnderstanding.getSourceAssetsInView(camera)
	        print(assets)
	    end
	    task.wait(5)
	end
	```

	In cases where the near-clipping plane needs to be controlled, the
	recommended approach is to clone the client’s Camera, modify its position,
	and pass in the clone to this function. For example,  this is how the
	near-clipping plane can be adjusted:

	```lua
	local SceneUnderstanding = require(ReplicatedStorage.Packages.SceneUnderstanding)

	while true do
	    local camera = workspace.CurrentCamera
	    if camera then
	        -- Clone the camera and push its position forward by 5 studs. Now anything
	        -- 0-5 studs in front of the client's camera will be filtered out from the
	        -- resulting list of assets.
	        local clone = camera:Clone()
	        clone.CFrame = clone.CFrame * (clone.CFrame.LookVector * 5)

	        local assets = SceneUnderstanding.getSourceAssetsInView(clone)
	        print(assets)
	    end
	    task.wait(5)
	end
	```

	@within SceneUnderstanding
	@tag internal
	@since 0.1.0
]=]
local function getSourceAssetsInView(camera: Camera, options: ViewportQueryOptions?): { Instance }
	local candidates = queryViewport(camera, function(instance)
		return isSourceAsset(instance) or #findSourceAssetsFromDescendant(instance) > 0
	end, options)

	return getSourceAssetsFromDescendants(candidates)
end

return getSourceAssetsInView
