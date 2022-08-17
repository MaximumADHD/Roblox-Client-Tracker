--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local withStyle = UIBlox.Style.withStyle

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Components = script.Parent.Parent
local AvatarEditorPrompts = Components.Parent

local HumanoidViewport = require(Components.HumanoidViewport)
local PromptWithAvatarViewport = require(Components.Prompts.PromptWithAvatarViewport)

local SignalCreateOutfitPermissionDenied = require(AvatarEditorPrompts.Thunks.SignalCreateOutfitPermissionDenied)
local CreateOutfitConfirmed = require(AvatarEditorPrompts.Actions.CreateOutfitConfirmed)
local PerformCreateOutfit = require(AvatarEditorPrompts.Thunks.PerformCreateOutfit)

local GetConformedHumanoidDescription = require(AvatarEditorPrompts.GetConformedHumanoidDescription)

local AvatarEditorPromptsPolicy = require(AvatarEditorPrompts.AvatarEditorPromptsPolicy)

local EngineFeatureAESMoreOutfitMethods = game:GetEngineFeature("AESMoreOutfitMethods2")

local FFlagFixAvatarEditorPromptsGamepadSelection = require(RobloxGui.Modules.Flags.FFlagFixAvatarEditorPromptsGamepadSelection)

local VIEWPORT_SIDE_PADDING = 10
local SCREEN_SIZE_PADDING = 30

local CreateOutfitPrompt = Roact.PureComponent:extend("CreateOutfitPrompt")

CreateOutfitPrompt.validateProps = t.strictInterface({
	--State
	screenSize = not EngineFeatureAESMoreOutfitMethods and t.Vector2 or nil,
	humanoidDescription = t.instanceOf("HumanoidDescription"),
	rigType = t.enum(Enum.HumanoidRigType),
	--Dispatch
	createOutfitConfirmed = t.callback,
	signalCreateOutfitPermissionDenied = t.callback,
	performCreateOutfit = EngineFeatureAESMoreOutfitMethods and t.callback or nil,

	-- AvatarEditorPromptsPolicy
	showCustomCostumeNames = EngineFeatureAESMoreOutfitMethods and t.boolean or nil,
})

if not EngineFeatureAESMoreOutfitMethods then
	function CreateOutfitPrompt:init()
		self.mounted = false

		self.middleContentRef = Roact.createRef()
		self.contentSize, self.updateContentSize = Roact.createBinding(UDim2.new(1, 0, 0, 200))

		self:setState({
			conformedHumanoidDescription = nil,
			getConformedDescriptionFailed = false,
		})

		self.onAlertSizeChanged = function(rbx)
			local alertSize = rbx.AbsoluteSize

			if not self.middleContentRef:getValue() then
				return
			end

			local currentHeight = self.middleContentRef:getValue().AbsoluteSize.Y
			local alertNoContentHeight = alertSize.Y - currentHeight
			local maxAllowedContentHeight = self.props.screenSize.Y - (SCREEN_SIZE_PADDING * 2) - alertNoContentHeight

			local viewportMaxSize = self.middleContentRef:getValue().AbsoluteSize.X - ( VIEWPORT_SIDE_PADDING * 2)

			if maxAllowedContentHeight > viewportMaxSize then
				maxAllowedContentHeight = viewportMaxSize
			end

			if currentHeight ~= maxAllowedContentHeight then
				self.updateContentSize(UDim2.new(1, 0, 0, maxAllowedContentHeight))
			end
		end

		self.retryLoadDescription = function()
			self:setState({
				getConformedDescriptionFailed = false,
			})

			self:getConformedHumanoidDescription()
		end

		self.renderAlertMiddleContent = function()
			local humanoidDescription = self.state.conformedHumanoidDescription
			local loadingFailed = self.state.getConformedDescriptionFailed

			return withStyle(function(styles)
				return Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = self.contentSize,

					[Roact.Ref] = self.middleContentRef,
				}, {
					HumanoidViewport = Roact.createElement(HumanoidViewport, {
						humanoidDescription = humanoidDescription,
						loadingFailed = loadingFailed,
						retryLoadDescription = self.retryLoadDescription,
						rigType = self.props.rigType,
					}),
				})
			end)
		end
	end
end

function CreateOutfitPrompt:render()
	local onConfirm
	if EngineFeatureAESMoreOutfitMethods then
		if self.props.showCustomCostumeNames then
			onConfirm = self.props.createOutfitConfirmed
		else
			onConfirm = self.props.performCreateOutfit
		end
	else
		onConfirm = self.props.createOutfitConfirmed
	end

	if EngineFeatureAESMoreOutfitMethods then
		return Roact.createElement(PromptWithAvatarViewport, {
			humanoidDescription = self.props.humanoidDescription,
			rigType = self.props.rigType,

			title = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.CreateOutfitPromptTitle"),
			bodyText = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.CreateOutfitPromptText"),
			buttonStackInfo = {
				buttons = {
					{
						props = {
							onActivated = self.props.signalCreateOutfitPermissionDenied,
							text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.CreateOutfitPromptNo"),
						},
						isDefaultChild = if FFlagFixAvatarEditorPromptsGamepadSelection then true else nil,
					},
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = onConfirm,
							text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.CreateOutfitPromptYes"),
						},
					},
				},
			},
		})
	else
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
							onActivated = onConfirm,
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
end

if not EngineFeatureAESMoreOutfitMethods then
	function CreateOutfitPrompt:getConformedHumanoidDescription(humanoidDescription)
		local includeDefaultClothing = true
		GetConformedHumanoidDescription(humanoidDescription, includeDefaultClothing):andThen(function(conformedDescription)
			if not self.mounted then
				return
			end

			self:setState({
				conformedHumanoidDescription = conformedDescription,
			})
		end, function(err)
			if not self.mounted then
				return
			end

			self:setState({
				getConformedDescriptionFailed = true,
			})
		end)
	end

	function CreateOutfitPrompt:didMount()
		self.mounted = true

		self:getConformedHumanoidDescription(self.props.humanoidDescription)
	end

	function CreateOutfitPrompt:willUpdate(nextProps, nextState)
		if nextProps.humanoidDescription ~= self.props.humanoidDescription then
			self:setState({
				conformedHumanoidDescription = Roact.None,
				getConformedDescriptionFailed = false,
			})

			self:getConformedHumanoidDescription(nextProps.humanoidDescription)
		end
	end

	function CreateOutfitPrompt:willUnmount()
		self.mounted = false
	end
end

local function mapStateToProps(state)
	return {
		screenSize = not EngineFeatureAESMoreOutfitMethods and state.screenSize or nil,
		humanoidDescription = state.promptInfo.humanoidDescription,
		rigType = state.promptInfo.rigType,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		signalCreateOutfitPermissionDenied = function()
			return dispatch(SignalCreateOutfitPermissionDenied)
		end,

		createOutfitConfirmed = function()
			return dispatch(CreateOutfitConfirmed())
		end,

		performCreateOutfit = EngineFeatureAESMoreOutfitMethods and function()
			return dispatch(PerformCreateOutfit(""))
		end or nil,
	}
end

CreateOutfitPrompt = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(CreateOutfitPrompt)

if EngineFeatureAESMoreOutfitMethods then
	CreateOutfitPrompt = AvatarEditorPromptsPolicy.connect(function(appPolicy, props)
		return {
			showCustomCostumeNames = appPolicy.getCustomCostumeNames(),
		}
	end)(CreateOutfitPrompt)
end

return CreateOutfitPrompt
