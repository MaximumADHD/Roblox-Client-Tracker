return function()
    local http = require(script.Parent.Parent)
    local cache = require(script.Parent.Parent.src.cache)

    describe("update_settings", function()
        it("should update the settings table", function()
            cache.update_settings("paric.xyz", {})

            local len = 0
            for _, __ in pairs(cache.settings) do
                len += 1
            end

            expect(len >= 1).to.be.ok()
        end)

        it("should include parent domain when wildcard subdomain given", function()
            cache.update_settings("*.twitter.com", {})

            expect(cache.settings["twitter.com"]).to.be.ok()
        end)
    end)

    describe("should_cache", function()
        it("should match paric.xyz/anything to paric.xyz", function()
            expect(cache.should_cache("paric.xyz/anything")).to.be.ok()
        end)

        it("should match api.twitter.com to *.twitter.com", function()
            expect(cache.should_cache("api.twitter.com")).to.be.ok()
        end)

        it("should match twitter.com to *.twitter.com", function()
            expect(cache.should_cache("twitter.com")).to.be.ok()
        end)
    end)

    describe("request", function()
        it("should access the second request from the local cache", function()
            http.cache.cache_locally("github.com")

            http.get("https://github.com/")
            
            local resp = http.get("https://github.com")

            expect(resp.from_cache).to.equal(true)
        end)

        it("should respect expire times", function()
            http.cache.update_settings("scratch.mit.edu", {expires=5})
            
            http.get("https://scratch.mit.edu")

            local resp0 = http.get("https://scratch.mit.edu")
            expect(resp0.from_cache).to.equal(true)

            wait(5)

            local resp1 = http.get("https://scratch.mit.edu")
            expect(resp1.from_cache).to.equal(false)
        end)
    end)
end