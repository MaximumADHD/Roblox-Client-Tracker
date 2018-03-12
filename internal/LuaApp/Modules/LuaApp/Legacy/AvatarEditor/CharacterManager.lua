-------------- CONSTANTS --------------
local MAX_RECENT_ASSETS = 200

-- These sync up with chat username color order. The last clothing is a teal
-- color instead of a tan color like the usernames.
-- Username color list: "Bright red", "Bright blue", "Earth green", "Bright violet",
-- "Bright orange", "Bright yellow", "Light reddish violet", "Brick yellow"
local BODY_COLOR_NAME_MAP = {
	["HeadColor"] = 'headColorId',
	["LeftArmColor"] = 'leftArmColorId',
	["LeftLegColor"] = 'leftLegColorId',
	["RightArmColor"] = 'rightArmColorId',
	["RightLegColor"] = 'rightLegColorId',
	["TorsoColor"] = 'torsoColorId',
}

local BODY_COLOR_MAPPED_PARTS = {
	['Head']			 = 'HeadColor',

	['Torso']			 = 'TorsoColor',
	['UpperTorso']		 = 'TorsoColor',
	['LowerTorso']		 = 'TorsoColor',

	['Left Arm']		 = 'LeftArmColor',
	['LeftUpperArm']	 = 'LeftArmColor',
	['LeftLowerArm']	 = 'LeftArmColor',
	['LeftHand']		 = 'LeftArmColor',

	['Left Leg']		 = 'LeftLegColor',
	['LeftUpperLeg']	 = 'LeftLegColor',
	['LeftLowerLeg']	 = 'LeftLegColor',
	['LeftFoot']		 = 'LeftLegColor',

	['Right Arm']		 = 'RightArmColor',
	['RightUpperArm']	 = 'RightArmColor',
	['RightLowerArm']	 = 'RightArmColor',
	['RightHand']		 = 'RightArmColor',

	['Right Leg']		 = 'RightLegColor',
	['RightUpperLeg']	 = 'RightLegColor',
	['RightLowerLeg']	 = 'RightLegColor',
	['RightFoot']		 = 'RightLegColor',
}

local DEFAULT_SCALES = {
	Height = 1.00,
	Width = 1.00,
	Depth = 1.00,
	Head = 1.00,
}

local DEFAULT_BODY_COLORS = {
	["HeadColor"] = 194,
	["LeftArmColor"] = 194,
	["LeftLegColor"] = 194,
	["RightArmColor"] = 194,
	["RightLegColor"] = 194,
	["TorsoColor"] = 194,
}

-------------- SERVICES --------------
local HttpService = game:GetService('HttpService')
local MarketplaceService = game:GetService('MarketplaceService')
local InsertService = game:GetService('InsertService')
local CoreGui = game:GetService('CoreGui')

------------ MODULES -------------------
local Modules = CoreGui:FindFirstChild("RobloxGui").Modules

local DefaultClothesIds = require(Modules.LuaApp.Legacy.AvatarEditor.DefaultClothesIds)
local AssetTypeNames = require(Modules.LuaApp.Legacy.AvatarEditor.AssetTypeNames)
local Categories = require(Modules.LuaApp.Legacy.AvatarEditor.Categories)
local AssetInfo = require(Modules.LuaApp.Legacy.AvatarEditor.AssetInfo)
local Urls = require(Modules.LuaApp.Legacy.AvatarEditor.Urls)
local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfo)
local ParticleScreen = require(Modules.LuaApp.Legacy.AvatarEditor.ParticleScreen)

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)

local SetOutfit = require(Modules.LuaApp.Actions.SetOutfit)
local SetBodyColors = require(Modules.LuaApp.Actions.SetBodyColors)
local SetScales = require(Modules.LuaApp.Actions.SetScales)
local SetAssets = require(Modules.LuaApp.Actions.SetAssets)
local SetAvatarType = require(Modules.LuaApp.Actions.SetAvatarType)

local function getModule(moduleName)
	return script.Parent:FindFirstChild(moduleName)
end

local tween = require(getModule('TweenPropertyController')).tween
local easeFilters = require(getModule('EaseFilters'))

----------- UTILITIES --------------
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local TableUtilities = require(Modules.LuaApp.TableUtilities)

-------------- FFLAGS --------------
local AvatarEditorAnthroSliders =
	Flags:GetFlag("AvatarEditorAnthroSlidersUIOnly") and
	Flags:GetFlag("AvatarEditorUseNewCommonAction")
local FixApplyTShirtOnR6Character = Flags:GetFlag("FixApplyTShirtOnR6Character")
local AvatarEditorSelectivelyUseDefaultAsset = Flags:GetFlag("AvatarEditorSelectivelyUseDefaultAsset")

local AvatarEditorRecomputeCameraLookAt =
	Flags:GetFlag("AvatarEditorRecomputeCameraLookAt")

if AvatarEditorAnthroSliders then
	DEFAULT_SCALES = {
		Height = 1.00,
		Width = 1.00,
		Depth = 1.00,
		Head = 1.00,
		BodyType = 0.00,
		Proportion = 0.00,
	}
end

local useAnthroValues = Flags:GetFlag("UseAnthroValues5")


----------- CLASS DECLARATION --------------

return function(webServer, characterTemplates, defaultClothesIndex)
	local this = {}

	local isInitialAssets = true
	local recentAssetLists = {}
	local assetsLinkedContent = {}

	local savedWearingAssets = {}
	local savedAvatarType = nil
	local savedScales = DEFAULT_SCALES
	local savedBodyColors = DEFAULT_BODY_COLORS

	local wearOutfitRequestCount = 0

	local resumeAnimationEvent = Instance.new('BindableEvent')
	local currentLookAroundAnimation = 0
	local currentAnimationPreview = nil

	local defaultAnimation = 'IdleAnimation'
	local rootAnimationRotation = {x=0, y=0, z=0}
	local animationIsPaused = false

	local defaultShirtModel = nil
	local defaultPantsModel = nil

	local myDefaultShirtTemplate = nil
	local myDefaultPantsTemplate = nil

	local templateCharacterR6 = characterTemplates['CharacterR6']
	local templateCharacterR15 = characterTemplates['CharacterR15']

	local waitingForInitialLoad = true

	local characterNode = nil
	local currentCharacter

	-- Can delete partRestingOffsets along with AvatarEditorRecomputeCameraLookAt clean up
	local partRestingOffsets = {}
	local toolHoldAnimationTrack = nil
	local itemsOnR15 = {}

	local buildingCharacterLock = false
	local queuedRebuild = ""

	local createR15Rig = function() end
	local createR6Rig = function() end
	local updateCamera = function() end

	local minDeltaEBodyColorDifference = 0

	local cachedOldState
	local cachedNewState
	local handleStateChanged


	ParticleScreen.init()

	-- initDefaultClothes
	Utilities.fastSpawn(function()
		local myColorIndex = ((defaultClothesIndex-1) % DefaultClothesIds.getDefaultClothesCount()) + 1
		myDefaultShirtTemplate = InsertService:LoadAsset(
			DefaultClothesIds.getDefaultShirtIds()[myColorIndex]):GetChildren()[1]
		myDefaultShirtTemplate.Name = 'ShirtDefault'
		myDefaultPantsTemplate = InsertService:LoadAsset(
			DefaultClothesIds.getDefaultPantIds()[myColorIndex]):GetChildren()[1]
		myDefaultPantsTemplate.Name = 'PantsDefault'
	end)

	local function getRecentAssetList(name)
		return recentAssetLists[name]
	end

	local function createRecentAssetList(name)
		recentAssetLists[name] = {}
		return getRecentAssetList(name)
	end

	function this.getOrCreateRecentAssetList(name)
		return getRecentAssetList(name) or createRecentAssetList(name)
	end

	local function removeFromRecentAssetList(name, index)
		table.remove(this.getOrCreateRecentAssetList(name), index)
	end

	function this.addToRecentAssetList(name, item)
		local list = this.getOrCreateRecentAssetList(name)

		for i=#list, 1, -1 do
			if list[i] == item then
				removeFromRecentAssetList(name, i)
			end
		end

		table.insert(list, 1, item)
		while #list > MAX_RECENT_ASSETS do
			removeFromRecentAssetList(name, MAX_RECENT_ASSETS)
		end
	end

	local function addAssetToRecentAssetList(assetId)
		-- add to the All list
		this.addToRecentAssetList('allAssets', assetId)

		-- add to specific lists
		Utilities.fastSpawn(function()
			local assetInfo = AssetInfo.getAssetInfo(assetId)
			if assetInfo then
				local assetTypeName = AssetTypeNames[assetInfo.AssetTypeId] or 'Failed Name'
				if string.find(assetTypeName, 'Accessory')
					or assetTypeName == 'Shirt'
					or assetTypeName == 'Pants'
					or assetTypeName == 'Gear'
					or assetTypeName == 'Hat'
					or assetTypeName == '' then
					this.addToRecentAssetList('clothing', assetId)
				elseif assetTypeName == 'Left Arm'
					or assetTypeName == 'Left Leg'
					or assetTypeName == 'Right Arm'
					or assetTypeName == 'Right Leg'
					or assetTypeName == 'Head'
					or assetTypeName == 'Torso'
					or assetTypeName == 'Face' then
					this.addToRecentAssetList('body', assetId)
				elseif string.find(assetTypeName, 'Animation') then
					this.addToRecentAssetList('animation', assetId)
				end
			end
		end)
	end


	local function getAllEquippedAssets()
		local result = {}
		local assets = AppState.Store:GetState().Character.Assets

		for _, assetList in pairs(assets) do
			for _, assetId in pairs(assetList) do
				table.insert(result, assetId)
			end
		end

		return result
	end

	local function getAvatarType()
		return AppState.Store:GetState().Character.AvatarType
	end

	local function getScales()
		return AppState.Store:GetState().Character.Scales
	end

	local function getBodyColors()
		return AppState.Store:GetState().Character.BodyColors
	end

	local function setSavedScales(scales)
		savedScales = Utilities.copyTable(scales)
	end

	local function setSavedBodyColors(colors)
		savedBodyColors = Utilities.copyTable(colors)
	end

	local function syncSaved()
		savedWearingAssets = getAllEquippedAssets()
	end


	function this.isWearingAssetType(assetTypeName)
		for _, assetId in pairs(getAllEquippedAssets()) do
			if AssetTypeNames[AssetInfo.getAssetInfo(assetId)] == assetTypeName then
				return true
			end
		end
		return false
	end

	function this.getCompleteAssetInfo(assetId)
		-- Ensures that certain fields are filled out.  The new web endpoint doesn't return descriptions
		-- so we need to get them as we need them.
		local assetInfo = AssetInfo.getAssetInfo(assetId)

		if assetInfo and not assetInfo.Description then
			local productInfo = MarketplaceService:GetProductInfo(assetId)
			assetInfo.Description = productInfo.Description
		end

		return assetInfo
	end

	function this.findIfEquipped(assetId)
		for _,currentAssetId in pairs(getAllEquippedAssets()) do
			if currentAssetId == assetId then
				return true
			end
		end
		return false
	end


	function this.saveToServer(doWait)
		if waitingForInitialLoad then
			warn("Did not save because initial character hasn't fully loaded")
			return
		end
		local bodyColorsFinished = false
		Utilities.fastSpawn(function()
			if not this.Destroyed then
				local bodyColorsChanged = false
				local bodyColors = getBodyColors()
				for index, value in pairs(bodyColors) do
					if value ~= savedBodyColors[index] then
						bodyColorsChanged = true
						break
					end
				end
				if bodyColorsChanged then
					local sendingBodyColorsTable = {}
					for name,sendingName in pairs(BODY_COLOR_NAME_MAP) do
						sendingBodyColorsTable[sendingName] = bodyColors[name]
					end
					local sendingBodyColorsData = HttpService:JSONEncode(sendingBodyColorsTable)
					local successfulSave = webServer.post(Urls.avatarUrlPrefix.."/v1/avatar/set-body-colors", sendingBodyColorsData)
					if successfulSave then
						setSavedBodyColors(bodyColors)
					else
						warn('Failure Saving BodyColors')
					end
				end
			end
			bodyColorsFinished = true
		end)

		local scalesFinished = false

		local function finishSavingScales()
			if not this.Destroyed then
				local scalesChanged = false
				local scales = getScales()
				for index, value in pairs(scales) do
					if value ~= savedScales[index] then
						scalesChanged = true
						break
					end
				end
				if scalesChanged then
					local sendingScalesData
					if AvatarEditorAnthroSliders then
						sendingScalesData =
						'{"depth":'
						..string.format("%.4f", scales.Depth)
						..',"height":'
						..string.format("%.4f", scales.Height)
						..',"width":'
						..string.format("%.4f", scales.Width)
						..',"head":'
						..string.format("%.4f", scales.Head)
						..',"bodyType":'
						..string.format("%.4f", scales.BodyType)
						..',"proportion":'
						..string.format("%.4f", scales.Proportion)
						..'}'
					else
						sendingScalesData =
						'{"depth":'
						..string.format("%.4f", scales.Depth)
						..',"height":'
						..string.format("%.4f", scales.Height)
						..',"width":'
						..string.format("%.4f", scales.Width)
						..',"head":'
						..string.format("%.4f", scales.Head)
						..'}'
					end

					local successfulSave = webServer.post(Urls.avatarUrlPrefix.."/v1/avatar/set-scales", sendingScalesData)
					if successfulSave then
						setSavedScales(scales)
					else
						warn('Failure Saving Scales')
					end
				end
			end
			scalesFinished = true
		end

		Utilities.fastSpawn(finishSavingScales)

		local avatarTypeFinished = false
		Utilities.fastSpawn(function()
			if not this.Destroyed then
				local newAvatarType = getAvatarType()
				local avatarTypeChanged = savedAvatarType ~= newAvatarType
				if avatarTypeChanged then
					local successfulSave = webServer.post(Urls.avatarUrlPrefix.."/v1/avatar/set-player-avatar-type",
						'{"playerAvatarType":"'..newAvatarType..'"}')
					if successfulSave then
						savedAvatarType = newAvatarType
					else
						warn('Failure Saving AvatarType')
					end
				end
			end
			avatarTypeFinished = true
		end)

		local assetsFinished = false
		Utilities.fastSpawn(function()
			if not this.Destroyed then
				local assetsChanged = false
				local currentlyWearing = getAllEquippedAssets()
				for index, value in pairs(currentlyWearing) do
					if value ~= savedWearingAssets[index] then
						assetsChanged = true
						break
					end
				end
				for index, value in pairs(savedWearingAssets) do
					if value ~= currentlyWearing[index] then
						assetsChanged = true
						break
					end
				end
				if assetsChanged then

					local sendingAssetsData = HttpService:JSONEncode({['assetIds']=currentlyWearing})
					local successfulSave =
						webServer.post(
							Urls.avatarUrlPrefix.."/v1/avatar/set-wearing-assets", sendingAssetsData)
					if successfulSave then
						savedWearingAssets = Utilities.copyTable(currentlyWearing)
					else
						warn('Failure Saving WearingAssets')
					end
				end
			end
			assetsFinished = true
		end)

		if doWait then
			while not (bodyColorsFinished
					and avatarTypeFinished
					and assetsFinished
					and scalesFinished) do
				wait()
			end
			return
		end
	end

	-- Can delete along with AvatarEditorRecomputeCameraLookAt clean up
	local function getRestingPartOffset(partName)
		return partRestingOffsets[partName] or CFrame.new()
	end

	-- Can delete along with AvatarEditorRecomputeCameraLookAt clean up
	local function recalculateRestingPartOffsets()
		local root = currentCharacter:FindFirstChild('HumanoidRootPart')

		local joints = {}
		for _, v in next, Utilities.getDescendants(currentCharacter) do
			if v:IsA('Motor6D') then
				if joints[v.Part0] == nil then
					joints[v.Part0] = {v}
				else
					table.insert(joints[v.Part0], v)
				end
				if joints[v.Part1] == nil then
					joints[v.Part1] = {v}
				else
					table.insert(joints[v.Part1], v)
				end
			end
		end

		if root then
			local open = {[root]=CFrame.new()}
			local closed = {[root]=CFrame.new()}

			while next(open) do
				local newOpen = {}
				for part, cframe in next, open do
					if joints[part] then
						for _, joint in next, joints[part] do
							local thisCFrame
							local other

							if joint.Part1 == part then
								other = joint.Part0
								thisCFrame = cframe * joint.C1 * joint.C0:inverse()
							else
								other = joint.Part1
								thisCFrame = cframe * joint.C0 * joint.C1:inverse()
							end

							if other and not closed[other] then
								newOpen[other] = thisCFrame
								closed[other] = thisCFrame
							end
						end
					end
				end
				open = newOpen
			end

			partRestingOffsets = {}
			for part, cframe in next, closed do
				partRestingOffsets[part.Name] = cframe
			end
		end
	end


	local function getCharacterNode()
		if this.Destroyed then
			return nil
		else
			if characterNode == nil then
				characterNode = Instance.new("Folder")
			end
			return characterNode
		end
	end


	local function humanoidLoadAnimation(animation)
		local characterNodeParent = getCharacterNode().Parent
		getCharacterNode().Parent = game.Workspace
		local humanoid = currentCharacter:WaitForChild('Humanoid')
		local result = humanoid:LoadAnimation(animation)
		getCharacterNode().Parent = characterNodeParent
		return result
	end


	local function holdToolPos(state)
		if toolHoldAnimationTrack then
			toolHoldAnimationTrack:Stop()
			toolHoldAnimationTrack = nil
		end
		if currentCharacter and currentCharacter.Parent then
			local humanoid = currentCharacter:WaitForChild('Humanoid')
			if humanoid and humanoid:IsDescendantOf(game.Workspace) and state == 'Up' then
				local animationsFolder = currentCharacter:FindFirstChild('Animations')
				if animationsFolder then
					local toolHoldAnimationObject = animationsFolder:FindFirstChild('Tool')
					if toolHoldAnimationObject then
						toolHoldAnimationTrack = humanoidLoadAnimation(toolHoldAnimationObject)
						toolHoldAnimationTrack:Play(0)
					end
				end
			end
		end
	end

	local function findFirstMatchingAttachment(model, name)
		if model and name then
			for _, child in pairs(model:GetChildren()) do
				if child then
					if child:IsA('Attachment') and (not name or child.Name == name) then
						return child
					elseif child:IsA('Accoutrement') ~= true and child:IsA('Tool') ~= true then
						local foundAttachment = findFirstMatchingAttachment(child, name)
						if foundAttachment then
							return foundAttachment
						end
					end
				end
			end
		end
	end

	local function buildWeld(part0, part1, c0, c1, weldName)
		local weld = Instance.new('Weld')
		weld.C0 = c0
		weld.C1 = c1
		weld.Part0 = part0
		weld.Part1 = part1
		weld.Name = weldName
		weld.Parent = part0
		return weld
	end

	local function equipItemToCharacter(item)		-- Item should be an accessory or tool.
		if item and currentCharacter then
			item.Parent = currentCharacter
			local handle = item:FindFirstChild('Handle')
			if handle then
				handle.CanCollide = false

				local attachment = Utilities.findFirstChildOfType(handle,'Attachment')
				local matchingAttachment = nil
				local matchingAttachmentPart = nil
				if attachment then
					matchingAttachment = findFirstMatchingAttachment(currentCharacter, attachment.Name)
					if matchingAttachment then
						matchingAttachmentPart = matchingAttachment.Parent
					end
				end
				if matchingAttachmentPart then	-- This infers that both attachments were found
					buildWeld(
						handle,
						matchingAttachmentPart,
						attachment.CFrame,
						matchingAttachment.CFrame,
						"AccessoryWeld")
				else
					if item:IsA('Accoutrement') then
						local head = currentCharacter:FindFirstChild('Head')
						if head then
							buildWeld(handle, head, item.AttachmentPoint, CFrame.new(0,.5,0), "AccessoryWeld")
						end
					elseif item:IsA('Tool') then
						local rightHand = currentCharacter:FindFirstChild('RightHand')
						local rightArm = currentCharacter:FindFirstChild('Right Arm')
						if rightHand then
							local gripCF = CFrame.new(0.0108650923, -0.168664441, -0.0154389441, 1, 0, -0, 0,
								6.12323426e-017, 1, 0, -1, 6.12323426e-017)
							buildWeld(handle, rightHand, item.Grip, gripCF, "RightGrip")
						elseif rightArm then
							local gripCF = CFrame.new(Vector3.new(0,-1,0))*CFrame.Angles(-math.pi*.5,0,0)
							buildWeld(handle, rightArm, item.Grip, gripCF, "RightGrip")
						end
					end

				end
			end
		end
	end


	local function sortAndEquipItemToCharacter(character, thing, assetInsertedContentList)
		if thing then
			if not FixApplyTShirtOnR6Character and
				thing.className == 'ShirtGraphic' then
				return
			end

			Utilities.recursiveDisable(thing)

			if thing:IsA("DataModelMesh") then				-- Head mesh
				local head = currentCharacter:FindFirstChild('Head')
				if head then
					local replacedAsset = Utilities.findFirstChildOfType(head, "DataModelMesh")
					if replacedAsset then
						replacedAsset:Destroy()
					end
					thing.Parent = head
					table.insert(assetInsertedContentList, thing)
				end

			elseif thing:IsA("Decal") then					-- Face
				local head = currentCharacter:FindFirstChild('Head')
				if head then
					local replacedAsset = Utilities.findFirstChildOfType(head, "Decal")
					if replacedAsset then
						replacedAsset:Destroy()
					end
					thing.Parent = head
					table.insert(assetInsertedContentList, thing)
				end

			elseif thing:IsA("CharacterAppearance") then	-- Thing, just parent it.
				thing.Parent = currentCharacter
				table.insert(assetInsertedContentList, thing)

			elseif thing:IsA("Accoutrement") then			-- Hat
				equipItemToCharacter(thing)
				table.insert(assetInsertedContentList, thing)

			elseif thing:IsA("Tool") then					-- Gear
				equipItemToCharacter(thing)
				table.insert(assetInsertedContentList, thing)
				holdToolPos('Up')
			end
		end
	end


	local function replaceHead(newMesh)
		if currentCharacter then
			if currentCharacter:FindFirstChild('Head') and currentCharacter.Head:FindFirstChild('Mesh') then
				currentCharacter.Head.Mesh:Destroy()
			end

			newMesh.Parent = currentCharacter.Head
		end
	end


	local function replaceFace(newFace)
		if currentCharacter then
			if currentCharacter:FindFirstChild('Head') and currentCharacter.Head:FindFirstChild('face') then
				currentCharacter.Head.face:Destroy()
			end

			newFace.Parent = currentCharacter.Head
		end
	end


	local function repositionR15Joints(joints)
		for _, v in next, joints or Utilities.getDescendants(currentCharacter) do
			if v:IsA('JointInstance') then
				local attachment0 = v.Part0:FindFirstChild(v.Name..'RigAttachment')
				local attachment1 = v.Part1:FindFirstChild(v.Name..'RigAttachment')

				if attachment0 and attachment1 then
					v.C0 = attachment0.CFrame
					v.C1 = attachment1.CFrame
				end
			end
		end
	end

	local function adjustHeightToStandOnPlatform(character)
		local hrp = character:WaitForChild('HumanoidRootPart')
		local humanoid = character:WaitForChild('Humanoid')

		local heightBonus = 3
		if getAvatarType() == "R15" then
			heightBonus = hrp.Size.y * 0.5
		end

		heightBonus = heightBonus + humanoid.HipHeight

		local _,_,_, r0,r1,r2, r3,r4,r5, r6,r7,r8 = hrp.CFrame:components()

		hrp.CFrame = CFrame.new(
			15.2762, heightBonus + 0.7100, -16.8212,
			r0,r1,r2, r3,r4,r5, r6,r7,r8 )
	end

	local function engineScaleCharacter(character, newScale)
		if getAvatarType() == 'R6' then return end

		local humanoid = character and character.Humanoid

		local function applyScaleProperty(name, scale)
			local tag = humanoid and humanoid:FindFirstChild(name)
			if tag == nil then
				tag = Instance.new('NumberValue')
				tag.Name = name
				tag.Parent = humanoid
			end
			tag.Value = scale
		end

		if humanoid then
			applyScaleProperty('BodyDepthScale', newScale.Depth)
			applyScaleProperty('BodyHeightScale', newScale.Height)
			applyScaleProperty('BodyWidthScale', newScale.Width)
			applyScaleProperty('HeadScale', newScale.Head)
			applyScaleProperty('BodyTypeScale', newScale.BodyType)
			applyScaleProperty('BodyProportionScale', newScale.Proportion)
			humanoid:BuildRigFromAttachments()
			adjustHeightToStandOnPlatform(character)
		end
	end

	local function scaleCharacter(character, newBodyScale, newHeadScale)
		if getAvatarType() == 'R6' then return end

		local humanoid = character:WaitForChild('Humanoid')

		local bodyScaleVector = newBodyScale
		local headScaleVector = Vector3.new(newHeadScale, newHeadScale, newHeadScale)

		local jointInfo = {}
		local parts = {}
		local joints = {}

		for _, child in next, Utilities.getDescendants(character) do
			if child:IsA('JointInstance') then
				jointInfo[child] = {Part0=child.Part0, Part1=child.Part1, Parent=child.Parent}
				table.insert(joints, child)
			end
		end

		for _, part in next, character:GetChildren() do
			if part:IsA('BasePart') and part.Name ~= 'HumanoidRootPart' then
				local defaultScale = part:FindFirstChild('DefaultScale')
					and part.DefaultScale.Value or Vector3.new(1, 1, 1)

				local originalSize = part:FindFirstChild('OriginalSize') and part.OriginalSize.Value
				if not originalSize then
					local value = Instance.new'Vector3Value'
					value.Name = 'OriginalSize'
					value.Value = part.Size
					value.Parent = part
					originalSize = value.Value
				end

				local newScaleVector3 = part.Name == 'Head' and headScaleVector or bodyScaleVector
				local currentScaleVector3 = part.Size/originalSize * defaultScale
				local relativeScaleVector3 = newScaleVector3/currentScaleVector3

				for _, child in next, part:GetChildren() do
					if child:IsA('Attachment') then
						local pivot = child.Position
						child.Position = pivot * relativeScaleVector3
					elseif child:IsA('SpecialMesh') then
						child.Scale = child.Scale * relativeScaleVector3
					end
				end

				part.Size = originalSize * newScaleVector3/defaultScale

				table.insert(parts, part)
			end
		end

		for joint, info in next, jointInfo do
			joint.Part0 = info.Part0
			joint.Part1 = info.Part1
			joint.Parent = info.Parent
		end

		for _, part in next, parts do
			part.Parent = character
		end

		repositionR15Joints(joints)

		humanoid.HipHeight = 1.5 * newBodyScale.y
	end


	local function refreshCharacterScale(character)
		local scales = getScales()
		if AvatarEditorAnthroSliders then
			engineScaleCharacter(character, scales)
		else
			scaleCharacter(
				character,
				Vector3.new(
					scales.Width,
					scales.Height,
					scales.Depth),
				scales.Head
			)
		end
	end


	local function updateCharacterBodyColors(bodyColors)
		bodyColors = bodyColors or getBodyColors()
		if currentCharacter then
			for _,v in pairs(currentCharacter:GetChildren()) do
				local foundLink = BODY_COLOR_MAPPED_PARTS[v.Name]
				if v:IsA('BasePart') and foundLink then
					local bodyColorNumber = bodyColors[foundLink]
					if bodyColorNumber then
						v.BrickColor = BrickColor.new(bodyColorNumber)
					end
				end
			end
		end
	end

	local function amendR15ForItemAddedAsModel(character, model)
		local info = {
			easyRemove = {},
			replacesR15Parts = {},
			replacesHead = false,
			replacesFace = false,
			hasTool = false
		}
		local bodyStuff = {}
		local otherStuff = {}

		-- Collect assets
		local stuff = {model}
		if stuff[1].ClassName == 'Model' then
			stuff = stuff[1]:GetChildren()
		end
		for _, thing in next, stuff do
			if thing.Name:lower() == 'r15' then
				for _, piece in next, thing:GetChildren() do
					table.insert(bodyStuff, piece)
				end
			elseif thing.Name:lower() ~= 'r6' then
				table.insert(otherStuff, thing)
			end
		end

		-- Replace body parts
		for _, thing in next, bodyStuff do
			if thing:IsA('MeshPart') then
				info.replacesR15Parts[thing.Name] = true

				if thing.Size.magnitude <= 0.002 then -- lua can't resize parts below 0.2, so just make them invisible
					thing.Transparency = 1
				end

				local oldThing = character:FindFirstChild(thing.Name)
				if oldThing then
					local thingClone = thing:Clone()

					if not useAnthroValues then
						thing.Parent = character
					end

					local repositionTheseJoints = {}

					-- Reassign old joints, move important stuff to the new part
					for _, v in next, Utilities.getDescendants(character) do
						if v:IsA('JointInstance') then
							if v.Part0 == oldThing then
								v.Part0 = thing
								table.insert(repositionTheseJoints, v)
							elseif v.Part1 == oldThing then
								v.Part1 = thing
								table.insert(repositionTheseJoints, v)
							end
							if v.Parent == oldThing then
								if thing:FindFirstChild(v.Name) then
									thing[v.Name]:Destroy()
								end
								v.Parent = thing
							end
						elseif v:IsA('Attachment') then
							if v.Parent == oldThing then
								if thing:FindFirstChild(v.Name) then
									thing[v.Name]:Destroy()
								end
								if useAnthroValues and v:FindFirstChild("OriginalPosition") then
									v["OriginalPosition"]:Destroy()
								end

								v.Parent = thing
							end
						end
					end

					oldThing:Destroy()

					for _, v in next, thing:GetChildren() do
						if v:IsA('Attachment') then
							if thingClone:FindFirstChild(v.Name) then
								v.CFrame = thingClone[v.Name].CFrame
								v.Axis = thingClone[v.Name].Axis
								v.SecondaryAxis = thingClone[v.Name].SecondaryAxis
							end
						end
					end

					if useAnthroValues then
						thing.Parent = character
					end

					repositionR15Joints(repositionTheseJoints)
				end
			else
				table.insert(otherStuff, thing)
			end
		end

		-- Equip tool
		for _, thing in next, otherStuff do
			if thing:IsA('DataModelMesh') then
				info.replacesHead = true
				replaceHead(thing)
			elseif thing:IsA('Decal') then
				info.replacesFace = true
				replaceFace(thing)
			elseif thing:IsA('CharacterAppearance') then
				thing.Parent = character
				table.insert(info.easyRemove, thing)

				-- have to refresh the character texture because clothes dont update
				character.Head.Transparency = character.Head.Transparency+1
				character.Head.Transparency = character.Head.Transparency-1
			elseif thing:IsA('Accoutrement') then
				equipItemToCharacter(thing)
				table.insert(info.easyRemove, thing)
			elseif thing:IsA('Tool') then
				equipItemToCharacter(thing)
				table.insert(info.easyRemove, thing)
				holdToolPos('Up')
				info.hasTool = true
			end
		end

		refreshCharacterScale(character)
		updateCharacterBodyColors()

		return info
	end



	local function replaceR15PartWithDefault(character, assetId, replaceParts)
		local info = itemsOnR15[assetId]
		itemsOnR15[assetId] = nil

		if info then
			if info.easyRemove then
				for _, v in next, info.easyRemove do
					v:Destroy()
				end
			end
			if (not AvatarEditorSelectivelyUseDefaultAsset) or replaceParts then
				if info.replacesR15Parts then
					local replaceFolder = Instance.new'Folder'
					replaceFolder.Name = 'R15'

					for v in next, info.replacesR15Parts do
						if templateCharacterR15:FindFirstChild(v) then
							templateCharacterR15[v]:Clone().Parent = replaceFolder
						end
					end

					amendR15ForItemAddedAsModel(character, replaceFolder)
				end
			end
			if info.replacesHead then
				replaceHead(templateCharacterR15.Head.Mesh:Clone())
			end
			if info.replacesFace then
				replaceFace(templateCharacterR15.Head.face:Clone())
			end
			if info.hasTool then
				holdToolPos('Down')
			end

			updateCharacterBodyColors()
		end
	end


	local function amendR15ForItemAdded(character, assetId, areDefaultReplacementsRequired)
		-- InsertService:LoadAsset() is a yeilding call and will break the store. So this needs to be spawned
		spawn(function()
			replaceR15PartWithDefault(character, assetId, areDefaultReplacementsRequired)

			local model = InsertService:LoadAsset(assetId)
			Utilities.recursiveDisable(model)

			local stillWearing = false
			local currentlyWearing = getAllEquippedAssets()
			for _, v in next, currentlyWearing do
				if v == assetId then
					stillWearing = true
					break
				end
			end

			if not stillWearing then return end

			local info = amendR15ForItemAddedAsModel(character, model)

			itemsOnR15[assetId] = info
		end)
	end


	local function dismissCurrentCharacter()
		if currentCharacter then
			currentCharacter.Parent = nil
			currentCharacter = nil
		end
	end


	local function replaceCurrentCharacter(newCharacter)
		dismissCurrentCharacter()

		newCharacter.Name = "Character"
		if getCharacterNode() then
			newCharacter.Parent = getCharacterNode()

			currentCharacter = newCharacter

			for assetId, contentList in pairs(assetsLinkedContent) do
				for _,item in pairs(contentList) do
					if item then
						item:Destroy()
					end
				end
				assetsLinkedContent[assetId] = nil
			end

			local hrp = newCharacter:WaitForChild('HumanoidRootPart')
			hrp.Anchored = true

if not AvatarEditorRecomputeCameraLookAt then
			recalculateRestingPartOffsets()
end
		end
	end

	local function updateDefaultShirtAndPants()
		if currentCharacter == nil or waitingForInitialLoad then return end

		-- These two if-checks are for cases where the character might be destroyed.
		if defaultShirtModel and not currentCharacter:IsAncestorOf(defaultShirtModel) then
			defaultShirtModel:Destroy()
			defaultShirtModel = nil
		end
		if defaultPantsModel and not currentCharacter:IsAncestorOf(defaultPantsModel) then
			defaultPantsModel:Destroy()
			defaultPantsModel = nil
		end

		local hasShirt = false
		local hasPants = false
		for _, assetId in pairs(getAllEquippedAssets()) do
			local assetTypeName = AssetTypeNames[AssetInfo.getAssetInfo(assetId).AssetTypeId]
			if assetTypeName == "Shirt" then
				hasShirt = true
			elseif assetTypeName == "Pants" then
				hasPants = true
			end
		end

		local characterShouldHaveDefaultShirt = not hasShirt and not hasPants
		local characterShouldHaveDefaultPants = not hasPants

		if characterShouldHaveDefaultShirt or characterShouldHaveDefaultPants then
			local rightLegColor = Color3.new(0, 0, 0)
			local leftLegColor = Color3.new(0, 0, 0)
			local torsoColor = Color3.new(0, 0, 0)
			local bodyColors = getBodyColors()
			for index, value in pairs(bodyColors) do
				if index == "RightLegColor" then
					rightLegColor = BrickColor.new(value).Color
				elseif index == "LeftLegColor" then
					leftLegColor = BrickColor.new(value).Color
				elseif index == "TorsoColor" then
					torsoColor = BrickColor.new(value).Color
				end
			end
			local minDeltaE = math.min(
				Utilities.delta_CIEDE2000(rightLegColor, torsoColor),
				Utilities.delta_CIEDE2000(leftLegColor, torsoColor))

			characterShouldHaveDefaultShirt =
				minDeltaE <= minDeltaEBodyColorDifference and characterShouldHaveDefaultShirt
			characterShouldHaveDefaultPants =
				minDeltaE <= minDeltaEBodyColorDifference and characterShouldHaveDefaultPants
		end

		Utilities.fastSpawn(function()
			if characterShouldHaveDefaultShirt and not defaultShirtModel then
				while not myDefaultShirtTemplate do wait() end
				defaultShirtModel = myDefaultShirtTemplate:clone()
				defaultShirtModel.Parent = currentCharacter
			elseif not characterShouldHaveDefaultShirt and defaultShirtModel then
				defaultShirtModel:Destroy()
				defaultShirtModel = nil
			end

			if characterShouldHaveDefaultPants and not defaultPantsModel then
				while not myDefaultPantsTemplate do wait() end
				defaultPantsModel = myDefaultPantsTemplate:clone()
				defaultPantsModel.Parent = currentCharacter
			elseif not characterShouldHaveDefaultPants and defaultPantsModel then
				defaultPantsModel:Destroy()
				defaultPantsModel = nil
			end

			-- Forces the character to recomposite its textures:  (this fixes some bug)
			local head = currentCharacter:FindFirstChild('Head')
			if head then
				head.Transparency = head.Transparency+1
				head.Transparency = head.Transparency-1
			end
		end)
	end


	local function createRigFromQueue(character)
		if queuedRebuild == "R15" then
			queuedRebuild = ""
			createR15Rig()
		elseif queuedRebuild == "R6" then
			queuedRebuild = ""
			createR6Rig()
		else
			updateDefaultShirtAndPants()
			adjustHeightToStandOnPlatform(character)
		end
	end


	createR15Rig = function(callback)
		if buildingCharacterLock then
			queuedRebuild = "R15"
			return
		end
		buildingCharacterLock = true

		replaceCurrentCharacter(templateCharacterR15:clone())

		local currentlyWearing = getAllEquippedAssets()
		for _, assetId in next, currentlyWearing do
			amendR15ForItemAdded(currentCharacter, assetId, true)
		end

		refreshCharacterScale(currentCharacter)
		updateCharacterBodyColors()

		buildingCharacterLock = false
		createRigFromQueue(currentCharacter)
	end


	createR6Rig = function(callback)
		if buildingCharacterLock then
			queuedRebuild = "R6"
			return
		end
		buildingCharacterLock = true

		replaceCurrentCharacter(templateCharacterR6:clone())

		local function finishCreatingR6Rig(character)
			spawn(function()
				for _,assetId in pairs(getAllEquippedAssets()) do
					local assetModel = InsertService:LoadAsset(assetId) --Get all waiting over with early

					local insertedStuff = {}
					if not assetsLinkedContent[assetId] then
						assetsLinkedContent[assetId] = insertedStuff
					else
						insertedStuff = assetsLinkedContent[assetId]
					end

					local stuff = {assetModel}
					if stuff[1].className == 'Model' then
						stuff = assetModel:GetChildren()
					end

					for _,thing in pairs(stuff) do --Equip asset differently depending on what it is.
						if string.lower(thing.Name) == 'r6' then
							for _,r6SpecificThing in pairs(thing:GetChildren()) do
								sortAndEquipItemToCharacter(character, r6SpecificThing, insertedStuff)
							end
						elseif thing.className ~= 'Folder' then
							sortAndEquipItemToCharacter(character, thing, insertedStuff)
						end
					end
				end

				updateCharacterBodyColors()

				buildingCharacterLock = false
				createRigFromQueue(character)
			end)
		end

		finishCreatingR6Rig(currentCharacter)
	end

	function this.setMinDeltaEBodyColorDifference(minimumDeltaEBodyColorDifference)
		minDeltaEBodyColorDifference = minimumDeltaEBodyColorDifference
	end

	function this.hasDefaultShirt()
		return defaultShirtModel and true or false
	end

	function this.hasDefaultPants()
		return defaultPantsModel and true or false
	end

	local function setDefaultAnimation(animation)
		defaultAnimation = animation
	end

	local function setAnimationRotation(x, y, z)
		local t = 0.5
		tween(rootAnimationRotation, 'x', 'Number', nil, x, t, easeFilters.quad, easeFilters.easeInOut)
		tween(rootAnimationRotation, 'y', 'Number', nil, y, t, easeFilters.quad, easeFilters.easeInOut)
		tween(rootAnimationRotation, 'z', 'Number', nil, z, t, easeFilters.quad, easeFilters.easeInOut)
	end

	local function pauseAnimation()
		animationIsPaused = true
	end

	local function resumeAnimation()
		if animationIsPaused then
			resumeAnimationEvent:Fire()
			animationIsPaused = false
		end
	end

	local function stopAllAnimationTracks()
		local humanoid = currentCharacter:WaitForChild('Humanoid')
		for _, v in next, humanoid:GetPlayingAnimationTracks() do
			if v ~= toolHoldAnimationTrack then
				v:Stop()
			end
		end
	end

	local function getDefaultAnimationAssets(assetTypeName)
		local anims = {}

		if getAvatarType() == 'R15' then
			if assetTypeName == 'ClimbAnimation' then
				table.insert(anims, templateCharacterR15.Animations.climb)
			elseif assetTypeName == 'FallAnimation' then
				table.insert(anims, templateCharacterR15.Animations.fall)
			elseif assetTypeName == 'IdleAnimation' then
				table.insert(anims, templateCharacterR15.Animations.idle)
			elseif assetTypeName == 'JumpAnimation' then
				table.insert(anims, templateCharacterR15.Animations.jump)
			elseif assetTypeName == 'RunAnimation' then
				table.insert(anims, templateCharacterR15.Animations.run)
			elseif assetTypeName == 'WalkAnimation' then
				table.insert(anims, templateCharacterR15.Animations.walk)
			elseif assetTypeName == 'SwimAnimation' then
				table.insert(anims, templateCharacterR15.Animations.swim)
				table.insert(anims, templateCharacterR15.Animations.swimidle)
			else
				error('Tried to get bad default animation for R15 '..tostring(assetTypeName))
			end
		elseif getAvatarType() == 'R6' then
			if assetTypeName == 'ClimbAnimation' then
				table.insert(anims, templateCharacterR6.Animations.climb)
			elseif assetTypeName == 'FallAnimation' then
				table.insert(anims, templateCharacterR6.Animations.fall)
			elseif assetTypeName == 'IdleAnimation' then
				table.insert(anims, templateCharacterR6.Animations.idle)
			elseif assetTypeName == 'JumpAnimation' then
				table.insert(anims, templateCharacterR6.Animations.jump)
			elseif assetTypeName == 'RunAnimation' then
				table.insert(anims, templateCharacterR6.Animations.run)
			elseif assetTypeName == 'WalkAnimation' then
				table.insert(anims, templateCharacterR6.Animations.walk)
			elseif assetTypeName == 'SwimAnimation' then
				local swimAnim = templateCharacterR6.Animations.run:Clone()
				swimAnim.Name = 'swim'

				table.insert(anims, swimAnim)
			else
				error('Tried to get bad default animation for R6 '..tostring(assetTypeName))
			end
		end

		return anims
	end

	local function getAnimationAssets(assetId)
		local asset = InsertService:LoadAsset(assetId)
		local animAssets = asset.R15Anim:GetChildren()

		return animAssets
	end

	local function getEquippedAnimationAssets(assetTypeName)
		local assetTypeId = AssetTypeNames[assetTypeName]
		local assetId

		local currentlyWearing = getAllEquippedAssets()
		if getAvatarType() == 'R15' then
			for _, asset in next, currentlyWearing do
				local info = AssetInfo.getAssetInfo(asset)
				if info and info.AssetTypeId == assetTypeId then
					assetId = asset
					break
				end
			end
		end

		if assetId then
			return getAnimationAssets(assetId)
		else
			return getDefaultAnimationAssets(assetTypeName)
		end
	end

	local function getWeightedAnimations(possible)
		local options, totalWeight = {}, 0

		for _, v in next, possible do
			local weight = v:FindFirstChild('Weight') and v.Weight.Value or 1
			options[v] = weight
			totalWeight = totalWeight + weight
		end

		return options, totalWeight
	end

	local function playLookAround()
		pauseAnimation()
		stopAllAnimationTracks()

		local thisLookAroundAnimation = currentLookAroundAnimation + 1
		currentLookAroundAnimation = thisLookAroundAnimation

		local assets = getEquippedAnimationAssets('IdleAnimation')

		local options, _ = getWeightedAnimations(assets[1]:GetChildren())

		local lightest, lightestWeight
		for v, weight in next, options do
			if lightest == nil or weight < lightestWeight then
				lightest, lightestWeight = v, weight
			end
		end

		if lightest then
			if currentCharacter and currentCharacter.Parent then
				local humanoid = currentCharacter:WaitForChild('Humanoid')
				if humanoid and humanoid:IsDescendantOf(game.Workspace) then
					local track = humanoidLoadAnimation(lightest)
					track:Play(0)
					wait(track.Length)
					track:Stop()
					track:Destroy()
				end
			end
		end

		if thisLookAroundAnimation == currentLookAroundAnimation then
			resumeAnimation()
		end
	end

	local function stopAnimationPreview()
		if currentAnimationPreview ~= nil then
			currentAnimationPreview.Stop()
		end
		currentAnimationPreview = nil
		setAnimationRotation(0, 0, 0)
	end

	local function startAnimationPreviewFromAssets(animAssets) -- Array of StringValues containing Animation objects
		if this.Destroyed then
			return
		end
		if animationIsPaused then
			resumeAnimation()
		end
		if currentAnimationPreview ~= nil then
			stopAnimationPreview()
		end

		local thisAnimationPreview = {}
		currentAnimationPreview = thisAnimationPreview

		if thisAnimationPreview ~= currentAnimationPreview then return end

		local stop = false
		local stopCurrentLoop = false
		local pauseMainLoop = false
		local switch = false
		local currentAnim
		local currentTrack
		local isMultipleAnims = #animAssets > 1
		local currentAnimIndex = 1
		local forceHeaviestAnim = true
		local resumeMainLoopEvent = Instance.new('BindableEvent')

		thisAnimationPreview.Stop = function()
			stop = true
			if currentTrack and currentTrack.IsPlaying then
				currentTrack:Stop()
			end
		end

		if isMultipleAnims then -- alternate between the animations when there's more than one
			for i, v in next, animAssets do
				if v.Name == 'swimidle' then
					currentAnimIndex = i
					break
				end
			end

			Utilities.fastSpawn(function()
				while not stop do
					switch = true
					while switch do
						Utilities.renderWait()
					end
					wait(4)
				end
			end)
		end

		local loopAnimation = function()
			stopCurrentLoop = false

			if switch then
				currentAnimIndex = currentAnimIndex%#animAssets + 1
				switch = false
			end

			-- weighted random
			local newAnim
			local possibleAnims = animAssets[currentAnimIndex]:GetChildren()
			local options, totalWeight = getWeightedAnimations(possibleAnims)

			if forceHeaviestAnim then
				local heaviest, heaviestWeight

				for v, weight in next, options do
					if heaviest == nil or weight > heaviestWeight then
						heaviest, heaviestWeight = v, weight
					end
				end

				newAnim = heaviest
				forceHeaviestAnim = false
			else
				local chosenValue = math.random()*totalWeight
				for v, weight in next, options do
					if chosenValue <= weight then
						newAnim = v
						break
					else
						chosenValue = chosenValue - weight
					end
				end
			end

			-- stop the old track, play the new one
			if currentAnim == newAnim then
				if not currentTrack.IsPlaying then
					currentTrack:Play()
				end
			else
				local fadeInTime = 0.1

				if currentTrack ~= nil then
					if currentTrack.IsPlaying then
						currentTrack:Stop(0.5)
						fadeInTime = 0.5
					end
					currentTrack = nil
				end

				currentTrack = humanoidLoadAnimation(newAnim)
				currentTrack:Play(fadeInTime)

				if newAnim.Parent.Name == 'swim' then
					setAnimationRotation(-math.rad(60), 0, 0)
				else
					setAnimationRotation(0, 0, 0)
				end
			end
			currentAnim = newAnim

			-- wait for the animation to end, or for the switcher to switch, or for the whole thing to be stopped
			local animEnded = false
			local animEndedCon = currentTrack.Stopped:connect(function()
				animEnded = true
			end)

			local lastTimePosition = 0 -- keep track of this so we know when it loops

			while true and not this.Destroyed do
				if animEnded then
					break
				elseif stop then
					break
				elseif stopCurrentLoop then
					break
				else
					if currentTrack.TimePosition < lastTimePosition then
						break
					end
					lastTimePosition = currentTrack.TimePosition
					Utilities.renderWait()
				end
			end

			animEndedCon:disconnect()

			stopCurrentLoop = false
		end

		local animationResumedConnection = resumeAnimationEvent.Event:connect(function()
			stopCurrentLoop = true
			pauseMainLoop = true
			loopAnimation()
			pauseMainLoop = false
			forceHeaviestAnim = true
			resumeMainLoopEvent:Fire()
		end)

		Utilities.fastSpawn(function()
			while not stop and not this.Destroyed do
				loopAnimation()

				if pauseMainLoop then
					resumeMainLoopEvent.Event:wait()
				end
			end

			if currentTrack then
				if currentTrack.IsPlaying then
					currentTrack:Stop()
				end
				currentTrack:Destroy()
				currentTrack = nil
			end
			if currentAnim then
				currentAnim = nil
			end

			animationResumedConnection:disconnect()
		end)
	end

	local function startEquippedAnimationPreview(assetTypeName)
		startAnimationPreviewFromAssets(getEquippedAnimationAssets(assetTypeName))
	end

	local function startAnimationPreview(assetId)
		startAnimationPreviewFromAssets(getAnimationAssets(assetId))
	end

	local function deleteAssetR6(assetId)
		--Destroy rendered content
		local currentAssetContent = assetsLinkedContent[assetId]
		if currentAssetContent then
			for _,thing in pairs(currentAssetContent) do
				if thing and thing.Parent then
					thing:Destroy()
				end
			end
			assetsLinkedContent[assetId] = nil
		end
	end

	local function setDefaultAssetR6(character, assetTypeName)
		--Special cases where we need to replace removed asset with a default
		if assetTypeName == 'Head' then
			if character and character.Parent then
				local head = character:FindFirstChild('Head')
				if head then
					local defaultHeadMesh = Instance.new('SpecialMesh')
					defaultHeadMesh.MeshType = 'Head'
					defaultHeadMesh.Scale = Vector3.new(1.2,1.2,1.2)
					defaultHeadMesh.Parent = head
				end
			end
		elseif assetTypeName == 'Face' then
			if character and character.Parent then
				local head = character:FindFirstChild('Head')
				if head then
					local currentFace = Utilities.findFirstChildOfType(head,'Decal')
					if not currentFace then
						local face = Instance.new('Decal')
						face.Name = 'face'
						face.Texture = "rbxasset://textures/face.png"
						face.Parent = head
					end
				end
			end
		elseif assetTypeName == 'Gear' then
			holdToolPos('Down')
		end
	end

	local function getAssetTypeName(assetId)
		local assetInfo = AssetInfo.getAssetInfo(assetId)
		local assetTypeName = nil
		if assetInfo then
			assetTypeName = AssetTypeNames[assetInfo.AssetTypeId]
		end
		return assetTypeName
	end

	-- unequip an R6 asset which has already been replaced
	local function unequipSupercededAssetR6(character, assetId)
		local assetTypeName = getAssetTypeName(assetId)
		Utilities.fastSpawn(function()
			if assetTypeName and assetTypeName:find'Animation' then
				startEquippedAnimationPreview(defaultAnimation)
			else
				deleteAssetR6(assetId)
			end
		end)

	end

	local function unequipAsset(character, assetId, isDefaultRequired)
		if AvatarEditorSelectivelyUseDefaultAsset then
			local assetTypeName = getAssetTypeName(assetId)
			Utilities.fastSpawn(function()
				if assetTypeName and assetTypeName:find'Animation' then
					startEquippedAnimationPreview(defaultAnimation)
				else
					if getAvatarType() == 'R15' then
						replaceR15PartWithDefault(character, assetId, isDefaultRequired)
					elseif isDefaultRequired then
						deleteAssetR6(assetId, assetTypeName)
						setDefaultAssetR6(character, assetTypeName)
					end

				end
			end)
		else
			local assetInfo = AssetInfo.getAssetInfo(assetId)
			local assetTypeName = nil
			if assetInfo then
				assetTypeName = AssetTypeNames[assetInfo.AssetTypeId]
			end

			Utilities.fastSpawn(function()
				if assetTypeName and assetTypeName:find'Animation' then
					startEquippedAnimationPreview(defaultAnimation)
				else
					if getAvatarType() == 'R15' then
						replaceR15PartWithDefault(character, assetId)
					else
						--Destroy rendered content
						local currentAssetContent = assetsLinkedContent[assetId]
						if currentAssetContent then
							for _,thing in pairs(currentAssetContent) do
								if thing and thing.Parent then
									thing:Destroy()
								end
							end
							assetsLinkedContent[assetId] = nil
						end

						--Special cases where we need to replace removed asset with a default
						if assetTypeName == 'Head' then
							if character and character.Parent then
								local head = character:FindFirstChild('Head')
								if head then
									local defaultHeadMesh = Instance.new('SpecialMesh')
									defaultHeadMesh.MeshType = 'Head'
									defaultHeadMesh.Scale = Vector3.new(1.2,1.2,1.2)
									defaultHeadMesh.Parent = head
								end
							end
						elseif assetTypeName == 'Face' then
							if character and character.Parent then
								local head = character:FindFirstChild('Head')
								if head then
									local currentFace = Utilities.findFirstChildOfType(head,'Decal')
									if not currentFace then
										local face = Instance.new('Decal')
										face.Name = 'face'
										face.Texture = "rbxasset://textures/face.png"
										face.Parent = head
									end
								end
							end
						elseif assetTypeName == 'Gear' then
							holdToolPos('Down')
						end
					end

				end
			end)

		end
	end


	local function equipAssetInternal(character, assetId, isDefaultRequired)
		addAssetToRecentAssetList(assetId)

		local assetInfo = AssetInfo.getAssetInfo(assetId)

		if assetInfo then
			local assetTypeName = AssetTypeNames[assetInfo.AssetTypeId]

			local assetModel = InsertService:LoadAsset(assetId)

			-- If the new asset is not an animation then we need to update the render of the character
			-- Also, after loading model, check to make sure it is still equipped before dressing character
			if not string.find(assetTypeName, 'Animation') then
				-- Render changes
				if getAvatarType() == 'R6' then
					local insertedStuff = {}
					if not assetsLinkedContent[assetId] then
						assetsLinkedContent[assetId] = insertedStuff
					else
						insertedStuff = assetsLinkedContent[assetId]
					end
					local stuff = {assetModel}
					if stuff[1].className == 'Model' then
						stuff = assetModel:GetChildren()
					end
					for _,thing in pairs(stuff) do -- Equip asset differently depending on what it is.
						if string.lower(thing.Name) == 'r6' then
							for _,r6SpecificThing in pairs(thing:GetChildren()) do
								sortAndEquipItemToCharacter(character, r6SpecificThing, insertedStuff)
							end
						elseif thing.className ~= 'Folder' then
							sortAndEquipItemToCharacter(character, thing, insertedStuff)
						end
					end
				else
					amendR15ForItemAdded(character, assetId, isDefaultRequired)
				end
			end

			-- If the new asset is a bodypart, then we need to update the colors
			if assetInfo.AssetTypeId >= 25 and assetInfo.AssetTypeId <= 31 then
				updateCharacterBodyColors()
			end
		end
	end

	local function batchR6EquipmentChange(character, addTheseAssets, removeTheseAssets)
		local numWaitingOn = 0
		local numSpawned = 0

		for _, assetId in pairs(addTheseAssets) do
			numWaitingOn = numWaitingOn + 1
		end

		for _, assetId in pairs(addTheseAssets) do
			spawn(function()
				numSpawned = numSpawned + 1

				equipAssetInternal(character, assetId, true)

				if numSpawned == numWaitingOn then
					for _, removeAssetId in pairs(removeTheseAssets) do
						unequipSupercededAssetR6(character, removeAssetId)
					end
				end
			end)
		end
	end

	local function equipAsset(character, assetId, isDefaultRequired)
		spawn(function()
			equipAssetInternal(character, assetId, isDefaultRequired)
		end)
	end


	local function addAssetToList(assets, assetId)
		local assetType = AssetInfo.getAssetType(assetId)
		assets[assetType] = assets[assetType] or {}
		table.insert(assets[assetType], assetId)
	end


	function this.wearOutfit(outfitId)
		-- This code is used for cutting off the process of previous
		-- outfit equip calls. Not a debounce per-se, but a.. bounce?
		wearOutfitRequestCount = wearOutfitRequestCount + 1
		local thisWearOutfitRequestCount = wearOutfitRequestCount
		local stillValidCheckFunction = function()
			return wearOutfitRequestCount == thisWearOutfitRequestCount
		end

		local outfitData = webServer.get(Urls.avatarUrlPrefix.."/v1/outfits/"..outfitId.."/details")
		if outfitData and stillValidCheckFunction() and not this.Destroyed then

			local assets = {}

			-- Equip outfit assets
			local outfitData = Utilities.decodeJSON(outfitData)
			if outfitData then
				local outfitAssets = outfitData['assets']
				if outfitAssets then
					for _, assetInfo in pairs(outfitAssets) do
						addAssetToList(assets, assetInfo.id)
					end
				end
			end

			local bodyColors = {
				HeadColor = 194;
				LeftArmColor = 194;
				LeftLegColor = 194;
				RightArmColor = 194;
				RightLegColor = 194;
				TorsoColor = 194;
			}

			local outfitBodyColors = outfitData['bodyColors']
			if outfitBodyColors then
				for name, mapName in pairs(BODY_COLOR_NAME_MAP) do
					local color = outfitBodyColors[mapName]
					if color then
						bodyColors[name] = color
					end
				end
			end

			AppState.Store:Dispatch(SetOutfit(assets, bodyColors))
		end
	end


	function this.setRotation(rotation)
		if currentCharacter then
			local hrp = currentCharacter:WaitForChild('HumanoidRootPart')
			hrp.CFrame = CFrame.new(hrp.CFrame.p)
				* CFrame.Angles(0, 0.6981 + rotation, 0)
				* CFrame.Angles(rootAnimationRotation.x, rootAnimationRotation.y, rootAnimationRotation.z)
		end
	end


	local function updateAvatarType(newType)
		if newType == 'R15' then
			createR15Rig()
		else
			createR6Rig()
		end
	end


	function this.initFromServer()
		local avatarFetchRequest = Utilities.httpGet(Urls.avatarUrlPrefix.."/v1/avatar")
		avatarFetchRequest = Utilities.decodeJSON(avatarFetchRequest)
		if avatarFetchRequest and not this.Destroyed then
			local bodyColorsRequest = avatarFetchRequest['bodyColors']
			local bodyColors = {}
			for name, mapName in pairs(BODY_COLOR_NAME_MAP) do
				local color = bodyColorsRequest[mapName]
				if color then
					bodyColors[name] = color
				end
			end
			setSavedBodyColors(bodyColors)
			AppState.Store:Dispatch(SetBodyColors(bodyColors))

			local requestedAvatarType = avatarFetchRequest['playerAvatarType']
			if requestedAvatarType then
				AppState.Store:Dispatch(SetAvatarType(requestedAvatarType))
			end

			local scalesRequest = avatarFetchRequest['scales']

			if scalesRequest then
				local scales = {}
				local height = scalesRequest['height']
				if height then
					scales.Height = height
				end
				local width = scalesRequest['width']
				if width then
					scales.Width = width
				end
				local depth = scalesRequest['depth']
				if depth then
					scales.Depth = depth
				end
				local head = scalesRequest['head']
				if head then
					scales.Head = head
				end
				if AvatarEditorAnthroSliders then
					local bodyType = scalesRequest['bodyType']
					if bodyType then
						scales.BodyType = bodyType
					end
					local proportion = scalesRequest['proportion']
					if proportion then
						scales.Proportion = proportion
					end
				end
				setSavedScales(scales)
				AppState.Store:Dispatch(SetScales(scales))
			end

			local requestedAssetsData = avatarFetchRequest['assets']
			if requestedAssetsData then
				local waitingAssets = {}
				local numQueuedAssets = 0

				local assets = {}

				for _,assetData in pairs(requestedAssetsData) do
					local assetId = assetData['id']

					addAssetToList(assets, assetId)

					if assetId and type(assetId) == 'number' then
						waitingAssets[assetId] = false
						numQueuedAssets = numQueuedAssets + 1
						Utilities.fastSpawn(function()
							waitingAssets[assetId] = true
							addAssetToRecentAssetList(assetId)
							pcall(function()
								InsertService:LoadAsset(assetId) -- Prime the cache
							end)
							numQueuedAssets = numQueuedAssets - 1
						end)
					end
				end

				while numQueuedAssets > 0 do wait() end

				AppState.Store:Dispatch(SetAssets(assets))

				-- After all fetched assets are equipped, we can update the savedWearingAssets table.
				waitingForInitialLoad = true
				Utilities.fastSpawn(function()
					local startTime = tick()
					while true and not this.Destroyed do
						local allAssetsLoaded = true
						for _, handled in pairs(waitingAssets) do
							if not handled then
								allAssetsLoaded = false
								break
							end
						end
						if allAssetsLoaded then
							syncSaved()
							break
						end
						if tick()-startTime > 30 then
							if UserSettings().GameSettings:InStudioMode() then
								print('Took too long to load character.')
							end
							break
						end
						wait()
					end
					waitingForInitialLoad = false
				end)
			end
		end
	end

	local function getPartPosition(partName)
		local root = currentCharacter:FindFirstChild('HumanoidRootPart')

		for _, v in next, Utilities.getDescendants(currentCharacter) do
			if v.Name == partName then
				local result = v.cFrame
				return result
			end
		end

		return CFrame.new()
	end

	local function getFocusPoint(partNames)
if AvatarEditorRecomputeCameraLookAt then
		local numParts = #partNames

		if numParts == 0 then
			local humanoid = currentCharacter:WaitForChild('Humanoid')
			return humanoid.Torso.CFrame.p
		end

		local sumOfPartPositions = Vector3.new()

		for _, partName in next, partNames do
			sumOfPartPositions = sumOfPartPositions + getPartPosition(partName).p
		end

		return sumOfPartPositions / numParts
else
		local focusPointRelative = Vector3.new()

		for _, partName in next, partNames do
			focusPointRelative = focusPointRelative + getRestingPartOffset(partName).p / #partNames
		end

		local humanoid = currentCharacter:WaitForChild('Humanoid')
		return humanoid.Torso.CFrame * focusPointRelative
end
	end


	local function handleCameraChange(page)
		local position = LayoutInfo.CameraDefaultPosition
		local cameraFocus = page.CameraFocus or {Parts = {'HumanoidRootPart'}}
		local focusPoint = getFocusPoint(cameraFocus.Parts)

		if page.CameraZoomRadius then
			local toCamera = (LayoutInfo.CameraDefaultPosition - focusPoint)
			toCamera = Vector3.new(toCamera.x, 0, toCamera.z).unit
			position = focusPoint + page.CameraZoomRadius * toCamera
		end

		updateCamera(position, focusPoint, page.CameraFOV or 70)
	end


	function this:setUpdateCameraCallback(callback)
		updateCamera = callback

		updateCamera(
			LayoutInfo.CameraDefaultPosition,
			LayoutInfo.CameraDefaultFocusPoint,
			LayoutInfo.CameraDefaultFOV)
	end



	local function applyStateChanged(newState, oldState)
		local didUpdate = false
		local didEquip = false
		local characterRebuilt = false

		if newState.Character.AvatarType ~= oldState.Character.AvatarType or currentCharacter == nil then
			updateAvatarType(newState.Character.AvatarType)
			characterRebuilt = true
			didUpdate = true
		end

		local currentCategoryIndex = newState.Category.CategoryIndex or 1
		local tabInfo = newState.Category.TabsInfo[currentCategoryIndex]
		local tabIndex = tabInfo and tabInfo.TabIndex or 1
		local currentCategoryName = currentCategoryIndex and Categories[currentCategoryIndex].name or ""
		local canPlayAnimation =
			string.find(currentCategoryName, 'Animation') or string.find(currentCategoryName, 'Recent')

		if newState.Category.CategoryIndex ~= oldState.Category.CategoryIndex or
			newState.Category.TabsInfo ~= oldState.Category.TabsInfo then

			handleCameraChange(
				Categories[currentCategoryIndex].pages[tabIndex])
		end

		-- Set default animation in animation category
		if string.find(currentCategoryName, 'Animation') then
			local pageName = Categories[currentCategoryIndex].pages[tabIndex].typeName
			setDefaultAnimation(string.gsub(pageName, ' ', ''))
		else
			setDefaultAnimation('IdleAnimation')
		end

		local animationId = nil

		if newState.Character.Assets ~= oldState.Character.Assets then
			--Remove assets which only exist in oldState
			for assetType, assetList in pairs(oldState.Character.Assets) do
				if not newState.Character.Assets[assetType] and assetList then
					for _, assetId in pairs(assetList) do
						unequipAsset(currentCharacter, assetId, true)
					end
				end
			end

			for assetType, _ in pairs(newState.Character.Assets) do
				if newState.Character.Assets[assetType] ~= oldState.Character.Assets[assetType] then
					local addTheseAssets = TableUtilities.ListDifference(
							newState.Character.Assets[assetType] or {},
							oldState.Character.Assets[assetType] or {})
					local removeTheseAssets =
						TableUtilities.ListDifference(oldState.Character.Assets[assetType] or {},
						newState.Character.Assets[assetType] or {})

					if AvatarEditorSelectivelyUseDefaultAsset then -- AvatarEditorSelectivelyUseDefaultAsset flag is intended to stop the default body part appearing, when a new one will shortly be equipped
						local addTheseAssetsHasItems = next(addTheseAssets) ~= nil
						if addTheseAssetsHasItems then
							didEquip = true
						end
						didUpdate = didUpdate or (addTheseAssetsHasItems or (next(removeTheseAssets) ~= nil))
						local isAnimationAssetType = string.find(assetType, 'Animation')

						if getAvatarType() == 'R15' then
							for _, assetId in pairs(addTheseAssets) do
								equipAsset(currentCharacter, assetId, false)
								if isAnimationAssetType then
									animationId = assetId
								end
							end

							local isDefaultForTypeRequired = not addTheseAssetsHasItems
							for _, assetId in pairs(removeTheseAssets) do
								unequipAsset(currentCharacter, assetId, isDefaultForTypeRequired)
							end
						else
							if isAnimationAssetType then
								for _, assetId in pairs(addTheseAssets) do
									animationId = assetId
								end
							end
							if addTheseAssetsHasItems then
								batchR6EquipmentChange(currentCharacter, addTheseAssets, removeTheseAssets)
							else
								for _, assetId in pairs(removeTheseAssets) do
									unequipAsset(currentCharacter, assetId, true)
								end
							end
						end
					else
						for _, assetId in pairs(addTheseAssets) do
							equipAsset(currentCharacter, assetId, true)
							didUpdate = true
							didEquip = true

							if string.find(assetType, 'Animation') then
								animationId = assetId
							end
						end

						for _, assetId in pairs(removeTheseAssets) do
							unequipAsset(currentCharacter, assetId)
							didUpdate = true
						end
					end
				end
			end

			if isInitialAssets and oldState.Character.Assets and next(oldState.Character.Assets) == nil then
				isInitialAssets = false
				canPlayAnimation = false
			end
		end

		if newState.Character.BodyColors ~= oldState.Character.BodyColors then
			local differentBodyColors =
				TableUtilities.TableDifference(newState.Character.BodyColors, oldState.Character.BodyColors)

			if next(differentBodyColors) ~= nil then
				updateCharacterBodyColors(newState.Character.BodyColors)
				didUpdate = true
			end
		end

		if newState.Character.Scales ~= oldState.Character.Scales then
			local differentScales =
				TableUtilities.TableDifference(newState.Character.Scales, oldState.Character.Scales)

			if next(differentScales) ~= nil then
				if AvatarEditorAnthroSliders then
					engineScaleCharacter(currentCharacter, newState.Character.Scales)
				else
					scaleCharacter(
						currentCharacter,
						Vector3.new(
							newState.Character.Scales.Width,
							newState.Character.Scales.Height,
							newState.Character.Scales.Depth),
						newState.Character.Scales.Head
					)
					adjustHeightToStandOnPlatform(currentCharacter)
				end
			end
		end

		if newState.Character ~= oldState.Character then
			updateDefaultShirtAndPants()
		end

		if didUpdate then
			ParticleScreen.runParticleEmitter()
		end

		-- Play animations
		Utilities.fastSpawn(function()
			if animationId and canPlayAnimation and newState.Character.AvatarType == "R15" then
				startAnimationPreview(animationId)
			else
				if didEquip or (characterRebuilt and currentCharacter ~= nil) then
					startEquippedAnimationPreview(defaultAnimation)
					playLookAround()
				elseif newState.Category.CategoryIndex ~= oldState.Category.CategoryIndex or
					newState.Category.TabsInfo ~= oldState.Category.TabsInfo or
					newState.Character.AvatarType ~= oldState.Character.AvatarType or
					(animationId and not canPlayAnimation) then
					startEquippedAnimationPreview(defaultAnimation)
				end
			end
		end)
	end


	local cacheNewState = function(newState, oldState)
		if cachedOldState == nil then
			cachedOldState = oldState
		end
		cachedNewState = newState
	end

	handleStateChanged = cacheNewState

	local storeChangedCn = AppState.Store.Changed:Connect(
		function(newState, oldState)
			handleStateChanged(newState, oldState)
		end
	)

	local function AutoSave(timeBetweenSaves)
		local keepGoing = true
		local obj = {stop = function() keepGoing = false end}

		Utilities.fastSpawn(
			function()
				wait(timeBetweenSaves)
				while keepGoing do
					this.saveToServer()
					wait(timeBetweenSaves)
				end
			end
		)

		return obj
	end

	local autoSave = {stop = function() end}

	function this.hide()
		cachedOldState = AppState.Store:GetState()
		cachedNewState = cachedOldState
		handleStateChanged = cacheNewState
		dismissCurrentCharacter()
		getCharacterNode().Parent = nil
		autoSave.stop()
		this.saveToServer()
	end

	function this.show()
		if not this.Destroyed then
			getCharacterNode().Parent = game.Workspace
			if cachedNewState then
				applyStateChanged(cachedNewState, cachedOldState)
				cachedNewState = cachedOldState
			end
			handleStateChanged = applyStateChanged
			autoSave = AutoSave(5)
		end
	end

	function this.destroy()
		storeChangedCn = Utilities.disconnectEvent(storeChangedCn)
		if characterNode then
			this.Destroyed = true
			characterNode:Destroy()
			characterNode = nil
		end
	end

	return this
end
