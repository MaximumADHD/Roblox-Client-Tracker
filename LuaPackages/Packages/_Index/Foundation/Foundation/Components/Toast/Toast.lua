local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Logger = require(Foundation.Utility.Logger)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local Image = require(Foundation.Components.Image)
local Button = require(Foundation.Components.Button)
local useCursor = require(Foundation.Providers.Cursor.useCursor)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local useScaledValue = require(Foundation.Utility.useScaledValue)

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local InputSize = require(Foundation.Enums.InputSize)
local FillBehavior = require(Foundation.Enums.FillBehavior)

type ButtonVariant = ButtonVariant.ButtonVariant
type FillBehavior = FillBehavior.FillBehavior

export type ToastProps = {
	title: string?,
	text: string?,
	icon: string?,
	actions: { Types.ActionProps }?,

	-- Width of the toast. If not defined, toast will be `400px` wide on desktop.
	width: UDim?,
} & Types.CommonProps

local MAX_BUTTON_COUNT = 2
local DEFAULT_TOAST_WIDTH = 400

local defaultProps = {
	testId = "--foundation-toast",
}

local function Toast(toastProps: ToastProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(toastProps, defaultProps)
	local tokens = useTokens()
	local cursor = useCursor({
		radius = UDim.new(0, tokens.Radius.Medium),
		offset = tokens.Size.Size_200,
		borderWidth = tokens.Stroke.Thicker,
	})

	local actions = props.actions
	local toastButtons = React.useMemo(function()
		local buttons: { [string]: React.Node } = {}
		if actions then
			for i, action in actions do
				if i > MAX_BUTTON_COUNT then
					Logger:warning(`Toast only supports up to {MAX_BUTTON_COUNT} actions`)
					break
				end

				local actionProps = {
					LayoutOrder = #actions - i,
					size = InputSize.Medium,
					fillBehavior = FillBehavior.Fill,
				}
				local buttonProps = Dash.union(action, actionProps)
				buttons["ToastButton" .. i] = React.createElement(Button, buttonProps :: any)
			end
		end
		return buttons
	end, { actions })

	local hasIcon = props.icon and props.icon ~= ""
	local hasTitle = props.title and props.title ~= ""
	local hasBody = props.text and props.text ~= ""
	local width = props.width or UDim.new(0, useScaledValue(DEFAULT_TOAST_WIDTH))

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = UDim2.new(width, UDim.new()),
			Position = UDim2.fromScale(0.5, 0.1),
			selection = {
				-- We do not currently have an action associated with the toast itself, nor do we support it on consoles,
				-- but there are plans to support this and we want to build it with cursor support in mind.
				Selectable = false,
				SelectionImageObject = cursor,
			},
			tag = "auto-y padding-medium radius-medium row gap-small bg-over-media-0",
			ref = ref,
		}),
		{
			Media = if hasIcon
				then React.createElement(Image, {
					LayoutOrder = 1,
					Image = props.icon,
					tag = "size-1200-1200",
					testId = `{props.testId}--media`,
				})
				else nil,
			Content = React.createElement(View, {
				LayoutOrder = 2,
				tag = {
					["auto-y fill self-center"] = true,
					["col gap-xxsmall"] = (hasTitle or hasBody) :: boolean,
				},
				testId = `{props.testId}--content`,
			}, {
				Header = if hasTitle
					then React.createElement(Text, {
						LayoutOrder = 1,
						Text = props.title,
						tag = "auto-y size-full-0 text-align-x-left text-title-small content-emphasis text-truncate-end",
						testId = `{props.testId}--header`,
					})
					else nil,

				Body = if hasBody
					then React.createElement(Text, {
						LayoutOrder = 2,
						Text = props.text,
						tag = "auto-y size-full-0 text-wrap text-align-x-left text-body-small content-default",
						testId = `{props.testId}--body`,
					})
					else nil,

				Actions = if actions and #actions > 0
					then React.createElement(View, {
						LayoutOrder = 3,
						tag = {
							["auto-y row gap-small size-full-0"] = true,
							["padding-top-small"] = (hasTitle or hasBody) :: boolean,
						},
						testId = `{props.testId}--actions`,
					}, toastButtons)
					else nil,
			}),
		}
	)
end

return React.memo(React.forwardRef(Toast))
