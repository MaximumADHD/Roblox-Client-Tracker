local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

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

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local ButtonSize = require(Foundation.Enums.ButtonSize)
local FillBehavior = require(Foundation.Enums.FillBehavior)

type FillBehavior = FillBehavior.FillBehavior

type ToastButtonProps = {
	onActivated: () -> nil,
	variant: ButtonVariant.ButtonVariant?,
	text: string,
}

type ToastProps = {
	title: string?,
	text: string?,
	icon: string?,

	actions: { ToastButtonProps }?,
} & Types.CommonProps

local MAX_BUTTON_COUNT = 2

local defaultButtonProps = {
	onActivated = function() end,
	variant = ButtonVariant.Standard,
	text = "Button",
}

local function Toast(props: ToastProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()
	local cursor = useCursor({
		radius = UDim.new(0, tokens.Radius.Medium),
		offset = tokens.Size.Size_100,
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

				local buttonProps = Cryo.Dictionary.union(withDefaults(action, defaultButtonProps), {
					LayoutOrder = i,
					size = ButtonSize.Small,
					fillBehavior = FillBehavior.Fill,
				})
				buttons["ToastButton" .. i] = React.createElement(Button, buttonProps)
			end
		end
		return buttons
	end, { actions })

	local hasIcon = props.icon and props.icon ~= ""
	local hasTitle = props.title and props.title ~= ""
	local hasBody = props.text and props.text ~= ""

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = UDim2.new(0, tokens.Size.Size_500 * 9, 0, 0),
			Position = UDim2.new(0.5, 0, 0.1, 0),
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
					tag = "radius-circle bg-transparency-100 size-600-600",
				})
				else nil,
			Content = React.createElement(View, {
				LayoutOrder = 2,
				tag = {
					["auto-y fill self-center"] = true,
					["col gap-xxsmall"] = hasTitle or hasBody,
				},
			}, {
				Header = if hasTitle
					then React.createElement(Text, {
						LayoutOrder = 1,
						Text = props.title,
						tag = "auto-y size-full-0 text-align-x-left text-title-small content-emphasis text-truncate-end",
					})
					else nil,

				Body = if hasBody
					then React.createElement(Text, {
						LayoutOrder = 2,
						Text = props.text,
						tag = "auto-y size-full-0 text-wrap text-align-x-left text-body-small content-default",
					})
					else nil,

				Actions = if actions and #actions > 0
					then React.createElement(View, {
						LayoutOrder = 3,
						tag = {
							["auto-y row gap-small size-full-0"] = true,
							["padding-top-small"] = hasTitle or hasBody,
						},
					}, toastButtons)
					else nil,
			}),
		}
	)
end

return React.memo(React.forwardRef(Toast))
