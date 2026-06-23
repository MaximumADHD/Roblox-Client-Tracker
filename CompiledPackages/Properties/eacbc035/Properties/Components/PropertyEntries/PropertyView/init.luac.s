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
       23 DUPTABLE                         R6 K8 [{"tag", "LayoutOrder", "ZIndex", "Size"}]
       24 LOADK                            R7 K9 ["auto-y row flex-x-between align-y-center align-x-left"]
       25 SETTABLEKS                       R7 R6 K4 ["tag"]
       27 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       29 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       31 GETTABLEKS                       R7 R0 K6 ["ZIndex"]
       33 SETTABLEKS                       R7 R6 K6 ["ZIndex"]
       35 GETTABLEKS                       R7 R0 K10 ["labelWidthBinding"]
       37 DUPCLOSURE                       R9 K11 [PROTO_1]
       38 NAMECALL                         R7 R7 K12 ["map"]
       40 CALL                             R7 2 1
       41 SETTABLEKS                       R7 R6 K7 ["Size"]
       43 DUPTABLE                         R7 K15 [{"SpecificView", "SizeConstraint"}]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K3 ["createElement"]
       47 MOVE                             R9 R3
       48 DUPTABLE                         R10 K21 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedGuestUtils", "labelPressedSignal"}]
       49 GETTABLEKS                       R11 R0 K0 ["getInfo"]
       51 SETTABLEKS                       R11 R10 K0 ["getInfo"]
       53 GETTABLEKS                       R11 R0 K16 ["beginEditingAsync"]
       55 SETTABLEKS                       R11 R10 K16 ["beginEditingAsync"]
       57 GETTABLEKS                       R11 R0 K17 ["setPart"]
       59 SETTABLEKS                       R11 R10 K17 ["setPart"]
       61 GETTABLEKS                       R11 R0 K18 ["finishEditing"]
       63 SETTABLEKS                       R11 R10 K18 ["finishEditing"]
       65 GETTABLEKS                       R11 R0 K19 ["specializedGuestUtils"]
       67 SETTABLEKS                       R11 R10 K19 ["specializedGuestUtils"]
       69 GETTABLEKS                       R11 R0 K20 ["labelPressedSignal"]
       71 SETTABLEKS                       R11 R10 K20 ["labelPressedSignal"]
       73 CALL                             R8 2 1
       74 SETTABLEKS                       R8 R7 K13 ["SpecificView"]
       76 GETUPVAL                         R8 1
       77 GETTABLEKS                       R8 R8 K3 ["createElement"]
       79 LOADK                            R9 K22 ["UISizeConstraint"]
       80 DUPTABLE                         R10 K24 [{"MinSize"}]
       81 GETIMPORT                        R11 K27 [Vector2.new]
       83 LOADN                            R12 0
       84 GETTABLEKS                       R13 R1 K7 ["Size"]
       86 GETTABLEKS                       R13 R13 K28 ["Size_600"]
       88 CALL                             R11 2 1
       89 SETTABLEKS                       R11 R10 K23 ["MinSize"]
       91 CALL                             R8 2 1
       92 SETTABLEKS                       R8 R7 K14 ["SizeConstraint"]
       94 CALL                             R4 3 -1
       95 RETURN                           R4 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["PropertyTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K9 ["PropertyViewTypes"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R1 K10 ["React"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETIMPORT                        R7 K1 [script]
       35 GETTABLEKS                       R7 R7 K11 ["getPropertyView"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R2 K12 ["View"]
       40 GETTABLEKS                       R8 R2 K13 ["Hooks"]
       42 GETTABLEKS                       R8 R8 K14 ["useTokens"]
       44 DUPCLOSURE                       R9 K15 [PROTO_2]
       45 CAPTURE                          VAL R8
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 GETTABLEKS                       R10 R5 K16 ["memo"]
       51 MOVE                             R11 R9
       52 CALL                             R10 1 -1
       53 RETURN                           R10 -1
