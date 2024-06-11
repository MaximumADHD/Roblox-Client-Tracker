--!strict

--[[
	Thumbnailer.lua is a utility module for taking snapshots of instances. Seamlessly covers both the server case and the studio case.
]]

local root = script.Parent.Parent
local Analytics = require(root.Analytics)

local getEngineFeatureEngineUGCValidateOrthographicTransparency =
	require(root.flags.getEngineFeatureEngineUGCValidateOrthographicTransparency)

local Thumbnailer = {}
Thumbnailer.__index = Thumbnailer

local SERVER = 1
local CLIENT = 2

function Thumbnailer.new(isServer: boolean, cameraFov: number, imgSize: Vector2)
	assert(cameraFov > 0 and cameraFov <= 120)
	assert(imgSize.X > 0 and imgSize.Y > 0)

	local self = {
		mode = if isServer then SERVER else CLIENT,
		imgSize = imgSize,
		cameraFov = cameraFov,
	}

	setmetatable(self, Thumbnailer)
	return self
end

function Thumbnailer:setImgSize(imgSize: Vector2)
	self.imgSize = imgSize
end

function Thumbnailer:setupViewportFrame()
	assert(self.screenGui)
	assert(self.worldModel)
	assert(self.vpfs)
	assert(self.camera)

	local vpf: ViewportFrame = Instance.new("ViewportFrame", self.screenGui)

	vpf.BackgroundTransparency = 1
	vpf.BorderSizePixel = 0
	vpf.Size = UDim2.fromOffset(self.imgSize.X, self.imgSize.Y)

	self.worldModel.Parent = vpf

	-- reconfigure camera because seomtimes worldmodel without parent wont cause joints to move.
	if getEngineFeatureEngineUGCValidateOrthographicTransparency() and self.cameraOptions.cameraTransform then
		self:setCameraTransform(self.cameraOptions.cameraTransform)
	else
		self:setCamera(self.cameraOptions.fill, self.cameraOptions.maxDim, self.cameraOptions.dir)
	end

	local camera: Camera = self.camera :: Camera
	camera.Parent = vpf
	vpf.CurrentCamera = camera

	table.insert(self.vpfs, vpf)
end

function Thumbnailer:setupScreenGui()
	local screenGui: ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
	local worldModel = Instance.new("WorldModel")

	self.screenGui = screenGui
	self.worldModel = worldModel
	self.vpfs = {}
end

function Thumbnailer:init(target: Instance)
	self.target = target

	local modelNullable: Model? = target:FindFirstAncestorWhichIsA("Model")
	local folderNullable: Folder? = target:FindFirstAncestorWhichIsA("Folder")
	local ancestor: Instance

	if modelNullable then
		ancestor = modelNullable :: Instance
		self.ancestor = ancestor
	elseif folderNullable then
		ancestor = folderNullable :: Instance
		self.ancestor = ancestor
	else
		ancestor = target
	end

	if self.mode == CLIENT then
		self:setupScreenGui()
		ancestor.Parent = self.worldModel
	elseif self.mode == SERVER then
		ancestor.Parent = workspace
	end
end

function Thumbnailer:setCameraTransform(cameraTransform: CFrame)
	if not self.camera then
		self.camera = Instance.new("Camera")
		self.camera.FieldOfView = self.cameraFov

		if self.mode == SERVER then
			self.camera.Name = "ThumbnailCamera"
			self.camera.Parent = workspace:GetChildren()[1]
		end
	end

	self.camera.CFrame = cameraTransform

	self.cameraOptions = {
		cameraTransform = cameraTransform,
	}
end

function Thumbnailer:setCamera(fill: number, maxDim: number, dir: Vector3)
	assert(self.target)

	local camera = self.camera
	local cameraFov = self.cameraFov
	local target = self.target

	if not camera then
		camera = Instance.new("Camera")
		camera.FieldOfView = cameraFov

		if self.mode == SERVER then
			camera.Name = "ThumbnailCamera"
			camera.Parent = workspace:GetChildren()[1]
		end
		self.camera = camera
	end

	local size: Vector3 = target.Size
	local pos: Vector3 = target.CFrame.Position
	local dist: number = maxDim / (fill * 2 * math.tan(math.rad(cameraFov / 2)))

	camera.CFrame = CFrame.lookAt(pos + dir * dist + dir * size / 2, pos)

	self.cameraOptions = {
		fill = fill,
		maxDim = maxDim,
		dir = dir,
	}
end

function Thumbnailer:cleanup()
	if self.screenGui then
		self.screenGui:Destroy()
		self.screenGui = nil :: any
		self.vpfs = nil
	end

	if self.cameraOptions then
		self.cameraOptions = nil
	end

	if self.target then
		self.target:Destroy()
		self.target = nil :: any
	end

	if self.ancestor then
		self.ancestor:Destroy()
		self.ancestor = nil :: any
	end

	if self.camera then
		self.camera:Destroy()
		self.camera = nil :: any
	end
end

function Thumbnailer:takeSnapshot(): (boolean, string?)
	local start = os.clock()
	local captureSuccess, img
	if self.mode == SERVER then
		-- selene: allow(incorrect_standard_library_use)
		local ThumbnailGenerator = game:GetService("ThumbnailGenerator" :: any) :: any
		captureSuccess, img = pcall(function()
			return ThumbnailGenerator:Click("Png", self.imgSize.X, self.imgSize.Y, --[[hideSky = ]] true)
		end)
	else
		self:setupViewportFrame()
		captureSuccess, img = pcall(function()
			task.wait(1)
			return self.vpfs[#self.vpfs]:CaptureSnapshotAsync()
		end)
	end
	local stop = os.clock()
	Analytics.reportThumbnailing(stop - start)
	return captureSuccess, img
end

return Thumbnailer
