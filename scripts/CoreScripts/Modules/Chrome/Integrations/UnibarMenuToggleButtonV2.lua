local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images

local chromeService = require(script.Parent.Parent.Service)
local RedVoiceDot = require(script.Parent.RedVoiceDot)

function ToggleMenuButton(props)
	local toggleIconTransition = props.toggleTransition
	local style = useStyle()

	local iconColor = style.Theme.IconEmphasis

	return React.createElement("Frame", {
		Size = UDim2.new(0, 36, 0, 36),
		BorderSizePixel = 0,
		BackgroundColor3 = style.Theme.BackgroundOnHover.Color,
		BackgroundTransparency = toggleIconTransition:map(function(value): any
			return 1 - ((1 - style.Theme.BackgroundOnHover.Transparency) * value)
		end),
	}, {
		React.createElement("UICorner", {
			Name = "Corner",
			CornerRadius = UDim.new(1, 0),
		}) :: any,
		React.createElement(ImageSetLabel, {
			Name = "Cube",
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundTransparency = 1,
			Image = Images["icons/menu/AR_cube"],
			Size = toggleIconTransition:map(function(value: any): any
				value = 1 - value
				return UDim2.new(0, 36 * value, 0, 36 * value)
			end),
			ImageColor3 = style.Theme.IconEmphasis.Color,
			ImageTransparency = style.Theme.IconEmphasis.Transparency,
		}) :: any,
		React.createElement(ImageSetLabel, {
			Name = "CubeFrame",
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundTransparency = 1,
			Image = Images["icons/menu/AR_frame"],
			Size = toggleIconTransition:map(function(value: any): any
				return UDim2.new(0, 36 + 10 * value, 0, 36 + 10 * value)
			end),
			ImageTransparency = toggleIconTransition:map(function(value: any): any
				return 1 - ((1 - style.Theme.IconEmphasis.Transparency) * (1 - value))
			end),
			ImageColor3 = style.Theme.IconEmphasis.Color,
		}) :: any,
		React.createElement("Frame", {
			Name = "X1",
			Position = toggleIconTransition:map(function(value): any
				return UDim2.new(0.5, 0, 0.5, 0)
			end),
			AnchorPoint = Vector2.new(0.5, 0),
			Size = toggleIconTransition:map(function(value: any): any
				return UDim2.new(0, 16 * value, 0, 2)
			end),
			BorderSizePixel = 0,
			BackgroundColor3 = iconColor.Color,
			BackgroundTransparency = iconColor.Transparency,
			Rotation = 45,
		}) :: any,
		React.createElement("Frame", {
			Name = "X2",
			Position = toggleIconTransition:map(function(value): any
				return UDim2.new(0.5, 0, 0.5, 0)
			end),
			AnchorPoint = Vector2.new(0.5, 0),
			Size = toggleIconTransition:map(function(value: any): any
				return UDim2.new(0, 16 * value, 0, 2)
			end),
			BorderSizePixel = 0,
			BackgroundColor3 = iconColor.Color,
			BackgroundTransparency = iconColor.Transparency,
			Rotation = -45,
		}) :: any,
		React.createElement("Frame", {
			Name = "RedVoiceDotVisibleContiner",
			-- If MicToggle isn't always visible in Unibar we'll need to make this more advanced
			-- ie. a signal from ChromeService to say if MicToggle is visible
			Visible = toggleIconTransition:map(function(value: any): any
				return value < 0.5
			end),
			Size = UDim2.new(1, 0, 1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
		}, {
			React.createElement(RedVoiceDot, {
				position = UDim2.new(1, -7, 1, -7),
			}),
		}) :: any,
	})
end

return chromeService:register({
	id = "chrome_toggle",
	label = "CoreScripts.TopBar.MenuToggle",
	hideNotificationCountWhileOpen = true,
	flashNotificationSource = true,
	activated = function()
		chromeService:toggleOpen()
	end,
	components = {
		Icon = function(props)
			return React.createElement(ToggleMenuButton, props)
		end,
	},
	notification = chromeService:totalNotifications(),
	initialAvailability = chromeService.AvailabilitySignal.Pinned,
})
