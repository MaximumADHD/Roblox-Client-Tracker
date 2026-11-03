PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeSlicerState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["imageSize"]
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeSlicerState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["source"]
        7 GETTABLEKS                       R1 R1 K2 ["content"]
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K2 ["observeSlicerState"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 -1
       16 CALL                             R1 -1 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["useSignalState"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R5 0 1
       28 GETTABLEKS                       R6 R0 K2 ["observeSlicerState"]
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 -1
       33 CALL                             R2 -1 1
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K3 ["createNextOrder"]
       37 CALL                             R3 0 1
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K4 ["createElement"]
       41 GETUPVAL                         R5 4
       42 GETTABLEKS                       R5 R5 K5 ["View"]
       44 DUPTABLE                         R6 K8 [{["tag"] = "size-full anchor-center-center position-center-center"}]
       45 DUPTABLE                         R7 K13 [{"UIAspectRatioConstraint", "Background", "Image", "SplitPreview"}]
       46 GETUPVAL                         R8 1
       47 GETTABLEKS                       R8 R8 K4 ["createElement"]
       49 LOADK                            R9 K9 ["UIAspectRatioConstraint"]
       50 DUPTABLE                         R10 K15 [{"AspectRatio"}]
       51 GETTABLEKS                       R12 R1 K16 ["X"]
       53 GETTABLEKS                       R13 R1 K17 ["Y"]
       55 DIV                              R11 R12 R13
       56 SETTABLEKS                       R11 R10 K14 ["AspectRatio"]
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K9 ["UIAspectRatioConstraint"]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K4 ["createElement"]
       64 GETUPVAL                         R9 5
       65 DUPTABLE                         R10 K19 [{"zIndex"}]
       66 MOVE                             R11 R3
       67 CALL                             R11 0 1
       68 SETTABLEKS                       R11 R10 K18 ["zIndex"]
       70 CALL                             R8 2 1
       71 SETTABLEKS                       R8 R7 K10 ["Background"]
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K4 ["createElement"]
       76 GETUPVAL                         R9 4
       77 GETTABLEKS                       R9 R9 K11 ["Image"]
       79 DUPTABLE                         R10 K22 [{["tag"] = "size-full anchor-center-center position-center-center", ["ImageContent"], ["ZIndex"]}]
       80 SETTABLEKS                       R2 R10 K20 ["ImageContent"]
       82 MOVE                             R11 R3
       83 CALL                             R11 0 1
       84 SETTABLEKS                       R11 R10 K21 ["ZIndex"]
       86 CALL                             R8 2 1
       87 SETTABLEKS                       R8 R7 K11 ["Image"]
       89 GETUPVAL                         R8 1
       90 GETTABLEKS                       R8 R8 K4 ["createElement"]
       92 GETUPVAL                         R9 6
       93 DUPTABLE                         R10 K23 [{"observeSlicerState", "zIndex"}]
       94 GETTABLEKS                       R11 R0 K2 ["observeSlicerState"]
       96 SETTABLEKS                       R11 R10 K2 ["observeSlicerState"]
       98 MOVE                             R11 R3
       99 CALL                             R11 0 1
      100 SETTABLEKS                       R11 R10 K18 ["zIndex"]
      102 CALL                             R8 2 1
      103 SETTABLEKS                       R8 R7 K12 ["SplitPreview"]
      105 CALL                             R4 3 -1
      106 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Slicer"]
       15 GETTABLEKS                       R2 R2 K9 ["Background"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["ReactUtils"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Packages"]
       43 GETTABLEKS                       R6 R6 K14 ["Signals"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Packages"]
       50 GETTABLEKS                       R7 R7 K15 ["SignalsReact"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Src"]
       57 GETTABLEKS                       R8 R8 K7 ["Components"]
       59 GETTABLEKS                       R8 R8 K8 ["Slicer"]
       61 GETTABLEKS                       R8 R8 K16 ["SplitPreview"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K6 ["Src"]
       68 GETTABLEKS                       R9 R9 K17 ["Types"]
       70 CALL                             R8 1 1
       71 DUPCLOSURE                       R9 K18 [PROTO_4]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R7
       79 RETURN                           R9 1
