local Plugin = script.Parent.Parent.Parent
local AssetPreviewWrapper = require(Plugin.Src.Components.AssetPreviewWrapper)

local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local Roact = require(Plugin.Packages.Roact)

return function()
    it("should construct and destroy without any errors", function()
        local container = Instance.new("Folder")

        local element = Roact.createElement(MockServiceWrapper, {
			storeState = {
				AssetManagerReducer = {
					assetsTable = {
						assetPreviewData = {
							[1234] = {
								favorited = true,
							}
						}
					}
				}
			}
		}, {
            AssetPreviewWrapper = Roact.createElement(AssetPreviewWrapper, {
				AssetData = {
					id = 1234,
				},
				AssetPreviewData = {
					Asset = {
						Id = 1234,
						Type = "Model",
						TypeId = 10,
						Name = "Test Model Please Ignore",
						Description = "Lorem Ipsum",
						AssetGenres = {
							"All"
						},
						Created = "Today",
						Updated = "Yesterday",
					},
					Creator = {
						Type = 1,
						TypeId = 1,
                        TargetId = 9876543210,
                        Name = "helloworld",
					},
					rootTreeViewInstance = Instance.new("Model"),
				},
                OnAssetPreviewClose = function() end,
            })
        })

        local instance = Roact.mount(element, container)

        Roact.unmount(instance)
    end)
end