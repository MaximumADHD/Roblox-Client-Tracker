local Page = script.Parent.Parent

local Avatar = require(Page.Util.Avatar)

local InsertService = game:GetService("InsertService")

local ManagerAvatar = {}

ManagerAvatar.Handle = nil
ManagerAvatar.Loading = false
ManagerAvatar.WaitingToDestroy = false

local positionRigInFrontOfCamera = nil
local create = nil

function ManagerAvatar.apply(templates)
	if nil == ManagerAvatar.Handle then
		create(templates)
	else
		ManagerAvatar.Handle:applyTemplates(templates)
	end
end

create = function(templates)
	ManagerAvatar.WaitingToDestroy = false
	if not ManagerAvatar.Loading and nil == ManagerAvatar.Handle then
		-- loadWithTemplates() can take a while to return, we set the loading to true as we don't want this function being
		-- called again to create another rig during that wait
		ManagerAvatar.Loading = true
		spawn(function()
			local morpherR15 = nil
			local morpherR6 = nil
			local success, err = pcall(function()
				local R15MorpherAssetId = "rbxasset://avatar/morpherEditorR15.rbxmx"
				morpherR15 = InsertService:LoadLocalAsset(R15MorpherAssetId)
				local R6MorpherAssetId = "rbxasset://avatar/morpherEditorR6.rbxmx"
				morpherR6 = InsertService:LoadLocalAsset(R6MorpherAssetId)
			end)

			if success and morpherR15 and morpherR6 then
				ManagerAvatar.Handle = Avatar.loadWithTemplates(morpherR6, morpherR15, templates)
				if ManagerAvatar.Handle then
					positionRigInFrontOfCamera(ManagerAvatar)
				end
			end

			if err then
				warn (err)
			end

			ManagerAvatar.Loading = false
		end)
	end
end

local function destroyRig(self)
	if nil ~= self.Handle then
		self.Handle:destroy()
		self.Handle = nil
	end
end

local function destroyRigAfterLoading(self)
	if ManagerAvatar.Loading and not ManagerAvatar.WaitingToDestroy then
		ManagerAvatar.WaitingToDestroy = true
		spawn(function()
			while ManagerAvatar.Loading do
				wait()
			end
			if ManagerAvatar.WaitingToDestroy then
				destroyRig(self)
				ManagerAvatar.WaitingToDestroy = false
			end
		end)
	end
end

function ManagerAvatar:destroy()
	destroyRig(self)
	destroyRigAfterLoading(self)
end

positionRigInFrontOfCamera = function(self)
	local camera = workspace.CurrentCamera
	if camera then
		local desiredRigPos = (camera.CFrame + (camera.CFrame.lookVector*8)).p
		local desiredLookAtPoint = desiredRigPos-camera.CFrame.lookVector.Unit
		ManagerAvatar.Handle:setPosition(CFrame.new(desiredRigPos, desiredLookAtPoint))
	else
		local origin = CFrame.new(Vector3.new(0,0,0))
		self.Handle:setPosition(origin)
	end
end

return ManagerAvatar