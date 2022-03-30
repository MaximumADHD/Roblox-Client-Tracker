--[[

	This file contains a table of all accessory/clothing asset types with their
	proper attachment locations and bound limits for moderation.

]]

return {
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