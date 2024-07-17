local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local React = require(Root.Parent.React)
local SceneAnalysisContext = require(Root.SceneAnalysisContext)

--[=[
	Returns a list of Source Assets in the viewport.

	To control the behavior of viewport detection, pass `viewportQueryOptions`
	to `SceneAnalysisProvider`.

	Usage:

	```lua title="modules/example/src/AssetView.lua"
	local Root = script:FindFirstAncestor("Examples")

	local React = require(Root.Parent.React)
	local ReactSceneUnderstanding = require(Root.Parent.ReactSceneUnderstanding)

	local useAssetsInView = ReactSceneUnderstanding.useAssetsInView

	local THUMBNAIL_SIZE = 150

	local function AssetView()
	    local assetsInView = useAssetsInView()

	    if #assetsInView > 0 then
	        local children = {
	            Layout = React.createElement("UIGridLayout", {
	                SortOrder = Enum.SortOrder.LayoutOrder,
	                CellSize = UDim2.fromOffset(THUMBNAIL_SIZE, THUMBNAIL_SIZE),
	            }),
	        }

	        for index, asset in assetsInView do
	            children[asset.Name] = React.createElement("ImageLabel", {
	                LayoutOrder = index,
	                Image = `rbxthumb://type=Asset&id={asset.SourceAssetId}&w={THUMBNAIL_SIZE}&h={THUMBNAIL_SIZE}`,
	            })
	        end

	        return React.createElement("ScrollingFrame", {
	            Size = UDim2.fromScale(1, 1),
	            CanvasSize = UDim2.fromScale(1, 0),
	            AutomaticCanvasSize = Enum.AutomaticSize.Y,
	            ScrollingDirection = Enum.ScrollingDirection.Y,
	            BackgroundTransparency = 1,
	        }, children)
	    else
	        return React.createElement("TextLabel", {
	            Text = "No assets in view. Use Toolbox to add assets to the experience",
	            Font = Enum.Font.Gotham,
	            TextColor3 = Color3.fromRGB(200, 200, 200),
	            TextSize = 16,
	            AutomaticSize = Enum.AutomaticSize.XY,
	            BackgroundTransparency = 1,
	        })
	    end
	end

	return AssetView
	```

	@within ReactSceneUnderstanding
	@tag internal
	@since 0.1.0
]=]
local function useAssetsInView()
	local context: SceneAnalysisContext.SceneAnalysis = React.useContext(SceneAnalysisContext)
	return context.assetsInView
end

return useAssetsInView
