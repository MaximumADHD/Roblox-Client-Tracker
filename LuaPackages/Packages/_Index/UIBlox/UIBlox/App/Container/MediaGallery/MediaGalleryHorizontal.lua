--!nonstrict
local UIBlox = script:FindFirstAncestor("UIBlox")

local Cryo = require(UIBlox.Parent.Cryo)
local React = require(UIBlox.Parent.React)
local MediaGallerySingle = require(script.Parent.MediaGallerySingle)
local MediaGalleryCarousel = require(script.Parent.MediaGalleryCarousel)

export type LayoutMode = "Gallery" | "Carousel"

local defaultProps = {
	layoutMode = "Gallery",
}

export type Props = MediaGallerySingle.Props & MediaGalleryCarousel.Props & {
	layoutMode: LayoutMode?,
}

type InternalProps = Props & typeof(defaultProps)

local function MediaGalleryHorizontal(providedProps: Props)
	local props: InternalProps = Cryo.Dictionary.join(defaultProps, providedProps)

	if props.layoutMode == "Carousel" then
		return React.createElement(MediaGalleryCarousel, props)
	else
		return React.createElement(MediaGallerySingle, props)
	end
end

return MediaGalleryHorizontal
