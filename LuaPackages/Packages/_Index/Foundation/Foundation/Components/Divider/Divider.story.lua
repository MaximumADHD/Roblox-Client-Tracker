local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Divider = require(Foundation.Components.Divider)
local DividerVariant = require(Foundation.Enums.DividerVariant)
type DividerVariant = DividerVariant.DividerVariant
local Orientation = require(Foundation.Enums.Orientation)
type Orientation = Orientation.Orientation
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local function LabeledDivider(props: {
	label: string,
	LayoutOrder: number,
	variant: DividerVariant?,
	orientation: Orientation?,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-default",
			LayoutOrder = 1,
		}),
		Divider = React.createElement(Divider, {
			variant = props.variant,
			orientation = props.orientation,
			LayoutOrder = 2,
		}),
	})
end

local function PlaygroundStory(props)
	return React.createElement(View, {
		tag = "align-x-center align-y-center gap-large size-full-2000 padding-large bg-surface-0",
	}, {
		Divider = React.createElement(Divider, {
			variant = props.controls.variant,
			orientation = props.controls.orientation,
		}),
	})
end

local VARIANT_ORDER = {
	DividerVariant.Default,
	DividerVariant.Heavy,
	DividerVariant.Inset,
	DividerVariant.InsetLeft,
	DividerVariant.InsetRight,
} :: { DividerVariant }

local function VariantsStory()
	local children: { [string]: React.ReactNode } = {}

	for index, variant in VARIANT_ORDER do
		children["Divider-" .. tostring(variant)] = React.createElement(LabeledDivider, {
			label = variant,
			LayoutOrder = index,
			variant = variant :: DividerVariant,
			orientation = Orientation.Horizontal,
		})
	end

	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, children)
end

local function OrientationStory()
	return React.createElement(View, {
		tag = "col align-x-center gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Horizontal = React.createElement(LabeledDivider, {
			label = "Horizontal",
			LayoutOrder = 1,
			orientation = Orientation.Horizontal,
		}),
		Vertical = React.createElement(View, {
			tag = "col align-x-left gap-small size-full-0 auto-y",
			LayoutOrder = 2,
		}, {
			Label = React.createElement(Text, {
				Text = "Vertical",
				tag = "auto-xy text-caption-small text-align-x-left content-default",
				LayoutOrder = 1,
			}),
			Container = React.createElement(View, {
				tag = "row align-x-center align-y-center",
				Size = UDim2.new(1, 0, 0, 200),
				LayoutOrder = 2,
			}, {
				Divider = React.createElement(Divider, {
					orientation = Orientation.Vertical,
				}),
			}),
		}),
	})
end

return {
	summary = "Divider is a simple visual element used to separate related content into distinct sections or groups.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Variants",
			summary = "Variant applies to horizontal only.",
			story = VariantsStory,
		},
		{
			name = "Orientation",
			story = OrientationStory,
		},
	},
	controls = {
		variant = VARIANT_ORDER,
		orientation = {
			Orientation.Horizontal,
			Orientation.Vertical,
		} :: { Orientation },
	},
}
