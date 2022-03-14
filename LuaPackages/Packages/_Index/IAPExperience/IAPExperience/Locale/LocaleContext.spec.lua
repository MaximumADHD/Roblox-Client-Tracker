local LocalizationRoot = script.Parent
local IAPExperienceRoot = LocalizationRoot.Parent

local Packages = IAPExperienceRoot.Parent
local Roact = require(Packages.Roact)

return function()
    describe("Locale Context", function()
        it("should pass context from LocaleProvider to LocaleConsumer", function()
            local Provider = require(LocalizationRoot.LocaleProvider)
            local Consumer = require(LocalizationRoot.LocaleConsumer)
            local getLocaleContext = require(LocalizationRoot.getLocaleContext)

            local localeString = "pt-br"
            local expectedLocale = getLocaleContext(localeString)
            local capturedLocale

            local providerElement = Roact.createElement(Provider, {
                locale = localeString,
            }, {
                Frame = Roact.createElement("Frame", {}, {
                    Consumer = Roact.createElement(Consumer, {
                        render = function(consumedLocale)
                            capturedLocale = consumedLocale
                            return nil
                        end
                    })
                })
            })

            local providerInstance = Roact.mount(providerElement)
            wait()

            expect(capturedLocale.locale).to.be.ok()
            expect(capturedLocale.locale).to.equal(expectedLocale.locale)
            expect(capturedLocale.translations).to.be.ok()
            expect(capturedLocale.translations).to.equal(capturedLocale.translations)
            expect(capturedLocale.fallbackTranslations).to.be.ok()
            expect(capturedLocale.fallbackTranslations).to.equal(capturedLocale.fallbackTranslations)

            Roact.unmount(providerInstance)
        end)
    end)
end
