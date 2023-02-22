--!nonstrict
--[[
	Prompt displayed when AvatarEditorService:PromptUpdateOutfit is called.
]]
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

local SignalUpdateOutfitPermissionDenied = require(AvatarEditorPrompts.Thunks.SignalUpdateOutfitPermissionDenied)
local PerformUpdateOutfit = require(AvatarEditorPrompts.Thunks.PerformUpdateOutfit)

local PromptWithAvatarViewport = require(Components.Prompts.PromptWithAvatarViewport)

local AvatarEditorPromptsPolicy = require(AvatarEditorPrompts.AvatarEditorPromptsPolicy)

local UpdateOutfitPrompt = Roact.PureComponent:extend("UpdateOutfitPrompt")

UpdateOutfitPrompt.validateProps = t.strictInterface({
	-- mapStateToProps
	screenSize = t.Vector2,
	humanoidDescription = t.instanceOf("HumanoidDescription"),
	rigType = t.enum(Enum.HumanoidRigType),
	outfitName = t.string,

	-- mapDispatchToProps
	signalUpdateOutfitPermissionDenied = t.callback,
	performUpdateOutfit = t.callback,

	-- AvatarEditorPromptsPolicy
	showCustomCostumeNames = t.boolean,
})

function UpdateOutfitPrompt:render()
	local bodyText
	if self.props.showCustomCostumeNames then
		bodyText = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptText", {
			RBX_NAME = self.props.outfitName,
		})
	else
		bodyText = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptTextNoOutfitName")
	end

	return Roact.createElement(PromptWithAvatarViewport, {
		humanoidDescription = self.props.humanoidDescription,
		rigType = self.props.rigType,

		title = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptTitle"),
		bodyText = bodyText,
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = self.props.signalUpdateOutfitPermissionDenied,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptNo"),
					},
					isDefaultChild = true,
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = self.props.performUpdateOutfit,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.UpdateOutfitPromptYes"),
					},
					isDefaultChild = false,
				},
			},
		},
	})
end

local function mapStateToProps(state)
	return {
		screenSize = state.screenSize,
		humanoidDescription = state.promptInfo.humanoidDescription,
		rigType = state.promptInfo.rigType,
		outfitName = state.promptInfo.outfitName,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		signalUpdateOutfitPermissionDenied = function()
			return dispatch(SignalUpdateOutfitPermissionDenied)
		end,

		performUpdateOutfit = function()
			return dispatch(PerformUpdateOutfit)
		end or nil,
	}
end

UpdateOutfitPrompt = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(UpdateOutfitPrompt)

UpdateOutfitPrompt = AvatarEditorPromptsPolicy.connect(function(appPolicy, props)
	return {
		showCustomCostumeNames = appPolicy.getCustomCostumeNames(),
	}
end)(UpdateOutfitPrompt)

return UpdateOutfitPrompt
