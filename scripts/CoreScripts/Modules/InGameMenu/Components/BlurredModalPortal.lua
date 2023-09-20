local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VRService = require(RobloxGui.Modules.VR.VRServiceWrapper)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script:FindFirstAncestor("InGameMenu")
local Constants = require(InGameMenu.Resources.Constants)

local BlurredModalPortal = Roact.PureComponent:extend("BlurredModalPortal")

BlurredModalPortal.validateProps = t.strictInterface({
	Enabled = t.boolean,
	[Roact.Children] = t.optional(t.table),
})

function BlurredModalPortal:render()
	return Roact.createElement(Roact.Portal, {
		-- LUAU FIXME: Need read-write syntax for props to obviate the need for this cast
		target = CoreGui :: Instance,
	}, {
		InGameMenuModalBlur = Roact.createElement("ScreenGui", {
			OnTopOfCoreBlur = true,
			Enabled = self.props.Enabled,
			IgnoreGuiInset = true,
			DisplayOrder = Constants.DisplayOrder.BlurredModalPortal,
		}, self.props[Roact.Children]),
	})
end

function BlurredModalPortal:didUpdate(prevProps)
	if VRService.VREnabled then
		return
	end

	local wasEnabled = prevProps.Enabled
	local enabled = self.props.Enabled

	if wasEnabled ~= enabled then
		RunService:SetRobloxGuiFocused(enabled)
	end
end

return BlurredModalPortal
