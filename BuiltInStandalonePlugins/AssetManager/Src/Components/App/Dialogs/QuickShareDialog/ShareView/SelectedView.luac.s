PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K5 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-xsmall auto-xy padding-large"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["createElement"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K1 ["View"]
       17 DUPTABLE                         R6 K8 [{["LayoutOrder"] = 1, ["tag"] = "col auto-xy"}]
       18 DUPTABLE                         R7 K11 [{"Text", "Subtext"}]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K0 ["createElement"]
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R9 R9 K9 ["Text"]
       25 DUPTABLE                         R10 K13 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "gap-none auto-xy text-title-medium"}]
       26 GETTABLEKS                       R11 R0 K14 ["PlaceholderText"]
       28 SETTABLEKS                       R11 R10 K9 ["Text"]
       30 CALL                             R8 2 1
       31 SETTABLEKS                       R8 R7 K9 ["Text"]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K0 ["createElement"]
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K9 ["Text"]
       39 DUPTABLE                         R10 K17 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "gap-none auto-xy text-body-medium"}]
       40 GETTABLEKS                       R11 R0 K18 ["PlaceholderSubtext"]
       42 SETTABLEKS                       R11 R10 K9 ["Text"]
       44 CALL                             R8 2 1
       45 SETTABLEKS                       R8 R7 K10 ["Subtext"]
       47 CALL                             R4 3 -1
       48 CALL                             R1 -1 -1
       49 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["ScrollView"]
        8 DUPTABLE                         R4 K7 [{["LayoutOrder"], ["tag"] = "fill size-full-0 stroke-emphasis radius-medium", ["scroll"]}]
        9 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       13 DUPTABLE                         R5 K11 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       14 GETIMPORT                        R6 K15 [Enum.AutomaticSize.Y]
       16 SETTABLEKS                       R6 R5 K8 ["AutomaticCanvasSize"]
       18 GETIMPORT                        R6 K18 [UDim2.new]
       20 LOADN                            R7 0
       21 LOADN                            R8 0
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K9 ["CanvasSize"]
       25 GETIMPORT                        R6 K19 [Enum.ScrollingDirection.Y]
       27 SETTABLEKS                       R6 R5 K10 ["ScrollingDirection"]
       29 SETTABLEKS                       R5 R4 K6 ["scroll"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K20 ["Children"]
       34 GETTABLEKS                       R6 R6 K21 ["count"]
       36 MOVE                             R7 R1
       37 CALL                             R6 1 1
       38 JUMPIFEQKN                       R6 K22 [0] ; [+11]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K1 ["createElement"]
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R6 R6 K23 ["View"]
       46 DUPTABLE                         R7 K25 [{["tag"] = "col size-full-0 auto-y"}]
       47 MOVE                             R8 R1
       48 CALL                             R5 3 1
       49 JUMP                             ; [+14]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K1 ["createElement"]
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R6 R6 K23 ["View"]
       56 DUPTABLE                         R7 K27 [{["tag"] = "col align-y-center size-full"}]
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K1 ["createElement"]
       60 GETUPVAL                         R9 2
       61 MOVE                             R10 R0
       62 CALL                             R8 2 -1
       63 CALL                             R5 -1 1
       64 CALL                             R2 3 -1
       65 RETURN                           R2 -1

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
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 DUPCLOSURE                       R4 K10 [PROTO_1]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1
