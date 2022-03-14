local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local App = Packages.UIBlox.App
local Images = require(App.ImageSet.Images)
local PrimaryContextualButton = require(App.Button.PrimaryContextualButton)
local PrimarySystemButton = require(App.Button.PrimarySystemButton)
local SecondaryButton = require(App.Button.SecondaryButton)
local AlertButton = require(App.Button.AlertButton)

local ButtonOverviewComponent = Roact.PureComponent:extend("ButtonOverviewComponent")

function ButtonOverviewComponent:render()
	local controls = self.props.controls
	local isDisabled = controls.isDisabled
	local isLoading = controls.isLoading
	local isDelayedInput = controls.isDelayedInput
	local enableInputDelayed = controls.enableInputDelayed
	local text = controls.showText and "Title Case" or nil
	local icon = controls.showIcon and Images["icons/common/robux"] or nil
	local inputIcon = controls.showInputIcon and Images["icons/controls/keys/xboxA"] or nil

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		Grid = Roact.createElement("UIGridLayout", {
			CellSize = UDim2.new(0, 150, 0, 50),
			CellPadding = UDim2.fromOffset(50, 50),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		PrimarySystemOverview = Roact.createElement(PrimarySystemButton, {
			size = UDim2.new(0, 144, 0, 48),
			text = text,
			icon = icon,
			inputIcon = inputIcon,
			isDisabled = isDisabled,
			isLoading = isLoading,
			isDelayedInput = isDelayedInput,
			enableInputDelayed = enableInputDelayed,
			onActivated = function()
				print("Primary System Button Clicked!")
			end,
		}),
		SecondaryOverview = Roact.createElement(SecondaryButton, {
			size = UDim2.new(0, 144, 0, 48),
			text = text,
			icon = icon,
			inputIcon = inputIcon,
			isDisabled = isDisabled,
			isLoading = isLoading,
			isDelayedInput = isDelayedInput,
			enableInputDelayed = enableInputDelayed,
			onActivated = function()
				print("Secondary Button Clicked!")
			end,
		}),
		AlertOverview = Roact.createElement(AlertButton, {
			size = UDim2.new(0, 144, 0, 48),
			text = text,
			icon = icon,
			inputIcon = inputIcon,
			isDisabled = isDisabled,
			isLoading = isLoading,
			onActivated = function()
				print("Alert Button Clicked!")
			end,
		}),
	})
end

return {
	controls = {
		isDisabled = false,
		isLoading = false,
		isDelayedInput = false,
		enableInputDelayed = false,
		showIcon = true,
		showText = true,
		showInputIcon = true,
	},
	stories = {
		PrimaryContextualOverview = {
			name = "Primary Contextual Button",
			story = function(props)
				local controls = props.controls
				local isDisabled = controls.isDisabled
				local isLoading = controls.isLoading
				local text = controls.showText and "Title Case" or nil
				local icon = controls.showIcon and Images["icons/common/robux"] or nil

				return Roact.createElement(PrimaryContextualButton, {
					size = UDim2.new(0, 144, 0, 48),
					text = text,
					icon = icon,
					isDisabled = isDisabled,
					isLoading = isLoading,
					onActivated = function()
						print("Primary Contextual Button Clicked!")
					end,
				})
			end,
		},
		PrimarySystemOverview = {
			name = "Primary System Button",
			story = function(props)
				local controls = props.controls
				local isDisabled = controls.isDisabled
				local isLoading = controls.isLoading
				local text = controls.showText and "Title Case" or nil
				local icon = controls.showIcon and Images["icons/common/robux"] or nil

				return Roact.createElement(PrimarySystemButton, {
					size = UDim2.new(0, 144, 0, 48),
					text = text,
					icon = icon,
					isDisabled = isDisabled,
					isLoading = isLoading,
					onActivated = function()
						print("Primary System Button Clicked!")
					end,
				})
			end,
		},
		SecondaryOverview = {
			name = "Secondary Button",
			story = function(props)
				local controls = props.controls
				local isDisabled = controls.isDisabled
				local isLoading = controls.isLoading
				local text = controls.showText and "Title Case" or nil
				local icon = controls.showIcon and Images["icons/common/robux"] or nil

				return Roact.createElement(SecondaryButton, {
					size = UDim2.new(0, 144, 0, 48),
					text = text,
					icon = icon,
					isDisabled = isDisabled,
					isLoading = isLoading,
					onActivated = function()
						print("Secondary Button Clicked!")
					end,
				})
			end,
		},
		AlertOverview = {
			name = "Alert Button",
			story = function(props)
				local controls = props.controls
				local isDisabled = controls.isDisabled
				local isLoading = controls.isLoading
				local text = controls.showText and "Title Case" or nil
				local icon = controls.showIcon and Images["icons/common/robux"] or nil

				return Roact.createElement(AlertButton, {
					size = UDim2.new(0, 144, 0, 48),
					text = text,
					icon = icon,
					isDisabled = isDisabled,
					isLoading = isLoading,
					onActivated = function()
						print("Alert Button Clicked!")
					end,
				})
			end,
		},
	},
}
