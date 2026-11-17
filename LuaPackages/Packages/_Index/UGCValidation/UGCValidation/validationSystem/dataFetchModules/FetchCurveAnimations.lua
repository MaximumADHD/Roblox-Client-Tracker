--[[
	Downloads the CurveAnimation(s) referenced by every Animation.AnimationId reachable
	from the rootInstance (the root itself plus all descendants) and returns them as a
	flat list, plus a parallel list of the Animation each one came from. Animations with
	an empty AnimationId are skipped. Each downloaded asset must resolve to exactly one
	CurveAnimation root (enforced behind
	FFlagUGCValidateCurveAnimSingleRoot, matching the legacy invariant); other schema
	checks on the emote belong in validators. Returns nil when any download throws or does
	not resolve to a single CurveAnimation root — a partial list would hide the problem,
	so we surface it as DATA_FETCH_FAILURE, which CurveAnimDataAvailable reports as a
	CurveAnim_FetchFailed failure. An AnimationId found in consumerConfig.preloadedCurveAnimations
	is used as-is instead of downloaded.
]]

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local getAllInstancesIsA = require(root.util.getAllInstancesIsA)

local getFFlagUGCValidateCurveAnimSingleRoot = require(root.flags.getFFlagUGCValidateCurveAnimSingleRoot)

local FetchCurveAnimations = {}

function FetchCurveAnimations.getData(
	rootInstance: Instance,
	consumerConfig: Types.PreloadedConsumerConfigs?
): (Types.CurveAnimationsData?, { Animation }?)
	local curveAnimations: Types.CurveAnimationsData = {}
	local sourceAnimations: { Animation } = {}

	for _, animation in getAllInstancesIsA(rootInstance, "Animation") do
		local animationId = (animation :: Animation).AnimationId
		if animationId == "" then
			continue
		end

		local preloaded = consumerConfig and consumerConfig.preloadedCurveAnimations[animationId]
		if preloaded then
			table.insert(curveAnimations, preloaded)
			table.insert(sourceAnimations, animation :: Animation)
			continue
		end

		local success, resultTab = pcall(function()
			return game:GetObjectsAllOrNone(animationId)
		end)

		if not success or resultTab == nil then
			return nil
		end

		local instances = resultTab :: { Instance }

		if getFFlagUGCValidateCurveAnimSingleRoot() then
			-- A downloaded animation must be exactly one CurveAnimation. Extra sibling
			-- roots are a smuggled-payload vector (BUGBOUNTY-1628): flattening to the lone
			-- CurveAnimation and dropping the rest would silently pass the upload.
			if #instances ~= 1 or not instances[1]:IsA("CurveAnimation") then
				return nil
			end

			table.insert(curveAnimations, instances[1] :: CurveAnimation)
			table.insert(sourceAnimations, animation :: Animation)
		else
			for _, inst in instances do
				if inst:IsA("CurveAnimation") then
					table.insert(curveAnimations, inst :: CurveAnimation)
					table.insert(sourceAnimations, animation :: Animation)
				end
			end
		end
	end

	return curveAnimations, sourceAnimations
end

return FetchCurveAnimations
