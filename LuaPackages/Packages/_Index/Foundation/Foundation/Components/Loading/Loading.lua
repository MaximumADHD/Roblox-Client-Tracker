local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Icon = require(Foundation.Components.Icon)
local View = require(Foundation.Components.View)

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local Flags = require(Foundation.Utility.Flags)
local Types = require(Foundation.Components.Types)
local useRotation = require(Foundation.Utility.useRotation)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

export type LoadingProps = {
	size: IconSize?,
} & Types.CommonProps

local defaultProps = {
	size = IconSize.Large,
	testId = "--foundation-loading",
}

local function Loading(loadingProps: LoadingProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(loadingProps, defaultProps)
	local rotation = useRotation()
	local tokens = useTokens()

	local iconProps = {
		name = "icons/graphic/loadingspinner",
		size = props.size,
		style = tokens.DarkMode.Content.Emphasis,
		Rotation = rotation,
		ref = ref,
		testId = if Flags.FoundationLoadingWrapInView then `{props.testId}--icon` else nil,
	}

	return React.createElement(
		if Flags.FoundationLoadingWrapInView then View else React.Fragment,
		if Flags.FoundationLoadingWrapInView
			then withCommonProps(props, {
				tag = "auto-xy",
			})
			else {},
		{
			Icon = React.createElement(
				Icon,
				if Flags.FoundationLoadingWrapInView then iconProps else withCommonProps(props, iconProps)
			),
		}
	)
end

return React.memo(React.forwardRef(Loading))
