local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)

local RobloxTranslator = require(CoreGui.RobloxGui.Modules.RobloxTranslator)
local ControllerBar = UIBlox.App.Bar.ControllerBar
local ControllerShortcutKeycodes = require(script.Parent.Common.ControllerShortcutKeycodes)
local FavoriteShorcutKeycode = ControllerShortcutKeycodes.Favorite
local TryOnShorcutKeycode = ControllerShortcutKeycodes.TryOn

local t = require(CorePackages.Packages.t)

local localizationKeys = {
	back = "CoreScripts.TopBar.Back",
	confirm = "InGame.InspectMenu.Action.Confirm",
	favorite = "InGame.InspectMenu.Action.Favorite",
	unfavorite = "InGame.InspectMenu.Action.Unfavorite",
	tryOn = "InGame.InspectMenu.Action.TryOn",
	takeOff = "InGame.InspectMenu.Action.TakeOff",
}

local InspectAndBuyControllerBar = Roact.PureComponent:extend("InspectAndBuyControllerBar")

InspectAndBuyControllerBar.validateProps = t.strictInterface({
	showTryOn = t.boolean,
	showFavorite = t.boolean,
	isFavorited = t.boolean,
})

function InspectAndBuyControllerBar:render()
	local controllerBarRightHints = {
		{
			text = RobloxTranslator:FormatByKey(localizationKeys.confirm),
			keyCode = Enum.KeyCode.ButtonA,
		},
	}

	if self.props.showTryOn then
		table.insert(controllerBarRightHints, 1, {
			text =
				self.props.tryingOn and
				RobloxTranslator:FormatByKey(localizationKeys.takeOff) or
				RobloxTranslator:FormatByKey(localizationKeys.tryOn),
			keyCode = TryOnShorcutKeycode,
		})
	end

	if self.props.showFavorite then
		table.insert(controllerBarRightHints, 1, {
			text = self.props.isFavorited and
				RobloxTranslator:FormatByKey(localizationKeys.unfavorite) or
				RobloxTranslator:FormatByKey(localizationKeys.favorite),
			keyCode = FavoriteShorcutKeycode,
		})
	end

	return Roact.createElement(Roact.Portal, {
		-- LUAU FIXME: Need read-write syntax for props to obviate the need for this cast
		target = CoreGui :: Instance,
	}, {
		InspectAndBuyControllerBar = Roact.createElement("ScreenGui", {
			DisplayOrder = 1,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			ControllerBar = Roact.createElement(ControllerBar, {
				leftHint = {
					text = RobloxTranslator:FormatByKey(localizationKeys.back),
					keyCode = Enum.KeyCode.ButtonB,
				},
				rightHints = controllerBarRightHints
			})
		})
	})
end

return InspectAndBuyControllerBar
