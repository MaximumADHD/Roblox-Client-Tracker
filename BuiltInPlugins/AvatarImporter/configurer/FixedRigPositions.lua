local FixedRigPositions = {}

FixedRigPositions.R15FixedRigAttachmentMap = {
	["RootRigAttachment"] = 			Vector3.new( 0, 	0, 		0),	-- HumanoidRootPart to LowerTorso
	["WaistRigAttachment"] = 			Vector3.new( 0, 	0.4, 	0), -- UpperTorso to LowerTorso
	["NeckRigAttachment"] =				Vector3.new( 0,		2.0,	0), -- UpperTorso to Head
	["LeftShoulderRigAttachment"] =		Vector3.new( -1,	1.763,  0), -- UpperTorso to LeftShoulder
	["RightShoulderRigAttachment"] =	Vector3.new( 1,		1.763,	0),	-- UpperTorso to RightUpperArm
	["RightElbowRigAttachment"] =		Vector3.new( 1.5,	1.035,	0),	-- RightUpperArm to RightLowerArm
	["RightWristRigAttachment"] =		Vector3.new( 1.5,	0.275,  0), -- RightLowerArm to RightHand
	["LeftElbowRigAttachment"] =		Vector3.new( -1.5,  1.035,  0), -- LeftUpperArm to LeftLowerArm
	["LeftWristRigAttachment"] =		Vector3.new( -1.5,	0.275,  0), -- LeftLowerArm to LeftHand
	["RightHipRigAttachment"] = 		Vector3.new( 0.5,	0,		0), -- LowerTorso to RightUpperLeg
	["RightKneeRigAttachment"] =		Vector3.new( 0.5,	-0.822,	0), -- RightUpperLeg to RightLowerLeg
	["RightAnkleRigAttachment"] =		Vector3.new( 0.5,	-1.748, 0), -- RightLowerLeg to RightFoot
	["LeftHipRigAttachment"] =			Vector3.new( -0.5,	0,		0), -- LowerTorso to LeftUpperLeg
	["LeftKneeRigAttachment"] =			Vector3.new( -0.5,	-0.822,	0),	-- LeftUpperLeg to LeftLowerLeg
	["LeftAnkleRigAttachment"] = 		Vector3.new( -0.5,	-1.748,	0), -- LeftLowerLeg to LeftFoot

	["LeftGripAttachment"] = 			Vector3.new(-1.5, 	0, 		0),
	["LeftShoulderAttachment"] = 		Vector3.new(-1.5, 	1.953, 	0),
	["RightGripAttachment"] = 			Vector3.new(1.5, 	0, 		0),
	["RightShoulderAttachment"] = 		Vector3.new(1.5, 	1.953, 	0),
	["BodyFrontAttachment"] = 			Vector3.new(0, 		1, 		-0.5),
	["BodyBackAttachment"] = 			Vector3.new(0, 		1, 		0.5),
	["LeftCollarAttachment"] = 			Vector3.new(-1, 	2, 		0),
	["RightCollarAttachment"] = 		Vector3.new(1, 		2, 		0),
	["NeckAttachment"] = 				Vector3.new(0, 		2, 		0),
	["LeftFootAttachment"] = 			Vector3.new(-0.5, 	-2, 	0),
	["RightFootAttachment"] = 			Vector3.new(0.5, 	-2, 	0),
	["WaistCenterAttachment"] = 		Vector3.new(0, 		0, 		0),
	["WaistFrontAttachment"] = 			Vector3.new(0, 		0, 		-0.5),
	["WaistBackAttachment"] = 			Vector3.new(0, 		0, 		0.5),
	["FaceCenterAttachment"] = 			Vector3.new(0, 		2.5, 	0),
	["FaceFrontAttachment"] = 			Vector3.new(0, 		2.5, 	-0.6),
	["HairAttachment"] = 				Vector3.new(0, 		3.1, 	0),
	["HatAttachment"] = 				Vector3.new(0, 		3.1, 	0),
}

FixedRigPositions.AnthroNormalFixedRigAttachmentMap = {
	["RootRigAttachment"] = 			Vector3.new(0, 		 0, 		0),	-- HumanoidRootPart to LowerTorso
	["WaistRigAttachment"] = 			Vector3.new(0, 		 0.488, 	0), -- UpperTorso to LowerTorso
	["NeckRigAttachment"] =				Vector3.new(0, 		 1.807, 	0), -- UpperTorso to Head
	["LeftShoulderRigAttachment"] =		Vector3.new(-0.67, 	 1.612, 	0), -- UpperTorso to LeftShoulder
	["RightShoulderRigAttachment"] =	Vector3.new(0.67, 	 1.612, 	0),	-- UpperTorso to RightUpperArm
	["RightElbowRigAttachment"] =		Vector3.new(1, 		 0.592, 	0),	-- RightUpperArm to RightLowerArm
	["RightWristRigAttachment"] =		Vector3.new(1, 		-0.331,     0), -- RightLowerArm to RightHand
	["LeftElbowRigAttachment"] =		Vector3.new(-1, 	 0.592, 	0), -- LeftUpperArm to LeftLowerArm
	["LeftWristRigAttachment"] =		Vector3.new(-1, 	-0.331,     0), -- LeftLowerArm to LeftHand
	["RightHipRigAttachment"] = 		Vector3.new(0.325, 	 0, 		0), -- LowerTorso to RightUpperLeg
	["RightKneeRigAttachment"] =		Vector3.new(0.325, 	-1.431,     0), -- RightUpperLeg to RightLowerLeg
	["RightAnkleRigAttachment"] =		Vector3.new(0.325, 	-3.031,     0), -- RightLowerLeg to RightFoot
	["LeftHipRigAttachment"] =			Vector3.new(-0.325,  0, 		0), -- LowerTorso to LeftUpperLeg
	["LeftKneeRigAttachment"] =			Vector3.new(-0.325,	-1.431,     0),	-- LeftUpperLeg to LeftLowerLeg
	["LeftAnkleRigAttachment"] = 		Vector3.new(-0.325, -3.031,     0), -- LeftLowerLeg to LeftFoot

	["LeftGripAttachment"] = 			Vector3.new(-1, 	-0.606,     0),
	["LeftShoulderAttachment"] = 		Vector3.new(-1, 	 1.877,     0),
	["RightGripAttachment"] = 			Vector3.new(1, 		-0.606,     0),
	["RightShoulderAttachment"] = 		Vector3.new(1, 		 1.877, 	0),
	["BodyFrontAttachment"] = 			Vector3.new(0, 		 0.983,    -0.335),
	["BodyBackAttachment"] = 			Vector3.new(0, 		 0.983, 	0.335),
	["LeftCollarAttachment"] = 			Vector3.new(-0.67, 	 1.807, 	0),
	["RightCollarAttachment"] = 		Vector3.new(0.67,    1.807, 	0),
	["NeckAttachment"] = 				Vector3.new(0, 		 1.807, 	0),
	["LeftFootAttachment"] = 			Vector3.new(-0.325, -3.602,     0),
	["RightFootAttachment"] = 			Vector3.new(0.325, 	-3.602,     0),
	["WaistCenterAttachment"] = 		Vector3.new(0, 		 0, 		0),
	["WaistFrontAttachment"] = 			Vector3.new(0, 		 0, 	   -0.335),
	["WaistBackAttachment"] = 			Vector3.new(0, 		 0, 		0.335),
	["FaceCenterAttachment"] = 			Vector3.new(0, 		 2.261, 	0),
	["FaceFrontAttachment"] = 			Vector3.new(0, 		 2.261,    -0.45),
	["HairAttachment"] = 				Vector3.new(0, 		 2.807, 	0),
	["HatAttachment"] = 				Vector3.new(0, 		 2.807, 	0),
}

FixedRigPositions.AnthroSlenderFixedRigAttachmentMap = {
	["RootRigAttachment"] = 			Vector3.new(0, 		 0, 		 0), -- HumanoidRootPart to LowerTorso
	["WaistRigAttachment"] = 			Vector3.new(0, 		 0.375, 	 0), -- UpperTorso to LowerTorso
	["NeckRigAttachment"] =				Vector3.new(0, 		 1.587, 	 0), -- UpperTorso to Head
	["LeftShoulderRigAttachment"] =		Vector3.new(-0.587,  1.408, 	 0), -- UpperTorso to LeftShoulder
	["RightShoulderRigAttachment"] =	Vector3.new(0.587, 	 1.408, 	 0), -- UpperTorso to RightUpperArm
	["RightElbowRigAttachment"] =		Vector3.new(0.881, 	 0.49, 	     0), -- RightUpperArm to RightLowerArm
	["RightWristRigAttachment"] =		Vector3.new(0.881, 	-0.341,      0), -- RightLowerArm to RightHand
	["LeftElbowRigAttachment"] =		Vector3.new(-0.881,  0.49,  	 0), -- LeftUpperArm to LeftLowerArm
	["LeftWristRigAttachment"] =		Vector3.new(-0.881, -0.341,      0), -- LeftLowerArm to LeftHand
	["RightHipRigAttachment"] = 		Vector3.new(0.31, 	 0, 		 0), -- LowerTorso to RightUpperLeg
	["RightKneeRigAttachment"] =		Vector3.new(0.31, 	-1.332,      0), -- RightUpperLeg to RightLowerLeg
	["RightAnkleRigAttachment"] =		Vector3.new(0.31, 	-2.715,      0), -- RightLowerLeg to RightFoot
	["LeftHipRigAttachment"] =			Vector3.new(-0.31, 	 0, 		 0), -- LowerTorso to LeftUpperLeg
	["LeftKneeRigAttachment"] =			Vector3.new(-0.31, 	-1.332,      0), -- LeftUpperLeg to LeftLowerLeg
	["LeftAnkleRigAttachment"] = 		Vector3.new(-0.31, 	-2.715,      0), -- LeftLowerLeg to LeftFoot

	["LeftGripAttachment"] = 			Vector3.new(-0.881, -0.616,      0),
	["LeftShoulderAttachment"] = 		Vector3.new(-0.881,  1.647, 	 0),
	["RightGripAttachment"] = 			Vector3.new(0.881, 	-0.616,      0),
	["RightShoulderAttachment"] = 		Vector3.new(0.881, 	 1.647,      0),
	["BodyFrontAttachment"] = 			Vector3.new(0, 		 0.83, 	    -0.294),
	["BodyBackAttachment"] = 			Vector3.new(0, 		 0.83,    	 0.293),
	["LeftCollarAttachment"] = 			Vector3.new(-0.587,  1.587, 	 0),
	["RightCollarAttachment"] = 		Vector3.new(0.587, 	 1.587, 	 0),
	["NeckAttachment"] = 				Vector3.new(0, 		 1.587, 	 0),
	["LeftFootAttachment"] = 			Vector3.new(-0.31, 	-3.084,      0),
	["RightFootAttachment"] = 			Vector3.new(0.31, 	-3.084,      0),
	["WaistCenterAttachment"] = 		Vector3.new(0, 		 0, 		 0),
	["WaistFrontAttachment"] = 			Vector3.new(0, 		 0, 		-0.294),
	["WaistBackAttachment"] = 			Vector3.new(0, 		 0, 		 0.294),
	["FaceCenterAttachment"] = 			Vector3.new(0, 		 2.042, 	 0),
	["FaceFrontAttachment"] = 			Vector3.new(0, 		 2.042, 	-0.428),
	["HairAttachment"] = 				Vector3.new(0, 		 2.587, 	 0),
	["HatAttachment"] = 				Vector3.new(0, 		 2.587, 	 0),
}

return FixedRigPositions