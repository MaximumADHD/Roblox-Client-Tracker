--[[
	A set of an arbitrary number of CheckBoxes.

	Props:
		string Title = The title to place to the left of this CheckBoxSet.
		table Boxes = A collection of props for all CheckBoxes to add.
		function EntryClicked(box) = A callback for when a CheckBox was clicked.
		int LayoutOrder = The order this CheckBoxSet will sort to when placed in a UIListLayout.
		string ErrorMessage = An error message to display on this CheckBoxSet.
]]
local FFlagUpdatePublishPlacePluginToDevFrameworkContext = game:GetFastFlag("UpdatePublishPlacePluginToDevFrameworkContext")
local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)
local UILibrary = require(Plugin.Packages.UILibrary)

local Constants = require(Plugin.Src.Resources.Constants)

-- TODO mwang remove with FFlagUpdatePublishPlacePluginToDevFrameworkContext
local Theming = require(Plugin.Src.ContextServices.Theming)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

local CheckBox = UILibrary.Component.CheckBox
local TitledFrame = UILibrary.Component.TitledFrame

local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")

local CHECKBOX_SIZE = 20
local CHECKBOX_PADDING = 8

local CheckBoxSet = Roact.PureComponent:extend("CheckBoxSet")

function CheckBoxSet:render()
	if FFlagUpdatePublishPlacePluginToDevFrameworkContext then
		local props = self.props
		local theme = props.Theme:get("Plugin")

		local title = props.Title
		local layoutOrder = props.LayoutOrder or 1
		local boxes = props.Boxes

		local enabled = props.Enabled == nil and true or props.Enabled
		local entryClicked = props.EntryClicked
		local errorMessage = props.ErrorMessage

		assert(type(boxes) == "table", "CheckBoxSet.Boxes must be a table")

		local children = {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, CHECKBOX_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,
			})
		}

		for i, box in ipairs(boxes) do
			table.insert(children, Roact.createElement(CheckBox, {
				Title = box.Title,
				Id = FFlagLuobuDevPublishLua and box.Id or nil,
				Height = CHECKBOX_SIZE,
				TextSize = Constants.TEXT_SIZE,
				Selected = box.Selected ~= nil and box.Selected,
				Enabled = enabled,
				LayoutOrder = i,
				OnActivated = function()
					entryClicked(box)
				end,
			}))
		end

		if FFlagLuobuDevPublishLua then
			if props[Roact.Children] then
				children = Cryo.Dictionary.join(props[Roact.Children], children)
			end
		else
			children = Cryo.Dictionary.join(props[Roact.Children], children)
		end

		if errorMessage then
			children.Error = Roact.createElement("TextLabel", {
				LayoutOrder = #boxes + 1,
				Size = UDim2.new(1, 0, 0, CHECKBOX_SIZE),
				BackgroundTransparency = 1,
				Text = errorMessage,
				TextSize = 16,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				Font = theme.checkboxset.font,
				TextColor3 = theme.checkboxset.error,
			})
		end

		local maxHeight = #boxes * (CHECKBOX_SIZE + CHECKBOX_PADDING)
		if FFlagLuobuDevPublishLua then
			if props.MaxHeight then
				maxHeight += props.MaxHeight
			end
		end

		return Roact.createElement(TitledFrame, {
			Title = title,
			MaxHeight = maxHeight,
			LayoutOrder = layoutOrder,
			TextSize = Constants.TEXT_SIZE,
			Tooltip = FFlagLuobuDevPublishLua and props.Tooltip or nil,
		}, children)
	else
		return Theming.withTheme(function(theme)
			local props = self.props

			local title = props.Title
			local layoutOrder = props.LayoutOrder or 1
			local boxes = props.Boxes

			local enabled = props.Enabled == nil and true or props.Enabled
			local entryClicked = props.EntryClicked
			local errorMessage = props.ErrorMessage

			assert(type(boxes) == "table", "CheckBoxSet.Boxes must be a table")

			local children = {
				Layout = Roact.createElement("UIListLayout", {
					Padding = UDim.new(0, CHECKBOX_PADDING),
					SortOrder = Enum.SortOrder.LayoutOrder,
				})
			}

			for i, box in ipairs(boxes) do
				table.insert(children, Roact.createElement(CheckBox, {
					Title = box.Title,
					Height = CHECKBOX_SIZE,
					TextSize = Constants.TEXT_SIZE,
					Selected = box.Selected ~= nil and box.Selected,
					Enabled = enabled,
					LayoutOrder = i,
					OnActivated = function()
						entryClicked(box)
					end,
				}))
			end

			children = Cryo.Dictionary.join(props[Roact.Children], children)

			if errorMessage then
				children.Error = Roact.createElement("TextLabel", {
					LayoutOrder = #boxes + 1,
					Size = UDim2.new(1, 0, 0, CHECKBOX_SIZE),
					BackgroundTransparency = 1,
					Text = errorMessage,
					TextSize = 16,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
					Font = theme.checkboxset.font,
					TextColor3 = theme.checkboxset.error,
				})
			end

			local maxHeight = #boxes * (CHECKBOX_SIZE + CHECKBOX_PADDING)

			return Roact.createElement(TitledFrame, {
				Title = title,
				MaxHeight = maxHeight,
				LayoutOrder = layoutOrder,
				TextSize = Constants.TEXT_SIZE,
			}, children)
		end)
	end
end

if FFlagUpdatePublishPlacePluginToDevFrameworkContext then
	ContextServices.mapToProps(CheckBoxSet, {
		Theme = ContextServices.Theme,
	})
end


return CheckBoxSet
