return function()
	local Plugin = script.Parent.Parent.Parent
	local Constants = require(Plugin.Src.Util.Constants)
	local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)

	local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
	local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

	local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

	local testTrackData = {
		Type = (GetFFlagFacialAnimationSupport() or GetFFlagChannelAnimations()) and Constants.TRACK_TYPES.CFrame or nil,
		Keyframes = {2, 4, 5},
		Data = {
			[2] = {
				Value = CFrame.new(0, 0, 0),
				EasingStyle = Enum.PoseEasingStyle.Linear,
				EasingDirection = Enum.PoseEasingDirection.In,
			},
			[4] = {
				Value = CFrame.new(0, 1, 0),
				EasingStyle = Enum.PoseEasingStyle.Linear,
				EasingDirection = Enum.PoseEasingDirection.In,
			},
			[5] = {
				Value = CFrame.new(0, 2, 0),
				EasingStyle = Enum.PoseEasingStyle.Linear,
				EasingDirection = Enum.PoseEasingDirection.In,
			},
		},
	}

	local testEmptyTrackData = {
		Type = (GetFFlagFacialAnimationSupport() or GetFFlagChannelAnimations()) and Constants.TRACK_TYPES.CFrame or nil,
		Keyframes = {},
		Data = {},
	}

	describe("findNearestKeyframes", function()
		it("should return the exact keyframe if it exists", function()
			local keyframes = testTrackData.Keyframes
			local index = KeyframeUtils.findNearestKeyframes(keyframes, 2)
			expect(index).to.equal(1)
		end)

		it("should return the nearest two keyframes if it does not", function()
			local keyframes = testTrackData.Keyframes
			local low, high = KeyframeUtils.findNearestKeyframes(keyframes, 3)
			expect(low).to.equal(1)
			expect(high).to.equal(2)
		end)

		it("should return the first keyframe when the keyframe is too low", function()
			local keyframes = testTrackData.Keyframes
			local index = KeyframeUtils.findNearestKeyframes(keyframes, 0)
			expect(index).to.equal(1)
		end)

		it("should return the last keyframe when the keyframe is too high", function()
			local keyframes = testTrackData.Keyframes
			local index = KeyframeUtils.findNearestKeyframes(keyframes, 6)
			expect(index).to.equal(#keyframes)
		end)

		if not GetFFlagChannelAnimations() then
			it("should throw if the keyframes array is empty", function()
				local keyframes = {}
				expect(function()
					KeyframeUtils.findNearestKeyframes(keyframes, 1)
				end).to.throw()
			end)
		end

		it("should return the only keyframe if only one exists", function()
			local keyframes = {1}
			local index = KeyframeUtils.findNearestKeyframes(keyframes, 1)
			expect(index).to.equal(1)
			index = KeyframeUtils.findNearestKeyframes(keyframes, 0)
			expect(index).to.equal(1)
			index = KeyframeUtils.findNearestKeyframes(keyframes, 2)
			expect(index).to.equal(1)
		end)

		it("should work for even and odd values", function()
			local keyframes = {1, 3, 5}
			local index = KeyframeUtils.findNearestKeyframes(keyframes, 3)
			expect(index).to.equal(2)

			local low, high = KeyframeUtils.findNearestKeyframes(keyframes, 2)
			expect(low).to.equal(1)
			expect(high).to.equal(2)

			keyframes = {2, 4, 6}
			index = KeyframeUtils.findNearestKeyframes(keyframes, 4)
			expect(index).to.equal(2)

			low, high = KeyframeUtils.findNearestKeyframes(keyframes, 3)
			expect(low).to.equal(1)
			expect(high).to.equal(2)
		end)
	end)

	describe("findKeyframe", function()
		it("should return the exact keyframe if it exists", function()
			local keyframes = testTrackData.Keyframes
			local index = KeyframeUtils.findKeyframe(keyframes, 2)
			expect(index).to.equal(1)
		end)

		it("should return nil if the keyframe does not exist", function()
			local keyframes = testTrackData.Keyframes
			local index = KeyframeUtils.findKeyframe(keyframes, 7)
			expect(index).never.to.be.ok()
		end)
	end)

	describe("getValue", function()
		it("should return the value if using exact keyframes", function()
			local value = GetFFlagChannelAnimations() and KeyframeUtils.getValue(testTrackData, 4) or KeyframeUtils:getValue(testTrackData, 4)
			expect(value).to.equal(CFrame.new(0, 1, 0))
		end)

		it("should return an interpolated value if not on a keyframe", function()
			local value = GetFFlagChannelAnimations() and KeyframeUtils.getValue(testTrackData, 3) or KeyframeUtils:getValue(testTrackData, 3)
			expect(value).to.equal(CFrame.new(0, 0.5, 0))
		end)

		it("should return the first keyframe value if before all keyframes", function()
			local value = GetFFlagChannelAnimations() and KeyframeUtils.getValue(testTrackData, 1) or KeyframeUtils:getValue(testTrackData, 1)
			expect(value).to.equal(CFrame.new(0, 0, 0))
		end)

		it("should return the last keyframe value if after all keyframes", function()
			local value = GetFFlagChannelAnimations() and KeyframeUtils.getValue(testTrackData, 6) or KeyframeUtils:getValue(testTrackData, 6)
			expect(value).to.equal(CFrame.new(0, 2, 0))
		end)

		it("should be able to get values between discrete keyframes", function()
			local value = GetFFlagChannelAnimations() and KeyframeUtils.getValue(testTrackData, 4.5) or KeyframeUtils:getValue(testTrackData, 4.5)
			expect(value).to.equal(CFrame.new(0, 1.5, 0))
		end)

		it("should throw if the track has empty keyframes", function()
			expect(function()
				if GetFFlagChannelAnimations() then
					KeyframeUtils.getValue(testEmptyTrackData, 1)
				else
					KeyframeUtils:getValue(testEmptyTrackData, 1)
				end
			end).to.throw()
		end)
	end)

	describe("interpolate", function()
		it("should call CFrame:Lerp", function()
			local low = CFrame.new(0, 0, 0)
			local high = CFrame.new(1, 0, 0)
			local value = KeyframeUtils.interpolate(low, high, 0.5)
			expect(value).to.equal(low:Lerp(high, 0.5))
		end)

		it("should call Vector3:Lerp", function()
			local low = Vector3.new(0, 0, 0)
			local high = Vector3.new(1, 0, 0)
			local value = KeyframeUtils.interpolate(low, high, 0.5)
			expect(value).to.equal(low:Lerp(high, 0.5))
		end)

		it("should lerp numbers", function()
			local low = 0
			local high = 1
			local value = KeyframeUtils.interpolate(low, high, 0.5)
			expect(value).to.equal(0.5)
		end)

		it("should throw if trying to lerp an unsupported value", function()
			local low = {}
			local high = {}
			expect(function()
				KeyframeUtils.interpolate(low, high, 0.5)
			end).to.throw()
		end)
	end)

	if not GetFFlagUseTicks() then
		describe("getNearestFrame", function()
			it("should find the closest frame to the given float", function()
				local frame = KeyframeUtils.getNearestFrame_deprecated(1.1)
				expect(frame).to.equal(1)

				frame = KeyframeUtils.getNearestFrame_deprecated(1.9)
				expect(frame).to.equal(2)
			end)

			it("should round up if at .5", function()
				local frame = KeyframeUtils.getNearestFrame_deprecated(1.5)
				expect(frame).to.equal(2)

				frame = KeyframeUtils.getNearestFrame_deprecated(2.5)
				expect(frame).to.equal(3)
			end)
		end)
	else
		describe("getNearestTick", function()
			it("should find the closest tick to the given float", function()
				local tick = KeyframeUtils.getNearestTick(1.1)
				expect(tick).to.equal(1)

				tick = KeyframeUtils.getNearestTick(1.9)
				expect(tick).to.equal(2)
			end)

			it("should round up if at .5", function()
				local tick = KeyframeUtils.getNearestTick(1.5)
				expect(tick).to.equal(2)

				tick = KeyframeUtils.getNearestTick(2.5)
				expect(tick).to.equal(3)
			end)
		end)
	end

	describe("snapToFrame", function()
		it("should snap to the closest frame within the tolerance", function()
			local frame = KeyframeUtils.snapToFrame(1.01, 0.1)
			expect(frame).to.equal(1)

			frame = KeyframeUtils.snapToFrame(2.999, 0.1)
			expect(frame).to.equal(3)
		end)

		it("should return the original value if it was not snapped", function()
			local frame = KeyframeUtils.snapToFrame(1.01, 0.0001)
			expect(frame).to.equal(1.01)

			frame = KeyframeUtils.snapToFrame(2.999, 0.0001)
			expect(frame).to.equal(2.999)
		end)

		it("should throw if the provided tolerance was invalid", function()
			expect(function()
				KeyframeUtils.snapToFrame(1, -1)
			end).to.throw()

			expect(function()
				KeyframeUtils.snapToFrame(1, 1)
			end).to.throw()
		end)
	end)
end
