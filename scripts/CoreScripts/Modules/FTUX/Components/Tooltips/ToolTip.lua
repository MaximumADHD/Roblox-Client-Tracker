local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.UIBlox)
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local React = require(CorePackages.Packages.React)

type Prop = {
	controllerPart: BasePart,
	tooltipText: string,
}
local function Tooltip(props: Prop)
	local part = props.controllerPart
	local GUI_TARGET = part:WaitForChild("BillboardGui")

	return withTooltip({
		bodyText = props.tooltipText,
	}, {
		preferredOrientation = TooltipOrientation.Bottom,
		guiTarget = GUI_TARGET,
		DisplayOrder = 0,
		triggerPointName = "TriggerPart",
		active = true,
		DEBUG_useTargetDirectly = true,
	}, function(triggerPointChanged)
		return React.createElement("BillboardGui", {
			Parent = part,
			Adornee = part,
			AlwaysOnTop = true,
			Active = false,
			Size = UDim2.new(0.5, 0, 0.5, 0),
		}, {
			TriggerBody = React.createElement("Frame", {
				Transparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0.49, 0, 1.02, 0),
				[React.Change.AbsoluteSize] = triggerPointChanged,
				[React.Change.AbsolutePosition] = triggerPointChanged,
			}),
		})
	end)
end

return Tooltip
