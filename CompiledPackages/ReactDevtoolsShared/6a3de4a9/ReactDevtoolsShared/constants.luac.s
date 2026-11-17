MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 32 0
       14 GETTABLEKS                       R3 R1 K6 ["__DEBUG__"]
       16 SETTABLEKS                       R3 R2 K6 ["__DEBUG__"]
       18 LOADN                            R3 1
       19 SETTABLEKS                       R3 R2 K7 ["TREE_OPERATION_ADD"]
       21 LOADN                            R3 2
       22 SETTABLEKS                       R3 R2 K8 ["TREE_OPERATION_REMOVE"]
       24 LOADN                            R3 3
       25 SETTABLEKS                       R3 R2 K9 ["TREE_OPERATION_REORDER_CHILDREN"]
       27 LOADN                            R3 4
       28 SETTABLEKS                       R3 R2 K10 ["TREE_OPERATION_UPDATE_TREE_BASE_DURATION"]
       30 LOADK                            R3 K11 ["React::DevTools::componentFilters"]
       31 SETTABLEKS                       R3 R2 K12 ["LOCAL_STORAGE_FILTER_PREFERENCES_KEY"]
       33 LOADK                            R3 K13 ["React::DevTools::lastSelection"]
       34 SETTABLEKS                       R3 R2 K14 ["SESSION_STORAGE_LAST_SELECTION_KEY"]
       36 LOADK                            R3 K15 ["React::DevTools::recordChangeDescriptions"]
       37 SETTABLEKS                       R3 R2 K16 ["SESSION_STORAGE_RECORD_CHANGE_DESCRIPTIONS_KEY"]
       39 LOADK                            R3 K17 ["React::DevTools::reloadAndProfile"]
       40 SETTABLEKS                       R3 R2 K18 ["SESSION_STORAGE_RELOAD_AND_PROFILE_KEY"]
       42 LOADK                            R3 K19 ["React::DevTools::breakOnConsoleErrors"]
       43 SETTABLEKS                       R3 R2 K20 ["LOCAL_STORAGE_SHOULD_BREAK_ON_CONSOLE_ERRORS"]
       45 LOADK                            R3 K21 ["React::DevTools::appendComponentStack"]
       46 SETTABLEKS                       R3 R2 K22 ["LOCAL_STORAGE_SHOULD_PATCH_CONSOLE_KEY"]
       48 LOADK                            R3 K23 ["React::DevTools::traceUpdatesEnabled"]
       49 SETTABLEKS                       R3 R2 K24 ["LOCAL_STORAGE_TRACE_UPDATES_ENABLED_KEY"]
       51 LOADN                            R3 4
       52 SETTABLEKS                       R3 R2 K25 ["PROFILER_EXPORT_VERSION"]
       54 LOADK                            R3 K26 ["https://github.com/facebook/react/blob/master/packages/react-devtools/CHANGELOG.md"]
       55 SETTABLEKS                       R3 R2 K27 ["CHANGE_LOG_URL"]
       57 LOADK                            R3 K28 ["https://reactjs.org/blog/2019/08/15/new-react-devtools.html#how-do-i-get-the-old-version-back"]
       58 SETTABLEKS                       R3 R2 K29 ["UNSUPPORTED_VERSION_URL"]
       60 LOADNIL                          R3
       61 LOADNIL                          R4
       62 LOADN                            R3 15
       63 LOADN                            R4 10
       64 SETTABLEKS                       R3 R2 K30 ["COMFORTABLE_LINE_HEIGHT"]
       66 SETTABLEKS                       R4 R2 K31 ["COMPACT_LINE_HEIGHT"]
       68 RETURN                           R2 1
