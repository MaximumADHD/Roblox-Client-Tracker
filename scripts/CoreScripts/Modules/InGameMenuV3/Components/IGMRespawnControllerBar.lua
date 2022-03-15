local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent
local IGMControllerBar2 = require(script.Parent.IGMControllerBar2)
local Constants = require(InGameMenu.Resources.Constants)
local withLocalization = require(InGameMenu.Localization.withLocalization)

local IGMRespawnControllerBar = Roact.PureComponent:extend("IGMRespawnControllerBar")

IGMRespawnControllerBar.validateProps = t.strictInterface({
	inputType = t.string,
})

function IGMRespawnControllerBar:render()
	if self.props.inputType == Constants.InputType.Gamepad then
		return withLocalization({
			cancel = "CoreScripts.InGameMenu.ControllerBar.Cancel",
			respawn = "CoreScripts.InGameMenu.ControllerBar.Respawn",
		})(function(localize)
			return Roact.createElement(IGMControllerBar2, {
				leftHint = {
					text = localize.cancel,
					keyCode = Enum.KeyCode.ButtonB,
				},
				rightHints = {
					{
						text = localize.respawn,
						keyCode = Enum.KeyCode.ButtonA,
					},
				}
			})
		end)
	end
	return nil
end

return IGMRespawnControllerBar
