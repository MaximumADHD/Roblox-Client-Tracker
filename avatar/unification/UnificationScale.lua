local module = {}

local PartNames = {
	"RightFoot",
	"LeftFoot",
	"RightHand",
	"LeftHand",
	"RightLowerArm",
	"LeftLowerArm",
	"RightLowerLeg",
	"LeftLowerLeg",
	"RightUpperArm",
	"LeftUpperArm",
	"RightUpperLeg",
	"LeftUpperLeg",
	"LowerTorso",
	"UpperTorso",
	"Head",
}

type R15Definition = {
	Sizes : {[string]: Vector3},
	Rigging : {[string]: {C0: CFrame, C1: CFrame}}	
}

type Hitbox = {
	Size: Vector3,
	Orientation: CFrame
}

type RiggingAttachment = {
	C0: Vector3, 
	C1: Vector3, 
	Part0: Part, 
	Part1: Part,
	CFrame: CFrame
}

type R15Hitboxes = {
	RightFoot : Hitbox,
	LeftFoot : Hitbox,
	RightHand : Hitbox,
	LeftHand : Hitbox,
	RightLowerArm : Hitbox,
	LeftLowerArm : Hitbox,
	RightLowerLeg : Hitbox,
	LeftLowerLeg : Hitbox,
	RightUpperArm : Hitbox,
	LeftUpperArm : Hitbox,
	RightUpperLeg : Hitbox,
	LeftUpperLeg : Hitbox,
	LowerTorso : Hitbox,
	UpperTorso : Hitbox,
	Head : Hitbox,
	HumanoidRootPart : Hitbox,
}

type R15RelativeAttachments = {
	RightFoot : RiggingAttachment,
	LeftFoot : RiggingAttachment,
	RightHand : RiggingAttachment,
	LeftHand : RiggingAttachment,
	RightLowerArm : RiggingAttachment,
	LeftLowerArm : RiggingAttachment,
	RightLowerLeg : RiggingAttachment,
	LeftLowerLeg : RiggingAttachment,
	RightUpperArm : RiggingAttachment,
	LeftUpperArm : RiggingAttachment,
	RightUpperLeg : RiggingAttachment,
	LeftUpperLeg : RiggingAttachment,
	LowerTorso : RiggingAttachment,
	UpperTorso : RiggingAttachment,
	Head : RiggingAttachment,
	HumanoidRootPart : RiggingAttachment,
}

local MotorMappings: {[string] : string} = {
	RightFoot = "RightAnkle",
	LeftFoot = "LeftAnkle",
	RightHand = "RightWrist",
	LeftHand = "LeftWrist",
	RightLowerArm = "RightElbow",
	LeftLowerArm = "LeftElbow",
	RightLowerLeg = "RightKnee",
	LeftLowerLeg = "LeftKnee",
	RightUpperArm = "RightShoulder",
	LeftUpperArm = "LeftShoulder",
	RightUpperLeg = "RightHip",
	LeftUpperLeg = "LeftHip",
	LowerTorso = "Root",
	UpperTorso = "Waist",
	Head = "Neck",
}

module.Target = {
	Sizes = {
		RightFoot = Vector3.new(1, 0.3, 1),
		LeftFoot = Vector3.new(1, 0.3, 1),
		RightHand = Vector3.new(1, 0.3, 1),
		LeftHand = Vector3.new(1, 0.3, 1),
		RightLowerArm = Vector3.new(1, 1.0518989562988281, 1),
		LeftLowerArm = Vector3.new(1, 1.0518989562988281, 1),
		RightLowerLeg = Vector3.new(1, 1.1930999755859375, 1),
		LeftLowerLeg = Vector3.new(1, 1.193100094795227, 1),
		RightUpperArm = Vector3.new(1, 1.1686992645263672, 1),
		LeftUpperArm = Vector3.new(1, 1.1686992645263672, 1),
		RightUpperLeg = Vector3.new(1, 1.2166004180908203, 1),
		LeftUpperLeg = Vector3.new(1, 1.2166005373001099, 1),
		LowerTorso = Vector3.new(2, 0.4, 1),
		UpperTorso = Vector3.new(2, 1.6, 1),
		Head = Vector3.new(1.2, 1.2, 1.2),
		HumanoidRootPart = Vector3.new(2, 2, 1),
	},
	Rigging = {
		RightAnkle = {
			C0 = CFrame.new( 0, -0.547157168, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( 0, 0.101939559, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
		LeftAnkle = {
			C0 = CFrame.new( 0, -0.547157228, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( 0, 0.101939693, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
		RightWrist = {
			C0 = CFrame.new( 0, -0.5009287, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( 0, 0.125045404, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
		LeftWrist = {
			C0 = CFrame.new( 0.000478625298, -0.5009287, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( 0.000478982925, 0.125045404, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
		RightElbow = {
			C0 = CFrame.new( 0, -0.334165096, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( 0, 0.258579493, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
		LeftElbow = {
			C0 = CFrame.new( 0.000479221344, -0.334056377, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( 0.000478625298, 0.258688211, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
		RightKnee = {
			C0 = CFrame.new( 0, -0.400946498, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( 0, 0.379174292, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
		LeftKnee = {
			C0 = CFrame.new( 0, -0.401102424, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( 0, 0.379018486, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
		RightShoulder = {
			C0 = CFrame.new( 0.99999994, 0.56301713, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( -0.500000715, 0.394326687, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
		LeftShoulder = {
			C0 = CFrame.new( -1, 0.56301713, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( 0.500000358, 0.394326687, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
		RightHip = {
			C0 = CFrame.new( 0.499999881, -0.199972257, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( 0, 0.420782268, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
		LeftHip = {
			C0 = CFrame.new( -0.500000119, -0.199972257, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( 0, 0.420782208, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
		Root = {
			C0 = CFrame.new( 0, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( 0, -0.199972257, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
		Waist = {
			C0 = CFrame.new( 0, 0.200024918, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( 0, -0.799985707, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
		Neck = {
			C0 = CFrame.new( 0, 0.800017118, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1 ),
			C1 = CFrame.new( 0, -0.500000119, -0.000272244215, 1, 0, 0, 0, 1, 0, 0, 0, 1 )
		},
	}
} :: R15Definition

local new_attachments
local new_hitboxes
local old_hitboxes

local function GetHitboxes(character: Model): R15Hitboxes
	local ret = {}
	for _, name in PartNames do
		local part = character[name]
		ret[name] = {Size = part.Size, Orientation = part.CFrame}
	end
	ret.HumanoidRootPart = {Size = character.HumanoidRootPart.Size, Orientation = character.HumanoidRootPart.CFrame}

	return ret
end

local function GetOffset(attachment: RiggingAttachment, part: Part | MeshPart): Vector3
	if attachment.Part0 == part then
		return attachment.C0
	elseif attachment.Part1 == part then
		return attachment.C1
	else
		error("part not element of attachment")
	end
end

local function MakeAccessory(part: MeshPart, scale: Vector3, offset: CFrame): MeshPart
	local name = part.Name
	local character = part.Parent
	part.Archivable = true
	local oldSize = part.Size
	part.Size = scale
	if(part:FindFirstChild("OriginalSize")) then
		part.OriginalSize.Value = part.Size
	end

	local rigAtt = MotorMappings[name]
	local motor = part[rigAtt] :: Motor6D
	local origOrientation = motor.CurrentAngle
	local newOffset = CFrame.new(character[name].CFrame.Position - new_hitboxes[name].Orientation.Position)
	local motor = part[rigAtt] :: Motor6D

	local origOrientation = motor.CurrentAngle
	motor.C0 = motor.C0 * offset:Inverse() * newOffset:Inverse()
	motor.CurrentAngle = origOrientation

	--local rigAtt = MotorMappings[name]
	--local rigAttName = rigAtt .. "RigAttachment"
	--local rigAttachment = part[rigAttName]
	--local val = new_hitboxes[name]
	--local newOffset = CFrame.new(character[name].CFrame.Position - new_hitboxes[name].Orientation.Position)
	--local origOrientation = rigAttachment.Orientation
	--rigAttachment.CFrame = rigAttachment.CFrame*offset*newOffset
	--rigAttachment.Orientation = origOrientation
	--if(rigAttachment:FindFirstChild("OriginalPosition")) then
	--	rigAttachment.OriginalPosition.Value = rigAttachment.Position
	--end
	--character.Humanoid:BuildRigFromAttachments()
end


local function MakeVisualUpperTorso(upper_torso: MeshPart, relative_attachments: R15RelativeAttachments, old_hitboxes: R15Hitboxes, new_hitboxes: R15Hitboxes, target_rig: R15Definition) : Vector3
	local left = GetOffset(relative_attachments.LeftUpperArm, upper_torso)
	local right = GetOffset(relative_attachments.RightUpperArm, upper_torso)
	local top = GetOffset(relative_attachments.Head, upper_torso)
	local bottom = GetOffset(relative_attachments.UpperTorso, upper_torso)

	local relative_x = (target_rig.Rigging.RightShoulder.C0.X - target_rig.Rigging.LeftShoulder.C0.X) / (right.X - left.X) / target_rig.Sizes.UpperTorso.X
	--clamp height so characters can't get too tall
	local relative_y = math.clamp((target_rig.Rigging.Neck.C0.Y - target_rig.Rigging.Waist.C1.Y) / (top.Y - bottom.Y) / target_rig.Sizes.UpperTorso.Y, 0, 3)
	local relative_z = old_hitboxes.UpperTorso.Size.Z / new_hitboxes.UpperTorso.Size.Z
	local relative_scaling = Vector3.new(relative_x, relative_y, relative_z)

	local offset = top * relative_scaling * new_hitboxes.UpperTorso.Size

	local neck_height = new_hitboxes.UpperTorso.Size.Y / 2
	local neck_diff = new_hitboxes.UpperTorso.Size.Y * top.Y * relative_scaling.Y
	local neck_delta = neck_diff - neck_height

	local newPos = upper_torso.Position
	local origPos = old_hitboxes["UpperTorso"].Orientation.Position

	--MakeAccessory(upper_torso, new_hitboxes.UpperTorso.Size * relative_scaling, CFrame.new(newPos-origPos))
	MakeAccessory(upper_torso, new_hitboxes.UpperTorso.Size * relative_scaling, CFrame.new(offset.X, neck_delta, offset.Z))

	return Vector3.new(0, neck_delta, offset.Z)
end

local function MakeVisualLowerTorso(lower_torso: MeshPart, relative_attachments: R15RelativeAttachments, old_hitboxes: R15Hitboxes, new_hitboxes: R15Hitboxes, target_rig: R15Definition)
	local lower_top = GetOffset(relative_attachments.UpperTorso, lower_torso)
	local lower_botttom = GetOffset(relative_attachments.LeftUpperLeg, lower_torso)
	local lower_left = GetOffset(relative_attachments.LeftUpperLeg, lower_torso)
	local lower_right = GetOffset(relative_attachments.RightUpperLeg, lower_torso)
	local waist_joint = GetOffset(relative_attachments.UpperTorso, lower_torso)

	local relative_x = (target_rig.Rigging.RightHip.C0.Position.X - target_rig.Rigging.LeftHip.C0.Position.X) / (lower_right.X - lower_left.X) / target_rig.Sizes.LowerTorso.X
	local relative_y = (target_rig.Rigging.Waist.C0.Position.Y - target_rig.Rigging.LeftHip.C0.Position.Y) / (lower_top.Y - lower_botttom.Y) / target_rig.Sizes.LowerTorso.Y
	local relative_z = old_hitboxes.LowerTorso.Size.Z / new_hitboxes.LowerTorso.Size.Z
	local relative_scaling = Vector3.new(relative_x, relative_y, relative_z)

	local offset = waist_joint * relative_scaling * new_hitboxes.LowerTorso.Size

	local waist_height = new_hitboxes.LowerTorso.Size.Y / 2
	local waist_diff = new_hitboxes.LowerTorso.Size.Y * lower_top.Y * relative_scaling.Y
	local waist_delta = waist_diff - waist_height
	--local newOffset = CFrame.new(new_hitboxes["LowerTorso"].Orientation.Position - lower_torso.Position)
	MakeAccessory(lower_torso, new_hitboxes.LowerTorso.Size * relative_scaling, CFrame.new(offset.X, waist_delta, offset.Z))
end

--returns offset of visual torso from real hitbox
local function MakeVisualTorso(character: Model, relative_attachments: R15RelativeAttachments, old_hitboxes: R15Hitboxes, new_hitboxes: R15Hitboxes, target_rig: R15Definition): Vector3
	local torso_offset = MakeVisualUpperTorso(character.UpperTorso, relative_attachments, old_hitboxes, new_hitboxes, target_rig)
	MakeVisualLowerTorso(character.LowerTorso, relative_attachments, old_hitboxes, new_hitboxes, target_rig)
	return torso_offset
end

local function MakeVisualArm(character: Model, relative_attachments: R15RelativeAttachments, old_hitboxes: R15Hitboxes, new_hitboxes: R15Hitboxes, torso_offset: Vector3, side: "Left" | "Right")
	local right_upper_arm = character[side.."UpperArm"]
	local right_lower_arm = character[side.."LowerArm"]
	local right_hand = character[side.."Hand"]
	local attachment = relative_attachments[side.."UpperArm"]
	local torso = character.UpperTorso

	local old_upper = old_hitboxes[side.."UpperArm"]
	local old_lower = old_hitboxes[side.."LowerArm"]
	local old_hand = old_hitboxes[side.."Hand"]
	local new_upper = new_hitboxes[side.."UpperArm"]
	local new_lower = new_hitboxes[side.."LowerArm"]
	local new_hand = new_hitboxes[side.."Hand"]

	local arm_top = old_upper.Orientation.Y + old_upper.Size.Y / 2
	local arm_bottom = old_hand.Orientation.Y - old_hand.Size.Y / 2
	local arm_height = arm_top - arm_bottom

	local target_height = (new_upper.Orientation.Y + new_upper.Size.Y / 2) - (new_hand.Orientation.Y - new_hand.Size.Y / 2)
	local scale = target_height / arm_height

	local shoulder = GetOffset(attachment, right_upper_arm)
	local torso_shoulder = GetOffset(attachment, torso)
	local shoulder_z_diff = torso_shoulder.Z * old_hitboxes.UpperTorso.Size.Z
	local arm_edge = new_upper.Size.X / 2
	local joint_pos = shoulder.X * old_upper.Size.X
	local shoulder_x_diff 

	if side == "Left" then 
		shoulder_x_diff = joint_pos - arm_edge 
	else 
		shoulder_x_diff = joint_pos + arm_edge 
	end

	local shoulder_diff = Vector3.new(shoulder_x_diff, 0, torso_offset.Z-shoulder_z_diff)

	local old_elbow = old_upper.Orientation.Position - old_lower.Orientation.Position
	local new_elbow = new_upper.Orientation.Position - new_lower.Orientation.Position
	local elbow_diff = old_elbow - new_elbow

	local old_wrist = old_lower.Orientation.Position - old_hand.Orientation.Position
	local new_wrist = new_lower.Orientation.Position - new_hand.Orientation.Position
	local wrist_diff = old_wrist - new_wrist

	local lower_offset = Vector3.new(0, old_upper.Orientation.Y - old_lower.Orientation.Y, 0)
	local hand_offset = Vector3.new(0, old_lower.Orientation.Y - old_hand.Orientation.Y, 0)

	--scale the arm only on the y axis, keeping the relative positions of the joints the same
	--local newOffset = CFrame.new(new_hitboxes[side .. "UpperArm"].Orientation.Position - character[side .. "UpperArm"].Position)
	MakeAccessory(right_upper_arm, old_upper.Size * Vector3.new(1,scale,1), CFrame.new(shoulder_diff))
	--newOffset =  CFrame.new(new_hitboxes[side .. "LowerArm"].Orientation.Position - character[side .. "LowerArm"].Position)
	MakeAccessory(right_lower_arm, old_lower.Size * Vector3.new(1,scale,1), CFrame.new((shoulder_diff + elbow_diff) - lower_offset * (1 - scale)))
	--newOffset = CFrame.new(new_hitboxes[side .. "Hand"].Orientation.Position - character[side .. "Hand"].Position)
	MakeAccessory(right_hand, old_hand.Size * Vector3.new(1,scale,1), CFrame.new((shoulder_diff + elbow_diff + wrist_diff) - (hand_offset + lower_offset) * (1 - scale)))
end

local function MakeVisualArms(character: Model, relative_attachments: R15RelativeAttachments, old_hitboxes: R15Hitboxes, new_hitboxes: R15Hitboxes, torso_offset: Vector3)
	MakeVisualArm(character, relative_attachments, old_hitboxes, new_hitboxes, torso_offset, "Left")
	MakeVisualArm(character, relative_attachments, old_hitboxes, new_hitboxes, torso_offset, "Right")
end

local function MakeVisualLeg(character: Model, old_hitboxes: R15Hitboxes, new_hitboxes: R15Hitboxes, side: "Left" | "Right")
	local upper_leg = character[side.."UpperLeg"]
	local lower_leg = character[side.."LowerLeg"]
	local foot = character[side.."Foot"]

	local old_upper = old_hitboxes[side.."UpperLeg"]
	local old_lower = old_hitboxes[side.."LowerLeg"]
	local old_foot = old_hitboxes[side.."Foot"]
	local new_upper = new_hitboxes[side.."UpperLeg"]
	local new_lower = new_hitboxes[side.."LowerLeg"]
	local new_foot = new_hitboxes[side.."Foot"]

	local leg_top = old_upper.Orientation.Y + old_upper.Size.Y / 2
	local leg_bottom = old_foot.Orientation.Y - old_foot.Size.Y / 2
	local leg_height = leg_top - leg_bottom
	local target_height = (new_upper.Orientation.Y + new_upper.Size.Y / 2) - (new_foot.Orientation.Y - new_foot.Size.Y / 2)
	local scale = target_height / leg_height


	local old_knee = old_upper.Orientation.Position - old_lower.Orientation.Position
	local new_knee = new_upper.Orientation.Position - new_lower.Orientation.Position
	local knee_diff = old_knee - new_knee

	local old_ankle = old_lower.Orientation.Position - old_foot.Orientation.Position
	local new_ankle = new_lower.Orientation.Position - new_foot.Orientation.Position
	local ankle_diff = old_ankle - new_ankle

	local lower_offset = Vector3.new(0,old_upper.Orientation.Y - old_lower.Orientation.Y,0)
	local foot_offset = Vector3.new(0,old_lower.Orientation.Y - old_foot.Orientation.Y, 0)
	local newOffset = CFrame.new() -- CFrame.new(new_hitboxes[side .. "UpperLeg"].Orientation.Position - character[side .. "UpperLeg"].Position)
	MakeAccessory(upper_leg, old_upper.Size * Vector3.new(1,scale,1), CFrame.new(newOffset.Position))
	--newOffset = CFrame.new(new_hitboxes[side .. "LowerLeg"].Orientation.Position - character[side .. "LowerLeg"].Position)
	MakeAccessory(lower_leg, old_lower.Size * Vector3.new(1,scale,1), CFrame.new(newOffset.Position + knee_diff - lower_offset * (1 - scale)))
	--newOffset = CFrame.new(new_hitboxes[side .. "Foot"].Orientation.Position - character[side .. "Foot"].Position)
	MakeAccessory(foot, old_foot.Size * Vector3.new(1,scale,1), CFrame.new(newOffset.Position + knee_diff + ankle_diff - (foot_offset + lower_offset) * (1 - scale)))
end

local function MakeVisualLegs(character: Model, old_hitboxes: R15Hitboxes, new_hitboxes: R15Hitboxes)
	MakeVisualLeg(character, old_hitboxes, new_hitboxes, "Left")
	MakeVisualLeg(character, old_hitboxes, new_hitboxes, "Right")
end

local function MakeVisualHead(character: Model, relative_attachments: R15RelativeAttachments, old_hitboxes: R15Hitboxes, new_hitboxes: R15Hitboxes, target: R15Definition, torso_offset: Vector3)
	local head = character.Head
	local upper_torso = character.UpperTorso
	local vis_torso = head.Parent:FindFirstChild("UpperTorso") :: MeshPart

	local neck_head_attachment = GetOffset(relative_attachments.Head, head)
	local neck_torso_attachment = GetOffset(relative_attachments.Head, upper_torso)

	local neck_diff = neck_head_attachment * old_hitboxes.Head.Size - neck_head_attachment * new_hitboxes.Head.Size
	local z_offset = neck_head_attachment.Z * old_hitboxes.Head.Size.Z - neck_torso_attachment.Z * vis_torso.Size.Z

	local newOffset = CFrame.new()
	--local newOffset = CFrame.new(character["Head"].CFrame.Position - new_hitboxes["Head"].Orientation.Position)--CFrame.new(old_hitboxes["Head"].Orientation.Position - character["Head"].Position)
	MakeAccessory(head, old_hitboxes.Head.Size, CFrame.new(neck_diff + Vector3.new(0,0,z_offset) + newOffset.Position))
end

local function MoveAccessories(character: Model, old_hitboxes: R15Hitboxes, new_hitboxes: R15Hitboxes)
	for _, part in character:GetChildren() do
		if part:IsA("Accessory") then
			local handle = part.Handle
			local weld = handle:FindFirstChildOfClass("Weld")

			--wait for welds to load (sometimes takes longer than loading the rest of the character)
			while weld.Part0 == nil or weld.Part1 == nil do
				wait()
			end

			local attachment = handle:FindFirstChildOfClass("Attachment")
			local base_part = character[(if weld.Part0 == handle then weld.Part1 else weld.Part0).Name]
			local base_attachment = base_part[attachment.Name]

			local new_base_part = character[base_part.Name]

			local diff = base_part.Position - new_base_part.Position

			attachment.Position += diff + (base_attachment.Position - base_attachment.Position / old_hitboxes[base_part.Name].Size * new_base_part.Size)
		end
	end
end

local function MoveWrapTargets(character: Model)
	for _, name in PartNames do
		local part = character[name]
		local wrap_target = part[name]
		if wrap_target == nil then
			continue
		end
		local vis_part = character["VIS"..name]
		wrap_target.Parent = vis_part
	end
end

local function GetRelativeRigging(motor: Motor6D, attachment : Attachment): {C0: Vector3, C1: Vector3}
	if motor.Part0 == nil or motor.Part1 == nil then
		error("Missing attachment parts")
	end

	return {
		C0 = motor.C0.Position / motor.Part0.Size, 
		C1 = motor.C1.Position / motor.Part1.Size, 
		Part0 = motor.Part0, 
		Part1 = motor.Part1,
		CFrame = attachment.WorldCFrame
	}
end

local function GetRelativeAttachments(character: Model): R15RelativeAttachments
	local ret = {}
	for _, name in PartNames do
		local part = character[name] :: MeshPart

		if(MotorMappings[name] ~= nil) then
			local motor = part:WaitForChild(MotorMappings[name]) :: Motor6D
			local attachment = part:WaitForChild(MotorMappings[name] .. "RigAttachment") :: Attachment
			--part:FindFirstChild(MotorMappings[name] .. "RigAttachment")
			ret[name] = GetRelativeRigging(motor, attachment)
		end
	end

	return ret
end

local function RetargetHitboxes(character: Model, target_rig: R15Definition)
	character.HumanoidRootPart.Size = target_rig.Sizes.HumanoidRootPart
	for _, name in PartNames do
		local part = character[name] :: MeshPart

		if(MotorMappings[name] ~= nil) then
			local attachment_name = MotorMappings[name] .. "RigAttachment"
			local motor = part:WaitForChild(MotorMappings[name]) :: Motor6D
			local a0 = motor.Part0[attachment_name]
			local a1 = motor.Part1[attachment_name]

			a0.Position = target_rig.Rigging[motor.Name].C0.Position
			a1.Position = target_rig.Rigging[motor.Name].C1.Position

			if(a0:FindFirstChild("OriginalPosition")) then
				a0["OriginalPosition"]:remove()
			end
			if(a1:FindFirstChild("OriginalPosition")) then
				a1["OriginalPosition"]:remove()
			end
		end

		part.Size = target_rig.Sizes[name]
		if(part:FindFirstChild("OriginalSize")) then
			part.OriginalSize.Value = target_rig.Sizes[name]
		end
	end

	character.Humanoid:BuildRigFromAttachments()
end

local function MakeVisualParts(character: Model, relative_attachments: R15RelativeAttachments, old_hitbox: R15Hitboxes, new_hitbox: R15Hitboxes, target_rig: R15Definition)
	local torso_offset = MakeVisualTorso(character, relative_attachments, old_hitbox, new_hitbox, target_rig)
	MakeVisualArms(character, relative_attachments, old_hitbox, new_hitbox, torso_offset)
	MakeVisualHead(character, relative_attachments, old_hitbox, new_hitbox, target_rig, torso_offset)
	MakeVisualLegs(character, old_hitbox, new_hitbox)
end

local function MakeBasePartsInvisible(character: Model)
	for _, name in PartNames do
		character[name].Transparency = 1
	end
end

local function ResetScaling(humanoid: Humanoid)
	humanoid.AutomaticScalingEnabled = false
	humanoid:WaitForChild("BodyWidthScale"):Destroy()
	humanoid:WaitForChild("BodyDepthScale"):Destroy()
	humanoid:WaitForChild("BodyProportionScale"):Destroy()
	humanoid:WaitForChild("BodyHeightScale"):Destroy()
	humanoid:WaitForChild("HeadScale"):Destroy()
end

local function WaitForParts(character: Model)
	for _, name in PartNames do
		character:WaitForChild(name)
	end
	character:WaitForChild("HumanoidRootPart")
	character:WaitForChild("Humanoid")
end


local function visualizeMotor6Ds(character: Model)
	local referencePart = workspace.referencePart
	for _,v in pairs(character:GetChildren()) do
		if(v:IsA("BasePart")) then
			for _,v2 in pairs(v:GetChildren()) do
				if v2:IsA("Attachment") then
					v2.Visible = true
				end
			end
		end
	end
end


function module.ScaleCharacter(character: Model, target_rig: R15Definition)
	WaitForParts(character)
	local original_orientation = character.PrimaryPart.CFrame
	local humanoid: Humanoid = character.Humanoid :: Humanoid

	ResetScaling(humanoid)

	--set orientation to vertical so vertical position differences are accurate
	character.PrimaryPart.CFrame = CFrame.new()

	old_hitboxes = GetHitboxes(character)
	local relative_attachments = GetRelativeAttachments(character)
	RetargetHitboxes(character, target_rig)
	new_hitboxes = GetHitboxes(character)

	MakeVisualParts(character, relative_attachments, old_hitboxes, new_hitboxes, target_rig)
	--visualizeMotor6Ds(character)
	--MakeBasePartsInvisible(character)
	--MoveDecals(character)
	MoveAccessories(character, old_hitboxes, new_hitboxes)
	--MoveWrapTargets(character)

	humanoid.HipHeight = 2

	character.PrimaryPart.CFrame = original_orientation
end

return module
