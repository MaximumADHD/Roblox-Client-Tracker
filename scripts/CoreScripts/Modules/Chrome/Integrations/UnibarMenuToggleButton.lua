local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
--local useStyle = UIBlox.Core.Style.useStyle

local ChromeService = require(script.Parent.Parent.Service)

local burgerSpacing = 0.17

function ToggleMenuButton(props)
	local toggleIconTransition = props.toggleTransition

	return React.createElement("Frame", {
		Size = UDim2.new(0, 36, 0, 36),
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.new(0, 0, 0),
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(1, 0),
		}),
		TopLine = React.createElement("Frame", {
			Position = toggleIconTransition:map(function(value): any
				return UDim2.new(0.5, 0, 0.5 - burgerSpacing * (1 - value), 0)
			end),
			AnchorPoint = Vector2.new(0.5, 0),
			Size = UDim2.new(0, 16, 0, 2),
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.new(1, 1, 1),
			Rotation = toggleIconTransition:map(function(value): any
				return 45 * value
			end),
		}),
		CenterLine = React.createElement("Frame", {
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0),
			Size = UDim2.new(0, 16, 0, 2),
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.new(1, 1, 1),
			BackgroundTransparency = toggleIconTransition,
		}),
		BottomLine = React.createElement("Frame", {
			Position = toggleIconTransition:map(function(value): any
				return UDim2.new(0.5, 0, 0.5 + burgerSpacing * (1 - value), 0)
			end),
			AnchorPoint = Vector2.new(0.5, 0),
			Size = UDim2.new(0, 16, 0, 2),
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.new(1, 1, 1),
			Rotation = toggleIconTransition:map(function(value)
				return -45 * value
			end),
		}),
	})
end

return ChromeService:register({
	id = "chrome_toggle",
	label = "Open",
	hideNotificationCountWhileOpen = true,
	activated = function()
		ChromeService:toggleOpen()
	end,
	components = {
		Icon = function(props)
			return ToggleMenuButton(props)
		end,
	},
	notification = ChromeService:totalNotifications(),
	initialAvailability = ChromeService.AvailabilitySignal.Pinned,
})
