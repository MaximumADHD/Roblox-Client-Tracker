local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Packages.Cryo)
local React = require(CorePackages.Packages.React)

local function AudioDeviceInputDebugger(props: {
	instances: { [AudioDeviceInput]: boolean },
	mutedPlayers: { [number]: boolean },
})
	local show, setShow = React.useState(true)
	local instances = props.instances
	local mutedPlayers = props.mutedPlayers
	local height = 25
	local margin = 3
	local transparency = 0.2
	local listItems = Cryo.List.map(Cryo.Dictionary.keys(instances), function(device: AudioDeviceInput, i: number)
		local isActive = device.Active
		local playerName = device.Player and device.Player.Name or "(no player)"
		local active = isActive and "active" or "inactive"
		local isMuted = device.Player and mutedPlayers[device.Player.UserId] and "muted" or "unmuted"
		local isMutedByLocalUser = device.MutedByLocalUser and "mutedByLocalUser" or "not-mutedByLocalUser"
		return React.createElement("TextLabel", {
			Text = string.format("<b>%s</b>: %s, %s, %s", playerName, active, isMuted, isMutedByLocalUser),

			Size = UDim2.fromOffset(20, height),
			RichText = true,
			AutomaticSize = Enum.AutomaticSize.X,
			LayoutOrder = i,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			Font = Enum.Font.SourceSans,
			TextSize = 18,
		})
	end)
	listItems["Title"] = React.createElement("TextButton", {
		Text = "<b>AudioDeviceInputs</b>",
		[React.Event.Activated] = function()
			setShow(not show)
		end,
		TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
		TextStrokeTransparency = 0.5,
		Size = UDim2.fromOffset(20, height),
		RichText = true,
		AutomaticSize = Enum.AutomaticSize.X,
		LayoutOrder = 0,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		Font = Enum.Font.SourceSansBold,
		TextSize = 20,
	})
	listItems["UIListLayout"] = React.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, margin),
	})
	listItems["UIPadding"] = React.createElement("UIPadding", {
		PaddingTop = UDim.new(0, margin),
		PaddingBottom = UDim.new(0, margin),
		PaddingLeft = UDim.new(0, margin),
		PaddingRight = UDim.new(0, margin),
	})
	return React.createElement(
		"ScreenGui",
		{
			AutoLocalize = false,
			DisplayOrder = 100,
			IgnoreGuiInset = true,
			OnTopOfCoreBlur = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		},
		React.createElement("ScrollingFrame", {
			Size = UDim2.new(1 / 3, 0, if show then 1 / 3 else 0, if show then 0 else height),
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
			Active = true,
			AutomaticCanvasSize = Enum.AutomaticSize.XY,
			BackgroundColor3 = Color3.fromRGB(50, 50, 50),
			BorderSizePixel = 0,
			CanvasSize = UDim2.new(0, 0, 0, (height + margin) * #Cryo.Dictionary.keys(instances)),
			ScrollBarThickness = 6,
			BackgroundTransparency = if show then transparency else 1,
		}, listItems)
	)
end

return AudioDeviceInputDebugger
