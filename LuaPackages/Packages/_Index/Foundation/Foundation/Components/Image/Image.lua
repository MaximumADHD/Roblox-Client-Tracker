local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local ReactIs = require(Packages.ReactIs)
local FoundationImages = require(Packages.FoundationImages)

local Interactable = require(Foundation.Components.Interactable)
local Images = FoundationImages.Images
type ImageSetImage = FoundationImages.ImageSetImage
local getScaledSlice = require(script.Parent.ImageSet.getScaledSlice)
local isFoundationImage = require(script.Parent.ImageSet.isFoundationImage)

local Types = require(Foundation.Components.Types)
local withDefaults = require(Foundation.Utility.withDefaults)
local useDefaultTags = require(Foundation.Utility.useDefaultTags)
local withGuiObjectProps = require(Foundation.Utility.withGuiObjectProps)
local useStyledDefaults = require(Foundation.Utility.useStyledDefaults)
local indexBindable = require(Foundation.Utility.indexBindable)
local GuiObjectChildren = require(Foundation.Utility.GuiObjectChildren)
type ColorStyle = Types.ColorStyle

local useStyleTags = require(Foundation.Providers.Style.useStyleTags)

type Slice = Types.Slice
type StateChangedCallback = Types.StateChangedCallback
type Bindable<T> = Types.Bindable<T>

export type ImageRect = {
	offset: Bindable<Vector2>?,
	size: Bindable<Vector2>?,
}

export type ImageProps = {
	slice: Slice?,
	imageRect: ImageRect?,
	imageStyle: ColorStyle?,

	Image: Bindable<string>?,
	ResampleMode: Bindable<Enum.ResamplerMode>?,
	ScaleType: Bindable<Enum.ScaleType>?,
	TileSize: Bindable<UDim2>?,
} & Types.GuiObjectProps & Types.CommonProps

local defaultProps = {
	AutoLocalize = false,
	AutoButtonColor = false,
	BorderSizePixel = 0,
	isDisabled = false,
}

local DEFAULT_TAGS = "gui-object-defaults"
local DEFAULT_TAGS_WITH_BG = `{DEFAULT_TAGS} x-default-transparency`

local function Image(imageProps: ImageProps, ref: React.Ref<GuiObject>?)
	local defaultPropsWithStyles = if not Flags.FoundationDisableStylingPolyfill
		then useStyledDefaults("Image", imageProps.tag, DEFAULT_TAGS, defaultProps)
		else nil
	local props = withDefaults(
		imageProps,
		(
				if Flags.FoundationDisableStylingPolyfill then defaultProps else defaultPropsWithStyles
			) :: typeof(defaultProps)
	)

	local isInteractable = props.onStateChanged ~= nil or props.onActivated ~= nil or props.onSecondaryActivated ~= nil

	local image, imageRectOffset, imageRectSize = React.useMemo(function(): ...any
		-- selene: allow(shadowing)
		local image = props.Image
		-- selene: allow(shadowing)
		local imageRectOffset = if props.imageRect then props.imageRect.offset else nil
		-- selene: allow(shadowing)
		local imageRectSize = if props.imageRect then props.imageRect.size else nil

		if ReactIs.isBinding(props.Image) then
			local function getImageBindingValue(prop)
				return (props.Image :: React.Binding<string>):map(function(value: string)
					if isFoundationImage(value) then
						local asset = Images[value]
						return if asset then asset[prop] else nil
					elseif prop == "Image" then
						return value
					elseif prop == "ImageRectOffset" and props.imageRect then
						return props.imageRect.offset
					elseif prop == "ImageRectSize" and props.imageRect then
						return props.imageRect.size
					else
						return nil
					end
				end)
			end

			image = getImageBindingValue("Image")
			imageRectOffset = getImageBindingValue("ImageRectOffset")
			imageRectSize = getImageBindingValue("ImageRectSize")
		elseif typeof(props.Image) == "string" and isFoundationImage(props.Image) then
			local asset = Images[props.Image]
			if asset then
				image = asset.Image
				imageRectOffset = asset.ImageRectOffset
				imageRectSize = asset.ImageRectSize
			end
		end

		return image, imageRectOffset, imageRectSize
	end, { props.Image, props.imageRect :: any, Images :: any })

	local sliceCenter, sliceScale, scaleType = nil :: Bindable<Rect?>, nil :: Bindable<number?>, props.ScaleType
	if props.slice then
		if ReactIs.isBinding(props.Image) then
			local slice = (props.Image :: React.Binding<string>):map(function(value: string)
				if isFoundationImage(value) then
					return getScaledSlice(props.slice.center, props.slice.scale)
				else
					return props.slice
				end
			end)
			sliceCenter = slice:map(function(value: Slice)
				return value.center
			end)
			sliceScale = slice:map(function(value: Slice)
				return value.scale
			end)
		elseif typeof(props.Image) == "string" then
			if isFoundationImage(props.Image) then
				local slice = getScaledSlice(props.slice.center, props.slice.scale)
				sliceCenter = slice.center
				sliceScale = slice.scale
			elseif Flags.FoundationFixImageSlice then
				sliceCenter, sliceScale = props.slice.center, props.slice.scale
			end
		end
		scaleType = Enum.ScaleType.Slice
	end

	local defaultTags = if props.backgroundStyle ~= nil then DEFAULT_TAGS_WITH_BG else DEFAULT_TAGS

	local tagsWithDefaults = useDefaultTags(props.tag, defaultTags)
	local tag = useStyleTags(tagsWithDefaults)

	local engineComponent = if isInteractable then "ImageButton" else "ImageLabel"

	local engineComponentProps = withGuiObjectProps(props, {
		AutoButtonColor = if engineComponent == "ImageButton" then props.AutoButtonColor else nil,
		Image = image,
		ImageColor3 = if props.imageStyle then indexBindable(props.imageStyle, "Color3") else nil,
		ImageTransparency = if props.imageStyle then indexBindable(props.imageStyle, "Transparency") else nil,
		ImageRectOffset = imageRectOffset,
		ImageRectSize = imageRectSize,
		ResampleMode = props.ResampleMode,
		ScaleType = scaleType,
		SliceCenter = sliceCenter,
		SliceScale = sliceScale,
		TileSize = props.TileSize,

		ref = ref,
		[React.Tag] = tag,
	})

	local component = if isInteractable then Interactable else engineComponent

	local componentProps = if isInteractable
		then Cryo.Dictionary.union(engineComponentProps, {
			component = engineComponent,
			onActivated = props.onActivated,
			onSecondaryActivated = props.onSecondaryActivated,
			onStateChanged = props.onStateChanged,
			stateLayer = props.stateLayer,
			isDisabled = props.isDisabled,
			cursor = props.cursor,
		})
		else engineComponentProps

	return React.createElement(component, componentProps, GuiObjectChildren(props))
end

return React.memo(React.forwardRef(Image))
