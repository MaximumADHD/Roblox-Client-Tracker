-- Written by Kip Turner, Copyright Roblox 2015

local GuiService = game:GetService('GuiService')
local CoreGui = Game:GetService("CoreGui")

local RobloxGui = CoreGui:FindFirstChild("RobloxGui")
local Modules = RobloxGui:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Utility = require(ShellModules:FindFirstChild('Utility'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))

local GuiRoot = ScreenManager:GetGuiRoot()

local AssetManager = {}


local TrackedAssets = {}
local WeakTrackedAssets = {}

-- Set weak-keys table
setmetatable(WeakTrackedAssets, {__mode = 'k' })

local function GetScreenSize()
	return GuiRoot.AbsoluteSize
end

local function GetImageSuffixByScreenSize(screenSize)
	if screenSize.Y <= 720 then
		return '@720'
	else
		return '@1080'
	end
end

local function UpdateAsset(asset, metadata)
	if asset then
		local newSize = GetScreenSize()
		local newScreenSuffix = GetImageSuffixByScreenSize(newSize)
		local imagePath = metadata['path'] .. newScreenSuffix .. metadata['extension']
		asset.Image = imagePath
		if metadata['sizes'] then
			if newScreenSuffix == '@720' and metadata['sizes']['720'] then
				asset.Size = metadata['sizes']['720']
			elseif newScreenSuffix == '@1080' and metadata['sizes']['1080'] then
				asset.Size = metadata['sizes']['1080']
			end
		end
	end
end

local function OnAncestryChanged(descendant, descendantMetatable)
	descendantMetatable = descendantMetatable or WeakTrackedAssets[descendant] or TrackedAssets[descendant]
	if descendantMetatable then
		if descendant.Parent == nil then
			WeakTrackedAssets[descendant] = descendantMetatable
			TrackedAssets[descendant] = nil
		else
			TrackedAssets[descendant] = descendantMetatable
			WeakTrackedAssets[descendant] = nil
			UpdateAsset(descendant, descendantMetatable)
		end
	end
end

function AssetManager.CreateShadow(zIndex)
	return Utility.Create'ImageLabel'
	{
		Name = 'Shadow';
		Image = 'rbxasset://textures/ui/Shell/Buttons/Generic9ScaleShadow.png';
		Size = UDim2.new(1,3,1,3);
		Position = UDim2.new(0,0,0,0);
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(10,10,28,28);
		BackgroundTransparency = 1;
		ZIndex = zIndex or 1;
	}
end

local LastScreenSuffix = GetImageSuffixByScreenSize(GetScreenSize())
GuiRoot:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
	local newSize = GetScreenSize()
	local newScreenSuffix = GetImageSuffixByScreenSize(newSize)
	if newScreenSuffix ~= LastScreenSuffix then
		for asset, metadata in pairs(TrackedAssets) do
			UpdateAsset(asset, metadata)
		end
		LastScreenSuffix = newScreenSuffix
	end
end)


GuiRoot.DescendantAdded:connect(function(descendant)
	if WeakTrackedAssets[descendant] or TrackedAssets[descendant] then
		-- need to spawn because we haven't got the new parent yet
		spawn(function()
			if descendant then
				OnAncestryChanged(descendant)
			end
		end)
	end
end)

GuiRoot.DescendantRemoving:connect(function(descendant)
	if WeakTrackedAssets[descendant] or TrackedAssets[descendant] then
		-- need to spawn because we haven't got the new parent yet
		spawn(function()
			if descendant then
				OnAncestryChanged(descendant)
			end
		end)
	end
end)


return AssetManager
