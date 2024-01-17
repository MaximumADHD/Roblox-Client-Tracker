--[[
	Displayed to the user to prompt them to delete a costume when AvatarEditorService:PromptDeleteOutfit is called.
]]

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local LoadableImage = UIBlox.App.Loading.LoadableImage

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Components = script.Parent.Parent
local AvatarEditorPrompts = Components.Parent

local SignalDeleteOutfitPermissionDenied = require(AvatarEditorPrompts.Thunks.SignalDeleteOutfitPermissionDenied)
local PerformDeleteOutfit = require(AvatarEditorPrompts.Thunks.PerformDeleteOutfit)

local AvatarEditorPromptsPolicy = require(AvatarEditorPrompts.AvatarEditorPromptsPolicy)

local DeleteOutfitPrompt = Roact.PureComponent:extend("DeleteOutfitPrompt")

DeleteOutfitPrompt.validateProps = t.strictInterface({
	--State
	screenSize = t.Vector2,
	outfitId = t.integer,
	outfitName = t.string,
	--Dispatch
	performDeleteOutfit = t.callback,
	signalDeleteOutfitPermissionDenied = t.callback,

	-- AvatarEditorPromptsPolicy
	showCustomOutfitNames = t.boolean,
})

function DeleteOutfitPrompt:init()
	self.renderAlertMiddleContent = function()
		local imageUrl = "rbxthumb://type=Outfit&id=" ..self.props.outfitId.. "&w=150&h=150"

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 150),
		}, {
			Thumnail = Roact.createElement(LoadableImage, {
				Position = UDim2.fromScale(0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0),
				Size = UDim2.fromOffset(150, 150),
				BackgroundTransparency = 1,
				Image = imageUrl,
				useShimmerAnimationWhileLoading = true,
				showFailedStateWhenLoadingFailed = true,
			}),
		})
	end
end

function DeleteOutfitPrompt:render()
	local text
	if self.props.showCustomOutfitNames then
		text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptText", {
			RBX_NAME = self.props.outfitName,
		})
	else
		text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptTextNoName")
	end

	return Roact.createElement(InteractiveAlert, {
		title = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptTitle"),
		bodyText = text,
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = self.props.signalDeleteOutfitPermissionDenied,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptNo"),
					},
					isDefaultChild = true,
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = self.props.performDeleteOutfit,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.DeleteOutfitPromptYes"),
					},
					isDefaultChild = false,
				},
			},
		},
		position = UDim2.fromScale(0.5, 0.5),
		screenSize = self.props.screenSize,
		middleContent = self.renderAlertMiddleContent,
		isMiddleContentFocusable = false,
	})
end

local function mapStateToProps(state)
	return {
		screenSize = state.screenSize,
		outfitId = state.promptInfo.outfitId,
		outfitName = state.promptInfo.outfitName,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		signalDeleteOutfitPermissionDenied = function()
			return dispatch(SignalDeleteOutfitPermissionDenied)
		end,

		performDeleteOutfit = function()
			return dispatch(PerformDeleteOutfit)
		end,
	}
end

DeleteOutfitPrompt = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(DeleteOutfitPrompt)

DeleteOutfitPrompt = AvatarEditorPromptsPolicy.connect(function(appPolicy, props)
	return {
		showCustomOutfitNames = appPolicy.getCustomOutfitNames(),
	}
end)(DeleteOutfitPrompt)

return DeleteOutfitPrompt
