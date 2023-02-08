return function()
	local CameraUtility = require(script.Parent.CameraUtility)

	describe("GetCameraCFrame", function()
		it("SHOULD return a function", function()
			expect(CameraUtility.GetCameraCFrame).to.be.a("function")
		end)

		it("SHOULD generate a position relative to target looking back at target", function()
			local targetCFrame = CFrame.new()
			local relativePos = Vector3.new(1, 2, 3)
			local resultCFrame = CameraUtility.GetCameraCFrame(targetCFrame, relativePos)
			expect(resultCFrame.Position).to.equal(relativePos)
			local lookVector = resultCFrame.LookVector
			local expectedLook = Vector3.new(-1, -2, -3).Unit
			local dp = lookVector:Dot(expectedLook)
			expect(dp).to.be.near(1, 0.0001)
		end)
	end)

	describe("CalculateBaseDistanceToCamera", function()
		it("SHOULD return a function", function()
			expect(CameraUtility.CalculateBaseDistanceToCamera).to.be.a("function")
		end)

		it("SHOULD calculate correct base distance.", function()
			local fieldOfViewRad = math.rad(90)
			local minExtent = Vector3.new(0, 0, 0)
			local maxExtent = Vector3.new(1, 2, 3)
			local marginScale = 2
			local d = CameraUtility.CalculateBaseDistanceToCamera(fieldOfViewRad, minExtent, maxExtent, marginScale)
			expect(d).to.be.near(2, 0.0001)
		end)
	end)

	describe("SetupCamera", function()
		it("SHOULD return a function", function()
			expect(CameraUtility.SetupCamera).to.be.a("function")
		end)

		it("SHOULD setup camera coorectly.", function()
			local camera = CameraUtility.CreateThumbnailCamera()

			local cameraOptions = {
				optFieldOfView = 90,
				optCameraYRot = 30,
				optCameraDistanceScale = 2,
				targetCFrame = CFrame.new(),
				minExtent = Vector3.new(0, 0, 0),
				maxExtent = Vector3.new(1, 2, 3),
				extentScale = 3,
			}

			CameraUtility.SetupCamera(camera, cameraOptions)
			expect(camera.FieldOfView).to.equal(cameraOptions.optFieldOfView)
			local centroid = Vector3.new(0.5, 1, 1.5)
			local cameraToCentroid = centroid - camera.CFrame.Position
			expect(cameraToCentroid.Magnitude).to.equal(6)
			expect(cameraToCentroid.X).to.equal(3)
			expect(cameraToCentroid.Y).to.equal(0)
			expect(cameraToCentroid.Z).to.be.near(6 * math.cos(math.rad(30)), 0.0001)
		end)
	end)
end
