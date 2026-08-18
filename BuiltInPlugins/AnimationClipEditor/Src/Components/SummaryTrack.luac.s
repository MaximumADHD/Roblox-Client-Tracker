PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Tracks"]
        4 GETTABLEKS                       R3 R1 K2 ["StartTick"]
        6 GETTABLEKS                       R4 R1 K3 ["EndTick"]
        8 GETTABLEKS                       R5 R1 K4 ["PreviewKeyframes"]
       10 GETTABLEKS                       R6 R1 K5 ["SelectedKeyframes"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["getSummaryKeyframes"]
       15 MOVE                             R8 R2
       16 MOVE                             R9 R3
       17 MOVE                             R10 R4
       18 MOVE                             R11 R6
       19 GETUPVAL                         R13 1
       20 CALL                             R13 0 1
       21 JUMPIFNOT                        R13 ; [+2]
       22 LOADNIL                          R12
       23 JUMP                             ; [+1]
       24 MOVE                             R12 R5
       25 CALL                             R7 5 -1
       26 RETURN                           R7 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnKeyRightClick"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 GETUPVAL                         R5 1
        6 GETUPVAL                         R6 2
        7 CALL                             R2 4 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnKeyInputBegan"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 GETUPVAL                         R5 1
        6 GETUPVAL                         R6 2
        7 MOVE                             R7 R1
        8 CALL                             R2 5 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnKeyInputEnded"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["createElement"]
        5 GETUPVAL                         R7 1
        6 DUPTABLE                         R8 K15 [{["Selected"], ["KeyframeStyle"], ["Position"], ["ZIndex"], ["Width"], ["BorderSizePixel"], ["Filled"] = True, ["Named"], ["OnActivated"], ["OnRightClick"], ["OnInputBegan"], ["OnInputEnded"]}]
        7 SETTABLEKS                       R1 R8 K2 ["Selected"]
        9 GETUPVAL                         R9 2
       10 GETTABLEKS                       R9 R9 K16 ["KEYFRAME_STYLE"]
       12 GETTABLEKS                       R9 R9 K17 ["Primary"]
       14 SETTABLEKS                       R9 R8 K3 ["KeyframeStyle"]
       16 GETIMPORT                        R9 K20 [UDim2.new]
       18 LOADN                            R10 0
       19 MOVE                             R11 R2
       20 LOADK                            R12 K21 [0.5]
       21 LOADN                            R13 0
       22 CALL                             R9 4 1
       23 SETTABLEKS                       R9 R8 K4 ["Position"]
       25 GETTABLEKS                       R9 R5 K5 ["ZIndex"]
       27 SETTABLEKS                       R9 R8 K5 ["ZIndex"]
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R9 R9 K22 ["SUMMARY_KEYFRAME_WIDTH"]
       32 SETTABLEKS                       R9 R8 K6 ["Width"]
       34 JUMPIFNOT                        R1 ; [+2]
       35 LOADN                            R9 2
       36 JUMP                             ; [+1]
       37 LOADN                            R9 1
       38 SETTABLEKS                       R9 R8 K7 ["BorderSizePixel"]
       40 JUMPIFNOTEQKNIL                  R4 ; [+2]
       42 LOADB                            R9 0 +1
       43 LOADB                            R9 1
       44 SETTABLEKS                       R9 R8 K10 ["Named"]
       46 GETTABLEKS                       R9 R5 K23 ["OnKeyActivated"]
       48 SETTABLEKS                       R9 R8 K11 ["OnActivated"]
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R9 R8 K12 ["OnRightClick"]
       56 NEWCLOSURE                       R9 P1
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R9 R8 K13 ["OnInputBegan"]
       62 NEWCLOSURE                       R9 P2
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R9 R8 K14 ["OnInputEnded"]
       68 DUPTABLE                         R9 K25 [{"Tooltip"}]
       69 MOVE                             R10 R4
       70 JUMPIFNOT                        R10 ; [+8]
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R10 R10 K1 ["createElement"]
       74 GETUPVAL                         R11 3
       75 DUPTABLE                         R12 K29 [{["Text"], ["ShowDelay"] = 0}]
       76 SETTABLEKS                       R4 R12 K26 ["Text"]
       78 CALL                             R10 2 1
       79 SETTABLEKS                       R10 R9 K24 ["Tooltip"]
       81 CALL                             R6 3 -1
       82 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createElement"]
        3 GETUPVAL                         R6 1
        4 DUPTABLE                         R7 K6 [{["Primary"] = True, ["Position"], ["Size"], ["ZIndex"]}]
        5 GETIMPORT                        R8 K9 [UDim2.new]
        7 LOADN                            R9 0
        8 MOVE                             R10 R1
        9 LOADK                            R11 K10 [0.5]
       10 LOADN                            R12 0
       11 CALL                             R8 4 1
       12 SETTABLEKS                       R8 R7 K3 ["Position"]
       14 GETIMPORT                        R8 K9 [UDim2.new]
       16 LOADN                            R9 0
       17 SUB                              R10 R2 R1
       18 LOADN                            R11 0
       19 MOVE                             R12 R3
       20 CALL                             R8 4 1
       21 SETTABLEKS                       R8 R7 K4 ["Size"]
       23 SETTABLEKS                       R4 R7 K5 ["ZIndex"]
       25 CALL                             R5 2 -1
       26 RETURN                           R5 -1

PROTO_6:
        0 NAMECALL                         R2 R0 K0 ["getSummaryKeyframes"]
        2 CALL                             R2 1 2
        3 GETIMPORT                        R4 K3 [table.sort]
        5 MOVE                             R5 R2
        6 CALL                             R4 1 0
        7 LENGTH                           R4 R2
        8 JUMPIFNOTEQKN                    R4 K4 [0] ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R4 R0 K5 ["props"]
       13 GETTABLEKS                       R5 R4 K6 ["Width"]
       15 GETTABLEKS                       R6 R4 K7 ["StartTick"]
       17 GETTABLEKS                       R7 R4 K8 ["EndTick"]
       19 GETTABLEKS                       R8 R4 K9 ["ShowCluster"]
       21 GETTABLEKS                       R9 R4 K10 ["NamedKeyframes"]
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R10 R10 K11 ["getKeyframesExtents"]
       26 MOVE                             R11 R2
       27 MOVE                             R12 R6
       28 MOVE                             R13 R7
       29 CALL                             R10 3 2
       30 JUMPIFNOT                        R8 ; [+26]
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R12 R12 K12 ["getScaledKeyframePosition"]
       34 GETTABLE                         R13 R2 R10
       35 MOVE                             R14 R6
       36 MOVE                             R15 R7
       37 MOVE                             R16 R5
       38 CALL                             R12 4 1
       39 GETUPVAL                         R13 0
       40 GETTABLEKS                       R13 R13 K12 ["getScaledKeyframePosition"]
       42 GETTABLE                         R14 R2 R11
       43 MOVE                             R15 R6
       44 MOVE                             R16 R7
       45 MOVE                             R17 R5
       46 CALL                             R13 4 1
       47 MOVE                             R16 R12
       48 MOVE                             R17 R13
       49 GETUPVAL                         R18 1
       50 GETTABLEKS                       R18 R18 K13 ["MIN_SPACE_BETWEEN_KEYS"]
       52 NAMECALL                         R14 R0 K14 ["renderKeyframeCluster"]
       54 CALL                             R14 4 1
       55 SETTABLE                         R14 R1 R11
       56 RETURN                           R0 0
       57 JUMPIFEQKNIL                     R10 ; [+26]
       59 JUMPIFEQKNIL                     R11 ; [+24]
       61 MOVE                             R14 R10
       62 MOVE                             R12 R11
       63 LOADN                            R13 1
       64 FORNPREP                         R12
       65 GETTABLE                         R15 R2 R14
       66 GETUPVAL                         R16 0
       67 GETTABLEKS                       R16 R16 K12 ["getScaledKeyframePosition"]
       69 MOVE                             R17 R15
       70 MOVE                             R18 R6
       71 MOVE                             R19 R7
       72 MOVE                             R20 R5
       73 CALL                             R16 4 1
       74 GETTABLE                         R17 R3 R15
       75 MOVE                             R20 R17
       76 MOVE                             R21 R16
       77 MOVE                             R22 R15
       78 GETTABLE                         R23 R9 R15
       79 NAMECALL                         R18 R0 K15 ["renderKeyframe"]
       81 CALL                             R18 5 1
       82 SETTABLE                         R18 R1 R14
       83 FORNLOOP                         R12
       84 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+10]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
        8 GETTABLEKS                       R2 R2 K2 ["join"]
       10 MOVE                             R3 R1
       11 DUPTABLE                         R4 K5 [{["Primary"] = True}]
       12 CALL                             R2 2 1
       13 MOVE                             R1 R2
       14 JUMP                             ; [+3]
       15 LOADB                            R2 1
       16 SETTABLEKS                       R2 R1 K3 ["Primary"]
       18 NEWTABLE                         R2 0 0
       20 MOVE                             R5 R2
       21 NAMECALL                         R3 R0 K6 ["renderKeyframes"]
       23 CALL                             R3 2 0
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K7 ["createElement"]
       27 GETUPVAL                         R4 3
       28 MOVE                             R5 R1
       29 MOVE                             R6 R2
       30 CALL                             R3 3 -1
       31 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["BaseTrack"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["LuaFlags"]
       34 GETTABLEKS                       R5 R5 K13 ["GetFFlagACERoactCompatPrepFixes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K14 ["Util"]
       43 GETTABLEKS                       R6 R6 K15 ["Constants"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Util"]
       52 GETTABLEKS                       R7 R7 K16 ["TrackUtils"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Src"]
       59 GETTABLEKS                       R8 R8 K10 ["Components"]
       61 GETTABLEKS                       R8 R8 K17 ["Timeline"]
       63 GETTABLEKS                       R8 R8 K18 ["Keyframe"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Src"]
       70 GETTABLEKS                       R9 R9 K10 ["Components"]
       72 GETTABLEKS                       R9 R9 K19 ["KeyframeCluster"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K9 ["Src"]
       79 GETTABLEKS                       R10 R10 K10 ["Components"]
       81 GETTABLEKS                       R10 R10 K20 ["Tooltip"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K12 ["LuaFlags"]
       88 GETTABLEKS                       R11 R11 K21 ["GetFFlagControlRig"]
       90 CALL                             R10 1 1
       91 GETTABLEKS                       R11 R1 K22 ["PureComponent"]
       93 LOADK                            R13 K23 ["SummaryTrack"]
       94 NAMECALL                         R11 R11 K24 ["extend"]
       96 CALL                             R11 2 1
       97 DUPCLOSURE                       R12 K25 [PROTO_0]
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R10
      100 SETTABLEKS                       R12 R11 K26 ["getSummaryKeyframes"]
      102 DUPCLOSURE                       R12 K27 [PROTO_4]
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R9
      107 SETTABLEKS                       R12 R11 K28 ["renderKeyframe"]
      109 DUPCLOSURE                       R12 K29 [PROTO_5]
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R8
      112 SETTABLEKS                       R12 R11 K30 ["renderKeyframeCluster"]
      114 DUPCLOSURE                       R12 K31 [PROTO_6]
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R5
      117 SETTABLEKS                       R12 R11 K32 ["renderKeyframes"]
      119 DUPCLOSURE                       R12 K33 [PROTO_7]
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R3
      124 SETTABLEKS                       R12 R11 K34 ["render"]
      126 RETURN                           R11 1
