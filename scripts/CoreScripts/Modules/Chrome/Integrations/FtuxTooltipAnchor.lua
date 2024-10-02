local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation

local FtuxTooltipAnchor = React.forwardRef(function(props, ref)
	return withTooltip({
		ref = ref,
		headerText = props.headerText,
		bodyText = props.bodyText,
	}, {
		DisplayOrder = 10,
		active = props.shouldShowTooltip,
		guiTarget = CoreGui,

		preferredOrientation = TooltipOrientation.Bottom,
	}, function(triggerPointChanged)
		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			[React.Change.AbsoluteSize] = triggerPointChanged,
			[React.Change.AbsolutePosition] = triggerPointChanged,
		})
	end)
end)

return FtuxTooltipAnchor
