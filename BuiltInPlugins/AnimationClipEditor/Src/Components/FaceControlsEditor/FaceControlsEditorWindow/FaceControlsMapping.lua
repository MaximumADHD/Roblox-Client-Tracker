local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)

local FaceControlsMapping = {}

FaceControlsMapping.FacsControlToFaceSliderInfoMap = {
	ChinRaiserUpperLip = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 96, 0, 283), rotation = -90},
	ChinRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 80, 0, 289), rotation = -90},
	FlatPucker = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 0, 0, 615), rotation = 180, customWidth = 60},  --sideView
	Funneler = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 0, 0, 573), rotation = 180, customWidth = 60},  --sideView
	LowerLipSuck = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 103, 0, 610), rotation = -16},  --sideView
	LipPresser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 91, 0, 587), rotation = 90},  --sideView
	LipsTogether = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 91, 0, 220), rotation = 90, customWidth = 35},
	MouthLeft = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 106, 0, 240), rotation = 0, customWidth = 80},
	MouthRight = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 68, 0, 240), rotation = 0, customWidth = 80},
	Pucker = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 0, 0, 593), rotation = 180, customWidth = 60},  --sideView
	UpperLipSuck = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 101, 0, 557), rotation = 36},  --sideView
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

	JawDrop = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 158, 0, 598), rotation = 90},  --sideView
	JawLeft = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 64, 0, 754), rotation = 0, customWidth = 60},  --sideView
	JawRight = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 150, 0, 637), rotation = 0, customWidth = 60},  --sideView

	Corrugator = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 94, 0, 100), rotation = 0, customWidth = 36},
	LeftBrowLowerer = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 122, 0, 100), rotation = 100, customWidth = 36},
	LeftOuterBrowRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 145, 0, 58), rotation = -70},
	LeftNoseWrinkler = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 102, 0, 181), rotation = -90},
	LeftInnerBrowRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 103, 0, 58), rotation = -90},
	RightBrowLowerer = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 56, 0, 100), rotation = 80, customWidth = 36},
	RightOuterBrowRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 28, 0, 58), rotation = -110},
	RightInnerBrowRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 69, 0, 58), rotation = -90},
	RightNoseWrinkler = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 75, 0, 181), rotation = -90},

	LeftCheekRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 169, 0, 171), rotation = -115},
	LeftEyeUpperLidRaiser = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 111, 0, 125), rotation = -90},
	LeftEyeClosed = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 111, 0, 143), rotation = -90, customWidth = 44},
	RightCheekRaiser = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 5, 0, 171), rotation = -62},
	RightEyeUpperLidRaiser = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 67, 0, 125), rotation = -90},
	RightEyeClosed = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 67, 0, 143), rotation = -90, customWidth = 44},

	TongueDown = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 158, 0, 560), rotation = 90, customWidth = 50}, -- 270, 90
	TongueUp = {currentValue = 0.5, defaultValue = 0.5, position = UDim2.new(0, 154, 0, 508), rotation = 90, customWidth = 50},
	TongueOut = {currentValue = 0, defaultValue = 0, position = UDim2.new(0, 160, 0, 553), rotation = 180},
	
	EyesDragBox = {currentValue = Vector2.new(0, 0), defaultValue = Vector2.new(0, 0), position = UDim2.new(0, 111, 0, 145), customWidth = 30},
}	

return FaceControlsMapping
