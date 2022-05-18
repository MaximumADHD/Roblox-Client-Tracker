local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)

local GetFFlagFaceControlsEditorBugBash2Update = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorBugBash2Update)

local FaceControlsMapping = {}

if GetFFlagFaceControlsEditorBugBash2Update() then

	FaceControlsMapping.FacsControlToFaceSliderInfoMap = {
		ChinRaiserUpperLip = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 98, 0, 283), rotation = -90},
		ChinRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 80, 0, 289), rotation = -90},
		FlatPucker = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 20, 0, 505), rotation = 180, customWidth = 50},  --sideView
		Funneler = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 20, 0, 463), rotation = 180, customWidth = 50},  --sideView
		LowerLipSuck = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 68, 0, 520), rotation = -25},  --sideView
		LipPresser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 71, 0, 485), rotation = 90},  --sideView
		LipsTogether = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 93, 0, 220), rotation = 90, customWidth = 35},
		MouthLeft = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 106, 0, 240), rotation = 0, customWidth = 80, Tooltip = "Mouth"},
		MouthRight = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 70, 0, 240), rotation = 0, customWidth = 80, Tooltip = "Mouth"},
		Pucker = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 20, 0, 483), rotation = 180, customWidth = 50},  --sideView
		UpperLipSuck = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 66, 0, 447), rotation = 36},  --sideView
		LeftCheekPuff = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 175, 0, 213), rotation = 0},
		LeftDimpler = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 171, 0, 232), rotation = 0},
		LeftLipCornerDown = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 146, 0, 280), rotation = 55},
		LeftLowerLipDepressor = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 120, 0, 274), rotation = 65},
		LeftLipCornerPuller = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 138, 0, 216), rotation = -50},
		LeftLipStretcher = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 155, 0, 251), rotation = 0},
		LeftUpperLipRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 118, 0, 204), rotation = -65},
		RightCheekPuff = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 0, 0, 213), rotation = -180},
		RightDimpler = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 3, 0, 232), rotation = 180},
		RightLipCornerDown = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 28, 0, 280), rotation = 125},
		RightLowerLipDepressor = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 53, 0, 274), rotation = 114},
		RightLipCornerPuller = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 36, 0, 216), rotation = -130},
		RightLipStretcher = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 24, 0, 251), rotation = -180},
		RightUpperLipRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 58, 0, 204), rotation = -110},

		JawDrop = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 118, 0, 562), rotation = 90, customWidth = 40},  --sideView
		JawLeft = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 64, 0, 554), rotation = 0, customWidth = 60, Tooltip = "Jaw"},  
		JawRight = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 80, 0, 328), rotation = 0, customWidth = 60, Tooltip = "Jaw"},  

		Corrugator = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 94, 0, 100), rotation = 0, customWidth = 36},
		LeftBrowLowerer = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 122, 0, 100), rotation = 100, customWidth = 36},
		LeftOuterBrowRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 145, 0, 58), rotation = -70},
		LeftNoseWrinkler = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 102, 0, 181), rotation = -90},
		LeftInnerBrowRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 105, 0, 58), rotation = -90},
		RightBrowLowerer = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 56, 0, 100), rotation = 80, customWidth = 36},
		RightOuterBrowRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 28, 0, 58), rotation = -110},
		RightInnerBrowRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 69, 0, 58), rotation = -90},
		RightNoseWrinkler = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 75, 0, 181), rotation = -90},

		LeftCheekRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 169, 0, 171), rotation = -115},
		LeftEyeUpperLidRaiser = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 111, 0, 125), rotation = -90, Tooltip = "LeftEye"},
		LeftEyeClosed = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 111, 0, 143), rotation = -90, customWidth = 44, Tooltip = "LeftEye"},
		RightCheekRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 5, 0, 171), rotation = -62},
		RightEyeUpperLidRaiser = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 67, 0, 125), rotation = -90, Tooltip = "RightEye"},
		RightEyeClosed = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 67, 0, 143), rotation = -90, customWidth = 44, Tooltip = "RightEye"},

		TongueDown = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 168, 0, 475), rotation = 90, customWidth = 50, Tooltip = "Tongue"},   --sideView
		TongueUp = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 164, 0, 475), rotation = 90, customWidth = 50, Tooltip = "Tongue"},  --sideView
		TongueOut = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 135, 0, 475), rotation = 180},  --sideView

		EyesDragBox = {currentValue = Vector2.new(0, 0), defaultValue = Vector2.new(0, 0), position = UDim2.new(0, 110, 0, 145), customWidth = 30},
	}
else
	FaceControlsMapping.FacsControlToFaceSliderInfoMap = {
		ChinRaiserUpperLip = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 98, 0, 283), rotation = -90},
		ChinRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 80, 0, 289), rotation = -90},
		FlatPucker = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 20, 0, 545), rotation = 180, customWidth = 50},  --sideView
		Funneler = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 20, 0, 503), rotation = 180, customWidth = 50},  --sideView
		LowerLipSuck = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 68, 0, 560), rotation = -25},  --sideView
		LipPresser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 71, 0, 525), rotation = 90},  --sideView
		LipsTogether = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 93, 0, 220), rotation = 90, customWidth = 35},
		MouthLeft = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 106, 0, 240), rotation = 0, customWidth = 80, Tooltip = "Mouth"},
		MouthRight = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 70, 0, 240), rotation = 0, customWidth = 80, Tooltip = "Mouth"},
		Pucker = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 20, 0, 523), rotation = 180, customWidth = 50},  --sideView
		UpperLipSuck = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 66, 0, 487), rotation = 36},  --sideView
		LeftCheekPuff = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 175, 0, 213), rotation = 0},
		LeftDimpler = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 171, 0, 232), rotation = 0},
		LeftLipCornerDown = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 146, 0, 280), rotation = 55},
		LeftLowerLipDepressor = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 120, 0, 274), rotation = 65},
		LeftLipCornerPuller = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 138, 0, 216), rotation = -50},
		LeftLipStretcher = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 155, 0, 251), rotation = 0},
		LeftUpperLipRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 118, 0, 204), rotation = -65},
		RightCheekPuff = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 0, 0, 213), rotation = -180},
		RightDimpler = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 3, 0, 232), rotation = 180},
		RightLipCornerDown = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 28, 0, 280), rotation = 125},
		RightLowerLipDepressor = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 53, 0, 274), rotation = 114},
		RightLipCornerPuller = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 36, 0, 216), rotation = -130},
		RightLipStretcher = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 24, 0, 251), rotation = -180},
		RightUpperLipRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 58, 0, 204), rotation = -110},

		JawDrop = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 90, 0, 358), rotation = 90, customWidth = 40},  --sideView
		JawLeft = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 64, 0, 554), rotation = 0, customWidth = 60, Tooltip = "Jaw"},  --sideView
		JawRight = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 80, 0, 328), rotation = 0, customWidth = 60, Tooltip = "Jaw"},  --sideView

		Corrugator = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 94, 0, 100), rotation = 0, customWidth = 36},
		LeftBrowLowerer = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 122, 0, 100), rotation = 100, customWidth = 36},
		LeftOuterBrowRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 145, 0, 58), rotation = -70},
		LeftNoseWrinkler = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 102, 0, 181), rotation = -90},
		LeftInnerBrowRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 105, 0, 58), rotation = -90},
		RightBrowLowerer = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 56, 0, 100), rotation = 80, customWidth = 36},
		RightOuterBrowRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 28, 0, 58), rotation = -110},
		RightInnerBrowRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 69, 0, 58), rotation = -90},
		RightNoseWrinkler = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 75, 0, 181), rotation = -90},

		LeftCheekRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 169, 0, 171), rotation = -115},
		LeftEyeUpperLidRaiser = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 111, 0, 125), rotation = -90, Tooltip = "LeftEye"},
		LeftEyeClosed = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 111, 0, 143), rotation = -90, customWidth = 44, Tooltip = "LeftEye"},
		RightCheekRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 5, 0, 171), rotation = -62},
		RightEyeUpperLidRaiser = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 67, 0, 125), rotation = -90, Tooltip = "RightEye"},
		RightEyeClosed = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 67, 0, 143), rotation = -90, customWidth = 44, Tooltip = "RightEye"},

		TongueDown = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 168, 0, 515), rotation = 90, customWidth = 50, Tooltip = "Tongue"}, -- 270, 90
		TongueUp = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 164, 0, 515), rotation = 90, customWidth = 50, Tooltip = "Tongue"},
		TongueOut = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 135, 0, 515), rotation = 180},

		EyesDragBox = {currentValue = Vector2.new(0, 0), defaultValue = Vector2.new(0, 0), position = UDim2.new(0, 110, 0, 145), customWidth = 30},
	}	
end

return FaceControlsMapping
