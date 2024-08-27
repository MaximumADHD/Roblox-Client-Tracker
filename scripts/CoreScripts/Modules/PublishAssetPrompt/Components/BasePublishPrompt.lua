--[[
	The base prompt for other prompts like PublishAvatarPrompt or PublishAssetPrompt.
    Other prompts can pass in body components that will be parented under a frame under
    the NameTextBox. For example, they can pass in the Viewport, description text box,
	and item description rows.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local ExperienceAuthService = game:GetService("ExperienceAuthService")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local UIBlox = require(CorePackages.UIBlox)
local withStyle = UIBlox.Style.withStyle
local FullPageModal = UIBlox.App.Dialog.Modal.FullPageModal
local Overlay = UIBlox.App.Dialog.Overlay
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local GamepadUtils = require(CorePackages.Workspace.Packages.AppCommonLib).Utils.GamepadUtils

local Components = script.Parent
local LabeledTextBox = require(Components.Common.LabeledTextBox)
local CloseOpenPrompt = require(script.Parent.Parent.Actions.CloseOpenPrompt)
local SetPromptVisibility = require(script.Parent.Parent.Actions.SetPromptVisibility)
local LeaveCreationAlert = require(script.Parent.LeaveCreationAlert)
local Constants = require(script.Parent.Parent.Constants)
local PreviewViewport = require(Components.Common.PreviewViewport)
local ValidationErrorModal = require(Components.ValidationErrorModal)

local NAME_HEIGHT_PIXELS = 30
local DISCLAIMER_HEIGHT_PIXELS = 50
local LABEL_PADDING = 24
local BOTTOM_GRADIENT_HEIGHT = 5
local DISTANCE_FROM_TOP = 37

local DISCLAIMER_TEXT = "disclaimer"
local SUBMIT_TEXT = "submit"

local ROBUX_EMOJI_STRING = "\u{E002}"

local BasePublishPrompt = Roact.PureComponent:extend("BasePublishPrompt")
local STICK_MAX_SPEED = 1000
-- full height is more than 1 because the footer covers part of the bottom
local FULL_HEIGHT = UDim.new(1.5, 0)

BasePublishPrompt.validateProps = t.strictInterface({
	screenSize = t.Vector2,
	nameLabel = t.string,
	defaultName = t.string,
	promptBody = t.any,
	titleText = t.string,
	showingPreviewView = t.boolean,
	closePreviewView = t.callback,
	-- If we need to fetch the model, the asset may temporarily be nil
	asset = t.optional(t.union(t.instanceOf("Model"), t.instanceIsA("AnimationClip"))),
	onNameUpdated = t.callback,
	canSubmit = t.callback,
	onSubmit = t.callback,
	enableInputDelayed = t.optional(t.boolean),
	isDelayedInput = t.optional(t.boolean),
	delayInputSeconds = t.optional(t.number),
	-- priceInRobux should only be nil while fetching price;
	-- if the item is free, it should be 0
	priceInRobux = t.optional(t.number),
	-- If an additional contrast overlay should be shown on top of the prompt
	showTopScrim = t.optional(t.boolean),

	-- Mapped state
	guid = t.any,
	scopes = t.any,
	errorMessage = t.optional(t.string),
	promptVisible = t.optional(t.boolean),

	-- Mapped dispatch functions
	closePrompt = t.callback,
	SetPromptVisibility = t.callback,
})

function BasePublishPrompt:init()
	self.swipeScrollingFrameRef = Roact.createRef()
	self.inputState = nil
	self.inputObject = nil
	self.connection = nil

	-- Prompt should be visible when this component is mounted
	self.props.SetPromptVisibility(true)

	self.storeInput = function(actionName, inputState, inputObject)
		self.inputState = inputState
		self.inputObject = inputObject

		return Enum.ContextActionResult.Sink
	end

	self:setState({
		-- if showUnsavedDataWarning is false, show the prompt
		-- if true, we are showing a warning that says data is lost when prompt is closed
		showUnsavedDataWarning = false,
	})
	-- TODO: AVBURST-13016 Add back checking name for spaces or special characters after investigating
	self.closePrompt = function()
		self.props.closePrompt()
		self.props.SetPromptVisibility(false)
	end

	self.showUnsavedDataWarning = function()
		self:setState({
			showUnsavedDataWarning = true,
		})
	end

	self.cancelClosePrompt = function()
		self:setState({
			showUnsavedDataWarning = false,
		})
	end

	self.denyAndClose = function()
		ExperienceAuthService:ScopeCheckUIComplete(
			self.props.guid,
			self.props.scopes,
			Enum.ScopeCheckResult.ConsentDenied,
			{} -- empty metadata
		)
		self.closePrompt()
	end

	-- Intended to do what the Parent wants on submission before closing the prompt
	self.confirmAndUpload = function()
		if self.props.canSubmit() then
			self.props.onSubmit()
		end
	end
end

function BasePublishPrompt:setUpGamepad()
	if UserInputService.GamepadEnabled then
		ContextActionService:UnbindCoreAction("ScrollPrompt")
		ContextActionService:BindCoreAction("ScrollPrompt", self.storeInput, false, Enum.KeyCode.Thumbstick2)
		self.connection = RunService.RenderStepped:Connect(function(deltaTime)
			if self.inputState == Enum.UserInputState.Change and self.inputObject then
				local stickInput = self.inputObject.Position
				local swipeScrollingFrame = self.swipeScrollingFrameRef.current
				local yPos = swipeScrollingFrame.CanvasPosition.Y
				local stickVector = GamepadUtils.normalizeStickByDeadzone(stickInput)
				local newYPos = yPos + deltaTime * -stickVector.Y * STICK_MAX_SPEED
				local frameHeight = swipeScrollingFrame.AbsoluteSize.Y
				frameHeight = frameHeight * FULL_HEIGHT.Scale + FULL_HEIGHT.Offset
				if newYPos <= frameHeight then
					swipeScrollingFrame.CanvasPosition = Vector2.new(0, newYPos)
				end
			end
		end)

		ContextActionService:UnbindCoreAction("ClosePrompt")
		ContextActionService:BindCoreAction("ClosePrompt", self.storeInput, false, Enum.KeyCode.ButtonB)
	end
end

function BasePublishPrompt:cleanupGamepad()
	ContextActionService:UnbindCoreAction("ClosePrompt")
	ContextActionService:UnbindCoreAction("ScrollPrompt")
	if self.connection then
		self.connection:Disconnect()
	end
end

function BasePublishPrompt:didMount()
	self:setUpGamepad()
end

function BasePublishPrompt:didUpdate(prevProps)
	--[[
		When the purchase is confirmed via the economy prompt, the promptVisible
		prop will change to false, so we close the prompt here.
	]]
	if prevProps.promptVisible ~= self.props.promptVisible and self.props.promptVisible == false then
		self.closePrompt()
	end
end

function BasePublishPrompt:renderMiddle(localized)
	return withStyle(function(style)
		local font = style.Font
		local baseSize: number = font.BaseSize
		local theme = style.Theme

		-- Disclaimer Style
		local disclaimerStyle = font.Footer
		local disclaimerColor = theme.TextDefault.Color

		return Roact.createFragment({
			ScrollingFrame = Roact.createElement("ScrollingFrame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, -DISCLAIMER_HEIGHT_PIXELS),
				CanvasSize = UDim2.new(1, 0, 0, 0),
				ScrollBarThickness = 0,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				Selectable = false,
				[Roact.Ref] = self.swipeScrollingFrameRef,
			}, {
				layout = Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
				}),
				padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, Constants.PromptSidePadding),
					PaddingRight = UDim.new(0, Constants.PromptSidePadding),
				}),
				NameInput = Roact.createElement(LabeledTextBox, {
					LayoutOrder = 1,
					labelText = self.props.nameLabel,
					topPadding = LABEL_PADDING,
					defaultText = self.props.defaultName,
					-- TODO: Investigate previous name updated AVBURST-13016 and name moderation AVBURST-12725, for now use placeholder
					onTextUpdated = self.props.onNameUpdated,
					textBoxHeight = NAME_HEIGHT_PIXELS,
				}),
				PromptBody = Roact.createElement("Frame", {
					Size = UDim2.fromScale(1, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}, self.props.promptBody),
			}),
			BottomGradient = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, BOTTOM_GRADIENT_HEIGHT),
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 0, 1, -DISCLAIMER_HEIGHT_PIXELS),
				-- background frame to Gradient must be white to get correct gradient colors
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				ZIndex = 2, -- This gradient needs to show above the entries
			}, {
				gradient = Roact.createElement("UIGradient", {
					Rotation = 270,
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, theme.BackgroundUIDefault.Color),
						ColorSequenceKeypoint.new(1, theme.BackgroundUIDefault.Color),
					}),
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, theme.BackgroundUIDefault.Transparency),
						NumberSequenceKeypoint.new(0.5, theme.BackgroundUIDefault.Transparency),
						NumberSequenceKeypoint.new(1, 1),
					}),
				}),
			}),
			DisclaimerContainer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, DISCLAIMER_HEIGHT_PIXELS),
				Position = UDim2.new(0, 0, 1, -DISCLAIMER_HEIGHT_PIXELS),
			}, {
				padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, Constants.PromptSidePadding),
					PaddingRight = UDim.new(0, Constants.PromptSidePadding),
				}),
				Disclaimer = Roact.createElement("TextLabel", {
					Size = UDim2.fromScale(1, 1),
					Text = localized[DISCLAIMER_TEXT],
					Font = disclaimerStyle.Font,
					TextSize = baseSize * disclaimerStyle.RelativeSize,
					TextColor3 = disclaimerColor,
					BackgroundTransparency = 1,
					TextWrapped = true,
				}),
			}),
		})
	end)
end

function BasePublishPrompt:renderAlertLocalized(localized)
	local topCornerInset, _ = GuiService:GetGuiInset()
	local overlayPosition = UDim2.new(0, 0, 0, -topCornerInset.Y)
	local overlaySize = UDim2.new(1, 0, 1, topCornerInset.Y)

	return withStyle(function(style)
		local theme = style.Theme

		local submitText = if self.props.priceInRobux and self.props.priceInRobux > 0
			then string.format("%s %i", ROBUX_EMOJI_STRING, self.props.priceInRobux)
			else localized[SUBMIT_TEXT]

		return Roact.createFragment({
			-- Render transparent black frame over the whole screen to de-focus anything in the background.
			BottomScrim = Roact.createElement("Frame", {
				Position = overlayPosition,
				Size = overlaySize,
				ZIndex = -1,
				BackgroundTransparency = 1,
			}, {
				Overlay = Roact.createElement(Overlay, {
					showGradient = false,
				}),
				InputSink = Roact.createElement("TextButton", {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					Text = "",
				}),
			}),

			PublishPrompt = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				Visible = not self.state.showUnsavedDataWarning and not self.props.showingPreviewView,
			}, {
				FullPageModal = Roact.createElement(FullPageModal, {
					title = self.props.titleText,
					onCloseClicked = self.showUnsavedDataWarning,
					distanceFromTop = DISTANCE_FROM_TOP,
					marginSize = 0,
					screenSize = self.props.screenSize,
					buttonStackProps = {
						buttons = {
							{
								buttonType = ButtonType.PrimarySystem,
								props = {
									isDisabled = not self.props.canSubmit(),
									isDelayedInput = self.props.isDelayedInput,
									enableInputDelayed = self.props.enableInputDelayed,
									delayInputSeconds = self.props.delayInputSeconds,
									onActivated = self.confirmAndUpload,
									text = submitText,
									isLoading = not self.props.priceInRobux,
								},
							},
						},
						disableRoactGamepadButtonSelection = true,
					},
				}, {
					middleContent = self:renderMiddle(localized),
				}),
			}),
			LeaveCreationAlert = if self.state.showUnsavedDataWarning
				then Roact.createElement(LeaveCreationAlert, {
					screenSize = self.props.screenSize,
					closePrompt = self.denyAndClose,
					cancelClosePrompt = self.cancelClosePrompt,
				})
				else nil,
			ValidationErrorAlert = if self.props.errorMessage
				then Roact.createElement(ValidationErrorModal, {
					screenSize = self.props.screenSize,
					closePrompt = self.closePrompt,
				})
				else nil,
			PreviewFrame = self.props.showingPreviewView and Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = theme.BackgroundUIDefault.Color,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundTransparency = theme.BackgroundUIDefault.Transparency,
			}, {
				PreviewViewport = Roact.createElement(PreviewViewport, {
					asset = self.props.asset,
					closePreviewView = self.props.closePreviewView,
				}),
			}) or nil,

			-- Render when opening economy prompt
			TopScrim = Roact.createElement("Frame", {
				Position = overlayPosition,
				Size = overlaySize,
				ZIndex = 2,
				BackgroundTransparency = 1,
				Visible = self.props.showTopScrim,
			}, {
				Overlay = Roact.createElement(Overlay, {
					showGradient = false,
				}),
				InputSink = Roact.createElement("TextButton", {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					Text = "",
				}),
			}),
		})
	end)
end

local function GetLocalizedStrings()
	local strings = {}
	strings[SUBMIT_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.Submit")
	strings[DISCLAIMER_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishCommon.Disclaimer")

	return strings
end

function BasePublishPrompt:render()
	local localized = GetLocalizedStrings()
	return self:renderAlertLocalized(localized)
end

function BasePublishPrompt:willUnmount()
	self:cleanupGamepad()
end

local function mapStateToProps(state)
	return {
		guid = state.promptRequest.promptInfo.guid,
		scopes = state.promptRequest.promptInfo.scopes,
		errorMessage = state.promptRequest.promptInfo.errorMessage,
		promptVisible = state.promptRequest.promptInfo.promptVisible,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closePrompt = function()
			return dispatch(CloseOpenPrompt())
		end,
		SetPromptVisibility = function(promptVisible)
			return dispatch(SetPromptVisibility(promptVisible))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BasePublishPrompt)
