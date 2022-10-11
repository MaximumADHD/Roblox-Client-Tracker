return function()
	local Plugin = script.Parent.Parent
	local Constants = require(Plugin.Src.Util.Constants)

	local SaveAnimation = require(Plugin.Src.Thunks.Exporting.SaveAnimation)

	local TestHelpers = require(Plugin.RhodiumTests.TestHelpers)
	local Framework = require(Plugin.Packages.Framework)

	local Analytics = Framework.ContextServices.Analytics

	local runTest = TestHelpers.runTest

	local Templates = require(Plugin.Src.Util.Templates)

	local testAnimationData = Templates.animationData()
	testAnimationData.Instances = {
		Root = {
			Type = Constants.INSTANCE_TYPES.Rig,
			Tracks = {
				Head = {
					Keyframes = { 0, 4 },
					Data = {
						[0] = {
							EasingStyle = Enum.PoseEasingStyle.Linear,
							EasingDirection = Enum.PoseEasingDirection.In,
							Value = CFrame.new(0, 1, 0),
						},
						[4] = {
							EasingStyle = Enum.PoseEasingStyle.Linear,
							EasingDirection = Enum.PoseEasingDirection.In,
							Value = CFrame.new(0, 2, 0),
						},
					},
				},
			},
		},
	}

	it("should be able to export an animation and create AnimSaves", function()
		runTest(function(test)
			local store = test:getStore()
			local analytics = Analytics.mock()
			TestHelpers.loadAnimation(store, testAnimationData)
			store:dispatch(SaveAnimation("TestAnimation", analytics))

			local rootInstance = store:getState().Status.RootInstance
			expect(rootInstance:FindFirstChild("AnimSaves")).to.be.ok()
			expect(rootInstance.AnimSaves:FindFirstChild("TestAnimation")).to.be.ok()
			local testAnimation = rootInstance.AnimSaves.TestAnimation
			expect(testAnimation:IsA("KeyframeSequence")).to.equal(true)
			expect(#testAnimation:GetKeyframes()).to.equal(2)

			rootInstance.AnimSaves:Destroy()
		end)
	end)

	it("should be able to export an animation to an existing AnimSaves", function()
		runTest(function(test)
			local store = test:getStore()
			TestHelpers.loadAnimation(store, testAnimationData)

			local rootInstance = store:getState().Status.RootInstance
			local animSaves = Instance.new("Model")
			local analytics = Analytics.mock()
			animSaves.Name = "AnimSaves"
			animSaves.Parent = rootInstance

			store:dispatch(SaveAnimation("TestAnimation", analytics))
			expect(rootInstance:FindFirstChild("AnimSaves")).to.be.ok()
			expect(rootInstance.AnimSaves:FindFirstChild("TestAnimation")).to.be.ok()
			local testAnimation = rootInstance.AnimSaves.TestAnimation
			expect(testAnimation:IsA("KeyframeSequence")).to.equal(true)
			expect(#testAnimation:GetKeyframes()).to.equal(2)

			rootInstance.AnimSaves:Destroy()
		end)
	end)
end
