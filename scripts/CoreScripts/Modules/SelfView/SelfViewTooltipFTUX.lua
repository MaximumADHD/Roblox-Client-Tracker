--!nolint LocalUnused
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local Promise = require(CorePackages.Packages.Promise)

return function(props)
	local isActive, setActive = React.useState(true)

	local tooltipText = props.fallbackText
	pcall(function()
		tooltipText = RobloxTranslator:FormatByKey(props.translationKey)
	end)

	local tooltipProps = {
		textAlignment = Enum.TextXAlignment.Left,
		bodyText = tooltipText,
	}
	local tooltipOptions = {
		active = isActive,
		guiTarget = CoreGui,
		DisplayOrder = 10,
		preferredOrientation = TooltipOrientation.Left,
	}

	local userInputSignal: RBXScriptConnection?
	local fadeOut = function()
		setActive(false)
		if userInputSignal then
			userInputSignal:Disconnect()
			userInputSignal = nil
		end
	end

	-- We want the tooltip to fade away automatically after the lifetime is met or on user click/touch
	userInputSignal = UserInputService.InputBegan:Connect(function(input)
		local inputType = input.UserInputType
		if inputType == Enum.UserInputType.MouseButton1 or inputType == Enum.UserInputType.Touch then
			fadeOut()
		end
	end)
	Promise.delay(props.tooltipLifetime):andThen(function()
		fadeOut()
	end)

	return withTooltip(tooltipProps, tooltipOptions, function(triggerPointChanged)
		local onChange = function(rbx)
			triggerPointChanged(rbx)
		end
		return React.createElement("Frame", {
			Visible = false,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			[React.Change.AbsoluteSize] = onChange,
			[React.Change.AbsolutePosition] = onChange,
		})
	end)
end
