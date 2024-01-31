local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local ImageSetLabel = dependencies.UIBlox.Core.ImageSet.ImageSetLabel

local BORDER_WIDTH = 2

local AvatarCircle = Roact.PureComponent:extend("AvatarCircle")

AvatarCircle.PresetSize = {
	Size36x36 = "Size36x36",
	Size48x48 = "Size48x48",
}

local OVERLAY_IMAGES = {
	[AvatarCircle.PresetSize.Size36x36] = "rbxasset://textures/ui/LuaChat/graphic/gr-profile-border-36x36.png",
	[AvatarCircle.PresetSize.Size48x48] = "rbxasset://textures/ui/LuaChat/graphic/gr-profile-border-48x48.png",
}

AvatarCircle.defaultProps = {
	--array of thumbnail URLs that are arranged within the circle
	thumbnails = {},

	--function that is called when the circle is tapped
	onActivated = nil,

	--color of the circle
	circleColor3 = Color3.new(0.9, 0.9, 0.9),
	circleTransparency = 0,
	circleInteriorBackgroundColor3 = Color3.new(0.8,0.8, 0.8),
	circleInteriorBackgroundTransparency = 0,
	circleDividerColor3 = Color3.new(0.7, 0.7, 0.7),
	circleDividerTransparency = 0,

	--resolution of the avatar circle mask
	overlaySize = AvatarCircle.PresetSize.Size48x48,

	presenceImage = nil,
	presenceIndicatorSize = 14,
}

local function createAlignedContainerElement(horizontalAlignment)
	return {
		layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = horizontalAlignment,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})
	}
end

function AvatarCircle:generateThumbnails(thumbnails)
	local totalThumbnails = #thumbnails
	local middle = totalThumbnails/2
	local even = (totalThumbnails % 2) == 0
	local frontHalf = (even and middle) or math.floor(middle)
	local backHalf = totalThumbnails-frontHalf

	--create presence indicator if it's a 1-on-1 conversation
	local presenceIndicator

	if totalThumbnails == 1 then
		if self.props.showNewPresenceImage then
			presenceIndicator = Roact.createElement(ImageSetLabel, {
				Size = UDim2.new(0, self.props.presenceIndicatorSize, 0, self.props.presenceIndicatorSize),
				BackgroundTransparency = 1,
				Image = self.props.presenceImage,
				ImageColor3 = self.props.presenceImageColor3,
				ImageTransparency = self.props.presenceImageTransparency,
			})
		else
			presenceIndicator = Roact.createElement("ImageLabel", {
				Size = UDim2.new(0, self.props.presenceIndicatorSize, 0, self.props.presenceIndicatorSize),
				BackgroundTransparency = 1,
				Image = self.props.presenceImage,
			})
		end
	end

	--Thumbnail containers
	local leftElements = createAlignedContainerElement(Enum.HorizontalAlignment.Right)
	local rightElements = createAlignedContainerElement(Enum.HorizontalAlignment.Left)
	local centerElements = createAlignedContainerElement(Enum.HorizontalAlignment.Center)

	for thumbnailIndex, thumbnailId in ipairs(thumbnails) do

		local Size
		local avatarScale = 0 --X Scale added to the thumbnail image
		local container
		local borderObject

		if totalThumbnails == 1 then
			Size = UDim2.new(1, 0, 1, 0)
			container = centerElements
		else
			if thumbnailIndex <= frontHalf then
				Size = UDim2.new(1/frontHalf, 0, 1/frontHalf, 0)
				container = leftElements

				--hard-coded adjustment cases for large images
				--Push the full-size image inward if there are 3 in the conversation
				if totalThumbnails == 3 then
					avatarScale = 0.125
				elseif totalThumbnails == 2 then
					avatarScale = 0.125
				end

				borderObject = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					ZIndex = 2, --layer over the avatar headshot
				}, {
					border = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, BORDER_WIDTH),
						Position = UDim2.new(0, 0, 1, -BORDER_WIDTH/2),
						BorderSizePixel = 0,
						BackgroundColor3 = self.props.circleDividerColor3,
						BackgroundTransparency = self.props.circleDividerTransparency,
					}),

					borderVertical = Roact.createElement("Frame", {
						Size = UDim2.new(0, BORDER_WIDTH, 1, 0),
						Position = UDim2.new(0, -BORDER_WIDTH/2, 0, 0),
						BorderSizePixel = 0,
						BackgroundColor3 = self.props.circleDividerColor3,
						BackgroundTransparency = self.props.circleDividerTransparency,
					}),
				})
			else
				Size = UDim2.new(1/backHalf, 0, 1/backHalf, 0)
				container = rightElements

				--Push the full-size images inward if there are 2 in the conversation
				if totalThumbnails == 2 then
					avatarScale = -0.125
				end

				borderObject = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					ZIndex = 2, --layer over the avatar headshot
				}, {
					border = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, BORDER_WIDTH),
						Position = UDim2.new(0, 0, 0, -BORDER_WIDTH/2),
						BorderSizePixel = 0,
						BackgroundColor3 = self.props.circleDividerColor3,
						BackgroundTransparency = self.props.circleDividerTransparency,
					}),

					borderVertical = Roact.createElement("Frame", {
						Size = UDim2.new(0, BORDER_WIDTH, 1, 0),
						Position = UDim2.new(0, -BORDER_WIDTH/2, 0, 0),
						BorderSizePixel = 0,
						BackgroundColor3 = self.props.circleDividerColor3,
						BackgroundTransparency = self.props.circleDividerTransparency,
					}),
				})
			end
		end

		--add headshot to container
		container["thumbnail-"..tostring(thumbnailIndex+1)] = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = Size,
			ClipsDescendants = true,
			LayoutOrder = #container+1,
		}, {
			headshotContainer = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(avatarScale, 0, 0, 0),
				BackgroundTransparency = 1,
			}, {
				headshot = Roact.createElement("ImageLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = thumbnailId,
				})
			}),

			borderObject = borderObject,
		})
	end

	return {
		rightElements = rightElements,
		leftElements = leftElements,
		centerElements = centerElements,
		presenceIndicator = presenceIndicator,
	}
end

function AvatarCircle:render()
	local thumbnails = self.props.thumbnails
	local overlayImage = OVERLAY_IMAGES[self.props.overlaySize]

	local generatedElements = self:generateThumbnails(thumbnails)

	return Roact.createElement("ImageButton", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = self.props.circleInteriorBackgroundColor3,
		BackgroundTransparency = self.props.circleInteriorBackgroundTransparency,
		BorderSizePixel = 0,
		Image = "",
		AutoButtonColor = false,
		ClipsDescendants = true,

		[Roact.Event.Activated] = self.props.onActivated,
	}, {
		imageMask = Roact.createElement("ImageLabel", {
			Image = overlayImage,
			ImageColor3 = self.props.circleColor3,
			ImageTransparency = self.props.circleTransparency,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			presenceFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				layout = Roact.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					VerticalAlignment = Enum.VerticalAlignment.Bottom,
				}),

				presenceIndicator = generatedElements.presenceIndicator,
			}),
		}),

		center = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			elementContainer = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, generatedElements.centerElements)
		}),

		left = Roact.createElement("Frame", {
			Size = UDim2.new(1, -1, 1, 0),
			Position = UDim2.new(-0.5, 0, 0, 0),
			BackgroundTransparency = 1,
		}, {
			elementContainer = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, generatedElements.leftElements)
		}),

		right = Roact.createElement("Frame", {
			Size = UDim2.new(1, -1, 1, 0),
			Position = UDim2.new(0.5, -2, 0, 0),
			BackgroundTransparency = 1,
		}, {
			elementContainer = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, generatedElements.rightElements)
		}),

	})
end

return AvatarCircle
