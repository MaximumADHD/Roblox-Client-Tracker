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

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local FacsUtils = require(Plugin.Src.Util.FacsUtils)
local Button = Framework.UI.Button

local ScrollingFrame = Framework.UI.ScrollingFrame

local StudioUI = require(Plugin.Packages.Framework).StudioUI
local DockWidget = StudioUI.DockWidget

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local RigUtils = require(Plugin.Src.Util.RigUtils)

local Input = require(Plugin.Src.Util.Input)

local FaceControlsEditorWindow = Roact.PureComponent:extend("FaceControlsEditorWindow")

local SIZE = Vector2.new(240, 440)
local RADIO_BUTTON_GROUP_HEIGHT = 32
local PADDING = 8

local Slider = Framework.UI.Slider

local Checkbox = Framework.UI.Checkbox

local Pane = Framework.UI.Pane

local Scrubber = nil

local noop = function() end

local RangeSlider = Framework.UI.RangeSlider

local MAX_VALUE = 5
local MIN_VALUE = 0

local Constants = require(Plugin.Src.Util.Constants)
local ValueChanged = require(Plugin.Src.Thunks.ValueChanged)
local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local SetSymmetryEnabled = require(Plugin.Src.Actions.SetSymmetryEnabled)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagKeyframeUtilsGetValueCleanup = require(Plugin.LuaFlags.GetFFlagKeyframeUtilsGetValueCleanup)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)

local Tooltip = require(Plugin.Src.Components.Tooltip)

local Cryo = require(Plugin.Packages.Cryo)

local instanceForFacs = "Root"

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)

local faceControlsMapping = require(script:WaitForChild("FaceControlsMapping"))

function FaceControlsEditorWindow:init()
	self.state = {
		treeArray = {},
	}

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
			if selectedTrack == node then
				currentIndex = index
				break
			end
		end

		local newIndex = math.clamp(currentIndex + increment, 1, #treeArray)
		SetSelectedTracks({treeArray[newIndex]})
	end
end

function FaceControlsEditorWindow:willUnmount()
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

function makeFacsOnFaceDiagramSliderUIItems (self, style, localization)
	local children = {}

	local theme = self.props.Stylizer.PluginTheme

	local Facs = getFacsListData()
	for _, facs in ipairs(Facs) do
		local name = "Facs_" .. facs.Name

		local facsSliderProps = faceControlsMapping.FacsControlToFaceSliderInfoMap[facs.Name]

		local symmetryPartnerProps = nil
		local symmetryPartner = nil
		if self.props.SymmetryEnabled then
			symmetryPartner = Constants.FacsCrossMappings[facs.Name].symmetryPartner
			if symmetryPartner then
				symmetryPartnerProps = faceControlsMapping.FacsControlToFaceSliderInfoMap[symmetryPartner]
			end
		end

		local itemWidth = 43
		if facsSliderProps.customWidth then
			itemWidth = facsSliderProps.customWidth
		end

		children[name.."_rotatedSliderContainer"] = Roact.createElement("Frame", {
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Position = facsSliderProps.position,
			Size = UDim2.new(0, itemWidth, 0, 2),
			Rotation = facsSliderProps.rotation,
			LayoutOrder = 2,
			ZIndex = 100,
		},

		{
			Scrubber = Roact.createElement(Slider, {
				Style = theme.faceSliderTheme,
				Disabled = false,
				Min = 0,
				Max = 1,

				Value = math.clamp(facsSliderProps.currentValue, 0, 1),
				OnValueChanged = function(value)

					facsSliderProps.currentValue = value
					self:setState({
						Value = math.clamp(facsSliderProps.currentValue, 0, 1)
					})
					local instanceName = instanceForFacs
					local trackName = facs.Name
					local props = self.props

					if GetFFlagChannelAnimations() then
						props.ValueChanged(instanceName, {trackName}, Constants.TRACK_TYPES.Facs, props.Playhead, value, props.Analytics)
					else
						props.ValueChanged_deprecated2(instanceName, trackName, Constants.TRACK_TYPES.Facs, props.Playhead, value, props.Analytics)
					end

					if self.props.SymmetryEnabled then
						if symmetryPartnerProps then
							symmetryPartnerProps.currentValue = value

							if GetFFlagChannelAnimations() then
								props.ValueChanged(instanceName, {symmetryPartner}, Constants.TRACK_TYPES.Facs, props.Playhead, value, props.Analytics)
							else
								props.ValueChanged_deprecated2(instanceName, symmetryPartner, Constants.TRACK_TYPES.Facs, props.Playhead, value, props.Analytics)
							end

						end
					end

				end,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(1, 0, 0, 8),
				AnchorPoint = Vector2.new(0.5,0.5),
			}),
		})
	end
	return Roact.createFragment(children)
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


	local theme = props.Stylizer.PluginTheme
	local rootInstance = props.RootInstance
	local faceControlsEditorEnabled = props.FaceControlsEditorEnabled
	local selectedTrack = props.SelectedTrack
	local SetSelectedTracks = props.SetSelectedTracks
	local toggleFaceControlsEditorEnabled = props.ToggleFaceControlsEditorEnabled

	local style = self.props.Stylizer

	local animationData = props.AnimationData
	local playhead = props.Playhead

	local instance = animationData.Instances[instanceForFacs]
	if instance ~= nil then
		local tracks = instance.Tracks
		if tracks ~= nil then
			-- get current value of facs to apply on sliders:
			for trackName, track in pairs(instance.Tracks) do
				local sliderProps = faceControlsMapping.FacsControlToFaceSliderInfoMap[trackName]

				if sliderProps then

					local currentTrack = track
					track.Instance = instanceForFacs

					local currentValue = nil
					sliderProps.currentValue = 0

					if (GetFFlagChannelAnimations() or GetFFlagKeyframeUtilsGetValueCleanup()) then
						currentValue = KeyframeUtils.getValue(currentTrack, playhead)
					else
						currentValue = KeyframeUtils:getValue_deprecated(currentTrack, playhead)
					end

					if currentValue then
						sliderProps.currentValue = currentValue
					end
				end
			end

		end
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
		MinSize = SIZE,
		OnClose = self.hideFaceControlsEditor,
		Enabled = true,
		[Roact.Ref] = self.onDockWidgetLoaded,
	}, {
		--main panel outer container
		Container = Roact.createElement(Pane, {
			BorderSizePixel = 0,
			BackgroundColor3 = theme.backgroundColor,
			Size = UDim2.new(1, 0, 1, 0),
		},
		{

			--face front panel container
			FaceFrontContainer = Roact.createElement("Frame", {
				BorderSizePixel = 0,
				BackgroundColor3 = theme.backgroundColor,
				Size = UDim2.new(1, 0, 0, 213),
				Position = UDim2.new(0, -25, 0, 32),
			},
			{

				FaceFrontViewImage = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0, 0),
					Size = UDim2.new(0, 220, 0, 310),
					Position = UDim2.new(0, 35, 0, 6),
					Image = "rbxasset://textures/FaceControlsEditor/face_frontView.png",
					BackgroundTransparency = 1,
				}),

				makeFacsOnFaceDiagramSliderUIItems(self, style, localization),
				--face front container close
			}),

			--face side panel container
			FaceSideContainer = Roact.createElement("Frame", {
				BorderSizePixel = 0,
				BackgroundColor3 = theme.backgroundColor,
				Size = UDim2.new(1, 0, 0, 213),
				Position = UDim2.new(0, 0, 0, 412),
			},	{

				SideviewImage = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0, 0),
					Size = UDim2.new(0, 90, 0, 273),
					Position = UDim2.new(0, 83, 0, 1),
					Image = "rbxasset://textures/FaceControlsEditor/face_sideView.png",
					BackgroundTransparency = 1,
					LayoutOrder = 1,
				}),
			}),
			--face side container end

			AdditionalTogglesContainer = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0,0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0, 745),
				Size = UDim2.new(0, 200, 0, 90),
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
				}),				
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
	}
end

local function mapDispatchToProps(dispatch)
	return {
		ValueChanged = function(instanceName, path, trackType, tck, value, analytics)
			dispatch(ValueChanged(instanceName, path, trackType, tck, value, analytics))
		end,

		ValueChanged_deprecated2 = function(instanceName, trackName, trackType, tick, value, analytics)
			dispatch(ValueChanged(instanceName, trackName, trackType, tick, value, analytics))
		end,

		-- Remove when GetFFlagFacialAnimationSupport() and GetFFlagChannelAnimations() are retired
		ValueChanged_deprecated = function(instanceName, trackName, tick, value, analytics)
			dispatch(ValueChanged(instanceName, trackName, tick, value, analytics))
		end,

		AddWaypoint = function()
			dispatch(AddWaypoint())
		end,

		SetSymmetryEnabled = function(symmetryEnabled)
			dispatch(SetSymmetryEnabled(symmetryEnabled))
		end,
	}
end

FaceControlsEditorWindow = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
})(FaceControlsEditorWindow)

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(FaceControlsEditorWindow)
