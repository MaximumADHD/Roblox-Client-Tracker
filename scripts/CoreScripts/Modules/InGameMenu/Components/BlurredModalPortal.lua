local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local BlurredModalPortal = Roact.PureComponent:extend("BlurredModalPortal")

BlurredModalPortal.validateProps = t.strictInterface({
	Enabled = t.boolean,
	[Roact.Children] = t.optional(t.table)
})

function BlurredModalPortal:render()
	return Roact.createElement(Roact.Portal, {
		target = CoreGui
	}, {
		InGameMenuModalBlur = Roact.createElement("ScreenGui", {
			OnTopOfCoreBlur = true,
			Enabled = self.props.Enabled,
			IgnoreGuiInset = true,
		}, self.props[Roact.Children])
	})
end

function BlurredModalPortal:didUpdate(prevProps)
	local wasEnabled = prevProps.Enabled
	local enabled = self.props.Enabled

	if wasEnabled ~= enabled then
		RunService:SetRobloxGuiFocused(enabled)
	end
end

return BlurredModalPortal
