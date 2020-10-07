local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local Connection = require(script.Parent.Connection)

local Prompts = script.Parent.Prompts
local AllowInventoryReadAccessPrompt = require(Prompts.AllowInventoryReadAccessPrompt)
local SaveAvatarPrompt = require(Prompts.SaveAvatarPrompt)
local CreateOutfitPrompt = require(Prompts.CreateOutfitPrompt)
local SetFavoritePrompt = require(Prompts.SetFavoritePrompt)

local AvatarEditorPrompts = script.Parent.Parent

local PromptType = require(AvatarEditorPrompts.PromptType)

local ScreenSizeUpdated = require(AvatarEditorPrompts.Actions.ScreenSizeUpdated)

--Displays behind the InGameMenu so that developers can't block interaction with the InGameMenu by constantly prompting.
local AVATAR_PROMPTS_DISPLAY_ORDER = 0

local AvatarEditorPromptsApp = Roact.PureComponent:extend("AvatarEditorPromptsApp")

AvatarEditorPromptsApp.validateProps = t.strictInterface({
	--From State
	promptType = t.optional(t.userdata),

	--Dispatch
	screenSizeUpdated = t.callback,
})

function AvatarEditorPromptsApp:init()
	self.absoluteSizeChanged = function(rbx)
		self.props.screenSizeUpdated(rbx.AbsoluteSize)
	end
end

function AvatarEditorPromptsApp:render()
	local promptComponent
	if self.props.promptType == PromptType.AllowInventoryReadAccess then
		promptComponent = Roact.createElement(AllowInventoryReadAccessPrompt)
	elseif self.props.promptType == PromptType.SaveAvatar then
		promptComponent = Roact.createElement(SaveAvatarPrompt)
	elseif self.props.promptType == PromptType.CreateOutfit then
		promptComponent = Roact.createElement(CreateOutfitPrompt)
	elseif self.props.promptType == PromptType.SetFavorite then
		promptComponent = Roact.createElement(SetFavoritePrompt)
	end

	return Roact.createElement("ScreenGui", {
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		AutoLocalize = false,
		DisplayOrder = AVATAR_PROMPTS_DISPLAY_ORDER,

		[Roact.Change.AbsoluteSize] = self.absoluteSizeChanged,
	}, {
		Connection = Roact.createElement(Connection),

		Prompt = promptComponent,
	})
end

local function mapStateToProps(state)
	return {
		promptType = state.promptInfo.promptType,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		screenSizeUpdated = function(screenSize)
			return dispatch(ScreenSizeUpdated(screenSize))
		end,
	}
end


return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(AvatarEditorPromptsApp)