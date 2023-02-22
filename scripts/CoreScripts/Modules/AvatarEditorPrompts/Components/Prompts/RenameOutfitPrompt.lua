--[[
	Prompt to allow an outfit to be renamed. Opened as a result of AvatarEditorService:PromptRenameOutfit
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ButtonType = UIBlox.App.Button.Enum.ButtonType
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Components = script.Parent.Parent
local AvatarEditorPrompts = Components.Parent

local PromptWithTextField = require(Components.Prompts.PromptWithTextField)

local SignalRenameOutfitPermissionDenied = require(AvatarEditorPrompts.Thunks.SignalRenameOutfitPermissionDenied)
local PerformRenameOutfit = require(AvatarEditorPrompts.Thunks.PerformRenameOutfit)

local AvatarEditorPromptsPolicy = require(AvatarEditorPrompts.AvatarEditorPromptsPolicy)

local RenameOutfitNamePrompt = Roact.PureComponent:extend("RenameOutfitNamePrompt")

RenameOutfitNamePrompt.validateProps = t.strictInterface({
	--State
	outfitId = t.integer,
	outfitName = t.string,
	screenSize = t.Vector2,
	--Dispatch
	signalRenameOutfitPermissionDenied = t.callback,
	performRenameOutfit = t.callback,

	-- AvatarEditorPromptsPolicy
	showCustomCostumeNames = t.boolean,
})

function RenameOutfitNamePrompt:init()
	self:setState({
		outfitName = "",
		alertPosition = UDim2.fromScale(0.5, 0.5),
	})

	self.textUpdated = function(text)
		self:setState({
			outfitName = text,
		})
	end

	self.confirmRenameOutfit = function()
		self.props.performRenameOutfit(self.state.outfitName)
	end
end

function RenameOutfitNamePrompt:render()
	if not self.props.showCustomCostumeNames then
		-- showCustomCostumeNames could be false because a developer called AvatarEditorService:PromptRenameOutfit()
		-- even though the user should not be able to name their costumes.
		return Roact.createElement(InteractiveAlert, {
			title = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.DisabledRenameOutfitPromptTitle"),
			bodyText = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.DisabledRenameOutfitPromptText"),
			buttonStackInfo = {
				buttons = {
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = self.props.signalRenameOutfitPermissionDenied,
							text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.DisabledRenameOutfitPromptOkay"),
						},
						isDefaultChild = true,
					},
				},
			},
			position = UDim2.fromScale(0.5, 0.5),
			screenSize = self.props.screenSize,
			isMiddleContentFocusable = false,
		})
	end

	return Roact.createElement(PromptWithTextField, {
		fieldText = self.state.outfitName,
		onFieldTextUpdated = self.textUpdated,

		-- Props passed to Alert
		title = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.RenameOutfitNamePromptTitle"),
		bodyText = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.RenameOutfitPromptText", {
			RBX_NAME = self.props.outfitName,
		}),
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = self.props.signalRenameOutfitPermissionDenied,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptNo"),
					},
					isDefaultChild = true,
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						isDisabled = self.state.outfitName == "",
						onActivated = self.confirmRenameOutfit,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.EnterOutfitNamePromptYes"),
					},
					isDefaultChild = false,
				},
			},
		},
	})
end

local function mapStateToProps(state)
	return {
		outfitId = state.promptInfo.outfitId,
		outfitName = state.promptInfo.outfitName,
		screenSize = state.screenSize,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		signalRenameOutfitPermissionDenied = function()
			return dispatch(SignalRenameOutfitPermissionDenied)
		end,

		performRenameOutfit = function(outfitName)
			return dispatch(PerformRenameOutfit(outfitName))
		end,
	}
end

RenameOutfitNamePrompt = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(RenameOutfitNamePrompt)

RenameOutfitNamePrompt = AvatarEditorPromptsPolicy.connect(function(appPolicy, props)
	return {
		showCustomCostumeNames = appPolicy.getCustomCostumeNames(),
	}
end)(RenameOutfitNamePrompt)

return RenameOutfitNamePrompt
