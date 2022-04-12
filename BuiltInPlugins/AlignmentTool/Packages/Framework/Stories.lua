local strict = require(script.Parent.Util.strict)

return strict({
    -- This is lazily required because it sets RefactorFlags.THEME_REFACTOR which is not always desirable for all plugins that use DevFramework
    getStoryMiddleware = function()
        return require(script.StoryMiddleware)
    end,
})
