local root = script.Parent.Parent
local valueToString = require(script.Parent.valueToString)
local floatEquals = require(root.util.floatEquals)

local CFrameUtils = {}

function CFrameUtils.fuzzyEq(a: CFrame, b: CFrame, tol: number?): boolean
	local ax, ay, az, aR00, aR01, aR02, aR10, aR11, aR12, aR20, aR21, aR22 = a:GetComponents()
	local bx, by, bz, bR00, bR01, bR02, bR10, bR11, bR12, bR20, bR21, bR22 = b:GetComponents()
	return floatEquals(ax, bx, tol)
		and floatEquals(ay, by, tol)
		and floatEquals(az, bz, tol)
		and floatEquals(aR00, bR00, tol)
		and floatEquals(aR01, bR01, tol)
		and floatEquals(aR02, bR02, tol)
		and floatEquals(aR10, bR10, tol)
		and floatEquals(aR11, bR11, tol)
		and floatEquals(aR12, bR12, tol)
		and floatEquals(aR20, bR20, tol)
		and floatEquals(aR21, bR21, tol)
		and floatEquals(aR22, bR22, tol)
end

function CFrameUtils.getRotationString(cframe: CFrame): string
	local orientation = Vector3.new(cframe:ToOrientation())
	orientation = Vector3.new(math.deg(orientation.X), math.deg(orientation.Y), math.deg(orientation.Z))
	return valueToString(orientation)
end

return CFrameUtils
