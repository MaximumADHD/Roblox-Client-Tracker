--!strict

local Framework = script:FindFirstAncestor("UI").Parent

local React = require(Framework.Util.React)
local counter = require(Framework.Util.counter)

local joinTags = require(Framework.Styling.joinTags)
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)

local isTestEnvironment = require(Framework.TestHelpers.isTestEnvironment)

local styles = require(script.styles)
local CONTENT_MARGINS = styles:GetAttribute("IconSize").X.Offset + styles:GetAttribute("IconToContentPadding").Offset

export type ActionProps = {
	Label: string,
	Enabled: boolean,
	OnActivated: () -> (),
}

export type Props = {
	Body: string?,
	Heading: string,
	Width: number,

	ActionPrimary: ActionProps,
	ActionSecondary: ActionProps?,
	ActionTertiary: ActionProps?,

	OnSizeChanged: (Vector2) -> (),
}

local function Layout(props: Props)
	assert(supportsStyleSheets or isTestEnvironment(), "UseDialogLayout requires StyleSheets support")
	local children = (props :: any).children
	local tags = (props :: any)[React.Tag]

	local count = counter()

	return React.createElement("Frame", {
		Size = UDim2.fromOffset(props.Width, 1),
		[React.Tag] = joinTags(tags, "Component-UseDialogLayout X-Row X-FitY"),
		[React.Change.AbsoluteSize] = function(instance)
			props.OnSizeChanged(instance.AbsoluteSize)
		end :: any,
	}, {
		Icon = React.createElement("ImageLabel", {
			LayoutOrder = count(),
		}),
		Content = React.createElement("Frame", {
			LayoutOrder = count(),
			Size = UDim2.new(1, -CONTENT_MARGINS, 0, 0),
			[React.Tag] = "X-Column X-FitY",
		}, {
			Text = React.createElement("Frame", {
				LayoutOrder = count(),
				[React.Tag] = "X-Column X-FitY",
			}, {
				Heading = React.createElement("TextLabel", {
					LayoutOrder = count(),
					Text = props.Heading,
					[React.Tag] = "X-FitY",
				}),
				Body = props.Body and React.createElement("TextLabel", {
					LayoutOrder = count(),
					Text = props.Body,
					[React.Tag] = "X-FitY",
				}),
			}),
			Children = if React.Children.count(children) > 0
				then React.createElement("Frame", {
					LayoutOrder = count(),
					[React.Tag] = "X-Column X-FitY",
				}, children)
				else nil,
			Buttons = React.createElement("Frame", {
				LayoutOrder = count(),
				[React.Tag] = "X-FitY",
			}, {
				Tertiary = if props.ActionTertiary
					then React.createElement("TextButton", {
						Text = props.ActionTertiary.Label,
						[React.Tag] = joinTags(
							"Tertiary X-Corner X-Fit",
							if props.ActionTertiary.Enabled then "Enabled" else "Disabled"
						),
						[React.Event.Activated] = if props.ActionTertiary.Enabled
							then props.ActionTertiary.OnActivated :: any
							else nil,
					})
					else nil,
				RightAnchoredButtons = React.createElement("Frame", {
					[React.Tag] = "X-Row X-FitY",
				}, {
					Secondary = if props.ActionSecondary
						then React.createElement("TextButton", {
							LayoutOrder = count(),
							Text = props.ActionSecondary.Label,
							[React.Tag] = joinTags(
								"Secondary X-Corner X-Fit",
								if props.ActionSecondary.Enabled then "Enabled" else "Disabled"
							),
							[React.Event.Activated] = if props.ActionSecondary.Enabled
								then props.ActionSecondary.OnActivated :: any
								else nil,
						})
						else nil,
					Primary = if props.ActionPrimary
						then React.createElement("TextButton", {
							LayoutOrder = count(),
							Text = props.ActionPrimary.Label,
							[React.Tag] = joinTags(
								"Primary X-Corner X-Fit",
								if props.ActionPrimary.Enabled then "Enabled" else "Disabled"
							),
							[React.Event.Activated] = if props.ActionPrimary.Enabled
								then props.ActionPrimary.OnActivated :: any
								else nil,
						})
						else nil,
				}),
			}),
		}),
	})
end

return Layout
