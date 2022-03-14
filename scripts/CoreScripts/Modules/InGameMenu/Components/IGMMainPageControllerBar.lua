local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent
local IGMControllerBar2 = require(script.Parent.IGMControllerBar2)
local withLocalization = require(InGameMenu.Localization.withLocalization)

local IGMMainPageControllerBar = Roact.PureComponent:extend("IGMMainPageControllerBar")

IGMMainPageControllerBar.validateProps = t.strictInterface({
	canCaptureFocus = t.boolean,
	isMainPageMoreMenuOpen = t.boolean,
})

function IGMMainPageControllerBar:render()
	if self.props.canCaptureFocus then
		return withLocalization({
			openMoreMenu = "CoreScripts.InGameMenu.ControllerBar.OpenMoreMenu",
			closeMoreMenu = "CoreScripts.InGameMenu.ControllerBar.CloseMoreMenu",
			back = "CoreScripts.InGameMenu.ControllerBar.Back",
			respawnCharacter = "CoreScripts.InGameMenu.ControllerBar.RespawnCharacter",
			leave = "CoreScripts.InGameMenu.ControllerBar.Leave",
		})(function(localize)
			return Roact.createElement(IGMControllerBar2, {
				leftHint = {
					text = localize.back,
					keyCode = Enum.KeyCode.ButtonB,
				},
				rightHints = {
					{
						text = self.props.isMainPageMoreMenuOpen and localize.closeMoreMenu or localize.openMoreMenu,
						keyCode = Enum.KeyCode.ButtonL3,
					},
					{
						text = localize.respawnCharacter,
						keyCode = Enum.KeyCode.ButtonY,
					},
					{
						text = localize.leave,
						keyCode = Enum.KeyCode.ButtonX,
					},
				}
			})
		end)
	end
	return nil
end

return IGMMainPageControllerBar
