local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)

local useAnimatedBinding = ReactOtter.useAnimatedBinding
local useCallback = React.useCallback
local useEffect = React.useEffect
local useRef = React.useRef

local validateRefs = require(MomentsCreationFlow.Utils.validateRefs)

local DragHandle = require(MomentsCreationFlow.Enums.DragHandle)

type TrimEdit = MomentsCommon.TrimEdit
type DragHandle = DragHandle.DragHandle

local function useTrimDragController(
	active: boolean,
	onDragEnd: () -> (),
	onDragStart: (dragHandle: DragHandle) -> (),
	onRangeUpdated: (startTime: number?, endTime: number?) -> (),
	onScrubberDragged: (time: number) -> (),
	trimEdit: TrimEdit,
	timeLength: number
)
	local dragContainerRef = useRef(nil :: GuiObject?)
	local leftHandleRef = useRef(nil :: UIDragDetector?)
	local rightHandleRef = useRef(nil :: UIDragDetector?)
	local segmentRef = useRef(nil :: UIDragDetector?)
	local scrubberDisplayRef = useRef(nil :: GuiObject?)
	local scrubberRef = useRef(nil :: UIDragDetector?)

	local leftHandlePosition, setLeftHandlePosition =
		useAnimatedBinding(trimEdit and trimEdit.startTime / timeLength or 0)
	local rightHandlePosition, setRightHandlePosition =
		useAnimatedBinding(trimEdit and trimEdit.endTime / timeLength or 1)

	local leftHandleInitialPositionRef = useRef(nil :: number?)
	local rightHandleInitialPositionRef = useRef(nil :: number?)
	local scrubberInitialPositionRef = useRef(nil :: number?)

	local itemBeingDraggedRef = useRef(nil :: string?)

	local onLeftHandleDragStart = useCallback(function()
		if not validateRefs({ leftHandleRef }) or itemBeingDraggedRef.current then
			return
		end
		assert(leftHandleRef.current ~= nil, "Left handle ref is nil")

		itemBeingDraggedRef.current = DragHandle.LeftHandle
		leftHandleInitialPositionRef.current = leftHandlePosition:getValue()
		onDragStart(DragHandle.LeftHandle)
	end, { onDragStart })

	local onLeftHandleDragContinue = useCallback(function()
		if not validateRefs({ leftHandleInitialPositionRef, leftHandleRef }) then
			return
		end
		assert(leftHandleInitialPositionRef.current ~= nil, "Left handle initial position ref is nil")
		assert(leftHandleRef.current ~= nil, "Left handle ref is nil")

		local leftHandle = leftHandleRef.current
		local leftHandleInitialPosition = leftHandleInitialPositionRef.current
		local leftHandleNewPosition = math.clamp(
			leftHandleInitialPosition + leftHandle.DragUDim2.X.Scale,
			0,
			rightHandlePosition:getValue() - MomentsCommon.Constants.MinimumVideoLength / timeLength
		)
		setLeftHandlePosition(ReactOtter.instant(leftHandleNewPosition))
	end, { timeLength })

	local onLeftHandleDragEnd = useCallback(function()
		if itemBeingDraggedRef.current ~= DragHandle.LeftHandle then
			return
		end

		onRangeUpdated(leftHandlePosition:getValue() * timeLength, nil)
		itemBeingDraggedRef.current = nil
		leftHandleInitialPositionRef.current = nil
		onDragEnd()
	end, { onDragEnd, onRangeUpdated, timeLength })

	local onRightHandleDragStart = useCallback(function()
		if not validateRefs({ rightHandleRef }) or itemBeingDraggedRef.current then
			return
		end
		assert(rightHandleRef.current ~= nil, "Right handle ref is nil")

		itemBeingDraggedRef.current = DragHandle.RightHandle
		rightHandleInitialPositionRef.current = rightHandlePosition:getValue()
		onDragStart(DragHandle.RightHandle)
	end, { onDragStart })

	local onRightHandleDragContinue = useCallback(function()
		if not validateRefs({ rightHandleInitialPositionRef, rightHandleRef }) then
			return
		end
		assert(rightHandleRef.current ~= nil, "Right handle ref is nil")

		local rightHandle = rightHandleRef.current
		local rightHandleInitialPosition = rightHandleInitialPositionRef.current
		local rightHandleNewPosition = math.clamp(
			rightHandleInitialPosition + rightHandle.DragUDim2.X.Scale,
			leftHandlePosition:getValue() + MomentsCommon.Constants.MinimumVideoLength / timeLength,
			1
		)
		setRightHandlePosition(ReactOtter.instant(rightHandleNewPosition))
	end, { timeLength })

	local onRightHandleDragEnd = useCallback(function()
		if itemBeingDraggedRef.current ~= DragHandle.RightHandle then
			return
		end

		onRangeUpdated(nil, rightHandlePosition:getValue() * timeLength)
		itemBeingDraggedRef.current = nil
		rightHandleInitialPositionRef.current = nil
		onDragEnd()
	end, { onDragEnd, onRangeUpdated, timeLength })

	local onScrubberDragStart = useCallback(function()
		if not validateRefs({ scrubberRef, scrubberDisplayRef }) or itemBeingDraggedRef.current then
			return
		end
		assert(scrubberRef.current ~= nil, "Scrubber ref is nil")
		assert(scrubberDisplayRef.current ~= nil, "Scrubber display ref is nil")

		itemBeingDraggedRef.current = DragHandle.Scrubber
		scrubberInitialPositionRef.current = scrubberDisplayRef.current.Position.X.Scale
		onDragStart(DragHandle.Scrubber)
	end, { onDragStart })

	local onScrubberDragContinue = useCallback(function()
		if not validateRefs({ scrubberInitialPositionRef, scrubberRef }) then
			return
		end
		assert(scrubberInitialPositionRef.current ~= nil, "Scrubber initial position ref is nil")
		assert(scrubberRef.current ~= nil, "Scrubber ref is nil")

		local scrubber = scrubberRef.current
		local scrubberInitialPosition = scrubberInitialPositionRef.current
		local scrubberNewPosition = math.clamp(scrubberInitialPosition + scrubber.DragUDim2.X.Scale, 0, 1)
		onScrubberDragged(scrubberNewPosition)
	end, { onScrubberDragged })

	local onScrubberDragEnd = useCallback(function()
		if itemBeingDraggedRef.current ~= DragHandle.Scrubber then
			return
		end

		itemBeingDraggedRef.current = nil
		scrubberInitialPositionRef.current = nil
		onDragEnd()
	end, { onDragEnd })

	local onSegmentDragStart = useCallback(function()
		if not validateRefs({ segmentRef }) or itemBeingDraggedRef.current then
			return
		end
		assert(segmentRef.current ~= nil, "Selected outline ref is nil")

		itemBeingDraggedRef.current = DragHandle.Segment
		leftHandleInitialPositionRef.current = leftHandlePosition:getValue()
		rightHandleInitialPositionRef.current = rightHandlePosition:getValue()
		onDragStart(DragHandle.Segment)
	end, { onDragStart })

	local onSegmentDragContinue = useCallback(function()
		if
			not validateRefs({
				segmentRef,
				leftHandleInitialPositionRef,
				leftHandleRef,
				rightHandleInitialPositionRef,
				rightHandleRef,
			})
		then
			return
		end
		assert(segmentRef.current ~= nil, "Selected outline ref is nil")
		assert(leftHandleInitialPositionRef.current ~= nil, "Left handle initial position ref is nil")
		assert(leftHandleRef.current ~= nil, "Left handle ref is nil")
		assert(rightHandleInitialPositionRef.current ~= nil, "Right handle initial position ref is nil")
		assert(rightHandleRef.current ~= nil, "Right handle ref is nil")

		local Segment = segmentRef.current
		local SegmentOffset = Segment.DragUDim2.X.Scale

		local leftHandleInitialPosition = leftHandleInitialPositionRef.current
		local rightHandleInitialPosition = rightHandleInitialPositionRef.current

		if leftHandleInitialPosition <= 0 and rightHandleInitialPosition >= 1 then
			return
		end

		local clampedOffset = math.clamp(SegmentOffset, -leftHandleInitialPosition, 1 - rightHandleInitialPosition)
		local leftHandleNewPosition = leftHandleInitialPosition + clampedOffset
		local rightHandleNewPosition = rightHandleInitialPosition + clampedOffset

		setLeftHandlePosition(ReactOtter.instant(leftHandleNewPosition))
		setRightHandlePosition(ReactOtter.instant(rightHandleNewPosition))

		onRangeUpdated(leftHandleNewPosition * timeLength, rightHandleNewPosition * timeLength)
	end, { onRangeUpdated, timeLength })

	local onSegmentDragEnd = useCallback(function()
		if itemBeingDraggedRef.current ~= DragHandle.Segment then
			return
		end
		itemBeingDraggedRef.current = nil
		leftHandleInitialPositionRef.current = nil
		rightHandleInitialPositionRef.current = nil
		onDragEnd()
	end, { onDragEnd })

	useEffect(
		function()
			if not active then
				return
			end

			local connections = {}

			if leftHandleRef.current then
				table.insert(connections, leftHandleRef.current.DragStart:Connect(onLeftHandleDragStart))
				table.insert(connections, leftHandleRef.current.DragContinue:Connect(onLeftHandleDragContinue))
				table.insert(connections, leftHandleRef.current.DragEnd:Connect(onLeftHandleDragEnd))
			end

			if rightHandleRef.current then
				table.insert(connections, rightHandleRef.current.DragStart:Connect(onRightHandleDragStart))
				table.insert(connections, rightHandleRef.current.DragContinue:Connect(onRightHandleDragContinue))
				table.insert(connections, rightHandleRef.current.DragEnd:Connect(onRightHandleDragEnd))
			end

			if scrubberRef.current then
				table.insert(connections, scrubberRef.current.DragStart:Connect(onScrubberDragStart))
				table.insert(connections, scrubberRef.current.DragContinue:Connect(onScrubberDragContinue))
				table.insert(connections, scrubberRef.current.DragEnd:Connect(onScrubberDragEnd))
			end

			if segmentRef.current then
				table.insert(connections, segmentRef.current.DragStart:Connect(onSegmentDragStart))
				table.insert(connections, segmentRef.current.DragContinue:Connect(onSegmentDragContinue))
				table.insert(connections, segmentRef.current.DragEnd:Connect(onSegmentDragEnd))
			end

			return function()
				for _, connection in connections do
					connection:Disconnect()
				end
			end
		end,
		{
			active,
			onLeftHandleDragStart,
			onLeftHandleDragContinue,
			onLeftHandleDragEnd,
			onRightHandleDragStart,
			onRightHandleDragContinue,
			onRightHandleDragEnd,
			onScrubberDragStart,
			onScrubberDragContinue,
			onScrubberDragEnd,
			onSegmentDragStart,
			onSegmentDragContinue,
			onSegmentDragEnd,
		} :: { any }
	)

	return {
		dragContainerRef = dragContainerRef,
		leftHandleRef = leftHandleRef,
		rightHandleRef = rightHandleRef,
		scrubberDisplayRef = scrubberDisplayRef,
		scrubberRef = scrubberRef,
		segmentRef = segmentRef,
		leftHandlePosition = leftHandlePosition,
		rightHandlePosition = rightHandlePosition,
	}
end

return useTrimDragController
