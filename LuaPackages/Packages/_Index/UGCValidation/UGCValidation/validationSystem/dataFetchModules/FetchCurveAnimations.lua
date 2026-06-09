--[[
	Downloads the CurveAnimation(s) referenced by every Animation.AnimationId reachable
	from the rootInstance (the root itself plus all descendants) and returns them as a
	flat list. Animations with an empty AnimationId are skipped; schema/root-shape
	checks on the emote belong in validators, not here. Returns nil when any download
	throws — a partial list would hide fetch problems from dependents, so we surface it
	as DATA_FETCH_FAILURE (CANNOT_RUN for downstream tests).
]]

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local getAllInstancesIsA = require(root.util.getAllInstancesIsA)

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

		for _, inst in resultTab :: { Instance } do
			if inst:IsA("CurveAnimation") then
				table.insert(curveAnimations, inst :: CurveAnimation)
			end
		end
	end

	return curveAnimations
end

return FetchCurveAnimations
