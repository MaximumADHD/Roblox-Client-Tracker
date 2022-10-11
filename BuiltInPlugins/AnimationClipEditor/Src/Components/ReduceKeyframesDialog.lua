--!strict
--[[
	A dialog used for the keyframe reduction.
	Displays a slider to let the user choose the reduction percentage, as
    well as the keyframes before/after reduction.

    The dialog creates a backup of the original animation and calculates the
    reduction data on Mount (Visvalingam-Whyatt). The slider adjusts the store
    animation accordingly.

    This also puts the ACE in read only mode, so that operations on keyframes
    are disabled.
]]

local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local SetAnimationData = require(Plugin.Src.Actions.SetAnimationData)
local SetReadOnly = require(Plugin.Src.Actions.SetReadOnly)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)

local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local PathUtils = require(Plugin.Src.Util.PathUtils)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local VisvalingamWhyatt = require(Plugin.Src.Util.KeyframeReduction.VisvalingamWhyatt)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Pane = Framework.UI.Pane
local StyledDialog = Framework.StudioUI.StyledDialog
local Slider = Framework.UI.Slider
local TextLabel = Framework.UI.Decoration.TextLabel

local Types = require(Plugin.Src.Types)

local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)
local GetFFlagAutomaticKeyframeReduction = require(Plugin.LuaFlags.GetFFlagAutomaticKeyframeReduction)

local DIALOG_WIDTH = 400
local DIALOG_HEIGHT = 100

local ReduceKeyframesDialog = Roact.PureComponent:extend("ReduceKeyframesDialog")

function ReduceKeyframesDialog:init(): ()
	self.didApply = false
	self.animationBackup = nil
	self.timestamps = nil
	self.lastIndexToDelete = nil

	self.onClose = function(didApply): ()
		local props = self.props

		local tracks = #props.Tracks
		local isChannelAnimation = AnimationData.isChannelAnimation(self.props.AnimationData)

		self.keepChanges = didApply

		if didApply then
			local beforeKeyframes = if self.state.ticks then #self.state.ticks else 0
			local afterKeyframes = self.state.keyframes

			props.Analytics:report(
				"onKeyframeReductionApply",
				tracks,
				isChannelAnimation,
				beforeKeyframes,
				afterKeyframes
			)

			-- If the user decides to apply the changes, we need to create a
			-- waypoint to undo to
			props.AddWaypoint(self.animationBackup)
		else
			props.Analytics:report("onKeyframeReductionCancel", tracks, isChannelAnimation)
		end

		self.props.OnClose()
	end

	self.onSliderChanged = function(newKeyframes: number): ()
		newKeyframes = math.round(newKeyframes)
		local oldKeyframes = self.state.keyframes
		self:previewVisvalingamWhyatt(newKeyframes, oldKeyframes)
		self:setState({
			keyframes = newKeyframes,
		})
	end
end

-- Fill a map between a part name and its parent name (either through
-- Motor6D or Bone)
local function getParents(targetInstance: Instance): { [string]: string }
	local _, motorMap, _, boneMap = RigUtils.getRigInfo(targetInstance)
	local parents = {}
	for k, v in pairs(motorMap) do
		parents[k] = v.Part0.Name
	end
	for k, v in pairs(boneMap) do
		parents[k] = v.Parent.Name
	end

	return parents
end

-- Applies FK to find the orientation of all parts for a specific tick
local function calculateOrientation(
	tracks: { [string]: Types.Track },
	orientations: { [string]: CFrame },
	parents: { [string]: string },
	trackName: string,
	tck: number
): CFrame
	if not orientations[trackName] then
		local track = tracks[trackName]

		orientations[trackName] = if track
			then (KeyframeUtils.getValue(track, tck) :: CFrame):Orthonormalize().Rotation
			else CFrame.new()

		if parents[trackName] then
			orientations[trackName] = calculateOrientation(tracks, orientations, parents, parents[trackName], tck)
				* orientations[trackName]
		end
	end

	return orientations[trackName]
end

-- Helper to calculate the angle between two rotation matrices
-- Given P and Q orthogonal matrices representing two rotations in the
-- same basis. Q* denotes the matrix transpose. The difference rotation
-- matrix that represents the difference rotation is given by R = PQ*
-- The angle is given by the formula tr(R) = 1 + 2 cos(theta)
local function calculateAngle(P: CFrame, Q: CFrame): number
	-- TODO: On some occasions orientations[rootPartName] is nil. I haven't been
	-- able to determine how to get there though.
	local transform = if Q then P * Q:Inverse() else P
	local _, _, _, m11, _, _, _, m22, _, _, _, m33 = transform:GetComponents()
	local trace = m11 + m22 + m33

	-- Clamp the cosine to avoid rounding errors
	if trace >= 3 then
		return math.pi / 2
	elseif trace <= -1 then
		return -math.pi / 2
	else
		return math.acos((trace - 1) / 2)
	end
end

function ReduceKeyframesDialog:calculateVisvalingamWhyatt(): { number }
	local animationData = self.sourceData
	local rootInstance = self.props.RootInstance
	local tracks = animationData.Instances.Root.Tracks

	local rootPart = RigUtils.findRootPart(rootInstance)
	local rootPartName = rootPart.Name
	local rootPartTrack = tracks[rootPartName]

	-- Find all ticks
	local ticks =
		TrackUtils.getSummaryKeyframes(tracks, animationData.Metadata.StartTick, animationData.Metadata.EndTick)
	table.sort(ticks)

	local parents = getParents(rootInstance)
	local trackNames = Cryo.Dictionary.keys(tracks)

	local dataPoints = table.create(#ticks)
	for tckIndex, tck in ipairs(ticks) do
		local points = table.create(#trackNames + 4)
		table.insert(points, tck)

		if rootPartTrack then
			local rootPosition = (KeyframeUtils.getValue(rootPartTrack, tck) :: CFrame).Position
			table.insert(points, rootPosition.X)
			table.insert(points, rootPosition.Y)
			table.insert(points, rootPosition.Z)
		end

		-- Add rotation of all CFrame tracks and all FACS values
		local orientations = {}
		for _, trackName in ipairs(trackNames) do
			local track = tracks[trackName]
			if track.Type == Constants.TRACK_TYPES.CFrame then
				-- Find angles between each part and the root part, at each tick.
				-- Those are the data points we will later simplify
				calculateOrientation(tracks, orientations, parents, trackName, tck)

				table.insert(points, calculateAngle(orientations[trackName], orientations[rootPartName]))
			elseif track.Type == Constants.TRACK_TYPES.Facs then
				table.insert(points, KeyframeUtils.getValue(track, tck) :: number)
			end
		end

		dataPoints[tckIndex] = points
	end
	-- At this point we have dataPoints, a list of tables such as
	-- {
	--   { tck0, RootX, RootY, RootZ, anglePart1, ..., Facs1, ... anglePartN },
	--   { tck1, RootX, RootY, RootZ, anglePart1, ..., Facs1, ... anglePartN },
	--   :
	--   { tckM, RootX, RootY, RootZ, anglePart1, ..., Facs1, ... anglePartN },
	-- }
	-- with tck0, tck1, ... sorted, and each angle corresponding to a part.
	-- This array is sorted by ascending tick.
	-- Which part/Facs is on which column does not matter, but the same part is
	-- on the same column for all the ticks.
	-- This gives us M different points in N+1 dimensions, and we can now
	-- apply Visvalingam-Whyatt on that list of points.

	return VisvalingamWhyatt(dataPoints)
end

function ReduceKeyframesDialog:previewVisvalingamWhyatt(newKeyframes: number, oldKeyframes: number): ()
	if newKeyframes == oldKeyframes then
		return
	end
	-- Make a shallow copy of the previewData to trigger a UI refresh.
	local data = Cryo.Dictionary.join(self.workData, {})
	local ticks = self.state.ticks
	if ticks then
		for instanceName, instance in data.Instances do
			for trackName, track in instance.Tracks do
				TrackUtils.traverseTracks(trackName, track, function(tr: Types.Track, _: string, path: PathUtils.Path)
					-- We want to restore some keyframes. Find the corresponding track in the sourceData
					local sourceTrack = AnimationData.getTrack(self.sourceData, instanceName, path)
					if sourceTrack and sourceTrack.Data then
						-- Keep the newKeyframes first keyframes
						local keyframes = table.create(newKeyframes)
						local data = table.create(newKeyframes)
						for i = 1, newKeyframes do
							local tck = ticks[i]
							data[tck] = sourceTrack.Data[tck]
							if data[tck] then
								table.insert(keyframes, tck)
							end
						end
						table.sort(keyframes)
						tr.Keyframes = keyframes
						tr.Data = data
					end
				end, true)
			end
		end

		self.props.SetAnimationData(data)
		self.props.StepAnimation(self.props.Playhead)
	end
end

function ReduceKeyframesDialog:didMount(): ()
	local props = self.props

	if props.Tracks == nil or isEmpty(props.Tracks) then
		-- There is no active track. Either no track has been added in the ACE,
		-- or the user loaded an animation that does not match the rig. In
		-- either case, there isn't much we can do.
		self.onClose(false)
		return
	end

	props.SetReadOnly(true)
	props.SetSelectedKeyframes({})

	-- We create several copies of the entire animation clip, which isn't great.
	-- The store copy of AnimationData will be overwritten every time the user
	-- moves the slider. Because of that, we need:
	-- animationBackup: a copy of the clip to restore if the user decides not
	--     to keep their changes;
	-- sourceData: a copy of the clip in which tracks have been pruned (*). This
	--     will serve as reference (to copy data from) whenever we need to
	--     restore previously deleted keyframes
	-- workData: we don't want to delete keyframes from the sourceData (since
	--     we need that one to restore deleted keyframes), but we need something
	--     to work with and set as the current animation whenever the user moves
	--     the slider. We only need to make one deepcopy of the source, later
	--     changes can be applied to a shallow copy.

	self.animationBackup = deepCopy(props.AnimationData)

	-- Remove track sequences (successive keyframes with identical values)
	self.sourceData = deepCopy(props.AnimationData)
	if GetFFlagAutomaticKeyframeReduction() then
		if AnimationData.clearTrackSequences(self.sourceData) then
			self.props.SetAnimationData(self.sourceData)
			self.props.StepAnimation(self.props.Playhead)
		end
	end

	-- Clear tangent information of the source. Reduced animations will use
	-- auto tangents if needed.
	for _, instance in self.sourceData.Instances do
		for trackName, track in instance.Tracks do
			TrackUtils.traverseTracks(trackName, track, function(tr)
				for _, data in tr.Data do
					data.LeftTangent = nil
					data.RightTangent = nil
				end
			end, true)
		end
	end

	self.workData = deepCopy(self.sourceData)
	local ticks = self:calculateVisvalingamWhyatt()
	self:setState({
		keyframes = #ticks,
		ticks = ticks,
	})
end

function ReduceKeyframesDialog:willUnmount(): ()
	if not self.keepChanges then
		self.props.UpdateAnimationData(self.animationBackup)
	end
	self.keepChanges = false
	self.animationBackup = nil
	self.sourceData = nil
	self.workData = nil
	self.props.SetReadOnly(false)
end

function ReduceKeyframesDialog:render(): any
	local theme = GetFFlagExtendPluginTheme() and self.props.Stylizer or self.props.Stylizer.PluginTheme
	local localization = self.props.Localization
	local dialogTheme = theme.dialogTheme
	local keyframes = self.state.keyframes
	local ticks = self.state.ticks

	-- If there are not enough ticks, we still want to display a sensible slider
	-- and set the knob to 2. The slider will be disabled.
	local sliderMax = if ticks then math.max(#ticks, 3) else 3
	local sliderPos = if keyframes then math.max(keyframes, 2) else 2
	local sliderEnabled = ticks and #ticks > 2

	local keyframesText = localization:getText("OptimizeKeyframes", "Keyframes")

	if ticks then
		keyframesText ..= string.format(" %d / %d", keyframes, #ticks)
	end

	local buttons = {
		{ Key = false, Text = localization:getText("Dialog", "Cancel"), Style = "Round" },
		{ Key = true, Text = localization:getText("Dialog", "Ok"), Style = "RoundPrimary" },
	}

	return Roact.createElement(StyledDialog, {
		MinContentSize = Vector2.new(DIALOG_WIDTH, DIALOG_HEIGHT),
		Size = Vector2.new(DIALOG_WIDTH, DIALOG_HEIGHT),
		TextSize = dialogTheme.textSize,
		Resizable = false,
		Buttons = buttons,
		OnButtonPressed = self.onClose,
		OnClose = self.onClose,
		Title = localization:getText("Title", "OptimizeKeyframes"),
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}),
		KeyframePane = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = Enum.FillDirection.Vertical,
			Padding = 10,
			Spacing = 15,
			LayoutOrder = 1,
		}, {
			KeyframesText = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.XY,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = keyframesText,
				TextColor3 = theme.TextColor,
				BackgroundTransparency = 1.0,
				TextWrapped = true,
			}),
		}),
		Slider = Roact.createElement(Slider, {
			Size = UDim2.new(1, 0, 0, 30),
			Min = 2,
			Max = sliderMax,
			Value = sliderPos,
			Disabled = not sliderEnabled,
			OnValueChanged = self.onSliderChanged,
			LayoutOrder = 2,
		}),
	})
end

local function mapStateToProps(state): { [string]: any }
	return {
		AnimationData = state.AnimationData,
		Tracks = state.Status.Tracks,
		Playhead = state.Status.Playhead,
		RootInstance = state.Status.RootInstance,
	}
end

local function mapDispatchToProps(dispatch): { [string]: (any) -> () }
	return {
		AddWaypoint = function(data: Types.AnimationData): ()
			dispatch(AddWaypoint(data))
		end,

		SetAnimationData = function(data: Types.AnimationData): ()
			dispatch(SetAnimationData(data))
		end,

		SetReadOnly = function(readOnly: boolean): ()
			dispatch(SetReadOnly(readOnly))
		end,

		SetSelectedKeyframes = function(selection)
			dispatch(SetSelectedKeyframes(selection))
		end,

		StepAnimation = function(playhead: number): ()
			dispatch(StepAnimation(playhead))
		end,

		UpdateAnimationData = function(data: Types.AnimationData): ()
			dispatch(UpdateAnimationData(data))
		end,
	}
end

ReduceKeyframesDialog = withContext({
	Analytics = ContextServices.Analytics,
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
})(ReduceKeyframesDialog)

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ReduceKeyframesDialog)
