--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ButtonType = UIBlox.App.Button.Enum.ButtonType

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Components = script.Parent.Parent
local AvatarEditorPrompts = Components.Parent

local PromptWithAvatarViewport = require(Components.Prompts.PromptWithAvatarViewport)

local SignalCreateOutfitPermissionDenied = require(AvatarEditorPrompts.Thunks.SignalCreateOutfitPermissionDenied)
local CreateOutfitConfirmed = require(AvatarEditorPrompts.Actions.CreateOutfitConfirmed)
local PerformCreateOutfit = require(AvatarEditorPrompts.Thunks.PerformCreateOutfit)

local AvatarEditorPromptsPolicy = require(AvatarEditorPrompts.AvatarEditorPromptsPolicy)

local CreateOutfitPrompt = Roact.PureComponent:extend("CreateOutfitPrompt")

CreateOutfitPrompt.validateProps = t.strictInterface({
	--State
	humanoidDescription = t.instanceOf("HumanoidDescription"),
	rigType = t.enum(Enum.HumanoidRigType),
	--Dispatch
	createOutfitConfirmed = t.callback,
	signalCreateOutfitPermissionDenied = t.callback,
	performCreateOutfit = t.callback,

	-- AvatarEditorPromptsPolicy
	showCustomOutfitNames = t.boolean,
})

function CreateOutfitPrompt:render()
	local onConfirm
	if self.props.showCustomOutfitNames then
		onConfirm = self.props.createOutfitConfirmed
	else
		onConfirm = self.props.performCreateOutfit
	end

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
					isDefaultChild = true,
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = onConfirm,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.CreateOutfitPromptYes"),
					},
					isDefaultChild = false,
				},
			},
		},
	})
end

local function mapStateToProps(state)
	return {
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

		performCreateOutfit = function()
			return dispatch(PerformCreateOutfit(""))
		end,
	}
end

CreateOutfitPrompt = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(CreateOutfitPrompt)

CreateOutfitPrompt = AvatarEditorPromptsPolicy.connect(function(appPolicy, props)
	return {
		showCustomOutfitNames = appPolicy.getCustomOutfitNames(),
	}
end)(CreateOutfitPrompt)

return CreateOutfitPrompt
