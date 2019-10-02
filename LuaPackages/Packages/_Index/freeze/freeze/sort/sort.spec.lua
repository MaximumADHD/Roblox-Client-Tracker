return function()
    local sort = require(script.Parent.sort)
    it("Should be an table with two functions", function()
        expect(sort.default).to.be.a("function")
        expect(sort.reverse).to.be.a("function")
        local less = 1
        local more = 2
        expect(sort.default(less, more)).to.equal(true)
        expect(sort.default(more, less)).to.equal(false)
        expect(sort.reverse(less, more)).to.equal(false)
        expect(sort.reverse(more, less)).to.equal(true)
    end)

    it("Should should work well with table.sort", function()
        local values = {4, 3, 5, 2, 1}
        table.sort(values, sort.default)
        for i = 1, #values do
            expect(values[i]).to.equal(i)
        end
        table.sort(values, sort.reverse)
        for i = 1, #values do
            expect(values[i]).to.equal(5 - i + 1)
        end
    end)
end