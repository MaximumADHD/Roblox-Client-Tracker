PROTO_0:
        0 NEWTABLE                         R0 2 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETIMPORT                        R7 K2 [Vector2.new]
       10 GETTABLEKS                       R8 R6 K3 ["Time"]
       12 GETTABLEKS                       R9 R6 K4 ["Value"]
       14 CALL                             R7 2 1
       15 DUPTABLE                         R8 K6 [{"Position"}]
       16 SETTABLEKS                       R7 R8 K5 ["Position"]
       18 SETTABLE                         R8 R1 R5
       19 FORGLOOP                         R2 2 ; [-12]
       21 GETUPVAL                         R2 1
       22 GETUPVAL                         R3 2
       23 DUPTABLE                         R4 K13 [{["Points"], ["Color3"], ["Thickness"] = 1, ["ZIndex"] = 5}]
       24 SETTABLEKS                       R1 R4 K7 ["Points"]
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R5 R5 K14 ["Color"]
       29 GETTABLEKS                       R5 R5 K15 ["System"]
       31 GETTABLEKS                       R5 R5 K16 ["Neutral"]
       33 GETTABLEKS                       R5 R5 K8 ["Color3"]
       35 SETTABLEKS                       R5 R4 K8 ["Color3"]
       37 CALL                             R2 2 1
       38 SETTABLEKS                       R2 R0 K17 ["Curve"]
       40 GETUPVAL                         R2 1
       41 GETUPVAL                         R3 4
       42 DUPTABLE                         R4 K23 [{["Color3"], ["ZIndex"] = -5, ["Keypoints"], ["OutlineThickness"] = 1, ["ScanLines"] = 150}]
       43 GETIMPORT                        R5 K25 [Color3.fromRGB]
       45 LOADN                            R6 85
       46 LOADN                            R7 85
       47 LOADN                            R8 85
       48 CALL                             R5 3 1
       49 SETTABLEKS                       R5 R4 K8 ["Color3"]
       51 GETIMPORT                        R5 K28 [table.clone]
       53 GETUPVAL                         R6 0
       54 CALL                             R5 1 1
       55 SETTABLEKS                       R5 R4 K19 ["Keypoints"]
       57 CALL                             R2 2 1
       58 SETTABLEKS                       R2 R0 K29 ["Envelope"]
       60 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["keypoints"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R3 R3 K1 ["NumberSequence"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U5
       17 NEWTABLE                         R6 0 2
       19 MOVE                             R7 R1
       20 MOVE                             R8 R2
       21 SETLIST                          R6 R7 2 [1]
       23 CALL                             R4 2 1
       24 GETIMPORT                        R5 K5 [UDim.new]
       26 LOADN                            R6 0
       27 LOADK                            R7 K6 [0.5]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R6 3
       30 GETUPVAL                         R7 6
       31 DUPTABLE                         R8 K9 [{["tag"] = "size-full padding-x-xsmall padding-y-xsmall clip"}]
       32 DUPTABLE                         R9 K11 [{"Canvas"}]
       33 GETUPVAL                         R10 3
       34 GETUPVAL                         R11 7
       35 DUPTABLE                         R12 K21 [{["GraphRect"], ["CanvasBackgroundTransparency"] = 1, ["ViewportBackgroundTransparency"] = 1, ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingTop"], ["ViewportPaddingBottom"], ["childrenUnclipped"]}]
       36 GETIMPORT                        R13 K23 [Rect.new]
       38 LOADN                            R14 0
       39 GETTABLEKS                       R15 R3 K24 ["GraphMinY"]
       41 GETTABLEKS                       R16 R3 K25 ["GraphMaxX"]
       43 GETTABLEKS                       R17 R3 K26 ["GraphMaxY"]
       45 CALL                             R13 4 1
       46 SETTABLEKS                       R13 R12 K12 ["GraphRect"]
       48 SETTABLEKS                       R5 R12 K16 ["ViewportPaddingLeft"]
       50 SETTABLEKS                       R5 R12 K17 ["ViewportPaddingRight"]
       52 SETTABLEKS                       R5 R12 K18 ["ViewportPaddingTop"]
       54 SETTABLEKS                       R5 R12 K19 ["ViewportPaddingBottom"]
       56 SETTABLEKS                       R4 R12 K20 ["childrenUnclipped"]
       58 CALL                             R10 2 1
       59 SETTABLEKS                       R10 R9 K10 ["Canvas"]
       61 CALL                             R6 3 -1
       62 RETURN                           R6 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["Graphing"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["PropertyEntries"]
       25 GETTABLEKS                       R5 R5 K11 ["PropertyView"]
       27 GETTABLEKS                       R5 R5 K12 ["NumberSequencePropertyView"]
       29 GETTABLEKS                       R5 R5 K13 ["NumberSequenceEnvelope"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K14 ["React"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K15 ["Hooks"]
       41 GETTABLEKS                       R7 R7 K16 ["useVisualValues"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R3 K17 ["Canvas"]
       46 GETTABLEKS                       R8 R3 K18 ["Curve"]
       48 GETTABLEKS                       R9 R5 K19 ["createElement"]
       50 GETTABLEKS                       R10 R2 K15 ["Hooks"]
       52 GETTABLEKS                       R10 R10 K20 ["useTokens"]
       54 GETTABLEKS                       R11 R2 K21 ["View"]
       56 DUPCLOSURE                       R12 K22 [PROTO_1]
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R7
       65 RETURN                           R12 1
