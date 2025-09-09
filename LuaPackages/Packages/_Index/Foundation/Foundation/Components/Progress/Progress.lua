local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local ProgressBar = require(script.Parent.ProgressBar)
export type ProgressBarProps = ProgressBar.ProgressBarProps

local ProgressCircle = require(script.Parent.ProgressCircle)
export type ProgressCircleProps = ProgressCircle.ProgressCircleProps

local ProgressShape = require(Foundation.Enums.ProgressShape)
type ProgressShape = ProgressShape.ProgressShape

local ProgressSize = require(Foundation.Enums.ProgressSize)
type ProgressSize = ProgressSize.ProgressSize

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

export type ProgressProps = ProgressBar.ProgressBarProps | ProgressCircle.ProgressCircleProps

local function Progress(progressProps: ProgressProps, ref: React.Ref<GuiObject>?): React.ReactElement
	local props = table.clone(progressProps) :: any
	props.ref = ref

	if props.shape == ProgressShape.Circle then
		return React.createElement(ProgressCircle, props)
	else
		return React.createElement(ProgressBar, props)
	end
end

return React.memo(React.forwardRef(Progress))
