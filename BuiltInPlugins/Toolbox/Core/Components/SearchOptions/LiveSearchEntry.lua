--[[
	Entry to LiveSearchDropdown.

	Props:
		string Name = The text to display in this entry.
		image Thumbnail = The icon to display in this entry.
		int LayoutOrder = The layout order of this entry.

		function closeDropdown = A callback for when the dropdown should be closed.
		function onClick = A callback for when this entry is clicked.
]]
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")
local FFlagToolboxWithContext = game:GetFastFlag("ToolboxWithContext")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Framework = require(Libs.Framework)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local withTheme = ContextHelper.withTheme

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local LiveSearchEntry = Roact.PureComponent:extend("LiveSearchEntry")

function LiveSearchEntry:init(props)
	self.state = {
		hovering = false
	}

	self.closeDropdown = function()
		if self.props.closeDropdown then
			self.props.closeDropdown()
		end
	end

	self.onClick = function()
		if self.props.onClick then
			self.props.onClick()
		end
		self.closeDropdown()
	end

	self.mouseEnter = function()
		self:setState({
			hovering = true,
		})
	end

	self.mouseLeave = function()
		self:setState({
			hovering = false,
		})
	end
end

function LiveSearchEntry:render()
	if FFlagToolboxRemoveWithThemes then
		return self:renderContent(nil)
	else
		return withTheme(function(theme)
			return self:renderContent(theme)
		end)
	end
end

function LiveSearchEntry:renderContent(theme)
	local selectedBarWidth = Constants.DROPDOWN_SELECTED_BAR
	local rowHeight = Constants.SEARCH_ENTRY_HEIGHT

	if FFlagToolboxRemoveWithThemes then
		theme = self.props.Stylizer
	end

	local isDarkerTheme = theme.isDarkerTheme
	local dropdownTheme = theme.dropdownMenu
	local itemTheme = dropdownTheme.item

	local hover = self.state.hovering

	local layoutOrder = self.props.LayoutOrder
	local thumbnail = self.props.Thumbnail
	local itemName = self.props.Name

	return Roact.createElement("ImageButton",{
		Size = UDim2.new(1, -Constants.SCROLLBAR_BACKGROUND_THICKNESS + Constants.SCROLLBAR_PADDING, 0, rowHeight),
		BackgroundColor3 = hover and itemTheme.backgroundSelectedColor or itemTheme.backgroundColor,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
		ZIndex = 2,

		AutoButtonColor = false,

		[Roact.Event.Activated] = self.onClick,
		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseLeave] = self.mouseLeave,
	}, {
		SelectedBar = not isDarkerTheme and Roact.createElement("Frame", {
			Size = UDim2.new(0, selectedBarWidth, 1, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = dropdownTheme.item.selectedBarColor,
			Visible = hover,
			ZIndex = 2,
		}),

		Container = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 10),
				PaddingRight = UDim.new(0, 10),
				PaddingTop = UDim.new(0, 2),
				PaddingBottom = UDim.new(0, 2),
			}),

			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, 10),
			}),

			Thumbnail = Roact.createElement("ImageLabel", {
				LayoutOrder = 2,
				Size = UDim2.new(0.8, 0, 0.8, 0),
				SizeConstraint = Enum.SizeConstraint.RelativeYY,
				AnchorPoint = Vector2.new(0, 0.5),
				Image = thumbnail,
				BackgroundTransparency = 1,
				ZIndex = 3,
			}),

			TextLabel = Roact.createElement("TextLabel", {
				LayoutOrder = 3,
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Text = itemName,
				TextColor3 = itemTheme.textColor,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextTruncate = Enum.TextTruncate.AtEnd,
				ClipsDescendants = true,
				ZIndex = 3,
			})
		})
	})
end

if FFlagToolboxRemoveWithThemes then
	if FFlagToolboxWithContext then
		LiveSearchEntry = withContext({
			Stylizer = ContextServices.Stylizer,
		})(LiveSearchEntry)
	else
		ContextServices.mapToProps(LiveSearchEntry, {
			Stylizer = ContextServices.Stylizer,
		})
	end

end

return LiveSearchEntry
