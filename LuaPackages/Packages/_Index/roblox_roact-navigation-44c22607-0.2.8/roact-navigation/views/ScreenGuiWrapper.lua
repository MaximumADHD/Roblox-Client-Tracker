local Cryo = require(script.Parent.Parent.Parent.Cryo)
local Roact = require(script.Parent.Parent.Parent.Roact)

local ScreenGuiWrapper = Roact.PureComponent:extend("ScreenGuiWrapper")

ScreenGuiWrapper.defaultProps = {
	DisplayOrder = 0,
	OnTopOfCoreBlur = false,
	visible = true,
}

function ScreenGuiWrapper:render()
	local props = self.props
	local component = props.component
	local visible = props.visible
	local displayOrder = props.DisplayOrder
	local onTopOfCoreBlur = props.OnTopOfCoreBlur

	local filteredProps = Cryo.Dictionary.join(props, {
		component = Cryo.None,
		DisplayOrder = Cryo.None,
		OnTopOfCoreBlur = Cryo.None,
		-- visible prop is passed down for convenience of inner component.
	})

	return Roact.createElement("ScreenGui", {
		Enabled = visible,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		DisplayOrder = displayOrder,
		OnTopOfCoreBlur = onTopOfCoreBlur,
	}, {
		InnerComponent = Roact.createElement(component, filteredProps)
	})
end

return ScreenGuiWrapper
