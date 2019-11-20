local Plugin = script.Parent.Parent.Parent
local Roact =require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local LanguageSection = require(Plugin.Src.Components.LanguageSection)

return function()
	local store = {
		Languages = {
			languagesTable = {
				["en-us"] = {
					localeId = "en-us",
					languageCode = "en",
					displayText = "English",
				}
			},
			languagesList = {
				{
					localeId = "en-us",
					languageCode = "en",
					displayText = "English",
				}
			}
		}
	}

    it("should create and destroy without errors", function()
        local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {
			storeState = store
        }, {
            LanguageSection = Roact.createElement(LanguageSection)
        })

        local instance = Roact.mount(mockServiceWrapper)
        Roact.unmount(instance)
    end)
end