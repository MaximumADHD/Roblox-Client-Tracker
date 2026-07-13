local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = ReplicatedStorage:FindFirstChild("Packages")
local FoundationImages = require(Packages.FoundationImages)
local FoundationCloudAssets = require(script.Parent.Parent)

local Images = FoundationImages.Images
local CloudAssets = FoundationCloudAssets.Assets

local JestGlobals = require(Packages._Index.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local describe = JestGlobals.describe

describe("Collisions check", function()
	it("should be no naming collisions between foundation-images and cloud-assets", function()
		for imageName, _ in Images do
			assert(
				CloudAssets[imageName] == nil,
				`{imageName} is repeated across FoundationCloudAssets and FoundationImages. Please change the name!`
			)
			expect(CloudAssets[imageName]).toBeNil()
		end
	end)
end)
