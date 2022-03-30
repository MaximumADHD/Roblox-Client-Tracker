local FaceControlsMapping = {}

FaceControlsMapping.FacsControlToFaceSliderInfoMap = {
	ChinRaiserUpperLip = {currentValue= 0, position = UDim2.new(0, 128, 0, 283), rotation = -90},
	ChinRaiser = {currentValue= 0, position = UDim2.new(0, 118, 0, 289), rotation = -90},
	FlatPucker = {currentValue= 0, position = UDim2.new(0, 78, 0, 625), rotation = 180},  --sideView
	Funneler = {currentValue= 0, position = UDim2.new(0, 78, 0, 583), rotation = 180},  --sideView
	LowerLipSuck = {currentValue= 0, position = UDim2.new(0, 148, 0, 620), rotation = -16},  --sideView
	LipPresser = {currentValue= 0, position = UDim2.new(0, 136, 0, 597), rotation = 90},  --sideView
	LipsTogether = {currentValue= 0, position = UDim2.new(0, 123, 0, 230), rotation = 90},
	MouthLeft = {currentValue= 0, position = UDim2.new(0, 141, 0, 240), rotation = 0},
	MouthRight = {currentValue= 0, position = UDim2.new(0, 103, 0, 240), rotation = 180},
	Pucker = {currentValue= 0, position = UDim2.new(0, 78, 0, 603), rotation = 180},  --sideView
	UpperLipSuck = {currentValue= 0, position = UDim2.new(0, 146, 0, 567), rotation = 36},  --sideView
	LeftCheekPuff = {currentValue= 0, position = UDim2.new(0, 200, 0, 218), rotation = 0},
	LeftDimpler = {currentValue= 0, position = UDim2.new(0, 186, 0, 238), rotation = 0},
	LeftLipCornerDown = {currentValue= 0, position = UDim2.new(0, 166, 0, 280), rotation = 55},
	LeftLowerLipDepressor = {currentValue= 0, position = UDim2.new(0, 140, 0, 274), rotation = 65},
	LeftLipCornerPuller = {currentValue= 0, position = UDim2.new(0, 168, 0, 216), rotation = -50},
	LeftLipStretcher = {currentValue= 0, position = UDim2.new(0, 180, 0, 251), rotation = 0},
	LeftUpperLipRaiser = {currentValue= 0, position = UDim2.new(0, 148, 0, 204), rotation = -65},
	RightCheekPuff = {currentValue= 0, position = UDim2.new(0, 45, 0, 218), rotation = -180},
	RightDimpler = {currentValue= 0, position = UDim2.new(0, 58, 0, 238), rotation = 180},
	RightLipCornerDown = {currentValue= 0, position = UDim2.new(0, 78, 0, 280), rotation = 125},
	RightLowerLipDepressor = {currentValue= 0, position = UDim2.new(0, 103, 0, 274), rotation = 114},
	RightLipCornerPuller = {currentValue= 0, position = UDim2.new(0, 76, 0, 216), rotation = -130},
	RightLipStretcher = {currentValue= 0, position = UDim2.new(0, 69, 0, 251), rotation = -180},
	RightUpperLipRaiser = {currentValue= 0, position = UDim2.new(0, 98, 0, 204), rotation = -110},

	JawDrop = {currentValue= 0, position = UDim2.new(0, 78, 0, 660), rotation = 90},  --sideView
	JawLeft = {currentValue= 0, position = UDim2.new(0, 94, 0, 679), rotation = 0},  --sideView
	JawRight = {currentValue= 0, position = UDim2.new(0, 59, 0, 679), rotation = 180},  --sideView

	Corrugator = {currentValue= 0, position = UDim2.new(0, 124, 0, 111), rotation = 0, customWidth = 38},
	LeftBrowLowerer = {currentValue= 0, position = UDim2.new(0, 140, 0, 115), rotation = 100},
	LeftOuterBrowRaiser = {currentValue= 0, position = UDim2.new(0, 170, 0, 78), rotation = -70},
	LeftNoseWrinkler = {currentValue= 0, position = UDim2.new(0, 132, 0, 181), rotation = -90},
	LeftInnerBrowRaiser = {currentValue= 0, position = UDim2.new(0, 138, 0, 78), rotation = -90},
	RightBrowLowerer = {currentValue= 0, position = UDim2.new(0, 103, 0, 115), rotation = 80},
	RightOuterBrowRaiser = {currentValue= 0, position = UDim2.new(0, 73, 0, 78), rotation = -110},
	RightInnerBrowRaiser = {currentValue= 0, position = UDim2.new(0, 104, 0, 78), rotation = -90},
	RightNoseWrinkler = {currentValue= 0, position = UDim2.new(0, 110, 0, 181), rotation = -90},

	EyesLookDown = {currentValue= 0, position = UDim2.new(0, 128, 0, 169), rotation = 90, customWidth = 30},
	EyesLookLeft = {currentValue= 0, position = UDim2.new(0, 153, 0, 142), rotation = 0, customWidth = 30},
	EyesLookUp = {currentValue= 0, position = UDim2.new(0, 128, 0, 129), rotation = -90, customWidth = 30},
	EyesLookRight = {currentValue= 0, position = UDim2.new(0, 107, 0, 142), rotation = 180, customWidth = 30},
	LeftCheekRaiser = {currentValue= 0, position = UDim2.new(0, 204, 0, 171), rotation = -115},
	LeftEyeUpperLidRaiser = {currentValue= 0, position = UDim2.new(0, 141, 0, 125), rotation = -90},
	LeftEyeClosed = {currentValue= 0, position = UDim2.new(0, 141, 0, 169), rotation = 90},
	RightCheekRaiser = {currentValue= 0, position = UDim2.new(0, 40, 0, 171), rotation = -62},
	RightEyeUpperLidRaiser = {currentValue= 0, position = UDim2.new(0, 102, 0, 125), rotation = -90},
	RightEyeClosed = {currentValue= 0, position = UDim2.new(0, 102, 0, 169), rotation = 90},

	TongueDown = {currentValue= 0, position = UDim2.new(0, 123, 0, 349), rotation = 90, customWidth = 30},
	TongueOut = {currentValue= 0, position = UDim2.new(0, 114, 0, 362), rotation = 180},
	TongueUp = {currentValue= 0, position = UDim2.new(0, 123, 0, 329), rotation = -90, customWidth = 30},
}	

return FaceControlsMapping
