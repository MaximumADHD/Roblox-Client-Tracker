local GlobalNav = require(script.Components.GlobalNav)

export type GlobalNavProps = GlobalNav.Props

return {
	GlobalNav = GlobalNav,
	["jest.config"] = script["jest.config"],
}
