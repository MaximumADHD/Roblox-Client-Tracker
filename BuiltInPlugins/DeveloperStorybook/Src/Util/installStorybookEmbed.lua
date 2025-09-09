--[[
	The installStorybookEmbed utility installs the Storybook plugin into the place under a single
	script under the parent provided. This script can be exported as a model and added to any place
	to make it act as a Storybook when the place is run.
]]
local Main = script.Parent.Parent.Parent
local Framework = require(Main.Packages.Framework)

local getDeepFolder = Framework.Util.getDeepFolder

local StarterGui = game:GetService("StarterGui")

-- Form links in the Rotriever-style so scripts can refer to a single library's source
local function createPackageLink(name: string, parent: Instance)
	local packageLink = Instance.new("ModuleScript")
	packageLink.Name = name
	packageLink.Source = ([[local Packages = script.Parent.Parent.Parent
return require(Packages.%s)
]]):format(name)
	packageLink.Parent = parent
end

-- Add a splash to make it evident that storybook has been installed in the place
local function installGui()
	local oldGui = StarterGui:FindFirstChild("StorybookSplash")
	if oldGui then
		oldGui:Destroy()
	end

	local gui = Instance.new("ScreenGui")
	gui.Name = "StorybookSplash"
	gui.IgnoreGuiInset = true
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	gui.Parent = StarterGui

	local frame = Instance.new("Frame")
	frame.BackgroundTransparency = 0.5
	frame.BorderSizePixel = 0
	frame.BackgroundColor3 = Color3.new(1, 1, 1)
	frame.Size = UDim2.fromScale(1, 1)
	frame.Parent = gui

	local title = Instance.new("TextLabel")
	title.Text = "Storybook Embed"
	title.Parent = frame
	title.Name = "Title"
	title.Font = Enum.Font.GothamMedium
	title.BackgroundTransparency = 1
	title.TextSize = 50
	title.Position = UDim2.new(0.5, 0, 0.5, -40)
	title.AutomaticSize = Enum.AutomaticSize.XY
	title.AnchorPoint = Vector2.new(0.5, 1)

	local subtitle = Instance.new("TextLabel")
	subtitle.Text =
		"Hit Play to view Storybook in this place.\nPlease avoid publishing this place as storybook is currently internal."
	subtitle.Parent = frame
	subtitle.Name = "Subtitle"
	subtitle.Font = Enum.Font.Gotham
	subtitle.BackgroundTransparency = 1
	subtitle.TextSize = 32
	subtitle.AutomaticSize = Enum.AutomaticSize.XY
	subtitle.Position = UDim2.new(0.5, 0, 0.5, 40)
	subtitle.AnchorPoint = Vector2.new(0.5, 0)
end

-- Recusrsively gathers all the deps needed for the root package and and its children
local function gatherDependencies(pluginIndex: any, packageName: string, allDependencies: {})
	for _, module in pluginIndex[packageName]:GetChildren() do
		if not module:IsA("ModuleScript") then
			continue
		end

		if module.Name == packageName then
			continue
		end
		local packageSource = module.Source

		local libraryName = packageSource:match('PackageIndex%[%"([^"]+)%"%]')
		if libraryName and pluginIndex:FindFirstChild(libraryName) then
			allDependencies[libraryName] = true
			gatherDependencies(pluginIndex, libraryName, allDependencies)
		end
	end
end

local function installWithAllDependencies(root: Instance, pluginPackages: Folder, packageName: string)
	local packages = getDeepFolder({ "Packages" }, root)
	local pluginIndex = pluginPackages:FindFirstChild("_Index")
	local embeddedLibrary
	if packages:FindFirstChild(packageName) then
		-- We still want to check the deps, because for unknown reason DF doesn't install all of them correctly.
		-- Namely Rodux-31ab8d40-4.0.0-rc.0 is missing
	else
		print("Locating", packageName)
		local redirect = pluginPackages:FindFirstChild(packageName):Clone()
		redirect.Parent = packages
		local libraryName = redirect.Source:match('PackageIndex%[%"([^"]+)%"%]')
		print("Linking", packageName, "to", libraryName)
		local library = pluginIndex:FindFirstChild(libraryName)
		local index = getDeepFolder({ "_Index" }, packages)
		embeddedLibrary = library:Clone()
		embeddedLibrary.Parent = index
	end
	local dependencies = {}
	gatherDependencies(pluginIndex, packageName, dependencies)

	for dependency, _ in dependencies do
		local dependencyPackage = pluginIndex:FindFirstChild(dependency)
		if dependencyPackage then
			local index = getDeepFolder({ "_Index" }, packages)
			if index:FindFirstChild(dependency) then
				continue
			end
			local clonedLibrary = dependencyPackage:Clone()
			clonedLibrary.Parent = index
		else
			warn("Library not found for embedding:", packageName)
		end
	end

	return embeddedLibrary
end

local function installStorybookEmbed(parent: Instance)
	local oldRoot = parent:FindFirstChild("RunStorybook")
	if oldRoot then
		oldRoot:Destroy()
	end

	local root = Instance.new("Script")
	root.Name = "RunStorybook"
	root.Source = Main.Src.Util.RunStorybook.Source

	installGui()
	Framework.Util.Embed.install(root, Main.Packages)
	Framework.Util.Embed.installPeerDependencies(root, Main.Packages)
	-- There is a weird conflict in a peer dependency installation, so I have to install this one separately,
	-- though it's already handled by the calls above
	installWithAllDependencies(root, Main.Packages, "RoactRodux")
	installWithAllDependencies(root, Main.Packages, "Markdown")
	local foundation = installWithAllDependencies(root, Main.Packages, "Foundation")
	if foundation then
		foundation.Foundation.Utility.Flags.Source = foundation.Foundation.Utility.Flags.Source:gsub(
			[[SafeFlags.createGetFFlag%(%s*"([^"]+)"[^)]*%)%(%)]],
			Framework.Util.Embed.rewriteFlag
		)
	end

	for _, source in pairs(root.Packages._Index.TestLoader:GetDescendants()) do
		if source:IsA("ModuleScript") then
			source.Source = source.Source:gsub(
				'local Plugin = Main:FindFirstAncestorWhichIsA%(%"Plugin%"%):FindFirstChildWhichIsA%(%"Folder%"%)',
				'local Plugin = Main:FindFirstAncestor("Packages").Parent'
			)
		end
	end

	local StorybookFolder = getDeepFolder({ "Packages", "DeveloperStorybook" }, root)
	local SrcFolder = Main.Src:Clone()
	SrcFolder.Name = "Src"
	SrcFolder.Parent = StorybookFolder

	local SrcPackages = getDeepFolder({ "Packages" }, StorybookFolder)
	createPackageLink("Cryo", SrcPackages)
	createPackageLink("Dash", SrcPackages)
	createPackageLink("Framework", SrcPackages)
	createPackageLink("MaterialFramework", SrcPackages)
	createPackageLink("ReactIs", SrcPackages)
	createPackageLink("Roact", SrcPackages)
	createPackageLink("React", SrcPackages)
	createPackageLink("ReactRoblox", SrcPackages)
	createPackageLink("Foundation", SrcPackages)
	createPackageLink("RoactRodux", SrcPackages)
	createPackageLink("Rodux", SrcPackages)
	createPackageLink("TestLoader", SrcPackages)
	createPackageLink("StudioFoundation", SrcPackages)
	createPackageLink("ViewportToolingFramework", SrcPackages)
	createPackageLink("Markdown", SrcPackages)

	-- Disable StorybookLocal - will be enabled by runner
	SrcFolder.Util.StorybookLocal.Enabled = false

	root.Parent = parent
	return root
end

return installStorybookEmbed
