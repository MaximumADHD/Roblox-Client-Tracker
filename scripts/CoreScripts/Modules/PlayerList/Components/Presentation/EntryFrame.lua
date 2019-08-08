local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local EntryFrame = Roact.PureComponent:extend("EntryFrame")

function EntryFrame:init()
	self.state  = {
		isGamepadSelected = false,
	}
end

function EntryFrame:render()
	return WithLayoutValues(function(layoutValues)
		local backgroundTransparency = layoutValues.BackgroundTransparency
		local backgroundColor3 = layoutValues.BackgroundColor
		if self.props.hasOpenDropDown then
			backgroundColor3 = layoutValues.SelectedEntryColor
		elseif self.props.isTitleFrame then
			backgroundTransparency = layoutValues.TitleBackgroundTransparency
			backgroundColor3 = layoutValues.TitleBackgroundColor
		elseif self.state.isGamepadSelected then
			backgroundColor3 = layoutValues.ButtonSelectedColor
		elseif self.props.teamColor ~= nil then
			backgroundColor3 = self.props.teamColor
		end

		return Roact.createElement("TextButton", {
			Size = UDim2.new(0, self.props.sizeX, 0, self.props.sizeY),
			BackgroundTransparency = backgroundTransparency,
			BackgroundColor3 = backgroundColor3,
			BorderSizePixel = 0,
			AutoButtonColor = false,
			Text = "",
			AutoLocalize = false,
			Selectable = self.props.teamColor == nil, -- dont allow gamepad selection of team frames
			Active = self.props.teamColor == nil,

			[Roact.Event.Activated] = self.props.onActivated,

			[Roact.Event.SelectionGained] = function()
				self:setState({
					isGamepadSelected = true,
				})
				self.props.onSelectionGained()
			end,

			[Roact.Event.SelectionLost] = function()
				self:setState({
					isGamepadSelected = false,
				})
				self.props.onSelectionLost()
			end,

			[Roact.Ref] = self.props[Roact.Ref],
		}, self.props[Roact.Children])
	end)
end

return EntryFrame