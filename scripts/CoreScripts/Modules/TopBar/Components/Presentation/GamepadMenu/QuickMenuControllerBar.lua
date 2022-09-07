--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)

local Constants = require(RobloxGui.Modules.InGameMenuConstants)
local ControllerBar = UIBlox.App.Bar.ControllerBar

local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local localizedHints = {
	back = "CoreScripts.TopBar.Back",
	leave = "CoreScripts.TopBar.Leave",
	respawn = "CoreScripts.TopBar.Respawn",
}

local function QuickMenuControllerBar()
	return Roact.createElement(Roact.Portal, {
		target = CoreGui
	}, {
		QuickMenuControllerBar = Roact.createElement("ScreenGui", {
			DisplayOrder = Constants.DisplayOrder.ControllerBar,
		}, {
			ControllerBar = Roact.createElement(ControllerBar, {
				leftHint = {
					text = RobloxTranslator:FormatByKey(localizedHints.back),
					keyCode = Enum.KeyCode.ButtonB,
				},
				rightHints = {
					{
						text = RobloxTranslator:FormatByKey(localizedHints.respawn),
						keyCode = Enum.KeyCode.ButtonY,
					},
					{
						text = RobloxTranslator:FormatByKey(localizedHints.leave),
						keyCode = Enum.KeyCode.ButtonX,
					},
				}
			}),
		})
	})
end

return QuickMenuControllerBar
