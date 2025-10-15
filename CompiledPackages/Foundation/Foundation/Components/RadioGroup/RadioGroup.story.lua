local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Dash = require(Packages.Dash)

local RadioGroup = require(Foundation.Components.RadioGroup)
local View = require(Foundation.Components.View)
local Image = require(Foundation.Components.Image)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InputSize = require(Foundation.Enums.InputSize)

local values = { "A", "B", "C", "D", "E" }

local function BasicStory(props)
	local controls = props.controls
	local optionLabel: string = controls.optionLabel
	local items = {}
	Dash.forEach(values, function(value)
		table.insert(
			items,
			React.createElement(RadioGroup.Item, {
				value = value,
				label = if #optionLabel > 0 then `{optionLabel} {value}` else "",
				isDisabled = value == "D",
				size = controls.size,
			})
		)
	end)

	return React.createElement(RadioGroup.Root, {
		onValueChanged = function(value: string)
			print("Checking value", value)
		end,
	}, items)
end

local function CustomSelectionStory()
	local selectedValue, setSelectedValue = React.useState(nil :: string?)
	local tokens = useTokens()

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, tokens.Radius.Medium),
			offset = tokens.Size.Size_150,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens })

	local function createSelectionCard(value: string, imageName: string, label: string)
		return React.createElement(View, {
			tag = "auto-xy col gap-small align-x-center padding-medium",
		}, {
			ImageContainer = React.createElement(View, {
				cursor = cursor,
				onActivated = function()
					setSelectedValue(value)
					print("Selected card:", value)
				end,
				tag = "radius-medium bg-surface-100 size-2000-2000",
			}, {
				Image = React.createElement(Image, {
					Image = imageName,
					Size = UDim2.fromScale(0.8, 0.8),
					Position = UDim2.fromScale(0.1, 0.1),
				}),
			}),
			RadioButton = React.createElement(RadioGroup.Item, {
				value = value,
				label = label,
			}),
		})
	end

	return React.createElement(RadioGroup.Root, {
		value = selectedValue,
		onValueChanged = setSelectedValue,
		-- Make the group non-selectable since individual items handle their own selection
		Selectable = false,
	}, {
		Container = React.createElement(View, {
			tag = "auto-xy row gap-large wrap",
		}, {
			CardA = createSelectionCard("A", "icons/graphic/success_xlarge", "Success"),
			CardB = createSelectionCard("B", "icons/graphic/error_xlarge", "Error"),
			CardC = createSelectionCard("C", "icons/graphic/newclothing_xlarge", "Info"),
		}),
	})
end

return {
	summary = "Radio Group component",
	stories = {
		{
			name = "Basic",
			story = BasicStory :: any,
		},
		{
			name = "Custom Selection",
			summary = "Select images instead of radio buttons",
			story = CustomSelectionStory,
		},
	},
	controls = {
		optionLabel = "Option",
		size = Dash.values(InputSize),
	},
}
