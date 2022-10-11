return function()
	local Plugin = script.Parent.Parent.Parent
	local Cryo = require(Plugin.Packages.Cryo)
	local RigUtils = require(script.Parent.RigUtils)
	local Constants = require(script.Parent.Constants)
	local isEmpty = require(script.Parent.isEmpty)
	local deepCopy = require(script.Parent.deepCopy)

	local GetFFlagACESaveRigWithAnimation = require(Plugin.LuaFlags.GetFFlagACESaveRigWithAnimation)

	local testRigAnimationData = {
		Metadata = {
			Name = "Test Rig Animation",
			StartTick = 0,
			EndTick = 0,
			FrameRate = 30,
			Looping = true,
			Priority = Enum.AnimationPriority.Idle,
		},
		Events = {
			NamedKeyframes = {},
			Keyframes = { 0 },
			Data = {
				[0] = {
					TestEvent = "TestValue",
				},
			},
		},
		Instances = {
			Root = {
				Type = "Rig",
				Tracks = {
					["Head"] = {
						Type = Constants.TRACK_TYPES.CFrame,
						Keyframes = { 0 },
						Data = {
							[0] = {
								Value = CFrame.new(0, 1, 0),
								EasingStyle = Enum.PoseEasingStyle.Linear,
								EasingDirection = Enum.PoseEasingDirection.In,
							},
						},
					},
					["UpperTorso"] = {
						Type = Constants.TRACK_TYPES.CFrame,
						Keyframes = { 0 },
						Data = {
							[0] = {
								Value = CFrame.new(1, 0, 0),
								EasingStyle = Enum.PoseEasingStyle.Linear,
								EasingDirection = Enum.PoseEasingDirection.In,
							},
						},
					},
				},
			},
		},
	}

	local function buildTestKeyframeSequence()
		local keyframeSequence = Instance.new("KeyframeSequence")
		local keyframe = Instance.new("Keyframe", keyframeSequence)
		keyframe.Time = 0
		local rootPose = Instance.new("Pose", keyframe)
		rootPose.Name = "HumanoidRootPart"
		rootPose.Weight = 0
		local torsoPose = Instance.new("Pose", rootPose)
		torsoPose.Name = "UpperTorso"
		local headPose = Instance.new("Pose", torsoPose)
		headPose.Name = "Head"
		headPose.CFrame = CFrame.new(1, 0, 0)
		keyframeSequence.Name = "KeyframeSequence"
		keyframeSequence.Loop = false
		keyframeSequence.Priority = Enum.AnimationPriority.Idle
		local marker = Instance.new("KeyframeMarker", keyframe)
		marker.Name = "TestEvent"
		marker.Value = "TestValue"
		if GetFFlagACESaveRigWithAnimation() then
			local animationRig = Instance.new("AnimationRigData", keyframeSequence)
			animationRig.Name = "KFSAnimationRig"
		end
		return keyframeSequence
	end

	local function buildTestCurveAnimation()
		local function insertKey(curve, time, value, interpolation, leftTangent, rightTangent)
			local key = FloatCurveKey.new(time, value, interpolation)
			if rightTangent then
				key.RightTangent = rightTangent
			end
			if leftTangent then
				key.LeftTangent = leftTangent
			end
			curve:InsertKey(key)
		end

		local curveAnimation = Instance.new("CurveAnimation")
		curveAnimation.Name = "CurveAnimation"
		curveAnimation.Priority = Enum.AnimationPriority.Idle
		curveAnimation.Loop = true

		local hrp = Instance.new("Folder", curveAnimation)
		hrp.Name = "HumanoidRootPart"

		local ut = Instance.new("Folder", hrp)
		ut.Name = "UpperTorso"
		local utr = Instance.new("EulerRotationCurve", ut)
		utr.Name = "Rotation"
		utr.RotationOrder = Enum.RotationOrder.XYZ
		insertKey(utr:X(), 0, 1.5, Enum.KeyInterpolationMode.Constant)

		local h = Instance.new("Folder", ut)
		h.Name = "Head"
		local hp = Instance.new("Vector3Curve", h)
		hp.Name = "Position"
		insertKey(hp:X(), 0, 1, Enum.KeyInterpolationMode.Constant)
		insertKey(hp:X(), 0.5, 2, Enum.KeyInterpolationMode.Linear)
		insertKey(hp:X(), 1, 3, Enum.KeyInterpolationMode.Cubic)
		insertKey(hp:Y(), 0, 0, Enum.KeyInterpolationMode.Cubic, nil, 1)
		insertKey(hp:Y(), 1, 1, Enum.KeyInterpolationMode.Cubic, 0, nil)

		local fcf = Instance.new("Folder", h)
		fcf.Name = Constants.FACE_CONTROLS_FOLDER
		local f = Instance.new("FloatCurve", fcf)
		f.Name = "Corrugator"
		insertKey(f, 0, 0.123, Enum.KeyInterpolationMode.Cubic)
		insertKey(f, 1, 0.456, Enum.KeyInterpolationMode.Cubic)
		insertKey(f, 2, 0.789, Enum.KeyInterpolationMode.Cubic)

		local mf = Instance.new("MarkerCurve", curveAnimation)
		mf.Name = "FooEvent"
		mf:InsertMarkerAtTime(0, "FooValue1")
		mf:InsertMarkerAtTime(0.5, "FooValue2")
		local mb = Instance.new("MarkerCurve", curveAnimation)
		mb.Name = "BarEvent"
		mb:InsertMarkerAtTime(0, "BarValue")

		if GetFFlagACESaveRigWithAnimation() then
			local animationRig = Instance.new("AnimationRigData", curveAnimation)
			animationRig.Name = "CurveAnimationRig"
		end

		return curveAnimation
	end

	-- A KeyframeSequence with a frame set at a weird time.
	local function buildTestBadKeyframeSequence()
		local keyframeSequence = Instance.new("KeyframeSequence")
		local keyframe = Instance.new("Keyframe", keyframeSequence)
		keyframe.Time = 0.00001
		local pose = Instance.new("Pose", keyframe)
		pose.Name = "UpperTorso"
		keyframeSequence.Name = "KeyframeSequence"
		keyframeSequence.Loop = false
		keyframeSequence.Priority = Enum.AnimationPriority.Idle
		return keyframeSequence
	end

	local testCurveAnimationData = {
		Metadata = {
			Name = "Test Curve Animation",
			StartTick = 0,
			EndTick = 2400,
			Looping = true,
			Priority = Enum.AnimationPriority.Idle,
		},
		Events = {
			Keyframes = { 0, 1200 },
			Data = {
				[0] = {
					FooEvent = "FooValue1",
					BarEvent = "BarValue",
				},
				[1200] = {
					FooEvent = "FooValue2",
				},
			},
		},
		Instances = {
			Root = {
				Type = "Rig",
				Tracks = {
					["Head"] = {
						Type = Constants.TRACK_TYPES.CFrame,
						Components = {
							Position = {
								Type = Constants.TRACK_TYPES.Position,
								Components = {
									X = {
										Type = Constants.TRACK_TYPES.Number,
										Keyframes = { 0, 1200, 2400 },
										Data = {
											[0] = {
												Value = 1,
												InterpolationMode = Enum.KeyInterpolationMode.Constant,
											},
											[1200] = {
												Value = 2,
												InterpolationMode = Enum.KeyInterpolationMode.Linear,
											},
											[2400] = {
												Value = 3,
											},
										},
									},
									Y = {
										Type = Constants.TRACK_TYPES.Number,
										Keyframes = { 0, 2400 },
										Data = {
											[0] = {
												Value = 0,
												InterpolationMode = Enum.KeyInterpolationMode.Cubic,
												RightSlope = 1 / 2400,
											},
											[2400] = {
												Value = 1,
												LeftSlope = 0,
											},
										},
									},
								},
							},
						},
					},
					["UpperTorso"] = {
						Type = Constants.TRACK_TYPES.CFrame,
						Components = {
							Rotation = {
								Type = Constants.TRACK_TYPES.EulerAngles,
								EulerAnglesOrder = Enum.RotationOrder.XYZ,
								Components = {
									X = {
										Type = Constants.TRACK_TYPES.Angle,
										Keyframes = { 0 },
										Data = {
											[0] = {
												Value = 1.5,
												InterpolationMode = Enum.KeyInterpolationMode.Constant,
											},
										},
									},
								},
							},
						},
					},
					["FACS"] = {
						Type = Constants.TRACK_TYPES.Facs,
						Keyframes = { 0, 1200 },
						Data = {
							[0] = {
								Value = 50,
								InterpolationMode = Enum.KeyInterpolationMode.Cubic,
							},
							[1200] = {
								Value = 75,
							},
						},
					},
				},
			},
		},
	}

	local function buildTestRig()
		local model = Instance.new("Model")
		local root = Instance.new("Part", model)
		root.Name = "HumanoidRootPart"
		local torso = Instance.new("Part", model)
		torso.Name = "UpperTorso"
		local head = Instance.new("Part", model)
		head.Name = "Head"
		local torsoJoint = Instance.new("Motor6D", torso)
		torsoJoint.Part0 = root
		torsoJoint.Part1 = torso
		local headJoint = Instance.new("Motor6D", head)
		headJoint.Part0 = torso
		headJoint.Part1 = head

		local rootToUpperTorsoAttach = Instance.new("Attachment", root)
		rootToUpperTorsoAttach.Name = "RootAttachment"

		local upperTorsoToRootAttach = Instance.new("Attachment", torso)
		upperTorsoToRootAttach.Name = "RootAttachment"

		local upperTorsoToHeadAttach = Instance.new("Attachment", torso)
		upperTorsoToHeadAttach.Name = "NeckAttachment"

		local headToUpperTorsoAttach = Instance.new("Attachment", head)
		headToUpperTorsoAttach.Name = "NeckAttachment"

		local constraint = Instance.new("BallSocketConstraint", model)
		constraint.Enabled = false
		constraint.Attachment0 = upperTorsoToHeadAttach
		constraint.Attachment1 = headToUpperTorsoAttach

		Instance.new("AnimationController", model)
		local bone = Instance.new("Bone", head)
		bone.Name = "Jaw"

		return model
	end

	describe("buildRigHierarchy", function()
		it("should build a rig hierarchy table", function()
			local testRig = buildTestRig()
			local hierarchy = RigUtils.buildRigHierarchy(testRig)

			expect(hierarchy).to.be.ok()
			expect(hierarchy.HumanoidRootPart).to.be.ok()
			expect(hierarchy.HumanoidRootPart.UpperTorso).to.be.ok()
			expect(hierarchy.HumanoidRootPart.UpperTorso.Head).to.be.ok()
		end)
	end)

	describe("getUnusedRigTracks", function()
		it("should return a list of tracks which are unused", function()
			local testRig = buildTestRig()
			local tracks = { { Name = "HumanoidRootPart" } }
			local unused = RigUtils.getUnusedRigTracks(testRig, tracks)

			expect(unused).to.be.ok()
			expect(#unused).to.equal(3)
			expect(unused[1].Name).to.equal("Head")
			expect(unused[2].Name).to.equal("Jaw")
			expect(unused[3].Name).to.equal("UpperTorso")
		end)
	end)

	describe("fromRigAnimation", function()
		it("should create a new AnimationData", function()
			local keyframeSequence = buildTestKeyframeSequence()
			local animationData = RigUtils.fromRigAnimation(keyframeSequence)

			expect(animationData).to.be.ok()
			expect(animationData.Instances).to.be.ok()
			expect(animationData.Instances.Root).to.be.ok()
			expect(animationData.Instances.Root.Tracks).to.be.ok()
			local tracks = animationData.Instances.Root.Tracks
			expect(tracks.Head).to.be.ok()
			expect(tracks.Head.Keyframes).to.be.ok()
			expect(tracks.Head.Data).to.be.ok()
			expect(tracks.UpperTorso).to.be.ok()
			expect(tracks.UpperTorso.Keyframes).to.be.ok()
			expect(tracks.UpperTorso.Data).to.be.ok()
		end)

		it("should ignore tracks with 0 weight", function()
			local keyframeSequence = buildTestKeyframeSequence()
			local animationData = RigUtils.fromRigAnimation(keyframeSequence)
			local tracks = animationData.Instances.Root.Tracks
			expect(tracks.HumanoidRootPart).never.to.be.ok()
		end)

		it("should set the correct values", function()
			local keyframeSequence = buildTestKeyframeSequence()
			local animationData = RigUtils.fromRigAnimation(keyframeSequence)
			local tracks = animationData.Instances.Root.Tracks
			expect(#tracks.Head.Keyframes).to.equal(1)
			expect(#tracks.UpperTorso.Keyframes).to.equal(1)
			expect(tracks.Head.Data[0]).to.be.ok()
			expect(tracks.UpperTorso.Data[0]).to.be.ok()
			expect(tracks.Head.Data[0].Value).to.equal(CFrame.new(1, 0, 0))
			expect(tracks.UpperTorso.Data[0].Value).to.equal(CFrame.new())
		end)

		it("should set the metadata", function()
			local keyframeSequence = buildTestKeyframeSequence()
			local animationData = RigUtils.fromRigAnimation(keyframeSequence)
			local metadata = animationData.Metadata
			expect(metadata).to.be.ok()
			expect(metadata.Name).to.equal("KeyframeSequence")
			expect(metadata.Looping).to.equal(false)
			expect(metadata.Priority).to.equal(Enum.AnimationPriority.Idle)
			if GetFFlagACESaveRigWithAnimation() then
				expect(metadata.AnimationRig).to.be.ok()
				expect(metadata.AnimationRig.Name).to.equal("KFSAnimationRig")
			end
		end)

		it("should snap keyframes to the nearest frame within an epsilon tolerance", function()
			local keyframeSequence = buildTestBadKeyframeSequence()
			local animationData = RigUtils.fromRigAnimation(keyframeSequence, 0.1)
			local tracks = animationData.Instances.Root.Tracks
			expect(#tracks.UpperTorso.Keyframes).to.equal(1)
			expect(tracks.UpperTorso.Keyframes[1]).to.equal(0)
		end)

		it("should create an event for every KeyframeMarker", function()
			local keyframeSequence = buildTestKeyframeSequence()
			local animationData = RigUtils.fromRigAnimation(keyframeSequence)
			expect(#animationData.Events.Keyframes).to.equal(1)
			expect(animationData.Events.Data[0]).to.be.ok()
			expect(animationData.Events.Data[0].TestEvent).to.be.ok()
			expect(animationData.Events.Data[0].TestEvent).to.equal("TestValue")
		end)

		it("should throw if the expected KeyframeSequence is not correct", function()
			expect(function()
				RigUtils.fromRigAnimation(nil)
			end).to.throw()

			expect(function()
				RigUtils.fromRigAnimation({})
			end).to.throw()

			expect(function()
				RigUtils.fromRigAnimation(Instance.new("Folder"))
			end).to.throw()
		end)

		it("should not set a keyframe's name if it was the default name", function()
			local keyframeSequence = buildTestKeyframeSequence()
			local animationData = RigUtils.fromRigAnimation(keyframeSequence)
			local namedKeyframes = animationData.Events.NamedKeyframes
			expect(isEmpty(namedKeyframes)).to.equal(true)
		end)

		it("should import keyframe names", function()
			local keyframeSequence = buildTestKeyframeSequence()
			keyframeSequence.Keyframe.Name = "TestName"
			local animationData = RigUtils.fromRigAnimation(keyframeSequence)
			local namedKeyframes = animationData.Events.NamedKeyframes
			expect(namedKeyframes[0]).to.equal("TestName")
		end)
	end)

	describe("toRigAnimation", function()
		it("should create a new KeyframeSequence", function()
			local rig = buildTestRig()
			local keyframeSequence = RigUtils.toRigAnimation(testRigAnimationData, rig)
			expect(keyframeSequence).to.be.ok()
			expect(typeof(keyframeSequence)).to.equal("Instance")
			expect(keyframeSequence.ClassName).to.equal("KeyframeSequence")
			expect(#keyframeSequence:GetChildren()).to.equal(1)
			expect(#keyframeSequence:GetKeyframes()).to.equal(1)
			local animationRig = Instance.new("AnimationRigData", keyframeSequence)
			expect(#keyframeSequence:GetChildren()).to.equal(2)
			expect(#keyframeSequence:GetKeyframes()).to.equal(1)
		end)

		it("should set the correct values", function()
			local rig = buildTestRig()
			local keyframeSequence = RigUtils.toRigAnimation(testRigAnimationData, rig)
			expect(keyframeSequence.Keyframe.Time).to.equal(0)
			local root = keyframeSequence.Keyframe:FindFirstChild("HumanoidRootPart")
			expect(root).to.be.ok()
			expect(root.Weight).to.equal(0)
			expect(root:FindFirstChild("UpperTorso")).to.be.ok()
			expect(root.UpperTorso.Weight).to.equal(1)
			expect(root.UpperTorso.CFrame).to.equal(CFrame.new(1, 0, 0))
			expect(root.UpperTorso:FindFirstChild("Head")).to.be.ok()
			expect(root.UpperTorso.Head.Weight).to.equal(1)
			expect(root.UpperTorso.Head.CFrame).to.equal(CFrame.new(0, 1, 0))
		end)

		it("should set the metadata", function()
			local rig = buildTestRig()
			local keyframeSequence = RigUtils.toRigAnimation(testRigAnimationData, rig)
			expect(keyframeSequence.Loop).to.equal(true)
			expect(keyframeSequence.Priority).to.equal(Enum.AnimationPriority.Idle)
			expect(keyframeSequence.Name).to.equal("Test Rig Animation")
		end)

		it("should add KeyframeMarkers for events", function()
			local rig = buildTestRig()
			local keyframeSequence = RigUtils.toRigAnimation(testRigAnimationData, rig)
			local marker = keyframeSequence.Keyframe:FindFirstChildOfClass("KeyframeMarker")
			expect(marker).to.be.ok()
			expect(marker.Name).to.equal("TestEvent")
			expect(marker.Value).to.equal("TestValue")
		end)

		it("should set keyframe names", function()
			local rig = buildTestRig()
			local testData = deepCopy(testRigAnimationData)
			testData.Events.NamedKeyframes[0] = "TestName"
			local keyframeSequence = RigUtils.toRigAnimation(testData, rig)
			local keyframe = keyframeSequence:FindFirstChild("TestName")
			expect(keyframe).to.be.ok()
		end)

		it("should import keyframe names", function()
			local keyframeSequence = buildTestKeyframeSequence()
			keyframeSequence.Keyframe.Name = "TestName"
			local animationData = RigUtils.fromRigAnimation(keyframeSequence)
			local namedKeyframes = animationData.Events.NamedKeyframes
			expect(namedKeyframes[0]).to.equal("TestName")
		end)

		it("should throw if the expected AnimationData is not correct", function()
			local rig = buildTestRig()
			expect(function()
				RigUtils.toRigAnimation(nil, rig)
			end).to.throw()

			expect(function()
				RigUtils.toRigAnimation("String", rig)
			end).to.throw()
		end)

		it("should throw if no rig was provided", function()
			expect(function()
				RigUtils.toRigAnimation(testRigAnimationData)
			end).to.throw()
		end)
	end)

	describe("toCurveAnimation", function()
		it("should create a new CurveAnimation", function()
			local rig = buildTestRig()
			local curveAnimation = RigUtils.toCurveAnimation(testCurveAnimationData, rig)
			expect(curveAnimation).to.be.ok()
			expect(typeof(curveAnimation)).to.equal("Instance")
			expect(curveAnimation.ClassName).to.equal("CurveAnimation")
		end)

		it("should set the correct values", function()
			local rig = buildTestRig()
			local curveAnimation = RigUtils.toCurveAnimation(testCurveAnimationData, rig)
			local root = curveAnimation:FindFirstChild("HumanoidRootPart")
			expect(root).to.be.ok()
			expect(root.UpperTorso).to.be.ok()
			expect(root.UpperTorso:FindFirstChild("Position")).never.to.be.ok()

			expect(root.UpperTorso.Rotation).to.be.ok()
			local rx = root.UpperTorso.Rotation:X()
			expect(rx).to.be.ok()
			expect(rx.Length).to.equal(1)
			expect(rx:GetKeyAtIndex(1).Value).to.equal(1.5)
			expect(rx:GetKeyAtIndex(1).Interpolation).to.equal(Enum.KeyInterpolationMode.Constant)

			expect(root.UpperTorso.Head).to.be.ok()
			expect(root.UpperTorso.Head.Position).to.be.ok()
			local px = root.UpperTorso.Head.Position:X()
			expect(px).to.be.ok()
			expect(px.Length).to.equal(3)
			expect(px:GetKeyAtIndex(2).Interpolation).to.equal(Enum.KeyInterpolationMode.Linear)
			expect(px:GetKeyAtIndex(3).Value).to.equal(3)
			expect(root.UpperTorso.Head:FindFirstChild("Rotation")).never.to.be.ok()
		end)

		it("should set the metadata", function()
			local rig = buildTestRig()
			local curveAnimation = RigUtils.toCurveAnimation(testCurveAnimationData, rig)
			expect(curveAnimation.Loop).to.equal(true)
			expect(curveAnimation.Priority).to.equal(Enum.AnimationPriority.Idle)
			expect(curveAnimation.Name).to.equal("Test Curve Animation")
		end)

		it("should add MarkerCurves for events", function()
			local rig = buildTestRig()
			local curveAnimation = RigUtils.toCurveAnimation(testCurveAnimationData, rig)
			local foo = curveAnimation:FindFirstChild("FooEvent")
			expect(foo).to.be.ok()
			local markers = foo:GetMarkers()
			expect(#markers).to.equal(2)
			expect(markers[1].Value).to.equal("FooValue1")
			expect(markers[1].Time).to.equal(0)
			expect(markers[2].Value).to.equal("FooValue2")
			expect(markers[2].Time).to.equal(0.5)
		end)

		it("should throw if the expected AnimationData is not correct", function()
			local rig = buildTestRig()
			expect(function()
				RigUtils.toCurveAnimation(nil, rig)
			end).to.throw()

			expect(function()
				RigUtils.toCurveAnimation("String", rig)
			end).to.throw()
		end)

		it("should throw if no rig was provided", function()
			expect(function()
				RigUtils.toCurveAnimation(testCurveAnimationData)
			end).to.throw()
		end)
	end)

	describe("fromCurveAnimation", function()
		it("should read a curveAnimation", function()
			local curveAnimation = buildTestCurveAnimation()
			local animationData = RigUtils.fromCurveAnimation(curveAnimation)
			expect(animationData).to.be.ok()
		end)

		it("should read the curves", function()
			local curveAnimation = buildTestCurveAnimation()
			local animationData = RigUtils.fromCurveAnimation(curveAnimation)
			local ut = animationData.Instances.Root.Tracks.UpperTorso
			expect(ut).to.be.ok()
			expect(ut.IsCurveTrack).to.equal(true)
			expect(ut.Type).to.equal(Constants.TRACK_TYPES.CFrame)
			expect(ut.Components).to.be.ok()

			local utr = ut.Components[Constants.PROPERTY_KEYS.Rotation]
			expect(utr).to.be.ok()
			expect(utr.IsCurveTrack).to.equal(true)
			expect(utr.Type).to.equal(Constants.TRACK_TYPES.EulerAngles)
			expect(utr.Components).to.be.ok()

			local utrx = utr.Components[Constants.PROPERTY_KEYS.X]
			expect(utrx).to.be.ok()
			expect(utrx.IsCurveTrack).to.equal(true)
			expect(utrx.Type).to.equal(Constants.TRACK_TYPES.Angle)
			expect(utrx.Keyframes).to.be.ok()
			expect(#utrx.Keyframes).to.equal(1)
			expect(utrx.Keyframes[1]).to.equal(0)
			expect(utrx.Data).to.be.ok()
			expect(utrx.Data[0].Value).to.equal(1.5)

			expect(animationData.Instances.Root.Tracks.Head).to.be.ok()

			local c = animationData.Instances.Root.Tracks.Corrugator
			expect(c).to.be.ok()
			expect(c.IsCurveTrack).to.equal(true)
			expect(c.Type).to.equal(Constants.TRACK_TYPES.Facs)
			expect(c.Keyframes).to.be.ok()
			expect(#c.Keyframes).to.equal(3)
			expect(c.Keyframes[1]).to.equal(0)
			expect(c.Keyframes[2]).to.equal(2400)
			expect(c.Keyframes[3]).to.equal(4800)
			expect(c.Data).to.be.ok()
			expect(c.Data[0]).to.be.ok()
			expect(math.round(c.Data[0].Value * 1000)).to.equal(123)
			expect(math.round(c.Data[2400].Value * 1000)).to.equal(456)
			expect(c.Data[4800].InterpolationMode).to.equal(Enum.KeyInterpolationMode.Cubic)
			-- TODO: Waiting for auto-tangents to be enabled in the API
			--[[
			expect(c.Data[4800].LeftSlope).never.to.be.ok()
			expect(c.Data[4800].RightSlope).never.to.be.ok()
			]]
		end)

		it("should read the events", function()
			local curveAnimation = buildTestCurveAnimation()
			local animationData = RigUtils.fromCurveAnimation(curveAnimation)
			local e = animationData.Events
			expect(#e.Keyframes).to.equal(2)
			expect(e.Keyframes[2]).to.equal(1200)
			expect(#Cryo.Dictionary.keys(e.Data[0])).to.equal(2)
			expect(e.Data[0]["FooEvent"]).to.be.ok()
			expect(e.Data[0]["BarEvent"]).to.be.ok()
			expect(#Cryo.Dictionary.keys(e.Data[1200])).to.equal(1)
			expect(e.Data[1200]["FooEvent"]).to.be.ok()
		end)

		it("should set the metadata", function()
			local curveAnimation = buildTestCurveAnimation()
			local animationData = RigUtils.fromCurveAnimation(curveAnimation)
			local metadata = animationData.Metadata
			expect(metadata).to.be.ok()
			expect(metadata.Name).to.equal("CurveAnimation")
			expect(metadata.Looping).to.equal(true)
			expect(metadata.Priority).to.equal(Enum.AnimationPriority.Idle)
			if GetFFlagACESaveRigWithAnimation() then
				expect(metadata.AnimationRig).to.be.ok()
				expect(metadata.AnimationRig.Name).to.equal("CurveAnimationRig")
			end
		end)
	end)

	describe("getRigInfo", function()
		it("should return a list of parts which are animated", function()
			local testRig = buildTestRig()
			local parts = RigUtils.getRigInfo(testRig)

			expect(parts).to.be.ok()
			expect(#parts).to.equal(3)
			table.sort(parts, function(p1, p2)
				return p1.Name < p2.Name
			end)

			expect(parts[1].Name).to.equal("Head")
			expect(parts[2].Name).to.equal("Jaw")
			expect(parts[3].Name).to.equal("UpperTorso")
		end)

		it("should return a map of part names to Motor6Ds", function()
			local testRig = buildTestRig()
			local _, motors = RigUtils.getRigInfo(testRig)
			expect(motors.UpperTorso).to.be.ok()
			expect(motors.UpperTorso.ClassName).to.equal("Motor6D")
			expect(motors.Head).to.be.ok()
			expect(motors.Head.ClassName).to.equal("Motor6D")
		end)
	end)

	describe("canUseIK", function()
		it("a rig with constraints should be able to use IK", function()
			local testRig = buildTestRig()
			local canUseIK, emptyR15 = RigUtils.canUseIK(testRig)
			expect(canUseIK).to.be.equal(true)
			expect(emptyR15).to.be.equal(false)
		end)
	end)

	describe("getPartByName", function()
		it("should return correct part given its name", function()
			local testRig = buildTestRig()
			local part = RigUtils.getPartByName(testRig, "UpperTorso")
			expect(part).to.be.equal(testRig.UpperTorso)
		end)
	end)

	describe("getBones", function()
		it("first bone of test rig should be the Jaw", function()
			local testRig = buildTestRig()
			local bones = RigUtils.getBones(testRig)
			expect(bones[1]).to.be.equal(testRig.Head.Jaw)
		end)
	end)

	describe("getBoneByName", function()
		it("should return correct bone given its name", function()
			local testRig = buildTestRig()
			local bone = RigUtils.getBoneByName(testRig, "Jaw")
			expect(bone).to.be.equal(testRig.Head.Jaw)
		end)
	end)

	describe("findMatchingAttachments", function()
		it("should return an attachment with a matching name on both parts", function()
			local testRig = buildTestRig()
			local att0, att1 = RigUtils.findMatchingAttachments(testRig.UpperTorso, testRig.Head)
			expect(att0.Name).to.be.equal(att1.Name)
			expect(att0.Parent).to.be.equal(testRig.UpperTorso)
			expect(att1.Parent).to.be.equal(testRig.Head)
		end)
	end)

	describe("findRootPart", function()
		it("should return the root part of the rig", function()
			local testRig = buildTestRig()
			local root = RigUtils.findRootPart(testRig)
			expect(root.Name).to.equal("HumanoidRootPart")
		end)
	end)

	describe("rigHasErrors", function()
		it("should error if there are no motors", function()
			local testRig = buildTestRig()
			testRig.UpperTorso.Motor6D:Destroy()
			testRig.Head.Motor6D:Destroy()
			testRig.Head.Jaw:Destroy()

			local result, errorList = RigUtils.rigHasErrors(testRig)
			expect(result).to.equal(true)
			expect(errorList[1].ID).to.equal(Constants.RIG_ERRORS.NoMotors)
		end)

		it("should error if any part0's are missing", function()
			local testRig = buildTestRig()
			testRig.UpperTorso.Motor6D.Part0 = nil

			local result, errorList = RigUtils.rigHasErrors(testRig)
			expect(result).to.equal(true)
			expect(errorList[1].ID).to.equal(Constants.RIG_ERRORS.MissingPart0_Migrated)
			expect(errorList[1].Data[1]).to.equal(testRig.UpperTorso.Motor6D)
		end)

		it("should error if any part1's are missing", function()
			local testRig = buildTestRig()
			testRig.UpperTorso.Motor6D.Part1 = nil

			local result, errorList = RigUtils.rigHasErrors(testRig)
			expect(result).to.equal(true)
			expect(errorList[1].ID).to.equal(Constants.RIG_ERRORS.MissingPart1_Migrated)
			expect(errorList[1].Data[1]).to.equal(testRig.UpperTorso.Motor6D)
		end)

		it("should error if any parts have multiple parents", function()
			local testRig = buildTestRig()
			testRig.UpperTorso.Motor6D.Part0 = testRig.HumanoidRootPart
			testRig.UpperTorso.Motor6D.Part1 = testRig.Head

			local result, errorList = RigUtils.rigHasErrors(testRig)
			expect(result).to.equal(true)
			expect(errorList[1].ID).to.equal(Constants.RIG_ERRORS.MultipleParents_Migrated)
			expect(errorList[1].Data[1]).to.equal(testRig.Head)
		end)

		it("should error if any parts have a circular relationship", function()
			local testRig = buildTestRig()
			local newMotor = Instance.new("Motor6D", testRig.HumanoidRootPart)
			newMotor.Part0 = testRig.Head
			newMotor.Part1 = testRig.HumanoidRootPart

			local result, errorList = RigUtils.rigHasErrors(testRig)
			expect(result).to.equal(true)
			expect(errorList[1].ID).to.equal(Constants.RIG_ERRORS.CircularRig)
		end)

		it("should error if all parts are anchored", function()
			local testRig = buildTestRig()
			local result, errorList
			testRig.Head.Jaw:Destroy()
			result = RigUtils.rigHasErrors(testRig)
			expect(result).to.equal(false)

			testRig.HumanoidRootPart.Anchored = true
			testRig.Head.Anchored = true
			testRig.UpperTorso.Anchored = true
			result, errorList = RigUtils.rigHasErrors(testRig)
			expect(result).to.equal(true)
			expect(errorList[1].ID).to.equal(Constants.RIG_ERRORS.PartsAnchored)
		end)

		it("should error if multiple animated parts have the same name", function()
			local testRig = buildTestRig()
			testRig.Head.Name = "Part"
			testRig.UpperTorso.Name = "Part"
			local result, errorList = RigUtils.rigHasErrors(testRig)
			expect(result).to.equal(true)
			expect(errorList[1].ID).to.equal(Constants.RIG_ERRORS.NameCollision)
		end)
	end)

	describe("getAnimSavesFolder", function()
		it("should return nil if no AnimSaves folder exists and create is false", function()
			local testRig = buildTestRig()
			local animSaves = RigUtils.getAnimSavesFolder(testRig)
			expect(animSaves).never.to.be.ok()
			expect(testRig:FindFirstChild("AnimSaves")).never.to.be.ok()
		end)

		it("should make a new AnimSaves folder if none exists and Create is true", function()
			local testRig = buildTestRig()
			local animSaves = RigUtils.getAnimSavesFolder(testRig, true)
			expect(animSaves).to.be.ok()
			expect(testRig:FindFirstChild("AnimSaves")).to.be.ok()
		end)

		it("should return the AnimSaves folder if it exists", function()
			local testRig = buildTestRig()
			local animSaves = RigUtils.getAnimSavesFolder(testRig, true)
			local foundFolder = RigUtils.getAnimSavesFolder(testRig)
			expect(foundFolder).to.equal(animSaves)
		end)
	end)

	describe("getAnimSaves", function()
		it("should return an empty table if no AnimSaves folder exists", function()
			local testRig = buildTestRig()
			local animSaves = RigUtils.getAnimSaves(testRig)
			expect(animSaves).to.be.ok()
			expect(#animSaves).to.equal(0)
		end)

		it("should return an empty table if AnimSaves exists but is empty", function()
			local testRig = buildTestRig()
			RigUtils.getAnimSavesFolder(testRig, true)
			local animSaves = RigUtils.getAnimSaves(testRig)
			expect(animSaves).to.be.ok()
			expect(#animSaves).to.equal(0)
		end)

		it("should return a list of KeyframeSequences in AnimSaves", function()
			local testRig = buildTestRig()
			local folder = RigUtils.getAnimSavesFolder(testRig, true)
			Instance.new("KeyframeSequence", folder)
			Instance.new("KeyframeSequence", folder)
			local animSaves = RigUtils.getAnimSaves(testRig)
			expect(animSaves).to.be.ok()
			expect(#animSaves).to.equal(2)
		end)

		it("should only include KeyframeSequences in the list", function()
			local testRig = buildTestRig()
			local folder = RigUtils.getAnimSavesFolder(testRig, true)
			Instance.new("KeyframeSequence", folder)
			Instance.new("Animation", folder)
			local animSaves = RigUtils.getAnimSaves(testRig)
			expect(animSaves).to.be.ok()
			expect(#animSaves).to.equal(1)
		end)
	end)

	describe("calculateFrameRate", function()
		it("should still work if no keyframe at time 0", function()
			local kfs = Instance.new("KeyframeSequence")
			local kf1 = Instance.new("Keyframe", kfs)
			local kf2 = Instance.new("Keyframe", kfs)
			kf1.Time = 0.011111
			kf2.Time = 0.22222
			local fps = RigUtils.calculateFrameRate(kfs)
			expect(fps).to.equal(90)
		end)

		it("should check for 30 fps first", function()
			local kfs = Instance.new("KeyframeSequence")
			local kf1 = Instance.new("Keyframe", kfs)
			local kf2 = Instance.new("Keyframe", kfs)
			local kf3 = Instance.new("Keyframe", kfs)
			kf1.Time = 0
			kf2.Time = 0.5
			kf3.Time = 1
			local fps = RigUtils.calculateFrameRate(kfs)
			expect(fps).to.equal(30)
		end)

		it("should check for 24 fps next", function()
			local kfs = Instance.new("KeyframeSequence")
			local kf1 = Instance.new("Keyframe", kfs)
			local kf2 = Instance.new("Keyframe", kfs)
			local kf3 = Instance.new("Keyframe", kfs)
			kf1.Time = 0
			kf2.Time = 0.125
			kf3.Time = 1
			local fps = RigUtils.calculateFrameRate(kfs)
			expect(fps).to.equal(24)
		end)

		it("should check for 60 fps next", function()
			local kfs = Instance.new("KeyframeSequence")
			local kf1 = Instance.new("Keyframe", kfs)
			local kf2 = Instance.new("Keyframe", kfs)
			local kf3 = Instance.new("Keyframe", kfs)
			kf1.Time = 0
			kf2.Time = 0.05
			kf3.Time = 1
			local fps = RigUtils.calculateFrameRate(kfs)
			expect(fps).to.equal(60)
		end)

		it("should return correct fps", function()
			local kfs = Instance.new("KeyframeSequence")
			local kf1 = Instance.new("Keyframe", kfs)
			local kf2 = Instance.new("Keyframe", kfs)
			local kf3 = Instance.new("Keyframe", kfs)
			kf1.Time = 0
			kf2.Time = 0.01111
			kf3.Time = 1
			local fps = RigUtils.calculateFrameRate(kfs)
			expect(fps).to.equal(90)
		end)

		it("should not exceed 120 fps", function()
			local kfs = Instance.new("KeyframeSequence")
			local kf1 = Instance.new("Keyframe", kfs)
			local kf2 = Instance.new("Keyframe", kfs)
			local kf3 = Instance.new("Keyframe", kfs)
			kf1.Time = 0
			kf2.Time = 0.00001
			kf3.Time = 0.00002
			local fps = RigUtils.calculateFrameRate(kfs)
			expect(fps).to.equal(120)
		end)
	end)
end
