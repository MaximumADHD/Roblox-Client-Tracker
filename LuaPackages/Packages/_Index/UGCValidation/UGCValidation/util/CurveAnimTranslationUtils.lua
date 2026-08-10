local CurveAnimTranslationUtils = {}

function CurveAnimTranslationUtils.positionHasKeyframes(folder: Folder): boolean
	local pos = folder:FindFirstChild("Position")
	if not pos or not pos:IsA("Vector3Curve") then
		return false
	end
	for _, axis in { "X", "Y", "Z" } do
		local floatCurve = pos:FindFirstChild(axis)
		if floatCurve and floatCurve:IsA("FloatCurve") and #(floatCurve :: FloatCurve):GetKeys() > 0 then
			return true
		end
	end
	return false
end

function CurveAnimTranslationUtils.translationExceedsThreshold(folder: Folder, maxDistance: number): (boolean, number)
	local pos = folder:FindFirstChild("Position")
	if not pos or not pos:IsA("Vector3Curve") then
		return false, 0
	end

	local positionCurve = pos :: Vector3Curve
	local startPos = Vector3.new(unpack(positionCurve:GetValueAtTime(0)))

	local allKeys = {}
	for _, axis in { "X", "Y", "Z" } do
		local floatCurve = positionCurve:FindFirstChild(axis)
		if floatCurve and floatCurve:IsA("FloatCurve") then
			for _, key in (floatCurve :: FloatCurve):GetKeys() do
				table.insert(allKeys, key.Time)
			end
		end
	end

	local maxFound = 0
	for _, time in allKeys do
		local posAtTime = Vector3.new(unpack(positionCurve:GetValueAtTime(time)))
		local distance = (posAtTime - startPos).Magnitude
		if distance > maxFound then
			maxFound = distance
		end
	end

	return maxFound > maxDistance, maxFound
end

return CurveAnimTranslationUtils
