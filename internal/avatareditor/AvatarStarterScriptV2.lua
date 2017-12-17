--
local screenGui = script.Parent
local modulesParent = screenGui

local coreGui = game:GetService("CoreGui")
-- isCoreSetup is a bool that determines the environment of the code. When true, you are running in the expected environment, a mobile device. When false, you are likely testing in studio.
local isCoreSetup = pcall(function()
	-- Calling FindFirstChild() on coreGui will error without the right permissions , causing the pcall to return false. (running in a studio environment)
	return coreGui:FindFirstChild("RobloxGui")
end) 

if isCoreSetup then
	robloxGui = coreGui:FindFirstChild("RobloxGui")
	-- First thing, add the gui into the renderable PlayerGui (this does not happen automatically because characterAutoLoads is false)
	local starterGuiChildren = game.StarterGui:GetChildren()
	for i = 1, #starterGuiChildren do
		local guiClone = starterGuiChildren[i]:clone()
		guiClone.Parent = robloxGui.Parent
	end
	screenGui = robloxGui.Parent:FindFirstChild("ScreenGui")
	modulesParent = robloxGui.Modules
end

local benchmarker = require(modulesParent.Benchmarker)
benchmarker.set('start')

local multiplyGridResults = not isCoreSetup and 1 -- For testing

local topFrame = screenGui:WaitForChild('TopFrame')
local mainFrame = screenGui:WaitForChild('Frame')
local userInputService = game:GetService('UserInputService')
local httpService = game:GetService('HttpService')
local runService = game:GetService('RunService')
local marketplaceService = game:GetService('MarketplaceService')
local insertService = game:GetService('InsertService')
local guiService = game:GetService('GuiService')
local sharedStorage = game:GetService('ReplicatedStorage')
local contentProvider = game:GetService('ContentProvider')
local vrService = game:GetService('VRService')
local camera = game.Workspace.CurrentCamera
local tabList = mainFrame:WaitForChild('TabList')
local scrollingFrame = mainFrame:WaitForChild('ScrollingFrame')
local templateCharacterR6 = sharedStorage:WaitForChild('CharacterR6')
local templateCharacterR15 = sharedStorage:WaitForChild('CharacterR15')
local cameraController = require(modulesParent.CameraController)
local tweenPropertyController = require(modulesParent.TweenPropertyController)
local tween = tweenPropertyController.tween
local easeFilters = require(modulesParent.EaseFilters)
local shadeLayer = screenGui.ShadeLayer
local menuFrame = screenGui.MenuFrame
local menuTitleLabel = menuFrame:WaitForChild('TitleLabel')
local menuCancelButton = menuFrame:WaitForChild('CancelButton')
local particleScreen = game.Workspace:WaitForChild('ParticleScreenPart'):WaitForChild('ParticleEmitter')
local particleScreen2 = game.Workspace:WaitForChild('ParticleScreenPart'):WaitForChild('ParticleEmitter2')
local avatarTypeSwitchFrame = screenGui:WaitForChild('AvatarTypeSwitch')
local avatarTypeButton = avatarTypeSwitchFrame:WaitForChild('ButtonSoak')
local r6Label = avatarTypeSwitchFrame:WaitForChild('R6Label')
local r15Label = avatarTypeSwitchFrame:WaitForChild('R15Label')
local avatarTypeSwitch = avatarTypeSwitchFrame:WaitForChild('Switch')
local accessoriesColumn = screenGui:WaitForChild('AccessoriesColumn')
local selectionFrameTemplate = screenGui:WaitForChild('SelectionFrameTemplate')
local whiteFrameTemplate = screenGui:WaitForChild('WhiteFrameTemplate')
local fakeScrollBar = mainFrame:WaitForChild('FakeScrollBar')
local detailsMenuFrame = screenGui:WaitForChild('DetailsFrame')
local detailsNameLabel = detailsMenuFrame:WaitForChild('NameLabel')
local detailsScrollingFrame = detailsMenuFrame:WaitForChild('ScrollingDescription')
local detailsDescriptionLabel = detailsScrollingFrame:WaitForChild('TextLabel')
local detailsCreatorLabel = detailsMenuFrame:WaitForChild('CreatorLabel')
local detailsImageLabel = detailsMenuFrame:WaitForChild('ImageLabel')
local detailsCloseButton = detailsMenuFrame:WaitForChild('CloseButton')
local detailsCloseImageLabel = detailsCloseButton:WaitForChild('ImageLabel')
local topMenuContainer = mainFrame:WaitForChild('TopMenuContainer')
local topMenuIndexIndicator = topMenuContainer:WaitForChild('IndexIndicator')
local topMenuSelectedIcon = topMenuContainer:WaitForChild('SelectedIcon')
local categoryButtonTemplate = screenGui:WaitForChild('CategoryButtonTemplate')
local darkCover = screenGui:WaitForChild('DarkCover')
local fullViewButton = topFrame:WaitForChild('FullViewButton')
local scrollButtonDown = nil

benchmarker.check('start', 'Initialization A')

local spriteManager = require(modulesParent.SpriteSheetManager)
local flagManager = require(modulesParent.FlagManager)
local platformInfo = require(modulesParent.PlatformInfo)

local tabWidth = 60
local tabHeight = 50
local firstTabBonusWidth = 10
local buttonsPerRow = 4
local gridPadding = 6
local itemsPerPage = 24		-- Number of items per http request for infinite scrolling
local itemsPerPageNewUrl = 25
local characterRotationSpeed = .0065
local rotationalInertia = .9
local numberOfAllowedHats = 3
local fakeScrollBarWidth = 4
local maxNumberOfRecentAssets = 200
local tapDistanceThreshold = 10	-- Defines the maximum allowable distance between input began and ended for input to be considered a tap
local doubleTapThreshold = .25
local extraVerticalShift = 25 -- This is to make space for page title labels


local domainUrl = contentProvider.BaseUrl
	domainUrl = string.gsub(domainUrl, "/", "")
	domainUrl = string.gsub(domainUrl, "www.", "")		-- Trims pre-fixes out
	domainUrl = string.gsub(domainUrl, "https:", "")
	domainUrl = string.gsub(domainUrl, "http:", "")
local urlPrefix = "https://inventory."..domainUrl
local avatarUrlPrefix = "https://avatar."..domainUrl
local assetImageUrl = "https://www."..domainUrl.."/Thumbs/Asset.ashx?width=150&height=150&assetId="
local assetImageUrl150 = "https://www."..domainUrl.."/Thumbs/Asset.ashx?width=150&height=150&assetId="
local categories = require(modulesParent.PagesInfo)
local assetTypeNames = require(modulesParent.AssetTypeNames)


local character = templateCharacterR6:clone()
local hrp = character:WaitForChild('HumanoidRootPart')
local humanoid = character:WaitForChild('Humanoid')

local cameraCFrames = {
	default = CFrame.new(10.2426682, 5.1197648, -30.9536419, -0.946675897, 0.123298854, -0.297661126, -7.4505806e-009, 0.92387563, 0.382692933, 0.322187454, 0.36228618, -0.874610782),
	fullView = CFrame.new(13.2618074, 4.74155569, -22.701086, -0.94241035, 0.0557777137, -0.329775006, -3.7252903e-009, 0.98599577, 0.166770056, 0.334458828, 0.157165825, -0.92921263)
}
local defaultCameraFocus = {Parts = {'HumanoidRootPart'}, Zoom=0}
local cameraFocus = defaultCameraFocus
local partRestingOffsets = {}

if flagManager.AvatarEditorCameraZoomingEnabled then
	workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	workspace.CurrentCamera.CFrame = CFrame.new(cameraCFrames.default.p, workspace.Model.Unions.BaseCylinder.CFrame.p)
end

local page = nil


local currentlyWearing = {}
local savedWearingAssets = {}
local currentHats = {}
local avatarType = 'R15'
local savedAvatarType = avatarType
local scales = {
	height = 1.00,
	width = 1.00,
	depth = 1.00,
	head = 1.00,
}
local savedScales = {}
local bodyColors = {
	["HeadColor"] = 194,
	["LeftArmColor"] = 194,
	["LeftLegColor"] = 194,
	["RightArmColor"] = 194,
	["RightLegColor"] = 194,
	["TorsoColor"] = 194,
}
local bodyColorsPallete = {}
local savedBodyColors = {}
local recentAssetLists = {}				-- List of recently used/equipped assets
local assetsLinkedContent = {}
local waitingForInitialLoad = true
local waitingForInitialAssetLoad = true
local currentAnimationPreview = nil
local assetList = {}					-- All owned assets of a type
local defaultShirtModel = nil
local defaultPantsModel = nil
-- These sync up with chat username color order. The last clothing is a teal color instead of a tan color like the usernames.
-- Username color list: "Bright red", "Bright blue", "Earth green", "Bright violet", "Bright orange", "Bright yellow", "Light reddish violet", "Brick yellow"
local defaultShirtIds =		{855776103, 855760101, 855766176, 855777286, 855768342, 855779323, 855773575, 855778084}
local defaultPantIds =		{855783877, 855780360, 855781078, 855782781, 855781508, 855785499, 855782253, 855784936}

local skinColorList = {}
local skinColorListNames = {
'Dark taupe','Brown','Linen','Nougat','Light orange',
'Dirt brown','Reddish brown','Cork','Burlap','Brick yellow',
'Sand red','Dusty Rose','Medium red','Pastel orange','Carnation pink',
'Sand blue','Steel blue','Pastel Blue','Pastel violet','Lilac',
'Bright bluish green','Shamrock','Moss','Medium green','Br. yellowish orange',
'Bright yellow','Daisy orange','Dark stone grey','Mid grey','Institutional white',
}
for i,v in pairs(skinColorListNames) do
	skinColorList[i] = BrickColor.new(v)
end
skinColorListNames = nil

local doTestHttpGet = game["Run Service"]:IsStudio() and not isCoreSetup and true

local rootAnimationRotation = {x=0, y=0, z=0}

local animationIsPaused = false
local resumeAnimationEvent = Instance.new('BindableEvent')
local currentLookAroundAnimation = 0

local warningIsOpen = false

local viewMode = false

local reachedBottomOfCurrentPage = false


local userId = game.Players.LocalPlayer.userId 

if userId <= 10 then
	userId = 15560089	--This is the fallback userid of a guest account, incase we somehow get an invalid userid.
	-- Later code also checks if this userId is being used and will display a warning notification
end

if spriteManager.enabled then
	spriteManager.equipDescendants(screenGui)
end

local phoneMode = platformInfo.Mode == 'phone'
local tabletMode = platformInfo.Mode == 'tablet'

if tabletMode then
	topFrame.Size = UDim2.new(0.5, 0, 1, 0)
	fullViewButton.Position = UDim2.new(1, -112, 1, -52)
	
	avatarTypeSwitchFrame.Position = UDim2.new(0.5,-148,0,24)
	avatarTypeSwitchFrame.R15Label.FontSize = 'Size14'
	avatarTypeSwitchFrame.R6Label.FontSize = 'Size14'
	
	mainFrame.Position = UDim2.new(0.5, -60, 0, 0)
	mainFrame.Size = UDim2.new(0.5, 60, 1, 0)
	mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
	mainFrame.BackgroundTransparency = 0.5
	
	topMenuContainer.Size = UDim2.new(0, 98, 0, 98)
	topMenuContainer.Position = UDim2.new(0, 11, 0, 11)
	topMenuContainer.BackgroundFill.Visible = false
	topMenuContainer.IndexIndicator.AnchorPoint = Vector2.new(0.5, 0.5)
	topMenuContainer.IndexIndicator.Position = UDim2.new(0.5, 0, 0.5, 0)
	topMenuContainer.IndexIndicator.Size = UDim2.new(0, 60, 0, 60)
	topMenuContainer.SelectedIcon.AnchorPoint = Vector2.new(0.5, 0.5)
	topMenuContainer.SelectedIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
	topMenuContainer.RoundedEnd.AnchorPoint = Vector2.new(0, 0)
	topMenuContainer.RoundedEnd.Position = UDim2.new(0, 0, 0, 0)
	topMenuContainer.RoundedEnd.Size = UDim2.new(1, 0, 1, 0)
	topMenuContainer.RoundedEnd.ScaleType = 'Slice'
	topMenuContainer.RoundedEnd.SliceCenter = Rect.new(48, 48, 48, 48)
	spriteManager.equip(topMenuContainer.RoundedEnd, 'ctn-primary nav')
	
	local categoryScroller = Instance.new('ScrollingFrame')
	categoryScroller.Name = 'CategoryScroller'
	categoryScroller.ScrollBarThickness = 0
	categoryScroller.BackgroundTransparency = 1
	categoryScroller.BorderSizePixel = 0
	categoryScroller.Position = UDim2.new(0, 0, 0, 90)
	categoryScroller.Size = UDim2.new(1, 0, 1, -135)
	categoryScroller.ZIndex = 7
	local categoryScrollerSizeConstraint = Instance.new('UISizeConstraint', categoryScroller)
	categoryScroller.Parent = topMenuContainer
	
	
	local tabListContainer = mainFrame:WaitForChild('TabListContainer')
	tabListContainer.Visible = true
	
	if spriteManager.getScale() >= 2 then
		tabListContainer.TabListBackground.Size = UDim2.new(1, 12, 1, 0)
		tabListContainer.TabListBackground.Position = UDim2.new(0, -6, 0, 0)
		tabListContainer.ScrollButtonDown.BackgroundClipper.Background.Size = UDim2.new(1, 12, 2, 0)
		tabListContainer.ScrollButtonDown.BackgroundClipper.Background.Position = UDim2.new(0, -6, -1, 0)
	else
		tabListContainer.TabListBackground.Size = UDim2.new(1, 6, 1, 3)
		tabListContainer.TabListBackground.Position = UDim2.new(0, -3, 0, 0)
	end
	
	tabList.Position = UDim2.new(0, 0, 0, 0)
	tabList.Size = UDim2.new(1, 0, 1, -6)
	tabList.BackgroundTransparency = 1
	tabList.ClipsDescendants = true
	tabList.Parent = tabListContainer
	
	scrollingFrame.Size = UDim2.new(1, -128, 1, 0)
	scrollingFrame.Position = UDim2.new(0, 116, 0, 0)
	
	detailsMenuFrame.BackgroundTransparency = 1
	detailsMenuFrame.ClipsDescendants = false
	detailsMenuFrame.Background.Visible = true
	
	accessoriesColumn.AnchorPoint = Vector2.new(0, 0)
	accessoriesColumn.Position = UDim2.new(0, 24, 0, 24)
	accessoriesColumn.Size = UDim2.new(0, 60, 0.3, 30)
	for i=1, 3 do
		accessoriesColumn['AccessoryButton'..i].Position = UDim2.new(0.5, -30, 0, (i-1)*84)
		accessoriesColumn['AccessoryButton'..i].Size = UDim2.new(0, 60, 0, 60)
	end
	
	workspace.Model.Unions.BaseCylinder.BillboardGui.TextLabel.Size = UDim2.new(0.3, 0, 1, 0)
	workspace.Model.Unions.BaseCylinder.BillboardGui.TextLabel.Position = UDim2.new(0.5, 0, 0, 0)
	
	cameraCFrames.default = cameraCFrames.default * CFrame.new(0, 2.5, -8) * CFrame.Angles(math.rad(20), math.rad(-20), 0) * CFrame.new(1.5, 0, 1)
	
	firstTabBonusWidth = 45
	tabWidth = 84
	tabHeight = 72
	gridPadding = 12
	
	scrollButtonDown = tabListContainer:WaitForChild('ScrollButtonDown')
	scrollButtonDown.Visible = false
	
	scrollButtonDown:WaitForChild('Button').MouseButton1Click:connect(function()
		local current = tabList.CanvasPosition.y
		local target = current + (tabHeight+1)
		local max = tabList.CanvasSize.Y.Offset - tabList.AbsoluteWindowSize.y
		local newPos = Vector2.new(0, math.min(max, target))
		tween(tabList, 'CanvasPosition', 'Vector2', nil, newPos, 0.2, easeFilters.quad, easeFilters.easeInOut)
	end)
	
	local currentAtBottom = nil
	tabList.Changed:connect(function(prop)
		if prop == 'CanvasSize' or prop == 'CanvasPosition' or prop == 'AbsoluteSize' then
			local atBottom = tabList.CanvasPosition.y + tabList.AbsoluteSize.y >= tabList.CanvasSize.Y.Offset
			
			if currentAtBottom ~= atBottom then
				scrollButtonDown.Button.Visible = not atBottom
				tween(scrollButtonDown.Gradient, 'ImageTransparency', 'Number', nil, atBottom and 1 or 0, 0.2, easeFilters.quad)
				tween(scrollButtonDown.Arrow, 'ImageTransparency', 'Number', nil, atBottom and 1 or 0, 0.2, easeFilters.quad)
				tween(scrollButtonDown.Button, 'ImageTransparency', 'Number', nil, atBottom and 1 or 0, 0.2, easeFilters.quad)
				tween(scrollButtonDown.BackgroundClipper.Background, 'ImageTransparency', 'Number', nil, atBottom and 1 or 0, 0.2, easeFilters.quad)
				
				currentAtBottom = atBottom
			end
		end
	end)
end

benchmarker.check('start', 'Initialization B')


-- This function is a temporary fix for cases where the character fails to re-composite the texture after a change is made
function prompRecomposite()
	if character then
		local head = character:FindFirstChild('Head')
		if head then
			head.Transparency = head.Transparency+1
			head.Transparency = head.Transparency-1
		end
	end
end


function addAssetToRecentAssetList(assetId)
	-- Add to the All list
	addToRecentAssetList('allAssets', assetId)
	
	-- Add to specific lists
	fastSpawn(function()
		local assetInfo = getAssetInfo(assetId)
		if assetInfo then
			local assetTypeName = assetTypeNames[assetInfo.AssetTypeId] or 'Failed Name'
			if string.find(assetTypeName, 'Accessory') or assetTypeName == 'Shirt' or assetTypeName == 'Pants' or assetTypeName == 'Gear' or assetTypeName == 'Hat' or assetTypeName == '' then
				addToRecentAssetList('clothing', assetId)
			elseif assetTypeName == 'Left Arm' or assetTypeName == 'Left Leg' or assetTypeName == 'Right Arm' or assetTypeName == 'Right Leg' or assetTypeName == 'Head' or assetTypeName == 'Torso' or assetTypeName == 'Face' then
				addToRecentAssetList('body', assetId)
			elseif string.find(assetTypeName, 'Animation') then
				addToRecentAssetList('animation', assetId)
			end
		end
	end)
end

function addToRecentAssetList(name, item)
	local list = getOrCreateRecentAssetList(name)
	
	for i=#list, 1, -1 do
		if list[i] == item then
			removeFromRecentAssetList(name, i)
		end
	end
	
	table.insert(list, 1, item)
	while #list > maxNumberOfRecentAssets do
		removeFromRecentAssetList(name, maxNumberOfRecentAssets)
	end
end

function removeFromRecentAssetList(name, index)
	table.remove(getOrCreateRecentAssetList(name), index)
end

function getOrCreateRecentAssetList(name)
	return getRecentAssetList(name) or createRecentAssetList(name)
end

function getRecentAssetList(name)
	return recentAssetLists[name]
end

function createRecentAssetList(name)
	recentAssetLists[name] = {}
	return getRecentAssetList(name)
end

function getDescendants(parent, t)
	local t = t or {}
	for i, v in next, parent:GetChildren() do
		table.insert(t, v)
		getDescendants(v, t)
	end
	return t
end

function fastSpawn(func, ...)
	return coroutine.wrap(func)(...)
end

function renderWait(a)	-- Waits a single render frame if wait time is small enough
	local s = tick()
	if a and a>.0333 then
		wait(a)
	else
		runService.RenderStepped:wait()
	end
	return tick()-s
end

local function setErrorMessage(text)
	--[[screenGui.ErrorLabel.Visible = true
	screenGui.ErrorLabel.Text = 'Error: '..text]]
end

function copyTable(originalTable)
	local copy = {}
	for index,value in pairs(originalTable) do
		copy[index] = value
	end
	return copy
end

function addTables(table1, table2)
	for i,v in ipairs(table2) do
		table.insert(table1, #table1+1, v)
	end
end

function findFirstChildOfType(parent, typeName)
	if parent then
		for _,child in pairs(parent:GetChildren()) do
			if child:IsA(typeName) then
				return child
			end
		end
	end
end

function isWearingAssetType(assetTypeName)
	for _, assetId in pairs(currentlyWearing) do
		if assetTypeNames[getAssetInfo(assetId)] == assetTypeName then
			return true
		end
	end
	return false
end

local cachedAssetInfo = {}
function getAssetInfo(assetId)
	if assetId then
		local assetInfo = cachedAssetInfo['id'..assetId]
		if assetInfo then
			return assetInfo
		end

		local success, assetData = pcall(function()
			return marketplaceService:GetProductInfo(assetId)
		end)
		if success and assetData then
			assetInfo = assetData
			cachedAssetInfo['id'..assetId] = assetInfo
			return assetInfo
		end
	end
	setErrorMessage('failed to get asset info '..(assetId or 'nil'))
end

function getCompleteAssetInfo(assetId)
	-- Ensures that certain fields are filled out.  The new web endpoint doesn't return descriptions so we need to get them as we need them.
	local assetInfo = getAssetInfo(assetId)
	
	if not assetInfo.Description then
		local productInfo = marketplaceService:GetProductInfo(assetId)
		assetInfo.Description = productInfo.Description
	end
	
	return assetInfo
end

function getCompleteAssetInfoAsync(assetId) -- Returns nil if it yields
	return fastSpawn(getCompleteAssetInfo, assetId)
end


function getRestingPartOffset(partName)
	return partRestingOffsets[partName] or CFrame.new()
end


function recalculateRestingPartOffsets()
	local root = character:FindFirstChild('HumanoidRootPart')
	
	local joints = {}
	for i, v in next, getDescendants(character) do
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
					for i, joint in next, joints[part] do
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


function adjustCameraProperties(instant)
	camera.CameraType = Enum.CameraType.Scriptable
	 
	local targetCFrame = cameraCFrames.default
	local targetFOV = 70
	
	if page and not viewMode then
		if page.CameraPositionOffset then
			targetCFrame = targetCFrame * CFrame.new(page.CameraPositionOffset)
		end
		if page.CameraCFrameOffset then
			targetCFrame = targetCFrame * page.CameraCFrameOffset
		end
		if page.CameraFOV then
			targetFOV = page.CameraFOV
		end
		
		cameraFocus = page.CameraFocus or defaultCameraFocus
	end
	
	if workspace:FindFirstChild('CameraPositionOffset') and not isCoreSetup then
		targetCFrame = targetCFrame * CFrame.new(workspace.CameraPositionOffset.Value)
	end
	if workspace:FindFirstChild('CameraPositionOffset') and not isCoreSetup then
		targetCFrame = targetCFrame * CFrame.Angles(
			math.rad(workspace.CameraRotationOffset.Value.x),
			math.rad(workspace.CameraRotationOffset.Value.y),
			math.rad(workspace.CameraRotationOffset.Value.z)
		)
	end
	
	if flagManager.AvatarEditorCameraZoomingEnabled then
		if viewMode then
			targetCFrame = cameraCFrames.fullView
		end
		
		local focusPoint = Vector3.new()
		local baseCF = workspace.Model.Unions.BaseCylinder.CFrame
		if humanoid.Torso and cameraFocus.Parts then
			local focusPointRelative = Vector3.new()
			
			for i, partName in next, cameraFocus.Parts do
				focusPointRelative = focusPointRelative + getRestingPartOffset(partName).p/#cameraFocus.Parts
			end
			
			local originCF = humanoid.Torso.CFrame
			if waitingForInitialAssetLoad then
				originCF = baseCF + Vector3.new(0, 3, 0)
			end
			
			focusPoint = originCF * focusPointRelative
		else
			focusPoint = baseCF.p
		end
		
		do -- pixel perfect camera rotation
			local targetCF = CFrame.new(targetCFrame.p, focusPoint)
			
			local centerPixel = Vector2.new()
			
			if viewMode then
				centerPixel = camera.ViewportSize * Vector2.new(0.5, 0.5)
			elseif tabletMode then
				centerPixel = camera.ViewportSize * Vector2.new(0.3, 0.5) + Vector2.new(-45, 0)
			elseif phoneMode then
				centerPixel = camera.ViewportSize * Vector2.new(0.5, 0.75)
			end

			-- un-tilt the camera
			local targetTilt = CFrame.Angles(math.asin(targetCF.lookVector.y), 0, 0)
			targetCF = targetCF * targetTilt:inverse()
			
			-- adjust for pixel position
			local prevCF = camera.CFrame
			camera.CFrame = targetCF
			
			local ray = camera:ViewportPointToRay(centerPixel.x, centerPixel.y, 0)
			local rotation = targetCF:toObjectSpace(CFrame.new(targetCF.p, targetCF.p + ray.Direction))
			
			camera.CFrame = prevCF
			
			local xr, yr, zr = rotation:toEulerAnglesXYZ()
			rotation = CFrame.Angles(xr, -yr, zr)
			
			targetCFrame = targetCF * rotation * targetTilt
		end
		
		if instant then
			camera.CFrame = targetCFrame
			camera.FieldOfView = targetFOV
		else
			tween(camera, 'CFrame', 'CFrame', nil, targetCFrame, 0.5, easeFilters.quad, easeFilters.easeInOut)
			tween(camera, 'FieldOfView', 'Number', nil, targetFOV, 0.5, easeFilters.quad, easeFilters.easeInOut)
		end
	else
		camera.CFrame = cameraCFrames.default
		camera.FieldOfView = 70
	end
end

adjustCameraProperties(true)

workspace.CurrentCamera:GetPropertyChangedSignal('ViewportSize'):connect(function()
	adjustCameraProperties(true)
end)


--todo: remove error debug guis from get and post
if doTestHttpGet then
	testHttpGetFunc = require(modulesParent.TestHttpGet)
end
function testHttpGet(...)
	assert(doTestHttpGet, 'HttpGet is not test mode')
	
	return testHttpGetFunc(...)
end

function httpGet(...)
	if not isCoreSetup then
		-- This is code to test in studio
		wait(math.random()*.5)
		local fakeStuff2 = {92142841,243778818,125013849,91676048,30331986,20010032,15967743,31117267,23932048,6340227,6340101,442477167,424141444,431412239}
		local fakeStuff = {assetIds = fakeStuff2}
		return httpService:JSONEncode(fakeStuff)

	else
		-- This is the important code
		local tuple = {...}
		local url = tuple[1]
		local v = {pcall(function()
			return game:HttpGetAsync(url)
		end)}
		if not v[1] then
			setErrorMessage("Get "..url)
			return "[]"
		end
		return select(2, unpack(v))

	end
end

function httpPost(...)
	if not isCoreSetup then
		-- This is code to test in studio
		wait(math.random()*.5)
		return '{"invalidAssetIds":[0],"success":true}'

	else
		-- This is the important code
		local tuple = {...}
		local url = tuple[1]
		local v = {pcall(function()
			return game:HttpPostAsync(unpack(tuple))
		end)}
		if not v[1] then
			setErrorMessage("Set "..url)
			return false
		end

		if v[2] then
			local response = httpService:JSONDecode(v[2])
			if response then
				return response.success
			end
		end
				
		return false
	end
end


function setScrollButtonVisible(visible)
	if tabletMode then
		if visible then
			scrollButtonDown.Visible = true
		else
			scrollButtonDown.Visible = false
		end
	end
end


local bodyColorNameMap = {
	["HeadColor"] = 'headColorId',
	["LeftArmColor"] = 'leftArmColorId',
	["LeftLegColor"] = 'leftLegColorId',
	["RightArmColor"] = 'rightArmColorId',
	["RightLegColor"] = 'rightLegColorId',
	["TorsoColor"] = 'torsoColorId',
}
savedBodyColors = copyTable(bodyColors)

savedScales = copyTable(scales)

function characterSave(doWait)
	if flagManager.AvatarEditorWaitsForInitialLoad then
		if waitingForInitialLoad then
			print("Did not save because initial character hasn't fully loaded")
			return
		end
	end
	local bodyColorsFinished = false
	fastSpawn(function()
		local bodyColorsChanged = false
		for index, value in pairs(bodyColors) do
			if value ~= savedBodyColors[index] then
				bodyColorsChanged = true
				break
			end
		end
		if bodyColorsChanged then
			local sendingBodyColorsTable = {}
			for name,sendingName in pairs(bodyColorNameMap) do
				sendingBodyColorsTable[sendingName] = bodyColors[name]
			end
			local sendingBodyColorsData = httpService:JSONEncode(sendingBodyColorsTable)
			local successfulSave = httpPost(avatarUrlPrefix.."/v1/avatar/set-body-colors", sendingBodyColorsData)
			if successfulSave then
				savedBodyColors = copyTable(bodyColors)
				print('Saved BodyColors')
			else
				print('Failure Saving BodyColors')
			end
		end
		bodyColorsFinished = true
	end)

	local scalesFinished = false
	fastSpawn(function()
		local scalesChanged = false
		for index, value in pairs(scales) do
			if value ~= savedScales[index] then
				scalesChanged = true
				break
			end
		end
		if scalesChanged then
			local sendingScalesData = '{"depth":'..string.format("%.4f", scales.depth)..',"height":'..string.format("%.4f", scales.height)..',"width":'..string.format("%.4f", scales.width)..',"head":'..string.format("%.4f", scales.head)..'}'
			local successfulSave = httpPost(avatarUrlPrefix.."/v1/avatar/set-scales", sendingScalesData)
			if successfulSave then
				savedScales = copyTable(scales)
				print('Saved Scales')
			else
				print('Failure Saving Scales')
			end
		end
		scalesFinished = true
	end)

	local avatarTypeFinished = false
	fastSpawn(function()
		local avatarTypeChanged = savedAvatarType ~= avatarType
		if avatarTypeChanged then
			local successfulSave = httpPost(avatarUrlPrefix.."/v1/avatar/set-player-avatar-type", '{"playerAvatarType":"'..avatarType..'"}')
			if successfulSave then
				savedAvatarType = avatarType
				print('Saved AvatarType')
			else
				print('Failure Saving AvatarType')
			end
		end
		avatarTypeFinished = true
	end)

	local assetsFinished = false
	fastSpawn(function()
		local assetsChanged = false
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

			local sendingAssetsData = httpService:JSONEncode({['assetIds']=currentlyWearing})
			local successfulSave = httpPost(avatarUrlPrefix.."/v1/avatar/set-wearing-assets", sendingAssetsData)
			if successfulSave then
				savedWearingAssets = copyTable(currentlyWearing)
				print('Saved WearingAssets')
			else
				print('Failure Saving WearingAssets')
			end
		end
		assetsFinished = true
	end)

	if doWait then
		while not (bodyColorsFinished and avatarTypeFinished and assetsFinished and scalesFinished) do
			wait()
		end
		return
	end
end


function recursiveDisable(parent)
	if parent then
		if parent:IsA('Script') then
			parent.Disabled = true
		end
		for _,child in pairs(parent:GetChildren()) do
			recursiveDisable(child)
		end
	end
end

benchmarker.check('start', 'Initialization C')

benchmarker.check('start', 'Initialization D')

if workspace:FindFirstChild('CameraPositionOffset') and not isCoreSetup then
	workspace.CameraPositionOffset.Changed:connect(function()
		adjustCameraProperties()
	end)
end
if workspace:FindFirstChild('CameraRotationOffset') and not isCoreSetup then
	workspace.CameraRotationOffset.Changed:connect(function()
		adjustCameraProperties()
	end)
end
if workspace:FindFirstChild('CenterPixel') and not isCoreSetup then
	workspace.CenterPixel.Changed:connect(function()
		adjustCameraProperties()
	end)
end


local toolHoldAnimationTrack = nil
function holdToolPos(state)
	if toolHoldAnimationTrack then
		toolHoldAnimationTrack:Stop()
		toolHoldAnimationTrack = nil
	end
	if character and character.Parent and humanoid and humanoid:IsDescendantOf(game.Workspace) then
		if state == 'Up' then
			local animationsFolder = character:FindFirstChild('Animations')
			if animationsFolder then
				local toolHoldAnimationObject = animationsFolder:FindFirstChild('Tool')
				if toolHoldAnimationObject then
					toolHoldAnimationTrack = humanoid:LoadAnimation(toolHoldAnimationObject)
					toolHoldAnimationTrack:Play(0)
				end
			end
		end
	end
end

function findFirstMatchingAttachment(model, name)
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

function buildWeld(part0, part1, c0, c1, weldName)
	local weld = Instance.new('Weld')
	weld.C0 = c0
	weld.C1 = c1
	weld.Part0 = part0
	weld.Part1 = part1
	weld.Name = weldName
	weld.Parent = part0
	return weld
end

function sortAndEquipItemToCharacter(thing, assetInsertedContentList)
	if thing then
		if thing.className == 'ShirtGraphic' then
			return
		end

		recursiveDisable(thing)

		if thing:IsA("DataModelMesh") then				-- Head mesh
			local head = character:FindFirstChild('Head')
			if head then
				local replacedAsset = findFirstChildOfType(head, "DataModelMesh")
				if replacedAsset then
					replacedAsset:Destroy()
				end
				thing.Parent = head
				table.insert(assetInsertedContentList, thing)
			end
	
		elseif thing:IsA("Decal") then					-- Face		-- This could get messy if we ever have decals in other assets. Here we just assume that it is a face.
			local head = character:FindFirstChild('Head')
			if head then
				local replacedAsset = findFirstChildOfType(head, "Decal")
				if replacedAsset then
					replacedAsset:Destroy()
				end
				thing.Parent = head
				table.insert(assetInsertedContentList, thing)
			end
	
		elseif thing:IsA("CharacterAppearance") then	-- Thing, just parent it.
			thing.Parent = character
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

function equipItemToCharacter(item)		-- Item should be an accessory or tool.
	if item and character then
		item.Parent = character
		local handle = item:FindFirstChild('Handle')
		if handle then
			handle.CanCollide = false

			local attachment = findFirstChildOfType(handle,'Attachment')
			local matchingAttachment = nil
			local matchingAttachmentPart = nil
			if attachment then
				matchingAttachment = findFirstMatchingAttachment(character, attachment.Name)
				if matchingAttachment then
					matchingAttachmentPart = matchingAttachment.Parent
				end
			end
			if matchingAttachmentPart then	-- This infers that both attachments were found
				buildWeld(handle, matchingAttachmentPart, attachment.CFrame, matchingAttachment.CFrame, "AccessoryWeld")
			else
				if item:IsA('Accoutrement') then
					local head = character:FindFirstChild('Head')
					if head then
						buildWeld(handle, head, item.AttachmentPoint, CFrame.new(0,.5,0), "AccessoryWeld")
					end
				elseif item:IsA('Tool') then
					local rightHand = character:FindFirstChild('RightHand')
					local rightArm = character:FindFirstChild('Right Arm')
					if rightHand then
						local gripCF = CFrame.new(0.0108650923, -0.168664441, -0.0154389441, 1, 0, -0, 0, 6.12323426e-017, 1, 0, -1, 6.12323426e-017)	--todo: magic numbers that need to be swapped out with an algorithm
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

function findIfEquipped(assetId)
	for _,currentAssetId in pairs(currentlyWearing) do
		if currentAssetId == assetId then
			return true
		end
	end
end

local currentWarning = 0
function displayWarning(text, displayTime) -- No displayTime = infinite
	fastSpawn(function()
		closeWarning(true)
		
		topFrame.Warning.Visible = true
		
		local thisWarning = currentWarning + 1
		currentWarning = thisWarning
		
		warningIsOpen = true
		
		local t = 0.3
		local ttext = 0.1
		
		topFrame.Warning.WarningText.TextTransparency = 1
		topFrame.Warning:TweenSizeAndPosition(UDim2.new(0, 266, 0, 70), UDim2.new(0.5, -133, 0.5, -35), nil, nil, t)
		tween(topFrame.Warning.WarningIcon, 'Rotation', 'Number', 0, -360, t)
		tween(topFrame.Warning.WarningIcon, 'ImageTransparency', 'Number', 1, 0, t)
		topFrame.Warning.WarningIcon:TweenPosition(UDim2.new(0, 12, 0.5, -24), nil, nil, t, true)
		tween(topFrame.Warning.BackgroundFill, 'ImageTransparency', 'Number', 1, 0.25, t)
		tween(topFrame.Warning.RoundedEnd, 'ImageTransparency', 'Number', 1, 0.25, t)
		tween(topFrame.Warning.RoundedStart, 'ImageTransparency', 'Number', 1, 0.25, t)
		
		topFrame.Warning.WarningText.Text = text or 'errtext'
		
		wait(t)
		
		if thisWarning ~= currentWarning then return end
		
		tween(topFrame.Warning.WarningText, 'TextTransparency', 'Number', 1, 0, t)

		if thisWarning ~= currentWarning then return end
		
		if displayTime then
			wait(displayTime)
			if thisWarning == currentWarning then
				closeWarning()
			end
		end
	end)
end

function closeWarning(instant)
	if warningIsOpen or instant then
		fastSpawn(function()
			warningIsOpen = false
			
			local t = instant and 0 or 0.3
			local ttext = instant and 0 or 0.1
		
			local thisWarning = currentWarning + 1
			currentWarning = thisWarning
			
			tween(topFrame.Warning.WarningText, 'TextTransparency', 'Number', nil, 1, ttext)
			if not instant then
				wait(ttext)
				if thisWarning ~= currentWarning then return end
			end
			
			if instant then
				topFrame.Warning.Size = UDim2.new(0, 70, 0, 70)
				topFrame.Warning.Position = UDim2.new(0.5, -35, 0.5, -35)
				topFrame.Warning.WarningIcon.Position = UDim2.new(0.5, -24, 0.5, -24)
			else
				topFrame.Warning:TweenSizeAndPosition(UDim2.new(0, 70, 0, 70), UDim2.new(0.5, -35, 0.5, -35), nil, nil, t, true)
				topFrame.Warning.WarningIcon:TweenPosition(UDim2.new(0.5, -24, 0.5, -24), nil, nil, t, true)
			end
			tween(topFrame.Warning.WarningIcon, 'ImageTransparency', 'Number', nil, 1, t)
			tween(topFrame.Warning.BackgroundFill, 'ImageTransparency', 'Number', nil, 1, t)
			tween(topFrame.Warning.RoundedEnd, 'ImageTransparency', 'Number', nil, 1, t)
			tween(topFrame.Warning.RoundedStart, 'ImageTransparency', 'Number', nil, 1, t)
		end)
	end
end

local bodyColorMappedParts = {
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

function updateCharacterBodyColors()
	if character then
		for _,v in pairs(character:GetChildren()) do
			local foundLink = bodyColorMappedParts[v.Name]
			if v:IsA('BasePart') and foundLink then
				local bodyColorNumber = bodyColors[foundLink]
				if bodyColorNumber then
					v.BrickColor = BrickColor.new(bodyColorNumber)
				end
			end
		end
	end
end

local itemsOnR15 = {}
function amendR15ForItemAdded(assetId)
	amendR15ForItemRemoved(assetId)
	
	local model = insertService:LoadAsset(assetId)
	recursiveDisable(model)
	
	local stillWearing = false
	for i, v in next, currentlyWearing do
		if v == assetId then
			stillWearing = true
			break
		end
	end
	
	if not stillWearing then return end
	
	local info = amendR15ForItemAddedAsModel(model)
	
	itemsOnR15[assetId] = info
end

function repositionR15Joints(joints)
	for i, v in next, joints or getDescendants(character) do
		if v:IsA('JointInstance') then
			local attachment0 = v.Part0:FindFirstChild(v.Name..'RigAttachment')
			local attachment1 = v.Part1:FindFirstChild(v.Name..'RigAttachment')
			
			if attachment0 and attachment1 then
				v.C0 = attachment0.CFrame
				v.C1 = attachment1.CFrame
			end
		end
	end
	
	recalculateRestingPartOffsets()
end

function amendR15ForItemAddedAsModel(model)
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
	for i, thing in next, stuff do
		if thing.Name:lower() == 'r15' then
			for i, piece in next, thing:GetChildren() do
				table.insert(bodyStuff, piece)
			end
		elseif thing.Name:lower() ~= 'r6' then
			table.insert(otherStuff, thing)
		end
	end
	
	-- Replace body parts
	for i, thing in next, bodyStuff do
		if thing:IsA('MeshPart') then
			info.replacesR15Parts[thing.Name] = true
			
			if thing.Size.magnitude <= 0.002 then -- Lua can't resize parts below 0.2, so just make them invisible
				thing.Transparency = 1
			end
			
			local oldThing = character:FindFirstChild(thing.Name)
			if oldThing then
				local thingClone = thing:Clone()
				thing.Parent = character
				
				local repositionTheseJoints = {}
				
				-- Reassign old joints, move important stuff to the new part
				for i, v in next, getDescendants(character) do
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
							v.Parent = thing
						end
					end
				end
				
				oldThing:Destroy()
				
				for i, v in next, thing:GetChildren() do
					if v:IsA('Attachment') then
						if thingClone:FindFirstChild(v.Name) then
							v.CFrame = thingClone[v.Name].CFrame
							v.Axis = thingClone[v.Name].Axis
							v.SecondaryAxis = thingClone[v.Name].SecondaryAxis
						end
					end
				end
				
				repositionR15Joints(repositionTheseJoints)
			end
		else
			table.insert(otherStuff, thing)
		end
	end
	
	-- Equip tool
	for i, thing in next, otherStuff do
		if thing:IsA('DataModelMesh') then
			info.replacesHead = true
			replaceHead(thing)
		elseif thing:IsA('Decal') then			-- We currently assume that decals are faces. This may need to change in the future.
			info.replacesFace = true
			replaceFace(thing)
		elseif thing:IsA('Accoutrement') then
			equipItemToCharacter(thing)
			table.insert(info.easyRemove, thing)
		elseif thing:IsA('Tool') then
			equipItemToCharacter(thing)
			table.insert(info.easyRemove, thing)
			holdToolPos('Up')
			info.hasTool = true
		elseif thing:IsA('CharacterAppearance') then		-- This includes quite a few object types. Shirts, Pants, BodyMeshes
			thing.Parent = character
			table.insert(info.easyRemove, thing)
			
			-- Have to refresh the character texture because clothes dont update
			prompRecomposite()
		end
	end
	
	-- Rescale
	refreshCharacterScale()
	
	-- Update colors
	updateCharacterBodyColors()
	
	-- Make sure camera is in the right place
	adjustCameraProperties()
	
	return info
end

function amendR15ForItemRemoved(assetId)
	local info = itemsOnR15[assetId]
	itemsOnR15[assetId] = nil
	
	if info then
		if info.easyRemove then
			for i, v in next, info.easyRemove do
				v:Destroy()
			end
		end
		if info.replacesR15Parts then
			local replaceFolder = Instance.new'Folder'
			replaceFolder.Name = 'R15'
			
			for v in next, info.replacesR15Parts do
				if game.ReplicatedStorage.CharacterR15:FindFirstChild(v) then
					game.ReplicatedStorage.CharacterR15[v]:Clone().Parent = replaceFolder
				end
			end
			
			amendR15ForItemAddedAsModel(replaceFolder)
		end
		if info.replacesHead then
			replaceHead(game.ReplicatedStorage.CharacterR15.Head.Mesh:Clone())
		end
		if info.replacesFace then
			replaceFace(game.ReplicatedStorage.CharacterR15.Head.face:Clone())
		end
		if info.hasTool then
			holdToolPos('Down')
		end
		
		updateCharacterBodyColors()
	end
end

function replaceHead(newMesh)
	if character:FindFirstChild('Head') and character.Head:FindFirstChild('Mesh') then
		character.Head.Mesh:Destroy()
	end
	
	newMesh.Parent = character.Head
end

function replaceFace(newFace)
	local head = character:FindFirstChild('Head')
	if head then
		local currentFace = findFirstChildOfType(head, 'Decal')
		if currentFace then
			currentFace:Destroy()
		end
		newFace.Parent = head
	end
end

function scaleCharacter(newBodyScale, newHeadScale) -- Unfaithful lua implementation of Humanoid::scaleCharacter
	if avatarType == 'R6' then return end
	
	local bodyScaleVector = newBodyScale
	local headScaleVector = Vector3.new(newHeadScale, newHeadScale, newHeadScale)
	
	local jointInfo = {}
	local parts = {}
	local joints = {}
	
	for i, child in next, getDescendants(character) do
		if child:IsA('JointInstance') then
			jointInfo[child] = {Part0=child.Part0, Part1=child.Part1, Parent=child.Parent}
			table.insert(joints, child)
		end
	end
	
	for i, part in next, character:GetChildren() do
		if part:IsA('BasePart') and part.Name ~= 'HumanoidRootPart' then
			local defaultScale = part:FindFirstChild('DefaultScale') and part.DefaultScale.Value or Vector3.new(1, 1, 1)
			
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
			
			for j, child in next, part:GetChildren() do
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
	
	for i, part in next, parts do
		part.Parent = character
	end
	
	repositionR15Joints(joints)
	
	humanoid.HipHeight = 1.5 * newBodyScale.y
end

function getBodyScale()
	return Vector3.new(scales.width, scales.height, scales.depth)
end

function refreshCharacterScale()
	if flagManager.AvatarEditorUsesEngineCharacterScaling then
		spawn(function()	-- Wrapping this in a spawn will limit updates to 30fps. At 60fps, the character animations flicker.
			if humanoid then
				-- This code creates value objects under the humanoid, which the Roblox engine will use to scale the character
				local depthTag = humanoid:FindFirstChild('BodyDepthScale')
				if not depthTag then
					local depthTag = Instance.new('NumberValue')
					depthTag.Name = 'BodyDepthScale'
					depthTag.Value = scales.depth
					depthTag.Parent = humanoid
				else
					depthTag.Value = scales.depth
				end
				local heightTag = humanoid:FindFirstChild('BodyHeightScale')
				if not heightTag then
					local heightTag = Instance.new('NumberValue')
					heightTag.Name = 'BodyHeightScale'
					heightTag.Value = scales.height
					heightTag.Parent = humanoid
				else
					heightTag.Value = scales.height
				end
				local widthTag = humanoid:FindFirstChild('BodyWidthScale')
				if not widthTag then
					local widthTag = Instance.new('NumberValue')
					widthTag.Name = 'BodyWidthScale'
					widthTag.Value = scales.width
					widthTag.Parent = humanoid
				else
					widthTag.Value = scales.width
				end
				local headTag = humanoid:FindFirstChild('HeadScale')
				if not headTag then
					local headTag = Instance.new('NumberValue')
					headTag.Name = 'HeadScale'
					headTag.Value = scales.head
					headTag.Parent = humanoid
				else
					headTag.Value = scales.head
				end
			end
		end)
	else
		scaleCharacter(getBodyScale(), scales.head)
	end
end

local buildingCharacterLock = false
local queuedRebuild = false
function createR15Rig()
	if not buildingCharacterLock then
		buildingCharacterLock = true
		-- Get r15 character
		local newCharacter = templateCharacterR15:clone()
		newCharacter.Name = 'Character'
		hrp = newCharacter:WaitForChild('HumanoidRootPart')
		humanoid = newCharacter:WaitForChild('Humanoid')
		hrp.Anchored = true
		local oldCharacter = character

		character = newCharacter
		for assetId,stuff in pairs(assetsLinkedContent) do
			for _,thing in pairs(stuff) do
				if thing then
					thing:Destroy()
				end
			end
			assetsLinkedContent[assetId] = nil
		end
		
		if flagManager.AvatarEditorUsesNewR15Loading then
			newCharacter.Parent = game.Workspace
			for i, assetId in next, currentlyWearing do
				amendR15ForItemAdded(assetId)
			end
		else
			-- Get all assets
			local r15BodyStuff = {}
			local otherStuff = {}
			for index,assetId in pairs(currentlyWearing) do				--todo: Load everything on seperate threads and wait for them all to complete.
				local assetModel = insertService:LoadAsset(assetId)
				local stuff = {assetModel}
				if stuff[1].className == 'Model' then
					stuff = assetModel:GetChildren()
				end
				for _,thing in pairs(stuff) do
					if string.lower(thing.Name) == 'r15' then
						for _,piece in pairs(thing:GetChildren()) do
							table.insert(r15BodyStuff, piece)
						end
					elseif thing.className ~= 'Folder' then
						table.insert(otherStuff, thing)
					end
				end
			end
	
			-- Iterate assets and replace body parts on rig
			for _,thing in pairs(r15BodyStuff) do
				if thing.className == 'MeshPart' then
					local thingToReplace = newCharacter:FindFirstChild(thing.Name)
					if thingToReplace then
						thingToReplace:Destroy()
						thing.Parent = newCharacter
					end
				else
					table.insert(otherStuff, thing)
				end
			end
	
			--Create breadth first rig joints
			local allRigAttachments = {}
			local function populateAttachments(thing)
				for _,child in pairs(thing:GetChildren()) do
					local nameLength = string.len(child.Name)
					if child.className == 'Attachment' and string.sub(child.Name,nameLength-12) == 'RigAttachment' then
						allRigAttachments[child] = true
					end
					populateAttachments(child)
				end
			end
			populateAttachments(newCharacter)
		
			local function recursiveRig(thing)
				for _,rigAttachment in pairs(thing:GetChildren()) do
					local nameLength = string.len(rigAttachment.Name)
					if rigAttachment.className == 'Attachment' and string.sub(rigAttachment.Name,nameLength-12) == 'RigAttachment' and allRigAttachments[rigAttachment] then
						allRigAttachments[rigAttachment] = nil
						for matchingAttachment,_ in pairs(allRigAttachments) do
							if rigAttachment.Name == matchingAttachment.Name and allRigAttachments[matchingAttachment] then
								allRigAttachments[matchingAttachment] = nil
								local matchingPart = matchingAttachment.Parent
								if matchingPart and matchingPart:IsA('BasePart') then
									local joint = Instance.new('Motor6D')
									joint.Name = string.sub(rigAttachment.Name, 1, nameLength-13)
									joint.Part0 = thing
									joint.C0 = rigAttachment.CFrame
									joint.Part1 = matchingPart
									joint.C1 = matchingAttachment.CFrame
									joint.Parent = matchingPart
									recursiveRig(matchingPart)
								end
							end
						end
					end
				end
			end
			recursiveRig(hrp)
	
			--Apply leftover assets to rig
			local toolFound = false
			for _,thing in pairs(otherStuff) do
				if thing and thing:IsA('Tool') then
					toolFound = true
				end

				sortAndEquipItemToCharacter(thing, {})
			end
			newCharacter.Parent = game.Workspace

			--Play tool animation if there was a tool loaded onto the character
			if toolFound then
				holdToolPos('Up')
			end
		end
		
		if oldCharacter and oldCharacter.Parent then
			oldCharacter:Destroy()
		end

		refreshCharacterScale()

		--if more assets were attempted to be equipped while building, build again.
		buildingCharacterLock = false
		if queuedRebuild then
			queuedRebuild = false
			createR15Rig()
		end
		
		updateCharacterBodyColors()
	else
		queuedRebuild = true
	end
end

function createR6Rig()
	if not buildingCharacterLock then
		buildingCharacterLock = true
		local newCharacter = templateCharacterR6:clone()
		newCharacter.Name = 'Character'
		hrp = newCharacter:WaitForChild('HumanoidRootPart')
		humanoid = newCharacter:WaitForChild('Humanoid')
		hrp.Anchored = true
		character:Destroy()
		character = newCharacter

		newCharacter.Parent = game.Workspace	--Character has to be in workspace before tools are equipped so that the toolhold animation can run

		for assetId,stuff in pairs(assetsLinkedContent) do
			for _,thing in pairs(stuff) do
				if thing then
					thing:Destroy()
				end
			end
			assetsLinkedContent[assetId] = nil
		end

		--put on assets
		for _,assetId in pairs(currentlyWearing) do
			local assetModel = insertService:LoadAsset(assetId) --Get all waiting overwith early
	
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
			for _,thing in pairs(stuff) do						--Equip asset differently depending on what it is.
				if string.lower(thing.Name) == 'r6' then
					for _,r6SpecificThing in pairs(thing:GetChildren()) do
						sortAndEquipItemToCharacter(r6SpecificThing, insertedStuff)
					end
				elseif thing.className ~= 'Folder' then
					sortAndEquipItemToCharacter(thing, insertedStuff)
				end
			end
		end

		updateCharacterBodyColors()

		buildingCharacterLock = false
	end
end


function updateAccessoriesColumnVisuals()
	local animateShake = false
	for i=1, numberOfAllowedHats do
		local accessoryButton = accessoriesColumn:FindFirstChild('AccessoryButton'..tostring(i))
		if accessoryButton then
			--local startImage = accessoryButton.Image
			local assetId = currentHats[i]
			if assetId then
				if accessoryButton.Image ~= assetImageUrl..tostring(assetId) then
					local numberOfHatsScale = (i-1)/(numberOfAllowedHats-1)
					delay(numberOfHatsScale*.25,function()
						local basePosition = UDim2.new(.5,-24, numberOfHatsScale, numberOfHatsScale*-48)
						if tabletMode then
							basePosition = UDim2.new(0, 0, 0, 84*(i-1))
						end
						accessoryButton:TweenPosition(basePosition + UDim2.new(0,0,0,15),'Out','Quad',.05,true,function()
							accessoryButton:TweenPosition(basePosition,'Out','Back',.15,true)
						end)
						accessoryButton.Image = assetImageUrl..tostring(currentHats[i])
					end)
				end
			else
				if accessoryButton.Image ~= '' then
					if phoneMode then
						accessoryButton:TweenPosition(UDim2.new(.5,-39,accessoryButton.Position.Y.Scale,accessoryButton.Position.Y.Offset),'Out','Quad',.05,true,function()
							accessoryButton:TweenPosition(UDim2.new(.5,-9,accessoryButton.Position.Y.Scale,accessoryButton.Position.Y.Offset),'InOut','Quad',.05,true,function()
								accessoryButton:TweenPosition(UDim2.new(.5,-24,accessoryButton.Position.Y.Scale,accessoryButton.Position.Y.Offset),'Out','Back',.25,true)
							end)
						end)
					elseif tabletMode then
						local basePosition = UDim2.new(0, 0, 0, 84*(i-1))
						accessoryButton:TweenPosition(basePosition + UDim2.new(0, -15, 0, 0), 'Out', 'Quad', 0.05, true, function()
							accessoryButton:TweenPosition(basePosition + UDim2.new(0, 15, 0, 0), 'InOut', 'Quad', 0.05, true, function()
								accessoryButton:TweenPosition(basePosition, 'Out', 'Quad', 0.05, true)
							end)
						end)
					end
					accessoryButton.Image = ''
				end
			end

			local fadeIcon = accessoryButton:FindFirstChild('FadeIcon')	--This is the faded icon of an accessory
			if fadeIcon then
				fadeIcon.Visible = not assetId	--Make the faded icon visible if there is no asset in the slot
			end
		end
	end
end


-- These are temporary while the correct default Shirt and Pants templates load in parallel
local myDefaultShirtTemplate = Instance.new('Shirt')
myDefaultShirtTemplate.Name = 'ShirtDefault'
local myDefaultPantsTemplate = Instance.new('Pants')
myDefaultPantsTemplate.Name = 'PantsDefault'
do
	-- This function was taken from: https://github.com/Roblox/Core-Scripts/blob/master/CoreScriptsRoot/Modules/Server/ServerChat/DefaultChatModules/ExtraDataInitializer.lua#L86
	local function GetNameValue(playerName)
		local value = 0
		for index = 1, #playerName do
			local cValue = string.byte(string.sub(playerName, index, index))
			local reverseIndex = #playerName - index + 1
			if #playerName%2 == 1 then
				reverseIndex = reverseIndex - 1
			end
			if reverseIndex%4 >= 2 then
				cValue = -cValue
			end
			value = value + cValue
		end
		return value
	end
	local myColorIndex = (GetNameValue(game.Players.LocalPlayer.Name) % #defaultShirtIds) + 1
	fastSpawn(function()
		myDefaultShirtTemplate = insertService:LoadAsset(defaultShirtIds[myColorIndex]):GetChildren()[1]
		myDefaultShirtTemplate.Name = 'ShirtDefault'
		myDefaultPantsTemplate = insertService:LoadAsset(defaultPantIds[myColorIndex]):GetChildren()[1]
		myDefaultPantsTemplate.Name = 'PantsDefault'
	end)
end

function updateDefaultShirtAndPants()
	--todo: possibly refactor default face into this codepath aswell. (later when flag is removed)
	if flagManager.AvatarEditorEnableDefaultShirtAndPants then
		if character then
			-- These two if-checks are for cases where the character might be destroyed.
			if defaultShirtModel and not character:IsAncestorOf(defaultShirtModel) then
				defaultShirtModel:Destroy()
				defaultShirtModel = nil
			end
			if defaultPantsModel and not character:IsAncestorOf(defaultPantsModel) then
				defaultPantsModel:Destroy()
				defaultPantsModel = nil
			end

			local hasShirt = false
			local hasPants = false
			for _, assetId in pairs(currentlyWearing) do
				local assetTypeName = assetTypeNames[getAssetInfo(assetId).AssetTypeId]
				if assetTypeName == "Shirt" then
					hasShirt = true
				elseif assetTypeName == "Pants" then
					hasPants = true
				end
			end

			local waistBodyColors = {}
			local numberOfWaistBodyColors = 0
			for index, value in pairs(bodyColors) do
				if index == "RightLegColor" or index == "LeftLegColor" or index == "TorsoColor" then	-- These are the three body areas that define the waist
					if not waistBodyColors[value] then
						waistBodyColors[value] = true
						numberOfWaistBodyColors = numberOfWaistBodyColors + 1
					end
				end
			end

			local characterShouldHaveDefaultShirt = numberOfWaistBodyColors <= 1 and not hasShirt and not hasPants
			local characterShouldHaveDefaultPants = numberOfWaistBodyColors <= 1 and not hasPants

			local addedDefaultClothes = false
			local destroyedDefaultClothes = false

			if characterShouldHaveDefaultShirt and not defaultShirtModel then
				defaultShirtModel = myDefaultShirtTemplate:clone()
				defaultShirtModel.Parent = character
				addedDefaultClothes = true
			elseif not characterShouldHaveDefaultShirt and defaultShirtModel then
				defaultShirtModel:Destroy()
				defaultShirtModel = nil
				destroyedDefaultClothes = true
			end

			if characterShouldHaveDefaultPants and not defaultPantsModel then
				defaultPantsModel = myDefaultPantsTemplate:clone()
				defaultPantsModel.Parent = character
				addedDefaultClothes = true
			elseif not characterShouldHaveDefaultPants and defaultPantsModel then
				defaultPantsModel:Destroy()
				defaultPantsModel = nil
				destroyedDefaultClothes = true
			end

			if not waitingForInitialLoad then
				if addedDefaultClothes then
					displayWarning("Default clothing has been applied to your avatar - wear something from your wardrobe.", 5)
				elseif destroyedDefaultClothes then
					--todo: Ideally we only close the warning if it is the default clothing display warning
					closeWarning()
				end
			end
			
			prompRecomposite()

		end
	end
end


function unequipAsset(assetId)
	-- Remove from wearing list
	for i=#currentlyWearing, 1, -1 do
		local currentAssetId = currentlyWearing[i]
		if currentAssetId == assetId then
			table.remove(currentlyWearing, i)
		end
	end

	local assetInfo = getAssetInfo(assetId)
	local assetTypeName = nil
	if assetInfo then
		assetTypeName = assetTypeNames[assetInfo.AssetTypeId]
	end

	if assetTypeName == 'Hat' then
		-- Remove from hats list
		for i=#currentHats, 1, -1 do
			local currentAssetId = currentHats[i]
			if currentAssetId == assetId then
				table.remove(currentHats, i)
			end
		end
		updateAccessoriesColumnVisuals()
	end

	-- Remove selectionBoxes
	local assetButtonName = 'AssetButton'..tostring(assetId)
	for _,assetButton in pairs(scrollingFrame:GetChildren()) do
		if assetButton.Name == assetButtonName then
			local selectionFrame = assetButton:FindFirstChild('SelectionFrame')
			if selectionFrame then
				selectionFrame:Destroy()
			end
		end
	end

	fastSpawn(function()
		if assetTypeName and string.find(assetTypeName, 'Animation') then
			if flagManager.EnabledAvatarAnimationCategory then
				if page.typeName and string.find(page.typeName, 'Animation') then
					startEquippedAnimationPreview(string.gsub(page.typeName, ' ', ''))
				else
					startEquippedAnimationPreview('IdleAnimation')
				end
			end
		else
			if avatarType == 'R15' then
				if flagManager.AvatarEditorAmendsRigsWhenAppearanceChanges then
					amendR15ForItemRemoved(assetId)
				else
					createR15Rig()
				end
				updateDefaultShirtAndPants()
			else
				-- Destroy rendered content
				local currentAssetContent = assetsLinkedContent[assetId]
				if currentAssetContent then
					for _,thing in pairs(currentAssetContent) do
						if thing and thing.Parent then
							thing:Destroy()
						end
					end
					assetsLinkedContent[assetId] = nil
				end
			
				-- Special cases where we need to replace removed asset with a default
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
							local currentFace = findFirstChildOfType(head,'Decal')
							if not currentFace then
								local face = Instance.new('Decal')
								face.Name = 'face'
								face.Texture = "rbxasset://textures/face.png"
								face.Parent = head
							end
						end
					end
				elseif assetTypeName == 'Shirt' or assetTypeName == 'Pants' then
					updateDefaultShirtAndPants()
				elseif assetTypeName == 'Hat' then
				elseif assetTypeName == 'Gear' then
					holdToolPos('Down')
				end
			end

		end
	end)

end

function setAnimationRotation(x, y, z)
	local t = 0.5
	tween(rootAnimationRotation, 'x', 'Number', nil, x, t, easeFilters.quad, easeFilters.easeInOut)
	tween(rootAnimationRotation, 'y', 'Number', nil, y, t, easeFilters.quad, easeFilters.easeInOut)
	tween(rootAnimationRotation, 'z', 'Number', nil, z, t, easeFilters.quad, easeFilters.easeInOut)
end

function pauseAnimation()
	animationIsPaused = true
end

function resumeAnimation()
	if animationIsPaused then
		resumeAnimationEvent:Fire()
		animationIsPaused = false
	end
end

function waitForAnimationResumed()
	if animationIsPaused then
		resumeAnimationEvent.Event:wait()
	end
end

function stopAllAnimationTracks()
	for i, v in next, humanoid:GetPlayingAnimationTracks() do
		if v ~= toolHoldAnimationTrack then
			v:Stop()
		end
	end
end

function playLookAround()
	pauseAnimation()
	stopAllAnimationTracks()
	
	local thisLookAroundAnimation = currentLookAroundAnimation + 1
	currentLookAroundAnimation = thisLookAroundAnimation
	
	local assets = getEquippedAnimationAssets('IdleAnimation')
	
	local options, totalWeight = getWeightedAnimations(assets[1]:GetChildren())
	
	local lightest, lightestWeight
	for v, weight in next, options do
		if lightest == nil or weight < lightestWeight then
			lightest, lightestWeight = v, weight
		end
	end
	
	if lightest then
		local track = humanoid:LoadAnimation(lightest)
		track:Play(0)
		wait(track.Length)
		track:Stop()
		track:Destroy()
	end
	
	if thisLookAroundAnimation == currentLookAroundAnimation then
		resumeAnimation()
	end
end

function getWeightedAnimations(possible)
	local options, totalWeight = {}, 0
	
	for i, v in next, possible do
		local weight = v:FindFirstChild('Weight') and v.Weight.Value or 1
		options[v] = weight
		totalWeight = totalWeight + weight
	end
	
	return options, totalWeight
end

function getEquippedAnimationAssets(assetTypeName)
	local assetTypeId = assetTypeNames[assetTypeName]
	local assetId
	
	if avatarType == 'R15' then
		for i, asset in next, currentlyWearing do
			local info = getAssetInfo(asset)
			if info.AssetTypeId == assetTypeId then
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

function getDefaultAnimationAssets(assetTypeName)
	local anims = {}
	
	if avatarType == 'R15' then
		if assetTypeName == 'ClimbAnimation' then
			table.insert(anims, game.ReplicatedStorage.CharacterR15.Animations.climb)
		elseif assetTypeName == 'FallAnimation' then
			table.insert(anims, game.ReplicatedStorage.CharacterR15.Animations.fall)
		elseif assetTypeName == 'IdleAnimation' then
			table.insert(anims, game.ReplicatedStorage.CharacterR15.Animations.idle)
		elseif assetTypeName == 'JumpAnimation' then
			table.insert(anims, game.ReplicatedStorage.CharacterR15.Animations.jump)
		elseif assetTypeName == 'RunAnimation' then
			table.insert(anims, game.ReplicatedStorage.CharacterR15.Animations.run)
		elseif assetTypeName == 'WalkAnimation' then
			table.insert(anims, game.ReplicatedStorage.CharacterR15.Animations.walk)
		elseif assetTypeName == 'SwimAnimation' then
			table.insert(anims, game.ReplicatedStorage.CharacterR15.Animations.swim)
			table.insert(anims, game.ReplicatedStorage.CharacterR15.Animations.swimidle)
		else
			error('Tried to get bad default animation for R15 '..tostring(assetTypeName))
		end
	elseif avatarType == 'R6' then
		if assetTypeName == 'ClimbAnimation' then
			table.insert(anims, game.ReplicatedStorage.CharacterR6.Animations.climb)
		elseif assetTypeName == 'FallAnimation' then
			table.insert(anims, game.ReplicatedStorage.CharacterR6.Animations.fall)
		elseif assetTypeName == 'IdleAnimation' then
			table.insert(anims, game.ReplicatedStorage.CharacterR6.Animations.idle)
		elseif assetTypeName == 'JumpAnimation' then
			table.insert(anims, game.ReplicatedStorage.CharacterR6.Animations.jump)
		elseif assetTypeName == 'RunAnimation' then
			table.insert(anims, game.ReplicatedStorage.CharacterR6.Animations.run)
		elseif assetTypeName == 'WalkAnimation' then
			table.insert(anims, game.ReplicatedStorage.CharacterR6.Animations.walk)
		elseif assetTypeName == 'SwimAnimation' then
			local swimAnim = game.ReplicatedStorage.CharacterR6.Animations.run:Clone()
			swimAnim.Name = 'swim'
			
			table.insert(anims, swimAnim)
		else
			error('Tried to get bad default animation for R6 '..tostring(assetTypeName))
		end
	end
	
	return anims
end

function getAnimationAssets(assetId)
	local asset = insertService:LoadAsset(assetId)
	local animAssets = asset.R15Anim:GetChildren()
	
	return animAssets
end

function startEquippedAnimationPreview(assetTypeName)
	startAnimationPreviewFromAssets(getEquippedAnimationAssets(assetTypeName))
end

function startDefaultAnimationPreview(assetTypeName)
	startAnimationPreviewFromAssets(getDefaultAnimationAssets(assetTypeName))
end

function startAnimationPreview(assetId)
	startAnimationPreviewFromAssets(getAnimationAssets(assetId))
end

function startAnimationPreviewFromAssets(animAssets) -- Array of StringValues containing Animation objects
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
		
		fastSpawn(function()
			while not stop do
				switch = true
				while switch do
					renderWait()
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
		
		-- weighted random selection
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
			
			currentTrack = humanoid:LoadAnimation(newAnim)
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
		
		while true do
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
				renderWait()
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
	
	fastSpawn(function()
		while not stop do
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

function stopAnimationPreview()
	if currentAnimationPreview ~= nil then
		currentAnimationPreview.Stop()
	end
	currentAnimationPreview = nil
	setAnimationRotation(0, 0, 0)
end

function equipAsset(assetId, dontPlayAnimations, stillValidEquipCheck)
	-- stillValidEquipCheck is a function that can be called during the process equipping an asset to see if the original action that caused the asset to be equipped is still the latest action.
	-- stillValidEquipCheck is only necessary for outfits because they expect to replace the entire character appearance.
	addAssetToRecentAssetList(assetId)
	
	local stillValidEquipCheck = stillValidEquipCheck or function() return true end

	local assetInfo = getAssetInfo(assetId)
	if assetInfo and not findIfEquipped(assetId) and stillValidEquipCheck() then
		--print('Equipping', assetId, assetTypeNames[assetInfo.AssetTypeId], assetInfo.Name)
		local assetTypeName = assetTypeNames[assetInfo.AssetTypeId]

		-- Unequip assets of similar type
		if assetTypeName == 'Hat' then
			while #currentHats >= numberOfAllowedHats do
				local currentAssetId = currentHats[#currentHats]
				if currentAssetId then
					unequipAsset(currentAssetId)	-- This could technically yield, but shouldn't because asset info has already been cached when the item was equipped.
				end
			end
			table.insert(currentHats, 1, assetId)
			updateAccessoriesColumnVisuals()
		else
			for i=#currentlyWearing, 1, -1 do
				local currentAssetId = currentlyWearing[i]
				if currentAssetId then
					local currentAssetInfo = getAssetInfo(currentAssetId)
					if currentAssetInfo and currentAssetInfo.AssetTypeId == assetInfo.AssetTypeId then
						unequipAsset(currentAssetId)
					end
				end
			end
		end

		if not stillValidEquipCheck() then
			return
		end

		-- Add equipped asset to list of currentlyWearing
		table.insert(currentlyWearing, assetId)

		-- Create selection frames
		local assetButtonName = 'AssetButton'..tostring(assetId)
		for _,assetButton in pairs(scrollingFrame:GetChildren()) do
			if assetButton.Name == assetButtonName then
				local selectionFrame = assetButton:FindFirstChild('SelectionFrame')
				if not selectionFrame then
					local selectionFrame = selectionFrameTemplate:clone()
					selectionFrame.Name = 'SelectionFrame'
					selectionFrame.ZIndex = assetButton.ZIndex
					selectionFrame.Visible = true
					selectionFrame.Parent = assetButton
				end
			end
		end

		local assetModel = insertService:LoadAsset(assetId)		-- Yields
		
		
		-- Escape if necessary
		local stillWearing
		for i, v in next, currentlyWearing do
			if v == assetId then
				stillWearing = true
				break
			end
		end
		if not stillWearing or not stillValidEquipCheck() then
			return
		end

		-- Apply the loaded asset(s)
		if not dontPlayAnimations and string.find(assetTypeName, 'Animation') and avatarType == 'R15' and stillValidEquipCheck() then
			startAnimationPreview(assetId)
		end
		-- If the new asset is not an animation then we need to update the render of the character
		-- Also, after loading model, check to make sure it is still equipped before dressing character
		if not string.find(assetTypeName, 'Animation') and findIfEquipped(assetId) then
				
			-- Render changes
			if avatarType == 'R6' then
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
				for _,thing in pairs(stuff) do						-- Equip asset differently depending on what it is.
					if string.lower(thing.Name) == 'r6' then
						for _,r6SpecificThing in pairs(thing:GetChildren()) do
							sortAndEquipItemToCharacter(r6SpecificThing, insertedStuff)
						end
					elseif thing.className ~= 'Folder' then
						sortAndEquipItemToCharacter(thing, insertedStuff)
					end
				end

			else
				if flagManager.AvatarEditorAmendsRigsWhenAppearanceChanges then
					amendR15ForItemAdded(assetId)
				else
					createR15Rig()
				end
			end
			updateDefaultShirtAndPants()

		end
		
		-- If the new asset is a bodypart, then we need to update the colors
		if assetInfo.AssetTypeId >= 25 and assetInfo.AssetTypeId <= 31 then
			updateCharacterBodyColors()
		end

	end
end


benchmarker.check('start', 'Initialization E')


for index=1, numberOfAllowedHats do
	local accessoryButton = accessoriesColumn:WaitForChild('AccessoryButton'..tostring(index))
	if accessoryButton then

		local takeOffFunction = function()
			local assetId = currentHats[index]
			if assetId then
				runParticleEmitter()
				unequipAsset(assetId)
				closeMenu()
				updateAccessoriesColumnVisuals()
			end
		end
		
		local showMenuFunction = function()
			local assetId = currentHats[index]
			if assetId then
				getCompleteAssetInfoAsync(assetId)
				openMenu('',
					{
						{text = 'Take Off', func = takeOffFunction},
						{text = 'View details',func = function() openDetails(assetId) end},
					},
					assetId
				)
			end
		end
		
		local clickFunction = function()
			if userInputService:IsKeyDown(Enum.KeyCode.Q) then
				showMenuFunction()
			else
				takeOffFunction()
			end
		end

		accessoryButton.MouseButton1Click:connect(clickFunction)
		accessoryButton.TouchLongPress:connect(showMenuFunction)
	end
end

function setTopMenuContainerState(state, tweenTime)
	if phoneMode then
		tweenTime = tweenTime or 0.1
		
		if state == 'Hidden' then
			topMenuContainer:TweenPosition(UDim2.new(0, -300, 0, 0), 'InOut', 'Quad', tweenTime, true)
		elseif state == 'Closed' then
			topMenuContainer:TweenPosition(UDim2.new(0, -300, 0, -10), 'InOut', 'Quad', tweenTime, true)
		elseif state == 'Open' then
			topMenuContainer:TweenPosition(UDim2.new(0,-357+#categories*61,0,-10),'Out','Quad',tweenTime,true)
		end
	elseif tabletMode then
		tweenTime = tweenTime or 0.2
		
		if state == 'Hidden' then
			-- intentionall empty
		elseif state == 'Closed' then
			topMenuContainer:TweenSize(UDim2.new(0, 98, 0, 98), 'InOut', 'Quad', tweenTime, true)
		elseif state == 'Open' then
			topMenuContainer:TweenSize(UDim2.new(0, 98, 1, -22), 'InOut', 'Quad', tweenTime, true)
		end
	end
end

function setViewMode(desiredViewMode)
	if desiredViewMode ~= viewMode then
		viewMode = desiredViewMode
		local tweenTime = .5
		
		if viewMode then

			if phoneMode then
				accessoriesColumn:TweenPosition(UDim2.new(-.1,-50,.05, 0),'InOut','Quad',tweenTime,true)
				avatarTypeSwitchFrame:TweenPosition(UDim2.new(1,-88,0,-86),'InOut','Quad',tweenTime,true)
				mainFrame:TweenPosition(UDim2.new(0,0,1,0),'InOut','Quad',tweenTime,true)
				topFrame:TweenSize(UDim2.new(1,0,1,0),'InOut','Quad',tweenTime,true)
			elseif tabletMode then
				accessoriesColumn:TweenPosition(UDim2.new(0,-156,0,76),'InOut','Quad',tweenTime,true)
				avatarTypeSwitchFrame:TweenPosition(UDim2.new(0.5,-148,0,-86),'InOut','Quad',tweenTime,true)
				mainFrame:TweenPosition(UDim2.new(1,0,0,0),'InOut','Quad',tweenTime,true)
				topFrame:TweenSize(UDim2.new(1,0,1,0),'InOut','Quad',tweenTime,true)
			end
			setTopMenuContainerState('Hidden', tweenTime)
			local fullViewCameraCF = cameraCFrames.fullView
			if flagManager.AvatarEditorCameraZoomingEnabled then
				adjustCameraProperties()
			else
				cameraController.tweenCamera(nil, fullViewCameraCF, tweenTime, easeFilters.quad, easeFilters.easeInOut)
			end
			
			spriteManager.equip(fullViewButton, 'ic-collapse')
			
			if tabletMode then
				fullViewButton:TweenPosition(UDim2.new(1, -52, 1, -52),'InOut','Quad',tweenTime,true)
			end
			
		else

			if phoneMode then
				accessoriesColumn:TweenPosition(UDim2.new(.05, 25,.05, 0),'InOut','Quad',tweenTime,true)
				avatarTypeSwitchFrame:TweenPosition(UDim2.new(1,-88,0,24),'InOut','Quad',tweenTime,true)
				mainFrame:TweenPosition(UDim2.new(0,0,.5,-18),'InOut','Quad',tweenTime,true)
				topFrame:TweenSize(UDim2.new(1,0,0.5,-18),'InOut','Quad',tweenTime,true)
			elseif tabletMode then
				accessoriesColumn:TweenPosition(UDim2.new(0, 56,0, 76),'InOut','Quad',tweenTime,true)
				avatarTypeSwitchFrame:TweenPosition(UDim2.new(0.5,-148,0,24),'InOut','Quad',tweenTime,true)
				mainFrame:TweenPosition(UDim2.new(0.5, -60, 0, 0),'InOut','Quad',tweenTime,true)
				topFrame:TweenSize(UDim2.new(0.5, 0, 1, 0), 'InOut', 'Quad', tweenTime, true)
			end
			setTopMenuContainerState('Closed', tweenTime)
			if flagManager.AvatarEditorCameraZoomingEnabled then
				adjustCameraProperties()
			else
				cameraController.tweenCamera(nil, cameraCFrames.default, tweenTime, easeFilters.quad, easeFilters.easeInOut)
			end
			
			spriteManager.equip(fullViewButton, 'ic-expand')
			
			if tabletMode then
				fullViewButton:TweenPosition(UDim2.new(1, -112, 1, -52),'InOut','Quad',tweenTime,true)
			end

		end
	end
end

benchmarker.check('start', 'Initialization F')

do
	local particleEmittionCount = 0
	function runParticleEmitter()
		fastSpawn(function()				--product didn't like the smoke mask
			particleScreen.Enabled = true
			particleScreen2.Enabled = true
			particleEmittionCount = particleEmittionCount + 1
			local thisParticleEmittionCount = particleEmittionCount
			wait(.3)
			if particleEmittionCount == thisParticleEmittionCount then
				particleScreen.Enabled = false
				particleScreen2.Enabled = false
			end
		end)
	end
end

benchmarker.check('start', 'Initialization G')

function closeDetails()
	local tweenTime = .25
	detailsMenuFrame:TweenPosition(UDim2.new(0,15,-.7,-40),'InOut','Quad',tweenTime,true)
	if tabletMode then
		detailsMenuFrame:TweenPosition(UDim2.new(0.5,-200,-0.5,-200),'InOut','Quad',tweenTime,true)
	end
	tween(shadeLayer, 'BackgroundTransparency', 'Number', nil, 1, tweenTime, easeFilters.quad, easeFilters.easeInOut):connect(function(completed)
		if completed then
			shadeLayer.Visible = false
		end
	end)
	detailsCloseImageLabel.ImageTransparency = .25
end

local detailsMenuCount = 0
function openDetails(assetId)
	if isCoreSetup and flagManager.AvatarEditorUsesBrowserWindowCall then
		closeMenu()
		guiService:OpenNativeOverlay("Catalog", "https://www."..domainUrl.."/catalog/"..assetId)
	else
		detailsMenuCount = detailsMenuCount + 1
		local myDetailsMenuCount = detailsMenuCount
	
		local tweenTime = .35
		detailsCloseImageLabel.ImageTransparency = .7
	
		if assetId then
			fastSpawn(function()
				local assetInfo = getCompleteAssetInfo(assetId)
				if assetInfo and detailsMenuCount == myDetailsMenuCount then
					if assetInfo.Name then
						detailsNameLabel.Text = assetInfo.Name
					end
					if assetInfo.Description then
						detailsDescriptionLabel.Text = assetInfo.Description
						detailsScrollingFrame.CanvasSize = UDim2.new(1,-30,0,detailsDescriptionLabel.TextBounds.Y)
						detailsScrollingFrame.CanvasPosition = Vector2.new(0,0)
					end
					if assetInfo.Creator and assetInfo.Creator.Name then
						detailsCreatorLabel.Text = 'By '..assetInfo.Creator.Name
					end
					detailsImageLabel.Image = assetImageUrl150..tostring(assetId)
				end
			end)
		end
	
		closeMenu()
	
		detailsMenuFrame:TweenPosition(UDim2.new(0,15,.15,0),'InOut','Quad',tweenTime,true)
		if tabletMode then
			detailsMenuFrame.Size = UDim2.new(0, 400, 0, 400)
			detailsMenuFrame.Position = UDim2.new(0.5, -200, -0.5, -200)
			detailsMenuFrame:TweenPosition(UDim2.new(0.5, -200, 0.5, -200),'InOut','Quad',tweenTime,true)
		end
		
		shadeLayer.Visible = true
		fastSpawn(function()
			wait()	--This is to make sure that the fade in happens after the fadeout of the menu, to overwrite that shade tween
			tween(shadeLayer, 'BackgroundTransparency', 'Number', nil, .45, tweenTime, easeFilters.quad, easeFilters.easeInOut)
		end)
	end
end

detailsCloseButton.MouseButton1Click:connect(function()
	closeDetails()
end)
detailsCloseButton.MouseButton1Down:connect(function()
	detailsCloseImageLabel.ImageTransparency = .25
end)

local openMenuCount = 0
function openMenu(title, tableOfButtons, assetId)
	openMenuCount = openMenuCount + 1
	local myOpenMenuCount = openMenuCount

	local tweenTime = .25
	menuTitleLabel.Text = title

	if assetId then
		fastSpawn(function()
			local assetInfo = getAssetInfo(assetId)
			if assetInfo and openMenuCount == myOpenMenuCount then
				menuTitleLabel.Text = assetInfo.Name
			end
		end)
	end

	--destroy previous buttons
	for _,v in pairs(menuFrame:GetChildren()) do
		if v.Name == 'OptionButton' then
			v:Destroy()
		end
	end

	for i,v in pairs(tableOfButtons) do
		local button = Instance.new('TextButton')
		button.Name = 'OptionButton'
		button.ZIndex = menuCancelButton.ZIndex
		button.AutoButtonColor = false
		button.Size = UDim2.new(1,0,0,48)
		button.Position = UDim2.new(0,0,0,48*i)
		button.BorderSizePixel = 0
		button.Text = v.text
		button.BackgroundColor3 = Color3.new(1,1,1)	--Color3.fromRGB(255,255,255)
		button.TextColor3 = Color3.new(.295,.295,.295)	--Color3.fromRGB(75,75,75)
		button.FontSize = 'Size18'
		button.Font = 'SourceSansLight'
		local divider = Instance.new('Frame')
		divider.ZIndex = button.ZIndex
		divider.BorderSizePixel = 0
		divider.BackgroundColor3 = Color3.new(.816,.816,.816) --Color3.fromRGB(208,208,208)
		divider.Size = UDim2.new(1,0,0,1)
		divider.Position = UDim2.new(0,0,1,-1)
		divider.Parent = button
		button.Parent = menuFrame
		if v.func then
			button.MouseButton1Click:connect(v.func)
		end
	end
	menuFrame.Size = UDim2.new(1,-30,0,48*(#tableOfButtons+2))
	menuFrame:TweenPosition(UDim2.new(0,15,1,-menuFrame.Size.Y.Offset),'InOut','Quad',tweenTime,true)
	if tabletMode then
		menuFrame.Size = UDim2.new(0, 400, 0, 48*(#tableOfButtons+2))
		menuFrame.Position = UDim2.new(0.5, -200, 1, 0)
		menuFrame:TweenPosition(UDim2.new(0.5,-200,1,-menuFrame.Size.Y.Offset),'InOut','Quad',tweenTime,true)
	end
	shadeLayer.Visible = true
	tween(shadeLayer, 'BackgroundTransparency', 'Number', nil, .45, tweenTime, easeFilters.quad, easeFilters.easeInOut)
end

function closeMenu()
	local tweenTime = .13
	menuFrame:TweenPosition(UDim2.new(0,15,1,0),'InOut','Quad',tweenTime,true)
	if tabletMode then
		menuFrame:TweenPosition(UDim2.new(0.5,-200,1,0),'InOut','Quad',tweenTime,true)
	end
	tween(shadeLayer, 'BackgroundTransparency', 'Number', nil, 1, tweenTime, easeFilters.quad, easeFilters.easeInOut):connect(function(completed)
		if completed then
			shadeLayer.Visible = false
		end
	end)
end

menuCancelButton.MouseButton1Click:connect(closeMenu)
shadeLayer.MouseButton1Click:connect(function()
	closeMenu()
	closeDetails()
end)


benchmarker.check('start', 'Initialization H')


do
	local avatarToggleDebounce = false
	local toggleTime = .1
	
	local function renderAvatarSwitch()
		if tabletMode then
			r6Label.TextColor3 = avatarType == 'R6' and Color3.new(1,1,1) or Color3.fromRGB(182, 182, 182)
			r15Label.TextColor3 = avatarType == 'R15' and Color3.new(1,1,1) or Color3.fromRGB(182, 182, 182)
		else
			r6Label.TextColor3 = avatarType == 'R6' and Color3.new(1,1,1) or Color3.new(.44,.44,.44)
			r15Label.TextColor3 = avatarType == 'R15' and Color3.new(1,1,1) or Color3.new(.44,.44,.44)
		end
		local desiredPosition = avatarType == 'R6' and UDim2.new(0,2,0,2) or UDim2.new(1,-32,0,2)
		avatarTypeSwitch:TweenPosition(desiredPosition, 'InOut', 'Quad', toggleTime, true)--'InOut', 'Quad', toggleTime, true)
		runParticleEmitter()
		--todo: play a switch sound
	end

	function updateAvatarType()
		renderAvatarSwitch()
		if avatarType == 'R15' then
			createR15Rig()
		else
			createR6Rig()
		end
	end

	function toggleAvatarType()
		if not avatarToggleDebounce then
			avatarToggleDebounce = true
			avatarType = avatarType == 'R6' and 'R15' or 'R6'
			local scalePageTab = tabList.Contents:FindFirstChild('TabScale')
			if scalePageTab then
				local colorModefier =  avatarType == 'R6' and .66 or 1
				scalePageTab.BackgroundColor3 = page.specialPageType == 'Scale' and Color3.fromRGB(246*colorModefier,136*colorModefier,2*colorModefier) or Color3.fromRGB(255*colorModefier,255*colorModefier,255*colorModefier)
			end
			updateAvatarType()
			
			if flagManager.EnabledAvatarAnimationCategory then
				if page.typeName and string.find(page.typeName, 'Animation') then
					startEquippedAnimationPreview(string.gsub(page.typeName, ' ', ''))
				else
					startEquippedAnimationPreview('IdleAnimation')
				end
			end
			
			if flagManager.AvatarEditorDisplaysWarningOnR15OnlyPages then
				if page.r15only and avatarType == 'R6' then
					displayWarning(page.r15onlyMessage or 'This feature is only available for R15')
				else
					closeWarning()
				end
			end
			
			wait(toggleTime)
			avatarToggleDebounce = false
		end
	end
	avatarTypeButton.MouseButton1Click:connect(toggleAvatarType)
	updateAvatarType()	--loads character and properly sets defaults
end

benchmarker.check('start', 'Initialization I')

local heightScaleMin = .95
local heightScaleMax = 1.05
local heightScaleIncrement = .01

local widthScaleMin = .70
local widthScaleMax = 1.00
local widthScaleIncrement = .01

local headScaleMin = .95
local headScaleMax = 1.00
local headScaleIncrement = .01

function updateAvatarRules()
	local avatarRulesRequest = doTestHttpGet and testHttpGet('/v1/avatar-rules') or httpGet(avatarUrlPrefix.."/v1/avatar-rules")
	avatarRulesRequest = httpService:JSONDecode(avatarRulesRequest)
	if avatarRulesRequest then
		local scaleRulesRequest = avatarRulesRequest['scales']
		if scaleRulesRequest then
			local scaleHeightRules = scaleRulesRequest['height']
			if scaleHeightRules then
				heightScaleMin = scaleHeightRules['min'] or heightScaleMin
				heightScaleMax = scaleHeightRules['max'] or heightScaleMax
				heightScaleIncrement = scaleHeightRules['increment'] or heightScaleIncrement
			end
			local scaleWidthRules = scaleRulesRequest['width']
			if scaleWidthRules then
				widthScaleMin = scaleWidthRules['min'] or widthScaleMin
				widthScaleMax = scaleWidthRules['max'] or widthScaleMax
				widthScaleIncrement = scaleWidthRules['increment'] or widthScaleIncrement
			end
			local scaleHeadRules = scaleRulesRequest['head']
			if scaleHeadRules then
				headScaleMin = scaleHeadRules['min'] or headScaleMin
				headScaleMax = scaleHeadRules['max'] or headScaleMax
				headScaleIncrement = scaleHeadRules['increment'] or headScaleIncrement
			end
		end
		
		local bodyColorsPalleteRequest = avatarRulesRequest['bodyColorsPalette']
		if bodyColorsPalleteRequest then
			bodyColorsPallete = bodyColorsPalleteRequest
		end
	end
end

if flagManager.AvatarEditorInitializationOptimization then
	fastSpawn(updateAvatarRules)
else
	updateAvatarRules()
end

benchmarker.check('start', 'Initialization J')

function scrapeXMLData(s, pattern)
	local pattern = pattern..'">'
	local findStart, findEnd = string.find(s, pattern, 1, true)
	if findEnd then
		local valueStart = findEnd + 1
		local findStart, findEnd = string.find(s, '<', valueStart, true)
		if findStart then
			local value = string.sub(s, valueStart, findStart-1)
			if value then
				return value
			end
		end
	end
end

--populate currentlyWearing, recentAssetsList, bodyColors, AvatarType, and scales--
local avatarFetchRequest = doTestHttpGet and testHttpGet("/v1/avatar") or httpGet(avatarUrlPrefix.."/v1/avatar")
avatarFetchRequest = httpService:JSONDecode(avatarFetchRequest)
if avatarFetchRequest then
	print('found character fetch')
	local bodyColorsRequest = avatarFetchRequest['bodyColors']
	if bodyColorsRequest then
		for name, mapName in pairs(bodyColorNameMap) do
			local color = bodyColorsRequest[mapName]
			if color then
				bodyColors[name] = color
			end
		end
		savedBodyColors = copyTable(bodyColors)
		updateCharacterBodyColors()
	else
		--time to get hacky
		local bodyColorsUrlRequest = avatarFetchRequest['bodyColorsUrl']
		if bodyColorsUrlRequest then
			local bodyColorXMLData = httpGet(bodyColorsUrlRequest)
			--print('Body Color Data:   ', bodyColorXMLData)
			if bodyColorXMLData then
				for bodyColorIndex,_ in pairs(bodyColors) do
					local bodyColorRip = scrapeXMLData(bodyColorXMLData, bodyColorIndex)
					--print('ripped', bodyColorIndex, bodyColorRip)
					if bodyColorRip then
						bodyColors[bodyColorIndex] = tonumber(bodyColorRip)
					end
				end
				savedBodyColors = copyTable(bodyColors)
				updateCharacterBodyColors()
			end
		end
	end
	local requestedAvatarType = avatarFetchRequest['playerAvatarType']
	if requestedAvatarType then
		local avatarTypeDifferent = requestedAvatarType ~= avatarType
		avatarType = requestedAvatarType
		savedAvatarType = avatarType
		if avatarTypeDifferent then
			updateAvatarType()
		end
	end

	local scalesRequest = avatarFetchRequest['scales']
	if scalesRequest then
		local height = scalesRequest['height']
		if height then
			scales.height = height
		end
		local width = scalesRequest['width']
		if width then
			scales.width = width
		end
		local depth = scalesRequest['depth']
		if depth then
			scales.depth = depth
		end
		local head = scalesRequest['head']
		if head then
			scales.head = head
		end
		savedScales = copyTable(scales)
		refreshCharacterScale()
	end

	updateDefaultShirtAndPants()
	local requestedAssetsData = avatarFetchRequest['assets']
	if requestedAssetsData then
		local waitingAssets = {}
		local numCompletedAssets = 0
		for _,assetData in pairs(requestedAssetsData) do
			local assetId = assetData['id']
			if assetId and type(assetId) == 'number' then
				waitingAssets[assetId] = false
				fastSpawn(function()
					equipAsset(assetId, true)
					waitingAssets[assetId] = true
					addAssetToRecentAssetList(assetId)
					numCompletedAssets = numCompletedAssets + 1
					
					if numCompletedAssets >= #requestedAssetsData then
						waitingForInitialAssetLoad = false
						recalculateRestingPartOffsets()
						refreshCharacterScale()
						adjustCameraProperties(true)
					end
				end)
			end
		end
		
		-- After all fetched assets are equipped, we can update the savedWearingAssets table.
		waitingForInitialLoad = true
		fastSpawn(function()
			--benchmarker.set('loadCharacter')
			local startTime = tick()
			while true do
				local allAssetsLoaded = true
				for assetId,handled in pairs(waitingAssets) do
					if not handled then
						allAssetsLoaded = false
						break
					end
				end
				if allAssetsLoaded then
					savedWearingAssets = copyTable(currentlyWearing)
					break
				end
				if tick()-startTime > 30 then	-- Was 15. New 30 will hang longer on slow connections, but it won't allow save overwrites
					print('Took too long to load character.')
					break
				end
				wait()
			end
			waitingForInitialLoad = false
			--benchmarker.check('loadCharacter')
			benchmarker.check('start', 'CHARACTER FULLY LOADED')
			
			if flagManager.EnabledAvatarAnimationCategory then
				startEquippedAnimationPreview('IdleAnimation')
			end
		end)
	end
end

benchmarker.check('start', 'Initialization K')
--------------------------------------------------


local wearOutfitRequestCount = 0
function wearOutfit(outfitId)
	print('Wear outfit:', outfitId)

	-- This code is used for cutting off the process of previous outfit equip calls. Not a debounce per-se, but a.. bounce?
	wearOutfitRequestCount = wearOutfitRequestCount + 1
	local thisWearOutfitRequestCount = wearOutfitRequestCount
	local stillValidCheckFunction = function()
		return wearOutfitRequestCount == thisWearOutfitRequestCount
	end

	-- Unequip all current assets
	for i=#currentlyWearing, 1, -1 do
		if stillValidCheckFunction() then
			local currentAssetId = currentlyWearing[i]
			unequipAsset(currentAssetId)
		end
	end
 
	local outfitData = nil
	if doTestHttpGet then
		outfitData = testHttpGet('/v1/outfits/<outfitId>/details', {outfitId=outfitId})
	else
		outfitData = httpGet(avatarUrlPrefix.."/v1/outfits/"..outfitId.."/details")
	end
	if outfitData and stillValidCheckFunction() then 
		-- Equip outfit assets
		local outfitData = httpService:JSONDecode(outfitData)
		local done = 0
		if outfitData then
			local outfitAssets = outfitData['assets']
			if outfitAssets then
				for _,assetInfo in pairs(outfitAssets) do
					local assetId = assetInfo.id
					fastSpawn(function()
						equipAsset(assetId, true, stillValidCheckFunction)
						
						done = done + 1
						if done == #outfitAssets then
							print('wearing outfit (fully):', outfitId)
							startEquippedAnimationPreview('IdleAnimation')
							playLookAround()
						end
					end)
				end
			end
		end

		-- Body colors
		local outfitBodyColors = outfitData['bodyColors']
		if outfitBodyColors then
			for name, mapName in pairs(bodyColorNameMap) do
				local color = outfitBodyColors[mapName]
				if color then
					bodyColors[name] = color
				end
			end
		end
		updateCharacterBodyColors()
		
		-- Scale
		--todo: do outfits come with a scale?
		refreshCharacterScale()

		print('Wearing outfit:', outfitId)
	end
end

function outfitImageFetch(outfitId, attemptNumber)
	return "https://www."..domainUrl.."/outfit-thumbnail/image?userOutfitId="..outfitId.."&width=100&height=100&format=png"
	--the below code works and is the retry functionality for a working image that we want, but the url handed back does not work for asset images
	--[[local attemptNumber = (attemptNumber or 0) + 1
	if attemptNumber > 10 then
		return 'OutfitFailedToLoad'
	end
	local returnString = httpGet("http://www.roblox.com/Outfit-Thumbnail/Json?userOutfitId="..outfitId.."&width=352&height=352&format=png")
	if returnString then
		local returnData = httpService:JSONDecode(returnString)
		if returnData and returnData.Final then
			return returnData.Url
		end
	end
	wait(1)
	return outfitImageFetch(outfitId, attemptNumber)]]
end

local recycledAssetCardStack = {}
local assetCardConnections = {}
local activeAssetCards = {}
local assetCardVersionKeys = {}
local lastSuccessfulAssetCardUpdateAtY = 0
local renderAssetCard
local currentAssetRegion = {}
local awaitingInvalidation = {}
function popRecycledAssetCard()
	local n = #recycledAssetCardStack
	
	if n > 0 then
		local card = recycledAssetCardStack[n]
		recycledAssetCardStack[n] = nil
		return card
	end
end
function recycleAssetCard(card)
	if not card then return end
	
	card.Parent = nil
	
	assetCardVersionKeys[card] = assetCardVersionKeys[card] + 1
	
	if activeAssetCards[card] then
		activeAssetCards[activeAssetCards[card]] = nil
		activeAssetCards[card] = nil
	end
	
	if assetCardConnections[card] then
		for i, con in next, assetCardConnections[card] do
			con:disconnect()
		end
		assetCardConnections[card] = nil
	end
	
	if card:FindFirstChild'SelectionFrame' then
		card.SelectionFrame:Destroy()
	end
	
	table.insert(recycledAssetCardStack, card)
end
function invalidateAllAssetCards()
	for i, card in next, activeAssetCards do
		if typeof(card) == 'Instance' then
			recycleAssetCard(card)
		end
	end
	scrollingFrame:ClearAllChildren()
	lastSuccessfulAssetCardUpdateAtY = 0
	currentAssetRegion = {0, 0}
end
function flushInvalidationQueue()
	for i, card in next, awaitingInvalidation do
		recycleAssetCard(card)
	end
end
if tabletMode then
	local leadingOffset = 11
	
	function getButtonSize()
		local availableWidth = scrollingFrame.AbsoluteSize.X + 9
		local buttonWidthBudget = availableWidth/buttonsPerRow
		return buttonWidthBudget - gridPadding - 5
	end
	function getAssetCardY(i)
		local row = math.floor((i-1)/buttonsPerRow)+1
		local rowHeight = getButtonSize() + gridPadding
		return (row-1)*rowHeight + leadingOffset
	end
	
	function getAssetCardI(y)
		local rowHeight = getButtonSize() + gridPadding
		local row = math.max(1, math.floor((y - leadingOffset)/rowHeight))
		return row*buttonsPerRow
	end
else
	local leadingOffset = 30
	
	function getButtonSize()
		local availableWidth = scrollingFrame.AbsoluteSize.X + 0
		local buttonWidthBudget = availableWidth/buttonsPerRow
		return buttonWidthBudget - gridPadding
	end
	function getAssetCardY(i)
		local row = math.floor((i-1)/buttonsPerRow)+1
		local rowHeight = getButtonSize() + gridPadding
		return (row-1)*rowHeight + leadingOffset
	end
	
	function getAssetCardI(y)
		local rowHeight = getButtonSize() + gridPadding
		local row = math.max(1, math.floor((y - leadingOffset)/rowHeight))
		return row*buttonsPerRow
	end
end
function makeNewAssetCard(cardName, image)
	local assetButton = Instance.new('ImageButton')
	
	assetButton.AutoButtonColor = false
	assetButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
	assetButton.BorderColor3 = Color3.fromRGB(208,208,208)
	assetButton.BackgroundTransparency = 1
	assetButton.ZIndex = scrollingFrame.ZIndex
	
	local assetButtonBackgroud = Instance.new('ImageLabel', assetButton)
	assetButtonBackgroud.Name = 'AssetButtonBackground'
	assetButtonBackgroud.BackgroundTransparency = 1
	assetButtonBackgroud.ScaleType = Enum.ScaleType.Slice
	assetButtonBackgroud.SliceCenter = Rect.new(6,6,7,7)
	assetButtonBackgroud.ZIndex = assetButton.ZIndex
	assetButtonBackgroud.Size = UDim2.new(1, 6, 1, 6)
	assetButtonBackgroud.Position = UDim2.new(0, -3, 0, -3)
	if spriteManager.enabled then
		spriteManager.equip(assetButtonBackgroud, "gr-card corner", true)
	else
		assetButtonBackgroud.Image = "rbxasset://textures/AvatarEditorIcons/ingame/gr-card corner.png"
	end
	
	local assetImageLabel = Instance.new('ImageLabel')
	assetImageLabel.BackgroundTransparency = 1
	assetImageLabel.BorderSizePixel = 0
	if tabletMode then
		assetImageLabel.Size = UDim2.new(1, -6, 1, -6)
		assetImageLabel.Position = UDim2.new(0,3,0,3)
	else
		assetImageLabel.Size = UDim2.new(1,-8,1,-8)
		assetImageLabel.Position = UDim2.new(0,4,0,4)
	end
	assetImageLabel.ZIndex = assetButton.ZIndex+1
	assetImageLabel.Parent = assetButton
	return assetButton
end

function popAwaitingInvalidationCard()
	local card = awaitingInvalidation[#awaitingInvalidation]
	if card then
		awaitingInvalidation[#awaitingInvalidation] = nil
		return card
	end
end

function makeAssetCard(i, cardName, image, clickFunction, longPressFunction, isSelected, --[[optional]] positionOverride)
	local card = popAwaitingInvalidationCard() or popRecycledAssetCard() or makeNewAssetCard(cardName, image)
	
	local row = math.ceil(i/buttonsPerRow)
	local column = ((i-1)%buttonsPerRow)+1
	local buttonSize = getButtonSize()
	
	card.Name = 'AssetButton'..cardName
	card.Size = UDim2.new(0, buttonSize, 0, buttonSize)
	card.Position = positionOverride or UDim2.new(
		0,
		gridPadding + (column-1)*(buttonSize+gridPadding) -3,
		0,
		getAssetCardY(i)
	)
	assetCardConnections[card] = {}
	activeAssetCards[i] = card
	activeAssetCards[card] = i
	
	local myVersionKey = (assetCardVersionKeys[card] or 0) + 1
	assetCardVersionKeys[card] = myVersionKey
	
	if clickFunction then
		table.insert(assetCardConnections[card], card.MouseButton1Click:connect(clickFunction))
	end
	if longPressFunction then
		table.insert(assetCardConnections[card], card.TouchLongPress:connect(longPressFunction))
	end
	if isSelected then
		local selectionFrame = selectionFrameTemplate:clone()
		selectionFrame.Name = 'SelectionFrame'
		selectionFrame.ZIndex = card.ZIndex + 2
		selectionFrame.Visible = true
		selectionFrame.Parent = card
	end
	
	if type(image) == 'function' then
		fastSpawn(function()
			local image = image()
			if myVersionKey == assetCardVersionKeys[card] then
				card.ImageLabel.Image = image
			end
		end)
	else
		card.ImageLabel.Image = image
	end
	
	return card
end
function getVisibleAssetRegion()
	if not flagManager.AvatarEditorCardRecycling then
		return {1, #assetList}
	end
	
	local lowerY = scrollingFrame.CanvasPosition.y
	local upperY = scrollingFrame.CanvasPosition.y + scrollingFrame.AbsoluteSize.y
	local lowerI = getAssetCardI(lowerY) - buttonsPerRow
	local upperI = getAssetCardI(upperY) + buttonsPerRow
	
	return {math.max(lowerI, 1), math.min(upperI, #assetList)}
end
function queueCardForInvalidation(card)
	if not card then return end
	
	if activeAssetCards[card] then
		activeAssetCards[activeAssetCards[card]] = nil
		activeAssetCards[card] = nil
	end
	
	if assetCardConnections[card] then
		for i, con in next, assetCardConnections[card] do
			con:disconnect()
		end
		assetCardConnections[card] = nil
	end
	
	if card:FindFirstChild'SelectionFrame' then
		card.SelectionFrame:Destroy()
	end
	
	awaitingInvalidation[#awaitingInvalidation+1] = card
end
function invalidateAssetCardRegion(a, b)
	for i=a, b do
		recycleAssetCard(activeAssetCards[i])
	end
end
function queueRegionForInvalidation(a, b)
	for i=a, b do
		queueCardForInvalidation(activeAssetCards[i])
	end
end
function renderAssetCardRegion(a, b)
	for i=a, b do
		renderAssetCard(i)
	end
end
function updateVisibleAssetCards()
	local visibleRegion = getVisibleAssetRegion()
	
	if visibleRegion[1] == currentAssetRegion[1] and visibleRegion[2] == currentAssetRegion[2] then
		return
	end
	
	if flagManager.AvatarEditorCardRecycling then
		if currentAssetRegion[1] then
			local relation1 = visibleRegion[1] - currentAssetRegion[1]
			local relation2 = visibleRegion[2] - currentAssetRegion[2]
			
			-- can't elseif because invalidate has to come first
			if relation1 > 0 then
				queueRegionForInvalidation(currentAssetRegion[1], math.min(visibleRegion[1]-1, currentAssetRegion[2]))
			end
			if relation2 < 0 then
				queueRegionForInvalidation(math.max(visibleRegion[2]+1, currentAssetRegion[1]), currentAssetRegion[2])
			end
			if relation1 < 0 then
				renderAssetCardRegion(visibleRegion[1], math.min(visibleRegion[2], currentAssetRegion[1]-1))
			end
			if relation2 > 0 then
				renderAssetCardRegion(math.max(visibleRegion[1], currentAssetRegion[2]+1), visibleRegion[2])
			end
			
			flushInvalidationQueue()
		else
			renderAssetCardRegion(unpack(visibleRegion))
		end
		
		currentAssetRegion = visibleRegion
	else
		if currentAssetRegion[1] then
			renderAssetCardRegion(currentAssetRegion[2]+1, visibleRegion[2])
		else
			renderAssetCardRegion(1, visibleRegion[2])
			currentAssetRegion[1] = 1
		end
		
		currentAssetRegion[2] = visibleRegion[2]
	end
end
function freshUpdateVisibleAssetCards()
	currentAssetRegion = {}
	updateVisibleAssetCards()
end
function tryUpdateVisibleAssetCards()
	local y = scrollingFrame.CanvasPosition.y
	
	if math.abs(y - lastSuccessfulAssetCardUpdateAtY) > 0 then --scrollingFrame.AbsoluteSize.x/4 then
		updateVisibleAssetCards()
		
		lastSuccessfulAssetCardUpdateAtY = y
	end
end

function renderSlider(name, changedFunction, currentPercent, intervals, scrollingFrame)
	local slider = screenGui:WaitForChild('SliderFrameTemplate'):clone()
	slider.TextLabel.Text = name
	slider.Name = 'Slider'..name

	local dragger = slider:WaitForChild('Dragger')
	local draggerButton = dragger:WaitForChild('DraggerButton')	-- Specific buttons for larger or custom hitboxes.
	local sliderButton = slider:WaitForChild('SliderButton')
	local highlight = dragger:WaitForChild('Highlight')
	local lastValue = currentPercent
	if intervals then
		intervals = intervals - 1
		lastValue = math.floor((currentPercent * intervals) + .5)
	end

	local function updateSlider()
		local percent = lastValue
		if intervals then
			percent = lastValue/intervals
		end
		dragger.Position = UDim2.new(percent, -16, .5, -16)
		slider.FillBar.Size = UDim2.new(percent, 8, 0, 15)
		if changedFunction then
			changedFunction(slider, lastValue)
		end
	end
	updateSlider()

	local function handle(x)
		if slider then
			local percent = math.max(0, math.min(1, (x - slider.AbsolutePosition.x) / slider.AbsoluteSize.x))
			local thisInterval = percent
			if intervals then
				thisInterval = math.floor((percent*intervals)+.5)
			end
			if thisInterval ~= lastValue then
				lastValue = thisInterval
				updateSlider()
			end
		end
	end

	local function sliderDown(x, y)
		-- Is now dragging, or is setting slider
		handle(x)
		local upListen = nil
		local moveListen = nil
		local highlight = nil
		if dragger and dragger.Parent then
			highlight = dragger:FindFirstChild('Highlight')
			if highlight then
				highlight.Visible = true
			end
		end
		if scrollingFrame then	-- If there is a scroll frame, let's stop it from scroll'n while we slide'n
			scrollingFrame.ScrollingEnabled = false
		end
		local function inputChanged(input, gameProcessedEvent)
			if input.UserInputState == Enum.UserInputState.Change and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				-- Update slider
				if input.Position then
					handle(input.Position.x)
				end
			elseif input.UserInputState == Enum.UserInputState.End and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
				-- End of slider interaction
				if moveListen then
					moveListen:Disconnect()
					moveListen = nil
				end
				if upListen then
					upListen:Disconnect()
					upListen = nil
				end
				if scrollingFrame then
					scrollingFrame.ScrollingEnabled = true
				end
				local dragger = slider:FindFirstChild('Dragger')
				if dragger then
					local highlight = dragger:FindFirstChild('Highlight')
					if highlight then
						highlight.Visible = false
					end
				end
			end
		end

		moveListen = userInputService.InputChanged:connect(inputChanged)
		upListen = userInputService.InputEnded:connect(inputChanged)
	end
	sliderButton.MouseButton1Down:connect(sliderDown)
	draggerButton.MouseButton1Down:connect(sliderDown)
	slider.Visible = true
	return slider
end

function trimDisplayPercent(percent)		-- This function will trim the percent string so that it is easier to read.
	local displayPercent = string.format("%.3f", percent)
	while #displayPercent > 1 do
		local lastDidget = string.sub(displayPercent,#displayPercent)
		if lastDidget == '.' or (lastDidget == '0' and string.find(displayPercent,".",1,true)) then		-- Remove the last didget if it is a period or a zero behind a decimal
			displayPercent = string.sub(displayPercent, 1, #displayPercent-1)
		else
			break
		end
	end
	return displayPercent
end


local loadMoreListContent = nil
local loadPage = nil
local selectPage = nil
local updateScrollBarVisibility = nil
local renderPageTab = nil
do
	local extraVerticalShift = phoneMode and 25 or 8 -- This is to make space for page title labels
	local loadingContent = false
	local renderedRecommended = false
	local recommendedDebounceCounter = 0
	local renderedNoAssetsMessage = false
	local currentLoadingContentCall = 0
	local renderedAssets = {}
	local isAssetInList = {}
	local nextCursor = ''
	local cachedPages = {}

	function loadPage(assetTypeId, cursor)
		local assetTypeName = assetTypeNames[assetTypeId]

		if cachedPages[assetTypeId] then
			if cachedPages[assetTypeId][cursor] then
				return cachedPages[assetTypeId][cursor]
			end
		else
			cachedPages[assetTypeId] = {}
		end

		recommendedDebounceCounter = recommendedDebounceCounter + 1		-- This prevents a previous recommended sort from loading over this page
		
		local typeStuff = {}
		local pageInfo = {
			assets = {},
			reachedBottom = false,
			nextCursor = '',
			totalItems = nil
		}
		
		if doTestHttpGet then
			typeStuff = testHttpGet(
				'/users/inventory/list-json?assetTypeId=<assetTypeId>&itemsPerPage=<itemsPerPage>&userId=<userId>&cursor=<cursor>',
				{assetTypeId=assetTypeId, itemsPerPage=itemsPerPageNewUrl, userId=userId, cursor=cursor}
			)
		else
			typeStuff = httpGet("https://www."..domainUrl.."/users/inventory/list-json?assetTypeId="..assetTypeId.."&itemsPerPage="..itemsPerPageNewUrl.."&userId="..userId.."&cursor="..cursor)
		end
		
		typeStuff = httpService:JSONDecode(typeStuff)
		if typeStuff and typeStuff.IsValid and typeStuff.Data and typeStuff.Data.Items then
			pageInfo.nextCursor = typeStuff.Data.nextPageCursor
			
			if pageInfo.nextCursor == nil then
				pageInfo.reachedBottom = true
			end
			
			pageInfo.totalItems = tonumber(typeStuff.Data.TotalItems)
			
			for i, item in next, typeStuff.Data.Items do
				if (not item.UserItem or not item.UserItem.IsRentalExpired) then
					table.insert(pageInfo.assets, item.Item.AssetId)
					
					cachedAssetInfo['id'..item.Item.AssetId] = {
						AssetId = item.Item.AssetId,
						AssetTypeId = assetTypeId,
						Description = item.Item.Description,
						Name = item.Item.Name
					}
				end
			end
		else
			--print('TYPESTUFF RESULT:',typeStuff,typeStuff and typeStuff.IsValid,typeStuff.Data,typeStuff.Data and typeStuff.Data.Items)
		end
		
		cachedPages[assetTypeId][cursor] = pageInfo
		
		return pageInfo
	end

	function loadMoreListContent()
		print('load content')
		loadingContent = true
		currentLoadingContentCall = currentLoadingContentCall + 1
		local thisLoadingContentCall = currentLoadingContentCall
		local reachedBottom = false
		local totalItems = nil
		
		scrollingFrame.ClipsDescendants = true
		if phoneMode then
			scrollingFrame.Position = UDim2.new(0, 0, 0, 50)
			scrollingFrame.Size = UDim2.new(1, 0, 1, -50)
		elseif tabletMode then
			scrollingFrame.Position = UDim2.new(0, 108, 0, 0)
			scrollingFrame.Size = UDim2.new(1, -111, 1, 0)
		end
		
		if page.typeName then
			--Any basic asset type page
			local desiredPageNumber = math.ceil((#assetList)/itemsPerPage)+1
			local urlTypeName = string.gsub(page.typeName, ' ', '')		-- Removes all spaces from the name
			local typeStuff
			if flagManager.AvatarEditorUsesNewAssetGetEndpoint then
				local typeStuff = {}
				local assetTypeId = assetTypeNames[page.typeName]
				
				local pageInfo = loadPage(assetTypeId, nextCursor)
				reachedBottom = pageInfo.reachedBottom
				nextCursor = pageInfo.nextCursor
				totalItems = pageInfo.totalItems
				
				if thisLoadingContentCall == currentLoadingContentCall then
					for i, assetId in next, pageInfo.assets do
						if not isAssetInList[assetId] then
							table.insert(assetList, assetId)
							isAssetInList[assetId] = true
						end
					end
				end
			else
				if doTestHttpGet then
					typeStuff = testHttpGet(
						'/v1/users/<userId>/inventory/<urlTypeName>?pageNumber=<desiredPageNumber>&itemsPerPage=<itemsPerPage>',
						{userId=userId, urlTypeName=urlTypeName, desiredPageNumber=desiredPageNumber, itemsPerPage=itemsPerPage}
					)
				else
					typeStuff = httpGet(urlPrefix.."/v1/users/"..userId.."/inventory/"..urlTypeName.."?pageNumber="..desiredPageNumber.."&itemsPerPage="..itemsPerPage)
				end
				
				if thisLoadingContentCall == currentLoadingContentCall then
					typeStuff = httpService:JSONDecode(typeStuff)
					if typeStuff and typeStuff['data'] then
						local pageAssets = typeStuff['data']
						
						if multiplyGridResults then
							local newAssets = {}
							for i, v in next, pageAssets do
								for i=1, multiplyGridResults do
									table.insert(newAssets, v)
								end
							end
							pageAssets = newAssets
						end
						
						addTables(assetList, pageAssets)
						if #pageAssets < itemsPerPage then
							reachedBottom = true
						end
					end
				end
			end
			
		elseif page.specialPageType == 'Recent All' then
			assetList = copyTable(getOrCreateRecentAssetList('allAssets'))

		elseif page.specialPageType == 'Recent Clothing' then
			assetList = copyTable(getOrCreateRecentAssetList('clothing'))

		elseif page.specialPageType == 'Recent Body' then
			assetList = copyTable(getOrCreateRecentAssetList('body'))

		elseif page.specialPageType == 'Recent Animation' then
			assetList = copyTable(getOrCreateRecentAssetList('animation'))

		elseif page.specialPageType == 'Recent Outfits' then
			local newAssetList = {}
			for index, outfitId in pairs(getOrCreateRecentAssetList('outfits')) do
				table.insert(newAssetList, outfitId)
			end
			assetList = newAssetList

		elseif page.specialPageType == 'Outfits' then
			local desiredPageNumber = math.ceil((#assetList)/itemsPerPage)+1
			local typeStuff
			if doTestHttpGet then
				typeStuff = testHttpGet(
					'/v1/users/<userId>/outfits?page=<desiredPageNumber>&itemsPerPage=<itemsPerPage>',
					{userId=userId, desiredPageNumber=desiredPageNumber, itemsPerPage=itemsPerPage}
				)
			else
				typeStuff = httpGet(avatarUrlPrefix.."/v1/users/"..userId.."/outfits?page="..desiredPageNumber.."&itemsPerPage="..itemsPerPage)
			end
			if thisLoadingContentCall == currentLoadingContentCall then
				typeStuff = httpService:JSONDecode(typeStuff)
				if typeStuff and typeStuff['data'] then
					local pageData = typeStuff['data']
					local outfitIds = {}
					for i,v in pairs(pageData) do
						outfitIds[i] = v.id
					end
					addTables(assetList, outfitIds)
					if #outfitIds < itemsPerPage then
						reachedBottom = true
					end
				end
			end

		elseif page.specialPageType == 'Skin Tone' then
			if tabletMode then
				scrollingFrame.Position = UDim2.new(0, 120, 0, 15)
				scrollingFrame.Size = UDim2.new(1, -135, 1, 0)
				scrollingFrame.ClipsDescendants = false
			end
			
			local buttonsPerRow = 5	--This is in local scope because skincolor is layed out differently
			local gridPadding = 12
			local availibleWidth = scrollingFrame.AbsoluteSize.X
			local buttonSize = (availibleWidth - ((buttonsPerRow+1) * gridPadding)) / buttonsPerRow
			local extraVerticalShift = tabletMode and 0 or extraVerticalShift
			
			if tabletMode then
				local rows = math.ceil(#skinColorList/buttonsPerRow)
				local frame = screenGui.SimpleBackgroundTemplate:Clone()
				frame.Visible = true
				frame.Position = UDim2.new(0, -4, 0, -3)
				frame.Size = UDim2.new(1, 8, 0, rows*buttonSize + (rows+1)*gridPadding + 8)
				frame.Parent = scrollingFrame
			end

			local selectionFrame = Instance.new('ImageLabel')
			if spriteManager.enabled then
				spriteManager.equip(selectionFrame, "gr-ring-selector")
			else
				selectionFrame.Image = "rbxassetid://431878613" --"rbxasset://textures/AvatarEditorIcons/ColorSelection/gr-ring-selector@2x.png"--"rbxassetid://431878613"--431878555"		--todo: Replace this with an image from content folder
			end
			selectionFrame.BackgroundTransparency = 1
			selectionFrame.Size = UDim2.new(1.2,0,1.2,0)
			selectionFrame.Position = UDim2.new(-.1,0,-.1,0)
			selectionFrame.SizeConstraint = 'RelativeYY'
			if not spriteManager.enabled then
				selectionFrame.ImageColor3 = Color3.new(.2,.65,.9)
			end
			selectionFrame.ZIndex = scrollingFrame.ZIndex + 2
			
			local currentSkinColor = bodyColors.HeadColor

			scrollingFrame.CanvasSize = UDim2.new(0,0,0,math.ceil(#skinColorList/buttonsPerRow) * (buttonSize+gridPadding) + gridPadding + extraVerticalShift)
			
			for i,brickColor in pairs(skinColorList) do
				local row = math.ceil(i/buttonsPerRow)
				local column = ((i-1)%buttonsPerRow)+1
				local colorButton = Instance.new('ImageButton')
				
				colorButton.AutoButtonColor = false
				colorButton.BorderSizePixel = 0
				colorButton.BackgroundTransparency = 1
				if spriteManager.enabled then
					spriteManager.equip(colorButton, "gr-circle-white")
				else
					colorButton.Image = "rbxassetid://431879450"--"rbxasset://textures/AvatarEditorIcons/ColorSelection/gr-circle-white@2x.png"--"rbxassetid://431879450"	--todo: Replace this with an image from content folder
				end
				colorButton.ImageColor3 = brickColor.Color
				colorButton.Size = UDim2.new(0,buttonSize,0,buttonSize)
				colorButton.Position = UDim2.new(
					0,
					gridPadding + (column-1)*(buttonSize+gridPadding),
					0,
					gridPadding + (row-1)*(buttonSize+gridPadding) + extraVerticalShift
				)
				colorButton.ZIndex = scrollingFrame.ZIndex + 1
				local selectFunction = function()
					runParticleEmitter()
					selectionFrame.Parent = colorButton
					for bodyColorsIndex, v in pairs(bodyColors) do
						bodyColors[bodyColorsIndex] = brickColor.Number
					end
					updateCharacterBodyColors()
				end
				colorButton.MouseButton1Click:connect(selectFunction)

				if phoneMode then
					local colorButtonShadow = Instance.new('ImageLabel')
					colorButtonShadow.Name = 'DropShadow'
					if spriteManager.enabled then
						spriteManager.equip(colorButtonShadow, "gr-circle-shadow")
					else
						colorButtonShadow.Image = "rbxasset://textures/AvatarEditorIcons/ColorSelection/gr-circle-shadow@2x.png"
					end
					colorButtonShadow.BackgroundTransparency = 1
					colorButtonShadow.ZIndex = colorButton.ZIndex - 1
					colorButtonShadow.Size = UDim2.new(1.13,0,1.13,0)
					colorButtonShadow.Position = UDim2.new(-.07,0,-.07,0)
					colorButtonShadow.Parent = colorButton
				end
				
				if tabletMode then
					local h, s, v = Color3.toHSV(brickColor.Color)
					
					if s < 0.1 and v > 0.9 then
						local outline = Instance.new'ImageLabel'
						outline.Name = 'Outline'
						outline.BackgroundTransparency = 1
						outline.Position = UDim2.new(0, -1, 0, -1)
						outline.Size = UDim2.new(1, 2, 1, 2)
						spriteManager.equip(outline, 'gr-circle-white')
						outline.ImageColor3 = Color3.new(0, 0, 0)
						outline.ImageTransparency = 0.75
						outline.ZIndex = colorButton.ZIndex - 1
						outline.Parent = colorButton
					end
				end

				colorButton.Parent = scrollingFrame
				if bodyColors['HeadColor'] == brickColor.number then
					selectionFrame.Parent = colorButton
				end
				
				if currentSkinColor == brickColor.Number then
					selectionFrame.Parent = colorButton
				end
			end

		elseif page.specialPageType == 'Scale' then
			if flagManager.AvatarEditorCanScaleHead then
				scrollingFrame.CanvasSize = UDim2.new(0,0,0,260)
			else
				scrollingFrame.CanvasSize = UDim2.new(0,0,0,195)
			end

			if tabletMode then
				scrollingFrame.ClipsDescendants = false
				scrollingFrame.Position = UDim2.new(0, 116, 0, -1)
				scrollingFrame.Size = UDim2.new(1, -127, 1, 0)
			end
			
			local background = screenGui.SimpleBackgroundTemplate:Clone()
			background.Name = 'Background'
			background.Position = UDim2.new(0, 3, 0, extraVerticalShift + 5)
			background.Size = UDim2.new(1, -6, 0, 240)
			background.ZIndex = 2
			background.Visible = true
			background.Parent = scrollingFrame
			if tabletMode then
				background.Position = UDim2.new(0, 0, 0, 13)
				background.Size = UDim2.new(1, 0, 0, 165)
			end

			-- Initialize Height Scale Slider
			local heightIntervals = nil
			if heightScaleIncrement and heightScaleIncrement > 0 then
				heightIntervals = ((heightScaleMax - heightScaleMin) / heightScaleIncrement) + 1
			end
			local function heightChangeFunction(slider, value)	--todo: could be globally defined once
				local heightScaleIncrement = heightScaleIncrement or 1
				local resultPercent = heightScaleMin + value * heightScaleIncrement
				local percentDifference = resultPercent - 1.00
				if slider then
					local outputLabel = slider:FindFirstChild('OutputLabel')
					if outputLabel then
						local displayPercent = trimDisplayPercent(percentDifference*100)
						outputLabel.Text = (percentDifference>=0 and [[+]] or '')..displayPercent..[[%]]
					end
				end
				
				scales.height = math.min(heightScaleMax, math.max(heightScaleMin, resultPercent) )
				
				refreshCharacterScale()
			end
			local sliderPercent = (scales.height - heightScaleMin) / (heightScaleMax - heightScaleMin)
			local heightSlider = renderSlider('Height', heightChangeFunction, sliderPercent, heightIntervals)
			heightSlider.Position = UDim2.new(.1, 0, 0, 70)
			heightSlider.Parent = scrollingFrame

			-- Initialize Width Scale Slider
			local widthIntervals = nil
			if widthScaleIncrement and widthScaleIncrement > 0 then
				widthIntervals = ((widthScaleMax - widthScaleMin) / widthScaleIncrement) + 1
			end
			local function widthChangeFunction(slider, value)	--todo: could be globally defined once
				local widthScaleIncrement = widthScaleIncrement or 1
				local resultPercent = widthScaleMin + value * widthScaleIncrement
				local percentDifference = resultPercent - 1.00
				if slider then
					local outputLabel = slider:FindFirstChild('OutputLabel')
					if outputLabel then
						local displayPercent = trimDisplayPercent(percentDifference*100)
						outputLabel.Text = (percentDifference>=0 and [[+]] or '')..displayPercent..[[%]]
					end
				end
				
				scales.width = math.min(widthScaleMax, math.max(widthScaleMin, resultPercent) )

				scales.depth = 1 + (scales.width-1)*.5	-- Depth change is linked to half of the width change.
				
				refreshCharacterScale()
			end
			local sliderPercent = (scales.width - widthScaleMin) / (widthScaleMax - widthScaleMin)
			local widthSlider = renderSlider('Width', widthChangeFunction, sliderPercent, widthIntervals, scrollingFrame)
			widthSlider.Position = UDim2.new(.1, 0, 0, 140)
			if tabletMode then
				heightSlider.Position = UDim2.new(0, 29, 0, 56)
				heightSlider.Size = UDim2.new(1, -57, 0, 30)
				widthSlider.Position = UDim2.new(0, 29, 0, 123)
				widthSlider.Size = UDim2.new(1, -57, 0, 30)
				background.Position = UDim2.new(0, 0, 0, 13)
				background.Size = UDim2.new(1, 0, 0, 165)
			end
			widthSlider.Parent = scrollingFrame

			if flagManager.AvatarEditorCanScaleHead then
				-- Initialize Head Scale Slider
				local headIntervals = nil
				if headScaleIncrement and headScaleIncrement > 0 then
					headIntervals = ((headScaleMax - headScaleMin) / headScaleIncrement) + 1
				end
				local function headChangeFunction(slider, value)	--todo: could be globally defined once
					local headScaleIncrement = headScaleIncrement or 1
					local resultPercent = headScaleMin + value * headScaleIncrement
					local percentDifference = resultPercent - 1.00
					if slider then
						local outputLabel = slider:FindFirstChild('OutputLabel')
						if outputLabel then
							local displayPercent = trimDisplayPercent(percentDifference*100)
							outputLabel.Text = (percentDifference>=0 and [[+]] or '')..displayPercent..[[%]]
						end
					end
					
					scales.head = math.min(headScaleMax, math.max(headScaleMin, resultPercent) )
					
					refreshCharacterScale()
				end
				local sliderPercent = (scales.head - headScaleMin) / (headScaleMax - headScaleMin)
				local headSlider = renderSlider('Head', headChangeFunction, sliderPercent, headIntervals, scrollingFrame)
				headSlider.Position = UDim2.new(.1, 0, 0, 210)
				if tabletMode then
					headSlider.Position = UDim2.new(0, 29, 0, 190)
					headSlider.Size = UDim2.new(1, -57, 0, 30)
					background.Size = UDim2.new(1, 0, 0, 232)
				end
				headSlider.Parent = scrollingFrame
			end
		end
		
		-- This is for rendering a generically layed out page
		if thisLoadingContentCall == currentLoadingContentCall then
			local buttonSize = getButtonSize()
			renderAssetCard = nil

			if not page.special then
				scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, getAssetCardY(totalItems or #assetList) + buttonSize + (tabletMode and 15 or gridPadding))
				
				renderAssetCard = function(i)
					local assetId = assetList[i]
					local cardName, cardImage, clickFunction, longPressFunction, isSelected
					
					if page.specialPageType == 'Outfits' or page.specialPageType == 'Recent Outfits' then
						cardName = 'Outfit'..tostring(assetId)
						
						cardImage = function()
							return outfitImageFetch(assetId)
						end
						
						clickFunction = function()
							runParticleEmitter()
							addToRecentAssetList('outfits', assetId)
							wearOutfit(assetId)
							closeMenu()
						end
						longPressFunction = clickFunction
					else
						cardName = tostring(assetId)
						cardImage = assetImageUrl..tostring(assetId)
						isSelected = findIfEquipped(assetId)
						
						local wearFunction = function()
							runParticleEmitter()
							equipAsset(assetId)
							closeMenu()
							
							local assetInfo = getAssetInfo(assetId)
							if assetInfo then
								local assetTypeName = assetTypeNames[assetInfo.AssetTypeId]
								if not assetTypeName:find('Animation') and flagManager.EnabledAvatarAnimationCategory then
									playLookAround()
								end
							end
						end
						
						local takeOffFunction = function()
							runParticleEmitter()
							unequipAsset(assetId)
							closeMenu()
						end
						
						local wearOrTakeOffFunction = function()
							if findIfEquipped(assetId) then
								takeOffFunction()
							else
								wearFunction()
							end
						end
						
						longPressFunction = function()
							local wearOrUnwearOption = nil
							if findIfEquipped(assetId) then
								wearOrUnwearOption = {text = 'Take Off', func = takeOffFunction}
							else
								wearOrUnwearOption = {text = 'Wear', func = wearFunction}
							end
							openMenu('',
								{
									wearOrUnwearOption,
									{text = 'View details', func = function() openDetails(assetId) end},
								},
								assetId
							)
							getCompleteAssetInfoAsync(assetId)
						end
						clickFunction = function()
							if userInputService:IsKeyDown(Enum.KeyCode.Q) then
								longPressFunction()
							else
								wearOrTakeOffFunction()
							end
						end
					end
					
					local card = makeAssetCard(i, cardName, cardImage, clickFunction, longPressFunction, isSelected)
					card.Parent = scrollingFrame
				end
			end
			
			if page.typeName then
				if #assetList <= 0 then
					if reachedBottom and not renderedNoAssetsMessage then
						renderedNoAssetsMessage = true
			
						local noAssetsLabel = Instance.new('TextLabel')
						noAssetsLabel.Text = "You don't have any "..string.lower(page.name)
						noAssetsLabel.BackgroundTransparency = 1
						noAssetsLabel.TextColor3 = Color3.fromRGB(65,78,89)
						noAssetsLabel.Size = UDim2.new(0,0,0,0)
						noAssetsLabel.Position = UDim2.new(.5,0,.5,-15)
						if phoneMode then
							noAssetsLabel.TextColor3 = Color3.fromRGB(65,78,89)	-- Phone text is on white background
							noAssetsLabel.Font = "SourceSansLight"
						else
							noAssetsLabel.TextColor3 = Color3.new(.9,.9,.9)		-- Tablet text is on dark background
							noAssetsLabel.Font = "SourceSans"
						end
						noAssetsLabel.FontSize = "Size18"
						noAssetsLabel.TextXAlignment = "Center"
						noAssetsLabel.ZIndex = 3
						noAssetsLabel.Parent = scrollingFrame

						local shopInCatalogButtonTemplate = screenGui:FindFirstChild('ShopInCatalogButtonTemplate')
						if shopInCatalogButtonTemplate and flagManager.AvatarEditorUsesBrowserWindowCall then
							-- Create "Shop In Catalog" button
							local shopInCatalogButton = shopInCatalogButtonTemplate:clone()
							shopInCatalogButton.AnchorPoint = Vector2.new(.5,0)
							shopInCatalogButton.Position = UDim2.new(.5,0,.5,0)
							local function pressFunction()
								guiService:OpenNativeOverlay("Catalog", "https://www."..domainUrl.."/catalog/?Category=11&Subcategory="..assetTypeNames[page.typeName])
							end
							shopInCatalogButton.MouseButton1Click:connect(pressFunction)
							shopInCatalogButton.TouchLongPress:connect(pressFunction)
							shopInCatalogButton.Visible = true
							shopInCatalogButton.Parent = scrollingFrame
						end
			
						scrollingFrame.CanvasSize = UDim2.new(0, scrollingFrame.AbsoluteSize.X, 0, scrollingFrame.AbsoluteSize.Y)
					end
				else
					local pageTitleLabel = scrollingFrame:FindFirstChild('PageTitleLabel')
					if pageTitleLabel then
						pageTitleLabel.Visible = true
					end
				end
			end

			fastSpawn(function()
				if reachedBottom and not renderedRecommended and page.recommendedSort and flagManager.AvatarEditorUsesRecommended and page.typeName and thisLoadingContentCall == currentLoadingContentCall then
					-- Render recommended section
					recommendedDebounceCounter = recommendedDebounceCounter + 1
					local thisRecommendedDebounceCounter = recommendedDebounceCounter
					renderedRecommended = true

					local recommendedYPosition = scrollingFrame.CanvasSize.Y.Offset + 5

					local bonusYPixels = 8
					if tabletMode then
						bonusYPixels = bonusYPixels + 20
					end

					local recommendedLabel = Instance.new('TextLabel')
					recommendedLabel.Text = "RECOMMENDED"
					recommendedLabel.BackgroundTransparency = 1
					if phoneMode then
						recommendedLabel.TextColor3 = Color3.fromRGB(65,78,89)	-- Phone text is on white background
						recommendedLabel.Font = "SourceSansLight"
					else
						recommendedLabel.TextColor3 = Color3.new(.9,.9,.9)		-- Tablet text is on dark background
						recommendedLabel.Font = "SourceSans"
					end
					recommendedLabel.Size = UDim2.new(1,-14,0,25)
					recommendedLabel.Position = UDim2.new(0,7,0,recommendedYPosition - 2)
					recommendedLabel.FontSize = "Size18"
					recommendedLabel.TextXAlignment = "Left"
					recommendedLabel.ZIndex = 3
					recommendedLabel.Parent = scrollingFrame

					local shopNowButtonTemplate = screenGui:FindFirstChild('ShopNowButtonTemplate')
					if shopNowButtonTemplate and flagManager.AvatarEditorUsesBrowserWindowCall then
						-- Create "Shop Now" button
						local shopNowButton = shopNowButtonTemplate:clone()
						if phoneMode then
							shopNowButton.Position = UDim2.new(1,-shopNowButton.Size.X.Offset - 3,0,recommendedYPosition - 3)
						else
							shopNowButton.Position = UDim2.new(1,-shopNowButton.Size.X.Offset - 15,0,recommendedYPosition - 3)
						end
						local function pressFunction()
							guiService:OpenNativeOverlay("Catalog", "https://www."..domainUrl.."/catalog/?Category=11&Subcategory="..assetTypeNames[page.typeName])
						end
						shopNowButton.MouseButton1Click:connect(pressFunction)
						shopNowButton.TouchLongPress:connect(pressFunction)
						shopNowButton.Visible = true
						shopNowButton.Parent = scrollingFrame
					end

					local recommendedAssetListRequest = httpGet("https://"..domainUrl.."/assets/recommended-json?assetTypeId="..assetTypeNames[page.typeName].."&numItems=4")	--todo: Could request more if we want to toss some out.
					recommendedAssetListRequest = httpService:JSONDecode(recommendedAssetListRequest)
					if recommendedAssetListRequest and recommendedAssetListRequest.data and recommendedAssetListRequest.data.Items and thisRecommendedDebounceCounter == recommendedDebounceCounter and thisLoadingContentCall == currentLoadingContentCall then
						for i, itemData in pairs(recommendedAssetListRequest.data.Items) do
							if itemData and itemData.Item then
								-- Create card for recommended item
								local assetId = itemData.Item.AssetId

								local position = UDim2.new(
									0,
									gridPadding + (i-1)*(buttonSize+gridPadding) -3,
									0,
									recommendedYPosition + 30
								)
								local cardName = tostring(assetId)
								local cardImage = assetImageUrl..tostring(assetId)

								
								local longPressFunction = function()
									openDetails(assetId)
								end
								local clickFunction = function()
									openDetails(assetId)
								end
							
								local card = makeAssetCard(#assetList + i, cardName, cardImage, clickFunction, longPressFunction, false --[[isSelected]], position)
								card.Parent = scrollingFrame
							end
						end
					end

					scrollingFrame.CanvasSize = UDim2.new(0,0,0,(math.ceil(#assetList/buttonsPerRow) + 1) * (buttonSize+gridPadding) + gridPadding + extraVerticalShift*2 + bonusYPixels)
				end
			end)

		end

		loadingContent = false
		
		return reachedBottom
	end

	function selectPage(index, desiredPage, instant)
		if desiredPage ~= page then
			print('Switching to page:', desiredPage.name)
			
			invalidateAllAssetCards()
			scrollingFrame.CanvasPosition = Vector2.new(0,0)
			desiredPage.button.BackgroundColor3 = Color3.fromRGB(246,136,2)
			if desiredPage.specialPageType == 'Scale' and avatarType == 'R6' then
				desiredPage.button.BackgroundColor3 = Color3.fromRGB(246*.66,136*.66,2*.66)
			end
			local imageLabel = desiredPage.button:FindFirstChild('ImageLabel')
			if imageLabel then
				if spriteManager.enabled then
					spriteManager.equip(imageLabel, desiredPage.iconImageSelectedName)
				else
					imageLabel.Image = desiredPage.iconImageSelected
				end
			end
			local textLabel = desiredPage.button:FindFirstChild('TextLabel')
			if textLabel then
				textLabel.TextColor3 = Color3.fromRGB(255,255,255)
			end
			
			if tabletMode then
				desiredPage.button.BackgroundTransparency = 0
			end

			if page then
				page.button.BackgroundColor3 = Color3.fromRGB(255,255,255)
				if page.specialPageType == 'Scale' and avatarType == 'R6' then
					page.button.BackgroundColor3 = Color3.fromRGB(255*.66,255*.66,255*.66)
				end
				local imageLabel = page.button:FindFirstChild('ImageLabel')
				if imageLabel then
					if spriteManager.enabled then
						spriteManager.equip(imageLabel, page.iconImageName)
					else
						imageLabel.Image = page.iconImage
					end
				end
				local textLabel = page.button:FindFirstChild('TextLabel')
				if textLabel then
					textLabel.TextColor3 = Color3.fromRGB(137, 137, 137)
				end
				
				if tabletMode then
					page.button.BackgroundTransparency = 1
				end
			end

			if phoneMode then
				local pageLabel = Instance.new('TextLabel')
				pageLabel.Name = 'PageTitleLabel'
				pageLabel.Text = string.upper(desiredPage.name)
				pageLabel.BackgroundTransparency = 1
				pageLabel.TextColor3 = Color3.fromRGB(65,78,89)
				pageLabel.Size = UDim2.new(1,-14,0,25)
				pageLabel.Position = UDim2.new(0,7,0,3)
				pageLabel.Font = "SourceSansLight"
				pageLabel.FontSize = "Size18"
				pageLabel.TextXAlignment = "Left"
				pageLabel.ZIndex = 3
				pageLabel.Visible = not desiredPage.typeName
				pageLabel.Parent = scrollingFrame
			end

			-- Different background color for the body color choice page
			--mainFrame.BackgroundColor3 = desiredPage.name == 'Skin Tone' and Color3.fromRGB(255,255,255) or Color3.fromRGB(227,227,227)
			if desiredPage.name == 'Skin Tone' then
				if phoneMode then
					local whiteFrame = whiteFrameTemplate:clone()
					whiteFrame.Visible = true
					whiteFrame.Parent = scrollingFrame
				end
			end

			accessoriesColumn.Visible = desiredPage.name == 'Hats'

			if flagManager.EnabledAvatarAnimationCategory then
				if desiredPage.typeName and desiredPage.typeName:find('Animation') then
					startEquippedAnimationPreview(desiredPage.typeName)
				elseif page == nil or page.typeName and string.find(page.typeName, 'Animation') then
					startEquippedAnimationPreview('IdleAnimation')
				end
			end
			
			if flagManager.AvatarEditorDisplaysWarningOnR15OnlyPages then
				if desiredPage.r15only and avatarType == 'R6' then
					displayWarning(desiredPage.r15onlyMessage or 'This feature is only available for R15')
				else
					closeWarning()
				end
			end

			page = desiredPage
			loadingContent = false
			renderedRecommended = false
			renderedNoAssetsMessage = false
			reachedBottomOfCurrentPage = false
			assetList = {}
			renderedAssets = {}
			isAssetInList = {}
			nextCursor = ''
			
			reachedBottomOfCurrentPage = loadMoreListContent()
			
			freshUpdateVisibleAssetCards()
			
			adjustCameraProperties(instant)
		end
	end


	benchmarker.check('start', 'Initialization L')

	-- This function fades the fake scrollbar out after not being used for 3 seconds
	local lastScrollPosition = fakeScrollBar.AbsolutePosition.Y
	local lastScrollCount = 0
	function updateScrollBarVisibility()
		local thisScrollPosition = fakeScrollBar.AbsolutePosition.Y
		if thisScrollPosition ~= lastScrollPosition then

			-- This stops any existing tween
			tween(fakeScrollBar)

			lastScrollPosition = thisScrollPosition

			lastScrollCount = lastScrollCount + 1
			local thisScrollCount = lastScrollCount

			fakeScrollBar.ImageTransparency = .65
			wait(2)
			if thisScrollCount == lastScrollCount then
				tween(fakeScrollBar, 'ImageTransparency', 'Number', nil, 1, 1, easeFilters.quad, easeFilters.easeInOut):wait()
			end

		end
	end

	scrollingFrame.Changed:connect(function(prop)
		local barSize = 0
		local scrollingFrameSize = scrollingFrame.AbsoluteSize.Y
		local canvasPosition = scrollingFrame.CanvasPosition.Y
		local canvasSize = scrollingFrame.CanvasSize.Y.Offset
		if scrollingFrameSize < canvasSize then
			barSize = (scrollingFrameSize / canvasSize) * scrollingFrameSize
		end
		if barSize > 0 then
			fakeScrollBar.Visible = true
			fakeScrollBar.Size = UDim2.new(0,fakeScrollBarWidth,0,barSize)
			local scrollPercent = canvasPosition/(canvasSize-scrollingFrameSize)
			fakeScrollBar.Position = UDim2.new(1,-fakeScrollBarWidth,0,(scrollingFrameSize-barSize) * scrollPercent) + scrollingFrame.Position
		else
			fakeScrollBar.Visible = false
		end

		fastSpawn(updateScrollBarVisibility)

		if prop == 'CanvasPosition' then
			tryUpdateVisibleAssetCards()
			
			-- -100 pixels to give us a buffer to load more content so the user doesn't actually reach the end of the page
			if canvasPosition >= getAssetCardY(#assetList) - 100 - getButtonSize()*2 - canvasSize then
				if not loadingContent and not renderedRecommended and page.infiniteScrolling and not reachedBottomOfCurrentPage then
					reachedBottomOfCurrentPage = loadMoreListContent()
				end
			end
		end
	end)


	function renderPageTab(index, page)
		local tabButton = Instance.new('ImageButton')
		tabButton.Name = 'Tab'..page.name
		tabButton.Image = ''
		tabButton.BackgroundColor3 = Color3.fromRGB(255,255,255)
		if tabletMode then
			tabButton.BackgroundTransparency = 1
		end
		if page.specialPageType == 'Scale' and avatarType == 'R6' then
			tabButton.BackgroundColor3 = Color3.fromRGB(255*.66,255*.66,255*.66)
		end
		tabButton.BorderSizePixel = 0
		tabButton.AutoButtonColor = false
		if phoneMode then
			tabButton.Size = UDim2.new(0,tabWidth, 0, tabHeight)
			tabButton.Position = UDim2.new(0, (index-1) * (tabWidth+1) + firstTabBonusWidth, 0, 0)
		elseif tabletMode then
			tabButton.Size = UDim2.new(1, 0, 0, tabHeight)
			tabButton.Position = UDim2.new(0, 0, 0, (index-1) * (tabHeight+1) + firstTabBonusWidth)
		end
		if index == 1 then
			if phoneMode then
				tabButton.Size = UDim2.new(0, tabWidth + firstTabBonusWidth, 0, tabHeight)
				tabButton.Position = UDim2.new(0, (index-1) * (tabWidth+1), 0, 0)
			elseif tabletMode then
				tabButton.Size = UDim2.new(1, 0, 0, tabHeight + firstTabBonusWidth)
				tabButton.Position = UDim2.new(0, 0, 0, (index-1) * (tabHeight+1))
			end
		end
		tabButton.ZIndex = tabList.ZIndex
		tabButton.Parent = tabList.Contents
		page.button = tabButton

		if page.iconImage == '' then
			-- If tab has no image, then use placeholder text
			local nameLabel = Instance.new('TextLabel')
			nameLabel.BackgroundTransparency = 1
			nameLabel.Size = UDim2.new(1,0,1,0)
			nameLabel.Text = page.name
			nameLabel.Font = Enum.Font.SourceSansBold
			nameLabel.FontSize = 'Size14'
			nameLabel.TextColor3 = Color3.fromRGB(25,25,25)
			nameLabel.ZIndex = tabButton.ZIndex
			nameLabel.Parent = tabButton
		else
			local imageFrame = Instance.new('ImageLabel')
			imageFrame.BackgroundTransparency = 1
			imageFrame.Size = UDim2.new(0,28,0,28)
			imageFrame.Position = UDim2.new(.5,-14,.5,-14)
			if index == 1 then
				if phoneMode then
					imageFrame.Position = imageFrame.Position + UDim2.new(0, firstTabBonusWidth * .5, 0, 0)
				elseif tabletMode then
					imageFrame.Position = imageFrame.Position + UDim2.new(0, 0, 0, firstTabBonusWidth * 0.5)
				end
			end
			if spriteManager.enabled then
				spriteManager.equip(imageFrame, page.iconImageName)
			else
				imageFrame.Image = page.iconImage
			end
			imageFrame.ZIndex = tabButton.ZIndex
			imageFrame.Parent = tabButton
			
			if tabletMode then
				imageFrame.Position = imageFrame.Position + UDim2.new(0, 0, 0, -6)
				
				local nameLabel = Instance.new('TextLabel')
				nameLabel.BackgroundTransparency = 1
				nameLabel.Position = UDim2.new(0, 0, imageFrame.Position.Y.Scale, imageFrame.Position.Y.Offset+imageFrame.Size.Y.Offset+4)
				nameLabel.Size = UDim2.new(1,0,1,0)
				nameLabel.Text = page.display or '[errdisplay]'
				nameLabel.Font = Enum.Font.SourceSans
				nameLabel.FontSize = 'Size14'
				nameLabel.TextColor3 = Color3.fromRGB(137, 137, 137)
				nameLabel.TextXAlignment = 'Center'
				nameLabel.TextYAlignment = 'Top'
				nameLabel.ZIndex = tabButton.ZIndex
				nameLabel.Parent = tabButton
			end
		end

		if index > 1 then
			local divider = Instance.new('Frame')
			divider.Name = 'Divider'
			divider.BackgroundColor3 = Color3.fromRGB(227,227,227)
			divider.BorderSizePixel = 0
			if phoneMode then
				divider.Size = UDim2.new(0, 1, .6, 0)
				divider.Position = UDim2.new(0, (index-1) * (tabWidth+1) - 1 + firstTabBonusWidth, .2, 0)
			elseif tabletMode then
				divider.AnchorPoint = Vector2.new(0.5, 0)
				divider.Size = UDim2.new(1, -12, 0, 1)
				divider.Position = UDim2.new(0.5, 0, 0, (index-1) * (tabHeight+1) - 1 + firstTabBonusWidth)
			end
			divider.ZIndex = tabButton.ZIndex + 1
			divider.Parent = tabList.Contents
		end

		tabButton.MouseButton1Click:connect(function()
			selectPage(index, page)
		end)
	end
end


local currentCategory = nil

function selectCategory(category, instant)
	if currentCategory ~= category then
		currentCategory = category

		tabList.Contents:ClearAllChildren()

		if phoneMode then
			tabList.CanvasSize = UDim2.new(0, #(category.pages) * (tabWidth+1) + firstTabBonusWidth, 0, 0)
		elseif tabletMode then
			tabList.CanvasSize = UDim2.new(0, 0, 0, #(category.pages) * (tabHeight+1) + firstTabBonusWidth - 1)
		end
		tabList.CanvasPosition = Vector2.new(0,0)

		for index, page in pairs(category.pages) do
			renderPageTab(index, page)
		end

		if #category.pages > 0 then
			selectPage(1, category.pages[1], instant)
		end
		
		if tabletMode then
			setScrollButtonVisible(#category.pages > 6)
		end
		
		closeTopMenu()
		
		if flagManager.AvatarEditorUsesNewAssetGetEndpoint then
			for i, page in next, category.pages do
				if page.typeName then
					loadPage(assetTypeNames[page.typeName], '')
				end
			end
		end
	else
		closeTopMenu(category)
	end
end

local topMenuStateId = 0
function openTopMenu()
	setTopMenuContainerState('Open')
	topMenuIndexIndicator.Visible = false
	topMenuSelectedIcon.Visible = false
	
	local myStateId = topMenuStateId + 1
	topMenuStateId = myStateId
	
	if tabletMode then
		local closeButton = Instance.new('ImageButton')
		closeButton.Name = 'CloseButton'
		closeButton.BackgroundTransparency = 1
		closeButton.Image = ''
		closeButton.AnchorPoint = Vector2.new(0.5, 0.5)
		closeButton.Position = UDim2.new(0.5, 0, 0, 45)
		closeButton.Size = UDim2.new(0, 90, 0, 90)
		closeButton.ZIndex = 7
		local closeButtonImage = Instance.new('ImageLabel', closeButton)
		closeButtonImage.BackgroundTransparency = 1
		closeButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
		closeButtonImage.Position = UDim2.new(0, 45, 0, 45)
		closeButtonImage.Size = UDim2.new(0, 28, 0, 28)
		closeButtonImage.ZIndex = 7
		spriteManager.equip(closeButtonImage, 'ic-close')
		
		closeButton.MouseButton1Click:connect(closeTopMenu)
		
		tween(closeButtonImage, 'ImageTransparency', 'Number', 1, 0, 0.05, easeFilters.quad, easeFilters.easeInOut)
		
		tween(mainFrame.TabListContainer.TabListBackground, 'ImageTransparency', 'Number', nil, 1, 0.2, easeFilters.quad, easeFilters.easeInOut)
		tween(scrollButtonDown.Arrow, 'ImageTransparency', 'Number', nil, 1, 0.2, easeFilters.quad, easeFilters.easeInOut)
		
		local thisTab
		for i, obj in next, tabList.Contents:GetChildren() do
			if obj.ClassName == 'ImageButton' then
				-- Create tab button
				if page and obj.Name == 'Tab'..page.name then
					tween(obj, 'BackgroundTransparency', 'Number', nil, 1, 0.15, easeFilters.quad, easeFilters.easeInOut)
					thisTab = obj
				else
					tween(obj, 'BackgroundTransparency', 'Number', nil, 1, 0)
				end
				tween(obj.ImageLabel, 'ImageTransparency', 'Number', nil, 1, 0.2, easeFilters.quad, easeFilters.easeInOut)
				tween(obj.TextLabel, 'TextTransparency', 'Number', nil, 1, 0.2, easeFilters.quad, easeFilters.easeInOut)
			else
				tween(obj, 'BackgroundTransparency', 'Number', nil, 1, 0.2, easeFilters.quad, easeFilters.easeInOut)
			end
		end
	
		scrollButtonDown.Button.Visible = false
		tween(scrollButtonDown.Gradient, 'ImageTransparency', 'Number', nil, 1, 0.1, easeFilters.quad, easeFilters.easeInOut)
		tween(scrollButtonDown.BackgroundClipper.Background, 'ImageTransparency', 'Number', nil, 1, 0.1, easeFilters.quad, easeFilters.easeInOut)
	
		closeButton.Parent = topMenuContainer
	end
	
	for index, category in pairs(categories) do
		local categoryButton
		
		if phoneMode then
			categoryButton = categoryButtonTemplate:clone()
			categoryButton.Name = 'CategoryButton'..category.name
			categoryButton.Position = UDim2.new(1,-(#categories-index+1)*61,.5,-26)
			
			if spriteManager.enabled then
				if category == currentCategory then
					spriteManager.equip(categoryButton, "gr-orange-circle")
					spriteManager.equip(categoryButton.IconLabel, category.selectedIconImageName)
				else
					spriteManager.equip(categoryButton, "gr-category-selector")
					spriteManager.equip(categoryButton.IconLabel, category.iconImageName)
				end
			else
				categoryButton.Image = (category == currentCategory) and 'rbxasset://textures/AvatarEditorIcons/ingame/gr-orange-circle.png' or 'rbxasset://textures/AvatarEditorIcons/ingame/gr-category-selector.png'
				categoryButton.IconLabel.Image = (category == currentCategory) and category.selectedIconImage or category.iconImage
				categoryButton.ImageRectSize = Vector2.new(0, 0)
				categoryButton.ImageRectOffset = Vector2.new(0, 0)
				categoryButton.IconLabel.ImageRectSize = Vector2.new(0, 0)
				categoryButton.IconLabel.ImageRectOffset = Vector2.new(0, 0)
			end
		elseif tabletMode then
			categoryButton = screenGui.TabletCategoryButtonTemplate:clone()
			categoryButton.Name = 'CategoryButton'..category.name
			categoryButton.Position = UDim2.new(0.5, -45, 0, 90*(index-1))
			categoryButton.TextLabel.Text = category.display or '[errdisplay]'
			
			if category == currentCategory then
				spriteManager.equip(categoryButton.CircleLabel, "icon-border-on")
				spriteManager.equip(categoryButton.IconLabel, category.selectedIconImageName)
				categoryButton.TextLabel.TextColor3 = Color3.fromRGB(255, 161, 47)
			else
				spriteManager.equip(categoryButton.CircleLabel, "icon-border")
				spriteManager.equip(categoryButton.IconLabel, category.iconImageName)
			end
			
			categoryButton.CircleLabel.ImageTransparency = 1
			categoryButton.IconLabel.ImageTransparency = 1
			categoryButton.TextLabel.TextTransparency = 1
			delay((index-1)/6*0.2, function()
				if categoryButton:IsDescendantOf(game) then
					tween(categoryButton.CircleLabel, 'ImageTransparency', 'Number', nil, 0, 0.1, easeFilters.quad, easeFilters.easeInOut)
					tween(categoryButton.IconLabel, 'ImageTransparency', 'Number', nil, 0, 0.1, easeFilters.quad, easeFilters.easeInOut)
					tween(categoryButton.TextLabel, 'TextTransparency', 'Number', nil, 0, 0.1, easeFilters.quad, easeFilters.easeInOut)
				end
			end)
		end
		
		categoryButton.Visible = true
		categoryButton.MouseButton1Click:connect(function()
			selectCategory(category)
		end)
		categoryButton.Parent = tabletMode and topMenuContainer.CategoryScroller or topMenuContainer
	end
	if tabletMode then
		topMenuContainer.CategoryScroller.CanvasSize = UDim2.new(1, 0, 0, #categories*90)
	end
	darkCover.ZIndex = 5
	darkCover.Visible = true
	tween(darkCover, 'BackgroundTransparency', 'Number', nil, .4, .1, easeFilters.quad, easeFilters.easeInOut)
end
function closeTopMenu()
	local index = 0
	for i, category in pairs(categories) do		-- We need to index of the category, this is how we find it.
		if currentCategory == category then
			index = i
			break
		end
	end
	
	local myStateId = topMenuStateId + 1
	topMenuStateId = myStateId
	
	setTopMenuContainerState('Closed')
	topMenuIndexIndicator.Visible = true
	
	if #categories == 4 then
		topMenuIndexIndicator.Rotation = (index-1)*90	--((index-1)/#categories)*360
	else
		spriteManager.equip(topMenuIndexIndicator, 'ring'..((index-1)%5+1))
	end
	topMenuSelectedIcon.Visible = true
	if spriteManager.enabled then
		spriteManager.equip(topMenuSelectedIcon, currentCategory.iconImageName)
	else
		topMenuSelectedIcon.Image = currentCategory.iconImage
		topMenuSelectedIcon.ImageRectSize = Vector2.new(0, 0)
		topMenuSelectedIcon.ImageRectOffset = Vector2.new(0, 0)
	end
	for _, child in pairs((tabletMode and topMenuContainer.CategoryScroller or topMenuContainer):GetChildren()) do
		if child and child.Parent and string.sub(child.Name,1,14) == 'CategoryButton' then
			child:Destroy()
		end
	end
	if tabletMode then
		local closeButton = topMenuContainer:FindFirstChild('CloseButton')
		if closeButton then
			tween(closeButton, 'ImageTransparency', 'Number', nil, 1, 0.05, easeFilters.quad, easeFilters.easeInOut):connect(function(completed)
				closeButton:Destroy()
			end)
		end
		
		local thisTab
		for i, obj in next, tabList.Contents:GetChildren() do
			if obj.ClassName == 'ImageButton' then
				if page and obj.Name == 'Tab'..page.name then
					tween(obj, 'BackgroundTransparency', 'Number', 1, 0, 0.2, easeFilters.quad, easeFilters.easeInOut)
					thisTab = obj
				end
				tween(obj.ImageLabel, 'ImageTransparency', 'Number', 1, 0, 0.2, easeFilters.quad, easeFilters.easeInOut)
				tween(obj.TextLabel, 'TextTransparency', 'Number', 1, 0, 0.2, easeFilters.quad, easeFilters.easeInOut)
			else
				tween(obj, 'BackgroundTransparency', 'Number', 1, 0, 0.2, easeFilters.quad, easeFilters.easeInOut)
			end
		end
		
		local atBottom = tabList.CanvasPosition.y + tabList.AbsoluteSize.y >= tabList.CanvasSize.Y.Offset
		if not atBottom then
			scrollButtonDown.Button.Visible = true
			tween(scrollButtonDown.Gradient, 'ImageTransparency', 'Number', nil, 0, 0.2, easeFilters.quad, easeFilters.easeInOut)
			tween(scrollButtonDown.BackgroundClipper.Background, 'ImageTransparency', 'Number', nil, 0, 0.2, easeFilters.quad, easeFilters.easeInOut)
			tween(scrollButtonDown.Arrow, 'ImageTransparency', 'Number', nil, 0, 0.2, easeFilters.quad, easeFilters.easeInOut)
		end
		
		tween(mainFrame.TabListContainer.TabListBackground, 'ImageTransparency', 'Number', 1, 0, 0.2, easeFilters.quad, easeFilters.easeInOut):connect(function(completed)
			if completed then
				if not tabletMode then
					for i, obj in next, tabList.Contents:GetChildren() do
						if obj.ClassName == 'ImageButton' then
							tween(obj, 'BackgroundTransparency', 'Number', 1, 0, 0)
						end
					end
				end
			end
		end)
	end
	fastSpawn(tween, darkCover, 'BackgroundTransparency', 'Number', nil, 1, .05, easeFilters.quad, easeFilters.easeInOut):connect(function(completed)
		if completed then
			darkCover.Visible = false
		end
	end)
end

topMenuContainer.MouseButton1Click:connect(function()
	openTopMenu()
end)

darkCover.MouseButton1Click:connect(closeTopMenu)

benchmarker.check('start', 'Initialization M')

selectCategory(categories[1], --[[instant = ]] true)

benchmarker.check('start', 'Initialization N')

function preloadCategoryPages()
	if flagManager.AvatarEditorUsesNewAssetGetEndpoint then
		for i, cat in next, categories do
			local firstPage = cat.pages[1]
			
			if firstPage and firstPage.typeName then
				loadPage(assetTypeNames[firstPage.typeName], '')
			end
		end
	end
end
if flagManager.AvatarEditorInitializationOptimization then
	fastSpawn(preloadCategoryPages)
else
	preloadCategoryPages()
end

if userId == 15560089 then	-- This is the DefaultGuest userid. If the user has this id, then they do not have a valid userid.
	displayWarning("Unable to access your avatar appearance, try restarting the app.", 10)
end

benchmarker.check('start', 'Initialization O')

pcall(function()
	if not isCoreSetup then
		wait(1)
		local starterGui = game:GetService('StarterGui')
		starterGui:SetCore("TopbarEnabled", false)
	end
end)

character.Parent = game.Workspace

local rotation = 0
local lastRotation = 0
local downKeys = {}
local lastTouchInput = nil
local lastTouchPosition = nil
local lastInputBeganPosition = Vector3.new(0,0,0)
local lastEmptyInput = 0

function handleInput(input, soaked)
	if input.UserInputState == Enum.UserInputState.Begin then
		downKeys[input.KeyCode] = true
		if not soaked then

			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				downKeys[Enum.UserInputType.MouseButton1] = true
				lastTouchPosition = input.Position
				lastTouchInput = input
			end
			if input.UserInputType == Enum.UserInputType.Touch then
				lastTouchInput = input
				lastTouchPosition = input.Position
			end

			if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
				-- This is used for doubletap detection
				lastInputBeganPosition = input.Position
			end
			
			if input.KeyCode == Enum.KeyCode.ButtonR3 then
				playLookAround()
			end

		end
	elseif input.UserInputState == Enum.UserInputState.End then
		downKeys[input.KeyCode] = false
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			downKeys[Enum.UserInputType.MouseButton1] = false
		end
		if lastTouchInput == input or input.UserInputType == Enum.UserInputType.MouseButton1 then
			lastTouchInput = nil
		end

		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			if (lastInputBeganPosition and lastInputBeganPosition - input.Position).magnitude <= tapDistanceThreshold then
				local thisEmptyInput = tick()
				if thisEmptyInput - lastEmptyInput <= doubleTapThreshold then
					setViewMode(not viewMode)
				end
				lastEmptyInput = thisEmptyInput
			end
		end
	elseif input.UserInputState == Enum.UserInputState.Change then
		if (lastTouchInput == input and input.UserInputType == Enum.UserInputType.Touch)
			or (input.UserInputType == Enum.UserInputType.MouseMovement and downKeys[Enum.UserInputType.MouseButton1]) then

			local touchDelta = (input.Position - lastTouchPosition)
			lastTouchPosition = input.Position
			rotation = rotation + touchDelta.x * characterRotationSpeed
		end
	end
end

userInputService.InputBegan:connect(handleInput)
userInputService.InputChanged:connect(handleInput)
userInputService.InputEnded:connect(handleInput)

userInputService.TouchSwipe:connect(function(swipeDirection, numberOfTouches, soaked)
	if not soaked and phoneMode then
		if viewMode and swipeDirection == Enum.SwipeDirection.Up then
			setViewMode(false)
		elseif not viewMode and swipeDirection == Enum.SwipeDirection.Down then
			setViewMode(true)
		end
	end
end)

function onLastInputTypeChanged(inputType)
	local isGamepad = inputType.Name:find('Gamepad')
	local isTouch = inputType == Enum.UserInputType.Touch
	local isMouse = inputType.Name:find('Mouse') or inputType == Enum.UserInputType.Keyboard
	
	if not isGamepad and not isTouch and not isMouse then
		return
	end
	
	if isGamepad then
		userInputService.MouseIconEnabled = false
	else
		userInputService.MouseIconEnabled = true
	end
end

userInputService.LastInputTypeChanged:connect(onLastInputTypeChanged)
onLastInputTypeChanged(userInputService:GetLastInputType())

function lockPart(part)
	if part:IsA('BasePart') then
		part.Locked = true
	end
end

workspace.DescendantAdded:connect(lockPart)
for i, v in next, getDescendants(workspace) do
	lockPart(v)
end

local baseCharacterCFrame = CFrame.new(15.276206, 0.71000099, -16.8211784, 0.766051888, 2.24691483e-039, 0.642794013, 2.93314189e-039, 1, 0, -0.642794013, -1.88538683e-039, 0.766051888)


benchmarker.check('start', 'Initialization P')

fastSpawn(function()
	while true do
		wait(5)
		characterSave()	-- Don't worry, it only saves changes
	end
end)

game.OnClose = function()
	characterSave(true)
end

fullViewButton.MouseButton1Click:connect(function()
	setViewMode(not viewMode)
end)

local theseRots = 0
local lastRotationAt = 0
local rotGui = workspace:WaitForChild('Model'):WaitForChild('Unions'):WaitForChild('BaseCylinder'):WaitForChild('BillboardGui'):WaitForChild('Spins')
local rotGuiInfo = rotGui.Parent:WaitForChild('TextLabel')
local isRotsGuiVisible = false

local showRotsGui = function()
	if not isRotsGuiVisible then
		tween(rotGui, 'TextStrokeTransparency', 'Number', nil, 1, 0.3)
		tween(rotGui, 'TextTransparency', 'Number', nil, 0, 1)
		tween(rotGuiInfo, 'TextStrokeTransparency', 'Number', nil, 1, 0.3)
		tween(rotGuiInfo, 'TextTransparency', 'Number', nil, 0, 1)
		
		isRotsGuiVisible = true
	end
end

local hideRotsGui = function()
	if isRotsGuiVisible then
		tween(rotGui, 'TextStrokeTransparency', 'Number', 0, 1, 0.3)
		tween(rotGui, 'TextTransparency', 'Number', nil, 1, 1)
		tween(rotGuiInfo, 'TextStrokeTransparency', 'Number', 0, 1, 0.3)
		tween(rotGuiInfo, 'TextTransparency', 'Number', nil, 1, 1)
		
		isRotsGuiVisible = false
	end
end

benchmarker.check('start', 'Initialization Q')
benchmarker.check('start', 'FULLY INITIALIZED')

recalculateRestingPartOffsets()

local rotationalMomentum = 0
local ranOnce = false
while true do
	local delta = 0
	if ranOnce then
		delta = renderWait()
	end
	local isRotatingNow = false
	local tilt = 0
	local offsetTheseRots = 0
	
	if downKeys[Enum.KeyCode.Left] or downKeys[Enum.KeyCode.A] then
		rotation = rotation - delta*math.rad(180)
		isRotatingNow = true
	elseif downKeys[Enum.KeyCode.Right] or downKeys[Enum.KeyCode.D] then
		rotation = rotation + delta*math.rad(180)
		isRotatingNow = true
	else
		isRotatingNow = false
	end
	
	if not vrService.VREnabled and userInputService.GamepadEnabled then
		for i, gamepad in next, userInputService:GetNavigationGamepads() do
			local state = userInputService:GetGamepadState(gamepad)
			
			for i, obj in next, state do
				if obj.KeyCode == Enum.KeyCode.Thumbstick2 then
					if math.abs(obj.Position.x) > 0.25 then
						local deltaRotation = obj.Position.x*delta*math.rad(180)
						rotation = rotation + deltaRotation
						if userInputService.TouchEnabled or userInputService.MouseEnabled then
							offsetTheseRots = offsetTheseRots - deltaRotation
						end
						isRotatingNow = true
					end
					if math.abs(obj.Position.y) > 0.25 then
						tilt = tilt + obj.Position.y*math.rad(45)
					end
				end
			end
		end
	end
	
	local changeInRotation = false
	if lastTouchInput then
		rotationalMomentum = rotation - lastRotation
		isRotatingNow = true
	elseif rotationalMomentum ~= 0 then
		rotationalMomentum = rotationalMomentum * rotationalInertia
		isRotatingNow = true
		if math.abs(rotationalMomentum) < .001 then
			rotationalMomentum = 0
			isRotatingNow = false
		end
		rotation = rotation + rotationalMomentum
	end	
	
	if flagManager.AvatarEditorSpinCounter then
		theseRots = theseRots + (rotation - lastRotation) + offsetTheseRots
		local rots = math.abs(math.floor(theseRots/(math.pi*2)))
		
		if isRotatingNow then
			if rots > 20 then
				showRotsGui()
				rotGui.Text = rots
				rotGuiInfo.Text = 'spins' .. ('!'):rep(#tostring(rots)-2)
			else
				hideRotsGui()
			end
			lastRotationAt = tick()
		elseif tick() - lastRotationAt > 2 then
			if not isRotatingNow then
				hideRotsGui()
				theseRots = 0
			end
		end
	end
	
	lastRotation = rotation

	local heightBonus = 3
	if avatarType == 'R15' then
		if hrp then
			heightBonus = hrp.Size.y * .5
		end
	end
	if humanoid then
		heightBonus = heightBonus + humanoid.HipHeight
	end
	hrp.CFrame = baseCharacterCFrame * CFrame.Angles(0,rotation,0) * CFrame.new(0,heightBonus,0) * CFrame.Angles(rootAnimationRotation.x, rootAnimationRotation.y, rootAnimationRotation.z) * CFrame.Angles(tilt, 0, 0)
	
	if not ranOnce then
		adjustCameraProperties(true)
		refreshCharacterScale()
		
		ranOnce = true
	end

	--todo: explore accelleromiter and gyro input for camera shifting
	--todo: integrate the lines below with the camera controller module
	--local aestheticRotationPercent = math.max(-.5,math.min(.5,rotationalMomentum))/.5
	--camera.CoordinateFrame = (viewMode and cameraCFrames.fullView or cameraCFrames.default) * CFrame.new(aestheticRotationPercent*-.1,0,0) * CFrame.Angles(0,aestheticRotationPercent*.01,0)
end
