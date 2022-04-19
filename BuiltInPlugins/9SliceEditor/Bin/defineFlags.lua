-- TODO DEVTOOLS-4481: This should be refactored when DEVTOOLS-4481 is fixed.
-- Lua flag definitions should go in this file so that they can be used by both main and runTests
-- If the flags are defined in main, then it's possible for the tests run first
-- And then error when trying to use flags that aren't yet defined
-- In most circumstances flags should be initialized to false
game:DefineFastFlag("9SliceEditorAllowImageReplacement", false)
game:DefineFastFlag("9SliceEditorEnableAnalytics", false)
game:DefineFastInt("9SliceEditorAnalyticsReportingHundrethsPercent", 0)
game:DefineFastFlag("9SliceEditorNewDraggers", false)
game:DefineFastFlag("9SliceEditorFixAnalyticsReportingThrottling", false)
game:DefineFastFlag("9SliceEditorSaveSliceOffsets", false)
game:DefineFastFlag("9SliceEditorDontRestoreOnDMLoad", false)
game:DefineFastFlag("9SliceEditorRespectImageRectSize", false)
game:DefineFastFlag("9SliceEditorResizableImagePreviewWindow", false)
game:DefineFastFlag("9SliceEditorLeftAlignOffsetTextInputs", false)

return nil
