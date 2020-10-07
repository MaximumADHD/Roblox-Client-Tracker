local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local withStyle = UIBlox.Style.withStyle

local Images = UIBlox.App.ImageSet.Images

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Components = script.Parent.Parent
local AvatarEditorPrompts = Components.Parent

local HumanoidViewport = require(Components.HumanoidViewport)

local SignalCreateOutfitPermissionDenied = require(AvatarEditorPrompts.Thunks.SignalCreateOutfitPermissionDenied)
local PerformCreateOutfit = require(AvatarEditorPrompts.Thunks.PerformCreateOutfit)

local VIEWPORT_SIDE_PADDING = 10
local SCREEN_SIZE_PADDING = 30
local NAME_TEXTBOX_HEIGHT = 35

local TEXTBOX_STROKE = Images["component_assets/circle_17_stroke_1"]
local STROKE_SLICE_CENTER = Rect.new(8, 8, 8, 8)

local CreateOutfitPrompt = Roact.PureComponent:extend("CreateOutfitPrompt")

CreateOutfitPrompt.validateProps = t.strictInterface({
	--State
	screenSize = t.Vector2,
	humanoidDescription = t.instanceOf("HumanoidDescription"),
	rigType = t.enum(Enum.HumanoidRigType),
	--Dispatch
	performCreateOutfit = t.callback,
	signalCreateOutfitPermissionDenied = t.callback,
})

function CreateOutfitPrompt:init()
	self:setState({
		outfitName = "",
	})

	self.middleContentRef = Roact.createRef()
	self.contentSize, self.updateContentSize = Roact.createBinding(UDim2.new(1, 0, 0, 200))

	self.onAlertSizeChanged = function(rbx)
		local alertSize = rbx.AbsoluteSize

		if not self.middleContentRef:getValue() then
			return
		end

		local currentHeight = self.middleContentRef:getValue().AbsoluteSize.Y
		local alertNoContentHeight = alertSize.Y - currentHeight
		local maxAllowedContentHeight = self.props.screenSize.Y - (SCREEN_SIZE_PADDING * 2) - alertNoContentHeight

		local viewportMaxSize = self.middleContentRef:getValue().AbsoluteSize.X - ( VIEWPORT_SIDE_PADDING * 2)
		local totalMaxHeight = viewportMaxSize + NAME_TEXTBOX_HEIGHT

		if maxAllowedContentHeight > totalMaxHeight then
			maxAllowedContentHeight = totalMaxHeight
		end

		if currentHeight ~= maxAllowedContentHeight then
			self.updateContentSize(UDim2.new(1, 0, 0, maxAllowedContentHeight))
		end
	end

	self.confirmCreateOutfit = function()
		self.props.performCreateOutfit(self.state.outfitName)
	end

	self.textUpdated = function(rbx)
		self:setState({
			outfitName = rbx.Text,
		})
	end

	self.renderAlertMiddleContent = function()
		return withStyle(function(styles)
			local font = styles.Font
			local theme = styles.Theme

			return Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = self.contentSize,

				[Roact.Ref] = self.middleContentRef,
			}, {
				HumanoidViewportFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, -40),
				}, {
					HumanoidViewport = Roact.createElement(HumanoidViewport, {
						humanoidDescription = self.props.humanoidDescription,
						rigType = self.props.rigType,
					})
				}),

				TextboxContainer = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, NAME_TEXTBOX_HEIGHT),
					Position = UDim2.fromScale(0, 1),
					AnchorPoint = Vector2.new(0, 1),
				}, {
					TextboxBorder = Roact.createElement(ImageSetLabel, {
						BackgroundTransparency = 1,
						Image = TEXTBOX_STROKE,
						ImageColor3 = theme.UIDefault.Color,
						ImageTransparency = theme.UIDefault.Transparency,
						LayoutOrder = 3,
						ScaleType = Enum.ScaleType.Slice,
						Size = UDim2.new(1, 0, 1, -5),
						Position = UDim2.fromScale(0, 1),
						AnchorPoint = Vector2.new(0, 1),
						SliceCenter = STROKE_SLICE_CENTER,
					}, {
						Textbox = Roact.createElement("TextBox", {
							BackgroundTransparency = 1,
							ClearTextOnFocus = false,
							Font = font.Header2.Font,
							FontSize = font.BaseSize * font.CaptionBody.RelativeSize,
							PlaceholderColor3 = theme.TextDefault.Color,
							PlaceholderText = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.OutfitNamePlaceholder"),
							Position = UDim2.new(0, 6, 0, 0),
							Size = UDim2.new(1, -12, 1, 0),
							TextColor3 = theme.TextEmphasis.Color,
							TextSize = 16,
							TextTruncate = Enum.TextTruncate.AtEnd,
							Text = self.state.outfitName,
							TextWrapped = true,
							TextXAlignment = Enum.TextXAlignment.Left,
							OverlayNativeInput = true,
							[Roact.Change.Text] = self.textUpdated,
						})
					}),
				})
			})
		end)
	end
end

function CreateOutfitPrompt:render()
	return Roact.createElement(InteractiveAlert, {
		title = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.CreateOutfitPromptTitle"),
		bodyText = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.CreateOutfitPromptText"),
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = self.props.signalCreateOutfitPermissionDenied,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.CreateOutfitPromptNo"),
					},
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						isDisabled = self.state.outfitName == "",
						onActivated = self.confirmCreateOutfit,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.CreateOutfitPromptYes"),
					},
				},
			},
		},
		position = UDim2.fromScale(0.5, 0.5),
		screenSize = self.props.screenSize,
		middleContent = self.renderAlertMiddleContent,
		onAbsoluteSizeChanged = self.onAlertSizeChanged,
		isMiddleContentFocusable = false,
	})
end

local function mapStateToProps(state)
	return {
		screenSize = state.screenSize,
		humanoidDescription = state.promptInfo.humanoidDescription,
		rigType = state.promptInfo.rigType,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		signalCreateOutfitPermissionDenied = function()
			return dispatch(SignalCreateOutfitPermissionDenied)
		end,

		performCreateOutfit = function(outfitName)
			return dispatch(PerformCreateOutfit(outfitName))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(CreateOutfitPrompt)