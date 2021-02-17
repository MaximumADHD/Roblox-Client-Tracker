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

local FFlagTerrainToolsLabeledElementPairIcons2 = game:GetFastFlag("TerrainToolsLabeledElementPairIcons2")
local FFlagTerrainEditorUpdateFontToSourceSans = game:GetFastFlag("TerrainEditorUpdateFontToSourceSans")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local Constants = require(Plugin.Src.Util.Constants)

local StatusIcon = require(Plugin.Src.Components.StatusIcon)

local TextService = game:GetService("TextService")

local LabeledElementPair = Roact.PureComponent:extend(script.Name)

function LabeledElementPair:init()
	self.mainFrameRef = Roact.createRef()

	-- Remove with FFlagTerrainToolsLabeledElementPairIcons
	self.DEPRECATED_contentFrameRef = Roact.createRef()

	self.labelLayoutRef = Roact.createRef()
	self.contentLayoutRef = Roact.createRef()

	self.resizeToContent = function()
		if FFlagTerrainToolsLabeledElementPairIcons2 then
			local mainFrame = self.mainFrameRef.current

			if mainFrame then
				local labelLayout = self.labelLayoutRef.current
				local contentLayout = self.contentLayoutRef.current

				local height
				if labelLayout then
					height = labelLayout.AbsoluteContentSize.Y
				end
				if contentLayout then
					height = math.max(height or 0, contentLayout.AbsoluteContentSize.Y)
				end

				if height then
					mainFrame.Size = UDim2.new(mainFrame.Size.X.Scale, mainFrame.Size.X.Offset,
						0, height)
				end
			end
		else
			local mainFrame = self.mainFrameRef.current
			local contentFrame = self.DEPRECATED_contentFrameRef.current
			local layout = self.contentLayoutRef.current
			if mainFrame and contentFrame and layout then
				mainFrame.Size = UDim2.new(mainFrame.Size.X.Scale, mainFrame.Size.X.Offset,
					0, layout.AbsoluteContentSize.Y)
				contentFrame.Size = UDim2.new(contentFrame.Size.X.Scale, contentFrame.Size.X.Offset,
					0, layout.AbsoluteContentSize.Y)
			end
		end
	end
end

function LabeledElementPair:render()
	local theme = self.props.Theme:get()

	local padding = self.props.Padding or UDim.new(0, 0)
	local text = self.props.Text or ""
	local size = self.props.Size
	local layoutOrder = self.props.LayoutOrder
	local fillDirection = self.props.ContentDirection or Enum.FillDirection.Vertical

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
			[Roact.Ref] = self.contentLayoutRef,
		})
	end

	if FFlagTerrainToolsLabeledElementPairIcons2 then
		local showStatusIcon = self.props.ErrorMessage or self.props.WarningMessage or self.props.InfoMessage

		local textSize = FFlagTerrainEditorUpdateFontToSourceSans and theme.textSize or 8
		local font = FFlagTerrainEditorUpdateFontToSourceSans and theme.font or Enum.Font.Legacy

		local labelSection = {}

		if showStatusIcon then
			local textDimensions = TextService:GetTextSize(text, textSize, font,
				Vector2.new(Constants.FIRST_COLUMN_WIDTH, math.huge))

			-- Sometimes the last letter of the text gets clipped on mac
			-- Just give it a few more pixels to be sure the text will fit
			local labelWidth = math.min(textDimensions.x + 2, Constants.FIRST_COLUMN_WIDTH)
			local labelHeight = textDimensions.y

			local iconWidth = 18
			local labelTopPadding = 4
			local textIconPadding = 4

			local iconSameRow
			local iconTopPadding
			if labelWidth + textIconPadding + iconWidth <= Constants.FIRST_COLUMN_WIDTH then
				iconSameRow = true
				iconTopPadding = 1
			else
				iconSameRow = false
				iconTopPadding = 0
			end

			labelSection.UIListLayout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, textIconPadding),
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = iconSameRow and Enum.FillDirection.Horizontal or Enum.FillDirection.Vertical,
				[Roact.Change.AbsoluteContentSize] = self.resizeToContent,
				[Roact.Ref] = self.labelLayoutRef,
			})

			-- Container frames are used to position the text and icon vertically in their row
			labelSection.LabelContainer = Roact.createElement("Frame", {
				LayoutOrder = 1,
				Size = UDim2.new(0, labelWidth, 0, labelHeight + labelTopPadding),
				BackgroundTransparency = 1,
			}, {
				Label = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,

					Text = text,
					TextSize = textSize,
					Font = font,

					TextWrapped = true,
					TextColor3 = theme.textColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Bottom,
				}),
			})

			labelSection.StatusIconContainer = Roact.createElement("Frame", {
				LayoutOrder = 2,
				Size = UDim2.new(0, iconWidth, 0, iconWidth + iconTopPadding),
				BackgroundTransparency = 1,
			}, {
				StatusIcon = Roact.createElement(StatusIcon, {
					AnchorPoint = Vector2.new(0, 1),
					Position = UDim2.new(0, 0, 1, 0),
					ErrorMessage = self.props.ErrorMessage,
					WarningMessage = self.props.WarningMessage,
					InfoMessage = self.props.InfoMessage,
				}),
			})
		else
			labelSection.LabelContainer = Roact.createElement("Frame", {
				LayoutOrder = 1,
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				Label = Roact.createElement("TextLabel", {
					-- Add a few pixels gap between top of text and top of the "row"
					-- Matches where the text appears if there's an icon
					-- So toggling icon visible doesn't move the text around
					Position = UDim2.new(0, 0, 0, 4),
					Size = UDim2.new(1, 0, 1, -4),
					BackgroundTransparency = 1,

					Text = text,
					TextSize = textSize,
					Font = font,

					TextWrapped = true,
					TextColor3 = theme.textColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
				}),
			})
		end

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = size,
			Visible = visible,
			LayoutOrder = layoutOrder,

			[Roact.Ref] = self.mainFrameRef,
		}, {
			LabelColumn = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, Constants.SIDE_PADDING, 0, 0),
				Size = UDim2.new(0, Constants.FIRST_COLUMN_WIDTH, 1, 0),
			}, labelSection),

			-- Right Side
			ContentColumn = Roact.createElement("Frame", {
				Position = UDim2.new(0, Constants.SECOND_COLUMN_START, 0, 0),
				Size = UDim2.new(1, -(Constants.SECOND_COLUMN_START + Constants.SIDE_PADDING), 1, 0),
				BackgroundTransparency = 1,
			}, children),
		})
	else
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = size,
			Visible = visible,
			LayoutOrder = layoutOrder,

			[Roact.Ref] = self.mainFrameRef,
		}, {
			Label = Roact.createElement("TextLabel", {
				Text = text,
				Font = FFlagTerrainEditorUpdateFontToSourceSans and theme.font or nil,
				TextSize = FFlagTerrainEditorUpdateFontToSourceSans and theme.textSize or nil,
				TextColor3 = theme.textColor,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Bottom,
				Size = UDim2.new(0, Constants.FIRST_COLUMN_WIDTH, 0, 15),
				Position = UDim2.new(0, Constants.SIDE_PADDING, 0, 2),
				BackgroundTransparency = 1,
			}),

			-- Right Side
			Content = Roact.createElement("Frame", {
				Position = UDim2.new(0, Constants.SECOND_COLUMN_START, 0, 0),
				Size = UDim2.new(1, -(Constants.SECOND_COLUMN_START + Constants.SIDE_PADDING), 1, 0),
				BackgroundTransparency = 1,

				[Roact.Ref] = self.DEPRECATED_contentFrameRef,
			}, children),
		})
	end
end

ContextServices.mapToProps(LabeledElementPair, {
	Theme = ContextItems.UILibraryTheme,
})

return LabeledElementPair
