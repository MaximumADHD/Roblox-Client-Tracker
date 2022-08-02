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

local function getPackageLink(instance)
	if not instance then
		return
	end
	return instance:FindFirstChildOfClass("PackageLink")
end

local function getName(inst) return inst.Name end
local function isRestricted(inst) return not pcall(getName, inst) end

-- Traverses the DataModel to find all instances of a specific packageId
local function getAllPackageInstancesById(instances, currentInstance, packageId, versionId)
	if isRestricted(currentInstance) then
		return
	end

	local packageLink = getPackageLink(currentInstance)
	if packageLink then
		if packageLink.PackageId == packageId then
			if versionId == nil or versionId == packageLink.VersionNumber then
				table.insert(instances, currentInstance)
			end
		end
	end

	for _, child in ipairs(currentInstance:GetChildren()) do
		getAllPackageInstancesById(instances, child, packageId, versionId)
	end
end

-- Given a package instance, returns a copy of the package at its latest version
local function getLatestVersion(instance)
	if not getPackageLink(instance) then
		return
	end

	local success, response = pcall(function()
		local clonedInstance = instance:Clone()
		clonedInstance.Parent = PackageUIService
		return PackageUIService:SetPackageVersion(clonedInstance, 0)
	end)
	if not (success and response) then
		error(response)
		return
	end
	
	return response
end

local function undoPackageChanges(instance)
	local packageLink = getPackageLink(instance)
	if not packageLink then
		return
	end

	local success, response = pcall(function()
		return PackageUIService:SetPackageVersion(instance, packageLink.VersionNumber)
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

-- Returns a number representing how nested a package is within other packages
local function getPackageInstanceDepth(instance)
	local parentInstance = getParentPackage(instance)
	if not parentInstance then
		return 0
	end
	return 1 + getPackageInstanceDepth(parentInstance)
end

local function sortByPackageDepth(a, b)
	return a.Depth < b.Depth or a.PackageId > b.PackageId
end

local function scanForRelatedPackages(selectedInstance, root, tempContainer)
	assert(selectedInstance)
	assert(root)
	local selectedPackageLink = getPackageLink(selectedInstance)
	assert(selectedPackageLink)

	local scannedIds = {[selectedPackageLink.PackageId] = true}
	local packagesToGet = {selectedInstance}
	local packageLists = {} -- { [1] = {DATA}, [2] = {DATA2}, ... }

	while #packagesToGet > 0 do
		local packageInstance = table.remove(packagesToGet, #packagesToGet)
		local packageId = getPackageLink(packageInstance).PackageId

		local latestVersion
		if packageInstance == selectedInstance then
			latestVersion = packageInstance:Clone()
		else
			latestVersion = getLatestVersion(packageInstance)
		end
		if not latestVersion then
			error("There was an issue getting the latest version of a package.")
		end
		latestVersion.Parent = tempContainer

		local maxDepth = -1

		local allCopies = {}
		getAllPackageInstancesById(allCopies, root, packageId)
		for _, aCopy in ipairs(allCopies) do
			-- Get the depth of this package instance in package hierarchy
			local thisDepth = getPackageInstanceDepth(aCopy)
			if maxDepth < thisDepth then
				maxDepth = thisDepth
			end

			-- Check parent package, and see if we need to scan it too
			local parent = getParentPackage(aCopy)
			if not parent then
				continue
			end

			local parentPackageLink = getPackageLink(parent)
			if scannedIds[parentPackageLink.PackageId] then
				continue
			end
			
			scannedIds[parentPackageLink.PackageId] = true
			table.insert(packagesToGet, parent)
		end

		table.insert(packageLists, {
			PackageId = packageId,
			LatestVersion = latestVersion,
			Depth = maxDepth,
			Changed = (packageInstance == selectedInstance),
		})
	end

	return packageLists
end

local function runScopedMassUpdate(packageLists, packageId, versionId, newVersionId)
	for _, next in ipairs(packageLists) do
		local allCopies = {}
		getAllPackageInstancesById(allCopies, next.LatestVersion, packageId, versionId)
		for _, aCopy in ipairs(allCopies) do
			local aPackageLink = getPackageLink(aCopy)
			if not aPackageLink then
				continue
			end
			
			local success, response
			repeat
				success, response = pcall(function()
					return PackageUIService:SetPackageVersion(aCopy, newVersionId)
				end)
				if not (success and response) then
					warn(response)
					task.wait(0.2)
				else
					next.Changed = true
				end
			until success
		end
	end
end

local function doPackagePublishing(packageLists)
	while #packageLists > 0 do
		local next = table.remove(packageLists, #packageLists)
		if not next.Changed then
			continue
		end

		-- TODO: Once PackageOverhaulPhaseOne is released, mod check is being removed so we don't need to wait for Status property to update here
		local statusUpdateClone = next.LatestVersion:Clone()
		statusUpdateClone.Archivable = false
		statusUpdateClone.Parent = next.LatestVersion.Parent
		local clonePackageLink = getPackageLink(statusUpdateClone)
		local thisPackageLink = getPackageLink(next.LatestVersion)
		if thisPackageLink.Status == "Up To Date" then
			thisPackageLink:GetPropertyChangedSignal("Status"):Wait()
		end

		local numRetryAttempts = 0
		local success, error
		repeat
			success, error = pcall(function()
				PackageUIService:PublishPackage(next.LatestVersion)
			end)
			if success then
				warn("Package published! {"..next.PackageId.."}")
				
				local newVersionId = getPackageLink(next.LatestVersion).VersionNumber
				if not string.find(clonePackageLink.Status, "New Version Available") then
					-- Version Number needs some time to update on C++ end
					clonePackageLink:GetPropertyChangedSignal("Status"):Wait()
				end
				runScopedMassUpdate(packageLists, next.PackageId, newVersionId - 1, newVersionId)
			else
				warn(error)
				
				if numRetryAttempts >= 5 then
					warn("Failed to publish package. Ending process.")
					return
				else
					warn("Failed to publish package. Retrying... {"..next.PackageId.."}")
					task.wait( 2^(math.min(numRetryAttempts, 2)) )
					numRetryAttempts += 1
				end
			end
		until success
	end
end

local function publishSelectedPackage()
	local selected = Selection:Get()
	if #selected ~= 1 then
		return
	end
	
	print("Publishing selected package...")
	local success, error = pcall(function()
		PackageUIService:PublishPackage(selected[1])
	end)
	if not success then
		warn(error)
		return
	end

	print("Published package!")
end

local function incrementSelectedPackageVersion(amount)
	local selected = Selection:Get()
	if #selected ~= 1 then
		return
	end

	local packageInstance = selected[1]
	local packageLink = packageInstance:FindFirstChildOfClass("PackageLink")
	if not packageLink then
		return
	end
	
	print("Changing selected package version...")
	local newVersion = packageLink.VersionNumber + amount
	local success, error = pcall(function()
		packageInstance = PackageUIService:SetPackageVersion(packageInstance, newVersion)
	end)
	if not success then
		warn(error)
		return
	end

	print("Package Version changed to "..getPackageLink(packageInstance).VersionNumber.."! Package located at: "..packageInstance:GetFullName())
	Selection:Set({packageInstance})
end

local function publishSelectedPackageHierarchy()
	local selected = Selection:Get()
	if #selected ~= 1 then
		return
	end
	
	local selectedInstance = selected[1]
	if not getPackageLink(selectedInstance) then
		return
	end

	local tempContainer = Instance.new("Folder")
	tempContainer.Name = "NPP_Cloned_Instances"
	tempContainer.Archivable = false
	tempContainer.Parent = game:GetService("ServerStorage")

	local packageLists = scanForRelatedPackages(selectedInstance, game, tempContainer)

	table.sort(packageLists, sortByPackageDepth)

	doPackagePublishing(packageLists)

	undoPackageChanges(selectedInstance)

	tempContainer:Destroy()
	warn("Hierarchal Publish Operation completed!")
end

function ExampleComponent:render()
	-- local props: _Props = self.props -- uncomment to access props in the render function
	-- local style: _Style = props.Stylizer.ExampleComponent -- uncomment for access to styles in the render function

	return Roact.createElement(Pane, {
	}, {
		publishButton = Roact.createElement(Button, {
			Text = "Publish",
			AnchorPoint = Vector2.new(0.5, 0),
			Size = UDim2.new(1, 0, 0.25, 0),
			Position = UDim2.new(0.5, 0, 0, 0),
			OnClick = function()
				publishSelectedPackage()
			end,
		}),
		incrementButton = Roact.createElement(Button, {
			Text = "Increment Version",
			AnchorPoint = Vector2.new(1, 1),
			Size = UDim2.new(0.5, 0, 0.25, 0),
			Position = UDim2.new(1, 0, 0.5, 0),
			OnClick = function()
				incrementSelectedPackageVersion(1)
			end,
		}),
		decrementButton = Roact.createElement(Button, {
			Text = "Decrement Version",
			AnchorPoint = Vector2.new(0, 1),
			Size = UDim2.new(0.5, 0, 0.25, 0),
			Position = UDim2.new(0, 0, 0.5, 0),
			OnClick = function()
				incrementSelectedPackageVersion(-1)
			end,
		}),
		publishHierarchyButton = Roact.createElement(Button, {
			Text = "Publish Hierarchy",
			AnchorPoint = Vector2.new(0.5, 1),
			Size = UDim2.new(1, 0, 0.5, 0),
			Position = UDim2.new(0.5, 0, 1, 0),
			OnClick = function()
				publishSelectedPackageHierarchy()
			end,
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
