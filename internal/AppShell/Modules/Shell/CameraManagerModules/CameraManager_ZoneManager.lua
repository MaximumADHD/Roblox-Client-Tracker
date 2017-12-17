-- Clean up this file when remove FIntXboxAvatarEditorRolloutPercent2

-- Written by Tomarty, Copyright Roblox 2015
local runService = game:GetService("RunService")




local ZoneAnimator;

do

	local animators = {}

	local function GetAnimator(zone)
		if animators[zone] then
			return animators[zone]
		end
		local moduleScript = script.Parent:WaitForChild("CameraManager_Zones"):FindFirstChild("CameraManagerZone_" .. tostring(zone))
		if not moduleScript then
			return
		end
		local animator = require(moduleScript)
		animators[zone] = animator
		return animator
	end


	ZoneAnimator = {
		CurrentZone = nil;
	}

	local connection;

	function ZoneAnimator:SetZone(zone)
		if ZoneAnimator.CurrentZone == zone then
			return
		end
		ZoneAnimator.CurrentZone = zone
		if connection then
			connection:disconnect()
			connection = nil
		end
		local animator = GetAnimator(zone)
		if not animator then
			return
		end
		animator:SetEnabled(true)
		connection = {
			disconnect = function()
				animator:SetEnabled(false)
			end
		}
	end

end


local SkyboxManager;

do
	SkyboxManager = {}

	local activeSkybox = nil
	function SkyboxManager:SetZone(id)
		if activeSkybox then
			activeSkybox.Parent = nil
			activeSkybox = nil
		end
		local Skyboxes = game:GetService("ReplicatedStorage"):WaitForChild("Skyboxes")
		local skybox = Skyboxes:FindFirstChild(id or "default")
		if skybox then
			activeSkybox = skybox:Clone()
			local lighting = game:GetService("Lighting")
			skybox.Parent = lighting
			pcall(function()
				for k, v in pairs(skybox:GetChildren()) do
					lighting[v.Name] = v.Value
				end
			end)
		end
	end

end







local ZoneManager = {
	Zone = nil;
}

--local ZoneAnimator = require(script.ZoneAnimator)
--local Skybox = require(script.Skybox)

local function setZoneInternal(zone)
	ZoneManager.Zone = zone
	SkyboxManager:SetZone(zone)
	ZoneAnimator:SetZone(zone)
end

function ZoneManager:SetZone(zone)
	if zone == ZoneManager.Zone then
		return
	end
	if runService:IsRunning() then
		setZoneInternal(zone)
	else
		spawn(function()
			while not runService:IsRunning() do wait() end
			setZoneInternal(zone)
		end)
	end
end

return ZoneManager



