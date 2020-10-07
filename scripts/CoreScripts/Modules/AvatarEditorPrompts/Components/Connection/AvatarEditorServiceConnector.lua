local CorePackages = game:GetService("CorePackages")
local AvatarEditorService = game:GetService("AvatarEditorService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local Components = script.Parent.Parent
local AvatarEditorPrompts = Components.Parent

local OpenPrompt = require(AvatarEditorPrompts.Actions.OpenPrompt)
local PromptType = require(AvatarEditorPrompts.PromptType)

local OpenSetFavoritePrompt = require(AvatarEditorPrompts.Thunks.OpenSetFavoritePrompt)
local OpenSaveAvatarPrompt = require(AvatarEditorPrompts.Thunks.OpenSaveAvatarPrompt)

local ExternalEventConnection = require(CorePackages.RoactUtilities.ExternalEventConnection)

local AvatarEditorServiceConnector = Roact.PureComponent:extend("AvatarEditorServiceConnector")

AvatarEditorServiceConnector.validateProps = t.strictInterface({
	--Dispatch
	openPrompt = t.callback,
	openSetFavoritePrompt = t.callback,
	openSaveAvatarPrompt = t.callback,
})

function AvatarEditorServiceConnector:render()
	return Roact.createFragment({
		OpenPromptSaveAvatarConnection = Roact.createElement(ExternalEventConnection, {
			event = AvatarEditorService.OpenPromptSaveAvatar,
			callback = function(humanoidDescription, rigType)
				self.props.openSaveAvatarPrompt(humanoidDescription, rigType)
			end,
		}),

		OpenAllowInventoryReadAccessConnection = Roact.createElement(ExternalEventConnection, {
			event = AvatarEditorService.OpenAllowInventoryReadAccess,
			callback = function()
				self.props.openPrompt(PromptType.AllowInventoryReadAccess, {})
			end,
		}),

		OpenPromptCreateOufitConnection = Roact.createElement(ExternalEventConnection, {
			event = AvatarEditorService.OpenPromptCreateOufit,
			callback = function(humanoidDescription, rigType)
				self.props.openPrompt(PromptType.CreateOutfit, {
					humanoidDescription = humanoidDescription,
					rigType = rigType,
				})
			end,
		}),

		OpenPromptSetFavoriteConnection = Roact.createElement(ExternalEventConnection, {
			event = AvatarEditorService.OpenPromptSetFavorite,
			callback = function(itemId, itemType, isFavorited)
				self.props.openSetFavoritePrompt(itemId, itemType, isFavorited)
			end,
		}),
	})
end

local function mapDispatchToProps(dispatch)
	return {
		openPrompt = function(promptType, promptArgs)
			return dispatch(OpenPrompt(promptType, promptArgs))
		end,

		openSetFavoritePrompt = function(itemId, itemType, shouldFavorite)
			return dispatch(OpenSetFavoritePrompt(itemId, itemType, shouldFavorite))
		end,

		openSaveAvatarPrompt = function(humanoidDescription, rigType)
			return dispatch(OpenSaveAvatarPrompt(humanoidDescription, rigType))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(AvatarEditorServiceConnector)