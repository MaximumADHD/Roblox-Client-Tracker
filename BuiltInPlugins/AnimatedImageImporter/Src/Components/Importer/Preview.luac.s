PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K7 [{["tag"] = "radius-medium bg-surface-0 padding-large", ["Size"], ["LayoutOrder"]}]
       11 GETIMPORT                        R5 K10 [UDim2.new]
       13 LOADN                            R6 1
       14 LOADN                            R7 0
       15 LOADN                            R8 0
       16 LOADN                            R9 240
       17 CALL                             R5 4 1
       18 SETTABLEKS                       R5 R4 K5 ["Size"]
       20 GETTABLEKS                       R5 R0 K11 ["layoutOrder"]
       22 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       24 DUPTABLE                         R5 K13 [{"Image"}]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K1 ["createElement"]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K12 ["Image"]
       31 DUPTABLE                         R8 K19 [{["tag"] = "anchor-center-center position-center-center size-full aspect-1-1", ["ImageContent"], ["ScaleType"], ["LayoutOrder"], ["testId"] = "PlaybackPreview"}]
       32 GETTABLEKS                       R9 R0 K20 ["playback"]
       34 GETTABLEKS                       R9 R9 K21 ["playhead"]
       36 GETTABLEKS                       R9 R9 K22 ["content"]
       38 SETTABLEKS                       R9 R8 K15 ["ImageContent"]
       40 GETIMPORT                        R9 K25 [Enum.ScaleType.Fit]
       42 SETTABLEKS                       R9 R8 K16 ["ScaleType"]
       44 MOVE                             R9 R1
       45 CALL                             R9 0 1
       46 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R5 K12 ["Image"]
       51 CALL                             R2 3 -1
       52 RETURN                           R2 -1

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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["Importer"]
       36 GETTABLEKS                       R5 R5 K13 ["usePlayback"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_0]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 RETURN                           R5 1
