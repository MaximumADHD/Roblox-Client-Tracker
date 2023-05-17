local UserInputService = game:GetService("UserInputService")
local ToastNotifications = script.Parent
local dependencies = require(ToastNotifications.dependencies)
local React = dependencies.React
local UIBlox = dependencies.UIBlox
-- local LuauPolyfill = dependencies.LuauPolyfill
local typeModule = require(ToastNotifications.type)

-- local setTimeout = LuauPolyfill.setTimeout
local SpringAnimatedItem = UIBlox.Utility.SpringAnimatedItem
local TOAST_TOP_PADDING = 20

type Props = {
	displayOrder: number,
	renderLocation: typeModule.RenderLocation,
}

type DynamicToastPositionValues = {
	positionX: number,
	positionXOffset: number,
	positionY: number,
	positionYOffset: number,
	anchorX: number,
	anchorY: number,
}

local SPRING_OPTIONS = {
	frequency = 4,
	damping = 1,
}

local ToastNotificationContainer = function(props: Props)
	local statusBarSize = if UserInputService.StatusBarSize then UserInputService.StatusBarSize.Y else 0
	local topPadding = statusBarSize + TOAST_TOP_PADDING
	local toastNotificationSize = UDim2.new(0, 400, 0, 108)

	local isToastToRight = function()
		-- change this condition to be based on screen resolution
		return false
	end

	local calculateToastPosition = function(isOpen: boolean): DynamicToastPositionValues
		if isOpen then
			if isToastToRight() then
				return {
					positionX = 1,
					positionXOffset = -20,
					positionY = 0,
					positionYOffset = topPadding,
					anchorX = 1,
					anchorY = 0,
				}
			else
				return {
					positionX = 0.5,
					positionXOffset = 0,
					positionY = 0,
					positionYOffset = topPadding,
					anchorX = 0.5,
					anchorY = 0,
				}
			end
		else
			if isToastToRight() then
				return {
					positionX = 1,
					positionXOffset = 20,
					positionY = 0,
					positionYOffset = topPadding,
					anchorX = 0,
					anchorY = 0,
				}
			else
				return {
					positionX = 0.5,
					positionXOffset = 0,
					positionY = 0,
					positionYOffset = -50,
					anchorX = 0.5,
					anchorY = 1,
				}
			end
		end
	end

	local toastPosition, setToastPosition = React.useState(calculateToastPosition(false))
	local _setCloseToastPosition = function()
		local position = calculateToastPosition(false)
		setToastPosition(position)
	end
	local _setOpenToastPosition = function()
		local position = calculateToastPosition(true)
		setToastPosition(position)
	end
	-- Dev Testing toast animations
	-- React.useEffect(function()
	-- 	setTimeout(_setOpenToastPosition, 1000)
	-- 	setTimeout(_setCloseToastPosition, 5000)
	-- end, {})

	return React.createElement("ScreenGui", {
		DisplayOrder = props.displayOrder,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		IgnoreGuiInset = true,
	}, {
		Toast = React.createElement(SpringAnimatedItem.AnimatedFrame, {
			regularProps = {
				BorderSizePixel = 0,
				ClipsDescendants = true,
				Size = toastNotificationSize, -- device size and orientation dependent
				AutomaticSize = Enum.AutomaticSize.Y,
			},
			animatedValues = toastPosition,
			springOptions = SPRING_OPTIONS,
			mapValuesToProps = function(values)
				return {
					Position = UDim2.new(
						values.positionX,
						values.positionXOffset,
						values.positionY,
						values.positionYOffset
					), -- device size and orientation dependent
					AnchorPoint = Vector2.new(values.anchorX, values.anchorY), -- device size and orientation dependent
				}
			end,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
		}),
	})
end

return ToastNotificationContainer
