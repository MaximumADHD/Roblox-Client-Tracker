local paths = require(script.Parent.Parent.Paths)

local RadioButtonSetPanel = paths.Roact.Component:extend("ComponentRadioButtonSetPanel")

local createRadioButtons = nil

function RadioButtonSetPanel:render()
	local isVisible = nil == self.props.IsVisible and true or self.props.IsVisible
	if not isVisible then
		return paths.UtilityFunctionsCreate.noOptFrame()
	end

	return paths.Roact.createElement(paths.StudioWidgetRadioButtonSet, {
		Title = self.props.Title,
		Buttons = self.props.Buttons,
		Enabled = self.props.Enabled,
		LayoutOrder = self.props.LayoutOrder,
		Selected = self.props.Selected,
		SubDescription = self.props.SubDescription,
		SelectionChanged = self.props.SelectionChanged,
		Mouse = self.props.Mouse
	})
end

createRadioButtons = function(self, tableToPopulate, layoutOrder)
	for index, option in ipairs(self.props.RadioButtonOptions) do
		tableToPopulate[option.Text .. index] = paths.Roact.createElement(paths.ComponentRadioButtonRow, {
				ThemeData = self.props.ThemeData,
				LayoutOrder = layoutOrder:getNextOrder(),
				Text = option.Text,
				IsSelected = option.IsSelected,
				IsEnabled = self.props.IsEnabled,

				setValue = function(val)
					if val and self.props.setValue then
						self.props.setValue(option.Id)
					end
				end
			}
		)
	end
end

return RadioButtonSetPanel