return function()
    local searchFilterPredicate = require(script.Parent.searchFilterPredicate)

    describe("should filter based on string match", function()
        local stringA = "Abc"
        local stringB = "Bcd"
        local stringC = "Cde"

        it("should filter all entries that don't include an 'e' ", function()
            expect(searchFilterPredicate("e", stringA)).to.equal(false)
            expect(searchFilterPredicate("e", stringB)).to.equal(false)
            expect(searchFilterPredicate("e", stringC)).to.equal(true)
        end)

        it("should filter all entries that don't include a 'b' ", function()
            expect(searchFilterPredicate("b", stringA)).to.equal(true)
            expect(searchFilterPredicate("b", stringB)).to.equal(true)
            expect(searchFilterPredicate("b", stringC)).to.equal(false)
        end)

        it("should filter all entries that don't include 'abc' ", function()
            expect(searchFilterPredicate("abc", stringA)).to.equal(true)
            expect(searchFilterPredicate("abc", stringB)).to.equal(false)
            expect(searchFilterPredicate("abc", stringC)).to.equal(false)
        end)
    end)
end
