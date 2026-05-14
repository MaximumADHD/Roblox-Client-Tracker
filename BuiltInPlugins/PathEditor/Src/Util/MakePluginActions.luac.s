PROTO_0:
        0 DUPTABLE                         R3 K4 [{"id", "text", "statusTip", "allowBinding"}]
        1 SETTABLEKS                       R2 R3 K0 ["id"]
        3 LOADK                            R6 K5 ["ShortcutNames"]
        4 MOVE                             R7 R2
        5 NAMECALL                         R4 R1 K6 ["getText"]
        7 CALL                             R4 3 1
        8 SETTABLEKS                       R4 R3 K1 ["text"]
       10 LOADK                            R6 K7 ["ShortcutDescriptions"]
       11 MOVE                             R7 R2
       12 NAMECALL                         R4 R1 K6 ["getText"]
       14 CALL                             R4 3 1
       15 SETTABLEKS                       R4 R3 K2 ["statusTip"]
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K3 ["allowBinding"]
       20 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 GETUPVAL                         R4 0
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 DUPTABLE                         R8 K6 [{"id", "text", "statusTip", "allowBinding"}]
        8 SETTABLEKS                       R7 R8 K2 ["id"]
       10 LOADK                            R11 K7 ["ShortcutNames"]
       11 MOVE                             R12 R7
       12 NAMECALL                         R9 R1 K8 ["getText"]
       14 CALL                             R9 3 1
       15 SETTABLEKS                       R9 R8 K3 ["text"]
       17 LOADK                            R11 K9 ["ShortcutDescriptions"]
       18 MOVE                             R12 R7
       19 NAMECALL                         R9 R1 K8 ["getText"]
       21 CALL                             R9 3 1
       22 SETTABLEKS                       R9 R8 K4 ["statusTip"]
       24 LOADB                            R9 1
       25 SETTABLEKS                       R9 R8 K5 ["allowBinding"]
       27 SETTABLE                         R8 R2 R7
       28 FORGLOOP                         R3 2 [inext] ; [-22]
       30 GETTABLEKS                       R3 R2 K10 ["MoveTool"]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K11 ["Move"]
       35 SETTABLEKS                       R4 R3 K12 ["defaultShortcut"]
       37 GETTABLEKS                       R3 R2 K13 ["AddPointMode"]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K14 ["AddPoint"]
       42 SETTABLEKS                       R4 R3 K12 ["defaultShortcut"]
       44 GETTABLEKS                       R3 R2 K15 ["AddTangentMode"]
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R4 R4 K16 ["AddTangent"]
       49 SETTABLEKS                       R4 R3 K12 ["defaultShortcut"]
       51 GETTABLEKS                       R3 R2 K17 ["DoneEditing"]
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R4 R4 K18 ["Done"]
       56 SETTABLEKS                       R4 R3 K12 ["defaultShortcut"]
       58 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PathEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["getShortcuts"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 NEWTABLE                         R2 0 4
       19 LOADK                            R3 K9 ["DoneEditing"]
       20 LOADK                            R4 K10 ["AddPointMode"]
       21 LOADK                            R5 K11 ["AddTangentMode"]
       22 LOADK                            R6 K12 ["MoveTool"]
       23 SETLIST                          R2 R3 4 [1]
       25 DUPCLOSURE                       R3 K13 [PROTO_0]
       26 DUPCLOSURE                       R4 K14 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1
