local Constants = {
	USE_MOCK_RBF_DATA = false,
	CLUSTER_THRESHOLD = 0.12,
	MAX_FALLOFF = 20,
	MAX_TRANSPARENCY = 100,
	DEFAULT_LATTICE_SUBDIVISIONS = Vector3.new(1, 3, 1),
	DEFAULT_CAGE_TRANSPARENCY = 100,

	MOCK_HIP_OFFSET = Vector3.new(0, 4.1, 0),

	MAX_WAYPOINTS = 20,

	CAGE_SAVE_DATA_FOLDER = "CageSaveData",

	LCE_POINT_TAG = "LCE_Point_Tag",
	LCE_CONTROL_TAG = "LCE_Control_Tag",

	DRAGGER_STATES = {
		Ready = "Ready",
		DragSelecting = "DragSelecting",
	},

	CUBE_CORNERS = {
		LeftBottomFront = Vector3.new(-0.5, -0.5, -0.5),
		LeftBottomBack = Vector3.new(-0.5, -0.5, 0.5),
		RightBottomFront = Vector3.new(0.5, -0.5, -0.5),
		LeftTopFront = Vector3.new(-0.5, 0.5, -0.5),
		RightTopFront = Vector3.new(0.5, 0.5, -0.5),
		LeftTopBack = Vector3.new(-0.5, 0.5, 0.5),
		RightBottomBack = Vector3.new(0.5, -0.5, 0.5),
		RightTopBack = Vector3.new(0.5, 0.5, 0.5),
	},

	TOOL_MODE = {
		None = "None",
		Point = "PointTool",
		Lattice = "LatticeTool",
		Reset = "Reset",
		Finish = "Finish",
	},

	EDIT_MODE = {
		Outer = Enum.CageType.Outer,
		Inner = Enum.CageType.Inner,
		Mesh = Enum.MeshType.FileMesh,
	},

	SELECTOR_MODE =  {
		None = "None",
		EditingItem = "EditingItem",
		Preview = "Preview",
	},

	KEY_SHORTCUTS = {
		LockControl = Enum.KeyCode.R,
	},

	LOCALIZATION_KEYS = {
		Editor = "Editor",
		Preview = "Preview",
		Avatars = "Avatars",
		Clothing = "Clothing",
		Animations = "Animations",
	},

	SIGNAL_KEYS = {
		SelectionChanged = "SelectionChanged",
		ToolChanged = "ToolChanged",
		PluginWindowFocused = "PluginWindowFocused",
	},

	ASSET_TYPE_ATTACHMENT = {
		Accessory = {
			Hat = {
				AssetType = "Hat",
				Attachments = {
					Hat = {
						Name = "HatAttachment",
						Bounds = Vector3.new(3, 4, 3),
						Offset = Vector3.new(0, 0, 0),
					}
				}
			},
			Hair = {
				AssetType = "HairAccessory",
				Attachments = {
					Hair = {
						Name = "HairAttachment",
						Bounds = Vector3.new(3, 5, 3.5),
						Offset = Vector3.new(0, -0.5, 0.25),
					}
				}
			},
			Face = {
				AssetType = "FaceAccessory",
				Attachments = {
					Face = {
						Name = "FaceFrontAttachment",
						Bounds = Vector3.new(3, 2, 2),
						Offset = Vector3.new(0, 0, 0),
					},
					Center = {
						Name = "FaceCenterAttachment",
						Bounds = Vector3.new(3, 2, 2),
						Offset = Vector3.new(0, 0, 0),
					},
				}
			},
			Neck = {
				AssetType = "NeckAccessory",
				Attachments = {
					Neck = {
						Name = "NeckAttachment",
						Bounds = Vector3.new(3, 3, 2),
						Offset = Vector3.new(0, 0, 0),
					}
				}
			},
			Shoulder = {
				AssetType = "ShoulderAccessory",
				Attachments = {
					Neck = {
						Name = "NeckAttachment",
						Bounds = Vector3.new(7, 3, 3),
						Offset = Vector3.new(0, 0, 0),
					},
					RightCollar = {
						Name = "RightCollarAttachment",
						Bounds = Vector3.new(3, 3, 3),
						Offset = Vector3.new(0, 0, 0),
					},
					LeftCollar = {
						Name = "LeftCollarAttachment",
						Bounds = Vector3.new(3, 3, 3),
						Offset = Vector3.new(0, 0, 0),
					},
					RightShoulder = {
						Name = "RightShoulderAttachment",
						Bounds = Vector3.new(3, 3, 3),
						Offset = Vector3.new(0, 0, 0),
					},
					LeftShoulder = {
						Name = "LeftShoulderAttachment",
						Bounds = Vector3.new(3, 3, 3),
						Offset = Vector3.new(0, 0, 0),
					},
				}
			},
			Front = {
				AssetType = "FrontAccessory",
				Attachments = {
					Front = {
						Name = "BodyFrontAttachment",
						Bounds = Vector3.new(3, 3, 3),
						Offset = Vector3.new(0, 0, 0),
					},
				}
			},
			Back = {
				AssetType = "BackAccessory",
				Attachments = {
					Back = {
						Name = "BodyBackAttachment",
						Bounds = Vector3.new(10, 7, 4.5),
						Offset = Vector3.new(0, 0, 0.75),
					}
				}
			},
			Waist = {
				AssetType = "WaistAccessory",
				Attachments = {
					Front = {
						Name = "WaistFrontAttachment",
						Bounds = Vector3.new(4, 3.5, 7),
						Offset = Vector3.new(0, -0.25, 0),
					},
					Back = {
						Name = "WaistBackAttachment",
						Bounds = Vector3.new(4, 3.5, 7),
						Offset = Vector3.new(0, -0.25, 0),
					},
					Center = {
						Name = "WaistCenterAttachment",
						Bounds = Vector3.new(4, 3.5, 7),
						Offset = Vector3.new(0, -0.25, 0),
					},
				}
			},
		},
		Clothing = {
			TeeShirt = {
				AssetType = "TeeShirtAccessory",
				Attachments = {
					TeeShirt = {
						Name = "BodyFrontAttachment",
						Bounds = Vector3.new(8, 8, 8),
						Offset = Vector3.new(0, 0, 0),
					}
				}
			},
			Shirt = {
				AssetType = "ShirtAccessory",
				Attachments = {
					Shirt = {
						Name = "BodyFrontAttachment",
						Bounds = Vector3.new(8, 8, 8),
						Offset = Vector3.new(0, 0, 0),
					}
				}
			},
			Pants = {
				AssetType = "PantsAccessory",
				Attachments = {
					Pants = {
						Name = "WaistCenterAttachment",
						Bounds = Vector3.new(8, 8, 8),
						Offset = Vector3.new(0, 0, 0),
					}
				}
			},
			Jacket = {
				AssetType = "JacketAccessory",
				Attachments = {
					Jacket = {
						Name = "BodyFrontAttachment",
						Bounds = Vector3.new(8, 8, 8),
						Offset = Vector3.new(0, 0, 0),
					}
				}
			},
			Sweater = {
				AssetType = "SweaterAccessory",
				Attachments = {
					Sweater = {
						Name = "BodyFrontAttachment",
						Bounds = Vector3.new(8, 8, 8),
						Offset = Vector3.new(0, 0, 0),
					}
				}
			},
			Shorts = {
				AssetType = "ShortsAccessory",
				Attachments = {
					Shorts = {
						Name = "WaistCenterAttachment",
						Bounds = Vector3.new(8, 8, 8),
						Offset = Vector3.new(0, 0, 0),
					}
				}
			},
			LeftShoe = {
				AssetType = "LeftShoeAccessory",
				Attachments = {
					LeftShoe = {
						Name = "LeftFootAttachment",
						Bounds = Vector3.new(8, 8, 8),
						Offset = Vector3.new(0, 0, 0),
					}
				}
			},
			RightShoe = {
				AssetType = "RightShoeAccessory",
				Attachments = {
					RightShoe = {
						Name = "RightFootAttachment",
						Bounds = Vector3.new(8, 8, 8),
						Offset = Vector3.new(0, 0, 0),
					}
				}
			},
			Dress = {
				AssetType = "DressSkirtAccessory",
				Attachments = {
					Dress = {
						Name = "WaistCenterAttachment",
						Bounds = Vector3.new(8, 8, 8),
						Offset = Vector3.new(0, 0, 0),
					}
				}
			},
			Skirt = {
				AssetType = "DressSkirtAccessory",
				Attachments = {
					Skirt = {
						Name = "WaistCenterAttachment",
						Bounds = Vector3.new(8, 8, 8),
						Offset = Vector3.new(0, 0, 0),
					}
				}
			},
		},
	}
}

Constants.EDIT_MODE_KEY_TO_STRING = {
	[Constants.EDIT_MODE.Inner] = "Inner",
	[Constants.EDIT_MODE.Outer] = "Outer",
	[Constants.EDIT_MODE.Mesh] = "Mesh",
}

Constants.CUBE_EDGES = {
	{Constants.CUBE_CORNERS.LeftBottomFront, Constants.CUBE_CORNERS.LeftBottomBack},
	{Constants.CUBE_CORNERS.LeftBottomBack, Constants.CUBE_CORNERS.RightBottomBack},
	{Constants.CUBE_CORNERS.RightBottomBack, Constants.CUBE_CORNERS.RightBottomFront},
	{Constants.CUBE_CORNERS.RightBottomFront, Constants.CUBE_CORNERS.LeftBottomFront},

	{Constants.CUBE_CORNERS.LeftTopFront, Constants.CUBE_CORNERS.LeftTopBack},
	{Constants.CUBE_CORNERS.LeftTopBack, Constants.CUBE_CORNERS.RightTopBack},
	{Constants.CUBE_CORNERS.RightTopBack, Constants.CUBE_CORNERS.RightTopFront},
	{Constants.CUBE_CORNERS.RightTopFront, Constants.CUBE_CORNERS.LeftTopFront},

	{Constants.CUBE_CORNERS.LeftBottomFront, Constants.CUBE_CORNERS.LeftTopFront},
	{Constants.CUBE_CORNERS.LeftBottomBack, Constants.CUBE_CORNERS.LeftTopBack},
	{Constants.CUBE_CORNERS.RightBottomFront, Constants.CUBE_CORNERS.RightTopFront},
	{Constants.CUBE_CORNERS.RightBottomBack, Constants.CUBE_CORNERS.RightTopBack},
}

return Constants