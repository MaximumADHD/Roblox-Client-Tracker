--[[
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

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local FIRST_COLUMN_WIDTH = 110
local SIDE_PADDING = 20

local FFlagTerrainToolsFixPlanePositionErrorMessage = game:GetFastFlag("TerrainToolsFixPlanePositionErrorMessage")
local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

local LabeledElementPair = Roact.PureComponent:extend(script.Name)

function LabeledElementPair:init()
	self.mainFrameRef = Roact.createRef()
	self.contentFrameRef = Roact.createRef()
	self.layoutRef = Roact.createRef()

	self.resizeToContent = function()
		local mainFrame = self.mainFrameRef.current
		local contentFrame = self.contentFrameRef.current
		local layout = self.layoutRef.current
		if mainFrame and contentFrame and layout then
			mainFrame.Size = UDim2.new(mainFrame.Size.X.Scale, mainFrame.Size.X.Offset, 0, layout.AbsoluteContentSize.Y)
			contentFrame.Size = UDim2.new(1, -FIRST_COLUMN_WIDTH - SIDE_PADDING, 0, layout.AbsoluteContentSize.Y)
		end
	end

end

function LabeledElementPair:render()
	local padding = self.props.Padding or UDim.new(0, 0)
	local text = self.props.Text or ""
	local size = self.props.Size
	local layoutOrder = self.props.LayoutOrder
	local fillDirection
	if FFlagTerrainToolsFixPlanePositionErrorMessage then
		fillDirection = self.props.ContentDirection or Enum.FillDirection.Vertical
	end
	-- this prop enables auto resizing the content's size changes
	local sizeToContent = self.props.SizeToContent

	local visible = (self.props.Visible == nil) or self.props.Visible

	local children = self.props[Roact.Children]
	if sizeToContent and children then
		children["UIListLayout"] = Roact.createElement("UIListLayout", {
			Padding = padding,
			FillDirection = fillDirection,
			SortOrder = FFlagTerrainToolsFixPlanePositionErrorMessage and Enum.SortOrder.LayoutOrder or Enum.SortOrder.Name,
			[Roact.Change.AbsoluteContentSize] = self.resizeToContent,
			[Roact.Ref] = self.layoutRef,
		})
	end

	return withTheme(function(theme)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = size,
			Visible = visible,
			LayoutOrder = layoutOrder,

			[Roact.Ref] = self.mainFrameRef,
		}, {
			Label = Roact.createElement("TextLabel", {
				Text = text,
				TextColor3 = theme.textColor,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = FFlagTerrainToolsRefactor and Enum.TextYAlignment.Bottom or Enum.TextYAlignment.Center,
				Size = UDim2.new(0, FIRST_COLUMN_WIDTH - SIDE_PADDING, 0, 15),
				Position = UDim2.new(0, SIDE_PADDING, 0, 2),
				BackgroundTransparency = 1,
			}),

			-- Right Side
			Content = Roact.createElement("Frame", {
				Position = UDim2.new(0, FIRST_COLUMN_WIDTH, 0, 0),
				Size = UDim2.new(1, -FIRST_COLUMN_WIDTH - SIDE_PADDING, 1, 0),
				BackgroundTransparency = 1,

				[Roact.Ref] = self.contentFrameRef,
			}, children),
		})
	end)
end

return LabeledElementPair
