PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K6 [{["tag"] = "size-full padding-large gap-large row stroke-standard stroke-muted bg-surface-200", ["testId"]}]
       11 GETTABLEKS                       R5 R0 K5 ["testId"]
       13 SETTABLEKS                       R5 R4 K5 ["testId"]
       15 DUPTABLE                         R5 K9 [{"Left", "Right"}]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K1 ["createElement"]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K10 ["ScrollView"]
       22 DUPTABLE                         R8 K14 [{["scroll"], ["LayoutOrder"], ["tag"] = "size-0-full fill radius-medium bg-surface-100 padding-xxlarge"}]
       23 DUPTABLE                         R9 K18 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
       24 GETIMPORT                        R10 K22 [Enum.AutomaticSize.Y]
       26 SETTABLEKS                       R10 R9 K15 ["AutomaticCanvasSize"]
       28 GETIMPORT                        R10 K23 [Enum.ScrollingDirection.Y]
       30 SETTABLEKS                       R10 R9 K16 ["ScrollingDirection"]
       32 GETIMPORT                        R10 K26 [UDim2.new]
       34 CALL                             R10 0 1
       35 SETTABLEKS                       R10 R9 K17 ["CanvasSize"]
       37 SETTABLEKS                       R9 R8 K11 ["scroll"]
       39 MOVE                             R9 R1
       40 CALL                             R9 0 1
       41 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       43 GETTABLEKS                       R9 R0 K27 ["left"]
       45 CALL                             R6 3 1
       46 SETTABLEKS                       R6 R5 K7 ["Left"]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K1 ["createElement"]
       51 GETUPVAL                         R7 2
       52 GETTABLEKS                       R7 R7 K2 ["View"]
       54 DUPTABLE                         R8 K29 [{"LayoutOrder", "Size"}]
       55 MOVE                             R9 R1
       56 CALL                             R9 0 1
       57 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       59 GETIMPORT                        R9 K26 [UDim2.new]
       61 LOADN                            R10 0
       62 LOADN                            R11 320
       63 LOADN                            R12 1
       64 LOADN                            R13 0
       65 CALL                             R9 4 1
       66 SETTABLEKS                       R9 R8 K28 ["Size"]
       68 GETTABLEKS                       R9 R0 K30 ["right"]
       70 CALL                             R6 3 1
       71 SETTABLEKS                       R6 R5 K8 ["Right"]
       73 CALL                             R2 3 -1
       74 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 RETURN                           R4 1
