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
       42 DUPTABLE                         R4 K23 [{["ZIndex"] = -5, ["Color3"], ["Transparency"], ["Keypoints"], ["ScanLines"] = 100}]
       43 GETUPVAL                         R5 5
       44 GETTABLEKS                       R5 R5 K24 ["EnvelopeColor"]
       46 SETTABLEKS                       R5 R4 K8 ["Color3"]
       48 GETUPVAL                         R5 5
       49 GETTABLEKS                       R5 R5 K25 ["EnvelopeTransparency"]
       51 SETTABLEKS                       R5 R4 K19 ["Transparency"]
       53 GETIMPORT                        R5 K28 [table.clone]
       55 GETUPVAL                         R6 0
       56 CALL                             R5 1 1
       57 SETTABLEKS                       R5 R4 K20 ["Keypoints"]
       59 CALL                             R2 2 1
       60 SETTABLEKS                       R2 R0 K29 ["Envelope"]
       62 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["keypoints"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R3 R3 K1 ["NumberSequence"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["calculateInitialYRange"]
       11 MOVE                             R5 R1
       12 LOADN                            R6 10
       13 CALL                             R4 2 2
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R8 0 3
       26 MOVE                             R9 R1
       27 MOVE                             R10 R2
       28 GETTABLEKS                       R11 R3 K4 ["EnvelopeColor"]
       30 SETLIST                          R8 R9 3 [1]
       32 CALL                             R6 2 1
       33 GETIMPORT                        R7 K7 [UDim.new]
       35 LOADN                            R8 0
       36 LOADK                            R9 K8 [0.5]
       37 CALL                             R7 2 1
       38 GETUPVAL                         R8 4
       39 GETUPVAL                         R9 7
       40 DUPTABLE                         R10 K11 [{["tag"] = "size-full padding-x-xsmall padding-y-xsmall clip"}]
       41 DUPTABLE                         R11 K13 [{"Canvas"}]
       42 GETUPVAL                         R12 4
       43 GETUPVAL                         R13 8
       44 DUPTABLE                         R14 K23 [{["GraphRect"], ["CanvasBackgroundTransparency"] = 1, ["ViewportBackgroundTransparency"] = 1, ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingTop"], ["ViewportPaddingBottom"], ["childrenUnclipped"]}]
       45 GETIMPORT                        R15 K25 [Rect.new]
       47 LOADN                            R16 0
       48 MOVE                             R17 R4
       49 GETTABLEKS                       R18 R3 K26 ["Scale"]
       51 GETTABLEKS                       R18 R18 K27 ["MaxX"]
       53 MOVE                             R19 R5
       54 CALL                             R15 4 1
       55 SETTABLEKS                       R15 R14 K14 ["GraphRect"]
       57 SETTABLEKS                       R7 R14 K18 ["ViewportPaddingLeft"]
       59 SETTABLEKS                       R7 R14 K19 ["ViewportPaddingRight"]
       61 SETTABLEKS                       R7 R14 K20 ["ViewportPaddingTop"]
       63 SETTABLEKS                       R7 R14 K21 ["ViewportPaddingBottom"]
       65 SETTABLEKS                       R6 R14 K22 ["childrenUnclipped"]
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K12 ["Canvas"]
       70 CALL                             R8 3 -1
       71 RETURN                           R8 -1

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
       34 GETTABLEKS                       R6 R0 K9 ["Components"]
       36 GETTABLEKS                       R6 R6 K10 ["PropertyEntries"]
       38 GETTABLEKS                       R6 R6 K11 ["PropertyView"]
       40 GETTABLEKS                       R6 R6 K12 ["NumberSequencePropertyView"]
       42 GETTABLEKS                       R6 R6 K14 ["NumberSequenceUtil"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K6 [require]
       47 GETTABLEKS                       R7 R1 K15 ["React"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R0 K16 ["Hooks"]
       54 GETTABLEKS                       R8 R8 K17 ["useVisualValues"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R3 K18 ["Canvas"]
       59 GETTABLEKS                       R9 R3 K19 ["Curve"]
       61 GETTABLEKS                       R10 R6 K20 ["createElement"]
       63 GETTABLEKS                       R11 R2 K16 ["Hooks"]
       65 GETTABLEKS                       R11 R11 K21 ["useTokens"]
       67 GETTABLEKS                       R12 R2 K22 ["View"]
       69 DUPCLOSURE                       R13 K23 [PROTO_1]
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R8
       79 RETURN                           R13 1
