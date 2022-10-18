return function()
	local CurveUtils = require(script.Parent.CurveUtils)
	local Constants = require(script.Parent.Constants)
	local Plugin = script.Parent.Parent.Parent
	local Framework = require(Plugin.Packages.Framework)
	local MathUtil = Framework.Util.Math

	local function Keyframe(value: number): { Value: number }
		return { Value = value }
	end

	describe("generateCurve [Facs]", function()
		it("should work with constant curves", function()
			local left = Keyframe(0)
			local right = Keyframe(10)
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Facs,
				Enum.PoseEasingStyle.Constant,
				Enum.PoseEasingDirection.Out,
				0,
				left,
				10,
				right
			)
			expect(res).to.be.ok()
			expect(#res).to.equal(0)
			expect(left.RightSlope).never.to.be.ok()
			expect(right.LeftSlope).never.to.be.ok()
		end)

		it("should work with linear curves", function()
			local left = Keyframe(0)
			local right = Keyframe(10)
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Facs,
				Enum.PoseEasingStyle.Linear,
				Enum.PoseEasingDirection.Out,
				0,
				left,
				10,
				right
			)
			expect(res).to.be.ok()
			expect(#res).to.equal(0)
			expect(left.RightSlope).never.to.be.ok()
			expect(right.LeftSlope).never.to.be.ok()
		end)

		it("should should work with cubic Curves", function()
			local left = Keyframe(0)
			local right = Keyframe(10)
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Facs,
				Enum.PoseEasingStyle.Cubic,
				Enum.PoseEasingDirection.Out,
				0,
				left,
				10,
				right
			)
			expect(res).to.be.ok()
			expect(#res).to.equal(0)
			expect(left.RightSlope).to.equal(3)
			expect(right.LeftSlope).to.equal(0)
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Facs,
				Enum.PoseEasingStyle.Cubic,
				Enum.PoseEasingDirection.In,
				0,
				left,
				10,
				right
			)
			expect(res).to.be.ok()
			expect(#res).to.equal(0)
			expect(left.RightSlope).to.equal(0)
			expect(right.LeftSlope).to.equal(3)
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Facs,
				Enum.PoseEasingStyle.Cubic,
				Enum.PoseEasingDirection.InOut,
				0,
				left,
				10,
				right
			)
			expect(res).to.be.ok()
			expect(res[5]).to.be.ok()
			expect(res[5].Value).to.equal(5)
			expect(res[5].LeftSlope).to.equal(3)
			expect(res[5].RightSlope).to.equal(3)
			expect(left.RightSlope).to.equal(0)
			expect(right.LeftSlope).to.equal(0)
		end)

		it("should work with bounce animations", function()
			-- Each rebound has a duration that is half the previous one, and
			-- the first rebound has half a duration. This means that with three
			-- rebounds we should see keyframes at 4t, (4+4)t, (4+4+2)t and
			-- (4+4+2+1)t for an animation of total length 11t.
			-- Each apex happens between two rebounds, and the height follows
			-- a geometric progression, each height being the previous one
			-- multiplied by the default elasticity of 0.25
			local left = Keyframe(10)
			local right = Keyframe(0)
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Facs,
				Enum.PoseEasingStyle.Bounce,
				Enum.PoseEasingDirection.Out,
				0,
				left,
				110,
				right
			)

			expect(res).to.be.ok()
			expect(res[40]).to.be.ok() -- First rebound
			expect(res[40].Value).to.equal(0)
			expect(res[60]).to.be.ok() -- First apex
			expect(res[60].Value).to.equal(2.5)
			expect(res[80]).to.be.ok() -- Second rebound
			expect(res[80].Value).to.equal(0)
			expect(res[90]).to.be.ok() -- Second apex
			expect(res[90].Value).to.equal(0.625)
			expect(res[100]).to.be.ok() -- Third rebound
			expect(res[100].Value).to.equal(0)
			expect(res[105]).to.be.ok() -- Third apex
			expect(res[105].Value).to.equal(0.15625)

			local left = Keyframe(0)
			local right = Keyframe(10)
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Facs,
				Enum.PoseEasingStyle.Bounce,
				Enum.PoseEasingDirection.In,
				0,
				left,
				110,
				right
			)

			expect(res).to.be.ok()
			expect(res[5]).to.be.ok() -- First apex
			expect(res[5].Value).to.equal(0.15625)
			expect(res[10]).to.be.ok() -- First rebound
			expect(res[10].Value).to.equal(0)
			expect(res[20]).to.be.ok() -- Second apex
			expect(res[20].Value).to.equal(0.625)
			expect(res[30]).to.be.ok() -- Second rebound
			expect(res[30].Value).to.equal(0)
			expect(res[50]).to.be.ok() -- Third apex
			expect(res[50].Value).to.equal(2.5)
			expect(res[70]).to.be.ok() -- Third rebound
			expect(res[70].Value).to.equal(0)
		end)

		it("should work with elastic animations", function()
			-- The extrema are calculated through a horrible formula. (see
			-- source). I will just rely on the values shown by Desmos. That
			-- will at least warn of regressions.
			local left = Keyframe(0)
			local right = Keyframe(1000)
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Facs,
				Enum.PoseEasingStyle.Elastic,
				Enum.PoseEasingDirection.Out,
				0,
				left,
				1000,
				right
			)
			expect(res[135]).to.be.ok()
			expect(math.abs(res[135].Value - 1373.1) < 0.05).to.equal(true)
			expect(res[285]).to.be.ok()
			expect(math.abs(res[285].Value - 868.1) < 0.05).to.equal(true)
			expect(res[435]).to.be.ok()
			expect(math.abs(res[435].Value - 1046.6) < 0.05).to.equal(true)
			expect(res[585]).to.be.ok()
			expect(math.abs(res[585].Value - 983.5) < 0.05).to.equal(true)
			expect(res[735]).to.be.ok()
			expect(math.abs(res[735].Value - 1005.8) < 0.05).to.equal(true)
			expect(res[885]).to.be.ok()
			expect(math.abs(res[885].Value - 997.9) < 0.05).to.equal(true)

			local left = Keyframe(0)
			local right = Keyframe(1000)
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Facs,
				Enum.PoseEasingStyle.Elastic,
				Enum.PoseEasingDirection.In,
				0,
				left,
				1000,
				right
			)
			expect(res[865]).to.be.ok()
			expect(math.abs(res[865].Value + 373.1) < 0.05).to.equal(true)
			expect(res[565]).to.be.ok()
			expect(math.abs(res[565].Value + 46.6) < 0.05).to.equal(true)
			expect(res[115]).to.be.ok()
			expect(math.abs(res[115].Value - 2.06) < 0.05).to.equal(true)
			expect(res[265]).to.be.ok()
			expect(math.abs(res[265].Value + 5.830) < 0.05).to.equal(true)
			expect(res[715]).to.be.ok()
			expect(math.abs(res[715].Value - 131.9) < 0.05).to.equal(true)
			expect(res[415]).to.be.ok()
			expect(math.abs(res[415].Value - 16.5) < 0.05).to.equal(true)
		end)
	end)

	describe("generateCurve [Quaternions]", function()
		-- We will ignore quaternion values and slopes in these tests because
		-- quaternions.
		it("should work with constant curves", function()
			local left = Keyframe(CFrame.Angles(10, 20, 30))
			local right = Keyframe(CFrame.Angles(40, 50, 60))
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Quaternion,
				Enum.PoseEasingStyle.Constant,
				Enum.PoseEasingDirection.Out,
				0,
				left,
				10,
				right
			)
			expect(res).to.be.ok()
			expect(#res).to.equal(0)
			expect(left.RightSlope).never.to.be.ok()
			expect(right.LeftSlope).never.to.be.ok()
		end)

		it("should work with linear curves", function()
			local left = Keyframe(CFrame.Angles(10, 20, 30))
			local right = Keyframe(CFrame.Angles(40, 50, 60))
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Quaternion,
				Enum.PoseEasingStyle.Linear,
				Enum.PoseEasingDirection.Out,
				0,
				left,
				10,
				right
			)
			expect(res).to.be.ok()
			expect(#res).to.equal(0)
			expect(left.RightSlope).never.to.be.ok()
			expect(right.LeftSlope).never.to.be.ok()
		end)

		it("should should work with cubic Curves", function()
			local left = Keyframe(CFrame.Angles(10, 20, 30))
			local right = Keyframe(CFrame.Angles(40, 50, 60))
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Quaternion,
				Enum.PoseEasingStyle.Cubic,
				Enum.PoseEasingDirection.Out,
				0,
				left,
				10,
				right
			)
			expect(res).to.be.ok()
			expect(#res).to.equal(0)
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Quaternion,
				Enum.PoseEasingStyle.Cubic,
				Enum.PoseEasingDirection.In,
				0,
				left,
				10,
				right
			)
			expect(res).to.be.ok()
			expect(#res).to.equal(0)
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Quaternion,
				Enum.PoseEasingStyle.Cubic,
				Enum.PoseEasingDirection.InOut,
				0,
				left,
				10,
				right
			)
			expect(res).to.be.ok()
			expect(res[5]).to.be.ok()
		end)

		it("should work with bounce animations", function()
			local left = Keyframe(CFrame.Angles(10, 20, 30))
			local right = Keyframe(CFrame.Angles(40, 50, 60))
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Quaternion,
				Enum.PoseEasingStyle.Bounce,
				Enum.PoseEasingDirection.Out,
				0,
				left,
				110,
				right
			)

			expect(res).to.be.ok()
			expect(res[40]).to.be.ok() -- First rebound
			expect(res[60]).to.be.ok() -- First apex
			expect(res[80]).to.be.ok() -- Second rebound
			expect(res[90]).to.be.ok() -- Second apex
			expect(res[100]).to.be.ok() -- Third rebound
			expect(res[105]).to.be.ok() -- Third apex

			local left = Keyframe(CFrame.Angles(10, 20, 30))
			local right = Keyframe(CFrame.Angles(40, 50, 60))
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Quaternion,
				Enum.PoseEasingStyle.Bounce,
				Enum.PoseEasingDirection.In,
				0,
				left,
				110,
				right
			)

			expect(res).to.be.ok()
			expect(res[5]).to.be.ok() -- First apex
			expect(res[10]).to.be.ok() -- First rebound
			expect(res[20]).to.be.ok() -- Second apex
			expect(res[30]).to.be.ok() -- Second rebound
			expect(res[50]).to.be.ok() -- Third apex
			expect(res[70]).to.be.ok() -- Third rebound
		end)

		it("should work with elastic animations", function()
			-- The extrema are calculated through a horrible formula. (see
			-- source). I will just rely on the values shown by Desmos. That
			-- will at least warn of regressions.
			local left = Keyframe(CFrame.Angles(10, 20, 30))
			local right = Keyframe(CFrame.Angles(40, 50, 60))
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Quaternion,
				Enum.PoseEasingStyle.Elastic,
				Enum.PoseEasingDirection.Out,
				0,
				left,
				1000,
				right
			)
			expect(res[135]).to.be.ok()
			expect(res[285]).to.be.ok()
			expect(res[435]).to.be.ok()
			expect(res[585]).to.be.ok()
			expect(res[735]).to.be.ok()
			expect(res[885]).to.be.ok()

			local left = Keyframe(CFrame.Angles(10, 20, 30))
			local right = Keyframe(CFrame.Angles(40, 50, 60))
			local res = CurveUtils.generateCurve(
				Constants.TRACK_TYPES.Quaternion,
				Enum.PoseEasingStyle.Elastic,
				Enum.PoseEasingDirection.In,
				0,
				left,
				1000,
				right
			)
			expect(res[865]).to.be.ok()
			expect(res[565]).to.be.ok()
			expect(res[115]).to.be.ok()
			expect(res[265]).to.be.ok()
			expect(res[715]).to.be.ok()
			expect(res[415]).to.be.ok()
		end)
	end)

	describe("getYExtents", function()
		-- Using https://www.desmos.com/calculator/aqbfptfpvx
		-- I tried to find nice curves with integer coefficients and extrema,
		-- but I just could not. So fuzzyEq it is!

		it("should work with two extrema outside of the range", function()
			local min, max = CurveUtils.getYExtents(1, 1, 6, 3, 2, 6)
			expect(MathUtil.fuzzyEq(min, 0.716650548199)).to.equal(true)
			expect(MathUtil.fuzzyEq(max, 2.2833494518)).to.equal(true)
		end)

		it("should work with two extrema, one outside of the range", function()
			local min, max = CurveUtils.getYExtents(1, 1, 6, 3, 2, 4)
			expect(MathUtil.fuzzyEq(min, 1)).to.equal(true)
			expect(MathUtil.fuzzyEq(max, 2.48153673753)).to.equal(true)
		end)

		it("should work with two extrema, both within the range", function()
			local min, max = CurveUtils.getYExtents(1, 1, 2, 3, 2, 3)
			expect(MathUtil.fuzzyEq(min, 1)).to.equal(true)
			expect(MathUtil.fuzzyEq(max, 2)).to.equal(true)
		end)

		it("should work with one extrema outside the range", function()
			local min, max = CurveUtils.getYExtents(1, 1, 2, 3, 2, -2)
			expect(MathUtil.fuzzyEq(min, 1)).to.equal(true)
			expect(MathUtil.fuzzyEq(max, 2.62962962963)).to.equal(true)
		end)

		it("should work without any extrema", function()
			local min, max = CurveUtils.getYExtents(1, 1, 1, 3, 2, 1)
			expect(MathUtil.fuzzyEq(min, 1)).to.equal(true)
			expect(MathUtil.fuzzyEq(max, 2)).to.equal(true)
		end)
	end)
end
