--!strict
--
-- This script was taken from Layered Clothes plugin by NeoBuilder101: 
-- https://create.roblox.com/marketplace/asset/6234965776/Clothes-Helper-Plugin
-- In the refactored editor, this functionality will be more incorporated into the actual tool.
--
local g_ChangeHistoryService = game:GetService("ChangeHistoryService")
local g_SelectionService = game:GetService("Selection")

local function endsWith(str, ending)
	return ending == "" or str:sub(-#ending) == ending
end

local function convertToAccessoryImpl(mdl:Model)
	if not mdl:IsA("Model") then
		warn("Incorrect object type. Please select imported model.")
		return
	end

	local wrapLayers = {}

	local bodyWrapTarget = nil
	for _, instance in pairs(mdl:GetDescendants()) do
		if instance:IsA("WrapLayer") then
			table.insert(wrapLayers, instance)
		end
	end

	if #wrapLayers == 0 then
		warn(string.format("LC items not found!"))
		return
	end

	for _, wrap in ipairs(wrapLayers) do
		local mesh = wrap.Parent
		if not mesh or not mesh:IsA("MeshPart") then
			warn("Ignoring '" .. wrap:GetFullName() .. "'")
			continue
		end
		local accessory = Instance.new("Accessory")
		
		-- remove all character before last '_'
		--local postfix = string.gsub(mesh.Name, ".*_", "")
		--local lPostfix = string.lower(postfix)
		--if lPostfix == "left" or lPostfix == "right" then
		local lcMeshName = string.lower(mesh.Name)
		if string.match(lcMeshName, "left") then
			accessory.Name = mdl.Name .. "_Left"	
		elseif string.match(lcMeshName, "right") then
			accessory.Name = mdl.Name .. "_Right"
		else
			accessory.Name = mdl.Name
		end
		

		local newMesh = mesh:Clone()
		local numAttachments = 0
		for _, instance in pairs(newMesh:GetDescendants()) do
			if
				not instance:IsA("WrapLayer") and
				not instance:IsA("SurfaceAppearance") and
				not instance:IsA("Attachment")
			then
				instance:Destroy()
			end

			if instance:IsA("Attachment") then
				numAttachments = numAttachments + 1
				if not endsWith(instance.Name, "Attachment") then
					instance.Name = instance.Name .. "Attachment"
				end
			end
		end
		newMesh.Name = "Handle"
		newMesh.Parent = accessory
		accessory.Parent = mdl.Parent

		if numAttachments == 0 then
			warn("No attachments found ('" .. mesh.Name .. "'). Check your FBX file.")
		end
	end
end

local function convertToAccessory()
	local selectedObjects = g_SelectionService:Get()

	if #selectedObjects ~= 1 then
		warn("You need to select imported model")
		return
	end

	local mdl: Model = selectedObjects[1]
	
	convertToAccessoryImpl(mdl)
end


local function convertToAccessories()
	local selectedObjects = g_SelectionService:Get()
	
	for i, inst in ipairs(selectedObjects) do
		if inst:IsA("Model") then
			print("Converting: '" .. inst.Name .. "'")
			convertToAccessoryImpl(inst)
		end
	end
end

local ClothesHelper = {}

function ClothesHelper:init(toolbar, localization)
	local clothesBtn1 = toolbar:CreateButton(
		localization:getText("ClothesHelper", "CreateAccessory"),
		localization:getText("ClothesHelper", "CreateAccessoryTooltip"),
		"rbxassetid://6374814946")
	clothesBtn1.ClickableWhenViewportHidden = true
	clothesBtn1.Click:connect(function()
		convertToAccessory();
	end)

	local clothesBtn2 = toolbar:CreateButton(
		localization:getText("ClothesHelper", "BulkCreateAccessories"),
		localization:getText("ClothesHelper", "BulkCreateAccessoriesTooltip"),
		"rbxassetid://8151164082")
	clothesBtn2.ClickableWhenViewportHidden = true
	clothesBtn2.Click:connect(function()
		convertToAccessories();
	end)
end

return ClothesHelper
