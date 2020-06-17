local Page = script.Parent.Parent

local AvatarRigManager = require(Page.Util.AvatarRigManager)
local AvatarWebAPI = require(Page.Networking.AvatarWebAPI)
local ConstantAvatar = require(Page.Util.ConstantAvatar)

local Avatar = {}
Avatar.__index = Avatar

-- forward declaration of private functions (this keeps public function definitions near the top)
local getAvatarData = nil
local applyRigTypeFromTemplate = nil
local createPlayerChoiceDescription = nil

function Avatar.loadWithTemplates(r6Rig, r15Rig, arrayOfTemplates)
	local self = setmetatable({}, Avatar)

	self.avatarData = getAvatarData()
	if not self.avatarData then
		return
	end

	self.playerChoiceAvatarType = ConstantAvatar.AvatarType[self.avatarData['playerAvatarType']]

	self.characterManager = AvatarRigManager.new(r6Rig, r15Rig)
	self:applyTemplates(arrayOfTemplates)
	return self
end

function Avatar:applyTemplates(arrayOfTemplates)
	local description = createPlayerChoiceDescription(self)
	local morpherTemplate = arrayOfTemplates and arrayOfTemplates[next(arrayOfTemplates)]
	applyRigTypeFromTemplate(self, morpherTemplate)
	if morpherTemplate then
		morpherTemplate:apply(description)
	end

	spawn(function()
		if self.characterManager then
			self.characterManager:applyDescription(description)
		end
	end)
end

function Avatar:setPosition(transformCFrame)
	self.characterManager:setPosition(transformCFrame)
end

function Avatar:destroy()
	self.characterManager:stop()
end

local function populatePlayerChoiceAssets(description, allAssets)
	if allAssets then
		for _, asset in ipairs(allAssets) do
			if ConstantAvatar.AssetTypes.Hat == asset.assetType.id then
				description.HatAccessory = description.HatAccessory .. "," .. tostring(asset.id)
			elseif ConstantAvatar.AssetTypes.Hair == asset.assetType.id then
				description.HairAccessory = description.HairAccessory .. "," .. tostring(asset.id)
			elseif ConstantAvatar.AssetTypes.FaceAccessory == asset.assetType.id then
				description.FaceAccessory = description.FaceAccessory .. "," .. tostring(asset.id)
			elseif ConstantAvatar.AssetTypes.Neck == asset.assetType.id then
				description.NeckAccessory = description.NeckAccessory .. "," .. tostring(asset.id)
			elseif ConstantAvatar.AssetTypes.Shoulder == asset.assetType.id then
				description.ShouldersAccessory = description.ShouldersAccessory .. "," .. tostring(asset.id)
			elseif ConstantAvatar.AssetTypes.Front == asset.assetType.id then
				description.FrontAccessory = description.FrontAccessory .. "," .. tostring(asset.id)
			elseif ConstantAvatar.AssetTypes.Back == asset.assetType.id then
				description.BackAccessory = description.BackAccessory .. "," .. tostring(asset.id)
			elseif ConstantAvatar.AssetTypes.Waist == asset.assetType.id then
				description.WaistAccessory = description.WaistAccessory .. "," .. tostring(asset.id)

			elseif ConstantAvatar.AssetTypes.Shirt == asset.assetType.id then
				description.Shirt = asset.id
			elseif ConstantAvatar.AssetTypes.ShirtGraphic == asset.assetType.id then
				description.GraphicTShirt = asset.id
			elseif ConstantAvatar.AssetTypes.Pants == asset.assetType.id then
				description.Pants = asset.id

			elseif ConstantAvatar.AssetTypes.Face == asset.assetType.id then
				description.Face = asset.id
			elseif ConstantAvatar.AssetTypes.Head == asset.assetType.id then
				description.Head = asset.id
			elseif ConstantAvatar.AssetTypes.Torso == asset.assetType.id then
				description.Torso = asset.id
			elseif ConstantAvatar.AssetTypes.LeftArm == asset.assetType.id then
				description.LeftArm = asset.id
			elseif ConstantAvatar.AssetTypes.RightArm == asset.assetType.id then
				description.RightArm = asset.id
			elseif ConstantAvatar.AssetTypes.LeftLeg == asset.assetType.id then
				description.LeftLeg = asset.id
			elseif ConstantAvatar.AssetTypes.RightLeg == asset.assetType.id then
				description.RightLeg = asset.id
			end
		end
	end
end

local function populatePlayerChoiceScaling(description, scaling)
	if scaling then
		description.HeightScale = scaling['height'] or description.HeightScale
		description.WidthScale = scaling['width'] or description.WidthScale
		description.HeadScale = scaling['head'] or description.HeadScale
		description.DepthScale = scaling['depth'] or description.DepthScale
		description.BodyTypeScale = scaling['bodyType'] or description.BodyTypeScale
		description.ProportionScale = scaling['proportion'] or description.ProportionScale
	end
end

local function populatePlayerChoiceColors(description, colors)
	if colors then
		description.HeadColor = colors['headColorId'] and BrickColor.new(colors['headColorId']).Color
			or description.HeadColor
		description.TorsoColor = colors['torsoColorId'] and BrickColor.new(colors['torsoColorId']).Color
			or description.TorsoColor
		description.RightArmColor = colors['rightArmColorId'] and BrickColor.new(colors['rightArmColorId']).Color
			or description.RightArmColor
		description.LeftArmColor = colors['leftArmColorId'] and BrickColor.new(colors['leftArmColorId']).Color
			or description.LeftArmColor
		description.RightLegColor = colors['rightLegColorId'] and BrickColor.new(colors['rightLegColorId']).Color
			or description.RightLegColor
		description.LeftLegColor = colors['rightLegColorId'] and BrickColor.new(colors['rightLegColorId']).Color
			or description.LeftLegColor
	end
end

createPlayerChoiceDescription = function(self)
	local description = Instance.new("HumanoidDescription")

	populatePlayerChoiceAssets(description, self.avatarData['assets'])
	populatePlayerChoiceScaling(description, self.avatarData['scales'])
	populatePlayerChoiceColors(description, self.avatarData['bodyColors'])

	return description
end

applyRigTypeFromTemplate = function(self, template)
	if nil == template or template:isRigTypePlayerChoice() then
		self.characterManager:updateAvatarType(self.playerChoiceAvatarType)
	else
		self.characterManager:updateAvatarType(template.RigTypeValue)
	end
end

getAvatarData = function()
	local status, result = AvatarWebAPI.GetAvatarData()

	if status ~= AvatarWebAPI.Status.OK then
		warn("Avatar:getAvatarData() failure in AvatarWebAPI:GetAvatarData()")
		return
	end

	if result == nil then
		warn("Avatar:getAvatarData() failure in AvatarWebAPI:GetAvatarData() as result avatar data is nil")
	end
	return result
end

return Avatar