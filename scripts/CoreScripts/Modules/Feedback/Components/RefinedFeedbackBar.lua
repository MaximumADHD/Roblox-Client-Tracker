--[[
	Bottom bar for feedback mode. Contains a hint on the left and interactible buttons on the right
]]
local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local ExperienceStateCaptureService = game:GetService("ExperienceStateCaptureService")
local FeedbackModule = script.Parent.Parent

-- Thunks
local ShowHelpModalThunk = require(FeedbackModule.Thunks.ShowHelpModalThunk)

-- Localizations
local withLocalization = require(CorePackages.Workspace.Packages.Localization).withLocalization

-- Components
local FeedbackBarHint = require(script.Parent.FeedbackBarHint)
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)
local Cryo = require(CorePackages.Cryo)

-- UIBlox Library
local withStyle = UIBlox.Core.Style.withStyle
local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local HINT_INNER_PADDING = 8 -- Referencing from UIBlox packages
local ICON_SIZE = 36 -- Referencing from (App.Menu.MenuConstants).DefaultKeyLabelSize

local CONTROLLER_BAR_HEIGHT = 72
local SCREENSIDE_PADDING = 24
local PADDING = 40
local MINIMUM_DIST_BETWEEN_LEFT_AND_RIGHT = 36
local BIG_ENOUGH_NOT_TO_WRAP = 10000
local INITIAL_REQUIRED_SPACE = (SCREENSIDE_PADDING * 2) + MINIMUM_DIST_BETWEEN_LEFT_AND_RIGHT

local RefinedFeedbackBar = Roact.PureComponent:extend("RefinedFeedbackBar")

-- Component specific extra padding
local function GetTextSize(...)
	local textSize = TextService:GetTextSize(...)
	return textSize + Vector2.new(2, 2)
end

local hintValidation = t.strictInterface({
	-- Shortcut description
	text = t.string,
})

RefinedFeedbackBar.validateProps = t.strictInterface({
	leftHint = hintValidation,
})

function RefinedFeedbackBar:init()
	self.state = {
		barWidth = 0,
		hintStringsConcat = nil,
		requiredSpace = nil,
		hintRatios = nil,
	}

	self.onExitFeedbackMode = function()
		ExperienceStateCaptureService:ToggleCaptureMode()
	end

	self.openHelpModal = function()
		self.props.showHelpModal(true)
	end
end

-- TODO: memoize this function so not recomputed at each render
function RefinedFeedbackBar.calculateHintRatios(leftHint)
	local requiredSpace = INITIAL_REQUIRED_SPACE
	local hintStringsConcat = ""

	--  calculate the relative sizes of all the hint label text
	local hintSizes = {}
	local hintSizeSum = 0
	local mergedHints = Cryo.List.join({ leftHint }, {})
	for _, hint in ipairs(mergedHints) do
		-- using 17 as font size and font enum 2 as font (just placeholders,
		-- these values don't matter for relative size calculations)
		hintSizes[hint.text] =
			GetTextSize(hint.text, 17, 2, Vector2.new(BIG_ENOUGH_NOT_TO_WRAP, BIG_ENOUGH_NOT_TO_WRAP)).X

		hintSizeSum = hintSizeSum + hintSizes[hint.text]
		-- add icon size and padding for within each hint
		requiredSpace = requiredSpace + ICON_SIZE + HINT_INNER_PADDING

		hintStringsConcat = hintStringsConcat .. hint.text
	end

	for id, hintSize in pairs(hintSizes) do
		hintSizes[id] = hintSize / hintSizeSum
	end

	-- add padding for between each rightside hint (subtract 2, one for Back button and one for first right side hint.)
	local hintCount = #mergedHints
	requiredSpace = requiredSpace + (math.max((hintCount - 2), 0) * PADDING)

	return hintSizes, requiredSpace, hintStringsConcat
end

function RefinedFeedbackBar.getDerivedStateFromProps(nextProps)
	local hintRatios, requiredSpace, hintStringsConcat = RefinedFeedbackBar.calculateHintRatios(nextProps.leftHint)

	return {
		hintRatios = hintRatios,
		requiredSpace = requiredSpace,
		hintStringsConcat = hintStringsConcat,
	}
end

-- Helper function for potential better hint size calculations, add usage later if needed
function RefinedFeedbackBar:calculateHintSize(barWidth, font)
	-- calculate available/usable space by subtracting space for padding/icons from screen width.
	local availableSpace = barWidth - self.state.requiredSpace

	local MAX_FONT_SIZE = font.Header2.RelativeSize * font.BaseSize
	local MIN_FONT_SIZE = font.Header2.RelativeMinSize * font.BaseSize

	-- If we use the minimum font size, can we fit it in availabe space?
	-- if so, calculate font size, otherwise resort to truncation.
	local minSize = GetTextSize(
		self.state.hintStringsConcat,
		MIN_FONT_SIZE,
		font.Header2.Font,
		Vector2.new(BIG_ENOUGH_NOT_TO_WRAP, BIG_ENOUGH_NOT_TO_WRAP)
	).X

	if minSize <= availableSpace then
		-- Linear regression to find best font size
		local maxSize = GetTextSize(
			self.state.hintStringsConcat,
			MAX_FONT_SIZE,
			font.Header2.Font,
			Vector2.new(BIG_ENOUGH_NOT_TO_WRAP, BIG_ENOUGH_NOT_TO_WRAP)
		).X
		local m = (MAX_FONT_SIZE - MIN_FONT_SIZE) / (maxSize - minSize)
		local b = MAX_FONT_SIZE - (m * maxSize)

		return nil, math.clamp(availableSpace * m + b, MIN_FONT_SIZE, MAX_FONT_SIZE)
	else
		-- if we've bottomed out the font size, resort to resizing the GenericTextLabels which will truncate text
		local recalcedHintSizes = {}
		for hint, size in pairs(self.state.hintRatios) do
			recalcedHintSizes[hint] = size * availableSpace
		end

		return recalcedHintSizes
	end
end

function RefinedFeedbackBar:render()
	return withStyle(function(style)
		local theme = style.Theme
		local function makeHint(hint)
			return Roact.createElement(FeedbackBarHint, hint)
		end

		return Roact.createElement("Frame", {
			BorderSizePixel = 0,
			BackgroundTransparency = theme.BackgroundUIContrast.Transparency,
			BackgroundColor3 = theme.BackgroundUIContrast.Color,
			Size = UDim2.new(1, 0, 0, CONTROLLER_BAR_HEIGHT),
			Position = UDim2.fromScale(0, 1),
			AnchorPoint = Vector2.new(0, 1),
			[Roact.Change.AbsoluteSize] = function(rbx)
				self:setState({
					barWidth = rbx.AbsoluteSize.X,
				})
			end,
			[Roact.Event.AncestryChanged] = function(rbx)
				self:setState({
					barWidth = rbx.AbsoluteSize.X,
				})
			end,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, SCREENSIDE_PADDING),
				PaddingRight = UDim.new(0, SCREENSIDE_PADDING),
			}),

			LeftFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(0.5, 1),
			}, {
				Roact.createElement("UIListLayout", {
					key = "Layout",
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, PADDING),
				}),

				makeHint(self.props.leftHint),
			}),

			RightFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(0.35, 1),
				Position = UDim2.fromScale(1, 0),
				AnchorPoint = Vector2.new(1, 0),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, PADDING),
				}),
				Buttons = withLocalization({
					helpButtonText = "CoreScripts.Feedback.FeedbackBar.HelpButton",
					exitFeedbackButtonText = "CoreScripts.Feedback.FeedbackBar.ExitFeedbackButton",
				})(function(localized)
					return Roact.createElement(ButtonStack, {
						buttonHeight = 50,
						buttons = {
							{
								buttonType = ButtonType.Secondary,
								props = {
									onActivated = self.openHelpModal,
									text = localized.helpButtonText,
								},
							},
							{
								buttonType = ButtonType.PrimarySystem,
								props = {
									isDisabled = false,
									onActivated = self.onExitFeedbackMode,
									text = localized.exitFeedbackButtonText,
								},
							},
						},
						forcedFillDirection = Enum.FillDirection.Horizontal,
					})
				end),
			}),
		})
	end)
end

return RoactRodux.connect(function()
	return {}
end, function(dispatch)
	return {
		showHelpModal = function(newShowHelpModalStatus)
			dispatch(ShowHelpModalThunk(newShowHelpModalStatus))
		end,
	}
end)(RefinedFeedbackBar)
