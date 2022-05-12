--!strict
-- TODO: Unused if GetFFlagACEUseCFrameAPI() is true
local CFrameUtils = {}

local ToEulerAnglesMap: {[Enum.RotationOrder]: (CFrame) -> (number, number, number)} = {
	[Enum.RotationOrder.XYZ] = function(cf)
		local _, _, _, r00, r01, r02, r10, r11, r12, r20, r21, r22 = cf:GetComponents()

		if r02 < 1.0 then
			if r02 > -1.0 then
				return math.atan2(-r12, r22), math.asin(r02), math.atan2(-r01, r00)
			else
				return -math.atan2(r10, r11), -math.pi / 2, 0
			end
		else
			return math.atan2(r10, r11), math.pi / 2, 0
		end
	end,
	[Enum.RotationOrder.XZY] = function(cf)
		local _, _, _, r00, r01, r02, r10, r11, r12, r20, r21, r22 = cf:GetComponents()

		if r01 < 1.0 then
			if r01 > -1.0 then
				return math.atan2(r21, r11), math.atan2(r02, r00), math.asin(-r01)
			else
				return math.atan2(r20, r22), 0, math.pi / 2
			end
		else
			return math.atan2(-r20, r22), 0, -math.pi / 2
		end
	end,
	[Enum.RotationOrder.YXZ] = function(cf)
		local _, _, _, r00, r01, r02, r10, r11, r12, r20, r21, r22 = cf:GetComponents()

		if r12 < 1.0 then
			if r12 > -1.0 then
				return math.asin(-r12), math.atan2(r02, r22), math.atan2(r10, r11)
			else
				return math.pi / 2, math.atan2(r01, r00), 0
			end
		else
			return -math.pi / 2, math.atan2(-r01, r00), 0
		end
	end,
	[Enum.RotationOrder.YZX] = function(cf)
		local _, _, _, r00, r01, r02, r10, r11, r12, r20, r21, r22 = cf:GetComponents()

		if r10 < 1.0 then
			if r10 > -1.0 then
				return math.atan2(-r12, r11), math.atan2(-r20, r00), math.asin(r10)
			else
				return 0, -math.atan2(r21, r22), -math.pi / 2
			end
		else
			return 0, math.atan2(r21, r22), math.pi / 2
		end
	end,
	[Enum.RotationOrder.ZXY] = function(cf)
		local _, _, _, r00, r01, r02, r10, r11, r12, r20, r21, r22 = cf:GetComponents()

		if r21 < 1.0 then
			if r21 > -1.0 then
				return math.asin(r21), math.atan2(-r20, r22), math.atan2(-r01, r11)
			else
				return -math.pi / 2, 0, -math.atan2(r02, r00)
			end
		else
			return math.pi / 2, 0, math.atan2(r02, r00)
		end
	end,
	[Enum.RotationOrder.ZYX] = function(cf)
		local _, _, _, r00, r01, r02, r10, r11, r12, r20, r21, r22 = cf:GetComponents()

		if r20 < 1.0 then
			if r20 > -1.0 then
				return math.atan2(r21, r22), math.asin(-r20), math.atan2(r10, r00)
			else
				return 0, math.pi / 2, -math.atan2(r01, r02)
			end
		else
			return 0, -math.pi / 2, math.atan2(-r01, -r02)
		end
	end,
}

local FromEulerAnglesMap: {[Enum.RotationOrder]: (number, number, number) -> (CFrame)} = {
	[Enum.RotationOrder.XYZ] = function(x, y, z) return CFrame.Angles(x, 0, 0) * CFrame.Angles(0, y, 0) * CFrame.Angles(0, 0, z) end,
	[Enum.RotationOrder.XZY] = function(x, y, z) return CFrame.Angles(x, 0, 0) * CFrame.Angles(0, 0, z) * CFrame.Angles(0, y, 0) end,
	[Enum.RotationOrder.YXZ] = function(x, y, z) return CFrame.Angles(0, y, 0) * CFrame.Angles(x, 0, 0) * CFrame.Angles(0, 0, z) end,
	[Enum.RotationOrder.YZX] = function(x, y, z) return CFrame.Angles(0, y, 0) * CFrame.Angles(0, 0, z) * CFrame.Angles(x, 0, 0) end,
	[Enum.RotationOrder.ZXY] = function(x, y, z) return CFrame.Angles(0, 0, z) * CFrame.Angles(x, 0, 0) * CFrame.Angles(0, y, 0) end,
	[Enum.RotationOrder.ZYX] = function(x, y, z) return CFrame.Angles(0, 0, z) * CFrame.Angles(0, y, 0) * CFrame.Angles(x, 0, 0) end,
}

function CFrameUtils.ToEulerAngles(cFrame: CFrame, order: Enum.RotationOrder): (number, number, number)
	return ToEulerAnglesMap[order](cFrame)
end

function CFrameUtils.FromEulerAngles(x: number, y: number, z: number, order: Enum.RotationOrder): (CFrame)
	return FromEulerAnglesMap[order](x, y, z)
end

return CFrameUtils
