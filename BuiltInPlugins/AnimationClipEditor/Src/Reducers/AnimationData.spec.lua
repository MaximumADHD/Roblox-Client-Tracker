return function()
	local Plugin = script.Parent.Parent.Parent
	local Rodux = require(Plugin.Packages.Rodux)
	local AnimationData = require(script.Parent.AnimationData)

	local SetAnimationData = require(Plugin.Src.Actions.SetAnimationData)
	local AddKeyframe = require(Plugin.Src.Thunks.AddKeyframe)
	local SetKeyframeData = require(Plugin.Src.Thunks.SetKeyframeData)
	local UpdateMetadata = require(Plugin.Src.Thunks.UpdateMetadata)
	local Constants = require(Plugin.Src.Util.Constants)

	local function makeAnimationData(tracks)
		return {
			Instances = {
				Root = {
					Tracks = tracks,
				},
			},
		}
	end

	local testAnimationData = makeAnimationData({
		["TestTrack"] = {
			Keyframes = { 1, 2, 3 },
			Data = {
				[1] = {},
				[2] = {},
				[3] = {},
			},
		},
		["OtherTrack"] = {
			Keyframes = { 1 },
			Data = {
				[1] = {},
			},
		},
	})

	-- AnimationData tables can't contain tracks with empty keyframes arrays.
	-- Empty tracks should be removed from Tracks.
	local testBadAnimationData = makeAnimationData({
		["BadTrack"] = {
			Keyframes = {},
			Data = {},
		},
	})

	local function createTestStore(animData)
		local middlewares = { Rodux.thunkMiddleware }
		local store = Rodux.Store.new(AnimationData, {
			AnimationData = animData or testAnimationData,
		}, middlewares)
		return store
	end

	local function tracksPreservedTest(dispatchFunc)
		local store = createTestStore()
		dispatchFunc(store)

		local state = store:getState()
		local tracks = state.Instances.Root.Tracks

		expect(tracks.OtherTrack).to.be.ok()
	end

	it("should be nil if no animation is loaded", function()
		local state = AnimationData(nil, {})
		expect(state).never.to.be.ok()
	end)

	describe("SetAnimationData", function()
		it("should set the animation data to the new data", function()
			local middlewares = { Rodux.thunkMiddleware }
			local store = Rodux.Store.new(AnimationData, nil, middlewares)
			store:dispatch(SetAnimationData(testAnimationData))
			local state = store:getState()
			expect(state).to.be.ok()
			expect(typeof(state)).to.equal("table")
			expect(state.Instances).to.be.ok()
		end)
	end)

	describe("AddKeyframe", function()
		it("should add a keyframe at the given frame", function()
			local store = createTestStore()
			store:dispatch(
				AddKeyframe("Root", { "TestTrack" }, Constants.TRACK_TYPES.CFrame, 4, { Value = CFrame.new() })
			)
			local state = store:getState()
			local track = state.Instances.Root.Tracks.TestTrack

			expect(track.Keyframes).to.be.ok()
			expect(track.Data).to.be.ok()
			expect(#track.Keyframes).to.equal(5)
			expect(track.Keyframes[5]).to.equal(4)
			expect(track.Data[4]).to.be.ok()
			expect(track.Data[4].Value).to.be.ok()
			expect(track.Data[4].Value).to.equal(CFrame.new())
		end)

		it("should add a new track if it does not exist", function()
			local store = createTestStore()
			store:dispatch(
				AddKeyframe("Root", { "NewTrack" }, Constants.TRACK_TYPES.CFrame, 1, { Value = CFrame.new() })
			)
			local state = store:getState()
			local track = state.Instances.Root.Tracks.NewTrack

			expect(track).to.be.ok()
		end)

		it("should preserve the other keyframes", function()
			local store = createTestStore()
			store:dispatch(
				AddKeyframe("Root", { "TestTrack" }, Constants.TRACK_TYPES.CFrame, 4, { Value = CFrame.new() })
			)

			local state = store:getState()
			local track = state.Instances.Root.Tracks.TestTrack

			expect(track.Keyframes[1]).to.equal(0)
			expect(track.Keyframes[2]).to.equal(1)
			expect(track.Keyframes[3]).to.equal(2)
			expect(track.Keyframes[4]).to.equal(3)
			expect(track.Keyframes[5]).to.equal(4)
			expect(track.Data[0]).to.be.ok()
			expect(track.Data[1]).to.be.ok()
			expect(track.Data[2]).to.be.ok()
			expect(track.Data[3]).to.be.ok()
			expect(track.Data[4]).to.be.ok()
		end)

		it("should preserve the other tracks", function()
			tracksPreservedTest(function(store)
				store:dispatch(
					AddKeyframe("Root", { "TestTrack" }, Constants.TRACK_TYPES.CFrame, 4, { Value = CFrame.new() })
				)
			end)
		end)
	end)

	describe("SetKeyframeData", function()
		it("should set a keyframe's EasingDirection", function()
			local store = createTestStore()
			store:dispatch(SetKeyframeData("Root", { "TestTrack" }, 1, {
				EasingDirection = Enum.PoseEasingDirection.In,
			}))

			local state = store:getState()
			local track = state.Instances.Root.Tracks.TestTrack
			expect(track.Data[1].EasingDirection).to.equal(Enum.PoseEasingDirection.In)
		end)

		it("should set a keyframe's EasingStyle", function()
			local store = createTestStore()
			store:dispatch(SetKeyframeData("Root", { "TestTrack" }, 1, {
				EasingStyle = Enum.PoseEasingStyle.Linear,
			}))

			local state = store:getState()
			local track = state.Instances.Root.Tracks.TestTrack
			expect(track.Data[1].EasingStyle).to.equal(Enum.PoseEasingStyle.Linear)
		end)

		it("should set a keyframe's Value", function()
			local store = createTestStore()
			store:dispatch(SetKeyframeData("Root", { "TestTrack" }, 1, {
				Value = CFrame.new(1, 0, 0),
			}))

			local state = store:getState()
			local track = state.Instances.Root.Tracks.TestTrack
			expect(track.Data[1].Value).to.equal(CFrame.new(1, 0, 0))
		end)
	end)

	describe("UpdateMetadata", function()
		it("should join Metadata with the new values", function()
			local testData = makeAnimationData({})
			testData.Metadata = {}
			local store = createTestStore(testData)
			store:dispatch(UpdateMetadata({
				Name = "TestName",
				Priority = Enum.AnimationPriority.Core,
			}))

			local state = store:getState()
			expect(state.Metadata.Priority).to.equal(Enum.AnimationPriority.Core)
			expect(state.Metadata.Name).to.equal("TestName")
		end)
	end)
end
