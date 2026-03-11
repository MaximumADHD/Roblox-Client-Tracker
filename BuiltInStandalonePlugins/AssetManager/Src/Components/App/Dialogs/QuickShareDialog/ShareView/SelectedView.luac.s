PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"LayoutOrder", "tag"}]
        5 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
        9 LOADK                            R4 K4 ["row auto-xy gap-xsmall align-y-center padding-large"]
       10 SETTABLEKS                       R4 R3 K2 ["tag"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["createElement"]
       15 GETUPVAL                         R5 1
       16 DUPTABLE                         R6 K3 [{"LayoutOrder", "tag"}]
       17 LOADN                            R7 1
       18 SETTABLEKS                       R7 R6 K1 ["LayoutOrder"]
       20 LOADK                            R7 K5 ["col auto-xy"]
       21 SETTABLEKS                       R7 R6 K2 ["tag"]
       23 DUPTABLE                         R7 K8 [{"Text", "Subtext"}]
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R8 R9 K0 ["createElement"]
       27 GETUPVAL                         R9 2
       28 DUPTABLE                         R10 K9 [{"LayoutOrder", "Text", "tag"}]
       29 LOADN                            R11 1
       30 SETTABLEKS                       R11 R10 K1 ["LayoutOrder"]
       32 GETTABLEKS                       R11 R0 K10 ["PlaceholderText"]
       34 SETTABLEKS                       R11 R10 K6 ["Text"]
       36 LOADK                            R11 K11 ["auto-xy gap-none text-title-medium"]
       37 SETTABLEKS                       R11 R10 K2 ["tag"]
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K6 ["Text"]
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R8 R9 K0 ["createElement"]
       45 GETUPVAL                         R9 2
       46 DUPTABLE                         R10 K9 [{"LayoutOrder", "Text", "tag"}]
       47 LOADN                            R11 2
       48 SETTABLEKS                       R11 R10 K1 ["LayoutOrder"]
       50 GETTABLEKS                       R11 R0 K12 ["PlaceholderSubtext"]
       52 SETTABLEKS                       R11 R10 K6 ["Text"]
       54 LOADK                            R11 K13 ["auto-xy gap-none text-body-medium"]
       55 SETTABLEKS                       R11 R10 K2 ["tag"]
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K7 ["Subtext"]
       60 CALL                             R4 3 -1
       61 CALL                             R1 -1 -1
       62 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K5 [{"LayoutOrder", "tag", "scroll"}]
        7 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       11 LOADK                            R5 K6 ["size-full-0 fill radius-medium stroke-emphasis"]
       12 SETTABLEKS                       R5 R4 K3 ["tag"]
       14 DUPTABLE                         R5 K10 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       15 GETIMPORT                        R6 K14 [Enum.AutomaticSize.Y]
       17 SETTABLEKS                       R6 R5 K7 ["AutomaticCanvasSize"]
       19 GETIMPORT                        R6 K17 [UDim2.new]
       21 LOADN                            R7 0
       22 LOADN                            R8 0
       23 CALL                             R6 2 1
       24 SETTABLEKS                       R6 R5 K8 ["CanvasSize"]
       26 GETIMPORT                        R6 K18 [Enum.ScrollingDirection.Y]
       28 SETTABLEKS                       R6 R5 K9 ["ScrollingDirection"]
       30 SETTABLEKS                       R5 R4 K4 ["scroll"]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K19 ["Children"]
       35 GETTABLEKS                       R6 R7 K20 ["count"]
       37 MOVE                             R7 R1
       38 CALL                             R6 1 1
       39 JUMPIFEQKN                       R6 K21 [0] ; [+12]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K1 ["createElement"]
       44 GETUPVAL                         R6 2
       45 DUPTABLE                         R7 K22 [{"tag"}]
       46 LOADK                            R8 K23 ["col size-full-0 auto-y"]
       47 SETTABLEKS                       R8 R7 K3 ["tag"]
       49 MOVE                             R8 R1
       50 CALL                             R5 3 1
       51 JUMP                             ; [+15]
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R5 R6 K1 ["createElement"]
       55 GETUPVAL                         R6 2
       56 DUPTABLE                         R7 K22 [{"tag"}]
       57 LOADK                            R8 K24 ["size-full col align-y-center"]
       58 SETTABLEKS                       R8 R7 K3 ["tag"]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R8 R9 K1 ["createElement"]
       63 GETUPVAL                         R9 3
       64 MOVE                             R10 R0
       65 CALL                             R8 2 -1
       66 CALL                             R5 -1 1
       67 CALL                             R2 3 -1
       68 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["ScrollView"]
       25 GETTABLEKS                       R5 R2 K11 ["Text"]
       27 DUPCLOSURE                       R6 K12 [PROTO_0]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R5
       31 DUPCLOSURE                       R7 K13 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R6
       36 RETURN                           R7 1
