local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)

local useAnimatedBinding = ReactOtter.useAnimatedBinding
local useCallback = React.useCallback
local useEffect = React.useEffect
local useRef = React.useRef

local Constants = require(MomentsCreationFlow.Constants)

type MusicEdit = MomentsCommon.MusicEdit

local SEGMENT_WIDTH = Constants.AudioWaveform.SegmentSelectorWidth

local function useMusicEditorController(
	active: boolean,
	onDragEnd: () -> (),
	onDragStart: () -> (),
	onStartTimeChanged: (startTime: number) -> (),
	musicEdit: MusicEdit,
	timeLength: number
)
	local waveformRef = useRef(nil :: UIDragDetector?)
	local waveformDisplayRef = useRef(nil :: Frame?)
	local waveformPosition, setWaveformPosition = useAnimatedBinding(0)

	local waveformInitialPositionRef = useRef(nil :: number?)

	local onWaveformDragStart = useCallback(function()
		waveformInitialPositionRef.current = waveformPosition:getValue()
		onDragStart()
	end, { onDragStart })

	local onWaveformDragContinue = useCallback(function()
		local waveform = waveformRef.current
		local waveformDisplay = waveformDisplayRef.current
		if not waveform or not waveformDisplay then
			return
		end

		local waveformInitialPosition = waveformInitialPositionRef.current
		local scaleOffset = waveform.DragUDim2.X.Offset / SEGMENT_WIDTH

		local totalScale = waveformDisplay.AbsoluteSize.X / SEGMENT_WIDTH

		if 1 - totalScale > 0 then
			return
		end

		local clampedScaleOffset = math.clamp(waveformInitialPosition + scaleOffset, 1 - totalScale, 0)

		onStartTimeChanged(timeLength * (-clampedScaleOffset / totalScale))
		setWaveformPosition(ReactOtter.instant(clampedScaleOffset))
	end, { timeLength, onStartTimeChanged })

	local onWaveformDragEnd = useCallback(function()
		waveformInitialPositionRef.current = nil
		onDragEnd()
	end, { onDragEnd })

	useEffect(function()
		if not active then
			return
		end

		local connections = {}

		if waveformRef.current then
			table.insert(connections, waveformRef.current.DragStart:Connect(onWaveformDragStart))
			table.insert(connections, waveformRef.current.DragContinue:Connect(onWaveformDragContinue))
			table.insert(connections, waveformRef.current.DragEnd:Connect(onWaveformDragEnd))
		end

		return function()
			for _, connection in connections do
				connection:Disconnect()
			end
		end
	end, { active, onWaveformDragStart, onWaveformDragContinue, onWaveformDragEnd })

	useEffect(function()
		local waveformDisplay = waveformDisplayRef.current
		if not waveformDisplay then
			return
		end

		local totalScale = waveformDisplay.AbsoluteSize.X / SEGMENT_WIDTH
		setWaveformPosition(ReactOtter.instant(-musicEdit.startTime / timeLength * totalScale))
	end, { musicEdit.startTime, timeLength })

	return {
		waveformRef = waveformRef,
		waveformPosition = waveformPosition,
		waveformDisplayRef = waveformDisplayRef,
	}
end

return useMusicEditorController
