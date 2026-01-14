local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)

local Dash = require(Packages.Dash)
local FoundationCloudAssets = require(Packages.FoundationCloudAssets)
local FoundationImages = require(Packages.FoundationImages)
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Assets = FoundationCloudAssets.Assets
local Interactable = require(Foundation.Components.Interactable)
local Images = FoundationImages.Images
type ImageSetImage = FoundationImages.ImageSetImage
local getScaledSlice = require(script.Parent.ImageSet.getScaledSlice)
local isCloudAsset = require(script.Parent.CloudAsset.isCloudAsset)
local isFoundationImage = require(script.Parent.ImageSet.isFoundationImage)

local GuiObjectChildren = require(Foundation.Utility.GuiObjectChildren)
local Types = require(Foundation.Components.Types)
local indexBindable = require(Foundation.Utility.indexBindable)
local useDefaultTags = require(Foundation.Utility.useDefaultTags)
local useStyledDefaults = require(Foundation.Utility.useStyledDefaults)
local withDefaults = require(Foundation.Utility.withDefaults)
local withGuiObjectProps = require(Foundation.Utility.withGuiObjectProps)
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

local function getAspectRatio(size: Vector2)
	return size.X / size.Y
end

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

	local image, imageRectOffset, imageRectSize, aspectRatio = React.useMemo(function(): ...any
		-- selene: allow(shadowing)
		local image = props.Image
		-- selene: allow(shadowing)
		local imageRectOffset = if props.imageRect then props.imageRect.offset else nil
		-- selene: allow(shadowing)
		local imageRectSize = if props.imageRect then props.imageRect.size else nil
		-- selene: allow(shadowing)
		local aspectRatio = props.aspectRatio

		if ReactIs.isBinding(props.Image) then
			local function getImageBindingValue(prop)
				return (props.Image :: React.Binding<string>):map(function(value: string)
					if isFoundationImage(value) then
						local asset
						if isCloudAsset(value) then
							asset = Assets[value]
							aspectRatio = getAspectRatio(asset.size)
							if prop == "Image" then
								return asset.assetId
							end
							return nil
						end
						asset = Images[value]
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
			if isCloudAsset(props.Image) then
				local asset = Assets[props.Image]
				image = asset.assetId
				aspectRatio = getAspectRatio(asset.size)
			else
				local asset = Images[props.Image]
				if asset then
					image = asset.Image
					imageRectOffset = asset.ImageRectOffset
					imageRectSize = asset.ImageRectSize
				end
			end
		end

		return image, imageRectOffset, imageRectSize, aspectRatio
	end, { props.Image, props.imageRect, Images } :: { unknown })

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
			else
				sliceCenter, sliceScale = props.slice.center, props.slice.scale
			end
		end
		scaleType = Enum.ScaleType.Slice
	end

	props.aspectRatio = aspectRatio

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

	local imageComponentProps = {
		component = engineComponent,
		onActivated = props.onActivated,
		onSecondaryActivated = props.onSecondaryActivated,
		onStateChanged = props.onStateChanged,
		stateLayer = props.stateLayer,
		isDisabled = props.isDisabled,
		cursor = props.cursor,
	}

	local componentProps = if isInteractable
		then Dash.union(engineComponentProps, imageComponentProps)
		else engineComponentProps

	return React.createElement(component, componentProps, GuiObjectChildren(props))
end

return React.memo(React.forwardRef(Image))
