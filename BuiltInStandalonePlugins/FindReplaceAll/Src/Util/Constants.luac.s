MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagFindReplaceAllCacheSize"]
       18 GETTABLEKS                       R3 R1 K10 ["getFFlagFindReplaceAllEnableCache"]
       20 NEWTABLE                         R4 32 0
       22 LOADK                            R5 K2 ["FindReplaceAll"]
       23 SETTABLEKS                       R5 R4 K11 ["PLUGIN_NAME"]
       25 LOADN                            R5 10
       26 SETTABLEKS                       R5 R4 K12 ["MAX_SEARCH_HISTORY_QUERIES"]
       28 LOADN                            R5 32767
       29 SETTABLEKS                       R5 R4 K13 ["MAX_SEARCH_HISTORY_LENGTH"]
       31 LOADN                            R5 20000
       32 SETTABLEKS                       R5 R4 K14 ["MAX_RESULTS"]
       34 DUPTABLE                         R5 K30 [{["FindText"] = "", ["ReplaceText"] = "", ["MatchCase"] = False, ["MatchWholeWord"] = False, ["MatchRegExPattern"] = False, ["FindResults"], ["ReplaceResults"], ["CurrentSelectedResult"] = , ["IsSearching"] = False, ["IsReplacing"] = False, ["IsReplaced"] = False, ["IsReplaceAll"] = False}]
       35 NEWTABLE                         R6 0 0
       37 SETTABLEKS                       R6 R5 K22 ["FindResults"]
       39 NEWTABLE                         R6 0 0
       41 SETTABLEKS                       R6 R5 K23 ["ReplaceResults"]
       43 SETTABLEKS                       R5 R4 K31 ["DEFAULT_FIND_REPLACE_STATE"]
       45 NEWTABLE                         R5 0 4
       47 LOADK                            R6 K32 ["ScriptIcon"]
       48 LOADK                            R7 K33 ["LocalScriptIcon"]
       49 LOADK                            R8 K34 ["ModuleScriptIcon"]
       50 LOADK                            R9 K35 ["AuroraScriptIcon"]
       51 SETLIST                          R5 R6 4 [1]
       53 SETTABLEKS                       R5 R4 K36 ["ScriptIconNames"]
       55 LOADN                            R5 1
       56 SETTABLEKS                       R5 R4 K37 ["EXTRA_NODES"]
       58 LOADN                            R5 200
       59 SETTABLEKS                       R5 R4 K38 ["BUFFER"]
       61 LOADN                            R5 3
       62 SETTABLEKS                       R5 R4 K39 ["SCROLL_RATE"]
       64 LOADN                            R5 400
       65 SETTABLEKS                       R5 R4 K40 ["MIN_VISIBLE_RESULTS"]
       67 LOADN                            R5 100
       68 SETTABLEKS                       R5 R4 K41 ["DEFAULT_PAGE_SIZE"]
       70 LOADN                            R5 5
       71 SETTABLEKS                       R5 R4 K42 ["TIMEOUT_MS"]
       73 MOVE                             R5 R3
       74 CALL                             R5 0 1
       75 JUMPIFNOT                        R5 ; [+5]
       76 MOVE                             R5 R2
       77 CALL                             R5 0 1
       78 SETTABLEKS                       R5 R4 K43 ["WINDOW_RADIUS"]
       80 JUMP                             ; [+3]
       81 LOADN                            R5 250
       82 SETTABLEKS                       R5 R4 K43 ["WINDOW_RADIUS"]
       84 LOADN                            R5 -1
       85 SETTABLEKS                       R5 R4 K44 ["nilId"]
       87 NEWTABLE                         R5 0 4
       89 LOADK                            R6 K45 ["Script"]
       90 LOADK                            R7 K46 ["LocalScript"]
       91 LOADK                            R8 K47 ["ModuleScript"]
       92 LOADK                            R9 K48 ["AuroraScript"]
       93 SETLIST                          R5 R6 4 [1]
       95 SETTABLEKS                       R5 R4 K32 ["ScriptIcon"]
       97 LOADN                            R5 150
       98 SETTABLEKS                       R5 R4 K49 ["INCREMENTAL_TEXT_SEARCH_DELAY_MS"]
      100 LOADK                            R5 K50 [0.1]
      101 SETTABLEKS                       R5 R4 K51 ["SEARCH_QUERY_DELAY_SECONDS"]
      103 LOADK                            R5 K50 [0.1]
      104 SETTABLEKS                       R5 R4 K52 ["FIND_NEXT_PREVIOUS_DELAY_SECONDS"]
      106 RETURN                           R4 1
