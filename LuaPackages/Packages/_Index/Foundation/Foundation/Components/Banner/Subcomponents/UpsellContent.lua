local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local useTokens = require(Foundation.Providers.Style.useTokens)

local Thumbnail = require(script.Parent.Thumbnail)
local useUpsellContentVariants = require(script.Parent.useUpsellContentVariants)

type BannerDensity = Thumbnail.BannerDensity
type BannerThumbnail = Thumbnail.BannerThumbnail

local IconName = BuilderIcons.Icon

export type UpsellContentProps = {
	density: BannerDensity,
	title: string?,
	description: string?,
	thumbnail: BannerThumbnail?,
	onActivated: (() -> ())?,
	testId: string,
}

local function UpsellContent(props: UpsellContentProps)
	local tokens = useTokens()
	local variantProps = useUpsellContentVariants(tokens, props.density)

	return React.createElement(View, {
		tag = variantProps.container.tag,
		LayoutOrder = 1,
		testId = `{props.testId}--upsell-content`,
	}, {
		Thumbnail = if props.thumbnail
			then React.createElement(Thumbnail, {
				thumbnail = props.thumbnail,
				density = props.density,
				testId = props.testId,
				LayoutOrder = 1,
			})
			else nil,
		Content = React.createElement(View, {
			tag = variantProps.content.tag,
			LayoutOrder = 2,
			testId = `{props.testId}--upsell-content--body`,
		}, {
			Title = if props.title
				then React.createElement(Text, {
					Text = props.title,
					tag = variantProps.title.tag,
					LayoutOrder = 1,
					testId = `{props.testId}--title`,
				})
				else nil,
			Description = if props.description
				then React.createElement(Text, {
					Text = props.description,
					TextTruncate = Enum.TextTruncate.AtEnd,
					sizeConstraint = variantProps.description.sizeConstraint,
					tag = variantProps.description.tag,
					LayoutOrder = 2,
					testId = `{props.testId}--description`,
				})
				else nil,
		}),
		Chevron = if props.onActivated
			then React.createElement(Icon, {
				name = IconName.ChevronSmallRight,
				LayoutOrder = 3,
				testId = `{props.testId}--chevron`,
			})
			else nil,
	})
end

return UpsellContent
