local Workspace = game:GetService("Workspace")

local DraggerFramework = script.Parent.Parent
local getFaceInstance = require(DraggerFramework.Utility.getFaceInstance)

return function()
	local function createTestFaceInstance(className)
		local part = Instance.new("Part", Workspace)
		return Instance.new(className, part)
	end

	local function lookAtPartFace(part, face)
		local origin = part.Position + Vector3.fromNormalId(face) * 100
		local direction = part.Position - origin
		return Ray.new(origin, direction)
	end

	it("should return the FaceInstance for the given part and position", function()
		local texture = createTestFaceInstance("Texture")
		local decal = createTestFaceInstance("Decal")

		for _, faceInstance in ipairs({texture, decal}) do
			local part = faceInstance.Parent

			for _, normalId in ipairs(Enum.NormalId:GetEnumItems()) do
				faceInstance.Face = normalId

				local ray = lookAtPartFace(part, normalId)
				local params = RaycastParams.new()
				params.FilterDescendantsInstances = {part}
				params.BruteForceAllSlow = true
				local result = Workspace:Raycast(ray.Origin, ray.Direction, params)
				assert(result.Instance == part)

				local result = getFaceInstance(part, result.Position)
				expect(result).to.equal(faceInstance)
			end

			part.Parent = nil
			part:Destroy()
		end
	end)

	it("should return nil if no FaceInstance exists on part", function()
		local part = Instance.new("Part", Workspace)

		for _, normalId in ipairs(Enum.NormalId:GetEnumItems()) do
			local ray = lookAtPartFace(part, normalId)
			local params = RaycastParams.new()
			params.FilterDescendantsInstances = {part}
			params.BruteForceAllSlow = true
			local result = Workspace:Raycast(ray.Origin, ray.Direction, params)
			assert(result.Instance == part)

			local result = getFaceInstance(part, result.Position)
			expect(result).to.equal(nil)
		end

		part.Parent = nil
		part:Destroy()
	end)
end
