local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)

local BlurredModalPortal = Roact.PureComponent:extend("BlurredModalPortal")

BlurredModalPortal.validateProps = t.strictInterface({
	pageName = t.optional(t.string),
	[Roact.Children] = t.optional(t.table)

})

function BlurredModalPortal:render()
	return Roact.createElement(Roact.Portal, {
		-- LUAU FIXME: Need read-write syntax for props to obviate the need for this cast
		target = CoreGui :: Instance,
	}, {
		Watcher = Roact.createElement(PageNavigationWatcher, {
			desiredPage = self.props.pageName or "",
			onNavigateTo = function()
				self:setState({
					enabled = true
				})
			end,
			onNavigateAway = function()
				self:setState({
					enabled = Roact.None
				})
			end,
		}),
		InGameMenuModalBlur = Roact.createElement("ScreenGui", {
			OnTopOfCoreBlur = true,
			Enabled = self.state.enabled or false,
			IgnoreGuiInset = true,
		}, self.props[Roact.Children])
	})
end

function BlurredModalPortal:didUpdate(_, prevState)
	local wasEnabled = prevState.enabled or false
	local enabled = self.state.enabled or false

	if wasEnabled ~= enabled then
		RunService:SetRobloxGuiFocused(enabled)
	end
end

return BlurredModalPortal
