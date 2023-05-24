local FTUX = script.Parent.Parent
local ButtonEnum = require(FTUX.Enums.ButtonEnum)
local PlatformEnum = require(FTUX.Enums.PlatformEnum)
type Platform = PlatformEnum.Platform
type Button = ButtonEnum.Button

local FTUXSlideshowData = {
	[PlatformEnum.QuestVR :: Platform] = {
		{
			title = "CoreScripts.VRFTUX.Heading.Perspective",
			text = {
				"CoreScripts.VRFTUX.Description.Perspective.Body1",
				"CoreScripts.VRFTUX.Description.Perspective.Body2",
			},
			image = "rbxassetid://13251804809",
			button = ButtonEnum.SkipButton :: Button,
		},
		{
			title = "CoreScripts.VRFTUX.Heading.Movement",
			text = {
				"CoreScripts.VRFTUX.Description.Movement.Body1",
				"CoreScripts.VRFTUX.Description.Movement.Body2",
				"CoreScripts.VRFTUX.Description.Movement.Body3",
			},
			image = "rbxassetid://13251750527",
			button = ButtonEnum.SkipButton :: Button,
		},
		{
			title = "CoreScripts.VRFTUX.Heading.SafetyBubble.Title",
			text = {
				"CoreScripts.VRFTUX.Description.SafetyBubble.Body1",
				"CoreScripts.VRFTUX.Description.SafetyBubble.Body2",
			},
			image = "rbxassetid://13251806846",
			button = ButtonEnum.NextButton :: Button,
		},
		{
			title = "CoreScripts.VRFTUX.Heading.OtherSettings.Title",
			text = {
				"CoreScripts.VRFTUX.Description.OtherSettings.Body1",
				"CoreScripts.VRFTUX.Description.OtherSettings.Body2",
			},
			image = "",
			button = ButtonEnum.NextButton :: Button,
		},
	},
}

return FTUXSlideshowData
