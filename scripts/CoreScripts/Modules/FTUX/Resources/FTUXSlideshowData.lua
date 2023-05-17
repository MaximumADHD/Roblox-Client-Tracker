local FTUX = script.Parent.Parent
local ButtonEnum = require(FTUX.Enums.ButtonEnum)
local PlatformEnum = require(FTUX.Enums.PlatformEnum)
type Platform = PlatformEnum.Platform
type Button = ButtonEnum.Button

local FTUXSlideshowData = {
	[PlatformEnum.QuestVR :: Platform] = {
		{
			title = "CoreScripts.VRFTUX.Slideshow.Perspective.Title",
			text = {
				"CoreScripts.VRFTUX.Slideshow.Perspective.Body1",
				"CoreScripts.VRFTUX.Slideshow.Perspective.Body2",
			},
			image = "rbxassetid://13251804809",
			button = ButtonEnum.SkipButton :: Button,
		},
		{
			title = "CoreScripts.VRFTUX.Slideshow.Movement.Title",
			text = {
				"CoreScripts.VRFTUX.Slideshow.Movement.Body1",
				"CoreScripts.VRFTUX.Slideshow.Movement.Body2",
				"CoreScripts.VRFTUX.Slideshow.Movement.Body3",
			},
			image = "rbxassetid://13251750527",
			button = ButtonEnum.SkipButton :: Button,
		},
		{
			title = "CoreScripts.VRFTUX.Slideshow.SafetyBubble.Title",
			text = {
				"CoreScripts.VRFTUX.Slideshow.SafetyBubble.Body1",
				"CoreScripts.VRFTUX.Slideshow.SafetyBubble.Body2",
			},
			image = "rbxassetid://13251806846",
			button = ButtonEnum.NextButton :: Button,
		},
		{
			title = "CoreScripts.VRFTUX.Slideshow.OtherSettings.Title",
			text = {
				"CoreScripts.VRFTUX.Slideshow.OtherSettings.Body1",
				"CoreScripts.VRFTUX.Slideshow.OtherSettings.Body2",
			},
			image = "",
			button = ButtonEnum.NextButton :: Button,
		},
	},
}

return FTUXSlideshowData
