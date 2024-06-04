local Tooltip = script.Parent
local Dialog = Tooltip.Parent
local App = Dialog.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)

local Types = require(Tooltip.Types)
local Consts = require(Tooltip.Constants)
local TooltipController = require(Tooltip.TooltipController)
local ControlState = require(UIBlox.Core.Control.Enum.ControlState)

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local function HoverController(props: Types.HoverControllerProps)
	local active, setActive = React.useState(false)
	local lastEndHover = React.useRef(tick())

	React.useEffect(function()
		return function()
			-- unmounting should automatically end hover
			lastEndHover.current = tick()
		end
	end, if UIBloxConfig.enableTooltipV2HoverControllerReRenderFix then {} else nil)

	local delayTime = props.delayTime or Consts.DEFAULT_DELAY_TIME

	local onStateChanged = React.useCallback(function(oldState, newState)
		if props.disabled then
			setActive(false)
			return
		end
		if
			newState == ControlState.Hover
			or (UIBloxConfig.supportControlStateSelectedForTooltipHover and newState == ControlState.Selected)
		then
			local prevTick = lastEndHover.current
			delay(delayTime, function()
				-- check that we have not lost hover since the change was initiated
				if lastEndHover.current == prevTick then
					setActive(true)
				end
			end)
		elseif
			oldState == ControlState.Hover
			or (UIBloxConfig.supportControlStateSelectedForTooltipHover and oldState == ControlState.Selected)
		then
			lastEndHover.current = tick()
			setActive(false)
		end
	end, { delayTime })

	local controllerProps = LuauPolyfill.Object.assign({}, props, {
		delayTime = LuauPolyfill.Object.None,
		active = active,
		renderTriggerPoint = function(triggerPointChanged)
			return props.renderTriggerPoint(triggerPointChanged, onStateChanged)
		end,
	})

	return React.createElement(TooltipController, controllerProps)
end

return HoverController
