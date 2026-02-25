MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Bin"]
       11 GETTABLEKS                       R3 R4 K7 ["Common"]
       13 GETTABLEKS                       R2 R3 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagFindReplaceAllCacheSize"]
       18 GETTABLEKS                       R3 R1 K10 ["getFFlagFindReplaceAllEnableCache"]
       20 NEWTABLE                         R4 32 0
       22 LOADK                            R5 K2 ["FindReplaceAll"]
       23 SETTABLEKS                       R5 R4 K11 ["PLUGIN_NAME"]
       25 LOADN                            R5 10
       26 SETTABLEKS                       R5 R4 K12 ["MAX_SEARCH_HISTORY_QUERIES"]
       28 LOADN                            R5 255
       29 SETTABLEKS                       R5 R4 K13 ["MAX_SEARCH_HISTORY_LENGTH"]
       31 LOADN                            R5 32
       32 SETTABLEKS                       R5 R4 K14 ["MAX_RESULTS"]
       34 DUPTABLE                         R5 K27 [{"FindText", "ReplaceText", "MatchCase", "MatchWholeWord", "MatchRegExPattern", "FindResults", "ReplaceResults", "CurrentSelectedResult", "IsSearching", "IsReplacing", "IsReplaced", "IsReplaceAll"}]
       35 LOADK                            R6 K28 [""]
       36 SETTABLEKS                       R6 R5 K15 ["FindText"]
       38 LOADK                            R6 K28 [""]
       39 SETTABLEKS                       R6 R5 K16 ["ReplaceText"]
       41 LOADB                            R6 0
       42 SETTABLEKS                       R6 R5 K17 ["MatchCase"]
       44 LOADB                            R6 0
       45 SETTABLEKS                       R6 R5 K18 ["MatchWholeWord"]
       47 LOADB                            R6 0
       48 SETTABLEKS                       R6 R5 K19 ["MatchRegExPattern"]
       50 NEWTABLE                         R6 0 0
       52 SETTABLEKS                       R6 R5 K20 ["FindResults"]
       54 NEWTABLE                         R6 0 0
       56 SETTABLEKS                       R6 R5 K21 ["ReplaceResults"]
       58 LOADNIL                          R6
       59 SETTABLEKS                       R6 R5 K22 ["CurrentSelectedResult"]
       61 LOADB                            R6 0
       62 SETTABLEKS                       R6 R5 K23 ["IsSearching"]
       64 LOADB                            R6 0
       65 SETTABLEKS                       R6 R5 K24 ["IsReplacing"]
       67 LOADB                            R6 0
       68 SETTABLEKS                       R6 R5 K25 ["IsReplaced"]
       70 LOADB                            R6 0
       71 SETTABLEKS                       R6 R5 K26 ["IsReplaceAll"]
       73 SETTABLEKS                       R5 R4 K29 ["DEFAULT_FIND_REPLACE_STATE"]
       75 NEWTABLE                         R5 0 4
       77 LOADK                            R6 K30 ["ScriptIcon"]
       78 LOADK                            R7 K31 ["LocalScriptIcon"]
       79 LOADK                            R8 K32 ["ModuleScriptIcon"]
       80 LOADK                            R9 K33 ["AuroraScriptIcon"]
       81 SETLIST                          R5 R6 4 [1]
       83 SETTABLEKS                       R5 R4 K34 ["ScriptIconNames"]
       85 LOADN                            R5 1
       86 SETTABLEKS                       R5 R4 K35 ["EXTRA_NODES"]
       88 LOADN                            R5 200
       89 SETTABLEKS                       R5 R4 K36 ["BUFFER"]
       91 LOADN                            R5 3
       92 SETTABLEKS                       R5 R4 K37 ["SCROLL_RATE"]
       94 LOADN                            R5 144
       95 SETTABLEKS                       R5 R4 K38 ["MIN_VISIBLE_RESULTS"]
       97 LOADN                            R5 100
       98 SETTABLEKS                       R5 R4 K39 ["DEFAULT_PAGE_SIZE"]
      100 LOADN                            R5 5
      101 SETTABLEKS                       R5 R4 K40 ["TIMEOUT_MS"]
      103 MOVE                             R5 R3
      104 CALL                             R5 0 1
      105 JUMPIFNOT                        R5 ; [+5]
      106 MOVE                             R5 R2
      107 CALL                             R5 0 1
      108 SETTABLEKS                       R5 R4 K41 ["WINDOW_RADIUS"]
      110 JUMP                             ; [+3]
      111 LOADN                            R5 250
      112 SETTABLEKS                       R5 R4 K41 ["WINDOW_RADIUS"]
      114 LOADN                            R5 255
      115 SETTABLEKS                       R5 R4 K42 ["nilId"]
      117 NEWTABLE                         R5 0 4
      119 LOADK                            R6 K43 ["Script"]
      120 LOADK                            R7 K44 ["LocalScript"]
      121 LOADK                            R8 K45 ["ModuleScript"]
      122 LOADK                            R9 K46 ["AuroraScript"]
      123 SETLIST                          R5 R6 4 [1]
      125 SETTABLEKS                       R5 R4 K30 ["ScriptIcon"]
      127 LOADN                            R5 150
      128 SETTABLEKS                       R5 R4 K47 ["INCREMENTAL_TEXT_SEARCH_DELAY_MS"]
      130 LOADK                            R5 K48 [0.1]
      131 SETTABLEKS                       R5 R4 K49 ["SEARCH_QUERY_DELAY_SECONDS"]
      133 LOADK                            R5 K48 [0.1]
      134 SETTABLEKS                       R5 R4 K50 ["FIND_NEXT_PREVIOUS_DELAY_SECONDS"]
      136 RETURN                           R4 1
