PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Tracks"]
        4 GETTABLEKS                       R4 R2 K2 ["TopTrackIndex"]
        6 GETTABLEKS                       R5 R2 K3 ["MaxHeight"]
        8 MOVE                             R6 R4
        9 LOADN                            R7 0
       10 DUPTABLE                         R8 K5 [{"Layout"}]
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R9 R9 K6 ["createElement"]
       14 LOADK                            R10 K7 ["UIListLayout"]
       15 DUPTABLE                         R11 K10 [{"SortOrder", "FillDirection"}]
       16 GETIMPORT                        R12 K13 [Enum.SortOrder.LayoutOrder]
       18 SETTABLEKS                       R12 R11 K8 ["SortOrder"]
       20 GETIMPORT                        R12 K15 [Enum.FillDirection.Vertical]
       22 SETTABLEKS                       R12 R11 K9 ["FillDirection"]
       24 CALL                             R9 2 1
       25 SETTABLEKS                       R9 R8 K4 ["Layout"]
       27 MOVE                             R11 R4
       28 LENGTH                           R9 R3
       29 LOADN                            R10 1
       30 FORNPREP                         R9
       31 JUMPIFLT                         R5 R7 ; [+70]
       33 MODK                             R13 R11 K16 [2]
       34 JUMPIFEQKN                       R13 K17 [0] ; [+2]
       36 LOADB                            R12 0 +1
       37 LOADB                            R12 1
       38 GETTABLE                         R13 R3 R11
       39 LOADN                            R14 1
       40 JUMPIFNOT                        R13 ; [+9]
       41 GETTABLEKS                       R15 R13 K18 ["Expanded"]
       43 JUMPIFNOT                        R15 ; [+6]
       44 GETUPVAL                         R15 1
       45 GETTABLEKS                       R15 R15 K19 ["getExpandedSize"]
       47 MOVE                             R16 R13
       48 CALL                             R15 1 1
       49 MOVE                             R14 R15
       50 LOADN                            R17 1
       51 MOVE                             R15 R14
       52 LOADN                            R16 1
       53 FORNPREP                         R15
       54 JUMPIFLT                         R5 R7 ; [+46]
       56 MOVE                             R19 R8
       57 GETUPVAL                         R20 0
       58 GETTABLEKS                       R20 R20 K6 ["createElement"]
       60 LOADK                            R21 K20 ["Frame"]
       61 DUPTABLE                         R22 K24 [{"Size", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
       62 GETIMPORT                        R23 K27 [UDim2.new]
       64 LOADN                            R24 1
       65 LOADN                            R25 0
       66 LOADN                            R26 0
       67 GETUPVAL                         R27 2
       68 GETTABLEKS                       R27 R27 K28 ["TRACK_HEIGHT"]
       70 CALL                             R23 4 1
       71 SETTABLEKS                       R23 R22 K21 ["Size"]
       73 JUMPIFNOT                        R12 ; [+5]
       74 GETTABLEKS                       R23 R1 K29 ["trackTheme"]
       76 GETTABLEKS                       R23 R23 K30 ["shadedBackgroundColor"]
       78 JUMPIF                           R23 ; [+4]
       79 GETTABLEKS                       R23 R1 K29 ["trackTheme"]
       81 GETTABLEKS                       R23 R23 K31 ["backgroundColor"]
       83 SETTABLEKS                       R23 R22 K22 ["BackgroundColor3"]
       85 LOADN                            R23 0
       86 SETTABLEKS                       R23 R22 K23 ["BorderSizePixel"]
       88 SETTABLEKS                       R6 R22 K12 ["LayoutOrder"]
       90 CALL                             R20 2 -1
       91 FASTCALL                         TABLE_INSERT ; [+2]
       92 GETIMPORT                        R18 K34 [table.insert]
       94 CALL                             R18 -1 0
       95 ADDK                             R6 R6 K35 [1]
       96 GETUPVAL                         R18 2
       97 GETTABLEKS                       R18 R18 K28 ["TRACK_HEIGHT"]
       99 ADD                              R7 R7 R18
      100 FORNLOOP                         R15
      101 FORNLOOP                         R9
      102 RETURN                           R8 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 MOVE                             R5 R2
        5 NAMECALL                         R3 R0 K2 ["renderTracks"]
        7 CALL                             R3 2 1
        8 GETTABLEKS                       R4 R1 K3 ["Position"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K4 ["createElement"]
       13 LOADK                            R6 K5 ["Frame"]
       14 DUPTABLE                         R7 K9 [{"Size", "Position", "BackgroundTransparency", "ZIndex"}]
       15 GETIMPORT                        R8 K12 [UDim2.new]
       17 LOADN                            R9 1
       18 LOADN                            R10 0
       19 LOADN                            R11 1
       20 LOADN                            R12 0
       21 CALL                             R8 4 1
       22 SETTABLEKS                       R8 R7 K6 ["Size"]
       24 SETTABLEKS                       R4 R7 K3 ["Position"]
       26 LOADN                            R8 1
       27 SETTABLEKS                       R8 R7 K7 ["BackgroundTransparency"]
       29 LOADN                            R8 0
       30 SETTABLEKS                       R8 R7 K8 ["ZIndex"]
       32 MOVE                             R8 R3
       33 CALL                             R5 3 -1
       34 RETURN                           R5 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["TrackUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K8 ["Src"]
       38 GETTABLEKS                       R7 R7 K9 ["Util"]
       40 GETTABLEKS                       R7 R7 K14 ["Constants"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R1 K15 ["PureComponent"]
       45 LOADK                            R9 K16 ["TrackColors"]
       46 NAMECALL                         R7 R7 K17 ["extend"]
       48 CALL                             R7 2 1
       49 DUPCLOSURE                       R8 K18 [PROTO_0]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 SETTABLEKS                       R8 R7 K19 ["renderTracks"]
       55 DUPCLOSURE                       R8 K20 [PROTO_1]
       56 CAPTURE                          VAL R1
       57 SETTABLEKS                       R8 R7 K21 ["render"]
       59 MOVE                             R8 R5
       60 DUPTABLE                         R9 K23 [{"Stylizer"}]
       61 GETTABLEKS                       R10 R4 K22 ["Stylizer"]
       63 SETTABLEKS                       R10 R9 K22 ["Stylizer"]
       65 CALL                             R8 1 1
       66 MOVE                             R9 R7
       67 CALL                             R8 1 1
       68 MOVE                             R7 R8
       69 RETURN                           R7 1
