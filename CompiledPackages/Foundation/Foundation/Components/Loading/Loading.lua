local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)
local useRotation = require(Foundation.Utility.useRotation)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)

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

	return React.createElement(
		Icon,
		withCommonProps(props, {
			name = "icons/graphic/loadingspinner",
			size = props.size,
			style = tokens.DarkMode.Content.Emphasis,
			Rotation = rotation,
			ref = ref,
		})
	)
end

return React.memo(React.forwardRef(Loading))
