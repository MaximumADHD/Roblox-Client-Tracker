PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 MINUS                            R3 R0
        4 LOADN                            R4 0
        5 LOADN                            R5 0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["getInfo"]
        4 CALL                             R2 0 1
        5 GETTABLEKS                       R2 R2 K1 ["type"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R5 0 1
       15 MOVE                             R6 R2
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K3 ["createElement"]
       22 GETUPVAL                         R5 3
       23 DUPTABLE                         R6 K9 [{["tag"] = "row flex-x-between align-x-left align-y-center auto-y", ["LayoutOrder"], ["ZIndex"], ["Size"]}]
       24 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       26 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       28 GETTABLEKS                       R7 R0 K7 ["ZIndex"]
       30 SETTABLEKS                       R7 R6 K7 ["ZIndex"]
       32 GETTABLEKS                       R7 R0 K10 ["labelWidthBinding"]
       34 DUPCLOSURE                       R9 K11 [PROTO_1]
       35 NAMECALL                         R7 R7 K12 ["map"]
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R6 K8 ["Size"]
       40 DUPTABLE                         R7 K15 [{"SpecificView", "SizeConstraint"}]
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R8 R8 K3 ["createElement"]
       44 MOVE                             R9 R3
       45 DUPTABLE                         R10 K21 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedEditingUtils", "labelPressedSignal"}]
       46 GETTABLEKS                       R11 R0 K0 ["getInfo"]
       48 SETTABLEKS                       R11 R10 K0 ["getInfo"]
       50 GETTABLEKS                       R11 R0 K16 ["beginEditingAsync"]
       52 SETTABLEKS                       R11 R10 K16 ["beginEditingAsync"]
       54 GETTABLEKS                       R11 R0 K17 ["setPart"]
       56 SETTABLEKS                       R11 R10 K17 ["setPart"]
       58 GETTABLEKS                       R11 R0 K18 ["finishEditing"]
       60 SETTABLEKS                       R11 R10 K18 ["finishEditing"]
       62 GETTABLEKS                       R11 R0 K19 ["specializedEditingUtils"]
       64 SETTABLEKS                       R11 R10 K19 ["specializedEditingUtils"]
       66 GETTABLEKS                       R11 R0 K20 ["labelPressedSignal"]
       68 SETTABLEKS                       R11 R10 K20 ["labelPressedSignal"]
       70 CALL                             R8 2 1
       71 SETTABLEKS                       R8 R7 K13 ["SpecificView"]
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K3 ["createElement"]
       76 LOADK                            R9 K22 ["UISizeConstraint"]
       77 DUPTABLE                         R10 K24 [{"MinSize"}]
       78 GETIMPORT                        R11 K27 [Vector2.new]
       80 LOADN                            R12 0
       81 GETTABLEKS                       R13 R1 K8 ["Size"]
       83 GETTABLEKS                       R13 R13 K28 ["Size_600"]
       85 CALL                             R11 2 1
       86 SETTABLEKS                       R11 R10 K23 ["MinSize"]
       88 CALL                             R8 2 1
       89 SETTABLEKS                       R8 R7 K14 ["SizeConstraint"]
       91 CALL                             R4 3 -1
       92 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PropertyEditorTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["PropertyTypes"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["React"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R7 R7 K11 ["getPropertyView"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R2 K12 ["View"]
       38 GETTABLEKS                       R8 R2 K13 ["Hooks"]
       40 GETTABLEKS                       R8 R8 K14 ["useTokens"]
       42 DUPCLOSURE                       R9 K15 [PROTO_2]
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R7
       47 GETTABLEKS                       R10 R5 K16 ["memo"]
       49 MOVE                             R11 R9
       50 CALL                             R10 1 -1
       51 RETURN                           R10 -1
