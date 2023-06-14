--[[
	EmoteThumbnailEditor
	A view embedded inside InteractiveAlert that enables emote thumbnail editing.
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local t = require(CorePackages.Packages.t)
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local EmoteUtility = require(CorePackages.Thumbnailing).EmoteUtility

local UIBlox = require(CorePackages.UIBlox)
local withStyle = UIBlox.Style.withStyle
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local SystemSlider = UIBlox.App.Slider.SystemSlider

local EmoteThumbnailParameters = require(script.Parent.EmoteThumbnailParameters)
local EmoteThumbnailView = require(script.Parent.EmoteThumbnailView)

local LABEL_HEIGHT = 15
local LABEL_TEXT_SIZE = 12

local THUMBNAIL_SIZE_PIXELS = 150
local MARGIN = 10
local LEVERS_HEIGHT = 102
local EDITOR_HEIGHT_IN_PORTRAIT_MODE = THUMBNAIL_SIZE_PIXELS + MARGIN + LEVERS_HEIGHT + 159 -- 159 is the height of everything beside content
local PORTRAIT_HEIGHT_THRESHILD = EDITOR_HEIGHT_IN_PORTRAIT_MODE + 60 -- additional 60 pixels margin

local Constants = {
	CurveAnimationTimeIncrements = 0.01,
}

type Option = {
	Precision: number,
	Range: NumberRange,
	Default: number,
	Increments: number,
}

local Options: { Rotation: Option } = {
	Rotation = {
		Precision = 0,
		Range = NumberRange.new(0, 360),
		Default = 0,
		Increments = 361,
	},
}

local EmoteThumbnailEditor = Roact.PureComponent:extend("EmoteThumbnailEditor")

EmoteThumbnailEditor.validateProps = t.strictInterface({
	screenSize = t.Vector2,

	animationClip = t.instanceIsA("AnimationClip"),
	initialThumbnailParameters = t.optional(EmoteThumbnailParameters.validate),
	closePromptCallback = t.callback,
	updateThumbnailCallback = t.callback,
})

function EmoteThumbnailEditor:init()
	local thumbnailParameters: EmoteThumbnailParameters.Type = self.props.initialThumbnailParameters
		or EmoteThumbnailParameters.defaultParameters

	self:setState({
		thumbnailParameters = thumbnailParameters,
	})

	self.onCancelPressed = function()
		self.props.closePromptCallback()
	end

	self.onUpdatePressed = function()
		local currentParameters: EmoteThumbnailParameters.Type = self.state.thumbnailParameters
		self.props.updateThumbnailCallback(currentParameters)
		self.props.closePromptCallback()
	end

	self.onRotateChanged = function(value)
		local newParameters: EmoteThumbnailParameters.Type = table.clone(self.state.thumbnailParameters)
		newParameters.thumbnailCharacterRotation = value
		self:updateThumbnailParameters(newParameters)
	end

	self.onKeyframeOrTimeChanged = function(value)
		local newParameters: EmoteThumbnailParameters.Type = table.clone(self.state.thumbnailParameters)
		-- only one of those parameters will be used in the final product based on the type of AnimationClip (KeyframeSequence or CurveAnimation)
		newParameters.thumbnailTime = value
		newParameters.thumbnailKeyframe = value
		self:updateThumbnailParameters(newParameters)
	end

	self.rotationSliderRef = Roact.createRef()
	self.timeSliderRef = Roact.createRef()

	self:updateSliderValuesForAnimationClip()
end

function EmoteThumbnailEditor:updateSliderValuesForAnimationClip()
	local props = self.props
	local timeSliderMin
	local timeSliderMax
	local timeSliderStepInterval

	if props.animationClip:IsA("KeyframeSequence") then
		local emoteKeyframes = props.animationClip:GetKeyframes()
		timeSliderMin = 1
		timeSliderMax = #emoteKeyframes
		timeSliderStepInterval = 1
	elseif props.animationClip:IsA("CurveAnimation") then
		local totalTime = EmoteUtility.GetCurveAnimationTimeLength(props.animationClip)
		local totalIncrements = math.floor(totalTime / Constants.CurveAnimationTimeIncrements)
		timeSliderMin = 0
		timeSliderMax = totalIncrements * Constants.CurveAnimationTimeIncrements
		timeSliderStepInterval = Constants.CurveAnimationTimeIncrements
	else
		error("Unsupported animation type:", props.animationClip.ClassName)
	end

	self:setState({
		timeSliderMin = timeSliderMin,
		timeSliderMax = timeSliderMax,
		timeSliderStepInterval = timeSliderStepInterval,
	})
end

function EmoteThumbnailEditor:updateThumbnailParameters(newParameters: EmoteThumbnailParameters.Type)
	self:setState({
		thumbnailParameters = newParameters,
	})
end

function EmoteThumbnailEditor:renderMiddle(localized)
	return withStyle(function(style)
		local font = style.Font
		local theme = style.Theme

		local screenSize = self.props.screenSize
		local showInPortrait = screenSize.Y > PORTRAIT_HEIGHT_THRESHILD

		local layoutParameters = {}
		if showInPortrait then
			layoutParameters.contentSize = UDim2.new(1, 0, 0, THUMBNAIL_SIZE_PIXELS + MARGIN + LEVERS_HEIGHT)
			layoutParameters.thumbnailPosition = UDim2.new(0.5, 0, 0, 0)
			layoutParameters.thumbnailAnchorPoint = Vector2.new(0.5, 0)
			layoutParameters.leversPosition = UDim2.new(0, 0, 0, THUMBNAIL_SIZE_PIXELS + MARGIN)
			layoutParameters.leversSize = UDim2.new(1, 0, 0, LEVERS_HEIGHT)
		else
			layoutParameters.contentSize = UDim2.new(1, 0, 0, THUMBNAIL_SIZE_PIXELS)
			layoutParameters.thumbnailPosition = UDim2.new(0, 0, 0, 0)
			layoutParameters.thumbnailAnchorPoint = Vector2.new(0, 0)
			layoutParameters.leversPosition = UDim2.new(0, THUMBNAIL_SIZE_PIXELS + MARGIN, 0, 0)
			layoutParameters.leversSize = UDim2.new(1, -THUMBNAIL_SIZE_PIXELS - MARGIN, 0, LEVERS_HEIGHT)
		end

		local thumbnailParameters = self.state.thumbnailParameters
		local thumbnailKeyframe = thumbnailParameters.thumbnailKeyframe -- TODO: use disctinction between time and keyframe
		local thumbnailCharacterRotation = thumbnailParameters.thumbnailCharacterRotation

		local function getStepIntervalForOption(option: Option)
			return (option.Range.Max - option.Range.Min) / (option.Increments - 1)
		end

		return Roact.createElement(RoactGamepad.Focusable.Frame, {
			Size = layoutParameters.contentSize,
			BackgroundColor3 = Color3.new(1, 0, 1),
			BackgroundTransparency = 1,
			[Roact.Ref] = self.middleContentRef,
		}, {
			TopSection = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, {
				ThumbnailViewParent = Roact.createElement("Frame", {
					LayoutOrder = 0,
					Position = layoutParameters.thumbnailPosition,
					AnchorPoint = layoutParameters.thumbnailAnchorPoint,
					Size = UDim2.new(0, THUMBNAIL_SIZE_PIXELS, 0, THUMBNAIL_SIZE_PIXELS),
					BackgroundColor3 = Color3.new(1, 1, 0),
					BackgroundTransparency = 1,
				}, {
					EmoteThumbnailView = Roact.createElement(EmoteThumbnailView, {
						position = UDim2.new(0.5, 0, 0.5, 0),
						anchorPoint = Vector2.new(0.5, 0.5),
						animationClip = self.props.animationClip,
						thumbnailParameters = self.state.thumbnailParameters,
					}),
				}),

				Levers = Roact.createElement("Frame", {
					LayoutOrder = 1,
					Size = layoutParameters.leversSize,
					AnchorPoint = Vector2.new(0, 0),
					Position = layoutParameters.leversPosition,
					BackgroundColor3 = Color3.new(1, 0, 0),
					BackgroundTransparency = 1,
				}, {
					ListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						SortOrder = Enum.SortOrder.LayoutOrder,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
					}),

					FrameDescriptionLabel = Roact.createElement("TextLabel", {
						LayoutOrder = 0,
						Size = UDim2.new(1, 0, 0, LABEL_HEIGHT),
						Font = font.Body.Font,
						TextSize = LABEL_TEXT_SIZE,
						Text = localized.timeLabelText,
						TextColor3 = theme.TextDefault.Color,
						BackgroundTransparency = 1,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),

					TimeSlider = Roact.createElement(SystemSlider, {
						layoutOrder = 1,
						min = self.state.timeSliderMin,
						max = self.state.timeSliderMax,
						stepInterval = self.state.timeSliderStepInterval,
						value = thumbnailKeyframe,
						onValueChanged = self.onKeyframeOrTimeChanged,
						width = UDim.new(1, 0),
						position = UDim2.new(0, 0, 0.5, 0),
						anchorPoint = Vector2.new(0, 0.5),
						NextSelectionDown = self.rotationSliderRef,
						[Roact.Ref] = self.timeSliderRef,
					}),
					RotationDescriptionLabel = Roact.createElement("TextLabel", {
						LayoutOrder = 2,
						Size = UDim2.new(1, 0, 0, LABEL_HEIGHT),
						Font = font.Body.Font,
						TextSize = LABEL_TEXT_SIZE,
						Text = localized.rotationLabelText,
						TextColor3 = theme.TextDefault.Color,
						BackgroundTransparency = 1,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
					RotationSlider = Roact.createElement(SystemSlider, {
						layoutOrder = 3,
						min = Options.Rotation.Range.Min,
						max = Options.Rotation.Range.Max,
						stepInterval = getStepIntervalForOption(Options.Rotation),
						value = thumbnailCharacterRotation,
						onValueChanged = self.onRotateChanged,
						width = UDim.new(1, 0),
						position = UDim2.new(0, 0, 0.5, 0),
						anchorPoint = Vector2.new(0, 0.5),
						NextSelectionUp = self.timeSliderRef,
						[Roact.Ref] = self.rotationSliderRef,
					}),
				}),
			}),
		})
	end)
end

function EmoteThumbnailEditor:renderAlertLocalized(localized)
	return Roact.createElement(InteractiveAlert, {
		title = localized.titleText or "",
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = self.onCancelPressed,
						text = localized.cancelButtonText,
					},
					isDefaultChild = true,
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = self.onUpdatePressed,
						text = localized.updateButtonText,
					},
					isDefaultChild = false,
				},
			},
		},
		middleContent = function()
			return self:renderMiddle(localized)
		end,
		screenSize = self.props.screenSize,
		defaultChildRef = self.props.defaultChildRef,
		isMiddleContentFocusable = true,
	})
end

local function GetLocalizedStrings()
	local strings = {
		cancelButtonText = RobloxTranslator:FormatByKey("CoreScripts.EmoteThumbnailEditor.Action.Cancel"),
		updateButtonText = RobloxTranslator:FormatByKey("CoreScripts.EmoteThumbnailEditor.Action.Update"),
		titleText = RobloxTranslator:FormatByKey("CoreScripts.EmoteThumbnailEditor.Heading.EditThumbnail"),
		rotationLabelText = RobloxTranslator:FormatByKey("CoreScripts.EmoteThumbnailEditor.Label.Rotation"),
		timeLabelText = RobloxTranslator:FormatByKey("CoreScripts.EmoteThumbnailEditor.Label.Time"),
	}

	return strings
end

function EmoteThumbnailEditor:render()
	local localized = GetLocalizedStrings()
	return self:renderAlertLocalized(localized)
end

return EmoteThumbnailEditor
