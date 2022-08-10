--[[
	An empty example component, which appears in the main plugin.
	Renders a blank background of the default background color.
	New Plugin Setup: Delete or modify this component
]]

local Plugin = script.Parent.Parent.Parent
-- local _Types = require(Plugin.Src.Types) -- uncomment to use types
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer
local Promise = Framework.Util.Promise

local UI = Framework.UI
local Pane = UI.Pane
local Button = Framework.UI.Button

-- Put all the props that aren't defined in withContext into this Luau type
export type Props = {}

-- Any props defined in withContext should be added here, the underscore denotes this as a privately used type
type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

-- If the component has a specific style associated with it in makeTheme, define those values here
type _Style = {}

local ExampleComponent = Roact.PureComponent:extend("ExampleComponent")



local _, PackageUIService = pcall(function()
	return game:GetService("PackageUIService")
end)
local Selection = game:GetService("Selection")

local LATEST_VERSION = 0
local CAN_CANCEL_AFTER_RETRIES = 3
local BOX_SIZE = 80
local BOX_PADDING = 4
local BOTTOM_BAR_SIZE = 100
local LOG_MESSAGES = {
	PackagePublishSuccess = "Package published! {%s, %s}",
	PackagePublishFailure = "Failed to publish package. Retrying... {%s, %s}",
	PackagePublishSkipped = "Package skipped due to no changes detected. {%s, %s}",
	TempContainerName = "NPP_Cloned_Instances",
	UpToDateString = "Up To Date",
	NewVersionString = "New Version Available",
	OperationEnded = "Hierarchical Publish Operation completed!",
	OperationCancelled = "Hierarchal Publish Operation cancelled.",
	LatestVersionFailure = "There was an issue getting the latest version of a package. Ending process.",
}
local PublishStatus = {
	Ready = 0,
	Pending = 1,
	Updating = 2, -- Occurs during scoped mass updates
	Failed = 3,
	Success = 4,
	Skipped = 5,
}


local function getPackageLink(instance)
	if not instance then
		return
	end
	return instance:FindFirstChildOfClass("PackageLink")
end

local function getName(inst) return inst.Name end
local function isRestricted(inst) return not pcall(getName, inst) end

local function _recursiveChangedPackageScan(instances, currentInstance, changeList)
	if isRestricted(currentInstance) then
		return
	end

	local packageLink = getPackageLink(currentInstance)
	if packageLink then
		local changes = changeList[packageLink.PackageId]
		if changes then
			if changes.oldVersionId == packageLink.VersionNumber then
				table.insert(instances, currentInstance)
				return -- Don't scan children of a changed package
			end
		end
	end

	for _, child in currentInstance:GetChildren() do
		_recursiveChangedPackageScan(instances, child, changeList)
	end
end

-- Traverses a provided root instance to find all published child packages that were at the latest version
local function getChangedPackageInstances(root, changeList)
	local instances = {}
	_recursiveChangedPackageScan(instances, root, changeList)
	return instances
end

local function _recursivePackageRelationScan(parentPackages, currentInstance, lastPackageId)
	if isRestricted(currentInstance) then
		return
	end

	local packageLink = getPackageLink(currentInstance)
	if packageLink then
		if not parentPackages[packageLink.PackageId] then
			parentPackages[packageLink.PackageId] = {
				instance = currentInstance,
				parents = {},
			}
		end
		if lastPackageId then
			parentPackages[packageLink.PackageId].parents[lastPackageId] = parentPackages[lastPackageId]
		end
		lastPackageId = packageLink.PackageId
	end

	for _, child in currentInstance:GetChildren() do
		_recursivePackageRelationScan(parentPackages, child, lastPackageId)
	end
end

-- Traverses a provided root instance to determine all relationships between descendant packages
local function getAllPackageRelationships(root)
	local parentPackages = {}
	_recursivePackageRelationScan(parentPackages, root, nil)
	return parentPackages
end

-- Given a package instance and a version number, safely sets the package version and returns the new instance
local function setPackageToVersion(instance, versionNumber)
	if not getPackageLink(instance) then
		return
	end
	if typeof(versionNumber) ~= "number" then
		return
	end

	local success, response = pcall(function()
		return PackageUIService:SetPackageVersion(instance, versionNumber)
	end)
	if not (success and response) then
		warn(response)
		return
	end

	return response
end

-- Finds the first ancestor instance that is a package. Returns nil if none are found.
local function getParentPackage(instance)
	if not instance then
		return
	end

	local parentInstance = instance.Parent
	if not parentInstance then
		return
	end

	local parentPackageLink = getPackageLink(parentInstance)
	if parentPackageLink then
		return parentInstance
	else
		return getParentPackage(parentInstance)
	end
end

local function sortByPackageDepth(a, b)
	if a.Depth == b.Depth then
		return a.PackageId < b.PackageId
	end
	return a.Depth < b.Depth
end

local function scanForRelatedPackages(selectedInstance, root)
	assert(selectedInstance)
	assert(root)
	local selectedPackageLink = getPackageLink(selectedInstance)
	assert(selectedPackageLink)
	
	local allRelationships = getAllPackageRelationships(root)
	
	local scannedIds = {}
	local packageLists = {} -- { [1] = {DATA}, [2] = {DATA2}, ... }

	local function recurse(packageId, depth)
		local relationshipData = allRelationships[packageId]
		for nextId, data in pairs(relationshipData.parents) do
			recurse(nextId, depth + 1)
		end

		if scannedIds[packageId] then
			scannedIds[packageId].Depth = math.max(scannedIds[packageId].Depth, depth)
			return
		end
		
		local success, packageInfo = pcall(function()
			local packageAssetId = string.match(packageId, "%d+")
			return PackageUIService:GetPackageInfo(packageAssetId)
		end)
		if not success then
			error(packageInfo)
		end

		local isSelectedInstance = (depth == 0)
		local PACKAGE_DATA = {
			PackageId = packageId,
			FoundInstance = if isSelectedInstance then selectedInstance else relationshipData.instance,
			Depth = depth,
			Changed = isSelectedInstance,
			IsSelected = isSelectedInstance,
			PackageAssetName = packageInfo.PackageAssetName,
			HasEditPermission = (packageInfo.PermissionLevel.Value >= Enum.PackagePermission.Edit.Value),
		}
		scannedIds[packageId] = PACKAGE_DATA
		table.insert(packageLists, PACKAGE_DATA)
	end
	recurse(selectedPackageLink.PackageId, 0)

	return packageLists
end

function ExampleComponent:runScopedMassUpdate(next, changeList)
	local packagesToUpdate = getChangedPackageInstances(next.LatestVersion, changeList)
	if #packagesToUpdate > 0 then
		next.PublishStatus = PublishStatus.Updating
		self:setState({})

		for _, childPackage in ipairs(packagesToUpdate) do
			local changes = changeList[getPackageLink(childPackage).PackageId]
			local numRetryAttempts = 0
			while true do
				if self.state.isCancelling then
					return
				end

				if setPackageToVersion(childPackage, changes.newVersionId) then
					next.Changed = true
					break
				end

				self:setState({
					canCancel = (numRetryAttempts >= CAN_CANCEL_AFTER_RETRIES),
				})
				numRetryAttempts += 1

				task.wait(0.5)
			end
		end

		next.PublishStatus = PublishStatus.Ready
		self:setState({})
	end
end

function ExampleComponent:promiseToPublishPackage(next, changeList)
	return Promise.new(function(resolve, reject)
		task.spawn(function()
			if self.state.isCancelling then
				return reject()
			end
			
			if not next.IsSelected then
				self:runScopedMassUpdate(next, changeList)
			end

			if not next.Changed then
				next.PublishStatus = PublishStatus.Skipped
				self:setState({})
				warn(string.format(LOG_MESSAGES.PackagePublishSkipped, next.PackageAssetName, next.PackageId))
				return resolve()
			end

			next.PublishStatus = PublishStatus.Pending
			self:setState({
				canCancel = false,
			})

			-- TODO: Once PackageOverhaulPhaseOne is released, mod check is being removed so we don't need to wait for Status property to update here
			local statusUpdateClone = next.LatestVersion:Clone()
			statusUpdateClone.Archivable = false
			statusUpdateClone.Parent = next.LatestVersion.Parent
			local clonePackageLink = getPackageLink(statusUpdateClone)
			local thisPackageLink = getPackageLink(next.LatestVersion)
			if thisPackageLink.Status == LOG_MESSAGES.UpToDateString then
				thisPackageLink:GetPropertyChangedSignal("Status"):Wait()
			end

			local oldVersionId = thisPackageLink.VersionNumber
			local numRetryAttempts = 0
			local success, error
			repeat
				if self.state.isCancelling then
					return reject()
				end

				success, error = pcall(function()
					PackageUIService:PublishPackage(next.LatestVersion)
				end)
				if success then
					warn(string.format(LOG_MESSAGES.PackagePublishSuccess, next.PackageAssetName, next.PackageId))
					next.PublishStatus = PublishStatus.Success
					self:setState({})
					
					if not string.find(clonePackageLink.Status, LOG_MESSAGES.NewVersionString) then
						-- Version Number needs some time to update on C++ end
						clonePackageLink:GetPropertyChangedSignal("Status"):Wait()
					end
					local newVersionId = getPackageLink(next.LatestVersion).VersionNumber
					changeList[next.PackageId] = {
						oldVersionId = oldVersionId,
						newVersionId = newVersionId,
					}
				else
					warn(error)
					next.PublishStatus = PublishStatus.Failed
					self:setState({
						canCancel = (numRetryAttempts >= CAN_CANCEL_AFTER_RETRIES),
					})

					warn(string.format(LOG_MESSAGES.PackagePublishFailure, next.PackageAssetName, next.PackageId))
					task.wait( 2^(math.min(numRetryAttempts, 2)) )
					numRetryAttempts += 1

					next.PublishStatus = PublishStatus.Pending
					self:setState({})
				end
			until success

			return resolve()
		end)
	end)
end

local function waitForPromises(promiseList)
	if not promiseList or #promiseList == 0 then
		return true, nil
	end
	return pcall(function()
		return Promise.all(promiseList):await()
	end)
end

function ExampleComponent:doPackagePublishing(packageLists)
	local changeList = {}
	local lastDepth
	local promiseList
	for i = 1, #packageLists do
		local next = packageLists[i]
		if lastDepth ~= next.Depth then
			if not waitForPromises(promiseList) then
				return
			end
			lastDepth = next.Depth
			promiseList = {}
		end
		table.insert(promiseList, self:promiseToPublishPackage(next, changeList))
	end
	waitForPromises(promiseList)
end

local function getLatestVersionClones(packageLists)
	local tempContainer = Instance.new("Folder")
	tempContainer.Name = LOG_MESSAGES.TempContainerName
	tempContainer.Archivable = false
	tempContainer.Parent = game:GetService("ServerStorage")

	for _, next in ipairs(packageLists) do
		local latestVersion = next.FoundInstance
		if not latestVersion then
			error(LOG_MESSAGES.LatestVersionFailure)
		end
		latestVersion = latestVersion:Clone()
		latestVersion.Parent = tempContainer
		if not next.IsSelected then
			latestVersion = setPackageToVersion(latestVersion, LATEST_VERSION)
		end
		if not latestVersion then
			error(LOG_MESSAGES.LatestVersionFailure)
		end
		next.LatestVersion = latestVersion
	end

	return tempContainer
end

function ExampleComponent:publishSelectedPackageHierarchy()
	if not self.state.canPublish then
		return
	end

	self:setState({
		isPublishing = true,
		canPublish = false,
		isCancelling = false,
		canCancel = false,
	})

	local packageLists = self.state.packageLists

	local success, tempContainer = pcall(getLatestVersionClones, packageLists)
	if not success then
		warn(tempContainer)
		self:setState({
			isPublishing = false,
			isCancelling = false,
			canCancel = false,
		})
		self:onChangeSelection()
		return
	end

	self:doPackagePublishing(packageLists)

	if not self.state.isCancelling then
		local manualUpdateInstance = self.state.selectedInstance
		local isSelectionStillSelected = table.find(Selection:Get(), manualUpdateInstance)
		while true do
			local parentPackage = getParentPackage(manualUpdateInstance)
			if not parentPackage then
				break
			end
			if not string.find(getPackageLink(parentPackage).Status, LOG_MESSAGES.NewVersionString) then
				break
			end
			manualUpdateInstance = parentPackage
		end
		local newInstance = setPackageToVersion(manualUpdateInstance, LATEST_VERSION)
		if isSelectionStillSelected then
			Selection:Add({newInstance})
		end

		warn(LOG_MESSAGES.OperationEnded)
	else
		warn(LOG_MESSAGES.OperationCancelled)
	end
	
	tempContainer:Destroy()

	self:setState({
		isPublishing = false,
		isCancelling = false,
		canCancel = false,
	})
	self:onChangeSelection()
end

function ExampleComponent:onChangeSelection()
	if not self.props.Enabled then
		return
	end

	if self.state.isPublishing then
		return
	end

	local selected = Selection:Get()
	if #selected ~= 1 then
		self:setState({
			selectedInstance = Roact.None,
			packageLists = Roact.None,
			canPublish = false,
		})
		return
	end
	
	local selectedInstance = selected[1]
	local packageLink = getPackageLink(selectedInstance)
	if (not packageLink) or packageLink.Status == LOG_MESSAGES.UpToDateString then
		self:setState({
			selectedInstance = Roact.None,
			packageLists = Roact.None,
			canPublish = false,
		})
		return
	end
	
	local packageLists = scanForRelatedPackages(selectedInstance, game)
	
	table.sort(packageLists, sortByPackageDepth)

	for _, next in ipairs(packageLists) do
		next.PublishStatus = PublishStatus.Ready
	end
	
	self:setState({
		selectedInstance = selectedInstance,
		packageLists = packageLists,
		canPublish = true,
	})
end

function ExampleComponent:didMount()
	Selection.SelectionChanged:Connect(function()
		self:onChangeSelection()
	end)
end

function ExampleComponent:didUpdate(previousProps)
	if previousProps.Enabled == self.props.Enabled then return end
	if self.props.Enabled then
		self:onChangeSelection()
	end
end

local PackageBoxItem = Roact.PureComponent:extend("PackageBoxItem")
function PackageBoxItem:render()
	local props = self.props
	local packageAssetName = props.packageAssetName
	local publishStatus = props.publishStatus
	local hasEditPermission = props.hasEditPermission

	local color = (not hasEditPermission and Color3.fromRGB(120, 120, 120))
		or (publishStatus == PublishStatus.Ready and Color3.fromRGB(200, 200, 200))
		or (publishStatus == PublishStatus.Pending and Color3.fromRGB(255, 185, 0))
		or (publishStatus == PublishStatus.Updating and Color3.fromRGB(145, 50, 235))
		or (publishStatus == PublishStatus.Failed and Color3.fromRGB(225, 50, 25))
		or (publishStatus == PublishStatus.Success and Color3.fromRGB(25, 225, 40))
		or (publishStatus == PublishStatus.Skipped and Color3.fromRGB(150, 150, 150))

	return Roact.createElement("Frame", {
		BackgroundColor3 = color,
		Size = UDim2.new(0, BOX_SIZE, 0, BOX_SIZE),
		Position = UDim2.new(0, (BOX_SIZE+BOX_PADDING)*props.row, 0, (BOX_SIZE+BOX_PADDING)*props.column),
	}, {
		packageName = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Text = packageAssetName,
			TextWrapped = true,
			TextSize = 16,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0.5, 0, 0.5, 0),
		}),
	})
end

function ExampleComponent:render()
	-- local props: _Props = self.props -- uncomment to access props in the render function
	-- local style: _Style = props.Stylizer.ExampleComponent -- uncomment for access to styles in the render function

	local localization = self.props.Localization
	local style = self.props.Stylizer
	local theme = style.mainWindow
	
	local canPublish = self.state.canPublish
	local isPublishing = self.state.isPublishing
	local canCancel = self.state.canCancel
	local isCancelling = self.state.isCancelling

	local packageUIBoxes = {}
	local maxRows = 0
	local maxColumns = 0
	if canPublish or isPublishing or canCancel or isCancelling then
		local lastDepth
		local row = -1
		local column = 0
		for i, packageInfo in ipairs(self.state.packageLists) do
			if lastDepth ~= packageInfo.Depth then
				lastDepth = packageInfo.Depth
				row += 1
				maxColumns = math.max(maxColumns, column+1)
				column = 0
			else
				column += 1
			end
			packageUIBoxes[packageInfo.PackageId] = Roact.createElement(PackageBoxItem, {
				row = row,
				column = column,
				packageAssetName = packageInfo.PackageAssetName,
				publishStatus = packageInfo.PublishStatus,
				hasEditPermission = packageInfo.HasEditPermission,
			})
		end
		maxRows = math.max(0, row+1)
		maxColumns = math.max(maxColumns, column+1)
	end

	return Roact.createElement(Pane, {
		BackgroundColor = theme.backgroundColor,
	}, {
		mainDisplay = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0.5, 0),
			Size = UDim2.new(1, 0, 1, -BOTTOM_BAR_SIZE),
			Position = UDim2.new(0.5, 0, 0, 0),
		}, {
			scrollFrame = Roact.createElement("ScrollingFrame", {
				ScrollingDirection = Enum.ScrollingDirection.XY,
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(1, -8, 0.8, -8),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				CanvasSize = UDim2.new(0, BOX_SIZE*maxRows + BOX_PADDING*math.max(0, maxRows-1), 0, BOX_SIZE*maxColumns + BOX_PADDING*math.max(0, maxColumns-1)),
			}, packageUIBoxes),
		}),
		bottomBar = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0.5, 1),
			Size = UDim2.new(1, 0, 0, BOTTOM_BAR_SIZE),
			Position = UDim2.new(0.5, 0, 1, 0),
		}, {
			cancelButton = canCancel and Roact.createElement(Button, {
				Text = localization:getText("Action", "Cancel"),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(0.3, 0, 0.9, 0),
				Position = UDim2.new(1/6, 0, 0.5, 0),
				OnClick = function()
					self:setState({
						canCancel = false,
						isCancelling = true,
					})
				end,
			}),
			publishHierarchyButton = canPublish and Roact.createElement(Button, {
				Text = localization:getText("Action", "Publish"),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(0.3, 0, 0.9, 0),
				Position = UDim2.new(5/6, 0, 0.5, 0),
				OnClick = function()
					self:publishSelectedPackageHierarchy()
				end,
			}),
		}),
	})
end

ExampleComponent = withContext({
	-- New Plugin Setup: Use Analytics to handle plugin events
	Analytics = Analytics,
	-- New Plugin Setup: Use Localization for any raw string value displayed in the plugin
	Localization = Localization,
	Stylizer = Stylizer,
})(ExampleComponent)

return ExampleComponent
