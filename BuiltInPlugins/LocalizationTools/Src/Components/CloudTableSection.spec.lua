return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local CloudTableSection = require(script.Parent.CloudTableSection)
	local MockWrap = require(Plugin.Src.MockWrap)

	it("should create and destroy without errors", function()
		local element = MockWrap(Roact.createElement(CloudTableSection))
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(CloudTableSection))
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render ready content", function()
		local storeState = {
			PluginMetadata = {
				DEPRECATED_AllLanguageCodes = {
					en = true,
					es = true,
				},
				AllLanguages = {},
				CanManageTranslation = true,
				CloudTableId = "some_id",
			},
			CloudTable = {
				IsBusy = true,
			}
		}
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(CloudTableSection), { StoreState = storeState })
		local instance = Roact.mount(element, container)
		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		expect(main.SectionLabel).to.be.ok()
		expect(main.Content.Download).to.be.ok()
		expect(main.Content.Update).to.be.ok()
		expect(main.Content.Collapsible).to.be.ok()
		expect(main.Content.LinkTextFrame).to.be.ok()
		Roact.unmount(instance)
	end)

	it("should render not ready content", function()
		local storeState = {
			PluginMetadata = {
				DEPRECATED_AllLanguageCodes = {
					en = true,
					es = true,
				},
				AllLanguages = {},
				CanManageTranslation = false,
				CloudTableId = "",
			},
			CloudTable = {
				IsBusy = true,
			}
		}
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(CloudTableSection), { StoreState = storeState })
		local instance = Roact.mount(element, container)
		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		expect(main.SectionLabel).to.be.ok()
		expect(main.Content.PublishPlaceMessage).to.be.ok()
		Roact.unmount(instance)
	end)
end