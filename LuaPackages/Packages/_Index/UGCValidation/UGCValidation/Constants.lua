--!nonstrict
local Root = script:FindFirstAncestor("UGCValidation").Parent
local Cryo = require(Root.Cryo)

local getFFlagUGCValidateBodyParts = require(Root.UGCValidation.flags.getFFlagUGCValidateBodyParts)

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

Constants.EXTRA_BANNED_NAMES = {
	"Head",
	"HumanoidRootPart",
	"Humanoid",
}

if game:GetFastFlag("UGCExtraBannedNames") then
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
end

Constants.BANNED_NAMES = convertArrayToTable(Cryo.Dictionary.join(
	Constants.R6_BODY_PARTS,
	Constants.R15_BODY_PARTS,
	Constants.EXTRA_BANNED_NAMES
))

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
	}
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
		attachmentNames = { "FaceFrontAttachment" },
	}

	Constants.ASSET_TYPE_INFO[Enum.AssetType.EyelashAccessory] = {
		attachmentNames = { "FaceFrontAttachment" },
	}

	--NOTE: all sizes and offsets for body parts are set-up so all current bundles between 700 and 998 would pass max size checks
	Constants.ASSET_TYPE_INFO[Enum.AssetType.RightArm] = {
		isBodyPart = true,
		subParts = {
			RightHand = {
				rigAttachmentToParentName = "RightWristRigAttachment",
				meshBounds = {
					size = Vector3.new(1.46, 1.83, 1.37),
					offset = Vector3.new(0.03, -0.39, -0.09),
				},
				otherAttachments = {
					RightGripAttachment = {
						bounds = {
							size = Vector3.new(1.44, 0.54, 0.71),
							offset = Vector3.new(0.36, -0.37, -0.09),
						},
					},
				},
			},
			RightUpperArm = {
				rigAttachmentToParentName = "RightShoulderRigAttachment",
				meshBounds = {
					size = Vector3.new(1.85, 3.49, 2.33),
					offset = Vector3.new(0.37, -0.35, -0.03),
				},
				otherAttachments = {
					RightShoulderAttachment = {
						bounds = {
							size = Vector3.new(1.39, 3.26, 0.44),
							offset = Vector3.new(0.18, 0.23, 0.07),
						},
					},
					RightElbowRigAttachment = {
						bounds = {
							size = Vector3.new(0.87, 1.62, 0.41),
							offset = Vector3.new(0.39, -1.21, 0.00),
						},
					},
				},
			},
			RightLowerArm = {
				rigAttachmentToParentName = "RightElbowRigAttachment",
				meshBounds = {
					size = Vector3.new(1.99, 2.59, 1.57),
					offset = Vector3.new(0.33, -0.74, -0.01),
				},
				otherAttachments = {
					RightWristRigAttachment = {
						bounds = {
							size = Vector3.new(0.91, 1.39, 0.66),
							offset = Vector3.new(0.36, -0.94, -0.26),
						},
					},
				},
			},
		},
	}

	Constants.ASSET_TYPE_INFO[Enum.AssetType.DynamicHead] = {
		isBodyPart = true,
		subParts = {
			Head = {
				rigAttachmentToParentName = "NeckRigAttachment",
				meshBounds = {
					size = Vector3.new(4.17, 2.78, 2.64),
					offset = Vector3.new(0.00, 0.88, -0.19),
				},
				otherAttachments = {
					FaceFrontAttachment = {
						bounds = {
							size = Vector3.new(0.11, 1.12, 1.25),
							offset = Vector3.new(-0.00, 0.53, -0.72),
						},
					},
					HatAttachment = {
						bounds = {
							size = Vector3.new(0.11, 1.43, 0.86),
							offset = Vector3.new(-0.00, 1.27, -0.31),
						},
					},
					HairAttachment = {
						bounds = {
							size = Vector3.new(0.11, 1.43, 0.86),
							offset = Vector3.new(-0.00, 1.27, -0.32),
						},
					},
					FaceCenterAttachment = {
						bounds = {
							size = Vector3.new(0.10, 1.00, 0.83),
							offset = Vector3.new(0.00, 0.45, -0.26),
						},
					},
				},
			},
		},
	}

	Constants.ASSET_TYPE_INFO[Enum.AssetType.LeftArm] = {
		isBodyPart = true,
		subParts = {
			LeftLowerArm = {
				rigAttachmentToParentName = "LeftElbowRigAttachment",
				meshBounds = {
					size = Vector3.new(2.02, 2.59, 1.51),
					offset = Vector3.new(-0.32, -0.74, -0.11),
				},
				otherAttachments = {
					LeftWristRigAttachment = {
						bounds = {
							size = Vector3.new(0.90, 1.43, 0.66),
							offset = Vector3.new(-0.37, -0.96, -0.26),
						},
					},
				},
			},
			LeftUpperArm = {
				rigAttachmentToParentName = "LeftShoulderRigAttachment",
				meshBounds = {
					size = Vector3.new(1.85, 3.49, 2.33),
					offset = Vector3.new(-0.37, -0.35, -0.03),
				},
				otherAttachments = {
					LeftElbowRigAttachment = {
						bounds = {
							size = Vector3.new(0.87, 1.21, 0.41),
							offset = Vector3.new(-0.39, -1.01, 0.00),
						},
					},
					LeftShoulderAttachment = {
						bounds = {
							size = Vector3.new(1.39, 3.26, 0.44),
							offset = Vector3.new(-0.18, 0.23, 0.07),
						},
					},
				},
			},
			LeftHand = {
				rigAttachmentToParentName = "LeftWristRigAttachment",
				meshBounds = {
					size = Vector3.new(1.46, 2.07, 1.37),
					offset = Vector3.new(-0.03, -0.27, -0.09),
				},
				otherAttachments = {
					LeftGripAttachment = {
						bounds = {
							size = Vector3.new(1.44, 0.88, 0.71),
							offset = Vector3.new(-0.36, -0.54, -0.09),
						},
					},
				},
			},
		},
	}

	Constants.ASSET_TYPE_INFO[Enum.AssetType.Torso] = {
		isBodyPart = true,
		subParts = {
			UpperTorso = {
				rigAttachmentToParentName = "WaistRigAttachment",
				meshBounds = {
					size = Vector3.new(3.53, 4.21, 3.72),
					offset = Vector3.new(-0.00, 0.75, 0.62),
				},
				otherAttachments = {
					LeftShoulderRigAttachment = {
						bounds = {
							size = Vector3.new(1.00, 1.88, 0.59),
							offset = Vector3.new(-0.70, 1.47, 0.12),
						},
					},
					RightCollarAttachment = {
						bounds = {
							size = Vector3.new(0.94, 1.81, 0.86),
							offset = Vector3.new(0.58, 1.70, 0.00),
						},
					},
					BodyBackAttachment = {
						bounds = {
							size = Vector3.new(0.16, 1.96, 1.14),
							offset = Vector3.new(-0.03, 0.96, 0.61),
						},
					},
					NeckRigAttachment = {
						bounds = {
							size = Vector3.new(0.16, 1.68, 0.64),
							offset = Vector3.new(-0.03, 1.78, -0.07),
						},
					},
					BodyFrontAttachment = {
						bounds = {
							size = Vector3.new(0.10, 1.38, 0.99),
							offset = Vector3.new(-0.00, 0.83, -0.67),
						},
					},
					RightShoulderRigAttachment = {
						bounds = {
							size = Vector3.new(1.00, 1.88, 0.59),
							offset = Vector3.new(0.70, 1.47, 0.12),
						},
					},
					LeftCollarAttachment = {
						bounds = {
							size = Vector3.new(0.94, 1.81, 0.86),
							offset = Vector3.new(-0.58, 1.70, 0.00),
						},
					},
					NeckAttachment = {
						bounds = {
							size = Vector3.new(0.16, 1.74, 0.72),
							offset = Vector3.new(-0.03, 1.83, -0.03),
						},
					},
				},
			},
			LowerTorso = {
				rigAttachmentToParentName = "RootRigAttachment",
				meshBounds = {
					size = Vector3.new(2.76, 3.09, 2.88),
					offset = Vector3.new(0.01, -0.18, 0.23),
				},
				otherAttachments = {
					WaistCenterAttachment = {
						bounds = {
							size = Vector3.new(0.10, 0.66, 0.27),
							offset = Vector3.new(0.00, 0.28, -0.04),
						},
					},
					LeftHipRigAttachment = {
						bounds = {
							size = Vector3.new(0.63, 0.92, 0.34),
							offset = Vector3.new(-0.43, -0.23, -0.05),
						},
					},
					RightHipRigAttachment = {
						bounds = {
							size = Vector3.new(0.63, 0.92, 0.34),
							offset = Vector3.new(0.43, -0.23, -0.05),
						},
					},
					WaistRigAttachment = {
						bounds = {
							size = Vector3.new(0.10, 0.93, 0.51),
							offset = Vector3.new(0.00, 0.54, 0.06),
						},
					},
					WaistBackAttachment = {
						bounds = {
							size = Vector3.new(0.10, 1.11, 1.22),
							offset = Vector3.new(0.00, 0.31, 0.64),
						},
					},
					WaistFrontAttachment = {
						bounds = {
							size = Vector3.new(0.11, 1.23, 1.05),
							offset = Vector3.new(-0.01, 0.24, -0.65),
						},
					},
				},
			},
		},
	}

	Constants.ASSET_TYPE_INFO[Enum.AssetType.RightLeg] = {
		isBodyPart = true,
		subParts = {
			RightUpperLeg = {
				rigAttachmentToParentName = "RightHipRigAttachment",
				meshBounds = {
					size = Vector3.new(1.65, 2.43, 1.64),
					offset = Vector3.new(0.09, -0.76, 0.03),
				},
				otherAttachments = {
					RightKneeRigAttachment = {
						bounds = {
							size = Vector3.new(0.38, 1.20, 0.71),
							offset = Vector3.new(0.02, -1.09, -0.10),
						},
					},
				},
			},
			RightFoot = {
				rigAttachmentToParentName = "RightAnkleRigAttachment",
				meshBounds = {
					size = Vector3.new(1.31, 1.41, 1.87),
					offset = Vector3.new(0.03, -0.07, -0.28),
				},
				otherAttachments = {
					RightFootAttachment = {
						bounds = {
							size = Vector3.new(1.65, 5.85, 0.64),
							offset = Vector3.new(-0.23, -0.39, -0.11),
						},
					},
				},
			},
			RightLowerLeg = {
				rigAttachmentToParentName = "RightKneeRigAttachment",
				meshBounds = {
					size = Vector3.new(1.35, 2.49, 2.20),
					offset = Vector3.new(0.04, -0.76, 0.31),
				},
				otherAttachments = {
					RightAnkleRigAttachment = {
						bounds = {
							size = Vector3.new(0.45, 1.46, 0.60),
							offset = Vector3.new(0.04, -1.13, 0.24),
						},
					},
				},
			},
		},
	}

	Constants.ASSET_TYPE_INFO[Enum.AssetType.LeftLeg] = {
		isBodyPart = true,
		subParts = {
			LeftFoot = {
				rigAttachmentToParentName = "LeftAnkleRigAttachment",
				meshBounds = {
					size = Vector3.new(1.31, 1.41, 1.89),
					offset = Vector3.new(-0.03, -0.07, -0.27),
				},
				otherAttachments = {
					LeftFootAttachment = {
						bounds = {
							size = Vector3.new(1.08, 5.85, 0.64),
							offset = Vector3.new(-0.10, -0.39, -0.11),
						},
					},
				},
			},
			LeftUpperLeg = {
				rigAttachmentToParentName = "LeftHipRigAttachment",
				meshBounds = {
					size = Vector3.new(1.65, 2.43, 1.64),
					offset = Vector3.new(-0.10, -0.76, 0.04),
				},
				otherAttachments = {
					LeftKneeRigAttachment = {
						bounds = {
							size = Vector3.new(0.38, 1.20, 0.71),
							offset = Vector3.new(-0.02, -1.09, -0.10),
						},
					},
				},
			},
			LeftLowerLeg = {
				rigAttachmentToParentName = "LeftKneeRigAttachment",
				meshBounds = {
					size = Vector3.new(1.35, 2.49, 2.20),
					offset = Vector3.new(-0.04, -0.76, 0.31),
				},
				otherAttachments = {
					LeftAnkleRigAttachment = {
						bounds = {
							size = Vector3.new(0.45, 1.46, 0.61),
							offset = Vector3.new(-0.04, -1.13, 0.24),
						},
					},
				},
			},
		},
	}
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
}

Constants.CONTENT_ID_FIELDS = {
	SpecialMesh = { "MeshId", "TextureId" },
	MeshPart = { "MeshId", "TextureID" },
	SurfaceAppearance = { "ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap" },
	WrapLayer = { "CageMeshId", "ReferenceMeshId" },
}

return Constants
