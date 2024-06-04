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
	title.Font = Enum.Font.GothamSemibold
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

	local StorybookFolder = getDeepFolder({ "Packages", "DeveloperStorybook" }, root)
	local SrcFolder = Main.Src:Clone()
	SrcFolder.Name = "Src"
	SrcFolder.Parent = StorybookFolder

	local SrcPackages = getDeepFolder({ "Packages" }, StorybookFolder)
	createPackageLink("Cryo", SrcPackages)
	createPackageLink("Framework", SrcPackages)
	createPackageLink("MaterialFramework", SrcPackages)
	createPackageLink("ReactIs", SrcPackages)
	createPackageLink("Roact", SrcPackages)
	createPackageLink("React", SrcPackages)
	createPackageLink("ReactRoblox", SrcPackages)
	createPackageLink("RoactRodux", SrcPackages)
	createPackageLink("Rodux", SrcPackages)
	createPackageLink("TestLoader", SrcPackages)
	createPackageLink("ViewportToolingFramework", SrcPackages)

	-- Disable StorybookLocal - will be enabled by runner
	SrcFolder.Util.StorybookLocal.Enabled = false

	root.Parent = parent
	return root
end

return installStorybookEmbed
