return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local AvatarItemCard = require(script.Parent.AvatarItemCard)

	describe("AvatarItemCard", function()
		it("should create and destroy without errors when taking a Head as input", function()
			local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				AvatarItemCard = Roact.createElement(AvatarItemCard, {
					asset = Instance.new("MeshPart"),
					isHeadAsset = true,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should create and destroy without errors when taking a table as input", function()
			local R15ArtistIntent = Instance.new("Folder")
			R15ArtistIntent.Name = "R15ArtistIntent"
			local LowerTorso = Instance.new("MeshPart")
			LowerTorso.Name = "LowerTorso"
			LowerTorso.Parent = R15ArtistIntent
			local UpperTorso = Instance.new("MeshPart")
			UpperTorso.Parent = R15ArtistIntent
			UpperTorso.Name = "UpperTorso"

			local partsTable = {
				[1] = R15ArtistIntent,
			}

			local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				AvatarItemCard = Roact.createElement(AvatarItemCard, {
					asset = partsTable,
					isHeadAsset = false,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
