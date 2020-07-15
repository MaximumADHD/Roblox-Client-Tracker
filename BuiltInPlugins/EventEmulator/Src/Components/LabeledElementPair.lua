--[[
	DISCUSS: This file was taken from TerrainTools as there is no plan to replicate it to developer framework.
	Design may reuse this pattern in the future so if this becomes part of our toolbox, the reference to this in
	TextInput should be replaced with a non-duplicated version.
	sworzalla, 5/6/2020

	This script enforces consistency in two-column settings. One LabeledElementPair will use UIListLayout to ensure
	everything looks good and size must be passed in. Position is expected to be handled externally by another UIListLayout

	Required Props:
		Text - Left hand display name
		Content - Right hand content
		Size - Size of your content (will be deprecated if Expandable List starts working)
	OptionalProps:
		Padding - UIListLayout Padding
		FillDirection - UIListLayout fill direction
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

-- local Theme = require(script.Parent.Theming)
-- local withTheme = Theme.withTheme

local LabeledElementPair = Roact.PureComponent:extend(script.Name)

local Constants = {}
Constants.FIRST_COLUMN_WIDTH = 90
Constants.SIDE_PADDING = 20
Constants.SECOND_COLUMN_START = Constants.SIDE_PADDING + Constants.FIRST_COLUMN_WIDTH

LabeledElementPair.defaultProps = {
	Padding = UDim.new(0, 0),
	Text = "",
	TextSize = 18,
	Font = Enum.Font.SourceSans,
	ContentDirection = Enum.FillDirection.Vertical,
	TextColor = Color3.new(),
}

function LabeledElementPair:init()
	self.mainFrameRef = Roact.createRef()
	self.contentFrameRef = Roact.createRef()
	self.layoutRef = Roact.createRef()

	self.resizeToContent = function()
		local mainFrame = self.mainFrameRef.current
		local contentFrame = self.contentFrameRef.current
		local layout = self.layoutRef.current
		if mainFrame and contentFrame and layout then
			mainFrame.Size = UDim2.new(mainFrame.Size.X.Scale, mainFrame.Size.X.Offset,
				0, layout.AbsoluteContentSize.Y)
			contentFrame.Size = UDim2.new(1, -Constants.SECOND_COLUMN_START,
				0, layout.AbsoluteContentSize.Y)
		end
	end

end

function LabeledElementPair:render()
	local padding = self.props.Padding
	local text = self.props.Text
	local textSize = self.props.TextSize
	local font = self.props.Font
	local size = self.props.Size
	local layoutOrder = self.props.LayoutOrder
	local fillDirection = self.props.ContentDirection
	local textColor = self.props.TextColor
	-- this prop enables auto resizing the content's size changes
	local sizeToContent = self.props.SizeToContent

	local visible = (self.props.Visible == nil) or self.props.Visible

	local children = self.props[Roact.Children]
	if sizeToContent and children then
		children["UIListLayout"] = Roact.createElement("UIListLayout", {
			Padding = padding,
			FillDirection = fillDirection,
			SortOrder = Enum.SortOrder.LayoutOrder,
			[Roact.Change.AbsoluteContentSize] = self.resizeToContent,
			[Roact.Ref] = self.layoutRef,
		})
	end

	-- return withTheme(function(theme)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = size,
			Visible = visible,
			LayoutOrder = layoutOrder,

			[Roact.Ref] = self.mainFrameRef,
		}, {
			Label = Roact.createElement("TextLabel", {
				Font = font,
				TextSize = textSize,
				Text = text,
				TextColor3 = textColor,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Bottom,
				Size = UDim2.new(0, Constants.FIRST_COLUMN_WIDTH, 0, 15),
				Position = UDim2.new(0, Constants.SIDE_PADDING, 0, 2),
				BackgroundTransparency = 1,
			}),

			-- Right Side
			Content = Roact.createElement("Frame", {
				Position = UDim2.new(0, Constants.SECOND_COLUMN_START, 0, 0),
				Size = UDim2.new(1, -Constants.SECOND_COLUMN_START, 1, 0),
				BackgroundTransparency = 1,

				[Roact.Ref] = self.contentFrameRef,
			}, children),
		})
	-- end)
end

return LabeledElementPair
