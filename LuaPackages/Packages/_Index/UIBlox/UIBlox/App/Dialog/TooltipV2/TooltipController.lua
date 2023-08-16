local TooltipPackage = script.Parent
local Dialog = TooltipPackage.Parent
local App = Dialog.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local RoactPortal = require(Packages.Roact).Portal
local LuauPolyfill = require(Packages.LuauPolyfill)

local Types = require(TooltipPackage.Types)
local Consts = require(TooltipPackage.Constants)
local withAnimation = require(UIBlox.Core.Animation.withAnimation)
local Tooltip = require(TooltipPackage.TooltipCallout)

local TooltipOrientation = require(Dialog.Tooltip.Enum.TooltipOrientation)

-- return the `key` from `distances` for which `distances[key]` is largest and `maskOut[key]` is falsy
local function argmax<K>(distances: { [K]: number }, maskOut: { [K]: boolean }): K
	local furthest
	for key, distance in pairs(distances) do
		if not maskOut[key] then
			if furthest == nil or distance > distances[furthest] then
				furthest = key
			end
		end
	end
	return furthest
end

-- get the distances from the center of the trigger oint to each edge, taking the margin into account
local function getDistances(triggerPointCenter: Vector2, screenSize: Vector2)
	return {
		[TooltipOrientation.Top] = triggerPointCenter.Y - Consts.SCREEN_MARGIN,
		[TooltipOrientation.Bottom] = screenSize.Y - triggerPointCenter.Y - Consts.SCREEN_MARGIN,
		[TooltipOrientation.Left] = triggerPointCenter.X - Consts.SCREEN_MARGIN,
		[TooltipOrientation.Right] = screenSize.X - triggerPointCenter.X - Consts.SCREEN_MARGIN,
	}
end

-- find the final orientation for the tooltip and the offset from the default position for the content box
-- the offset is relevant when we are close to the edge of the screen
function getOrientationAndContentOffset(orientation, distances, triggerPointRadius: Vector2, contentSize: Vector2)
	local maskOut = {}
	local offsetVector = Vector2.zero
	while true do
		if not orientation or maskOut[orientation] then
			local newOrientation = argmax(distances, maskOut)
			if not newOrientation then
				-- if we run out of viable options, just pick the last one
				-- this is not a great solution, but if this use case becomes common we can revisit
				break
			end
			orientation = newOrientation
		end
		if orientation == TooltipOrientation.Top or orientation == TooltipOrientation.Bottom then
			local verticalSpace = triggerPointRadius.Y + Consts.DISTANCE_TO_CONTENT + contentSize.Y
			if verticalSpace <= distances[orientation] then
				-- we have enough vertical space

				local closeSide = TooltipOrientation.Left
				if distances[TooltipOrientation.Right] < distances[TooltipOrientation.Left] then
					closeSide = TooltipOrientation.Right
				end
				local distance = distances[closeSide]
				if distance >= Consts.MIN_DISTANCE_TO_CARET_MIDDLE then
					-- we have enough space on the smaller edge
					-- if there somehow is not enough space for the whole tooltip, then there's probably no solution
					local offset = math.max(0, contentSize.X / 2 - distance)
					offsetVector = (-1 * offset) * Consts.ORIENTATION_VECTOR[closeSide]
					break
				else
					-- if we don't have enoughh lateral space, flipping 180 won't help
					maskOut[Consts.OPPOSITE_ORIENTATION[orientation]] = true
				end
			end
		else
			local horizontalSpace = triggerPointRadius.X + Consts.DISTANCE_TO_CONTENT + contentSize.X
			if horizontalSpace <= distances[orientation] then
				-- we have enough horizontal space

				local closeSide = TooltipOrientation.Top
				if distances[TooltipOrientation.Bottom] < distances[TooltipOrientation.Top] then
					closeSide = TooltipOrientation.Bottom
				end
				local distance = distances[closeSide]
				if distance >= Consts.MIN_DISTANCE_TO_CARET_MIDDLE then
					-- we have enough space on the smaller edge
					-- if there somehow is not enough space for the whole tooltip, then there's probably no solution
					local offset = math.max(0, contentSize.Y / 2 - distance)
					offsetVector = (-1 * offset) * Consts.ORIENTATION_VECTOR[closeSide]
					break
				else
					-- if we don't have enoughh lateral space, flipping 180 won't help
					maskOut[Consts.OPPOSITE_ORIENTATION[orientation]] = true
				end
			end
		end
		maskOut[orientation] = true
		-- try the opposite side next (if it hasn't been tried already)
		orientation = Consts.OPPOSITE_ORIENTATION[orientation]
	end
	return orientation, offsetVector
end

local function TooltipController(props: Types.TooltipControllerProps)
	local triggerPointPosition, setTriggerPointPosition = React.useState(Vector2.zero)
	local triggerPointSize, setTriggerPointSize = React.useState(Vector2.zero)
	local screenSize, setScreenSize = React.useState(Vector2.zero)
	local screenOffset, setScreenOffset = React.useState(Vector2.zero)
	local contentSize, setContentSize = React.useState(Vector2.zero)

	local triggerPointChanged = React.useCallback(function(rbx: GuiObject)
		setTriggerPointPosition(rbx.AbsolutePosition)
		setTriggerPointSize(rbx.AbsoluteSize)
	end)

	-- use
	local updateScreenSize = function(rbx: GuiObject)
		if rbx then
			setScreenOffset(rbx.AbsolutePosition)
			setScreenSize(rbx.AbsoluteSize)
		end
	end

	local triggerPointRadius = triggerPointSize / 2
	local triggerPointCenter = triggerPointPosition + triggerPointRadius - screenOffset

	local preferredOrientation = props.preferredOrientation or TooltipOrientation.Top

	local orientation, offsetVector: Vector2 = React.useMemo(function()
		local distances = getDistances(triggerPointCenter, screenSize)
		-- find final orientation and content offset
		return getOrientationAndContentOffset(preferredOrientation, distances, triggerPointRadius, contentSize)
	end, { preferredOrientation, screenSize, triggerPointCenter, triggerPointRadius, contentSize })

	-- Can disable the tooltip completely
	local toolipActive = if props.disabled then false else props.active

	local animationTarget = if toolipActive then Consts.ACTIVE_ANIMATION_TARGETS else Consts.INACTIVE_ANIMATION_TARGETS

	local function renderWithAnimation(values: Types.AnimationValues): React.ReactElement?
		-- if the tooltip is invisible don't render anything
		if values.transparency == 1 then
			return nil
		end

		local suppliedProps: Types.TooltipSuppliedProps = {
			orientation = orientation,
			triggerPointCenter = triggerPointCenter,
			triggerPointRadius = triggerPointRadius,
			contentOffsetVector = offsetVector,
			onContentSizeChanged = setContentSize,
			distanceOffset = values.distanceOffset,
			transparency = values.transparency,
		}

		local tooltipProps = LuauPolyfill.Object.assign({}, props.tooltipProps, suppliedProps)

		local children = {
			Tooltip = React.createElement(Tooltip, tooltipProps),
		}

		local tooltipLayer = if props.DEBUG_useTargetDirectly
			then React.createElement("Frame", {
				ZIndex = props.DisplayOrder,
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				[React.Change.AbsoluteSize] = updateScreenSize,
				[React.Change.AbsolutePosition] = updateScreenSize,
				ref = updateScreenSize,
			}, children)
			else React.createElement("ScreenGui", {
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
				IgnoreGuiInset = true,
				DisplayOrder = props.DisplayOrder,
				[React.Change.AbsoluteSize] = updateScreenSize,
				[React.Change.AbsolutePosition] = updateScreenSize,
				ref = updateScreenSize,
			}, children)

		return React.createElement(RoactPortal, {
			target = props.guiTarget,
		}, {
			TooltipLayer = tooltipLayer,
		})
	end

	local tooltipTree = withAnimation(animationTarget, renderWithAnimation, Consts.ANIMATION_OPTIONS)

	local triggerPointName = props.triggerPointName or "TriggerPoint"

	return React.createElement(React.Fragment, nil, {
		Portal = tooltipTree,
		[triggerPointName] = props.renderTriggerPoint(triggerPointChanged),
	} :: any) -- `any` cast due to https://jira.rbx.com/browse/CLI-54682
end

return TooltipController
