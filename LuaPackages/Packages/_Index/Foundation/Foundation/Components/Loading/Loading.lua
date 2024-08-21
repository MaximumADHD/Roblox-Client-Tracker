local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local useClock = ReactUtils.useClock

local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)
local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)

type Props = {
	size: IconSize?,
} & Types.CommonProps

local defaultProps = {
	size = IconSize.Large,
}

local function Loading(loadingProps: Props, ref: React.Ref<GuiObject>?)
	local props = withDefaults(loadingProps, defaultProps)
	local clockBinding = useClock()
	local tokens = useTokens()

	return React.createElement(
		Icon,
		withCommonProps(props, {
			name = "icons/graphic/loadingspinner",
			size = props.size,
			style = tokens.DarkMode.Content.Emphasis,
			Rotation = clockBinding:map(function(value: number)
				return value * 360
			end),
			ref = ref,
		})
	)
end

return React.memo(React.forwardRef(Loading))
