local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

export type ModalNavigation = {
	closeAffordanceRef: React.Ref<GuiObject>?,
	setContentStartRef: (ref: React.Ref<GuiObject>) -> (),
}

type ModalNavigationContext = {
	closeAffordanceRef: React.Ref<GuiObject>?,
	setContentStartRef: ((ref: React.Ref<GuiObject>) -> ())?,
}

local function createUseModalNavigation(context: React.Context<any>)
	return function(): ModalNavigation
		local ctx = React.useContext(context)

		return {
			closeAffordanceRef = ctx.closeAffordanceRef,
			setContentStartRef = ctx.setContentStartRef :: (ref: React.Ref<GuiObject>) -> (),
		}
	end
end

return createUseModalNavigation
