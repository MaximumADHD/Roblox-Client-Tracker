--!nonstrict
local UIBlox = script:FindFirstAncestor("UIBlox")

local Cryo = require(UIBlox.Parent.Cryo)
local Otter = require(UIBlox.Parent.Otter)
local React = require(UIBlox.Parent.React)

local defaultProps = {
	itemAspectRatio = 16 / 9,
	itemPadding = 16, -- pt
	dragIntent = 20, -- pt
	borderRadius = UDim.new(0, 8),
	spring = Otter.spring,
}

export type Item = {
	imageId: string,
	isVideo: boolean?,
}

type DragDirection = "Left" | "Right"

export type Props = {
	items: { Item },
	itemAspectRatio: number?,
	itemPadding: number?,
	dragIntent: number?,
	borderRadius: UDim?,
	spring: any,
}

type InternalProps = Props & typeof(defaultProps)

local function MediaGallerySingle(providedProps: Props)
	local props: InternalProps = Cryo.Dictionary.join(defaultProps, providedProps)

	local absoluteSize, setAbsoluteSize = React.useState(Vector2.new(0, 0))
	local canvasPosition, setCanvasPosition = React.useState(Vector2.new(0, 0))
	local dragInput = React.useRef(nil)
	local lastDragPosition = React.useRef(nil)
	local dragDistance = React.useRef(0)
	local isMotorRunning = React.useRef(false)

	local itemWidth = absoluteSize.X + props.itemPadding
	local nearestItemIndex = 1 + math.round(canvasPosition.X / itemWidth)

	local getNextItemIndexInDirection = React.useCallback(function(direction: DragDirection)
		if direction == "Right" then
			return nearestItemIndex + 1
		else
			-- direction == "Left"
			return nearestItemIndex - 1
		end
	end)

	local getItemPositionAtIndex = React.useCallback(function(index: number)
		local itemWidth = absoluteSize.X + props.itemPadding
		return Vector2.new(itemWidth * (index - 1), 0)
	end)

	local scrollToIndex = React.useCallback(function(index: number)
		isMotorRunning.current = true

		local motor = Otter.createSingleMotor(0)
		local goal = getItemPositionAtIndex(index)

		motor:onStep(function(alpha: number)
			setCanvasPosition(canvasPosition:Lerp(goal, alpha))
		end)

		motor:onComplete(function()
			isMotorRunning.current = false
		end)

		motor:setGoal(props.spring(1, {
			frequency = 3,
			dampingRatio = 1,
			restingVelocityLimit = 0.05,
		}))
	end)

	local onInputBegan = React.useCallback(function(_rbx, input: InputObject)
		if isMotorRunning.current then
			return
		end

		if
			input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch
		then
			dragInput.current = input
		end
	end)

	local onInputChanged = React.useCallback(function(_rbx, input: InputObject)
		if
			dragInput.current
			and not isMotorRunning.current
			and (
				input.UserInputType == Enum.UserInputType.MouseMovement
				or input.UserInputType == Enum.UserInputType.Touch
			)
		then
			if not lastDragPosition.current then
				lastDragPosition.current = input.Position
			end

			local delta = lastDragPosition.current - input.Position

			if delta ~= Vector3.zero then
				dragDistance.current += delta.x

				setCanvasPosition(function(prev)
					local x = math.clamp(prev.X + delta.X, 0, math.huge)
					return Vector2.new(x, 0)
				end)
			end

			lastDragPosition.current = input.Position
		end
	end)

	local onInputEnded = React.useCallback(function(_rbx, input: InputObject)
		if input == dragInput.current then
			dragInput.current = nil
			lastDragPosition.current = nil

			local dragDirection: DragDirection = if dragDistance.current > 1 then "Right" else "Left"
			local nextIndex = getNextItemIndexInDirection(dragDirection)

			if nextIndex >= 1 and nextIndex <= #props.items then
				if math.abs(dragDistance.current) >= props.dragIntent then
					scrollToIndex(nextIndex)
				else
					scrollToIndex(nearestItemIndex)
				end
			end

			dragDistance.current = 0
		end
	end)

	local height, setHeight = React.useState(math.huge)
	local onAbsoluteSizeChanged = React.useCallback(function(rbx: ScrollingFrame)
		setAbsoluteSize(rbx.AbsoluteSize)

		-- UIAspectRatioConstraint is not working properly, so we're going to
		-- set the height to match itemAspectRatio ourselves
		setHeight(rbx.AbsoluteSize.X / props.itemAspectRatio)
	end, { props.itemAspectRatio })

	local items = {}
	for index, item in props.items do
		items["Item" .. index] = React.createElement("ImageLabel", {
			LayoutOrder = index,
			Size = UDim2.new(1, 0, 0, height),
			Image = item.imageId,
			ScaleType = Enum.ScaleType.Crop,
		}, {
			Corner = React.createElement("UICorner", {
				CornerRadius = props.borderRadius,
			}),
		})
	end

	-- We use a ScrollingFrame as a base since it makes it easy to move the
	-- CanvasPosition around, but the scrolling logic is all handled via input
	-- events. This is to get around scrolling on mobile having velocity in
	-- ScrollingFrames. For a media gallery we need it to be snappy.
	return React.createElement("ScrollingFrame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		AutomaticCanvasSize = Enum.AutomaticSize.XY,
		CanvasPosition = canvasPosition,
		ScrollingEnabled = false,
		ScrollBarImageTransparency = 1,
		ScrollingDirection = Enum.ScrollingDirection.X,
		ClipsDescendants = false,
		[React.Change.AbsoluteSize] = onAbsoluteSizeChanged,
		[React.Event.InputBegan] = onInputBegan,
		[React.Event.InputChanged] = onInputChanged,
		[React.Event.InputEnded] = onInputEnded,
	}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, props.itemPadding),
		}),

		Items = React.createElement(React.Fragment, {}, items),
	})
end

return MediaGallerySingle
