local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Components = script.Parent.Parent.Parent.Components
local CellLabel = require(Components.CellLabel)
local BannerButton = require(Components.BannerButton)

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding
local HEADER_HEIGHT = 20
local HEADER_LABEL_INDENT = 20

local CollapsibleSection = Roact.PureComponent:extend("CollapsibleSection")

function CollapsibleSection:init()
	self.state = {
		expanded = if self.props.defaultExpanded == nil then true else self.props.defaultExpanded,
	}

	self.onButtonPress = function()
		self:setState(function(oldState)
			return { expanded = not oldState.expanded }
		end)
	end
end

function CollapsibleSection:render()
	local title = self.props.title
	local layoutOrder = self.props.layoutOrder
	local expanded = self.state.expanded
	local hideLines = self.props.hideLines

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, PADDING),
		}),

		Header = Roact.createElement(BannerButton, {
			size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
			isExpanded = expanded,
			isExpandable = true,
			hideLines = hideLines,
			onButtonPress = self.onButtonPress,
			layoutOrder = 1,
		}, {
			Label = Roact.createElement(CellLabel, {
				text = title,
				bold = true,
				size = UDim2.new(1, -HEADER_LABEL_INDENT, 1, 0),
				pos = UDim2.new(0, HEADER_LABEL_INDENT, 0, 0),
			}),
		}),

		Content = expanded and Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, PADDING),
			}),
			Children = Roact.createFragment(self.props[Roact.Children] or {}),
		}) or nil,
	})
end

return CollapsibleSection
