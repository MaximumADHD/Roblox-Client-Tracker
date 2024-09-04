--!nonstrict

local function getDiffBetweenOrientations(CFrameA: CFrame, CFrameB: CFrame)
	local _, angle = (CFrameA * CFrameB:Inverse()):ToAxisAngle()
	return math.deg(angle)
end

return getDiffBetweenOrientations
