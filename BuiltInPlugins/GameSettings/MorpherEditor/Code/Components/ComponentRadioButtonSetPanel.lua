local paths = require(script.Parent.Parent.Paths)
local fastFlags = require(script.Parent.Parent.FastFlags)

local RadioButtonSetPanel = paths.Roact.Component:extend("ComponentRadioButtonSetPanel")

local createRadioButtons = nil

function RadioButtonSetPanel:render()
	local isVisible = nil == self.props.IsVisible and true or self.props.IsVisible
	if not isVisible then
		return paths.UtilityFunctionsCreate.noOptFrame()
	end

	if fastFlags.isMorphingPanelWidgetsStandardizationOn() then
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
	else
		local layoutOrder = paths.UtilityClassLayoutOrder.new()
		local children = {         
			ComponentTitleBar = paths.Roact.createElement(paths.ComponentTitleBar, {
					ThemeData = self.props.ThemeData,
					LayoutOrder = layoutOrder:getNextOrder(),
					IsEnabled = self.props.IsEnabled,
					Text = self.props.TitleText
				}
			)
		}

		createRadioButtons(self, children, layoutOrder)

		local numChildPanels = paths.UtilityFunctionsTable.countDictionaryKeys(children)
		children.UIListLayoutVertical = paths.UtilityFunctionsCreate.verticalFillUIListLayout()

		return paths.Roact.createElement("Frame", {
				LayoutOrder = self.props.LayoutOrder,
				Size = UDim2.new(1, 0, 0, paths.ConstantLayout.RowHeight*numChildPanels),
				BorderSizePixel = 0,
				BackgroundTransparency = 1
			}, 
			children
		)
	end
end

createRadioButtons = function(self, tableToPopulate, layoutOrder)
	for index, option in ipairs(self.props.RadioButtonOptions) do
		tableToPopulate[option.Text .. index] = paths.Roact.createElement(paths.ComponentRadioButtonRow, {
				ThemeData = self.props.ThemeData,
				LayoutOrder = layoutOrder:getNextOrder(),
				Text = option.Text,
				IsSelected = option.IsSelected,
				IsEnabled = (function() if fastFlags.isCheckboxDisabledStateFixFlagOn() then return self.props.IsEnabled else return nil end end)(),

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