--[[
	Window that displays facs sliders on face for FaceControlsEditor.

	Props:
		Instance RootInstance = instance currently being animated in the editor.
		bool faceControlsEditorEnabled = whether or not animation editor is currently using FaceControlsEditor to manipulate the rig
		bool ShowFaceControlsEditorPanel = whether or not the FaceControlsEditor editor window is visible
		string SelectedTrack = name of the track/joint currently selected in the editor
		function ToggleFaceControlsEditorEnabled = toggles if FaceControlsEditor is on or off in animation editor
		function SetFaceControlsEditorEnabled(bool) = sets if FaceControlsEditor is on or off
		function SetShowFaceControlsEditorPanel = sets if the FaceControlsEditor window is visible
		function SetSelectedTracks(string) = sets currently selected joint to given string
]]

local FFlagFaceControlsEditorUI = game:GetFastFlag("FaceControlsEditorUI2")

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Src.Util.Constants)

local RigUtils = require(Plugin.Src.Util.RigUtils)

local Input = require(Plugin.Src.Util.Input)

local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)

local GetFFlagFaceControlsEditorUXImprovements = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorUXImprovements)

local GetFFlagFaceAnimationEditorFocusFaceWithF = require(Plugin.LuaFlags.GetFFlagFaceAnimationEditorFocusFaceWithF)

local FaceControlsEditorWindow = Roact.PureComponent:extend("FaceControlsEditorWindow")

local SIZE = Vector2.new(Constants.faceControlsEditorOriginalWidth, 310)
local MINSIZE = Vector2.new(185, 110)

local Slider = Framework.UI.Slider

--this window is never opened in actual usage when FFlagFaceControlsEditorUI is false,
--but we need this FFlagFaceControlsEditorUI check here to not make the all flags off test fail
local DragBox = FFlagFaceControlsEditorUI and Framework.UI.DragBox or nil

local Checkbox = Framework.UI.Checkbox

local Pane = Framework.UI.Pane

local Button = Framework.UI.Button

local ValueChanged = require(Plugin.Src.Thunks.ValueChanged)
local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local SetSymmetryEnabled = require(Plugin.Src.Actions.SetSymmetryEnabled)
local SetAutoFocusFaceEnabled = require(Plugin.Src.Actions.SetAutoFocusFaceEnabled)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)

local ContextMenu = require(Plugin.Src.Components.ContextMenu)

local Cryo = require(Plugin.Packages.Cryo)

local instanceForFacs = "Root"

local faceControlsMapping = require(script:WaitForChild("FaceControlsMapping"))

local eyesDragBoxControlName = "EyesDragBox"

local eyesDragBoxTooltipText = "EyesLook"

local Util = Framework.Util

local StyleModifier = Util.StyleModifier

local GetFFlagFaceControlsEditorSelectTracks = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorSelectTracks)
local GetFFlagFaceControlsEditorUIUpdate = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorUIUpdate)
local GetFFlagFaceControlsEditorBugBash2Update = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorBugBash2Update)
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local PADDING = 10

function FaceControlsEditorWindow:init()
	self.state = {
		Tooltip = nil,
		treeArray = {},
		showContextMenu = false,
		currentlyEditedFacsProperties = {},
		scaleFactor = 1
	}

	self.onAbsoluteSizeChange = function(rbx)
		local panelWidth = rbx.AbsoluteSize.X
		local panelHeight = rbx.AbsoluteSize.Y		
		--min and max clamped values are to not allow scaling the diagrams so small that one can't use the
		--sliders well anymore, nor so big that the diagram images would become pixelated
		local scaleFactor = math.clamp(panelWidth / Constants.faceControlsEditorOriginalWidth , 0.05, 1.65)
		local defaultContentHeight = (Constants.faceControlsEditorDiagramPadding) 
			+ (Constants.faceControlsEditorFaceFrontDiagramHeight + Constants.faceControlsEditorFaceSideDiagramHeight) + Constants.faceControlsEditoSpacingBetweenDiagrams	

		local maxYScaleFactorAllowed = (panelHeight - (Constants.faceControlsEditorTogglesContainerHeight 
			+ (Constants.faceControlsEditorDiagramPadding * 2) ) ) / defaultContentHeight

		scaleFactor = math.min(scaleFactor, maxYScaleFactorAllowed)
		self:setState({
			panelWidth = panelWidth,
			panelHeight = panelHeight,
			scaleFactor = scaleFactor
		})
	end


	self.showContextMenu = function()
		self:setState({
			showContextMenu = true,
		})
	end

	self.hideContextMenu = function()
		self:setState({
			showContextMenu = false,
		})
	end

	self.setValues = function(lowerValue, upperValue)
		self:setState({
			currentMax = upperValue,
			currentMin = lowerValue,
		})
	end

	self.hideFaceControlsEditor = function()
		local props = self.props

		if props.ShowFaceControlsEditorPanel then
			props.SetShowFaceControlsEditorPanel(false)
		end
		if props.FaceControlsEditorEnabled then
			props.SetFaceControlsEditorEnabled(false)
		end
	end

	self.onDockWidgetLoaded = function(widget)
		if widget:IsA("PluginGui") then
			widget:BindToClose(self.hideFaceControlsEditor)
		end
	end

	self.onTreeUpdated = function(nodesArray)
		self:setState({
			treeArray = nodesArray,
		})
	end

	self.changeSelectedTrack = function(increment)
		local state = self.state
		local props = self.props

		local treeArray = state.treeArray
		local selectedTrack = props.SelectedTrack
		local SetSelectedTracks = props.SetSelectedTracks

		local currentIndex = 0
		for index, node in ipairs(treeArray) do
			if GetFFlagCurveEditor() then
				if selectedTrack and selectedTrack[1] == node then
					currentIndex = index
					break
				end
			else
				if selectedTrack == node then
					currentIndex = index
					break
				end
			end
		end

		local newIndex = math.clamp(currentIndex + increment, 1, #treeArray)
		if GetFFlagCurveEditor() then
			local path = {treeArray[newIndex]}
			SetSelectedTracks({path})
		else
			SetSelectedTracks({treeArray[newIndex]})
		end
	end
end

function FaceControlsEditorWindow:addAction(action, func)
	if action then
		action.Enabled = false
		table.insert(self.Actions, action)
		table.insert(self.Connections, action.Triggered:Connect(func))
	end
end

function FaceControlsEditorWindow:didMount()
	if GetFFlagFaceAnimationEditorFocusFaceWithF() then
		local actions = self.props.PluginActions
		self.Connections = {}
		self.Actions = {}
		self:addAction(actions:get("FocusCamera"), function()
			focusFace(self.props)
		end)
	end
end

function FaceControlsEditorWindow:willUnmount()
	if GetFFlagFaceAnimationEditorFocusFaceWithF() then
		if self.Connections then
			for _, connection in ipairs(self.Connections) do
				connection:Disconnect()
			end
			self.Connections = {}
		end
		if self.Actions then
			for _, action in ipairs(self.Actions) do
				action.Enabled = false
			end
		end	
	end
	self.hideFaceControlsEditor()
end

function getFacsListData()
	local facsListData = {}

	for facsName, _ in pairs(Constants.FacsControlToRegionMap) do
		facsListData[facsName] = {
			Name = facsName,
			Instance = instanceForFacs,
			Type = Constants.TRACK_TYPES.Facs
		}
	end

	facsListData = Cryo.Dictionary.values(facsListData)

	table.sort(facsListData, function(first, second)
		return first.Name < second.Name
	end)

	return facsListData
end

function formatNumber(number)
	local precision = Constants.NUMBER_PRECISION
	return tostring(math.floor(.5 + number * precision) / precision)
end

--prep right click reset value(s) context menu
function prepAndTriggerSliderContextMenu(self, facs, props, crossMapping, symmetryPartner, sliderGroup)
	local editedItemsTable = {facs.Name}
	if sliderGroup then
		table.insert(editedItemsTable, sliderGroup[1])
		table.insert(editedItemsTable, sliderGroup[2])

		if props.SymmetryEnabled then
			local groupPartnerSymmetryPartner = Constants.FacsCrossMappings[sliderGroup[1]].symmetryPartner
			if groupPartnerSymmetryPartner then
				table.insert(editedItemsTable, groupPartnerSymmetryPartner)
			end
			groupPartnerSymmetryPartner = Constants.FacsCrossMappings[sliderGroup[2]].symmetryPartner
			if groupPartnerSymmetryPartner then
				table.insert(editedItemsTable, groupPartnerSymmetryPartner)
			end
		end

	end
	if props.SymmetryEnabled then
		symmetryPartner = crossMapping.symmetryPartner
		if symmetryPartner then
			table.insert(editedItemsTable, symmetryPartner)
		end
	end

	self.state.currentlyEditedFacsProperties = editedItemsTable

	self.state.showContextMenu = true
	self:showContextMenu()
end

function getSliderTooltipText(facs, sliderProps)
	local sliderNameLabel = facs.Name
	local crossMapping = Constants.FacsCrossMappings[facs.Name]
	local sliderGroup = crossMapping.sliderGroup
	local displayValue = formatNumber(sliderProps.currentValue)
	if sliderGroup then
		if sliderProps.Tooltip and sliderProps.currentValue == sliderProps.defaultValue then
			sliderNameLabel = sliderProps.Tooltip
			displayValue = 0
		elseif
			sliderProps.currentValue < 0.5 then
			sliderNameLabel = sliderGroup[1]
			displayValue = formatNumber(math.clamp(1- (sliderProps.currentValue * 2), 0, 1))
		else
			sliderNameLabel = sliderGroup[2]
			displayValue = formatNumber( (sliderProps.currentValue - 0.5) * 2) 
		end
	end

	return sliderNameLabel..": "..displayValue
end

function handleSliderOnValueChanged(self, facs, value, minValue, maxValue, sliderProps, crossMapping, sliderGroup, symmetryPartner, symmetryPartnerProps)
	sliderProps.currentValue = value
	self:setState(
		{						
			Tooltip =  getSliderTooltipText(facs, sliderProps),
			Value = math.clamp(sliderProps.currentValue, minValue, maxValue)
		})
	local trackName = facs.Name
	local props = self.props

	local targetFacsValue = value

	--for sliders which control multiple facs properties handle setting value in second controlled facs prop
	if sliderGroup and crossMapping.indexInGroup == 1 then

		local groupPartnerName = nil
		if crossMapping.indexInGroup == 1 then
			groupPartnerName = sliderGroup[2]
		else
			groupPartnerName = sliderGroup[1]
		end

		local sliderPropsGroupPartner = faceControlsMapping.FacsControlToFaceSliderInfoMap[groupPartnerName]

		local targetFacsValueGroupPartner = 0

		if value <= 0.5 then
			--sliding leftwards from slider center -->affecting first facs property ++ and second is 0
			targetFacsValue = math.clamp(1- (value * 2), 0, 1)
			targetFacsValueGroupPartner = 0
		else
			--sliding rightwards from slider center -->affecting second facs property ++ and first is 0
			targetFacsValue = 0
			targetFacsValueGroupPartner =  (value-0.5) * 2
		end

		local sliderTargetValue = 0.5 + (targetFacsValueGroupPartner*0.5)
		sliderPropsGroupPartner.currentValue = sliderTargetValue

		triggerValueChanged(props, groupPartnerName, targetFacsValueGroupPartner)

		--handle also setting value for symmetry partner of slider group partner
		if self.props.SymmetryEnabled then
			local groupPartnerSymmetryPartnerProps = nil
			local groupPartnerSymmetryPartner = nil

			groupPartnerSymmetryPartner = Constants.FacsCrossMappings[groupPartnerName].symmetryPartner
			if groupPartnerSymmetryPartner then
				groupPartnerSymmetryPartnerProps = faceControlsMapping.FacsControlToFaceSliderInfoMap[groupPartnerSymmetryPartner]
			end
			if groupPartnerSymmetryPartnerProps then
				groupPartnerSymmetryPartnerProps.currentValue = sliderTargetValue
			end
			if groupPartnerSymmetryPartner then
				triggerValueChanged(props, groupPartnerSymmetryPartner, targetFacsValueGroupPartner)
			end
		end
	end
	--set value in single prop slider or first item in group slider
	if not sliderGroup or (sliderGroup and (crossMapping.indexInGroup == 1 )) then
		triggerValueChanged(props, trackName, targetFacsValue)
	end
	--and also in its symmetry partner
	if self.props.SymmetryEnabled then
		if symmetryPartnerProps then
			symmetryPartnerProps.currentValue = value
			triggerValueChanged(props, symmetryPartner, targetFacsValue)
		end
	end
end

function makeFacsOnFaceDiagramSliderUIItems (self, style, localization)
	local children = {}

	local theme = GetFFlagExtendPluginTheme() and self.props.Stylizer or self.props.Stylizer.PluginTheme

	local Facs = getFacsListData()
	for _, facs in ipairs(Facs) do
		local name = "Facs_" .. facs.Name

		local crossMapping = Constants.FacsCrossMappings[facs.Name]
		local sliderProps = faceControlsMapping.FacsControlToFaceSliderInfoMap[facs.Name]

		local sliderGroup = crossMapping.sliderGroup

		if sliderProps then

			--a group slider controls multiple facs properties, for those we only create an own slider for the first item in the group
			if not sliderGroup or (sliderGroup and crossMapping.indexInGroup == 1) then
				local symmetryPartnerProps = nil
				local symmetryPartner = nil
				if self.props.SymmetryEnabled then
					symmetryPartner = crossMapping.symmetryPartner
					if symmetryPartner then
						symmetryPartnerProps = faceControlsMapping.FacsControlToFaceSliderInfoMap[symmetryPartner]
					end
				end

				local itemWidth = 43
				if sliderProps.customWidth then
					itemWidth = sliderProps.customWidth
				end

				local minValue = 0
				local maxValue = 1
				local value = math.clamp(sliderProps.currentValue, minValue, maxValue)
				local fillFromCenter = (sliderGroup ~= nil)
				local shouldUseBigKnobStyle = GetFFlagFaceControlsEditorUXImprovements() and theme.faceSliderMaxValueTheme and (value == minValue or value == maxValue or (fillFromCenter and value == 0.5))

				children[name.."_rotatedSliderContainer"] = Roact.createElement("Frame", {
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Position = UDim2.new(sliderProps.position.X.Scale, sliderProps.position.X.Offset * self.state.scaleFactor, sliderProps.position.Y.Scale, sliderProps.position.Y.Offset * self.state.scaleFactor),
					Size = UDim2.new(0, itemWidth * self.state.scaleFactor, 0, 2 * self.state.scaleFactor),
					Rotation = sliderProps.rotation,
					LayoutOrder = 2,
					ZIndex = 100,
				},

				{
					Scrubber = Roact.createElement(Slider, {
						Style = if shouldUseBigKnobStyle then theme.faceSliderMaxValueTheme else theme.faceSliderTheme,
						Disabled = false,
						Min = minValue,
						Max = maxValue,
						Tooltip = getSliderTooltipText(facs, sliderProps),
						Value = value,
						--for sliders which control multiple facs properties
						--the slider fill should go from center towards both ends of slider
						FillFromCenter = fillFromCenter,

						OnRightClick = function()
							prepAndTriggerSliderContextMenu(self, facs, self.props, crossMapping, symmetryPartner, sliderGroup)
						end,
						OnChangeBegan = function()
							local props = self.props
							props.AddWaypoint()

							if GetFFlagFaceControlsEditorSelectTracks() then
								if GetFFlagCurveEditor() then
									local list = {{facs.Name}}
									if symmetryPartner then
										table.insert(list, {symmetryPartner})
									end
									if sliderGroup then
										local groupPartnerName = sliderGroup[2]
										table.insert(list, {groupPartnerName})
										if symmetryPartner then
											table.insert(list, {Constants.FacsCrossMappings[groupPartnerName].symmetryPartner})
										end																		
									end
									self.props.SetSelectedTracks(list)
								else
									local list = {facs.Name}
									if symmetryPartner then
										table.insert(list, symmetryPartner)
									end		
									if sliderGroup then
										local groupPartnerName = sliderGroup[2]
										table.insert(list, groupPartnerName)
										if symmetryPartner then
											table.insert(list, Constants.FacsCrossMappings[groupPartnerName].symmetryPartner)
										end		
									end								
									self.props.SetSelectedTracks(list)
								end
							end
						end,
						OnValueChanged = function(value)
							handleSliderOnValueChanged(self, facs, value, minValue, maxValue, sliderProps, crossMapping, sliderGroup, symmetryPartner, symmetryPartnerProps)
						end,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(1, 0, 0, 8),
						AnchorPoint = Vector2.new(0.5,0.5),
					}),
				})
			end
		end
	end
	return Roact.createFragment(children)
end

function triggerValueChanged(props, trackName, value)
	if GetFFlagChannelAnimations() then
		props.ValueChanged(instanceForFacs, {trackName}, Constants.TRACK_TYPES.Facs, props.Playhead, value, props.Analytics)
	else
		props.ValueChanged_deprecated2(instanceForFacs, trackName, Constants.TRACK_TYPES.Facs, props.Playhead, value, props.Analytics)
	end
end

function makeEyesControlDragBox (self, style, localization)

	local children = {}

	local theme = GetFFlagExtendPluginTheme() and self.props.Stylizer or self.props.Stylizer.PluginTheme

	local sliderProps = faceControlsMapping.FacsControlToFaceSliderInfoMap[eyesDragBoxControlName]

	local minXValue = -1
	local maxXValue = 1
	local minYValue = -1
	local maxYValue = 1
	local value = Vector2.new( math.clamp(sliderProps.currentValue.X, minXValue, maxXValue), math.clamp(sliderProps.currentValue.Y, minYValue, maxYValue))
	local shouldUseBigKnobStyle =  value.X == minXValue or  value.X == maxXValue or value.Y == minYValue or value.Y == maxYValue or (value.X == -0 and value.Y == 0)

	--this window is never opened in actual usage when FFlagFaceControlsEditorUI is false,
	--but we need this FFlagFaceControlsEditorUI check here to not make the all flags off test fail
	children[eyesDragBoxControlName] = FFlagFaceControlsEditorUI and Roact.createElement(DragBox, {
		Style = if GetFFlagFaceControlsEditorUXImprovements() and shouldUseBigKnobStyle then theme.faceDragBoxMaxValueTheme else theme.faceDragBoxTheme,
		Disabled = false,
		MinX = minXValue,
		MaxX = maxXValue,
		MinY = minYValue,
		MaxY = maxYValue,
		Tooltip = eyesDragBoxTooltipText,
		Value = value,
		OnRightClick = function()
			local editedItemsTable = {}
			table.insert(editedItemsTable, Constants.FacsNames.EyesLookLeft)
			table.insert(editedItemsTable, Constants.FacsNames.EyesLookRight)
			table.insert(editedItemsTable, Constants.FacsNames.EyesLookUp)
			table.insert(editedItemsTable, Constants.FacsNames.EyesLookDown)
			self.state.currentlyEditedFacsProperties = editedItemsTable
			self.state.showContextMenu = true
			self:showContextMenu()
		end,
		OnChangeBegan = function()
			local props = self.props
			props.AddWaypoint()	
			if GetFFlagFaceControlsEditorSelectTracks() then
				if GetFFlagCurveEditor() then
					self.props.SetSelectedTracks({{Constants.FacsNames.EyesLookLeft}, {Constants.FacsNames.EyesLookRight}, {Constants.FacsNames.EyesLookUp}, {Constants.FacsNames.EyesLookDown}})
				else
					self.props.SetSelectedTracks({Constants.FacsNames.EyesLookLeft, Constants.FacsNames.EyesLookRight, Constants.FacsNames.EyesLookUp, Constants.FacsNames.EyesLookDown})
				end	
			end
		end,
		OnValueChanged = function(value)
			sliderProps.currentValue = value
			self:setState(
				{
					Tooltip = eyesDragBoxTooltipText,
					Value = Vector2.new( math.clamp(sliderProps.currentValue.X, minXValue, maxXValue), math.clamp(sliderProps.currentValue.Y, minYValue, maxYValue))
				})
			local props = self.props

			local eyesLookRightValue = value.X <= 0 and -value.X or 0
			local eyesLookLeftValue = value.X >= 0 and value.X or 0

			local eyesLookUpValue = value.Y <= 0 and -value.Y or 0
			local eyesLookDownValue = value.Y >= 0 and value.Y or 0

			triggerValueChanged(props, Constants.FacsNames.EyesLookRight, eyesLookRightValue)
			triggerValueChanged(props, Constants.FacsNames.EyesLookLeft, eyesLookLeftValue)
			triggerValueChanged(props, Constants.FacsNames.EyesLookUp, eyesLookUpValue)
			triggerValueChanged(props, Constants.FacsNames.EyesLookDown, eyesLookDownValue)
		end,

		Position = UDim2.new(sliderProps.position.X.Scale, sliderProps.position.X.Offset * self.state.scaleFactor, sliderProps.position.Y.Scale, sliderProps.position.Y.Offset * self.state.scaleFactor),
		Size = UDim2.new(0, 36 * self.state.scaleFactor, 0, 28 * self.state.scaleFactor),
		AnchorPoint = Vector2.new(0.5,0.5),
	})

	return Roact.createFragment(children)
end

function getTrackValuesForEyeDragBox(instance, playhead)
	if not instance then return end

	local trackEyesLookLeft = instance.Tracks[Constants.FacsNames.EyesLookLeft]
	local trackEyesLookRight = instance.Tracks[Constants.FacsNames.EyesLookRight]
	local trackEyesLookUp = instance.Tracks[Constants.FacsNames.EyesLookUp]
	local trackEyesLookDown = instance.Tracks[Constants.FacsNames.EyesLookDown]

	local sliderProps = faceControlsMapping.FacsControlToFaceSliderInfoMap[eyesDragBoxControlName]
	if trackEyesLookLeft or trackEyesLookRight or trackEyesLookUp or trackEyesLookDown then
		local currentValueEyesLookLeft = trackEyesLookLeft and KeyframeUtils.getValue(trackEyesLookLeft, playhead) or 0
		local currentValueEyesLookRight = trackEyesLookRight and KeyframeUtils.getValue(trackEyesLookRight, playhead) or 0
		local currentValueEyesLookUp = trackEyesLookUp and KeyframeUtils.getValue(trackEyesLookUp, playhead) or 0
		local currentValueEyesLookDown = trackEyesLookDown and KeyframeUtils.getValue(trackEyesLookDown, playhead) or 0

		local targetValueX = currentValueEyesLookLeft ~=0 and currentValueEyesLookLeft or -currentValueEyesLookRight
		local targetValueY = currentValueEyesLookUp ~=0 and -currentValueEyesLookUp or currentValueEyesLookDown

		sliderProps.currentValue = Vector2.new(targetValueX, targetValueY)
	else
		sliderProps.currentValue = sliderProps.defaultValue
	end
end

function FaceControlsEditorWindow:makeContextMenuActions(localization)
	local props = self.props
	local actions = {}
	table.insert(actions, {
		Name = localization:getText("ContextMenu", "ResetSelected"),
		ItemSelected = function()
			if self.state.currentlyEditedFacsProperties then
				for i, v in ipairs(self.state.currentlyEditedFacsProperties) do
					triggerValueChanged(props, v, 0)
				end
			end
		end,
	})
	return actions
end

-- get current value of facs to apply on sliders and dragbox:
function FaceControlsEditorWindow:getCurrentValues()
	local props = self.props
	local animationData = props.AnimationData
	local instance = animationData.Instances[instanceForFacs]

	if instance == nil then return end

	local playhead = props.Playhead

	--get zero/ deleted values
	local faceControls = RigUtils.getFaceControls(props.RootInstance)
	if faceControls ~= nil then
		for i, facsName in pairs(Constants.FacsNames) do
			local sliderProps = faceControlsMapping.FacsControlToFaceSliderInfoMap[facsName]

			if instance and instance.Tracks ~= nil then
				local track = instance.Tracks[facsName]
				if track == nil or track.Type ~= Constants.TRACK_TYPES.Facs then
					faceControls[facsName] = 0
					if sliderProps then sliderProps.currentValue = sliderProps.defaultValue end
				end
			else
				faceControls[facsName] = 0
			end
		end
	end

	local tracks = instance.Tracks

	if tracks == nil then return end

	--handle values coming in for eyesdragbox special case (4 facs controlled by one control)
	getTrackValuesForEyeDragBox(instance, playhead)

	--handle values coming in for sliders
	for trackName, track in pairs(instance.Tracks) do
		local sliderProps = faceControlsMapping.FacsControlToFaceSliderInfoMap[trackName]

		local currentTrack = track
		track.Instance = instanceForFacs
		local currentValue = nil

		if sliderProps == nil then continue end

		local crossMapping = Constants.FacsCrossMappings[trackName]

		local sliderGroup = crossMapping.sliderGroup

		sliderProps.currentValue = sliderProps.defaultValue
		currentValue = KeyframeUtils.getValue(currentTrack, playhead)

		if currentValue == nil then continue end

		if sliderGroup then
			--we have a slider which controls multiple facs properties, we have to map the value

			local groupPartnerName = nil
			if crossMapping.indexInGroup == 1 then
				groupPartnerName = sliderGroup[2]
			else
				groupPartnerName = sliderGroup[1]
			end

			if crossMapping.indexInGroup == 1 then

				sliderProps.currentValue =  math.clamp(0.5 - (currentValue * 0.5) , 0, 1)

				local sliderPropsGroupPartner = faceControlsMapping.FacsControlToFaceSliderInfoMap[groupPartnerName]

				--apply slider pos from group facs2
				if  sliderPropsGroupPartner.currentValue>0.5 then

					local currentFacsValueGroupPartner = 0
					local currentTrackGroupPartner = instance.Tracks[groupPartnerName]

					if currentTrackGroupPartner then
						currentFacsValueGroupPartner = KeyframeUtils.getValue(currentTrackGroupPartner, playhead)
					end

					local targetValue = 0.5+  (currentFacsValueGroupPartner * 0.5)
					if currentFacsValueGroupPartner >0 then
						sliderProps.currentValue = targetValue
					end
				end

			else
				--value applied from num input for facs prop 2 in group to group slider
				local sliderPropsGroupPartner = faceControlsMapping.FacsControlToFaceSliderInfoMap[groupPartnerName]
				local targetValue = 0.5 +   (currentValue  * 0.5)

				if currentValue >0 then
					sliderProps.currentValue = targetValue
				end
			end
		else
			sliderProps.currentValue = currentValue
		end
	end
end

function resetAllValuesInMapping()
	local Facs = getFacsListData()
	for _, facs in ipairs(Facs) do
		local sliderProps = faceControlsMapping.FacsControlToFaceSliderInfoMap[facs.Name]
		if sliderProps then sliderProps.currentValue = sliderProps.defaultValue end
	end
	local eyesDragBoxProps = faceControlsMapping.FacsControlToFaceSliderInfoMap[eyesDragBoxControlName]
	eyesDragBoxProps.currentValue = eyesDragBoxProps.defaultValue
end

function FaceControlsEditorWindow:willUpdate(nextProps)
	--reset values on switch rig
	--(user selected a different avatar while ACE and face controls editor open)
	if nextProps.RootInstance ~= self.props.RootInstance then
		local lastEditedRig = self.props.RootInstance
		if lastEditedRig ~= nil then
			RigUtils.resetAllFacsValuesInFaceControls(lastEditedRig)
		end
		resetAllValuesInMapping()
		handleFocusFace(nextProps)
	end
	if nextProps.ShowFaceControlsEditorPanel  ~= self.ShowFaceControlsEditorPanel then
		if nextProps.ShowFaceControlsEditorPanel == true then
			if GetFFlagFaceControlsEditorBugBash2Update() then
				self.ShowFaceControlsEditorPanel = true
			end	
			handleFocusFace(nextProps)
		end
	end
end

function getFacsKeysWithNonZerovalueCount(animationData, playhead)
	local count = 0

	if not animationData then return count end

	local instance = animationData.Instances[instanceForFacs]
	if not instance then return count end

	for i, facsName in pairs(Constants.FacsNames) do
		local track = instance.Tracks[facsName]
		if track then
			local value = KeyframeUtils.getValue(track, playhead)
			if value and value ~= 0 then
				count = count + 1
			end
		end
	end		
	return count
end

--function which only focusses face when AutoFocusFaceEnabled
function handleFocusFace(props)
	if props.AutoFocusFaceEnabled then
		focusFace(props)
	end	
end

--the actual focus face function which does not check AutoFocusFaceEnabled, is also called by F key press handler
function focusFace(props)
	local currentCamera = game.Workspace.CurrentCamera
	local faceControls = RigUtils.getFaceControls(props.RootInstance)
	if faceControls ~= nil then
		local head = faceControls.Parent
		local width = 0.75
		if GetFFlagFaceControlsEditorBugBash2Update() then
			local baseWidth = 0.75
			local baseFOV = 70
			width = baseWidth
			if currentCamera.FieldOfView ~= baseFOV then
				width = baseWidth / (currentCamera.FieldOfView / baseFOV)
			end	
		end
		local center = head.Position + head.CFrame.LookVector * (width * 2)
		currentCamera.CFrame = CFrame.new(center, head.CFrame.Position)
		currentCamera.Focus = head.CFrame		
	end	
end

function FaceControlsEditorWindow:render()
	local localization = self.props.Localization
	local props = self.props
	local canUseFaceControlsEditor = RigUtils.canUseFaceControlsEditor(props.RootInstance)
	--this if is to catch the case where a user had a compatible avatar selected for animating the face
	--but then selects an incompatible avatar like an R6 so then we want to close the facs editor
	if not canUseFaceControlsEditor  then
		self.hideFaceControlsEditor()
		return
	end

	local state = self.state

	local showContextMenu = state.showContextMenu

	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme

	local style = self.props.Stylizer

	local animationData = props.AnimationData
	local playhead = props.Playhead

	if GetFFlagFaceAnimationEditorFocusFaceWithF() then
		local pluginActions = props.PluginActions
		pluginActions:get("FocusCamera").Enabled = true
	end	

	--if animationData ~= nil check is to avoid nil when the user animated one avatar,
	--then selects another avatar (while ACE open) which had no anim yet
	if animationData ~= nil then
		self:getCurrentValues()
	end

	local facsKeysWithNonZerovalueCount = getFacsKeysWithNonZerovalueCount(animationData, playhead)
	local resetAllButtonStyleModifier = nil
	if facsKeysWithNonZerovalueCount == 0 then
		resetAllButtonStyleModifier = StyleModifier.Disabled-- and  facsKeysCount == 0 or nil
	end
	-- create ui elements
	return Roact.createElement(DockWidget, {
		Title = localization:getText("Title", "FaceControlsEditor"),
		Name = "FaceControlsEditor",
		ZIndexBehavior = Enum.ZIndexBehavior.Global,

		InitialDockState = Enum.InitialDockState.Left,
		InitialEnabled = true,
		InitialEnabledShouldOverrideRestore = true,
		Size = SIZE,
		MinSize = MINSIZE,
		OnClose = self.hideFaceControlsEditor,
		Enabled = true,
		[Roact.Ref] = self.onDockWidgetLoaded,
	}, {
		--main panel outer container
		Container = Roact.createElement(Pane, {
			BorderSizePixel = 0,
			BackgroundColor3 = theme.backgroundColor,
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = -2,
			[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChange
		},
		{
			--face front panel container
			FaceFrontContainer = Roact.createElement("Frame", {
				BorderSizePixel = 0,
				BackgroundColor3 = theme.backgroundColor,
				Size = UDim2.new(1, 0, 0, 213),
				Position = UDim2.new(0, Constants.faceControlsEditorDiagramPadding, 0, Constants.faceControlsEditorDiagramPadding),
				ZIndex = -1,
			},
			{
				FaceFrontViewImage = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0, 0),
					Size = UDim2.new(0, Constants.faceControlsEditorFaceFrontDiagramWidth * self.state.scaleFactor, 0, Constants.faceControlsEditorFaceFrontDiagramHeight * self.state.scaleFactor),
					Position = UDim2.new(0, 0, 0, 6),
					Image = "rbxasset://textures/FaceControlsEditor/face_frontView.png",
					BackgroundTransparency = 1,
					ImageTransparency = 0,
					ZIndex = 0,
				}),

				makeFacsOnFaceDiagramSliderUIItems(self, style, localization),

				makeEyesControlDragBox(self, style, localization),

				--face front container close
			}),

			--face side panel container
			FaceSideContainer = Roact.createElement("Frame", {
				BorderSizePixel = 0,
				BackgroundColor3 = theme.backgroundColor,
				Size = UDim2.new(1, 0, 0, 213),
				Position = UDim2.new(0, Constants.faceControlsEditorDiagramPadding, 0,  (Constants.faceControlsEditoSpacingBetweenDiagrams + Constants.faceControlsEditorFaceFrontDiagramHeight) * self.state.scaleFactor),
				BackgroundTransparency = 1,
			},	{

				SideviewImage = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0, 0),
					Size = UDim2.new(0, Constants.faceControlsEditorFaceSideDiagramWidth * self.state.scaleFactor, 0, Constants.faceControlsEditorFaceSideDiagramHeight * self.state.scaleFactor),
					Position = UDim2.new(0, 0, 0, 0),
					Image = "rbxasset://textures/FaceControlsEditor/face_sideView.png",
					BackgroundTransparency = 1,
					LayoutOrder = 1,
				}),
			}),
			--face side container end

			ContextMenu = showContextMenu and Roact.createElement(ContextMenu, {
				Actions = self:makeContextMenuActions(localization),
				OnMenuOpened = self.hideContextMenu,
			}),


			AdditionalControlsContainer = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0,0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 1, -Constants.faceControlsEditorTogglesContainerHeight),
				Size = UDim2.new(0, 200, 0, Constants.faceControlsEditorTogglesContainerHeight),
				ZIndex = 400,
			},
			{
				CheckboxesList = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5),
				}),
				CheckboxSymmetry = Roact.createElement(Checkbox, {
					Text = localization:getText("Title", "Symmetry"),
					Checked = self.props.SymmetryEnabled,
					size = self.props.elementSize,
					OnClick = function(key)
						self.props.SymmetryEnabled = not self.props.SymmetryEnabled
						self.props.SetSymmetryEnabled(self.props.SymmetryEnabled)
					end,
					LayoutOrder = 1,
					ZIndex = 401,
				}),
				CheckboxAutoFocusFace = Roact.createElement(Checkbox, {
					Text = localization:getText("Title", "AutoFocusFace"),
					Checked = self.props.AutoFocusFaceEnabled,
					size = self.props.elementSize,
					LayoutOrder = 2,
					OnClick = function(key)
						self.props.AutoFocusFaceEnabled = not self.props.AutoFocusFaceEnabled
						self.props.SetAutoFocusFaceEnabled(self.props.AutoFocusFaceEnabled)
						handleFocusFace(self.props)
					end,
				}),		
				ResetAllButton = not GetFFlagFaceControlsEditorUIUpdate() and Roact.createElement(Button, {
					Text = localization:getText("Title", "ResetAll"),
					Size = UDim2.new(0, 100, 0, 24),
					Style = "RoundPrimary",
					StyleModifier = resetAllButtonStyleModifier,
					LayoutOrder = 3,
					OnClick = function() 
						props.AddWaypoint()
						RigUtils.resetAllFacsValuesInFaceControls(props.RootInstance)
						local instance = animationData.Instances[instanceForFacs]
						resetAllValuesInMapping()
						for i, facsName in pairs(Constants.FacsNames) do
							local track = instance.Tracks[facsName]
							if track then
								if KeyframeUtils.getValue(track, props.Playhead) then
									triggerValueChanged(props, facsName, 0)
								end
							end
						end												
					end,
				}),				
			}),

			BottomFrame = GetFFlagFaceControlsEditorUIUpdate() and Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 32 + 2 * PADDING),
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundColor3 = theme.ikTheme.headerColor,
				BorderSizePixel = 0,
			}, {
				WideResetAllButton = Roact.createElement(Button, {
					Text = localization:getText("Title", "ResetAll"),
					AnchorPoint = Vector2.new(0.5, 1),
					Position = UDim2.new(0.5, 0, 1, -PADDING),
					IsRound = true,
					Size = UDim2.new(1, -PADDING, 0, 32),
					StyleModifier = resetAllButtonStyleModifier,
					LayoutOrder = 3,					
					OnClick = function() 
						props.AddWaypoint()
						RigUtils.resetAllFacsValuesInFaceControls(props.RootInstance)
						local instance = animationData.Instances[instanceForFacs]
						resetAllValuesInMapping()
						for i, facsName in pairs(Constants.FacsNames) do
							local track = instance.Tracks[facsName]
							if track then
								if KeyframeUtils.getValue(track, props.Playhead) then
									triggerValueChanged(props, facsName, 0)
								end
							end
						end												
					end,
				})
			})				
		})
	})
end

local function mapStateToProps(state, props)
	local status = state.Status

	return {
		Tool = state.Status.Tool,
		SelectedTrackInstances = state.Status.SelectedTrackInstances,
		RootInstance = state.Status.RootInstance,
		faceControlsEditorEnabled = state.Status.FaceControlsEditorEnabled,
		Playhead = state.Status.Playhead,
		Tracks = state.Status.Tracks,
		PlayState = status.PlayState,
		AnimationData = state.AnimationData,
		DefaultRotationType = status.DefaultRotationType,
		SymmetryEnabled = status.SymmetryEnabled,
		AutoFocusFaceEnabled = status.AutoFocusFaceEnabled,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		ValueChanged = function(instanceName, path, trackType, tck, value, analytics)
			dispatch(ValueChanged(instanceName, path, trackType, tck, value, analytics))
		end,

		ValueChanged_deprecated2 = function(instanceName, trackName, trackType, tck, value, analytics)
			dispatch(ValueChanged(instanceName, trackName, trackType, tck, value, analytics))
		end,

		-- Remove when GetFFlagFacialAnimationSupport() and GetFFlagChannelAnimations() are retired
		ValueChanged_deprecated = function(instanceName, trackName, tck, value, analytics)
			dispatch(ValueChanged(instanceName, trackName, tck, value, analytics))
		end,

		AddWaypoint = function()
			dispatch(AddWaypoint())
		end,

		SetSymmetryEnabled = function(symmetryEnabled)
			dispatch(SetSymmetryEnabled(symmetryEnabled))
		end,			

		SetAutoFocusFaceEnabled = function(autoFocusFaceEnabled)
			dispatch(SetAutoFocusFaceEnabled(autoFocusFaceEnabled))
		end,		
	}
end

FaceControlsEditorWindow = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
	PluginActions = ContextServices.PluginActions,
})(FaceControlsEditorWindow)

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(FaceControlsEditorWindow)
