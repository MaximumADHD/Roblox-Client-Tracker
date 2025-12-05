local CorePackages = game:GetService("CorePackages")

local BoxButton = require(script.Parent.Parent.BoxButton)
local Constants = require(script.Parent.Parent.Parent.Constants)
local Immutable = require(script.Parent.Parent.Parent.Immutable)
local Roact = require(CorePackages.Packages.Roact)

local MicroProfilerPanel = Roact.Component:extend("MicroProfilerPanel")

function MicroProfilerPanel:createTabSelector(props)
	local size = props.Size
	local position = props.Position or UDim2.new(0, 0, 0, 0)
	local buttonSize = props.ButtonSize
	local layoutOrder = props.LayoutOrder

	local function createHighlight(sectionName: string, index: number)
		return if self.state.CurrentSection == sectionName
			then Roact.createElement("Frame", {
				Size = UDim2.new(
					0,
					Constants.MicroProfilerFormatting.TabButtonWidth,
					0,
					Constants.MicroProfilerFormatting.TabButtonPad
				),
				Position = UDim2.new(
					0,
					Constants.MicroProfilerFormatting.TabButtonWidth * (index - 1),
					0,
					Constants.MicroProfilerFormatting.TabsHeight - Constants.MicroProfilerFormatting.TabButtonPad
				),
				BorderSizePixel = 0,
				BackgroundColor3 = Constants.Color.HighlightBlue,
				ZIndex = 10,
			})
			else nil
	end

	local elements: { [string]: any } = {}
	for i, section in self.props.Sections do
		elements[`Button_{string.format("%02d", i)}`] = Roact.createElement(BoxButton, {
			text = section.Name,
			size = buttonSize,
			pos = UDim2.new(0, (i - 1) * buttonSize.X.Offset, 0, 0),
			onClicked = function()
				self:setState({ CurrentSection = section.Name })
			end,
		})
		elements[`ButtonHighlight_{string.format("%02d", i)}`] = createHighlight(section.Name, i)
	end

	return Roact.createElement("Frame", {
		Size = size,
		Position = position,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, elements)
end

function MicroProfilerPanel:init()
	assert(self.props.Sections[1] ~= nil, "MicroProfilerPanel requires at least one section.")

	self.state = {
		CurrentSection = self.props.Sections[1].Name,
	}
end

function MicroProfilerPanel:render()
	assert(self.props.Sections[1] ~= nil, "MicroProfilerPanel requires at least one section.")

	local sections = self.props.Sections

	-- Construct rows and horizontal lines
	local elements: { [string]: { [string]: any } } = {}
	for _, section in sections do
		elements[section.Name] = {}
		for i, entry in section.Rows do
			elements[section.Name][`Row_{string.format("%02d", i)}`] = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, Constants.MicroProfilerFormatting.OptionRowHeight),
				BackgroundTransparency = 1,
				LayoutOrder = i * 2,
			}, entry)
			if i < #section.Rows then
				elements[section.Name][`HorizontalLine_{string.format("%02d", i)}`] = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderSizePixel = 0,
					LayoutOrder = i * 2 + 1,
				})
			end
		end
	end

	return Roact.createElement(
		"Frame",
		{
			Size = UDim2.new(1, 0, 0, 0),
			BackgroundTransparency = 1,
			LayoutOrder = self.props.LayoutOrder,
			AutomaticSize = Enum.AutomaticSize.Y,
		},
		{
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}),
			Title = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, Constants.MicroProfilerFormatting.PanelTitleHeight),
				BackgroundTransparency = 1,
				Text = self.props.Title,
				TextXAlignment = Enum.TextXAlignment.Left,
				Font = Constants.Font.MainWindowBold,
				TextSize = Constants.MicroProfilerFormatting.TextSizePanelTitle,
				TextColor3 = Color3.new(1, 1, 1),
				LayoutOrder = 1,
			}),
			Tabs = if #sections > 1
				then self:createTabSelector({
					Size = UDim2.new(1, 0, 0, Constants.MicroProfilerFormatting.TabsHeight),
					Position = UDim2.new(0, 0, 0, 0),
					LayoutOrder = 2,
					ButtonSize = UDim2.new(0, Constants.MicroProfilerFormatting.TabButtonWidth, 1, 0),
				})
				else nil,
			[`Table_{self.state.CurrentSection}`] = Roact.createElement(
				"Frame",
				{
					Size = UDim2.new(1, 0, 0, 0),
					BackgroundTransparency = 1,
					LayoutOrder = 3,
					AutomaticSize = Enum.AutomaticSize.Y,
				},
				Immutable.JoinDictionaries({
					UIListLayout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						VerticalAlignment = Enum.VerticalAlignment.Top,
					}),
					UIStroke = Roact.createElement("UIStroke", {
						Color = Color3.new(1, 1, 1),
						Thickness = 1,
						BorderStrokePosition = Enum.BorderStrokePosition.Inner,
					}),
				}, elements[self.state.CurrentSection])
			),
		} :: { [string]: any }
	)
end

return MicroProfilerPanel
