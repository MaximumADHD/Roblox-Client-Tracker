-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined
-- In most circumstances flags should be initialized to false

-- Sometimes flags will have to be defined in DeveloperToolsFlags.h if they're used
-- in multiple plugins

--ex (remove spaces)
-- game : DefineFastFlag( "BootcampPluginMyJiraTicket" , false)

return nil
