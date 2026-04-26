PROTO_0:
        0 GETTABLEKS                       R6 R2 K0 ["SourceZone"]
        2 GETUPVAL                         R9 0
        3 GETTABLEKS                       R8 R9 K1 ["UiZone"]
        5 GETTABLEKS                       R7 R8 K2 ["Browser"]
        7 JUMPIFNOTEQ                      R6 R7 ; [+5]
        9 GETTABLEKS                       R6 R2 K3 ["DraggedItems"]
       11 LENGTH                           R5 R6
       12 JUMP                             ; [+1]
       13 LOADN                            R5 1
       14 LOADK                            R6 K4 [""]
       15 JUMPIFNOTEQKN                    R5 K5 [1] ; [+8]
       17 LOADK                            R9 K6 ["Dialogs"]
       18 LOADK                            R10 K7 ["MoveTitle"]
       19 NAMECALL                         R7 R1 K8 ["getText"]
       21 CALL                             R7 3 1
       22 MOVE                             R6 R7
       23 JUMP                             ; [+14]
       24 LOADK                            R9 K6 ["Dialogs"]
       25 LOADK                            R10 K9 ["MoveTitleMultiple"]
       26 DUPTABLE                         R11 K11 [{"count"}]
       27 FASTCALL1                        TOSTRING R5 ; [+3]
       28 MOVE                             R13 R5
       29 GETIMPORT                        R12 K13 [tostring]
       31 CALL                             R12 1 1
       32 SETTABLEKS                       R12 R11 K10 ["count"]
       34 NAMECALL                         R7 R1 K8 ["getText"]
       36 CALL                             R7 4 1
       37 MOVE                             R6 R7
       38 DUPTABLE                         R7 K17 [{"Title", "Size", "Type"}]
       39 SETTABLEKS                       R6 R7 K14 ["Title"]
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R8 R9 K18 ["MoveDialogSize"]
       44 SETTABLEKS                       R8 R7 K15 ["Size"]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R9 R10 K19 ["DialogType"]
       49 GETTABLEKS                       R8 R9 K20 ["Move"]
       51 SETTABLEKS                       R8 R7 K16 ["Type"]
       53 DUPTABLE                         R8 K24 [{"MoveInfo", "RootScope", "CurrentScope"}]
       54 SETTABLEKS                       R2 R8 K21 ["MoveInfo"]
       56 SETTABLEKS                       R3 R8 K22 ["RootScope"]
       58 SETTABLEKS                       R4 R8 K23 ["CurrentScope"]
       60 MOVE                             R11 R7
       61 MOVE                             R12 R8
       62 NAMECALL                         R9 R0 K25 ["setDialog"]
       64 CALL                             R9 3 0
       65 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Resources"]
       20 GETTABLEKS                       R3 R4 K9 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
