--!nonstrict
-- This script is responsible for scaling the world in VR based on the size of the avatar

local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
while not LocalPlayer do
	Players.Changed:Wait()
	LocalPlayer = Players.LocalPlayer
end

-- retry 25 times * 0.2 = 5 seconds before giving up
local RETRY_COUNT = 25
local RETRY_TIMER = 0.2 
local FIntHeightScalingHeadRootPartPercentageHundreds = game:DefineFastInt("HeightScalingHeadRootPartPercentageHundreds", 25)

local VRAvatarHeightScaling = {}
VRAvatarHeightScaling.__index = VRAvatarHeightScaling

function VRAvatarHeightScaling.new()
	local self: any = setmetatable({}, VRAvatarHeightScaling)

	-- default playerheight is 5.5 studs (1.65 meters, ~5.41 feet)
	self.playerHeight = 5.5
	self:setHeadScale()
	self:connectAvatarChanges()
	return self
end

-- sets camera.HeadScale, does nothing if subject or camera is invalid
function VRAvatarHeightScaling:setHeadScale()
	local avatarHeight = self:GetSubjectHeight()
	if not avatarHeight or avatarHeight <= 0 then return end
	
	local newHeadScale = avatarHeight / self.playerHeight
	assert(newHeadScale > 0)

	local camera = workspace.CurrentCamera
	if not camera then return end

	camera.HeadScale = newHeadScale
end

-- returns the height of the subject, returns nil if the subject is invalid
-- valid subjects are alive humanoids
function VRAvatarHeightScaling:GetSubjectHeight()

	local camera = workspace.CurrentCamera
	local cameraSubject = camera and camera.CameraSubject

	if not cameraSubject or not cameraSubject:IsA("Humanoid") then return end

	local humanoid = cameraSubject
	local humanoidIsDead = humanoid:GetState() == Enum.HumanoidStateType.Dead
	local rootPart = humanoid.RootPart

	if humanoidIsDead or not rootPart or not rootPart:IsA("BasePart") then return end

	local head = humanoid.Parent:FindFirstChild("Head")
	if head then
		return humanoid.HipHeight + rootPart.Size.Y / 2 + head.Position.Y - rootPart.Position.Y + head.Size.Y / 2
	else
		-- HipHeight (distance from legs to bottom of rootpart) + root part + estimated head size (1/4 root part)
		return humanoid.HipHeight + rootPart.Size.Y + rootPart.Size.Y * FIntHeightScalingHeadRootPartPercentageHundreds / 100
	end
end

-- if the avatar changes size, we'll need to recalculate. This should not be called without a pcall
function VRAvatarHeightScaling:connectAvatarChanges()
	-- retry setup in case character needs to load from server, otherwise assume the character is invalid and 
	-- cannot be sized
	local retries = RETRY_COUNT
	
	-- attempt connecting character change events
	while not pcall(function()
			local character = LocalPlayer.Character
			local updateHeadScale = function() 
				self:setHeadScale()
			end
			local connectNumberValueChanges = function()
				-- connect humanoid numbervalue scales
				local changeValues = {
					[character.Humanoid.HeadScale] = "headScaleChanged",
					[character.Humanoid.BodyWidthScale] = "bodyWidthScaleChanged",
					[character.Humanoid.BodyHeightScale] = "bodyHeightScaleChanged",
					[character.Humanoid.BodyDepthScale] = "bodyDepthScaleChanged",
				}
				for numberValue, connection in pairs(changeValues) do
					if numberValue then
						if self[connection] then self[connection]:Disconnect() self[connection] = nil end
						self[connection] = numberValue.Changed:Connect(updateHeadScale)
					end
				end
			end

			
			character.Humanoid.ChildAdded:Connect(function(child)
				if (child.Name == "HeadScale" or 
					child.Name == "BodyWidthScale" or
					child.Name == "BodyHeightScale" or
					child.Name == "BodyDepthScale") then
					self:setHeadScale()
					connectNumberValueChanges()
				end
			end)
			connectNumberValueChanges()
		
			-- child added and disconnect
			
			if self["characterChildAddedConnection"] then self["characterChildAddedConnection"]:Disconnect() self["characterChildAddedConnection"] = nil end
			character.ChildAdded:Connect(updateHeadScale)
			if self["characterChildRemovedConnection"] then self["characterChildRemovedConnection"]:Disconnect() self["characterChildRemovedConnection"] = nil end
			character.ChildRemoved:Connect(updateHeadScale)

		end) do
		-- character setup failed, wait and retry
		retries -= 1
		if retries < 0 then
			warn("Invalid Character for VRAvatarHeightScaling")
			return
		end
		-- 25 retries, 0.2 seconds between each try = 5 seconds before giving up
		task.wait(RETRY_TIMER)
	end
end

function VRAvatarHeightScaling:setPlayerHeight(playerHeight)
	self.playerHeight = playerHeight
	self:setHeadScale()
end

return VRAvatarHeightScaling.new()
