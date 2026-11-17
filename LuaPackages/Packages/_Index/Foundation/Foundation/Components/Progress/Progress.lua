local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local ProgressBar = require(script.Parent.ProgressBar)
export type ProgressBarProps = ProgressBar.ProgressBarProps

local ProgressCircle = require(script.Parent.ProgressCircle)
export type ProgressCircleProps = ProgressCircle.ProgressCircleProps

local ProgressShape = require(Foundation.Enums.ProgressShape)
type ProgressShape = ProgressShape.ProgressShape

local ProgressSize = require(Foundation.Enums.ProgressSize)
type ProgressSize = ProgressSize.ProgressSize

local withDefaults = require(Foundation.Utility.withDefaults)

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

export type ProgressProps = ProgressBar.ProgressBarProps | ProgressCircle.ProgressCircleProps

local defaultProps = {
	testId = "--foundation-progress",
}

local function Progress(progressProps: ProgressProps, ref: React.Ref<GuiObject>?): React.ReactElement
	local props = withDefaults(progressProps, defaultProps)

	if props.shape == ProgressShape.Circle then
		return React.createElement(ProgressCircle, Dash.join(props, { ref = ref }))
	end

	return React.createElement(ProgressBar, Dash.join(props, { ref = ref }))
end

return React.memo(React.forwardRef(Progress))
