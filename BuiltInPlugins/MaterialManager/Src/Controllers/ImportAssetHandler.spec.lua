local Plugin = script.Parent.Parent.Parent

local ImportAssetHandler = require(Plugin.Src.Controllers.ImportAssetHandler)

local EMPTY_USERID = 0

return function()
	local function createAssetFile(id, name, contents)
		return {
			Name = name,
			GetTemporaryId = function()
				return id
			end,
			GetBinaryContents = function()
				return contents
			end,
		}
	end

	it("should be creatable", function()
		local imageUploader = {}
		local importAssetHandler = ImportAssetHandler.mock(imageUploader, EMPTY_USERID)
		expect(importAssetHandler).to.be.ok()
	end)

	it("should expect an ImageUploader instance", function()
		expect(function()
			ImportAssetHandler.mock(nil, EMPTY_USERID)
		end).to.throw()
	end)

	describe("handleAsset", function()
		it("should expect an AssetFile instance", function()
			local imageUploader = {}
			local importAssetHandler = ImportAssetHandler.mock(imageUploader, EMPTY_USERID)
			expect(function()
				importAssetHandler:handleAsset()
			end).to.throw()
		end)

		it("should expect temp id to be the right format", function()
			local imageUploader = {}
			local importAssetHandler = ImportAssetHandler.mock(imageUploader, EMPTY_USERID)

			expect(function()
				local assetFile = createAssetFile("foo")
				importAssetHandler:handleAsset(assetFile)
			end).to.throw()
		end)

		it("should pass the asset data to image uploader", function()
			local imageUploadCalled = false

			local imageUploader = {
				upload = function(self, tempId, name, description, contents)
					expect(tempId).to.equal("rbxtemp://1234")
					expect(name).to.equal("AssetNameHere")
					expect(description).to.be.ok()
					expect(contents).to.equal("SomeAssetContents")

					imageUploadCalled = true

					return {
						andThen = function() end,
					}
				end,
			}

			local importAssetHandler = ImportAssetHandler.mock(imageUploader, EMPTY_USERID)

			local assetFile = createAssetFile("rbxtemp://1234", "AssetNameHere", "SomeAssetContents")
			importAssetHandler:handleAsset(assetFile)

			expect(imageUploadCalled).to.equal(true)
		end)
	end)
end
