local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Rodux = require(Plugin.Packages.Rodux)

local Rhodium = require(Plugin.Packages.Dev.Rhodium)
local Element = Rhodium.Element
local XPath = Rhodium.XPath

local ContextServices = Framework.ContextServices
local Localization = ContextServices.Localization

local ItemCharacteristics = require(Plugin.Src.Util.ItemCharacteristics)

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local timeoutSeconds = 5

local TestHelper = {}

TestHelper.DefaultClothesName = "clothes"
TestHelper.DefaultAvatarName = "dummy"
TestHelper.AttachmentCFrame = CFrame.new(10, 20, 10)
TestHelper.DefaultAttachmentName = "WaistFrontAttachment"
TestHelper.DefaultMeshId = "https://assetdelivery.roblox.com/v1/asset/?id=6799863967"

local function delay()
	local TEST_DELAY_SECONDS = 0.1
	wait(TEST_DELAY_SECONDS)
end

function TestHelper.delay()
	delay()
end

function TestHelper.createTestStore()
	local middlewares = {Rodux.thunkMiddleware}
	return Rodux.Store.new(MainReducer, nil, middlewares)
end

function TestHelper.clickElement(element, repeatCount)
	element:click(repeatCount)
	delay()
end

function TestHelper.sendInputToXPath(xpath,inputValue)
	local element = TestHelper.clickXPath(xpath, 2)
	delay()
	element:sendKey(Enum.KeyCode.Backspace)
	delay()
	element:sendText(inputValue)
	delay()
	element:sendKey(Enum.KeyCode.Return)
	delay()
end

function TestHelper.confirmDialog()
	local dialogName = Localization.mock():getText("Dialog","DefaultTitle")
	local dialogPath = XPath.new(game.CoreGui[dialogName])
	local dialogConfirmButtonPath =
		dialogPath:cat(XPath.new("SolidBackground.ButtonContainer.1.Contents.TextButton"))
	TestHelper.waitForXPathInstance(dialogConfirmButtonPath)
	TestHelper.clickXPath(dialogConfirmButtonPath)
end

function TestHelper.goToAssetTypeScreenFromStart(caged, hasAttachment)
	local ScreenFlowPath = TestHelper.getScreenFlow()
	local SelectFramePath =
		ScreenFlowPath:cat(XPath.new("SelectFrame.Content"))
	local NextButtonPath =
		SelectFramePath:cat(XPath.new("NextAndBackButtonContainer.NextButton.Contents.TextButton"))

	TestHelper.waitForXPathInstance(NextButtonPath)

	if caged then
		TestHelper.addLCItemWithFullCageFromExplorer()
	else
		if hasAttachment then
			TestHelper.addLCItemWithAttachmentFromExplorer()
		else
			TestHelper.addLCItemWithoutCageFromExplorer()
		end
	end
	TestHelper.clickXPath(NextButtonPath)
	delay()
end

function TestHelper.goToEditScreenFromStart(caged, hasAttachment)
	TestHelper.goToAssetTypeScreenFromStart(caged, hasAttachment)

	local ScreenFlowPath = TestHelper.getScreenFlow(true)
	local AssetTypeScreenPath =
		ScreenFlowPath:cat(XPath.new("ExpandablePane.Content"))
	local ShirtButtonPath =
		AssetTypeScreenPath:cat(XPath.new("Content.ClothingTypeList.List.Shirt"))
	local WaistButtonPath =
		AssetTypeScreenPath:cat(XPath.new("Content.AccessoryTypeList.List.Waist"))
	local WaistFrontButtonPath =
		AssetTypeScreenPath:cat(XPath.new("Content.List.Front"))
	local NextButtonPath =
		AssetTypeScreenPath:cat(XPath.new("NextAndBackButtonContainer.NextButton.Contents.TextButton"))

	if caged then
		TestHelper.waitForXPathInstance(ShirtButtonPath)
		TestHelper.clickXPath(ShirtButtonPath)
	else
		TestHelper.waitForXPathInstance(WaistButtonPath)
		TestHelper.clickXPath(WaistButtonPath)

		TestHelper.waitForXPathInstance(NextButtonPath)
		TestHelper.clickXPath(NextButtonPath)

		TestHelper.waitForXPathInstance(WaistFrontButtonPath)
		TestHelper.clickXPath(WaistFrontButtonPath)
	end

	TestHelper.waitForXPathInstance(NextButtonPath)
	TestHelper.clickXPath(NextButtonPath)
	delay()
end

function TestHelper.clickEquippableGridTile(index)
	local gridScrollerChildPath = TestHelper.getEquippableGridTilePath(index)
	TestHelper.waitForXPathInstance(gridScrollerChildPath)

	local childTextButtonPath = gridScrollerChildPath:cat(XPath.new("Contents.TextButton"))
	TestHelper.waitForXPathInstance(childTextButtonPath)
	TestHelper.clickXPath(childTextButtonPath)
end

function TestHelper.getEquippableGridTilePath(index)
	local ScrollerPath = TestHelper.getEditScreenContainer()
	local GridPath = ScrollerPath:cat(XPath.new("PreviewSwizzle.Content.PreviewFrame.Grid"))
	local GridScrollerPath = GridPath:cat(XPath.new("ScrollingFrame.Scroller"))

	-- add 1 to index to get childIndex as the first equippable tile in the grid has child index 2, as the
	-- first tile in the grid is the add from explorer tile
	local childIndex = index + 1
	return GridScrollerPath:cat(XPath.new(tostring(childIndex)))
end

function TestHelper.getEquippableGridTileInstance(index)
	local gridScrollerChildPath = TestHelper.getEquippableGridTilePath(index)
	return TestHelper.waitForXPathInstance(gridScrollerChildPath)
end

function TestHelper.clickXPath(xpath, repeatCount)
	local element = Element.new(xpath)
	TestHelper.clickElement(element, repeatCount)
	return element
end

local function waitForValidFunctionWithTimeout(validFunc)
	local startTimeSeconds = os.time()
	while not validFunc() do
		if os.time() - startTimeSeconds > timeoutSeconds then
			return false
		end
		delay()
	end
	return true
end

function TestHelper.waitForValid(validFunc)
	return waitForValidFunctionWithTimeout(validFunc)
end

function TestHelper.waitForXPathInstance(xpath)
	local isValid = waitForValidFunctionWithTimeout(function()
		return xpath:getFirstInstance()
	end)
	if isValid then
		return xpath:getFirstInstance()
	else
		return nil
	end
end

local function getProperty(instance, property)
	local succeeded, result = pcall(function() return instance[property] end )
	return succeeded == true and result or nil
end

function TestHelper.waitForPropertyEqualTo(instance, property, expectValue)
	return waitForValidFunctionWithTimeout(function()
		return getProperty(instance,property) == expectValue
	end)
end

function TestHelper.waitForChildrenCountEqualTo(instance, expectValue)
	return waitForValidFunctionWithTimeout(function()
		return #instance:GetChildren() == expectValue
	end)
end

function TestHelper.getScreenFlow(hasScrollFrame)
	if hasScrollFrame then
		return XPath.new("game.CoreGui.PluginMockGui.ScreenFlow.Screen.MainFrame.Scroller")
	else
		return XPath.new("game.CoreGui.PluginMockGui.ScreenFlow")
	end
end

function TestHelper.getEditScreenContainer()
	return XPath.new("game.CoreGui.PluginMockGui.Container.MainFrame")
end

function TestHelper.cleanTempInstances()
	local tempInstancesFolder = TestHelper.getTempInstancesFolder()
	if tempInstancesFolder then
		tempInstancesFolder:Destroy()
	end

	local tempScreenGui = TestHelper.getTempScreenGui()
	if tempScreenGui then
		tempScreenGui:Destroy()
	end
end

function TestHelper.getTempInstancesFolder()
	local tempInstancesFolderName = "TempInstancesFolder"
	local tempInstancesFolder = workspace:FindFirstChild(tempInstancesFolderName)
	if tempInstancesFolder then
		return tempInstancesFolder
	end
	tempInstancesFolder = Instance.new("Folder")
	tempInstancesFolder.Name = tempInstancesFolderName
	tempInstancesFolder.Parent = workspace
	return tempInstancesFolder
end

function TestHelper.getTempScreenGui()
	local tempScreenGuiName = "TempScreenGui"
	local tempScreenGui = game.CoreGui:FindFirstChild(tempScreenGuiName)
	if tempScreenGui then
		return tempScreenGui
	end
	tempScreenGui = Instance.new("ScreenGui", game.CoreGui)
	tempScreenGui.Name = tempScreenGuiName
	tempScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	return tempScreenGui
end

function TestHelper.createNonAvatar(name)
	local notAvatar = Instance.new("Model")
	notAvatar.Name = name or TestHelper.DefaultAvatarName
	notAvatar.Parent = TestHelper.getTempInstancesFolder()
	return notAvatar
end

function TestHelper.createClothesWithoutCage(name)
	local model = Instance.new("Model")
	local clothes = Instance.new("MeshPart", model)
	clothes.Name = name or TestHelper.DefaultClothesName
	model.Parent = TestHelper.getTempInstancesFolder()
	return clothes
end

function TestHelper.createClothesWithFullCages(name)
	local model = Instance.new("Model")
	local clothes = Instance.new("MeshPart", model)
	clothes.Name = name or TestHelper.DefaultClothesName
	model.Parent = TestHelper.getTempInstancesFolder()
	local wrapInst = Instance.new("MeshPart",clothes)
	wrapInst.Name = clothes.Name
	local layer = Instance.new("WrapLayer", clothes)
	layer.CageMeshId = TestHelper.DefaultMeshId
	layer.ReferenceMeshId = TestHelper.DefaultMeshId
	return clothes
end

function TestHelper.createClothesWithOuterCage(name)
	local model = Instance.new("Model")
	local clothes = Instance.new("MeshPart", model)
	clothes.Name = name or TestHelper.DefaultClothesName
	model.Parent = TestHelper.getTempInstancesFolder()
	local wrapInst = Instance.new("MeshPart",clothes)
	wrapInst.Name = clothes.Name
	local target = Instance.new("WrapTarget", clothes)
	target.CageMeshId = TestHelper.DefaultMeshId
	return clothes
end

local function createAvatar(name)
	local avatar = Instance.new("Model")
	avatar.Parent = TestHelper.getTempInstancesFolder()
	local humanoid = Instance.new("Humanoid")
	humanoid.Parent = avatar
	local HumanoidRootPart = Instance.new("Part", avatar)
	HumanoidRootPart.Name = "HumanoidRootPart"
	local UpperTorso = Instance.new("MeshPart", avatar)
	UpperTorso.Name = "UpperTorso"
	local LowerTorso = Instance.new("MeshPart", avatar)
	LowerTorso.Name = "LowerTorso"
	local Head = Instance.new("MeshPart", avatar)
	Head.Name = "Head"
	local LeftFoot = Instance.new("MeshPart", avatar)
	LeftFoot.Name = "LeftFoot"
	local RightFoot = Instance.new("MeshPart", avatar)
	RightFoot.Name = "RightFoot"
	local LeftHand = Instance.new("MeshPart", avatar)
	LeftHand.Name = "LeftHand"
	local RightHand = Instance.new("MeshPart", avatar)
	RightHand.Name = "RightHand"
	local RightUpperArm = Instance.new("MeshPart", avatar)
	RightUpperArm.Name = "RightUpperArm"
	local RightLowerArm = Instance.new("MeshPart", avatar)
	RightLowerArm.Name = "RightLowerArm"
	local LeftUpperArm = Instance.new("MeshPart", avatar)
	LeftUpperArm.Name = "LeftUpperArm"
	local LeftLowerArm = Instance.new("MeshPart", avatar)
	LeftLowerArm.Name = "LeftLowerArm"
	local LeftUpperLeg = Instance.new("MeshPart", avatar)
	LeftUpperLeg.Name = "LeftUpperLeg"
	local LeftLowerLeg = Instance.new("MeshPart", avatar)
	LeftLowerLeg.Name = "LeftLowerLeg"
	local RightUpperLeg = Instance.new("MeshPart", avatar)
	RightUpperLeg.Name = "RightUpperLeg"
	local RightLowerLeg = Instance.new("MeshPart", avatar)
	RightLowerLeg.Name = "RightLowerLeg"
	avatar.Name = name or TestHelper.DefaultAvatarName
	Instance.new("WrapTarget", UpperTorso)
	return avatar
end

function TestHelper.createAvatarWithoutCages(name)
	return createAvatar(name)
end

function TestHelper.createAvatarWithFullCages(name)
	local avatar = createAvatar(name)
	local humanoid = Instance.new("Humanoid")
	humanoid.Parent = avatar
	local meshPart = Instance.new("MeshPart")
	meshPart.Parent = avatar
	local attachment = Instance.new("Attachment", meshPart)
	attachment.Name = TestHelper.DefaultAttachmentName
	local innerCage = Instance.new("MeshPart",avatar)
	innerCage.Name = "Inner"
	local outerCage = Instance.new("MeshPart",avatar)
	outerCage.Name = "Outer"
	avatar.PrimaryPart = meshPart
	return avatar
end

local function selectItem(item)
	local Selection = game:GetService("Selection")
	Selection:Set({item})
	delay()
end

local function addItemAndConfirm(item, addItemFromExplorerButton)
	if not addItemFromExplorerButton then
		return
	end

	TestHelper.clickXPath(addItemFromExplorerButton)

	selectItem(item)

	TestHelper.confirmDialog()
end

function TestHelper.addRegularPartFromExplorer()
	local item = Instance.new("Part")
	item.Parent = TestHelper.getTempInstancesFolder()

	selectItem(item)

	return item
end

function TestHelper.addLCItemWithAttachmentFromExplorer()
	local item = TestHelper.createClothesWithoutCage()
	local attachment = Instance.new("Attachment", item)
	attachment.Name = TestHelper.DefaultAttachmentName
	attachment.CFrame = TestHelper.AttachmentCFrame

	selectItem(item)

	return item
end

function TestHelper.addLCItemWithoutCageFromExplorer(item)
	local lcItem = item or TestHelper.createClothesWithoutCage()
	assert(not ItemCharacteristics.hasFullCages(lcItem))

	selectItem(lcItem)

	return lcItem
end

function TestHelper.addLCItemWithFullCageFromExplorer(item)
	local lcItem = item or TestHelper.createClothesWithFullCages()
	assert(ItemCharacteristics.hasFullCages(lcItem))

	selectItem(lcItem)

	return lcItem
end

function TestHelper.addLCItemWithOuterCageFromExplorer(item)
	local lcItem = item or TestHelper.createClothesWithOuterCage()
	assert(ItemCharacteristics.hasOuterCage(lcItem))

	selectItem(lcItem)

	return lcItem
end

function TestHelper.addAvatarWithFullCagesFromExplorer()
	local lcItem = TestHelper.createAvatarWithFullCages()
	assert(ItemCharacteristics.hasFullCages(lcItem))

	selectItem(lcItem)

	return lcItem
end

function TestHelper.addLCItemWithInvalidCageFromExplorer()
	local lcItem = TestHelper.createClothesWithFullCages()
	local layer = lcItem:FindFirstChild("WrapLayer")
	layer.CageMeshId = ""
	layer.ReferenceMeshId = ""
	assert(ItemCharacteristics.hasInvalidCage(lcItem))

	selectItem(lcItem)

	return lcItem
end

local function addItemToGrid(item)
	local ScrollerPath = TestHelper.getEditScreenContainer()
	local GridPath = ScrollerPath:cat(XPath.new("PreviewSwizzle.Content.PreviewFrame.Grid"))
	local GridScrollerPath = GridPath:cat(XPath.new("ScrollingFrame.Scroller"))
	local gridScrollerChildPath =  GridScrollerPath:cat(XPath.new("AddNewTile"))
	TestHelper.waitForXPathInstance(gridScrollerChildPath)
	local childTextButtonPath = gridScrollerChildPath:cat(XPath.new("Contents.TextButton"))
	TestHelper.waitForXPathInstance(childTextButtonPath)

	addItemAndConfirm(item, childTextButtonPath)
end

--assumes avatar tab is already selected
function TestHelper.addAvatarToGrid()
	addItemToGrid(TestHelper.createAvatarWithFullCages())
end

--assumes clothing tab is already selected
function TestHelper.addClothesItemToGrid()
	addItemToGrid(TestHelper.createClothesWithFullCages())
end

function TestHelper.selectCage(cage)
	local ScrollerPath = TestHelper.getMainScroller()
	local SelectCageRadioButtonListPath =
		ScrollerPath:cat(XPath.new("EditSwizzle.Content.EditorFrame.EditingModeFrame.EditingModeRadioButtonList"))
	local cageButtonPath
	if cage == Enum.CageType.Inner then
		local SelectInnerCageRadioButtonPath =
			SelectCageRadioButtonListPath:cat(XPath.new("Inner.RadioImage.Contents"))
		cageButtonPath = SelectInnerCageRadioButtonPath:cat(XPath.new("TextButton"))
	else
		local SelectOuterCageRadioButtonPath =
			SelectCageRadioButtonListPath:cat(XPath.new("Outer.RadioImage.Contents"))
		cageButtonPath = SelectOuterCageRadioButtonPath:cat(XPath.new("TextButton"))
	end
	TestHelper.clickXPath(cageButtonPath)
end

return TestHelper