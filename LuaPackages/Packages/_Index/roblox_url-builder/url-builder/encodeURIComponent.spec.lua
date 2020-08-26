return function()
    local encodeURIComponent = require(script.Parent.encodeURIComponent)

    it('should not filter alphanumerics', function()
        local str = 'abcXYZ1230'
        expect(encodeURIComponent(str)).to.equal(str)
    end)

    it('should not filter allowed special characters', function()
        local str = 'abcABC123-_.!~*\'()'
        expect(encodeURIComponent(str)).to.equal(str)
    end)

    it('should filter other non-alphanumeric characters', function()
        local str = 'hello world&result=true'
        expect(encodeURIComponent(str)).to.equal('hello%20world%26result%3Dtrue')
    end)
end