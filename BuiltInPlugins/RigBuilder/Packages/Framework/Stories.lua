local strict = require(script.Parent.Util.strict)

local FFlagToolboxStorybook = game:GetFastFlag("ToolboxStorybook")

return strict({
    -- This is lazily required because it sets RefactorFlags.THEME_REFACTOR which is not always desirable for all plugins that use DevFramework
    getStoryMiddleware = FFlagToolboxStorybook and function()
        return require(script.StoryMiddleware)
    end or nil,
})
