return function()
    local InGameMenu = script.Parent.Parent
    local SetLanguageSelectionDropdown = require(InGameMenu.Actions.SetLanguageSelectionDropdown)
    local languageSelectionReducer = require(script.Parent.languageSelectionReducer)

    describe("LanguageSelectionReducerDefaultState", function()
        it("should be disabled by default, with a default index of 1", function()
            local defaultState = languageSelectionReducer(nil, {})
            expect(defaultState.enabled).to.equal(false)
            expect(defaultState.selectedIndex).to.equal(1)
        end)
    end)

    describe("SetLanguageSelectionDropdown", function()
        it("should set enabled", function()
            local oldState = languageSelectionReducer(nil, {})
            local newState = languageSelectionReducer(oldState, SetLanguageSelectionDropdown(nil, nil, true))
            expect(oldState).to.never.equal(newState)
            expect(newState.enabled).to.equal(true)
        end)

        it("should set selection index", function()
            local oldState = languageSelectionReducer(nil, {})
            local newState = languageSelectionReducer(oldState, SetLanguageSelectionDropdown(nil, 2, nil))
            expect(oldState).to.never.equal(newState)
            expect(newState.selectedIndex).to.equal(2)
        end)

        it("should set dropdown selectionMapping", function()
            local testMapping = {}
            for i=1, 10 do
                testMapping[i] = {
                    languageName = "Language" .. tostring(i),
                    localeCode = "LocaleCode" .. tostring(i),
                    id = i + 12,
                }
            end
            local oldState = languageSelectionReducer(nil, {})
            local newState = languageSelectionReducer(oldState, SetLanguageSelectionDropdown(testMapping, nil, nil))
            expect(oldState).to.never.equal(newState)
            expect(newState.selectedIndex).to.equal(1)
            expect(newState.selectionMapping).to.be.a("table")
            for i=1, 10 do
                expect(newState.selectionMapping[i].languageName).to.equal("Language" .. tostring(i))
                expect(newState.selectionMapping[i].localeCode).to.equal("LocaleCode" .. tostring(i))
                expect(newState.selectionMapping[i].id).to.equal(i + 12)
            end
        end)
    end)
end