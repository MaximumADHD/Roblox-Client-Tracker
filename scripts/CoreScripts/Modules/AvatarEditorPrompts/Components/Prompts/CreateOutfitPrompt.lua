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

local SignalCreateOutfitPermissionDenied = require(AvatarEditorPrompts.Thunks.SignalCreateOutfitPermissionDenied)
local CreateOutfitConfirmed = require(AvatarEditorPrompts.Actions.CreateOutfitConfirmed)

local GetConformedHumanoidDescription = require(AvatarEditorPrompts.GetConformedHumanoidDescription)

local EngineFeatureAESConformToAvatarRules = game:GetEngineFeature("AESConformToAvatarRules")

local VIEWPORT_SIDE_PADDING = 10
local SCREEN_SIZE_PADDING = 30

local CreateOutfitPrompt = Roact.PureComponent:extend("CreateOutfitPrompt")

CreateOutfitPrompt.validateProps = t.strictInterface({
	--State
	screenSize = t.Vector2,
	humanoidDescription = t.instanceOf("HumanoidDescription"),
	rigType = t.enum(Enum.HumanoidRigType),
	--Dispatch
	createOutfitConfirmed = t.callback,
	signalCreateOutfitPermissionDenied = t.callback,
})

function CreateOutfitPrompt:init()
	self.mounted = false

	self.middleContentRef = Roact.createRef()
	self.contentSize, self.updateContentSize = Roact.createBinding(UDim2.new(1, 0, 0, 200))

	if EngineFeatureAESConformToAvatarRules then
		self:setState({
			conformedHumanoidDescription = nil,
			getConformedDescriptionFailed = false,
		})
	end

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

	if EngineFeatureAESConformToAvatarRules then
		self.retryLoadDescription = function()
			self:setState({
				getConformedDescriptionFailed = false,
			})

			self:getConformedHumanoidDescription()
		end
	end

	self.renderAlertMiddleContent = function()
		local humanoidDescription = self.props.humanoidDescription
		local loadingFailed = nil
		if EngineFeatureAESConformToAvatarRules then
			humanoidDescription = self.state.conformedHumanoidDescription
			loadingFailed = self.state.getConformedDescriptionFailed
		end

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
						onActivated = self.props.createOutfitConfirmed,
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

	if EngineFeatureAESConformToAvatarRules then
		self:getConformedHumanoidDescription(self.props.humanoidDescription)
	end
end

function CreateOutfitPrompt:willUpdate(nextProps, nextState)
	if EngineFeatureAESConformToAvatarRules then
		if nextProps.humanoidDescription ~= self.props.humanoidDescription then
			self:setState({
				conformedHumanoidDescription = Roact.None,
				getConformedDescriptionFailed = false,
			})

			self:getConformedHumanoidDescription(nextProps.humanoidDescription)
		end
	end
end

function CreateOutfitPrompt:willUnmount()
	self.mounted = false
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

		createOutfitConfirmed = function()
			return dispatch(CreateOutfitConfirmed())
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(CreateOutfitPrompt)
