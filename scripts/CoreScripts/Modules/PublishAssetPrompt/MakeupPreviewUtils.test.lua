local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local afterAll = JestGlobals.afterAll
local jest = JestGlobals.jest

local Thumbnailing = require(CorePackages.Packages.Thumbnailing)
local FFlagSharedMakeupThumbnailCamera = Thumbnailing.FFlagSharedMakeupThumbnailCamera
local setupCameraSpy = if Thumbnailing.MakeupCameraUtility
	then jest.spyOn(Thumbnailing.MakeupCameraUtility, "SetupCamera")
	else nil
local MakeupPreviewUtils = require(script.Parent.MakeupPreviewUtils)

describe("MakeupPreviewUtils.setupMakeupThumbnailCamera", function()
	local model
	local camera
	local head

	beforeEach(function()
		model = Instance.new("Model")
		camera = Instance.new("Camera")
		head = Instance.new("MeshPart")
		head.Name = "Head"
		head.CFrame = CFrame.new(12, -4, 8) * CFrame.Angles(0.2, 0.7, -0.3)
		head.Parent = model
	end)

	afterEach(function()
		if setupCameraSpy then
			setupCameraSpy:mockClear()
		end
		model:Destroy()
		camera:Destroy()
	end)

	afterAll(function()
		if setupCameraSpy then
			setupCameraSpy:mockRestore()
		end
	end)

	it("rejects a missing head without changing the camera", function()
		head:Destroy()
		local originalCFrame = camera.CFrame
		local originalFieldOfView = camera.FieldOfView

		expect(MakeupPreviewUtils.setupMakeupThumbnailCamera(model, camera, Enum.AvatarAssetType.FaceMakeup)).toBe(
			false
		)
		expect(camera.CFrame).toBe(originalCFrame)
		expect(camera.FieldOfView).toBe(originalFieldOfView)
	end)

	it("rejects a head that is not a MeshPart", function()
		head:Destroy()
		local part = Instance.new("Part")
		part.Name = "Head"
		part.Parent = model
		local originalCFrame = camera.CFrame

		expect(MakeupPreviewUtils.setupMakeupThumbnailCamera(model, camera)).toBe(false)
		expect(camera.CFrame).toBe(originalCFrame)
	end)

	if FFlagSharedMakeupThumbnailCamera then
		for _, assetType in
			{
				Enum.AvatarAssetType.FaceMakeup,
				Enum.AvatarAssetType.LipMakeup,
				Enum.AvatarAssetType.EyeMakeup,
				Enum.AvatarAssetType.EyebrowAccessory,
				Enum.AvatarAssetType.EyelashAccessory,
			}
		do
			it("uses the shared camera API for " .. assetType.Name, function()
				expect(MakeupPreviewUtils.setupMakeupThumbnailCamera(model, camera, assetType)).toBe(true)
				expect(setupCameraSpy).toHaveBeenCalledTimes(1)
				expect(setupCameraSpy).toHaveBeenCalledWith(camera, head.CFrame, assetType.Value)
				expect(camera.Focus).toBe(head.CFrame)
				expect(camera.FieldOfView).toBe(5)
			end)
		end

		it("uses the shared full-face default for a makeup look", function()
			expect(MakeupPreviewUtils.setupMakeupThumbnailCamera(model, camera)).toBe(true)
			expect(setupCameraSpy).toHaveBeenCalledWith(camera, head.CFrame, nil)
			expect(camera.Focus).toBe(head.CFrame)
			expect(camera.FieldOfView).toBe(5)
		end)
	else
		it("preserves the existing eye makeup framing", function()
			expect(MakeupPreviewUtils.setupMakeupThumbnailCamera(model, camera, Enum.AvatarAssetType.EyeMakeup)).toBe(
				true
			)
			local relativeCamera = head.CFrame:ToObjectSpace(camera.CFrame)
			expect((relativeCamera.Position - Vector3.new(0, 0.10852961, -9.357428)).Magnitude).toBeLessThan(0.00001)
			expect((relativeCamera.LookVector - Vector3.zAxis).Magnitude).toBeLessThan(0.00001)
			expect(camera.Focus).toBe(head.CFrame)
			expect(camera.FieldOfView).toBe(5)
			if setupCameraSpy then
				expect(setupCameraSpy).never.toHaveBeenCalled()
			end
		end)
	end
end)
