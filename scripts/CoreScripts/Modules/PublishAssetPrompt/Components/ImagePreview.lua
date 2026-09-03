local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)

local Image = Foundation.Image
local View = Foundation.View
local useTokens = Foundation.Hooks.useTokens

local CHECKERBOARD_IMAGE = "rbxassetid://6372755229"

export type Props = {
	imageContent: Content,
	autoRotateSeconds: number?,
}

local function ImagePreview(props: Props)
	local tokens = useTokens()

	local backgrounds = React.useMemo(function()
		return {
			{ id = "Black", style = tokens.Color.Extended.Black.Black_100 },
			{ id = "White", style = tokens.Color.Extended.White.White_100 },
			{ id = "Checkerboard", style = tokens.Color.Extended.White.White_0, image = CHECKERBOARD_IMAGE },
		}
	end, { tokens })

	local selected, setSelected = React.useState(1)
	-- Set by a swatch press and by unmount; either one ends the rotation for good.
	local stopRotation = React.useRef(false)
	local stepSeconds = if props.autoRotateSeconds then props.autoRotateSeconds / #backgrounds else 0

	React.useEffect(function()
		if stepSeconds <= 0 then
			return function() end
		end

		task.spawn(function()
			for _ = 2, #backgrounds do
				task.wait(stepSeconds)
				if stopRotation.current then
					return
				end
				setSelected(function(current)
					return current % #backgrounds + 1
				end)
			end
		end)

		return function()
			stopRotation.current = true
		end
	end, { stepSeconds, backgrounds } :: { any })

	local backdrop, setBackdrop = React.useBinding(backgrounds[1].style)
	local fadeSeconds = tokens.Time.Time_300

	React.useEffect(function()
		local from = backdrop:getValue()
		local to = backgrounds[selected].style
		local isCancelled = false

		task.spawn(function()
			local elapsed = 0
			while elapsed < fadeSeconds do
				elapsed += task.wait()
				if isCancelled then
					return
				end
				local alpha = math.min(elapsed / fadeSeconds, 1)
				setBackdrop({
					Color3 = from.Color3:Lerp(to.Color3, alpha),
					Transparency = from.Transparency + (to.Transparency - from.Transparency) * alpha,
				})
			end
		end)

		return function()
			isCancelled = true
		end
	end, { selected, backgrounds, fadeSeconds, backdrop, setBackdrop } :: { any })

	local swatches: { [string]: React.ReactNode } = {}
	for index, background in backgrounds do
		swatches[background.id] = React.createElement(View, {
			LayoutOrder = index,
			tag = {
				["size-350 radius-small"] = true,
				["stroke-thick stroke-emphasis"] = index == selected,
				["stroke-standard stroke-default"] = index ~= selected,
			},
			backgroundStyle = background.style,
			onActivated = function()
				stopRotation.current = true
				setSelected(index)
			end,
			testId = `ImagePreviewBackgroundSwatch{background.id}`,
		}, {
			Checkerboard = background.image and React.createElement(Image, {
				tag = "size-full radius-small",
				Image = background.image,
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.fromOffset(tokens.Size.Size_150, tokens.Size.Size_150),
			}) or nil,
		})
	end

	return React.createElement(View, {
		tag = "col align-x-center gap-xsmall size-full",
	}, {
		Preview = React.createElement(Image, {
			LayoutOrder = 1,
			tag = "size-full aspect-1-1 radius-small clip",
			backgroundStyle = backdrop,
			imageStyle = backdrop:map(function(style)
				return {
					Color3 = tokens.Color.Extended.White.White_100.Color3,
					Transparency = 1 - style.Transparency,
				}
			end),
			Image = CHECKERBOARD_IMAGE,
			ScaleType = Enum.ScaleType.Tile,
			TileSize = UDim2.fromOffset(tokens.Size.Size_400, tokens.Size.Size_400),
			testId = "ImagePreviewBackground",
		}, {
			Asset = React.createElement(Image, {
				tag = "size-full",
				ImageContent = props.imageContent,
				ScaleType = Enum.ScaleType.Fit,
				ZIndex = 2,
				testId = "ImagePreviewAsset",
			}),
		}),
		Swatches = React.createElement(View, {
			tag = "row gap-xsmall auto-xy",
			LayoutOrder = 2,
			testId = "ImagePreviewSwatches",
		}, swatches),
	})
end

return ImagePreview
