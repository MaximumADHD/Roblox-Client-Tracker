local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local Text = Foundation.Text
local View = Foundation.View

local useTokens = Foundation.Hooks.useTokens

local getFormatTime = MomentsCommon.Utils.getFormatTime

local DragHandle = require(MomentsCreationFlow.Enums.DragHandle)
type DragHandle = DragHandle.DragHandle

type Bindable<T> = Foundation.Bindable<T>

type Props = {
	activeHandle: DragHandle?,
	leftHandlePosition: React.Binding<number>?,
	rightHandlePosition: React.Binding<number>?,
	timeLength: number?,
}

local TrimTooltip = function(props: Props)
	local tokens = useTokens()

	if
		props.activeHandle ~= DragHandle.LeftHandle and props.activeHandle ~= DragHandle.RightHandle
		or not props.timeLength
	then
		return nil
	end

	local activeHandlePosition = if props.activeHandle == DragHandle.LeftHandle
		then props.leftHandlePosition
		elseif props.activeHandle == DragHandle.RightHandle then props.rightHandlePosition
		else nil

	return React.createElement(View, {
		tag = "align-x-center align-y-bottom anchor-bottom-center col gap-xsmall",
		Position = activeHandlePosition:map(function(position)
			return UDim2.new(position, 0, 0, -tokens.Padding.Small)
		end),
	}, {
		TextContainer = React.createElement(View, {
			tag = "anchor-center-center bg-system-contrast size-1600-800 radius-small",
			LayoutOrder = 1,
		}, {
			TimeText = React.createElement(Text, {
				tag = "anchor-center-center auto-xy content-inverse-default position-center-center text-caption-medium",
				Text = activeHandlePosition:map(function(position)
					return getFormatTime(position * props.timeLength)
				end),
			}),
		}),

		VerticalBar = React.createElement(View, {
			tag = "anchor-center-center bg-system-contrast size-50-300",
			LayoutOrder = 2,
		}),
	})
end

return TrimTooltip
