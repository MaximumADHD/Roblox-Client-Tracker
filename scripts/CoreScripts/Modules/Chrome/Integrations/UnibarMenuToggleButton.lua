local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local chromeService = require(script.Parent.Parent.Service)
local RedVoiceDot = require(script.Parent.RedVoiceDot)

local burgerSpacing = 0.17

function ToggleMenuButton(props)
	local toggleIconTransition = props.toggleTransition
	local style = useStyle()

	local iconColor = style.Theme.IconEmphasis

	return React.createElement("Frame", {
		Size = UDim2.new(0, 36, 0, 36),
		BorderSizePixel = 0,
		BackgroundColor3 = style.Theme.BackgroundMuted.Color,
		BackgroundTransparency = style.Theme.BackgroundMuted.Transparency,
	}, {
		React.createElement("UICorner", {
			Name = "Corner",
			CornerRadius = UDim.new(1, 0),
		}) :: any,
		React.createElement("Frame", {
			Name = "TopLine",
			Position = toggleIconTransition:map(function(value): any
				return UDim2.new(0.5, 0, 0.5 - burgerSpacing * (1 - value), 0)
			end),
			AnchorPoint = Vector2.new(0.5, 0),
			Size = UDim2.new(0, 16, 0, 2),
			BorderSizePixel = 0,
			BackgroundColor3 = iconColor.Color,
			BackgroundTransparency = iconColor.Transparency,
			Rotation = toggleIconTransition:map(function(value): any
				return 45 * value
			end),
		}) :: any,
		React.createElement("Frame", {
			Name = "CenterLine",
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0),
			Size = UDim2.new(0, 16, 0, 2),
			BorderSizePixel = 0,
			BackgroundColor3 = iconColor.Color,
			BackgroundTransparency = toggleIconTransition:map(function(value)
				return 1 - ((1 - iconColor.Transparency) * (1 - value))
			end),
		}) :: any,
		React.createElement("Frame", {
			Name = "BottomLine",
			Position = toggleIconTransition:map(function(value): any
				return UDim2.new(0.5, 0, 0.5 + burgerSpacing * (1 - value), 0)
			end),
			AnchorPoint = Vector2.new(0.5, 0),
			Size = UDim2.new(0, 16, 0, 2),
			BorderSizePixel = 0,
			BackgroundColor3 = iconColor.Color,
			BackgroundTransparency = iconColor.Transparency,
			Rotation = toggleIconTransition:map(function(value)
				return -45 * value
			end),
		}) :: any,
		React.createElement("Frame", {
			Name = "RedVoiceDotVisibleContiner",
			-- If MicToggle isn't always visible in Unibar we'll need to make this more advanced
			-- ie. a signal from ChromeService to say if MicToggle is visible
			Visible = toggleIconTransition:map(function(value): any
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
	activated = function()
		chromeService:toggleOpen()
	end,
	components = {
		Icon = function(props)
			return ToggleMenuButton(props)
		end,
	},
	notification = chromeService:totalNotifications(),
	initialAvailability = chromeService.AvailabilitySignal.Pinned,
})
