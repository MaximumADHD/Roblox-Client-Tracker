--[[
	A dropdown menu associated with a LiveSearchBar that shows a number of LiveSearchEntries
	as the search bar updates. Selecting a LiveSearchEntry should notify the LiveSearchBar.

	Props:
		UDim2 Position
		UDim2 Size
		number LayoutOrder = 0
		table Items = An array of tables of items to display.
			{{Name = "myName", Thumbnail = "rbxassetid://#####"}}
		int MaxHeight = The maximum vertical size of the dropdown, in pixels.

		function onCloseDropdown = A callback for when the dropdown is closed.
		function onItemClicked(string item) = A callback for when an item is clicked.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local withModal = ContextHelper.withModal
local withTheme = ContextHelper.withTheme

local StyledScrollingFrame = require(Plugin.Core.Components.StyledScrollingFrame)
local RoundFrame = require(Plugin.Core.Components.RoundFrame)

local LiveSearchEntry = require(Plugin.Core.Components.SearchOptions.LiveSearchEntry)

local FFlagToolboxFixCreatorSearchResults = game:GetFastFlag("ToolboxFixCreatorSearchResults")

local LiveSearchDropdown = Roact.PureComponent:extend("LiveSearchDropdown")

function LiveSearchDropdown:init(props)
	self.closeDropdown = function()
		if self.props.closeDropdown then
			self.props.closeDropdown()
		end
	end

	self.onItemClicked = function(item)
		if self.props.onItemClicked then
			self.props.onItemClicked(item)
		end
	end
end

function LiveSearchDropdown:addEntry(entries, index, data, height)
	if not data.Name and DebugFlags.shouldDebugWarnings() then
		warn(("Index %d in DropdownMenu doesn't have a 'name' member"):format(data))
	end

	local itemName = data.Name

	entries[itemName] = Roact.createElement(LiveSearchEntry, {
		Name = data.Name,
		Thumbnail = data.Thumbnail,
		LayoutOrder = index,
		closeDropdown = self.closeDropdown,
		onClick = function()
			if FFlagToolboxFixCreatorSearchResults then
				self.onItemClicked(data)
			else
				self.onItemClicked(itemName)
			end
		end,
	})

	return height + Constants.SEARCH_ENTRY_HEIGHT
end

function LiveSearchDropdown:defaultLayout(items)
	local entries = {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder
		})
	}

	local index = 0
	local height = 0

	if items then
		for _, data in ipairs(items) do
			height = self:addEntry(entries, index, data, height)
			index = index + 1
		end
	end

	return entries, height
end

function LiveSearchDropdown:render()
	return withTheme(function(theme)
		return withModal(function(modalTarget)
			local position = self.props.Position or UDim2.new()
			local size = self.props.Size
			local layoutOrder = self.props.LayoutOrder or 0
			local items = self.props.Items or {}

			local maxHeight = self.props.MaxHeight or Constants.SEARCH_ENTRY_HEIGHT * 5

			local dropdownTheme = theme.dropdownMenu

			local dropdownFrame = {}

			local entries, height = self:defaultLayout(items)

			local width = size.X.Offset
			local top = position.Y.Offset
			local left = position.X.Offset

			dropdownFrame.StyledScrollingFrame = Roact.createElement(StyledScrollingFrame, {
				Position = UDim2.new(0, left, 0, top),
				Size = UDim2.new(0, width, 0, math.min(height, maxHeight)),
				CanvasSize = UDim2.new(0, 0, 0, height),
				ZIndex = 1,
			}, entries)

			dropdownFrame.DropDownContainer = Roact.createElement(RoundFrame, {
				Position = UDim2.new(0, left, 0, top),
				Size = UDim2.new(0, width, 0, math.min(height, maxHeight)),
				BackgroundTransparency = 1,
				ZIndex = 2,
				BorderColor3 = dropdownTheme.dropdownFrame.borderColor,
			})

			return Roact.createElement("Frame", {
				Position = position,
				Size = size,
				BackgroundTransparency = 1,
				LayoutOrder = layoutOrder
			}, {
				Portal = modalTarget and Roact.createElement(Roact.Portal, {
					target = modalTarget,
				}, {
					ClickEventDetectFrame = Roact.createElement("ImageButton", {
						ZIndex = 10,
						Position = UDim2.new(0, 0, 0, 0),
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
						AutoButtonColor = false,

						[Roact.Event.MouseButton1Click] = self.closeDropdown,
					}, dropdownFrame),
				}),
			})
		end)
	end)
end

return LiveSearchDropdown
