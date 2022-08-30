local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local PlayerPermissionsModule = require(RobloxGui.Modules.PlayerPermissionsModule)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)
local ToggleEntry = require(script.Parent.ToggleEntry)

local GetHasGuiHidingPermission = require(RobloxGui.Modules.Common.GetHasGuiHidingPermission)

local BillboardVisibilityEntry = Roact.PureComponent:extend("BillboardVisibilityEntry")

BillboardVisibilityEntry.validateProps = t.strictInterface({
	LayoutOrder = t.integer,
	runService = t.union(t.Instance, t.table),
	localPlayer = t.union(t.Instance, t.table),
	playerPermissionsModule = t.table,
})

BillboardVisibilityEntry.defaultProps = {
	-- Pass services as default props to allow for easier testing
	runService = RunService,
	localPlayer = Players.LocalPlayer,
	playerPermissionsModule = PlayerPermissionsModule,
}

function BillboardVisibilityEntry:init()
	self.state = {
		hasHideUiPermissions = false,
		playerNameplatesVisible = true,
	}
end

function BillboardVisibilityEntry:didMount()
	local isStudio = self.props.runService:IsStudio()
	GetHasGuiHidingPermission(isStudio, self.props.localPlayer, self.props.playerPermissionsModule):andThen(function(hasPermission)
		self:setState({
			hasHideUiPermissions = hasPermission,
		})
	end):catch(function(error)
		warn(error)
	end)
end

function BillboardVisibilityEntry:render()
	if not self.state.hasHideUiPermissions then
		return nil
	end

	return Roact.createFragment({
		BillboardVisibilityToggle = Roact.createElement(ToggleEntry, {
			LayoutOrder = self.props.LayoutOrder,
			labelKey = "CoreScripts.InGameMenu.GameSettings.GuiVisibilityPlayerNameplates",
			checked = self.state.playerNameplatesVisible,
			onToggled = function()
				GuiService:ToggleGuiIsVisibleIfAllowed(Enum.GuiType.PlayerNameplates)
			end,
		}),
		GuiVisibilityChangedListener = Roact.createElement(ExternalEventConnection, {
			event = GuiService.GuiVisibilityChangedSignal,
			callback = function(guiType, visible)
				if guiType == Enum.GuiType.PlayerNameplates then
					self:setState({
						playerNameplatesVisible = visible,
					})
				end
			end,
		}),
	})
end

return BillboardVisibilityEntry
