local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local InputPlatform = require(Foundation.Enums.InputPlatform)

local keyDisplay = require(script.Parent.keyDisplay)
local useShortcutVariants = require(script.Parent.useShortcutVariants)

type InputPlatform = InputPlatform.InputPlatform
type ShortcutVariantProps = useShortcutVariants.ShortcutVariantProps

type KeyCapProps = {
	keyCode: Enum.KeyCode,
	platform: InputPlatform,
	variantProps: ShortcutVariantProps,
	LayoutOrder: number,
	testId: string,
}

local function KeyCap(props: KeyCapProps): React.ReactNode
	local variantProps = props.variantProps
	local key = keyDisplay.resolveKey(props.keyCode, props.platform)
	if key == nil then
		return nil
	end

	-- Gamepad glyphs draw without a cap, sized to fill the cap height.
	if key.kind == "GamepadIcon" then
		return React.createElement(View, {
			tag = variantProps.capless.tag,
			LayoutOrder = props.LayoutOrder,
			testId = props.testId,
		}, {
			Content = React.createElement(Icon, {
				name = key.icon,
				size = variantProps.gamepadIcon.size,
				style = variantProps.gamepadIcon.style,
				testId = `{props.testId}--icon`,
			}),
		})
	end

	-- Square cap for one character; longer labels get padding and grow.
	local needsWideCap = key.kind == "Text" and (utf8.len(key.text) or 0) > 1

	return React.createElement(View, {
		tag = variantProps.cap.tag,
		-- One size wants 6px here, which is off the padding scale.
		padding = if needsWideCap
			then {
				left = UDim.new(0, variantProps.capWide.padding),
				right = UDim.new(0, variantProps.capWide.padding),
			}
			else nil,
		LayoutOrder = props.LayoutOrder,
		testId = props.testId,
	}, {
		Content = if key.kind == "Icon"
			then React.createElement(Icon, {
				name = key.icon,
				size = variantProps.icon.size,
				style = variantProps.icon.style,
				testId = `{props.testId}--icon`,
			})
			else React.createElement(Text, {
				Text = key.text,
				tag = variantProps.text.tag,
				testId = `{props.testId}--text`,
			}),
	})
end

return KeyCap
