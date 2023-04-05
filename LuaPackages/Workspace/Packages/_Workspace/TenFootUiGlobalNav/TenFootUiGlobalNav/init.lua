local GlobalNav = require(script.Components.GlobalNav)
local GlobalNavContainer = require(script.Components.GlobalNavContainer)

export type GlobalNavProps = GlobalNav.Props

return {
	GlobalNav = GlobalNav,
	GlobalNavContainer = GlobalNavContainer,
	["jest.config"] = script["jest.config"],
}
