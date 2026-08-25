PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 CALL                             R3 0 1
        3 JUMPIF                           R3 ; [+5]
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K0 ["getScopeAnalyticsContext"]
        7 CALL                             R2 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 NAMECALL                         R0 R0 K1 ["launchBulkImport"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K2 ["sendUploadEvent"]
       16 NEWTABLE                         R1 0 0
       18 DUPTABLE                         R2 K7 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       19 GETUPVAL                         R3 4
       20 SETTABLEKS                       R3 R2 K3 ["ExplorerController"]
       22 GETUPVAL                         R3 5
       23 SETTABLEKS                       R3 R2 K4 ["LayoutController"]
       25 GETUPVAL                         R3 2
       26 SETTABLEKS                       R3 R2 K5 ["ItemsController"]
       28 GETUPVAL                         R3 6
       29 SETTABLEKS                       R3 R2 K6 ["SearchController"]
       31 CALL                             R0 2 0
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K0 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R6 R6 K0 ["use"]
       23 CALL                             R6 0 1
       24 GETUPVAL                         R7 6
       25 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          VAL R3
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R6
       35 NEWTABLE                         R9 0 5
       37 MOVE                             R10 R2
       38 MOVE                             R11 R3
       39 MOVE                             R12 R4
       40 MOVE                             R13 R5
       41 MOVE                             R14 R6
       42 SETLIST                          R9 R10 5 [1]
       44 CALL                             R7 2 1
       45 GETUPVAL                         R8 6
       46 GETTABLEKS                       R8 R8 K2 ["createElement"]
       48 GETUPVAL                         R9 9
       49 GETTABLEKS                       R9 R9 K3 ["Button"]
       51 DUPTABLE                         R10 K9 [{"LayoutOrder", "text", "onActivated", "variant", "size"}]
       52 GETTABLEKS                       R11 R0 K4 ["LayoutOrder"]
       54 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       56 LOADK                            R13 K10 ["Tooltip"]
       57 LOADK                            R14 K11 ["BulkImport"]
       58 NAMECALL                         R11 R1 K12 ["getText"]
       60 CALL                             R11 3 1
       61 SETTABLEKS                       R11 R10 K5 ["text"]
       63 SETTABLEKS                       R7 R10 K6 ["onActivated"]
       65 GETUPVAL                         R11 9
       66 GETTABLEKS                       R11 R11 K13 ["Enums"]
       68 GETTABLEKS                       R11 R11 K14 ["ButtonVariant"]
       70 GETTABLEKS                       R11 R11 K15 ["Standard"]
       72 SETTABLEKS                       R11 R10 K7 ["variant"]
       74 GETUPVAL                         R11 9
       75 GETTABLEKS                       R11 R11 K13 ["Enums"]
       77 GETTABLEKS                       R11 R11 K16 ["InputSize"]
       79 GETTABLEKS                       R11 R11 K17 ["XSmall"]
       81 SETTABLEKS                       R11 R10 K8 ["size"]
       83 CALL                             R8 2 -1
       84 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Analytics"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K12 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Controllers"]
       45 GETTABLEKS                       R8 R8 K15 ["ItemsController"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K12 ["Src"]
       52 GETTABLEKS                       R9 R9 K14 ["Controllers"]
       54 GETTABLEKS                       R9 R9 K16 ["ExplorerController"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K12 ["Src"]
       61 GETTABLEKS                       R10 R10 K14 ["Controllers"]
       63 GETTABLEKS                       R10 R10 K17 ["LayoutController"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K12 ["Src"]
       70 GETTABLEKS                       R11 R11 K14 ["Controllers"]
       72 GETTABLEKS                       R11 R11 K18 ["PluginController"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Src"]
       79 GETTABLEKS                       R12 R12 K14 ["Controllers"]
       81 GETTABLEKS                       R12 R12 K19 ["SearchController"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K12 ["Src"]
       88 GETTABLEKS                       R13 R13 K20 ["Flags"]
       90 GETTABLEKS                       R13 R13 K21 ["getFFlagAmrDisableShardedEvent"]
       92 CALL                             R12 1 1
       93 DUPCLOSURE                       R13 K22 [PROTO_1]
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R2
      104 RETURN                           R13 1
