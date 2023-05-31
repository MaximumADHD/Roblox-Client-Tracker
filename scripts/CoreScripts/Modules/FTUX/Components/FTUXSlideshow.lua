local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local FTUX = script.Parent.Parent
local slideshowData = require(FTUX.Resources.FTUXSlideshowData)
local FTUXConstants = require(FTUX.Resources.FTUXConstants)

local PlatformEnum = require(FTUX.Enums.PlatformEnum)

local Header = require(FTUX.Components.Slideshow.Header)
local Stepper = require(FTUX.Components.Slideshow.Stepper)
local Title = require(FTUX.Components.Slideshow.Title)
local Description = require(FTUX.Components.Slideshow.Description)
local EndItem = require(FTUX.Components.Slideshow.EndItem)

local EventHandler = require(FTUX.Events.EventHandler)

type Platform = PlatformEnum.Platform
type Props = {
	platform: Platform,
}

local function FTUXSlideshow(props: Props)
	local currentIndex, setCurrentIndex = React.useState(1)

	local platform = props.platform
	local slideshowData = slideshowData[platform :: Platform]
	local constants = FTUXConstants[platform :: Platform].PanelConstants
	local currentSlide = slideshowData[currentIndex]

	local CONTENT_HEIGHT_RATIO = constants.CONTENT_HEIGHT_RATIO
	local FOOTER_HEIGHT_RATIO = constants.FOOTER_HEIGHT_RATIO
	local CONTENT_PADDING_RATIO = constants.CONTENT_PADDING / constants.SLIDESHOW_FRAME_WIDTH
	local CONTENT_WIDTH_RATIO = 1 - 2 * CONTENT_PADDING_RATIO

	local increaseCurrentIndex = React.useCallback(function()
		setCurrentIndex(currentIndex + 1)
	end, { currentIndex })

	React.useEffect(function()
		EventHandler.StartEvents(platform :: Platform, currentIndex, increaseCurrentIndex)

		return function()
			EventHandler.StopEvents(platform :: Platform, currentIndex)
		end
	end, { currentIndex })

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0.05, 0),
		}),
		SlideshowLayout = React.createElement("UIListLayout", {
			Padding = UDim.new(0.05, 0),
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Header = React.createElement(Header, { platform = platform :: Platform }),
		ContentFrame = React.createElement("Frame", {
			LayoutOrder = 2,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, CONTENT_HEIGHT_RATIO, 0),
			Position = UDim2.new(0, 0, 0, 0),
		}, {
			Content = React.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(CONTENT_WIDTH_RATIO, 0, 1, 0),
				Position = UDim2.new(CONTENT_PADDING_RATIO, 0, 0, 0),
			}, {
				ContentLayout = React.createElement("UIListLayout", {
					Padding = UDim.new(0.05, 0),
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Title = React.createElement(Title, {
					platform = platform :: Platform,
					currentIndex = currentIndex,
				}),
				Description = React.createElement(Description, {
					platform = platform :: Platform,
					currentIndex = currentIndex,
				}),
				ImageFrame = React.createElement("Frame", {
					LayoutOrder = 3,
					BackgroundTransparency = 1,
					Size = UDim2.new(1.2, 0, 0.4, 0),
					Position = UDim2.new(0, 0, 0, 0),
				}, {
					Image = React.createElement("ImageLabel", {
						Image = currentSlide.image,
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 1, 0),
						LayoutOrder = 3,
						ScaleType = Enum.ScaleType.Fit,
					}),
				}),
			}),
		}),
		FooterFrame = React.createElement("Frame", {
			LayoutOrder = 3,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, FOOTER_HEIGHT_RATIO, 0),
			Position = UDim2.new(0, 0, 0, 0),
		}, {
			Footer = React.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(CONTENT_WIDTH_RATIO, 0, 1, 0),
				Position = UDim2.new(CONTENT_PADDING_RATIO, 0, 0, 0),
			}, {
				ContentLayout = React.createElement("UIListLayout", {
					Padding = (currentIndex ~= #slideshowData and UDim.new(0.2, 0) or UDim.new(0, 0)),
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Stepper = React.createElement(Stepper, {
					layoutOrder = 1,
					numberActivated = currentIndex,
					numberOfSteps = #slideshowData,
				}, {}),
				EndItem = React.createElement(EndItem, {
					platform = platform :: Platform,
					currentIndex = currentIndex,
					increaseCurrentIndex = increaseCurrentIndex,
				}),
			}),
		}),
	})
end

return FTUXSlideshow
