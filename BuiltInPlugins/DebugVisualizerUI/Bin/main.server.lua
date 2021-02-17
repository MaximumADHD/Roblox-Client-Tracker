game:DefineFastFlag("ShowDebugVisualizerUI", false)

local ShowDebugVisualizerUI = game:GetFastFlag("ShowDebugVisualizerUI")
if not ShowDebugVisualizerUI then
	return
end

local screengui
local root = script.Parent.Parent
local tr = require(root.Src.tr)

local function showOrHideTimesteps()
	local val = settings().Physics.AreTimestepsShown
	if val then
		screengui.Parent = game:GetService("CoreGui")
	else
		screengui.Parent = nil
	end
end

local function createItemWithColorAndLabel(color, label)
	local item = Instance.new("Frame")
	item.Size = UDim2.new(1, 0, 0, 15)
	item.BackgroundTransparency = 1

	local itemLayout = Instance.new("UIListLayout")
	itemLayout.Parent = item
	itemLayout.FillDirection = "Horizontal"
	itemLayout.HorizontalAlignment = "Center"
	itemLayout.VerticalAlignment = "Center"

	local box = Instance.new("Frame")
	box.Size = UDim2.new(0, 15, 0, 15)
	box.Parent = item
	box.BackgroundColor3 = color
	box.BorderSizePixel = 0

	local text = Instance.new("TextLabel")
	text.Text = label
	text.Parent = item
	text.Size = UDim2.new(1, -15, 0, 15)
	text.BackgroundTransparency = 1
	text.TextColor3 = Color3.new(1, 1, 1)
	return item
end

local function init()
	screengui = Instance.new("ScreenGui")
	screengui.Name = "AdaptiveTimeSteppingLegend"
	screengui.Enabled = true

	local outerFrame = Instance.new("Frame")
	outerFrame.Parent = screengui
	outerFrame.Size = UDim2.new(0, 120, 0, 80)
	outerFrame.Position = UDim2.new(0, 0, 0, 0)
	outerFrame.BackgroundColor3 = Color3.new(0, 0, 0)

	local titleText = Instance.new("TextLabel")
	titleText.Parent = outerFrame
	titleText.Size = UDim2.new(1, 0, 0, 25)
	titleText.TextColor3 = Color3.new(1, 1, 1)
	titleText.Text = tr("Studio.DebugVisualizerUI.AdaptiveTimesteppingLegend.LegendLabel")
	titleText.BackgroundTransparency = 1
	titleText.LayoutOrder = 0

	local outerLayout = Instance.new("UIListLayout")
	outerLayout.Parent = outerFrame
	outerLayout.FillDirection = "Vertical"
	outerLayout.HorizontalAlignment = "Center"
	outerLayout.VerticalAlignment = "Center"
	outerLayout.SortOrder = "LayoutOrder"

	local redItem = createItemWithColorAndLabel(Color3.new(255, 0, 0), "240hz")
	redItem.Parent = outerFrame
	redItem.LayoutOrder = 1

	local yellowItem = createItemWithColorAndLabel(Color3.fromRGB(255, 198, 0), "120hz")
	yellowItem.Parent = outerFrame
	yellowItem.LayoutOrder = 2

	local greenItem = createItemWithColorAndLabel(Color3.fromRGB(64, 166, 81), "60hz")
	greenItem.Parent = outerFrame
	greenItem.LayoutOrder = 3

	plugin.Name = "DebugVisualizerUI"
end

plugin.Unloading:Connect(function()
	screengui.Parent = nil
end)

settings().Physics:GetPropertyChangedSignal("AreTimestepsShown"):Connect(showOrHideTimesteps)

init()
showOrHideTimesteps()
