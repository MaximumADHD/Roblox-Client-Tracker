local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local LoadableImage = UIBlox.App.Loading.LoadableImage

local Components = script.Parent.Parent
local AvatarEditorPrompts = Components.Parent

local PerformSetFavorite = require(AvatarEditorPrompts.Thunks.PerformSetFavorite)
local SignalSetFavoritePermissionDenied = require(AvatarEditorPrompts.Thunks.SignalSetFavoritePermissionDenied)

local SetFavoritePrompt = Roact.PureComponent:extend("SetFavoritePrompt")

SetFavoritePrompt.validateProps = t.strictInterface({
	--State
	itemId = t.integer,
	itemType = t.enum(Enum.AvatarItemType),
	itemName = t.string,
	shouldFavorite = t.boolean,
	screenSize = t.Vector2,
	--Dispatch
	performSetFavorite = t.callback,
	signalSetFavoritePermissionDenied = t.callback,
})

function SetFavoritePrompt:init()
	self.renderAlertMiddleContent = function()
		local thumbnailType
		if self.props.itemType == Enum.AvatarItemType.Asset then
			thumbnailType = "Asset"
		elseif self.props.itemType == Enum.AvatarItemType.Bundle then
			thumbnailType = "BundleThumbnail"
		end

		local imageUrl = "rbxthumb://type=" ..thumbnailType.. "&id=" ..self.props.itemId.. "&w=150&h=150"

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

function SetFavoritePrompt:render()
	local title
	local text
	if self.props.shouldFavorite then
		title = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.FavouriteItemPromptTitle")
		text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.FavouriteItemPromptText", {
			RBX_NAME = self.props.itemName,
		})
	else
		title = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.UnfavouriteItemPromptTitle")
		text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.UnfavouriteItemPromptText", {
			RBX_NAME = self.props.itemName,
		})
	end

	return Roact.createElement(InteractiveAlert, {
		title = title,
		bodyText = text,
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = self.props.signalSetFavoritePermissionDenied,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.FavouriteItemPromptNo"),
					},
				},
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = self.props.performSetFavorite,
						text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.FavouriteItemPromptYes"),
					},
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
		itemId = state.promptInfo.itemId,
		itemType = state.promptInfo.itemType,
		itemName = state.promptInfo.itemName,
		shouldFavorite = state.promptInfo.shouldFavorite,
		screenSize = state.screenSize,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		performSetFavorite = function()
			return dispatch(PerformSetFavorite)
		end,

		signalSetFavoritePermissionDenied = function()
			return dispatch(SignalSetFavoritePermissionDenied)
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(SetFavoritePrompt)