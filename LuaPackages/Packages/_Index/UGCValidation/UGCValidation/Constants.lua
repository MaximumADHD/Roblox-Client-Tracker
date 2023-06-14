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
					size = Vector3.new(2, 2.5, 2),
					offset = Vector3.new(0.25, -0.5, -0.25),
				},
				otherAttachments = {
					RightGripAttachment = {
						bounds = {
							size = Vector3.new(2, 1, 1),
							offset = Vector3.new(0.5, -0.5, -0.25),
						},
					},
				},
			},
			RightUpperArm = {
				rigAttachmentToParentName = "RightShoulderRigAttachment",
				meshBounds = {
					size = Vector3.new(2.5, 4, 2.5),
					offset = Vector3.new(0.5, -0.5, 0),
				},
				otherAttachments = {
					RightShoulderAttachment = {
						bounds = {
							size = Vector3.new(1.5, 3.5, 0.5),
							offset = Vector3.new(0.25, 0.25, 0),
						},
					},
					RightElbowRigAttachment = {
						bounds = {
							size = Vector3.new(1.5, 2, 0.5),
							offset = Vector3.new(0.5, -1.25, 0),
						},
					},
				},
			},
			RightLowerArm = {
				rigAttachmentToParentName = "RightElbowRigAttachment",
				meshBounds = {
					size = Vector3.new(2.5, 3, 2),
					offset = Vector3.new(0.5, -0.75, -0.25),
				},
				otherAttachments = {
					RightWristRigAttachment = {
						bounds = {
							size = Vector3.new(1.5, 1.5, 1),
							offset = Vector3.new(0.5, -1, -0.25),
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
					size = Vector3.new(4.5, 3, 3),
					offset = Vector3.new(0, 1, -0.25),
				},
				otherAttachments = {
					FaceFrontAttachment = {
						bounds = {
							size = Vector3.new(0.5, 1.5, 1.5),
							offset = Vector3.new(0, 0.75, -0.75),
						},
					},
					HatAttachment = {
						bounds = {
							size = Vector3.new(0.5, 1.5, 1),
							offset = Vector3.new(0, 1.25, -0.25),
						},
					},
					HairAttachment = {
						bounds = {
							size = Vector3.new(0.5, 1.5, 1),
							offset = Vector3.new(0, 1.25, -0.25),
						},
					},
					FaceCenterAttachment = {
						bounds = {
							size = Vector3.new(0.5, 1, 1),
							offset = Vector3.new(0, 0.5, -0.25),
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
					size = Vector3.new(2.5, 3, 2),
					offset = Vector3.new(-0.5, -0.75, -0.25),
				},
				otherAttachments = {
					LeftWristRigAttachment = {
						bounds = {
							size = Vector3.new(1.5, 1.5, 1),
							offset = Vector3.new(-0.5, -1, -0.25),
						},
					},
				},
			},
			LeftUpperArm = {
				rigAttachmentToParentName = "LeftShoulderRigAttachment",
				meshBounds = {
					size = Vector3.new(2.5, 4, 2.5),
					offset = Vector3.new(-0.5, -0.5, 0),
				},
				otherAttachments = {
					LeftElbowRigAttachment = {
						bounds = {
							size = Vector3.new(1.5, 2, 0.5),
							offset = Vector3.new(-0.5, -1.25, 0),
						},
					},
					LeftShoulderAttachment = {
						bounds = {
							size = Vector3.new(1.5, 3.5, 0.5),
							offset = Vector3.new(-0.25, 0.25, 0),
						},
					},
				},
			},
			LeftHand = {
				rigAttachmentToParentName = "LeftWristRigAttachment",
				meshBounds = {
					size = Vector3.new(2, 2.5, 2),
					offset = Vector3.new(-0.25, -0.5, -0.25),
				},
				otherAttachments = {
					LeftGripAttachment = {
						bounds = {
							size = Vector3.new(2, 1, 1),
							offset = Vector3.new(-0.5, -0.5, -0.25),
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
					size = Vector3.new(3.5, 4.5, 4),
					offset = Vector3.new(0, 0.75, 0.75),
				},
				otherAttachments = {
					LeftShoulderRigAttachment = {
						bounds = {
							size = Vector3.new(1.5, 2, 1),
							offset = Vector3.new(-0.75, 1.5, 0.25),
						},
					},
					RightCollarAttachment = {
						bounds = {
							size = Vector3.new(1, 2, 1),
							offset = Vector3.new(0.5, 1.75, 0),
						},
					},
					BodyBackAttachment = {
						bounds = {
							size = Vector3.new(0.5, 2, 1.5),
							offset = Vector3.new(0, 1, 0.75),
						},
					},
					NeckRigAttachment = {
						bounds = {
							size = Vector3.new(0.5, 2, 1),
							offset = Vector3.new(0, 1.75, -0.25),
						},
					},
					BodyFrontAttachment = {
						bounds = {
							size = Vector3.new(0.5, 1.5, 1.5),
							offset = Vector3.new(0, 0.75, -0.75),
						},
					},
					RightShoulderRigAttachment = {
						bounds = {
							size = Vector3.new(1.5, 2, 1),
							offset = Vector3.new(0.75, 1.5, 0.25),
						},
					},
					LeftCollarAttachment = {
						bounds = {
							size = Vector3.new(1, 2, 1),
							offset = Vector3.new(-0.5, 1.75, 0),
						},
					},
					NeckAttachment = {
						bounds = {
							size = Vector3.new(0.5, 2, 1),
							offset = Vector3.new(0, 2, 0),
						},
					},
				},
			},
			LowerTorso = {
				rigAttachmentToParentName = "RootRigAttachment",
				meshBounds = {
					size = Vector3.new(3, 3.5, 3),
					offset = Vector3.new(0, -0.25, 0.25),
				},
				otherAttachments = {
					WaistCenterAttachment = {
						bounds = {
							size = Vector3.new(0.5, 1, 0.5),
							offset = Vector3.new(0, 0.25, 0),
						},
					},
					LeftHipRigAttachment = {
						bounds = {
							size = Vector3.new(1, 1, 0.5),
							offset = Vector3.new(-0.5, -0.25, 0),
						},
					},
					RightHipRigAttachment = {
						bounds = {
							size = Vector3.new(1, 1, 0.5),
							offset = Vector3.new(0.5, -0.25, 0),
						},
					},
					WaistRigAttachment = {
						bounds = {
							size = Vector3.new(0.5, 1, 1),
							offset = Vector3.new(0, 0.5, 0.25),
						},
					},
					WaistBackAttachment = {
						bounds = {
							size = Vector3.new(0.5, 1.5, 1.5),
							offset = Vector3.new(0, 0.5, 0.75),
						},
					},
					WaistFrontAttachment = {
						bounds = {
							size = Vector3.new(0.5, 1.5, 1.5),
							offset = Vector3.new(0, 0.25, -0.75),
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
					size = Vector3.new(2, 2.5, 2),
					offset = Vector3.new(0.25, -0.75, 0),
				},
				otherAttachments = {
					RightKneeRigAttachment = {
						bounds = {
							size = Vector3.new(0.5, 1.5, 1),
							offset = Vector3.new(0, -1.25, -0.25),
						},
					},
				},
			},
			RightFoot = {
				rigAttachmentToParentName = "RightAnkleRigAttachment",
				meshBounds = {
					size = Vector3.new(1.5, 1.5, 2),
					offset = Vector3.new(0, 0, -0.25),
				},
				otherAttachments = {
					RightFootAttachment = {
						bounds = {
							size = Vector3.new(2, 6, 1),
							offset = Vector3.new(-0.25, -0.5, -0.25),
						},
					},
				},
			},
			RightLowerLeg = {
				rigAttachmentToParentName = "RightKneeRigAttachment",
				meshBounds = {
					size = Vector3.new(1.5, 3, 2.5),
					offset = Vector3.new(0, -1, 0.5),
				},
				otherAttachments = {
					RightAnkleRigAttachment = {
						bounds = {
							size = Vector3.new(0.5, 2, 1),
							offset = Vector3.new(0, -1.25, 0.25),
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
					size = Vector3.new(1.5, 1.5, 2),
					offset = Vector3.new(0, 0, -0.25),
				},
				otherAttachments = {
					LeftFootAttachment = {
						bounds = {
							size = Vector3.new(2, 6, 1),
							offset = Vector3.new(0.25, -0.5, -0.25),
						},
					},
				},
			},
			LeftUpperLeg = {
				rigAttachmentToParentName = "LeftHipRigAttachment",
				meshBounds = {
					size = Vector3.new(2, 2.5, 2),
					offset = Vector3.new(-0.25, -0.75, 0),
				},
				otherAttachments = {
					LeftKneeRigAttachment = {
						bounds = {
							size = Vector3.new(0.5, 1.5, 1),
							offset = Vector3.new(0, -1.25, -0.25),
						},
					},
				},
			},
			LeftLowerLeg = {
				rigAttachmentToParentName = "LeftKneeRigAttachment",
				meshBounds = {
					size = Vector3.new(1.5, 3, 2.5),
					offset = Vector3.new(0, -1, 0.5),
				},
				otherAttachments = {
					LeftAnkleRigAttachment = {
						bounds = {
							size = Vector3.new(0.5, 2, 1),
							offset = Vector3.new(0, -1.25, 0.25),
						},
					},
				},
			},
		},
	}

	--NOTE: tolerances specified here mean that all current bundles between 700 and 998 would pass render mesh vs WrapTarget mesh comparison checks
	Constants.RenderVsWrapMeshComparison = {
		lowerTol = -0.5, --a render mesh max extent on any axis cannot be more than this amount smaller than the Wraptarget mesh
		upperTol = 1.5, --a render mesh max extent on any axis cannot be more than this amount larger than the Wraptarget mesh
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

if getFFlagUGCValidateBodyParts() then
	Constants.CONTENT_ID_FIELDS["WrapTarget"] = { "CageMeshId" }

	Constants.CONTENT_ID_REQUIRED_FIELDS = {
		SpecialMesh = { MeshId = true, TextureId = true },
		MeshPart = { MeshId = true },
		SurfaceAppearance = { ColorMap = true },
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

	Constants.TEXTURE_CHANNELS = {
		SpecialMesh = { TextureId = 3 },
		MeshPart = { TextureID = 3 },
		SurfaceAppearance = { ColorMap = 3, MetalnessMap = 1, NormalMap = 3, RoughnessMap = 1 },
	}

	Constants.RENDER_MESH_MAX_TRIANGLES = {
		Head = 1500,
		LeftUpperArm = 416,
		LeftLowerArm = 416,
		LeftHand = 416,
		RightUpperArm = 416,
		RightLowerArm = 416,
		RightHand = 416,
		UpperTorso = 875,
		LowerTorso = 875,
		LeftUpperLeg = 416,
		LeftLowerLeg = 416,
		LeftFoot = 416,
		RightUpperLeg = 416,
		RightLowerLeg = 416,
		RightFoot = 416,
	}

	Constants.WRAP_TARGET_CAGE_MESH_VERTS = {
		Head = 335,
		LeftUpperArm = 70,
		LeftLowerArm = 70,
		LeftHand = 63,
		RightUpperArm = 70,
		RightLowerArm = 70,
		RightHand = 63,
		UpperTorso = 231,
		LowerTorso = 92,
		LeftUpperLeg = 80,
		LeftLowerLeg = 80,
		LeftFoot = 64,
		RightUpperLeg = 80,
		RightLowerLeg = 80,
		RightFoot = 64,
	}
end

return Constants
