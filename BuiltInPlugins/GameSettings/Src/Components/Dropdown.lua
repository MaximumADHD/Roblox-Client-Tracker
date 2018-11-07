--[[
	A scrollable dropdown menu with a large number of elements.
	Contains a button to drop the menu, and the menu itself. Entries are defined
	in the DropdownEntry component.

	Props:
		table Entries = Id and name props for the DropdownEntries to be created.
		variant Current = The Id of the currently active item.
		bool Enabled = Whether this Dropdown can be interacted with.
		function CurrentChanged = Callback when the currently selected entry changes.
			Returns the currently selected entry's Id.
]]

local DEFAULT_SIZE = UDim2.new(0, 220, 0, 38)
local ENTRIES_SIZE = UDim2.new(1, 10, 0, 190)
local PADDING = UDim.new(0, 12)

local ARROW_IMAGE = "rbxasset://textures/GameSettings/Arrow.png"

local GRADIENT_IMAGE = "rbxasset://textures/GameSettings/Gradient-Border.png"
local GRADIENT_SLICE = Rect.new(5, 5, 5, 5)
local GRADIENT_SIZE = UDim2.new(1, 10, 0, 200)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local DropdownEntry = require(Plugin.Src.Components.DropdownEntry)
local StyledScrollingFrame = require(Plugin.Src.Components.StyledScrollingFrame)

local Dropdown = Roact.PureComponent:extend("Dropdown")

local function findCurrentTitle(entries, currentId)
	for _, entry in pairs(entries) do
		if entry.Id == currentId then
			if entry.Title then
				return entry.Title
			else
				return currentId
			end
		end
	end
end

function Dropdown:init(props)
	self.state = {
		Hovering = false,
		Open = props.StartOpen or false,
	}
end

function Dropdown:mouseHoverChanged(hovering)
	self:setState({
		Hovering = hovering,
	})
end

function Dropdown:setOpen(open)
	self:setState({
		Open = open,
	})
end

function Dropdown:render()
	return withTheme(function(theme)
		local entries = self.props.Entries
		local currentId = self.props.Current
		local currentTitle = findCurrentTitle(entries, currentId)
		local active = self.props.Enabled
		local hovering = self.state.Hovering
		local open = self.state.Open

		local showDropdown = active and open

		local backgroundProps = {
			BackgroundTransparency = 1,
			Image = Constants.ROUNDED_BACKGROUND_IMAGE,
			ImageTransparency = 0,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Constants.ROUNDED_FRAME_SLICE,

			Position = UDim2.new(0, 0, 0, 0),
			Size = DEFAULT_SIZE,

			[Roact.Event.MouseEnter] = function()
				if active then
					self:mouseHoverChanged(true)
				end
			end,

			[Roact.Event.MouseLeave] = function()
				if active then
					self:mouseHoverChanged(false)
				end
			end,

			[Roact.Event.Activated] = function()
				if active then
					self:setOpen(true)
				end
			end,
		}

		local dropdownEntries = {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 0),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})
		}
		if showDropdown then
			for _, entry in ipairs(entries) do
				table.insert(dropdownEntries, Roact.createElement(DropdownEntry, {
					Id = entry.Id,
					Title = entry.Title,
					Current = entry.Id == currentId,
					OnClick = function()
						self.props.CurrentChanged(entry.Id)
						self:setOpen(false)
					end
				}))
			end
		end

		if active then
			backgroundProps.ImageColor3 = hovering and theme.dropDown.hover or theme.dropDown.background
		else
			backgroundProps.ImageColor3 = theme.dropDown.disabled
		end

		return Roact.createElement("ImageButton", backgroundProps, {
			Border = Roact.createElement("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Image = Constants.ROUNDED_BORDER_IMAGE,
				ImageColor3 = theme.dropDown.border,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Constants.ROUNDED_FRAME_SLICE,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = PADDING,
					PaddingRight = PADDING,
					PaddingTop = PADDING,
					PaddingBottom = PADDING,
				}),

				Current = Roact.createElement("TextLabel", {
					Visible = active,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = Enum.Font.SourceSans,
					TextColor3 = theme.dropDown.text,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextSize = 22,
					Text = currentTitle or "",
				}),

				Arrow = Roact.createElement("ImageLabel", {
					Visible = active,
					Size = UDim2.new(0, 12, 0, 6),
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(1, 0, 0.5, 0),
					BackgroundTransparency = 1,
					ScaleType = Enum.ScaleType.Fit,
					Image = ARROW_IMAGE,
					ImageColor3 = theme.dropDown.handle,
					Rotation = 180,
				}),

				Outside = showDropdown and Roact.createElement("ImageButton", {
					ZIndex = 2,
					Size = UDim2.new(1000, 0, 1000, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					BackgroundTransparency = 1,
					ImageTransparency = 1,

					[Roact.Event.Activated] = function()
						if active then
							self:setOpen(false)
						end
					end,
				}),
			}),

			Gradient = showDropdown and Roact.createElement("ImageLabel", {
				Size = GRADIENT_SIZE,
				Position = UDim2.new(0, -5, 1, -3),
				BackgroundTransparency = 1,
				Image = GRADIENT_IMAGE,
				ImageColor3 = theme.dropDown.gradient,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = GRADIENT_SLICE,
				SliceScale = 1.5,
				ZIndex = 2,
			}),

			Entries = showDropdown and Roact.createElement(StyledScrollingFrame, {
				Size = ENTRIES_SIZE,
				Position = UDim2.new(0, 0, 1, 0),
				CanvasSize = UDim2.new(0, 0, 0, 38 * #entries),
			}, dropdownEntries),
		})
	end)
end

return Dropdown