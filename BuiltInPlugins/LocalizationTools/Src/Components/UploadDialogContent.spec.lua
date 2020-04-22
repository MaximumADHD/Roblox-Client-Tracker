return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local UploadDialogContent = require(script.Parent.UploadDialogContent)
	local MockWrap = require(Plugin.Src.MockWrap)

	it("should render correctly", function()
		local props = {
			PatchInfo = {
				totalRows = 0,
				totalTranslations = 0,
				supportedLocales = 0,
				unsupportedLocales = 0,

				numAddedEntries = 0,
				numAddedTranslations = 0,
				numChangedTranslations = 0,
				includeDeletes = false,
				numRemovedEntries = 0,
				numRemovedTranslations = 0,
				newLanguages = "",
			},
			CancelCallback = function() end,
			OkCallback = function() end,
		}
		local container = Instance.new("Folder")
		local element = MockWrap(Roact.createElement(UploadDialogContent, props))
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end