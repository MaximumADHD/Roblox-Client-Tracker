PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K4 [{"LayoutOrder", "tag"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 LOADK                            R4 K5 ["row auto-xy gap-xsmall align-y-center padding-large"]
       12 SETTABLEKS                       R4 R3 K3 ["tag"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["createElement"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K1 ["View"]
       20 DUPTABLE                         R6 K4 [{"LayoutOrder", "tag"}]
       21 LOADN                            R7 1
       22 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       24 LOADK                            R7 K6 ["col auto-xy"]
       25 SETTABLEKS                       R7 R6 K3 ["tag"]
       27 DUPTABLE                         R7 K9 [{"Text", "Subtext"}]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K0 ["createElement"]
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K7 ["Text"]
       34 DUPTABLE                         R10 K10 [{"LayoutOrder", "Text", "tag"}]
       35 LOADN                            R11 1
       36 SETTABLEKS                       R11 R10 K2 ["LayoutOrder"]
       38 GETTABLEKS                       R11 R0 K11 ["PlaceholderText"]
       40 SETTABLEKS                       R11 R10 K7 ["Text"]
       42 LOADK                            R11 K12 ["auto-xy gap-none text-title-medium"]
       43 SETTABLEKS                       R11 R10 K3 ["tag"]
       45 CALL                             R8 2 1
       46 SETTABLEKS                       R8 R7 K7 ["Text"]
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R8 R8 K0 ["createElement"]
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R9 R9 K7 ["Text"]
       54 DUPTABLE                         R10 K10 [{"LayoutOrder", "Text", "tag"}]
       55 LOADN                            R11 2
       56 SETTABLEKS                       R11 R10 K2 ["LayoutOrder"]
       58 GETTABLEKS                       R11 R0 K13 ["PlaceholderSubtext"]
       60 SETTABLEKS                       R11 R10 K7 ["Text"]
       62 LOADK                            R11 K14 ["auto-xy gap-none text-body-medium"]
       63 SETTABLEKS                       R11 R10 K3 ["tag"]
       65 CALL                             R8 2 1
       66 SETTABLEKS                       R8 R7 K8 ["Subtext"]
       68 CALL                             R4 3 -1
       69 CALL                             R1 -1 -1
       70 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["ScrollView"]
        8 DUPTABLE                         R4 K6 [{"LayoutOrder", "tag", "scroll"}]
        9 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       13 LOADK                            R5 K7 ["size-full-0 fill radius-medium stroke-emphasis"]
       14 SETTABLEKS                       R5 R4 K4 ["tag"]
       16 DUPTABLE                         R5 K11 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       17 GETIMPORT                        R6 K15 [Enum.AutomaticSize.Y]
       19 SETTABLEKS                       R6 R5 K8 ["AutomaticCanvasSize"]
       21 GETIMPORT                        R6 K18 [UDim2.new]
       23 LOADN                            R7 0
       24 LOADN                            R8 0
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K9 ["CanvasSize"]
       28 GETIMPORT                        R6 K19 [Enum.ScrollingDirection.Y]
       30 SETTABLEKS                       R6 R5 K10 ["ScrollingDirection"]
       32 SETTABLEKS                       R5 R4 K5 ["scroll"]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K20 ["Children"]
       37 GETTABLEKS                       R6 R6 K21 ["count"]
       39 MOVE                             R7 R1
       40 CALL                             R6 1 1
       41 JUMPIFEQKN                       R6 K22 [0] ; [+14]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K1 ["createElement"]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K23 ["View"]
       49 DUPTABLE                         R7 K24 [{"tag"}]
       50 LOADK                            R8 K25 ["col size-full-0 auto-y"]
       51 SETTABLEKS                       R8 R7 K4 ["tag"]
       53 MOVE                             R8 R1
       54 CALL                             R5 3 1
       55 JUMP                             ; [+17]
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K1 ["createElement"]
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R6 R6 K23 ["View"]
       62 DUPTABLE                         R7 K24 [{"tag"}]
       63 LOADK                            R8 K26 ["size-full col align-y-center"]
       64 SETTABLEKS                       R8 R7 K4 ["tag"]
       66 GETUPVAL                         R8 0
       67 GETTABLEKS                       R8 R8 K1 ["createElement"]
       69 GETUPVAL                         R9 2
       70 MOVE                             R10 R0
       71 CALL                             R8 2 -1
       72 CALL                             R5 -1 1
       73 CALL                             R2 3 -1
       74 RETURN                           R2 -1

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
