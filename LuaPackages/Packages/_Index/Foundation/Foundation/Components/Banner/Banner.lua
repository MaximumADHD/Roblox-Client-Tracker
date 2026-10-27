local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local Card = require(Foundation.Components.Card)
local Types = require(Foundation.Components.Types)

local BannerSize = require(Foundation.Enums.BannerSize)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local CardDensity = require(Foundation.Enums.CardDensity)
local CardHeaderSize = require(Foundation.Enums.CardHeaderSize)
local CardVariant = require(Foundation.Enums.CardVariant)
local InputSize = require(Foundation.Enums.InputSize)

local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local Thumbnail = require(script.Parent.Subcomponents.Thumbnail)
local UpsellContent = require(script.Parent.Subcomponents.UpsellContent)

type CardProps = Card.CardProps

export type BannerDensity = Thumbnail.BannerDensity

export type BannerThumbnail = Thumbnail.BannerThumbnail

-- End image. A string uses the default width. A table can set width.
export type BannerMedia = string | {
	-- Image asset or Foundation image key.
	image: string,
	-- End-image width in pixels. Defaults to the card end width (136) when omitted.
	width: number?,
}

type BannerSharedProps = {
	-- Padding density of the banner card. Defaults to `CardDensity.Default`.
	density: BannerDensity?,
	-- Primary heading of the banner.
	title: string?,
	-- Supporting copy under the title.
	description: string?,
} & Types.CommonProps

export type MediumBannerProps = BannerSharedProps & {
	-- Medium banner size. Defaults to `BannerSize.Medium`.
	size: typeof(BannerSize.Medium)?,
	-- End media image for the medium banner.
	media: BannerMedia?,
	-- Optional primary and secondary actions.
	actions: {
		-- Primary action. Activates the banner.
		primary: {
			-- Called when the primary action is activated.
			onActivated: () -> (),
		}?,
		-- Optional secondary button.
		secondary: {
			-- Label shown on the secondary button.
			text: string,
			-- Called when the secondary action is activated.
			onActivated: () -> (),
		}?,
	}?,
}

export type SmallBannerProps = BannerSharedProps & {
	-- Discriminator for the small banner size.
	size: typeof(BannerSize.Small),
	-- Leading thumbnail for the small banner.
	thumbnail: BannerThumbnail?,
	-- Optional primary action.
	actions: {
		-- Primary action. Activates the banner.
		primary: {
			-- Called when the primary action is activated.
			onActivated: () -> (),
		}?,
	}?,
}

export type BannerProps = MediumBannerProps | SmallBannerProps

local defaultProps = {
	size = BannerSize.Medium,
	density = CardDensity.Default :: BannerDensity,
	testId = "--foundation-banner",
}

local function Banner(bannerProps: BannerProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(bannerProps, defaultProps)
	local primaryAction = if bannerProps.actions then bannerProps.actions.primary else nil

	local cardProps: CardProps = {
		variant = CardVariant.Emphasis,
		density = props.density,
		headerSize = if props.density == CardDensity.Compact then CardHeaderSize.Small else CardHeaderSize.Medium,
		onActivated = if primaryAction then primaryAction.onActivated else nil,
		ref = ref,
	}

	local children: React.ReactNode = nil
	if bannerProps.size == BannerSize.Small then
		children = {
			UpsellContent = React.createElement(UpsellContent, {
				density = props.density :: BannerDensity,
				title = props.title,
				description = props.description,
				thumbnail = bannerProps.thumbnail,
				onActivated = if primaryAction then primaryAction.onActivated else nil,
				testId = props.testId,
			}),
		}
	else
		local secondaryAction = if bannerProps.actions then bannerProps.actions.secondary else nil
		cardProps.title = props.title
		cardProps.description = props.description
		cardProps.lineClamp = {
			description = if props.density == CardDensity.Compact then 2 else 3,
		}
		cardProps.media = if typeof(bannerProps.media) == "table"
			then { image = bannerProps.media.image, width = bannerProps.media.width }
			else bannerProps.media
		children = if secondaryAction
			then {
				SecondaryAction = React.createElement(Button, {
					text = secondaryAction.text,
					onActivated = secondaryAction.onActivated,
					variant = ButtonVariant.SoftEmphasis,
					size = InputSize.Small,
					LayoutOrder = 1,
					testId = `{props.testId}--secondary-action`,
				}),
			}
			else nil
	end

	return React.createElement(Card, withCommonProps(props, cardProps), children)
end

return React.memo(React.forwardRef(Banner))
