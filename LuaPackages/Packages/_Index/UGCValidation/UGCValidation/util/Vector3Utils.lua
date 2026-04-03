local Vector3Utils = {}

function Vector3Utils.isInRange(vec: Vector3, min: Vector3, max: Vector3, exclusive: boolean?): boolean
	if exclusive == true then
		return vec.X > min.X and vec.X < max.X and vec.Y > min.Y and vec.Y < max.Y and vec.Z > min.Z and vec.Z < max.Z
	end
	return vec.X >= min.X and vec.X <= max.X and vec.Y >= min.Y and vec.Y <= max.Y and vec.Z >= min.Z and vec.Z <= max.Z
end

function Vector3Utils.isFirstLessOrEqual(first: Vector3, second: Vector3): boolean
	return first.X <= second.X and first.Y <= second.Y and first.Z <= second.Z
end

return Vector3Utils
