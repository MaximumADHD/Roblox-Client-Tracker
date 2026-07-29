MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 LOADK                            R1 K0 ["FindReplaceAll"]
        4 SETTABLEKS                       R1 R0 K1 ["PLUGIN_NAME"]
        6 LOADN                            R1 10
        7 SETTABLEKS                       R1 R0 K2 ["MAX_SEARCH_HISTORY_QUERIES"]
        9 LOADN                            R1 32767
       10 SETTABLEKS                       R1 R0 K3 ["MAX_SEARCH_HISTORY_LENGTH"]
       12 LOADN                            R1 20000
       13 SETTABLEKS                       R1 R0 K4 ["MAX_RESULTS"]
       15 DUPTABLE                         R1 K20 [{["FindText"] = "", ["ReplaceText"] = "", ["MatchCase"] = False, ["MatchWholeWord"] = False, ["MatchRegExPattern"] = False, ["FindResults"], ["ReplaceResults"], ["CurrentSelectedResult"] = , ["IsSearching"] = False, ["IsReplacing"] = False, ["IsReplaced"] = False, ["IsReplaceAll"] = False}]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R1 K12 ["FindResults"]
       20 NEWTABLE                         R2 0 0
       22 SETTABLEKS                       R2 R1 K13 ["ReplaceResults"]
       24 SETTABLEKS                       R1 R0 K21 ["DEFAULT_FIND_REPLACE_STATE"]
       26 NEWTABLE                         R1 0 4
       28 LOADK                            R2 K22 ["ScriptIcon"]
       29 LOADK                            R3 K23 ["LocalScriptIcon"]
       30 LOADK                            R4 K24 ["ModuleScriptIcon"]
       31 LOADK                            R5 K25 ["AuroraScriptIcon"]
       32 SETLIST                          R1 R2 4 [1]
       34 SETTABLEKS                       R1 R0 K26 ["ScriptIconNames"]
       36 LOADN                            R1 1
       37 SETTABLEKS                       R1 R0 K27 ["EXTRA_NODES"]
       39 LOADN                            R1 200
       40 SETTABLEKS                       R1 R0 K28 ["BUFFER"]
       42 LOADN                            R1 3
       43 SETTABLEKS                       R1 R0 K29 ["SCROLL_RATE"]
       45 LOADN                            R1 400
       46 SETTABLEKS                       R1 R0 K30 ["MIN_VISIBLE_RESULTS"]
       48 LOADN                            R1 100
       49 SETTABLEKS                       R1 R0 K31 ["DEFAULT_PAGE_SIZE"]
       51 LOADN                            R1 5
       52 SETTABLEKS                       R1 R0 K32 ["TIMEOUT_MS"]
       54 LOADN                            R1 100
       55 SETTABLEKS                       R1 R0 K33 ["WINDOW_RADIUS"]
       57 LOADN                            R1 -1
       58 SETTABLEKS                       R1 R0 K34 ["nilId"]
       60 NEWTABLE                         R1 0 4
       62 LOADK                            R2 K35 ["Script"]
       63 LOADK                            R3 K36 ["LocalScript"]
       64 LOADK                            R4 K37 ["ModuleScript"]
       65 LOADK                            R5 K38 ["AuroraScript"]
       66 SETLIST                          R1 R2 4 [1]
       68 SETTABLEKS                       R1 R0 K22 ["ScriptIcon"]
       70 LOADN                            R1 150
       71 SETTABLEKS                       R1 R0 K39 ["INCREMENTAL_TEXT_SEARCH_DELAY_MS"]
       73 LOADK                            R1 K40 [0.1]
       74 SETTABLEKS                       R1 R0 K41 ["SEARCH_QUERY_DELAY_SECONDS"]
       76 LOADK                            R1 K40 [0.1]
       77 SETTABLEKS                       R1 R0 K42 ["FIND_NEXT_PREVIOUS_DELAY_SECONDS"]
       79 RETURN                           R0 1
