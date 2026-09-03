--[[
	Downloads the CurveAnimation(s) referenced by every Animation.AnimationId reachable
	from the rootInstance (the root itself plus all descendants) and returns them as a
	flat list. Animations with an empty AnimationId are skipped. Each downloaded asset
	must resolve to exactly one CurveAnimation root (enforced behind
	FFlagUGCValidateCurveAnimSingleRoot, matching the legacy invariant); other schema
	checks on the emote belong in validators. Returns nil when any download throws or does
	not resolve to a single CurveAnimation root — a partial list would hide the problem,
	so we surface it as DATA_FETCH_FAILURE, which CurveAnimDataAvailable reports as a
	CurveAnim_FetchFailed failure.
]]

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local getAllInstancesIsA = require(root.util.getAllInstancesIsA)

local getFFlagUGCValidateCurveAnimSingleRoot = require(root.flags.getFFlagUGCValidateCurveAnimSingleRoot)

local FetchCurveAnimations = {}

function FetchCurveAnimations.getData(rootInstance: Instance): Types.CurveAnimationsData?
	local curveAnimations: Types.CurveAnimationsData = {}

	for _, animation in getAllInstancesIsA(rootInstance, "Animation") do
		local animationId = (animation :: Animation).AnimationId
		if animationId == "" then
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
		else
			for _, inst in instances do
				if inst:IsA("CurveAnimation") then
					table.insert(curveAnimations, inst :: CurveAnimation)
				end
			end
		end
	end

	return curveAnimations
end

return FetchCurveAnimations
