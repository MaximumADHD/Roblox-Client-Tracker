local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "StoryShell must be mounted under view-recycler-react")

local React = require(Root.Parent.React)
local ScenarioBanner = require(script.Parent.ScenarioBanner)

local e = React.createElement
local DEFAULT_BANNER_HEIGHT = 140
local CAPTURE_BANNER_HEIGHT = 44
local CAPTURE_SIZE = UDim2.fromOffset(1280, 720)

local function Component(props)
	local captureMode = props.captureMode == true
	local bannerHeight = if captureMode then CAPTURE_BANNER_HEIGHT else props.bannerHeight or DEFAULT_BANNER_HEIGHT
	local toolbarHeight = if props.toolbar == nil then 0 else props.toolbarHeight or 42
	local contentChildren = props.children
	if captureMode then
		contentChildren = table.clone(props.children or {})
		contentChildren.CaptureLayout = e("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		})
	end

	return e("Frame", {
		BackgroundColor3 = Color3.fromRGB(20, 20, 26),
		BorderSizePixel = 0,
		Size = if captureMode then CAPTURE_SIZE else props.size or UDim2.fromOffset(760, 700),
	}, {
		Banner = if captureMode
			then e("TextLabel", {
				BackgroundColor3 = Color3.fromRGB(25, 26, 34),
				BorderSizePixel = 0,
				Font = Enum.Font.BuilderSansBold,
				Size = UDim2.new(1, 0, 0, bannerHeight),
				Text = `{props.title} · Behavior demonstration — not a device benchmark`,
				TextColor3 = Color3.fromRGB(245, 247, 251),
				TextSize = 18,
			})
			else e(ScenarioBanner, {
				acceptanceCriteria = props.acceptanceCriteria,
				height = bannerHeight,
				instructions = props.instructions,
				itemUpdate = props.itemUpdate,
				title = props.title,
			}),
		Status = if props.status == nil
			then nil
			else e("TextLabel", {
				BackgroundColor3 = Color3.fromRGB(25, 26, 34),
				BorderSizePixel = 0,
				Font = Enum.Font.Code,
				Position = UDim2.fromOffset(0, bannerHeight),
				Size = UDim2.new(1, 0, 0, 30),
				Text = props.status,
				TextColor3 = Color3.fromRGB(226, 226, 233),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
		Toolbar = if props.toolbar == nil
			then nil
			else e("Frame", {
				BackgroundColor3 = Color3.fromRGB(25, 26, 34),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(0, bannerHeight + if props.status == nil then 0 else 30),
				Size = UDim2.new(1, 0, 0, toolbarHeight),
			}, {
				Content = props.toolbar,
			}),
		Content = e("Frame", {
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			Position = UDim2.fromOffset(0, bannerHeight + (if props.status == nil then 0 else 30) + toolbarHeight),
			Size = UDim2.new(1, 0, 1, -(bannerHeight + (if props.status == nil then 0 else 30) + toolbarHeight)),
		}, contentChildren),
	})
end

local StoryShell = {
	Component = Component,
}

function StoryShell.createStory(metadata, component)
	return function(storyProps)
		local controls = storyProps.controls or {}
		return e(Component, {
			acceptanceCriteria = metadata.acceptanceCriteria,
			captureMode = controls.captureMode == true,
			instructions = metadata.instructions,
			itemUpdate = metadata.itemUpdate,
			size = metadata.size,
			title = metadata.title,
		}, {
			Scenario = e(component, storyProps),
		})
	end
end

return StoryShell
