local Page = script.Parent.Parent

local ConstantAvatar = require(Page.Util.ConstantAvatar)
local ConstantScaleBoundaries = require(Page.Util.ConstantScaleBoundaries)
local ConstantTemplate = require(Page.Util.ConstantTemplate)
local UtilityFunctionsTable = require(Page.Util.UtilityFunctionsTable)

local Template = {}
Template.__index = Template

local createAssetsTable = nil
local createScalesTable = nil
local initializeAssets = nil
local initializeScalingMin = nil
local initializeScalingMax = nil
local makeAssetsOverridesCopy = nil
local makeScalesCopy = nil
local areScalesEqual = nil

local assetCategories = {
	ConstantAvatar.AssetTypes.Face,
	ConstantAvatar.AssetTypes.Head,
	ConstantAvatar.AssetTypes.Torso,
	ConstantAvatar.AssetTypes.LeftArm,
	ConstantAvatar.AssetTypes.RightArm,
	ConstantAvatar.AssetTypes.LeftLeg,
	ConstantAvatar.AssetTypes.RightLeg,
	ConstantAvatar.AssetTypes.Shirt,
	ConstantAvatar.AssetTypes.Pants,
	ConstantAvatar.AssetTypes.ShirtGraphic,
}

function Template.new(boundaries)
	local self = setmetatable({}, Template)

	createAssetsTable(self)

	local depthDefault = 0
	if boundaries then
		self.ScalesMin = createScalesTable(
			boundaries.height.min,
			boundaries.width.min,
			boundaries.head.min,
			boundaries.bodyType.min,
			boundaries.proportion.min,
			depthDefault
		)
		self.ScalesMax = createScalesTable(
			boundaries.height.max,
			boundaries.width.max,
			boundaries.head.max,
			boundaries.bodyType.max,
			boundaries.proportion.max,
			depthDefault
		)
	else
		boundaries = ConstantScaleBoundaries
		self.ScalesMin = createScalesTable(
			boundaries.Height.min,
			boundaries.Width.min,
			boundaries.Head.min,
			boundaries.BodyType.min,
			boundaries.Proportion.min,
			depthDefault
		)
		self.ScalesMax = createScalesTable(
			boundaries.Height.max,
			boundaries.Width.max,
			boundaries.Head.max,
			boundaries.BodyType.max,
			boundaries.Proportion.max,
			depthDefault
		)
	end

	self.CollisionValue = ConstantTemplate.OuterCollision
	self.AnimationValue = ConstantTemplate.PlayerChoice

	self.RigTypeValue = ConstantTemplate.PlayerChoice

	return self
end

function Template.makeCopy(toCopy)
	local self = Template.new()

	local specialCopyFunctions = {
		AssetsOverrides = makeAssetsOverridesCopy,
		ScalesMin = makeScalesCopy,
		ScalesMax = makeScalesCopy,
	}

	if toCopy then
		for key, value in pairs(toCopy) do
			local copyFunc = specialCopyFunctions[key] or function(input)
				return input
			end
			self[key] = copyFunc(value)
		end
	end

	return self
end

function Template.fromUniverseData(initialization)
	local self = Template.new()

	self.RigTypeValue = initialization.AvatarType or self.RigTypeValue
	self.AnimationValue = initialization.AvatarAnimation or self.AnimationValue
	self.CollisionValue = initialization.AvatarCollision or self.CollisionValue

	initializeAssets(self, initialization.AvatarAssetOverrides)
	initializeScalingMin(self, initialization.AvatarScalingMin)
	initializeScalingMax(self, initialization.AvatarScalingMax)

	return self
end

function Template:apply(playerChoiceDescription)
	playerChoiceDescription.HeightScale =
		math.clamp(playerChoiceDescription.HeightScale, self.ScalesMin.height, self.ScalesMax.height)
	playerChoiceDescription.WidthScale =
		math.clamp(playerChoiceDescription.WidthScale, self.ScalesMin.width, self.ScalesMax.width)
	playerChoiceDescription.HeadScale =
		math.clamp(playerChoiceDescription.HeadScale, self.ScalesMin.head, self.ScalesMax.head)
	playerChoiceDescription.BodyTypeScale =
		math.clamp(playerChoiceDescription.BodyTypeScale, self.ScalesMin.bodyType, self.ScalesMax.bodyType)
	playerChoiceDescription.ProportionScale =
		math.clamp(playerChoiceDescription.ProportionScale, self.ScalesMin.proportion, self.ScalesMax.proportion)

	local assetCategoriesToHumanoidDescriptionPropNames = {
		[ConstantAvatar.AssetTypes.Face] = "Face",
		[ConstantAvatar.AssetTypes.Head] = "Head",
		[ConstantAvatar.AssetTypes.Torso] = "Torso",
		[ConstantAvatar.AssetTypes.LeftArm] = "LeftArm",
		[ConstantAvatar.AssetTypes.RightArm] = "RightArm",
		[ConstantAvatar.AssetTypes.LeftLeg] = "LeftLeg",
		[ConstantAvatar.AssetTypes.RightLeg] = "RightLeg",
		[ConstantAvatar.AssetTypes.Shirt] = "Shirt",
		[ConstantAvatar.AssetTypes.Pants] = "Pants",
		[ConstantAvatar.AssetTypes.ShirtGraphic] = "GraphicTShirt",
	}

	for assetCategory, humanoidDescriptionPropName in pairs(assetCategoriesToHumanoidDescriptionPropNames) do
		if
			not self.AssetsOverrides[assetCategory].isPlayerChoice
			and 0 ~= self.AssetsOverrides[assetCategory].assetID
		then
			playerChoiceDescription[humanoidDescriptionPropName] = self.AssetsOverrides[assetCategory].assetID
		end
	end
end

function Template:extractAssetOverridesForSaving()
	local result = {}
	for _, typeId in ipairs(assetCategories) do
		local assetValue, assetPlayerChoiceValue = self:getAsset(typeId)
		result[#result + 1] = { assetTypeID = typeId, assetID = assetValue, isPlayerChoice = assetPlayerChoiceValue }
	end
	return result
end

function Template:extractScalingMinForSaving()
	return makeScalesCopy(self.ScalesMin)
end

function Template:extractScalingMaxForSaving()
	return makeScalesCopy(self.ScalesMax)
end

function Template:isAvatarTypeEqualTo(otherTemplate)
	return self.RigTypeValue == otherTemplate.RigTypeValue
end

function Template:isAnimationEqualTo(otherTemplate)
	return self.AnimationValue == otherTemplate.AnimationValue
end

function Template:isCollisionEqualTo(otherTemplate)
	return self.CollisionValue == otherTemplate.CollisionValue
end

function Template:areAssetsEqualTo(otherTemplate)
	for _, typeId in ipairs(assetCategories) do
		local assetValue, assetPlayerChoiceValue = self:getAsset(typeId)
		local otherAssetValue, otherAssetPlayerChoiceValue = otherTemplate:getAsset(typeId)

		if assetValue ~= otherAssetValue or assetPlayerChoiceValue ~= otherAssetPlayerChoiceValue then
			return false
		end
	end
	return true
end

function Template:areMinScalesEqualTo(otherTemplate)
	return areScalesEqual(self.ScalesMin, otherTemplate.ScalesMin)
end

function Template:areMaxScalesEqualTo(otherTemplate)
	return areScalesEqual(self.ScalesMax, otherTemplate.ScalesMax)
end

function Template:isRigTypePlayerChoice()
	return self.RigTypeValue == ConstantTemplate.PlayerChoice
end

function Template:isRigTypeR6()
	return self.RigTypeValue == ConstantTemplate.R6
end

function Template:isRigTypeR15()
	return self.RigTypeValue == ConstantTemplate.R15
end

function Template:setRigTypeR6()
	self.RigTypeValue = ConstantTemplate.R6
end

function Template:setRigTypeR15()
	self.RigTypeValue = ConstantTemplate.R15
end

function Template:setRigTypePlayerChoice()
	self.RigTypeValue = ConstantTemplate.PlayerChoice
end

function Template:isAnimationStandard()
	return self.AnimationValue == ConstantTemplate.AnimationStandard
end

function Template:isAnimationPlayerChoice()
	return self.AnimationValue == ConstantTemplate.PlayerChoice
end

function Template:setAnimationStandard()
	self.AnimationValue = ConstantTemplate.AnimationStandard
end

function Template:setAnimationPlayerChoice()
	self.AnimationValue = ConstantTemplate.PlayerChoice
end

function Template:isCollisionInnerBox()
	return self.CollisionValue == ConstantTemplate.InnerCollision
end

function Template:setCollisionInnerBox()
	self.CollisionValue = ConstantTemplate.InnerCollision
end

function Template:isCollisionOuterBox()
	return self.CollisionValue == ConstantTemplate.OuterCollision
end

function Template:setCollisionOuterBox()
	self.CollisionValue = ConstantTemplate.OuterCollision
end

function Template:setScaleHeightMin(val, boundaries)
	val = math.min(boundaries.height.max, val)
	val = math.max(boundaries.height.min, val)
	self.ScalesMin.height = val
end

function Template:setScaleWidthMin(val, boundaries)
	val = math.min(boundaries.width.max, val)
	val = math.max(boundaries.width.min, val)
	self.ScalesMin.width = val
end

function Template:setScaleHeadMin(val, boundaries)
	val = math.min(boundaries.head.max, val)
	val = math.max(boundaries.head.min, val)
	self.ScalesMin.head = val
end

function Template:setScaleBodyTypeMin(val, boundaries)
	val = math.min(boundaries.bodyType.max, val)
	val = math.max(boundaries.bodyType.min, val)
	self.ScalesMin.bodyType = val
end

function Template:setScaleProportionMin(val, boundaries)
	val = math.min(boundaries.proportion.max, val)
	val = math.max(boundaries.proportion.min, val)
	self.ScalesMin.proportion = val
end

function Template:setScaleHeightMax(val, boundaries)
	val = math.min(boundaries.height.max, val)
	val = math.max(boundaries.height.min, val)
	self.ScalesMax.height = val
end

function Template:setScaleWidthMax(val, boundaries)
	val = math.min(boundaries.width.max, val)
	val = math.max(boundaries.width.min, val)
	self.ScalesMax.width = val
end

function Template:setScaleHeadMax(val, boundaries)
	val = math.min(boundaries.head.max, val)
	val = math.max(boundaries.head.min, val)
	self.ScalesMax.head = val
end

function Template:setScaleBodyTypeMax(val, boundaries)
	val = math.min(boundaries.bodyType.max, val)
	val = math.max(boundaries.bodyType.min, val)
	self.ScalesMax.bodyType = val
end

function Template:setScaleProportionMax(val, boundaries)
	val = math.min(boundaries.proportion.max, val)
	val = math.max(boundaries.proportion.min, val)
	self.ScalesMax.proportion = val
end

function Template:getScaleHeightMin()
	return self.ScalesMin.height
end

function Template:getScaleWidthMin()
	return self.ScalesMin.width
end

function Template:getScaleHeadMin()
	return self.ScalesMin.head
end

function Template:getScaleBodyTypeMin()
	return self.ScalesMin.bodyType
end

function Template:getScaleProportionMin()
	return self.ScalesMin.proportion
end

function Template:getScaleHeightMax()
	return self.ScalesMax.height
end

function Template:getScaleWidthMax()
	return self.ScalesMax.width
end

function Template:getScaleHeadMax()
	return self.ScalesMax.head
end

function Template:getScaleBodyTypeMax()
	return self.ScalesMax.bodyType
end

function Template:getScaleProportionMax()
	return self.ScalesMax.proportion
end

function Template:setAsset(assetTypeID, newValue, newPlayerChoiceValue)
	if self.AssetsOverrides[assetTypeID] then
		if nil ~= newValue then
			self.AssetsOverrides[assetTypeID].assetID = newValue
		end

		if nil ~= newPlayerChoiceValue then
			self.AssetsOverrides[assetTypeID].isPlayerChoice = newPlayerChoiceValue
		end
	end
end

function Template:getAsset(assetTypeID)
	if self.AssetsOverrides[assetTypeID] then
		return self.AssetsOverrides[assetTypeID].assetID, self.AssetsOverrides[assetTypeID].isPlayerChoice
	end

	return nil, nil
end

createAssetsTable = function(self)
	self.AssetsOverrides = {}
	for _, assetTypeID in ipairs(assetCategories) do
		self.AssetsOverrides[assetTypeID] = { assetID = 0, isPlayerChoice = true }
	end
end

createScalesTable = function(heightVal, widthVal, headVal, bodyTypeVal, proportionVal, depthVal)
	return {
		height = heightVal,
		width = widthVal,
		head = headVal,
		bodyType = bodyTypeVal,
		proportion = proportionVal,
		depth = depthVal,
	}
end

initializeAssets = function(self, initialization)
	if initialization then
		for _, assetCategory in pairs(initialization) do
			self:setAsset(assetCategory.assetTypeID, assetCategory.assetID, assetCategory.isPlayerChoice)
		end
	end
end

initializeScalingMin = function(self, scaling)
	if scaling then
		self.ScalesMin = createScalesTable(
			scaling.height,
			scaling.width,
			scaling.head,
			scaling.bodyType,
			scaling.proportion,
			scaling.depth
		)
	end
end

initializeScalingMax = function(self, scaling)
	if scaling then
		self.ScalesMax = createScalesTable(
			scaling.height,
			scaling.width,
			scaling.head,
			scaling.bodyType,
			scaling.proportion,
			scaling.depth
		)
	end
end

makeAssetsOverridesCopy = function(assetsOverrides)
	local result = {}
	for typeId, data in pairs(assetsOverrides) do
		result[typeId] = { assetID = data.assetID, isPlayerChoice = data.isPlayerChoice }
	end
	return result
end

makeScalesCopy = function(scales)
	local result = {}
	for key, value in pairs(scales) do
		result[key] = value
	end
	return result
end

areScalesEqual = function(scales, otherScales)
	for key, val in pairs(scales) do
		if val ~= otherScales[key] then
			return false
		end
	end

	return UtilityFunctionsTable.countDictionaryKeys(scales) == UtilityFunctionsTable.countDictionaryKeys(otherScales)
end

return Template
