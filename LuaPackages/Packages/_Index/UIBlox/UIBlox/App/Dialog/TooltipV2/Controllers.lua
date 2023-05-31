local Tooltip = script.Parent
local Dialog = Tooltip.Parent
local App = Dialog.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)

local Types = require(Tooltip.Types)
local TooltipController = require(Tooltip.TooltipController)
local HoverController = require(Tooltip.HoverController)

local function createControllerFunction(controller)
	return function(tooltipProps, options, renderFn)
		local controllerProps = LuauPolyfill.Object.assign({}, options, {
			tooltipProps = tooltipProps,
			renderTriggerPoint = renderFn,
		})

		return React.createElement(controller, controllerProps)
	end
end

type ControllerWrapper<O, R> = (
	tooltipProps: Types.TooltipPublicProps,
	options: O,
	renderTriggerPoint: R
) -> React.ReactElement

-- for some reason luau struggles to infer the types
return {
	withTooltip = createControllerFunction(TooltipController :: any) :: ControllerWrapper<Types.TooltipControllerOptions, Types.RenderFn>,

	withHoverTooltip = createControllerFunction(HoverController :: any) :: ControllerWrapper<Types.HoverControllerOptions, Types.HoverRenderFn>,
}
