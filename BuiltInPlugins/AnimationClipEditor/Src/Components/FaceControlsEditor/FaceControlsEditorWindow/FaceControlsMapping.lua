local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)

local FaceControlsMapping = {}

FaceControlsMapping.FacsControlToFaceSliderInfoMap = {
	ChinRaiserUpperLip = {currentValue = 0, position = UDim2.new(0, 131, 0, 283), rotation = -90},
	ChinRaiser = {currentValue = 0, position = UDim2.new(0, 115, 0, 289), rotation = -90},
	FlatPucker = {currentValue = 0, position = UDim2.new(0, 63, 0, 625), rotation = 180, customWidth = 60},  --sideView
	Funneler = {currentValue = 0, position = UDim2.new(0, 63, 0, 583), rotation = 180, customWidth = 60},  --sideView
	LowerLipSuck = {currentValue = 0, position = UDim2.new(0, 148, 0, 620), rotation = -16},  --sideView
	LipPresser = {currentValue = 0, position = UDim2.new(0, 136, 0, 597), rotation = 90},  --sideView
	LipsTogether = {currentValue = 0, position = UDim2.new(0, 126, 0, 220), rotation = 90, customWidth = 35},
	MouthLeft = {currentValue = 0.5, position = UDim2.new(0, 141, 0, 240), rotation = 0, customWidth = 80},
	MouthRight = {currentValue = 0.5, position = UDim2.new(0, 103, 0, 240), rotation = 0, customWidth = 80},
	Pucker = {currentValue = 0, position = UDim2.new(0, 63, 0, 603), rotation = 180, customWidth = 60},  --sideView
	UpperLipSuck = {currentValue = 0, position = UDim2.new(0, 146, 0, 567), rotation = 36},  --sideView
	LeftCheekPuff = {currentValue = 0, position = UDim2.new(0, 210, 0, 213), rotation = 0},
	LeftDimpler = {currentValue = 0, position = UDim2.new(0, 206, 0, 232), rotation = 0},
	LeftLipCornerDown = {currentValue = 0, position = UDim2.new(0, 181, 0, 280), rotation = 55},
	LeftLowerLipDepressor = {currentValue = 0, position = UDim2.new(0, 155, 0, 274), rotation = 65},
	LeftLipCornerPuller = {currentValue = 0, position = UDim2.new(0, 173, 0, 216), rotation = -50},
	LeftLipStretcher = {currentValue = 0, position = UDim2.new(0, 190, 0, 251), rotation = 0},
	LeftUpperLipRaiser = {currentValue = 0, position = UDim2.new(0, 153, 0, 204), rotation = -65},
	RightCheekPuff = {currentValue = 0, position = UDim2.new(0, 35, 0, 213), rotation = -180},
	RightDimpler = {currentValue = 0, position = UDim2.new(0, 38, 0, 232), rotation = 180},
	RightLipCornerDown = {currentValue = 0, position = UDim2.new(0, 63, 0, 280), rotation = 125},
	RightLowerLipDepressor = {currentValue = 0, position = UDim2.new(0, 88, 0, 274), rotation = 114},
	RightLipCornerPuller = {currentValue = 0, position = UDim2.new(0, 71, 0, 216), rotation = -130},
	RightLipStretcher = {currentValue = 0, position = UDim2.new(0, 59, 0, 251), rotation = -180},
	RightUpperLipRaiser = {currentValue = 0, position = UDim2.new(0, 93, 0, 204), rotation = -110},

	JawDrop = {currentValue = 0, position = UDim2.new(0, 78, 0, 670), rotation = 90},  --sideView
	JawLeft = {currentValue = 0.5, position = UDim2.new(0, 99, 0, 704), rotation = 0, customWidth = 70},  --sideView
	JawRight = {currentValue = 0.5, position = UDim2.new(0, 64, 0, 704), rotation = 0, customWidth = 70},  --sideView

	Corrugator = {currentValue = 0, position = UDim2.new(0, 129, 0, 100), rotation = 0, customWidth = 36},
	LeftBrowLowerer = {currentValue = 0, position = UDim2.new(0, 157, 0, 100), rotation = 100, customWidth = 36},
	LeftOuterBrowRaiser = {currentValue = 0, position = UDim2.new(0, 180, 0, 58), rotation = -70},
	LeftNoseWrinkler = {currentValue = 0, position = UDim2.new(0, 137, 0, 181), rotation = -90},
	LeftInnerBrowRaiser = {currentValue = 0, position = UDim2.new(0, 138, 0, 58), rotation = -90},
	RightBrowLowerer = {currentValue = 0, position = UDim2.new(0, 91, 0, 100), rotation = 80, customWidth = 36},
	RightOuterBrowRaiser = {currentValue = 0, position = UDim2.new(0, 63, 0, 58), rotation = -110},
	RightInnerBrowRaiser = {currentValue = 0, position = UDim2.new(0, 104, 0, 58), rotation = -90},
	RightNoseWrinkler = {currentValue = 0, position = UDim2.new(0, 110, 0, 181), rotation = -90},

	LeftCheekRaiser = {currentValue = 0, position = UDim2.new(0, 204, 0, 171), rotation = -115},
	LeftEyeUpperLidRaiser = {currentValue = 0.5, position = UDim2.new(0, 146, 0, 125), rotation = -90},
	LeftEyeClosed = {currentValue = 0.5, position = UDim2.new(0, 146, 0, 143), rotation = -90, customWidth = 44},
	RightCheekRaiser = {currentValue = 0, position = UDim2.new(0, 40, 0, 171), rotation = -62},
	RightEyeUpperLidRaiser = {currentValue = 0.5, position = UDim2.new(0, 102, 0, 125), rotation = -90},
	RightEyeClosed = {currentValue = 0.5, position = UDim2.new(0, 102, 0, 143), rotation = -90, customWidth = 44},

	TongueDown = {currentValue = 0.5, position = UDim2.new(0, 121, 0, 339), rotation = 90, customWidth = 50}, -- 270, 90
	TongueUp = {currentValue = 0.5, position = UDim2.new(0, 121, 0, 335), rotation = 90, customWidth = 50},
	TongueOut = {currentValue = 0, position = UDim2.new(0, 120, 0, 362), rotation = 180},
	
	EyesDragBox = {currentValue = Vector2.new(0, 0), position = UDim2.new(0, 128, 0, 134), customWidth = 30},
}	

return FaceControlsMapping
