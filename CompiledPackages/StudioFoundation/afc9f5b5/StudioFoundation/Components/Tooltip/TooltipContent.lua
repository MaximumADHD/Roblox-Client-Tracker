local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)

local Foundation = require(Packages.Foundation)
local Text = Foundation.Text
local View = Foundation.View
local useTokens = Foundation.Hooks.useTokens
local useScaledValue = Foundation.Hooks.useScaledValue

local function TooltipContent(props: {
	title: string?,
	text: string?,
	shortcuts: { string }?,
	onAbsoluteSizeChanged: (frame: GuiObject) -> (),
})
	-- TODO (AleksandrSl 09/09/2025): Use Foundation component as is, if possible
	local tokens = useTokens()
	local maxXSize = useScaledValue(320)

	local shortcutText = React.useMemo(function(): string?
		if props.shortcuts == nil then
			return nil
		end
		return table.concat(props.shortcuts, ", ")
	end, { props.shortcuts })

	return React.createElement(View, {
		onAbsoluteSizeChanged = props.onAbsoluteSizeChanged,
		backgroundStyle = tokens.Inverse.Surface.Surface_0,
		tag = {
			["col gap-xsmall auto-xy"] = true,
			["padding-x-medium padding-y-small"] = props.text ~= nil,
			["padding-x-small padding-y-xsmall"] = props.text == nil,
		},
		sizeConstraint = {
			MaxSize = Vector2.new(maxXSize, math.huge),
		},
	}, {
		Header = React.createElement(
			View,
			{ LayoutOrder = 1, tag = "row flex-between gap-small size-full-0 auto-y" },
			{
				Title = React.createElement(Text, {
					LayoutOrder = 1,
					Text = props.title,
					tag = "auto-xy text-title-small content-inverse-emphasis",
				}),
				Shortcut = if props.shortcuts
					then React.createElement(Text, {
						LayoutOrder = 2,
						Text = shortcutText,
						tag = "auto-xy text-body-small content-inverse-muted",
					})
					else nil,
			}
		),
		Text = if props.text and props.text ~= ""
			then React.createElement(Text, {
				LayoutOrder = 2,
				Text = props.text,
				tag = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-inverse-default",
			})
			else nil,
	})
end

return TooltipContent
