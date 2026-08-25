local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Components = Foundation.Components
local Text = require(Components.Text)
local Types = require(Components.Types)
local View = require(Components.View)

local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local InputPlacement = require(Foundation.Enums.InputPlacement)
local InputSize = require(Foundation.Enums.InputSize)

local InputGroupContext = require(script.Parent.InputGroupContext)
local useInputGroupVariants = require(script.Parent.useInputGroupVariants)

type InternalInputGroupProps = Types.InternalInputGroupProps

local defaultProps = {
	size = InputSize.Medium,
	placement = InputPlacement.Start,
	testId = "--foundation-internal-input-group",
}

local function InternalInputGroup(internalInputGroupProps: InternalInputGroupProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(internalInputGroupProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useInputGroupVariants(tokens, props.size)

	local contextValue = React.useMemo(function()
		return {
			size = props.size,
			placement = props.placement,
		}
	end, { props.size, props.placement } :: { unknown })

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			ref = ref,
		}),
		{
			InputGroupContext = React.createElement(InputGroupContext.Provider, {
				value = contextValue,
			}, {
				GroupLabel = if props.legend ~= nil and props.legend ~= ""
					then React.createElement(Text, {
						Text = props.legend,
						tag = variantProps.legend.tag,
						testId = `{props.testId}--label`,
						LayoutOrder = 0,
					})
					else nil,
				Children = React.createElement(View, {
					tag = variantProps.children.tag,
					LayoutOrder = 1,
				}, props.children),
			}),
		}
	)
end

return React.memo(React.forwardRef(InternalInputGroup))
