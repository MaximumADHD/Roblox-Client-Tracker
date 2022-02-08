game:DefineFastFlag("AnimationClipEditorDeduplicatePackages", false)
game:DefineFastFlag("AnimationClipEditorStylizer", false)

local Plugin = script.Parent.Parent
local RefactorFlags = require(Plugin.Packages.Framework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = game:GetFastFlag("AnimationClipEditorStylizer")
return nil
