local isUserIdInGradualRollout = require(script.Parent.isUserIdInGradualRollout)

return function()
    describe("isUserIdInGradualRollout", function()
        it("validates inputs", function()
            expect(function()
                isUserIdInGradualRollout("1")
            end).to.throw()

            expect(function()
                isUserIdInGradualRollout(1.5)
            end).to.throw()

            expect(function()
                isUserIdInGradualRollout(1, "100")
            end).to.throw()

            expect(function()
                isUserIdInGradualRollout(1, -1)
            end).to.throw()

            expect(function()
                isUserIdInGradualRollout(1, 1000)
            end).to.throw()
        end)
        
        it("returns correctly", function()
            assert(isUserIdInGradualRollout(1, 0) == false)
            assert(isUserIdInGradualRollout(110, 9) == false)

            assert(isUserIdInGradualRollout(0, 1) == true)
            assert(isUserIdInGradualRollout(100, 1) == true)
            assert(isUserIdInGradualRollout(199, 100) == true)
        end)
    end)
end