-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined
game:DefineFastFlag("PublishPlaceAsDeduplicatePackages", false)
game:DefineFastFlag("PublishPlaceAsWithContext", false)
game:DefineFastFlag("PublishPlaceAsUseFrameworkPromise", false)
game:DefineFastFlag("FixPublishAsWhenQueryFails", false)

if game:GetFastFlag("PublishPlaceAsDeduplicatePackages") and not game:GetFastFlag("PublishPlaceAsUseFrameworkPromise") then
	error("FFlagPublishPlaceAsDeduplicatePackages requires FFlagPublishPlaceAsUseFrameworkPromise to be true")
end

return nil
