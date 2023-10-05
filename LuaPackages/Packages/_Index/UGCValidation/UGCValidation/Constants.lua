--!nonstrict
local root = script.Parent

local Cryo = require(root.Parent.Cryo)

local getFFlagMoveToolboxCodeToUGCValidation = require(root.flags.getFFlagMoveToolboxCodeToUGCValidation)
local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)

local getFIntMeshDivision = require(root.flags.getFIntMeshDivision)
local getFIntMeshDivisionFull = require(root.flags.getFIntMeshDivisionFull)
local getFIntMeshDivisionFullExtended = require(root.flags.getFIntMeshDivisionFullExtended)
local getFIntMeshDivisionMedium = require(root.flags.getFIntMeshDivisionMedium)
local getFIntMeshDivisionNarrow = require(root.flags.getFIntMeshDivisionNarrow)

local getFFlagAddUGCValidationForPackage = require(root.flags.getFFlagAddUGCValidationForPackage)
local getFFlagUGCValidationAdjustLegBounds = require(root.flags.getFFlagUGCValidationAdjustLegBounds)
local getFFlagUGCValidateSurfaceAppearanceAlphaMode = require(root.flags.getFFlagUGCValidateSurfaceAppearanceAlphaMode)
local getFFlagFixPackageIDFieldName = require(root.flags.getFFlagFixPackageIDFieldName)
local getFFlagUGCValidateFullBody = require(root.flags.getFFlagUGCValidateFullBody)
local getFFlagUGCValidateRestrictAttachmentPositions =
	require(root.flags.getFFlagUGCValidateRestrictAttachmentPositions)

-- switch this to Cryo.List.toSet when available
local function convertArrayToTable(array)
	local result = {}
	for _, v in pairs(array) do
		result[v] = true
	end
	return result
end

local Constants = {}

Constants.MAX_HAT_TRIANGLES = 4000

Constants.MAX_TEXTURE_SIZE = 1024

Constants.MATERIAL_WHITELIST = convertArrayToTable({
	Enum.Material.Plastic,
})

Constants.BANNED_CLASS_NAMES = {
	"Script",
	"LocalScript",
	"ModuleScript",
	"ParticleEmitter",
	"Fire",
	"Smoke",
	"Sparkles",
}

Constants.R6_BODY_PARTS = {
	"Torso",
	"Left Leg",
	"Right Leg",
	"Left Arm",
	"Right Arm",
}

Constants.R15_BODY_PARTS = {
	"UpperTorso",
	"LowerTorso",

	"LeftUpperLeg",
	"LeftLowerLeg",
	"LeftFoot",

	"RightUpperLeg",
	"RightLowerLeg",
	"RightFoot",

	"LeftUpperArm",
	"LeftLowerArm",
	"LeftHand",

	"RightUpperArm",
	"RightLowerArm",
	"RightHand",
}

if getFFlagMoveToolboxCodeToUGCValidation() then
	Constants.UGC_BODY_PARTS = {
		"Head",
		"UpperTorso",
		"LowerTorso",
		"LeftUpperLeg",
		"LeftLowerLeg",
		"LeftHand",
		"RightUpperArm",
		"RightLowerArm",
		"RightHand",
		"LeftUpperArm",
		"LeftLowerArm",
		"LeftFoot",
		"RightUpperLeg",
		"RightLowerLeg",
		"RightFoot",
		"EyebrowAccessory",
		"EyelashAccessory",
		"HairAccessory",
	}

	Constants.UGC_BODY_PART_NAMES_TO_ASSET_TYPE = {
		Head = Enum.AssetType.DynamicHead,
		UpperTorso = Enum.AssetType.Torso,
		LowerTorso = Enum.AssetType.Torso,
		LeftUpperArm = Enum.AssetType.LeftArm,
		LeftLowerArm = Enum.AssetType.LeftArm,
		LeftHand = Enum.AssetType.LeftArm,
		RightUpperArm = Enum.AssetType.RightArm,
		RightLowerArm = Enum.AssetType.RightArm,
		RightHand = Enum.AssetType.RightArm,
		LeftUpperLeg = Enum.AssetType.LeftLeg,
		LeftLowerLeg = Enum.AssetType.LeftLeg,
		LeftFoot = Enum.AssetType.LeftLeg,
		RightUpperLeg = Enum.AssetType.RightLeg,
		RightLowerLeg = Enum.AssetType.RightLeg,
		RightFoot = Enum.AssetType.RightLeg,
		EyebrowAccessory = Enum.AssetType.EyebrowAccessory,
		EyelashAccessory = Enum.AssetType.EyelashAccessory,
		HairAccessory = Enum.AssetType.HairAccessory,
	}

	Constants.ASSET_TYPES_THAT_SKIP_FOLDER = {
		Enum.AssetType.DynamicHead,
		Enum.AssetType.EyebrowAccessory,
		Enum.AssetType.EyelashAccessory,
		Enum.AssetType.HairAccessory,
	}
end

if getFFlagMoveToolboxCodeToUGCValidation() or getFFlagUGCValidateFullBody() then
	Constants.FOLDER_NAMES = {
		R6 = "R6",
		R15ArtistIntent = "R15ArtistIntent",
		R15Fixed = "R15Fixed",
	}
end

Constants.EXTRA_BANNED_NAMES = {
	"Head",
	"HumanoidRootPart",
	"Humanoid",
}

local extraBannedNames = {
	"Body Colors",
	"Shirt Graphic",
	"Shirt",
	"Pants",
	"Health",
	"Animate",
}
for _, name in ipairs(extraBannedNames) do
	table.insert(Constants.EXTRA_BANNED_NAMES, name)
end

Constants.BANNED_NAMES = convertArrayToTable(
	Cryo.Dictionary.join(Constants.R6_BODY_PARTS, Constants.R15_BODY_PARTS, Constants.EXTRA_BANNED_NAMES)
)

Constants.ASSET_STATUS = {
	UNKNOWN = "Unknown",
	REVIEW_PENDING = "ReviewPending",
	MODERATED = "Moderated",
}

-- https://confluence.rbx.com/display/AVATAR/UGC+Accessory+Max+Sizes
-- Measurements are doubled to account full size
-- boundsOffset is used when measurements are non-symmetrical
-- i.e. WaistAccessory is 3 behind, 2.5 front
Constants.ASSET_TYPE_INFO = {}

Constants.ASSET_TYPE_INFO[Enum.AssetType.Hat] = {
	attachmentNames = { "HatAttachment" },
	bounds = {
		HatAttachment = {
			size = Vector3.new(3, 4, 3),
		},
	},
}

Constants.ASSET_TYPE_INFO[Enum.AssetType.HairAccessory] = {
	attachmentNames = { "HairAttachment" },
	bounds = {
		HairAttachment = {
			size = Vector3.new(3, 5, 3.5),
			offset = Vector3.new(0, -0.5, 0.25),
		},
	},
}

local FACE_BOUNDS = { size = Vector3.new(3, 2, 2) }
Constants.ASSET_TYPE_INFO[Enum.AssetType.FaceAccessory] = {
	attachmentNames = { "FaceFrontAttachment", "FaceCenterAttachment" },
	bounds = {
		FaceFrontAttachment = FACE_BOUNDS,
		FaceCenterAttachment = FACE_BOUNDS,
	},
}

Constants.ASSET_TYPE_INFO[Enum.AssetType.NeckAccessory] = {
	attachmentNames = { "NeckAttachment" },
	bounds = {
		NeckAttachment = { size = Vector3.new(3, 3, 2) },
	},
}

local SHOULDER_BOUNDS = { size = Vector3.new(3, 3, 3) }
Constants.ASSET_TYPE_INFO[Enum.AssetType.ShoulderAccessory] = {
	attachmentNames = {
		"NeckAttachment",
		"LeftCollarAttachment",
		"RightCollarAttachment",
		"LeftShoulderAttachment",
		"RightShoulderAttachment",
	},
	bounds = {
		NeckAttachment = { size = Vector3.new(7, 3, 3) },
		LeftCollarAttachment = SHOULDER_BOUNDS,
		RightCollarAttachment = SHOULDER_BOUNDS,
		LeftShoulderAttachment = SHOULDER_BOUNDS,
		RightShoulderAttachment = SHOULDER_BOUNDS,
	},
}

Constants.ASSET_TYPE_INFO[Enum.AssetType.FrontAccessory] = {
	attachmentNames = { "BodyFrontAttachment" },
	bounds = {
		BodyFrontAttachment = { size = Vector3.new(3, 3, 3) },
	},
}

Constants.ASSET_TYPE_INFO[Enum.AssetType.BackAccessory] = {
	attachmentNames = { "BodyBackAttachment" },
	bounds = {
		BodyBackAttachment = {
			size = Vector3.new(10, 7, 4.5),
			offset = Vector3.new(0, 0, 0.75),
		},
	},
}

local WAIST_BOUNDS = {
	size = Vector3.new(4, 3.5, 7),
	offset = Vector3.new(0, -0.25, 0),
}
Constants.ASSET_TYPE_INFO[Enum.AssetType.WaistAccessory] = {
	attachmentNames = {
		"WaistBackAttachment",
		"WaistFrontAttachment",
		"WaistCenterAttachment",
	},
	bounds = {
		WaistBackAttachment = WAIST_BOUNDS,
		WaistFrontAttachment = WAIST_BOUNDS,
		WaistCenterAttachment = WAIST_BOUNDS,
	},
}

Constants.ASSET_TYPE_INFO[Enum.AssetType.TShirtAccessory] = {
	attachmentNames = { "BodyFrontAttachment" },
}

Constants.ASSET_TYPE_INFO[Enum.AssetType.ShirtAccessory] = {
	attachmentNames = { "BodyFrontAttachment" },
}

Constants.ASSET_TYPE_INFO[Enum.AssetType.PantsAccessory] = {
	attachmentNames = { "WaistCenterAttachment" },
}

Constants.ASSET_TYPE_INFO[Enum.AssetType.JacketAccessory] = {
	attachmentNames = { "BodyFrontAttachment" },
}

Constants.ASSET_TYPE_INFO[Enum.AssetType.SweaterAccessory] = {
	attachmentNames = { "BodyFrontAttachment" },
}

Constants.ASSET_TYPE_INFO[Enum.AssetType.ShortsAccessory] = {
	attachmentNames = { "WaistCenterAttachment" },
}

Constants.ASSET_TYPE_INFO[Enum.AssetType.LeftShoeAccessory] = {
	attachmentNames = { "LeftFootAttachment" },
}

Constants.ASSET_TYPE_INFO[Enum.AssetType.RightShoeAccessory] = {
	attachmentNames = { "RightFootAttachment" },
}

Constants.ASSET_TYPE_INFO[Enum.AssetType.DressSkirtAccessory] = {
	attachmentNames = { "WaistCenterAttachment" },
}

if getFFlagUGCValidateBodyParts() then
	Constants.ASSET_TYPE_INFO[Enum.AssetType.EyebrowAccessory] = {
		attachmentNames = { "FaceFrontAttachment", "FaceCenterAttachment" },
		layeredClothingBounds = {
			FaceFrontAttachment = {
				size = Vector3.new(1.5, 0.5, 0.5),
			},
			FaceCenterAttachment = {
				size = Vector3.new(1.5, 0.5, 0.5),
			},
		},
	}

	Constants.ASSET_TYPE_INFO[Enum.AssetType.EyelashAccessory] = {
		attachmentNames = { "FaceFrontAttachment", "FaceCenterAttachment" },
		layeredClothingBounds = {
			FaceFrontAttachment = {
				size = Vector3.new(1.5, 0.5, 0.5),
			},
			FaceCenterAttachment = {
				size = Vector3.new(1.5, 0.5, 0.5),
			},
		},
	}

	Constants.AvatarPartScaleTypes = {
		Classic = true,
		ProportionsSlender = true,
		ProportionsNormal = true,
	}

	local meshDivisionFullExtended = getFIntMeshDivisionFullExtended() / 100
	local meshDivision = getFIntMeshDivision() / 100
	local meshDivisionFull = getFIntMeshDivisionFull() / 100
	local meshDivisionMedium = getFIntMeshDivisionMedium() / 100
	local meshDivisionNarrow = if getFFlagUGCValidateRestrictAttachmentPositions()
		then getFIntMeshDivisionNarrow() / 100
		else nil

	local fullMesh = {
		min = Vector3.new(-meshDivisionFull, -meshDivisionFull, -meshDivisionFull),
		max = Vector3.new(meshDivisionFull, meshDivisionFull, meshDivisionFull),
	}

	local fullMeshExtended = {
		min = Vector3.new(-meshDivisionFullExtended, -meshDivisionFullExtended, -meshDivisionFullExtended),
		max = Vector3.new(meshDivisionFullExtended, meshDivisionFullExtended, meshDivisionFullExtended),
	}

	local leftMeshMedium = {
		min = fullMesh.min,
		max = Vector3.new(-meshDivisionMedium, fullMesh.max.y, fullMesh.max.z),
	}

	local rightMeshMedium = {
		min = Vector3.new(meshDivisionMedium, fullMesh.min.y, fullMesh.min.z),
		max = fullMesh.max,
	}

	local topMesh = {
		min = Vector3.new(fullMesh.min.x, meshDivision, fullMesh.min.z),
		max = fullMesh.max,
	}

	local topLeftMeshNarrow = if getFFlagUGCValidateRestrictAttachmentPositions()
		then {
			min = Vector3.new(fullMesh.min.X, meshDivision, -meshDivisionNarrow),
			max = Vector3.new(-meshDivision, fullMesh.max.Y, meshDivisionNarrow),
		}
		else nil

	local topRightMeshNarrow = if getFFlagUGCValidateRestrictAttachmentPositions()
		then {
			min = Vector3.new(meshDivision, meshDivision, -meshDivisionNarrow),
			max = Vector3.new(fullMesh.max.X, fullMesh.max.Y, meshDivisionNarrow),
		}
		else nil

	local topCenterMesh = if getFFlagUGCValidateRestrictAttachmentPositions()
		then {
			min = Vector3.new(-meshDivisionNarrow, meshDivision, -meshDivisionNarrow),
			max = Vector3.new(meshDivisionNarrow, fullMesh.max.Y, meshDivisionNarrow),
		}
		else nil

	local topMeshExtended = {
		min = Vector3.new(fullMesh.min.x, meshDivision, fullMesh.min.z),
		max = Vector3.new(fullMesh.max.x, meshDivisionFullExtended, fullMesh.max.z),
	}

	local bottomMesh = {
		min = fullMesh.min,
		max = Vector3.new(fullMesh.max.x, -meshDivision, fullMesh.max.z),
	}

	local bottomLeftMeshNarrow = if getFFlagUGCValidateRestrictAttachmentPositions()
		then {
			min = Vector3.new(fullMesh.min.X, fullMesh.min.Y, -meshDivisionNarrow),
			max = Vector3.new(-meshDivision, -meshDivision, meshDivisionNarrow),
		}
		else nil

	local bottomRightMeshNarrow = if getFFlagUGCValidateRestrictAttachmentPositions()
		then {
			min = Vector3.new(meshDivision, fullMesh.min.Y, -meshDivisionNarrow),
			max = Vector3.new(fullMesh.max.X, -meshDivision, meshDivisionNarrow),
		}
		else nil

	local bottomCenterMesh = if getFFlagUGCValidateRestrictAttachmentPositions()
		then {
			min = Vector3.new(-meshDivisionNarrow, fullMesh.min.Y, -meshDivisionNarrow),
			max = Vector3.new(meshDivisionNarrow, -meshDivision, meshDivisionNarrow),
		}
		else nil

	local frontMesh = {
		min = fullMesh.min,
		max = Vector3.new(fullMesh.max.x, fullMesh.max.y, -meshDivision),
	}

	local backMesh = {
		min = Vector3.new(fullMesh.min.x, fullMesh.min.y, meshDivision),
		max = fullMesh.max,
	}

	Constants.ASSET_TYPE_INFO[Enum.AssetType.RightArm] = {
		isBodyPart = true,
		bounds = {
			Classic = {
				minSize = Vector3.new(0.25, 1.5, 0.25),
				maxSize = Vector3.new(2, 3, 2),
			},
			ProportionsSlender = {
				minSize = Vector3.new(0.25, 1.5, 0.25),
				maxSize = Vector3.new(1.5, 4, 2),
			},
			ProportionsNormal = {
				minSize = Vector3.new(0.25, 1.5, 0.25),
				maxSize = Vector3.new(2, 4.5, 2),
			},
		},
		subParts = {
			RightHand = {
				rigAttachmentToParent = {
					name = "RightWristRigAttachment",
					bounds = topMesh,
				},
				otherAttachments = {
					RightGripAttachment = {
						bounds = fullMeshExtended,
					},
				},
			},
			RightUpperArm = {
				rigAttachmentToParent = {
					name = "RightShoulderRigAttachment",
					bounds = topMesh,
				},
				otherAttachments = {
					RightShoulderAttachment = {
						bounds = topMesh,
					},
					RightElbowRigAttachment = {
						bounds = bottomMesh,
					},
				},
			},
			RightLowerArm = {
				rigAttachmentToParent = {
					name = "RightElbowRigAttachment",
					bounds = topMesh,
				},
				otherAttachments = {
					RightWristRigAttachment = {
						bounds = bottomMesh,
					},
				},
			},
		},
	}

	Constants.ASSET_TYPE_INFO[Enum.AssetType.DynamicHead] = {
		isBodyPart = true,
		bounds = {
			Classic = {
				minSize = Vector3.new(0.5, 0.5, 0.5),
				maxSize = Vector3.new(1.5, 1.75, 2),
			},
			ProportionsSlender = {
				minSize = Vector3.new(0.5, 0.5, 0.5),
				maxSize = Vector3.new(2, 2, 2),
			},
			ProportionsNormal = {
				minSize = Vector3.new(0.5, 0.5, 0.5),
				maxSize = Vector3.new(3, 2, 2),
			},
		},
		subParts = {
			Head = {
				rigAttachmentToParent = {
					name = "NeckRigAttachment",
					bounds = bottomMesh,
				},
				otherAttachments = {
					FaceFrontAttachment = {
						bounds = frontMesh,
					},
					HatAttachment = {
						bounds = topMesh,
					},
					HairAttachment = {
						bounds = topMesh,
					},
					FaceCenterAttachment = {
						bounds = fullMesh,
					},
				},
			},
		},
	}

	Constants.ASSET_TYPE_INFO[Enum.AssetType.LeftArm] = {
		isBodyPart = true,
		bounds = {
			Classic = {
				minSize = Vector3.new(0.25, 1.5, 0.25),
				maxSize = Vector3.new(2, 3, 2),
			},
			ProportionsSlender = {
				minSize = Vector3.new(0.25, 1.5, 0.25),
				maxSize = Vector3.new(1.5, 4, 2),
			},
			ProportionsNormal = {
				minSize = Vector3.new(0.25, 1.5, 0.25),
				maxSize = Vector3.new(2, 4.5, 2),
			},
		},
		subParts = {
			LeftLowerArm = {
				rigAttachmentToParent = {
					name = "LeftElbowRigAttachment",
					bounds = topMesh,
				},
				otherAttachments = {
					LeftWristRigAttachment = {
						bounds = bottomMesh,
					},
				},
			},
			LeftUpperArm = {
				rigAttachmentToParent = {
					name = "LeftShoulderRigAttachment",
					bounds = topMesh,
				},
				otherAttachments = {
					LeftElbowRigAttachment = {
						bounds = bottomMesh,
					},
					LeftShoulderAttachment = {
						bounds = topMesh,
					},
				},
			},
			LeftHand = {
				rigAttachmentToParent = {
					name = "LeftWristRigAttachment",
					bounds = topMesh,
				},
				otherAttachments = {
					LeftGripAttachment = {
						bounds = fullMeshExtended,
					},
				},
			},
		},
	}

	Constants.ASSET_TYPE_INFO[Enum.AssetType.Torso] = {
		isBodyPart = true,
		bounds = {
			Classic = {
				minSize = Vector3.new(1, 2, 0.7),
				maxSize = Vector3.new(3.5, 3.25, 2),
			},
			ProportionsSlender = {
				minSize = Vector3.new(1, 2, 0.7),
				maxSize = Vector3.new(2.5, 3, 2),
			},
			ProportionsNormal = {
				minSize = Vector3.new(1, 2, 0.7),
				maxSize = Vector3.new(4, 3, 2.25),
			},
		},
		subParts = {
			UpperTorso = {
				rigAttachmentToParent = {
					name = "WaistRigAttachment",
					bounds = if getFFlagUGCValidateRestrictAttachmentPositions() then bottomCenterMesh else bottomMesh,
				},
				otherAttachments = {
					LeftShoulderRigAttachment = {
						bounds = if getFFlagUGCValidateRestrictAttachmentPositions()
							then topLeftMeshNarrow
							else leftMeshMedium,
					},
					RightCollarAttachment = {
						bounds = rightMeshMedium,
					},
					BodyBackAttachment = {
						bounds = backMesh,
					},
					NeckRigAttachment = {
						bounds = topMesh,
					},
					BodyFrontAttachment = {
						bounds = frontMesh,
					},
					RightShoulderRigAttachment = {
						bounds = if getFFlagUGCValidateRestrictAttachmentPositions()
							then topRightMeshNarrow
							else rightMeshMedium,
					},
					LeftCollarAttachment = {
						bounds = leftMeshMedium,
					},
					NeckAttachment = {
						bounds = topMeshExtended,
					},
				},
			},
			LowerTorso = {
				rigAttachmentToParent = {
					name = "RootRigAttachment",
					bounds = fullMesh,
				},
				otherAttachments = {
					WaistCenterAttachment = {
						bounds = fullMesh,
					},
					LeftHipRigAttachment = {
						bounds = if getFFlagUGCValidateRestrictAttachmentPositions()
							then bottomLeftMeshNarrow
							else leftMeshMedium,
					},
					RightHipRigAttachment = {
						bounds = if getFFlagUGCValidateRestrictAttachmentPositions()
							then bottomRightMeshNarrow
							else rightMeshMedium,
					},
					WaistRigAttachment = {
						bounds = if getFFlagUGCValidateRestrictAttachmentPositions() then topCenterMesh else topMesh,
					},
					WaistBackAttachment = {
						bounds = backMesh,
					},
					WaistFrontAttachment = {
						bounds = frontMesh,
					},
				},
			},
		},
	}

	Constants.ASSET_TYPE_INFO[Enum.AssetType.RightLeg] = {
		isBodyPart = true,
		bounds = {
			Classic = {
				minSize = Vector3.new(0.25, 2, 0.5),
				maxSize = Vector3.new(1.5, 2.75, 2),
			},
			ProportionsSlender = {
				minSize = Vector3.new(0.25, 2, 0.5),
				maxSize = if getFFlagUGCValidationAdjustLegBounds()
					then Vector3.new(1.5, 3.3, 2)
					else Vector3.new(1.5, 3, 2),
			},
			ProportionsNormal = {
				minSize = Vector3.new(0.25, 2, 0.5),
				maxSize = if getFFlagUGCValidationAdjustLegBounds()
					then Vector3.new(1.5, 3.3, 2)
					else Vector3.new(1.5, 3, 2),
			},
		},
		subParts = {
			RightUpperLeg = {
				rigAttachmentToParent = {
					name = "RightHipRigAttachment",
					bounds = topMesh,
				},
				otherAttachments = {
					RightKneeRigAttachment = {
						bounds = bottomMesh,
					},
				},
			},
			RightFoot = {
				rigAttachmentToParent = {
					name = "RightAnkleRigAttachment",
					bounds = topMesh,
				},
				otherAttachments = {
					RightFootAttachment = {
						bounds = fullMesh,
					},
				},
			},
			RightLowerLeg = {
				rigAttachmentToParent = {
					name = "RightKneeRigAttachment",
					bounds = topMesh,
				},
				otherAttachments = {
					RightAnkleRigAttachment = {
						bounds = bottomMesh,
					},
				},
			},
		},
	}

	Constants.ASSET_TYPE_INFO[Enum.AssetType.LeftLeg] = {
		isBodyPart = true,
		bounds = {
			Classic = {
				minSize = Vector3.new(0.25, 2, 0.5),
				maxSize = Vector3.new(1.5, 2.75, 2),
			},
			ProportionsSlender = {
				minSize = Vector3.new(0.25, 2, 0.5),
				maxSize = if getFFlagUGCValidationAdjustLegBounds()
					then Vector3.new(1.5, 3.3, 2)
					else Vector3.new(1.5, 3, 2),
			},
			ProportionsNormal = {
				minSize = Vector3.new(0.25, 2, 0.5),
				maxSize = if getFFlagUGCValidationAdjustLegBounds()
					then Vector3.new(1.5, 3.3, 2)
					else Vector3.new(1.5, 3, 2),
			},
		},
		subParts = {
			LeftFoot = {
				rigAttachmentToParent = {
					name = "LeftAnkleRigAttachment",
					bounds = topMesh,
				},
				otherAttachments = {
					LeftFootAttachment = {
						bounds = fullMesh,
					},
				},
			},
			LeftUpperLeg = {
				rigAttachmentToParent = {
					name = "LeftHipRigAttachment",
					bounds = topMesh,
				},
				otherAttachments = {
					LeftKneeRigAttachment = {
						bounds = bottomMesh,
					},
				},
			},
			LeftLowerLeg = {
				rigAttachmentToParent = {
					name = "LeftKneeRigAttachment",
					bounds = topMesh,
				},
				otherAttachments = {
					LeftAnkleRigAttachment = {
						bounds = bottomMesh,
					},
				},
			},
		},
	}

	Constants.RenderVsWrapMeshMaxDiff = 1
end

Constants.LC_BOUNDS = {
	size = Vector3.new(8, 8, 8),
}

Constants.PROPERTIES = {
	Instance = {
		Archivable = true,
	},
	Attachment = {
		Visible = false,
	},
	SpecialMesh = {
		MeshType = Enum.MeshType.FileMesh,
		Offset = Vector3.new(0, 0, 0),
		VertexColor = Vector3.new(1, 1, 1),
	},
	BasePart = {
		Anchored = false,
		Color = BrickColor.new("Medium stone grey").Color, -- luacheck: ignore BrickColor
		CollisionGroupId = 0, -- collision groups can change by place
		CustomPhysicalProperties = Cryo.None, -- ensure CustomPhysicalProperties is _not_ defined
		Elasticity = 0.5,
		Friction = 0.3,
		LocalTransparencyModifier = 0,
		Massless = false, -- this is already done by accessories internally
		Reflectance = 0,
		RootPriority = 0,
		RotVelocity = Vector3.new(0, 0, 0),
		Transparency = 0,
		Velocity = Vector3.new(0, 0, 0),

		-- surface properties
		BackParamA = -0.5,
		BackParamB = 0.5,
		BackSurfaceInput = Enum.InputType.NoInput,
		BottomParamA = -0.5,
		BottomParamB = 0.5,
		BottomSurfaceInput = Enum.InputType.NoInput,
		FrontParamA = -0.5,
		FrontParamB = 0.5,
		FrontSurfaceInput = Enum.InputType.NoInput,
		LeftParamA = -0.5,
		LeftParamB = 0.5,
		LeftSurfaceInput = Enum.InputType.NoInput,
		RightParamA = -0.5,
		RightParamB = 0.5,
		RightSurfaceInput = Enum.InputType.NoInput,
		TopParamA = -0.5,
		TopParamB = 0.5,
		TopSurfaceInput = Enum.InputType.NoInput,

		BackSurface = Enum.SurfaceType.Smooth,
		BottomSurface = Enum.SurfaceType.Smooth,
		FrontSurface = Enum.SurfaceType.Smooth,
		LeftSurface = Enum.SurfaceType.Smooth,
		RightSurface = Enum.SurfaceType.Smooth,
		TopSurface = Enum.SurfaceType.Smooth,
	},
	Part = {
		Shape = Enum.PartType.Block,
	},
	SurfaceAppearance = if getFFlagUGCValidateSurfaceAppearanceAlphaMode()
		then {
			AlphaMode = Enum.AlphaMode.Overlay,
		}
		else nil,
}

Constants.CONTENT_ID_FIELDS = {
	SpecialMesh = { "MeshId", "TextureId" },
	MeshPart = { "MeshId", "TextureID" },
	SurfaceAppearance = { "ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap" },
	WrapLayer = { "CageMeshId", "ReferenceMeshId" },
}

if getFFlagUGCValidateBodyParts() then
	Constants.CONTENT_ID_FIELDS["WrapTarget"] = { "CageMeshId" }

	Constants.CONTENT_ID_REQUIRED_FIELDS = {
		SpecialMesh = { MeshId = true, TextureId = true },
		MeshPart = { MeshId = true },
		WrapTarget = { CageMeshId = true },
	}

	Constants.MESH_CONTENT_ID_FIELDS = {
		SpecialMesh = { "MeshId" },
		MeshPart = { "MeshId" },
		WrapTarget = { "CageMeshId" },
	}

	Constants.TEXTURE_CONTENT_ID_FIELDS = {
		SpecialMesh = { "TextureId" },
		MeshPart = { "TextureID" },
		SurfaceAppearance = { "ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap" },
	}

	Constants.ASSET_RENDER_MESH_MAX_TRIANGLES = {
		DynamicHead = 4000,
		LeftArm = 1248,
		RightArm = 1248,
		Torso = 1750,
		LeftLeg = 1248,
		RightLeg = 1248,
	}

	Constants.WRAP_TARGET_CAGE_MESH_UV_COUNTS = {
		Head = 343,
		LeftUpperArm = 77,
		LeftLowerArm = 77,
		LeftHand = 86,
		RightUpperArm = 77,
		RightLowerArm = 77,
		RightHand = 86,
		UpperTorso = 257,
		LowerTorso = 105,
		LeftUpperLeg = 88,
		LeftLowerLeg = 88,
		LeftFoot = 86,
		RightUpperLeg = 88,
		RightLowerLeg = 88,
		RightFoot = 86,
	}
end

if getFFlagAddUGCValidationForPackage() then
	Constants.PACKAGE_CONTENT_ID_FIELDS = Cryo.Dictionary.join(
		Constants.CONTENT_ID_FIELDS,
		if getFFlagFixPackageIDFieldName()
			then {
				Sound = { "SoundId" },
				Decal = { "Texture" },
				VideoFrame = { "Video" },
				PackageLink = { "PackageId" },
				CharacterMesh = { "OverlayTextureId", "MeshId", "BaseTextureId" },
				Tool = { "TextureId" },
				Trail = { "Texture" },
				Beam = { "Texture" },
				ShirtGraphic = { "Graphic" },
				Shirt = { "ShirtTemplate" },
				Pants = { "PantsTemplate" },
				AdGui = { "FallbackImage" },
			}
			else {
				Sound = { "SoundId" },
				Decal = { "Texture" },
				VideoFrame = { "Video" },
				PackageLink = { "PackageId" },
				CharacterMesh = { "baseTextureAssetId", "overlayTextureAssetId", "meshAssetId" },
				Tool = { "TextureId" },
				Sky = { "SkyUp", "SkyLf", "SkyRt", "SkyBk", "SkyFt", "SkyDn", "Sun", "Moon" },
				Trail = { "texture" },
				Beam = { "texture" },
				ShirtGraphic = { "Graphic" },
				Shirt = { "ShirtTemplate" },
				Pants = { "PantsTemplate" },
				AdGui = { "FallbackImage" },
			}
	)

	Constants.ExperienceAuthHeaderKey = "RBX-ExperienceAuthorization"
	Constants.ContentType = "Content-Type"
	Constants.ApplicationJson = "application/json"
end

return Constants
