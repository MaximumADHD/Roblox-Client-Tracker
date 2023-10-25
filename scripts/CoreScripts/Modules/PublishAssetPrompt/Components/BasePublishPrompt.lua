--[[
	The base prompt for other prompts like PublishAvatarPrompt or PublishAssetPrompt.
    Other prompts can pass in body components that will be parented under a frame between
    the NameTextBox and PromptRows below. For example, they can pass in the Viewport and
    description text box.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local ExperienceAuthService = game:GetService("ExperienceAuthService")
local Players = game:GetService("Players")

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
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)

local LocalPlayer = Players.LocalPlayer

local Components = script.Parent
local NameTextBox = require(Components.Common.NameTextBox)
local CloseOpenPrompt = require(script.Parent.Parent.Actions.CloseOpenPrompt)
local ItemInfoList = require(CorePackages.Workspace.Packages.ItemDetails).ItemInfoList
local LeaveCreationAlert = require(script.Parent.LeaveCreationAlert)
local Constants = require(script.Parent.Parent.Constants)
local PreviewViewport = require(Components.Common.PreviewViewport)

local NAME_HEIGHT_PIXELS = 30
local DISCLAIMER_HEIGHT_PIXELS = 50
local LABEL_HEIGHT = 15
local LABEL_PADDING = 24
local BOTTOM_GRADIENT_HEIGHT = 5
local DISTANCE_FROM_TOP = 37

local DISCLAIMER_TEXT = "disclaimer"
local SUBMIT_TEXT = "submit"
local CREATOR_TEXT = "creator"
local ATTRIBUTION_TEXT = "madeIn"
local TYPE_TEXT = "type"

local BasePublishPrompt = Roact.PureComponent:extend("BasePublishPrompt")

BasePublishPrompt.validateProps = t.strictInterface({
	screenSize = t.Vector2,
	nameLabel = t.string,
	defaultName = t.string,
	promptBody = t.any,
	typeData = t.string,
	titleText = t.string,
	showingPreviewView = t.boolean,
	closePreviewView = t.callback,
	asset = t.union(t.instanceOf("Model"), t.instanceIsA("AnimationClip")),
	onNameUpdated = t.callback,
	confirmUploadReady = t.callback,

	-- Mapped state
	guid = t.any,
	scopes = t.any,

	-- Mapped dispatch functions
	closePrompt = t.callback,
})

function BasePublishPrompt:init()
	self:setState({
		-- if showUnsavedDataWarning is false, show the prompt
		-- if true, we are showing a warning that says data is lost when prompt is closed
		showUnsavedDataWarning = false,
	})
	-- TODO: AVBURST-13016 Add back checking name for spaces or special characters after investigating
	self.closePrompt = function()
		self.props.closePrompt()
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
		-- We should never get to this point if this engine feature is off, but just in case:
		if game:GetEngineFeature("ExperienceAuthReflectionFixes") then
			ExperienceAuthService:ScopeCheckUIComplete(
				self.props.guid,
				self.props.scopes,
				Enum.ScopeCheckResult.ConsentDenied,
				{} -- empty metadata
			)
		end
		self.closePrompt()
	end

	-- Intended to do what the Parent wants on submission before closing the prompt
	-- AVBURST-13553 Currently no visual indicator that Submit should be disabled if not ready
	self.confirmAndUpload = function()
		if self.props.confirmUploadReady() then
			self.closePrompt()
		end
	end
end

function BasePublishPrompt:renderMiddle(localized)
	return withStyle(function(style)
		local font = style.Font
		local baseSize: number = font.BaseSize
		local relativeSize: number = font.CaptionHeader.RelativeSize
		local textSize: number = baseSize * relativeSize
		local theme = style.Theme
		assert(LocalPlayer, "Assert LocalPlayer not nil to silence type checker")
		return Roact.createFragment({
			ScrollingFrame = Roact.createElement(RoactGamepad.Focusable.ScrollingFrame, {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, -DISCLAIMER_HEIGHT_PIXELS),
				CanvasSize = UDim2.new(1, 0, 0, 0),
				ScrollBarThickness = 0,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				defaultChild = self.nameTextBoxRef,
				[Roact.Ref] = self.middleContentRef,
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

				NameLabel = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, LABEL_HEIGHT + LABEL_PADDING),
					Font = font.Body.Font,
					Text = self.props.nameLabel,
					TextSize = textSize,
					TextColor3 = theme.TextDefault.Color,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					LayoutOrder = 1,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingTop = UDim.new(0, LABEL_PADDING),
					}),
				}),
				NameInput = Roact.createElement(NameTextBox, {
					Size = UDim2.new(1, 0, 0, NAME_HEIGHT_PIXELS),
					-- TODO: Investigate previous name updated AVBURST-13016 and name moderation AVBURST-12725, for now use placeholder
					onNameUpdated = self.props.onNameUpdated,
					nameTextBoxRef = self.nameTextBoxRef,
					defaultName = self.props.defaultName,
					LayoutOrder = 2,
				}),
				PromptBody = Roact.createElement("Frame", {
					Size = UDim2.fromScale(1, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					LayoutOrder = 3,
				}, self.props.promptBody),
				PromptRows = Roact.createElement(ItemInfoList, {
					rowData = {
						{
							infoName = localized[CREATOR_TEXT],
							infoData = LocalPlayer.Name,
							hasVerifiedBadge = LocalPlayer.HasVerifiedBadge,
						},
						{
							infoName = localized[ATTRIBUTION_TEXT],
							infoData = game.Name,
						},
						{
							infoName = localized[TYPE_TEXT],
							infoData = self.props.typeData,
						},
					},
					LayoutOrder = 4,
				}),
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
					Font = font.Body.Font,
					TextSize = textSize,
					TextColor3 = theme.TextEmphasis.Color,
					BackgroundTransparency = 1,
					TextWrapped = true,
				}),
			}),
		})
	end)
end

function BasePublishPrompt:renderAlertLocalized(localized)
	return withStyle(function(style)
		local theme = style.Theme
		return Roact.createFragment({
			-- Render transparent black frame over the whole screen to de-focus anything in the background.
			Overlay = Roact.createElement(Overlay, {
				showGradient = false,
				ZIndex = -1,
			}),

			PublishPrompt = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				Visible = not self.state.showUnsavedDataWarning,
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
									onActivated = self.confirmAndUpload,
									text = localized[SUBMIT_TEXT],
								},
							},
						},
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
		})
	end)
end

local function GetLocalizedStrings()
	local strings = {}
	strings[SUBMIT_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.Submit")

	strings[CREATOR_TEXT] = RobloxTranslator:FormatByKey("Feature.Catalog.Label.Filter.Creator")
	strings[TYPE_TEXT] = RobloxTranslator:FormatByKey("Feature.Catalog.Label.CategoryType")
	strings[ATTRIBUTION_TEXT] = RobloxTranslator:FormatByKey("Feature.Catalog.Label.Attribution")

	strings[DISCLAIMER_TEXT] = RobloxTranslator:FormatByKey("CoreScripts.PublishCommon.Disclaimer")

	return strings
end

function BasePublishPrompt:render()
	local localized = GetLocalizedStrings()
	return self:renderAlertLocalized(localized)
end

local function mapStateToProps(state)
	return {
		guid = state.promptRequest.promptInfo.guid,
		scopes = state.promptRequest.promptInfo.scopes,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closePrompt = function()
			return dispatch(CloseOpenPrompt())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(BasePublishPrompt)
