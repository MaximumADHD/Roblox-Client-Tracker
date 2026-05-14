PROTO_0:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETTABLEKS                       R6 R5 K1 ["StartTick"]
        4 GETTABLEKS                       R7 R5 K2 ["EndTick"]
        6 GETTABLEKS                       R8 R5 K3 ["Tracks"]
        8 GETTABLEKS                       R9 R5 K4 ["SelectedKeyframes"]
       10 GETTABLEKS                       R10 R5 K5 ["NamedKeyframes"]
       12 GETTABLEKS                       R11 R5 K6 ["SummaryTrackHeight"]
       14 GETTABLEKS                       R12 R5 K7 ["ZIndex"]
       16 GETTABLEKS                       R14 R5 K9 ["Padding"]
       18 ORK                              R13 R14 K8 [0]
       19 GETTABLEKS                       R14 R5 K10 ["OnKeyActivated"]
       21 GETTABLEKS                       R15 R5 K11 ["OnKeyRightClick"]
       23 GETTABLEKS                       R16 R5 K12 ["OnKeyInputBegan"]
       25 GETTABLEKS                       R17 R5 K13 ["OnKeyInputEnded"]
       27 GETTABLEKS                       R19 R5 K14 ["ParentSize"]
       29 GETTABLEKS                       R19 R19 K15 ["X"]
       31 SUB                              R18 R19 R13
       32 GETUPVAL                         R19 0
       33 GETTABLEKS                       R19 R19 K16 ["createElement"]
       35 GETUPVAL                         R20 1
       36 DUPTABLE                         R21 K21 [{"Tracks", "SelectedKeyframes", "NamedKeyframes", "LayoutOrder", "Size", "Width", "StartTick", "EndTick", "ShowCluster", "ZIndex", "OnKeyActivated", "OnKeyRightClick", "OnKeyInputBegan", "OnKeyInputEnded"}]
       37 SETTABLEKS                       R8 R21 K3 ["Tracks"]
       39 SETTABLEKS                       R9 R21 K4 ["SelectedKeyframes"]
       41 SETTABLEKS                       R10 R21 K5 ["NamedKeyframes"]
       43 LOADN                            R22 0
       44 SETTABLEKS                       R22 R21 K17 ["LayoutOrder"]
       46 GETIMPORT                        R22 K24 [UDim2.new]
       48 LOADN                            R23 1
       49 LOADN                            R24 0
       50 LOADN                            R25 0
       51 MOVE                             R26 R11
       52 CALL                             R22 4 1
       53 SETTABLEKS                       R22 R21 K18 ["Size"]
       55 SETTABLEKS                       R18 R21 K19 ["Width"]
       57 SETTABLEKS                       R6 R21 K1 ["StartTick"]
       59 SETTABLEKS                       R7 R21 K2 ["EndTick"]
       61 SETTABLEKS                       R4 R21 K20 ["ShowCluster"]
       63 SETTABLEKS                       R12 R21 K7 ["ZIndex"]
       65 SETTABLEKS                       R14 R21 K10 ["OnKeyActivated"]
       67 SETTABLEKS                       R15 R21 K11 ["OnKeyRightClick"]
       69 SETTABLEKS                       R16 R21 K12 ["OnKeyInputBegan"]
       71 SETTABLEKS                       R17 R21 K13 ["OnKeyInputEnded"]
       73 CALL                             R19 2 1
       74 SETTABLEKS                       R19 R1 K25 ["SummaryTrack"]
       76 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R6 R0 K0 ["props"]
        2 GETTABLEKS                       R7 R6 K1 ["StartTick"]
        4 GETTABLEKS                       R8 R6 K2 ["EndTick"]
        6 GETTABLEKS                       R9 R6 K3 ["SelectedKeyframes"]
        8 GETTABLEKS                       R10 R6 K4 ["TrackHeight"]
       10 GETTABLEKS                       R11 R6 K5 ["ZIndex"]
       12 GETTABLEKS                       R13 R6 K7 ["Padding"]
       14 ORK                              R12 R13 K6 [0]
       15 GETTABLEKS                       R13 R6 K8 ["OnKeyActivated"]
       17 GETTABLEKS                       R14 R6 K9 ["OnKeyRightClick"]
       19 GETTABLEKS                       R15 R6 K10 ["OnKeyInputBegan"]
       21 GETTABLEKS                       R16 R6 K11 ["OnKeyInputEnded"]
       23 GETTABLEKS                       R18 R6 K12 ["ParentSize"]
       25 GETTABLEKS                       R18 R18 K13 ["X"]
       27 SUB                              R17 R18 R12
       28 GETUPVAL                         R18 0
       29 GETTABLEKS                       R18 R18 K14 ["List"]
       31 GETTABLEKS                       R18 R18 K15 ["join"]
       33 MOVE                             R19 R5
       34 JUMPIF                           R19 ; [+2]
       35 NEWTABLE                         R19 0 0
       37 NEWTABLE                         R20 0 1
       39 GETTABLEKS                       R21 R2 K16 ["Name"]
       41 SETLIST                          R20 R21 1 [1]
       43 CALL                             R18 2 1
       44 MOVE                             R5 R18
       45 LOADK                            R19 K17 ["Track_"]
       46 GETIMPORT                        R20 K20 [table.concat]
       48 MOVE                             R21 R5
       49 LOADK                            R22 K21 ["_"]
       50 CALL                             R20 2 1
       51 CONCAT                           R18 R19 R20
       52 ORK                              R4 R4 K6 [0]
       53 GETUPVAL                         R19 1
       54 GETTABLEKS                       R19 R19 K22 ["createElement"]
       56 GETUPVAL                         R20 2
       57 DUPTABLE                         R21 K30 [{"Track", "Path", "SelectedKeyframes", "LayoutOrder", "Size", "Width", "StartTick", "EndTick", "ShowCluster", "ZIndex", "IsChannelAnimation", "OnKeyActivated", "OnKeyRightClick", "OnKeyInputBegan", "OnKeyInputEnded"}]
       58 SETTABLEKS                       R2 R21 K23 ["Track"]
       60 SETTABLEKS                       R5 R21 K24 ["Path"]
       62 SETTABLEKS                       R9 R21 K3 ["SelectedKeyframes"]
       64 SETTABLEKS                       R4 R21 K25 ["LayoutOrder"]
       66 GETIMPORT                        R22 K33 [UDim2.new]
       68 LOADN                            R23 1
       69 LOADN                            R24 0
       70 LOADN                            R25 0
       71 MOVE                             R26 R10
       72 CALL                             R22 4 1
       73 SETTABLEKS                       R22 R21 K26 ["Size"]
       75 SETTABLEKS                       R17 R21 K27 ["Width"]
       77 SETTABLEKS                       R7 R21 K1 ["StartTick"]
       79 SETTABLEKS                       R8 R21 K2 ["EndTick"]
       81 SETTABLEKS                       R3 R21 K28 ["ShowCluster"]
       83 SETTABLEKS                       R11 R21 K5 ["ZIndex"]
       85 LOADB                            R22 1
       86 SETTABLEKS                       R22 R21 K29 ["IsChannelAnimation"]
       88 SETTABLEKS                       R13 R21 K8 ["OnKeyActivated"]
       90 SETTABLEKS                       R14 R21 K9 ["OnKeyRightClick"]
       92 SETTABLEKS                       R15 R21 K10 ["OnKeyInputBegan"]
       94 SETTABLEKS                       R16 R21 K11 ["OnKeyInputEnded"]
       96 CALL                             R19 2 1
       97 SETTABLE                         R19 R1 R18
       98 ADDK                             R4 R4 K34 [1]
       99 GETTABLEKS                       R19 R2 K35 ["Expanded"]
      101 JUMPIFNOT                        R19 ; [+35]
      102 GETUPVAL                         R20 3
      103 CALL                             R20 0 1
      104 JUMPIFNOT                        R20 ; [+6]
      105 GETUPVAL                         R19 4
      106 GETTABLEKS                       R19 R19 K36 ["getSortedComponents"]
      108 MOVE                             R20 R2
      109 CALL                             R19 1 1
      110 JUMP                             ; [+8]
      111 GETUPVAL                         R20 5
      112 GETTABLEKS                       R20 R20 K37 ["COMPONENT_TRACK_TYPES"]
      114 GETTABLEKS                       R21 R2 K38 ["Type"]
      116 GETTABLE                         R19 R20 R21
      117 GETTABLEKS                       R19 R19 K39 ["_Order"]
      119 GETIMPORT                        R20 K41 [ipairs]
      121 MOVE                             R21 R19
      122 CALL                             R20 1 3
      123 FORGPREP_INEXT                   R20
      124 MOVE                             R27 R1
      125 GETTABLEKS                       R29 R2 K42 ["Components"]
      127 GETTABLE                         R28 R29 R24
      128 MOVE                             R29 R3
      129 MOVE                             R30 R4
      130 MOVE                             R31 R5
      131 NAMECALL                         R25 R0 K43 ["renderTrackHierarchy"]
      133 CALL                             R25 6 1
      134 MOVE                             R4 R25
      135 FORGLOOP                         R20 2 [inext] ; [-12]
      137 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 ADDK                             R0 R1 K0 [1]
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETTABLEKS                       R6 R5 K1 ["StartTick"]
        4 GETTABLEKS                       R7 R5 K2 ["EndTick"]
        6 GETTABLEKS                       R8 R5 K3 ["Tracks"]
        8 GETTABLEKS                       R9 R5 K4 ["SelectedKeyframes"]
       10 GETTABLEKS                       R10 R5 K5 ["TrackHeight"]
       12 GETTABLEKS                       R11 R5 K6 ["ZIndex"]
       14 GETTABLEKS                       R13 R5 K8 ["Padding"]
       16 ORK                              R12 R13 K7 [0]
       17 GETTABLEKS                       R13 R5 K9 ["IsChannelAnimation"]
       19 GETTABLEKS                       R14 R5 K10 ["OnKeyActivated"]
       21 GETTABLEKS                       R15 R5 K11 ["OnKeyRightClick"]
       23 GETTABLEKS                       R16 R5 K12 ["OnKeyInputBegan"]
       25 GETTABLEKS                       R17 R5 K13 ["OnKeyInputEnded"]
       27 GETTABLEKS                       R19 R5 K14 ["ParentSize"]
       29 GETTABLEKS                       R19 R19 K15 ["X"]
       31 SUB                              R18 R19 R12
       32 LOADN                            R19 1
       33 NEWCLOSURE                       R20 P0
       34 CAPTURE                          REF R19
       35 GETIMPORT                        R21 K17 [ipairs]
       37 MOVE                             R22 R8
       38 CALL                             R21 1 3
       39 FORGPREP_INEXT                   R21
       40 JUMPIFNOTLE                      R2 R24 ; [+104]
       42 JUMPIFNOTLE                      R24 R3 ; [+102]
       44 JUMPIFNOT                        R13 ; [+9]
       45 MOVE                             R28 R1
       46 MOVE                             R29 R25
       47 MOVE                             R30 R4
       48 MOVE                             R31 R19
       49 NAMECALL                         R26 R0 K18 ["renderTrackHierarchy"]
       51 CALL                             R26 5 1
       52 MOVE                             R19 R26
       53 JUMP                             ; [+91]
       54 LOADK                            R27 K19 ["Track_"]
       55 GETTABLEKS                       R28 R25 K20 ["Name"]
       57 CONCAT                           R26 R27 R28
       58 GETUPVAL                         R27 0
       59 GETTABLEKS                       R27 R27 K21 ["createElement"]
       61 GETUPVAL                         R28 1
       62 DUPTABLE                         R29 K27 [{"Track", "IsChannelAnimation", "SelectedKeyframes", "LayoutOrder", "Size", "Width", "StartTick", "EndTick", "ShowCluster", "ZIndex", "OnKeyActivated", "OnKeyRightClick", "OnKeyInputBegan", "OnKeyInputEnded"}]
       63 SETTABLEKS                       R25 R29 K22 ["Track"]
       65 LOADB                            R30 0
       66 SETTABLEKS                       R30 R29 K9 ["IsChannelAnimation"]
       68 SETTABLEKS                       R9 R29 K4 ["SelectedKeyframes"]
       70 SETTABLEKS                       R19 R29 K23 ["LayoutOrder"]
       72 GETIMPORT                        R30 K30 [UDim2.new]
       74 LOADN                            R31 1
       75 LOADN                            R32 0
       76 LOADN                            R33 0
       77 MOVE                             R34 R10
       78 CALL                             R30 4 1
       79 SETTABLEKS                       R30 R29 K24 ["Size"]
       81 SETTABLEKS                       R18 R29 K25 ["Width"]
       83 SETTABLEKS                       R6 R29 K1 ["StartTick"]
       85 SETTABLEKS                       R7 R29 K2 ["EndTick"]
       87 SETTABLEKS                       R4 R29 K26 ["ShowCluster"]
       89 SETTABLEKS                       R11 R29 K6 ["ZIndex"]
       91 SETTABLEKS                       R14 R29 K10 ["OnKeyActivated"]
       93 SETTABLEKS                       R15 R29 K11 ["OnKeyRightClick"]
       95 SETTABLEKS                       R16 R29 K12 ["OnKeyInputBegan"]
       97 SETTABLEKS                       R17 R29 K13 ["OnKeyInputEnded"]
       99 CALL                             R27 2 1
      100 SETTABLE                         R27 R1 R26
      101 ADDK                             R19 R19 K31 [1]
      102 GETTABLEKS                       R26 R25 K32 ["Expanded"]
      104 JUMPIFNOT                        R26 ; [+40]
      105 GETUPVAL                         R27 2
      106 GETTABLEKS                       R27 R27 K33 ["getExpandedSize"]
      108 MOVE                             R28 R25
      109 CALL                             R27 1 1
      110 SUBK                             R26 R27 K31 [1]
      111 LOADN                            R29 1
      112 MOVE                             R27 R26
      113 LOADN                            R28 1
      114 FORNPREP                         R27
      115 LOADK                            R31 K34 ["Fill_"]
      116 GETTABLEKS                       R32 R25 K20 ["Name"]
      118 LOADK                            R33 K35 ["_"]
      119 MOVE                             R34 R29
      120 CONCAT                           R30 R31 R34
      121 GETUPVAL                         R31 0
      122 GETTABLEKS                       R31 R31 K21 ["createElement"]
      124 GETUPVAL                         R32 3
      125 DUPTABLE                         R33 K36 [{"LayoutOrder", "Size", "Width", "ZIndex"}]
      126 SETTABLEKS                       R19 R33 K23 ["LayoutOrder"]
      128 GETIMPORT                        R34 K30 [UDim2.new]
      130 LOADN                            R35 1
      131 LOADN                            R36 0
      132 LOADN                            R37 0
      133 MOVE                             R38 R10
      134 CALL                             R34 4 1
      135 SETTABLEKS                       R34 R33 K24 ["Size"]
      137 SETTABLEKS                       R18 R33 K25 ["Width"]
      139 SETTABLEKS                       R11 R33 K6 ["ZIndex"]
      141 CALL                             R31 2 1
      142 SETTABLE                         R31 R1 R30
      143 ADDK                             R19 R19 K31 [1]
      144 FORNLOOP                         R27
      145 FORGLOOP                         R21 2 [inext] ; [-106]
      147 CLOSEUPVALS                      R19
      148 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["StartTick"]
        4 GETTABLEKS                       R4 R2 K2 ["EndTick"]
        6 GETTABLEKS                       R5 R2 K3 ["Tracks"]
        8 GETTABLEKS                       R6 R2 K4 ["TopTrackIndex"]
       10 LOADN                            R7 0
       11 MOVE                             R8 R6
       12 GETIMPORT                        R9 K6 [ipairs]
       14 MOVE                             R10 R5
       15 CALL                             R9 1 3
       16 FORGPREP_INEXT                   R9
       17 GETTABLEKS                       R14 R13 K7 ["Keyframes"]
       19 JUMPIFNOT                        R14 ; [+26]
       20 JUMPIFNOTLE                      R6 R12 ; [+25]
       22 JUMPIFNOTLE                      R12 R1 ; [+23]
       24 JUMPIFNOTLE                      R8 R12 ; [+21]
       26 GETUPVAL                         R15 0
       27 GETTABLEKS                       R15 R15 K8 ["countVisibleKeyframes"]
       29 MOVE                             R16 R14
       30 MOVE                             R17 R3
       31 MOVE                             R18 R4
       32 CALL                             R15 3 1
       33 ADD                              R7 R7 R15
       34 GETTABLE                         R16 R5 R12
       35 GETTABLEKS                       R16 R16 K9 ["Expanded"]
       37 JUMPIFNOT                        R16 ; [+7]
       38 GETUPVAL                         R16 0
       39 GETTABLEKS                       R16 R16 K10 ["getExpandedSize"]
       41 MOVE                             R17 R13
       42 CALL                             R16 1 1
       43 ADD                              R8 R8 R16
       44 JUMP                             ; [+1]
       45 ADDK                             R8 R8 K11 [1]
       46 FORGLOOP                         R9 2 [inext] ; [-30]
       48 RETURN                           R7 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["TopTrackIndex"]
        4 GETTABLEKS                       R3 R1 K2 ["TrackHeight"]
        6 GETTABLEKS                       R4 R1 K3 ["SummaryTrackHeight"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["Position"]
       12 GETTABLEKS                       R7 R1 K6 ["Size"]
       14 GETTABLEKS                       R8 R1 K7 ["ParentSize"]
       16 GETTABLEKS                       R8 R8 K8 ["Y"]
       18 SUBK                             R10 R2 K9 [1]
       19 SUB                              R13 R8 R4
       20 DIV                              R12 R13 R3
       21 FASTCALL1                        MATH_CEIL R12 ; [+2]
       22 GETIMPORT                        R11 K12 [math.ceil]
       24 CALL                             R11 1 1
       25 ADD                              R9 R10 R11
       26 MOVE                             R13 R9
       27 NAMECALL                         R11 R0 K13 ["countKeyframes"]
       29 CALL                             R11 2 1
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R12 R12 K14 ["MAX_VISIBLE_KEYFRAMES"]
       33 JUMPIFLT                         R12 R11 ; [+2]
       35 LOADB                            R10 0 +1
       36 LOADB                            R10 1
       37 DUPTABLE                         R11 K16 [{"Layout"}]
       38 GETUPVAL                         R12 1
       39 GETTABLEKS                       R12 R12 K17 ["createElement"]
       41 LOADK                            R13 K18 ["UIListLayout"]
       42 DUPTABLE                         R14 K23 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
       43 GETIMPORT                        R15 K26 [Enum.FillDirection.Vertical]
       45 SETTABLEKS                       R15 R14 K19 ["FillDirection"]
       47 GETIMPORT                        R15 K28 [Enum.HorizontalAlignment.Left]
       49 SETTABLEKS                       R15 R14 K20 ["HorizontalAlignment"]
       51 GETIMPORT                        R15 K29 [Enum.SortOrder.LayoutOrder]
       53 SETTABLEKS                       R15 R14 K21 ["SortOrder"]
       55 GETIMPORT                        R15 K31 [Enum.VerticalAlignment.Top]
       57 SETTABLEKS                       R15 R14 K22 ["VerticalAlignment"]
       59 CALL                             R12 2 1
       60 SETTABLEKS                       R12 R11 K15 ["Layout"]
       62 MOVE                             R14 R11
       63 MOVE                             R15 R2
       64 MOVE                             R16 R9
       65 MOVE                             R17 R10
       66 NAMECALL                         R12 R0 K32 ["renderSummaryTrack"]
       68 CALL                             R12 5 0
       69 MOVE                             R14 R11
       70 MOVE                             R15 R2
       71 MOVE                             R16 R9
       72 MOVE                             R17 R10
       73 NAMECALL                         R12 R0 K33 ["renderTracks"]
       75 CALL                             R12 5 0
       76 GETUPVAL                         R12 1
       77 GETTABLEKS                       R12 R12 K17 ["createElement"]
       79 LOADK                            R13 K34 ["Frame"]
       80 DUPTABLE                         R14 K36 [{"Position", "Size", "BackgroundTransparency", "LayoutOrder"}]
       81 SETTABLEKS                       R6 R14 K5 ["Position"]
       83 SETTABLEKS                       R7 R14 K6 ["Size"]
       85 LOADN                            R15 1
       86 SETTABLEKS                       R15 R14 K35 ["BackgroundTransparency"]
       88 SETTABLEKS                       R5 R14 K4 ["LayoutOrder"]
       90 MOVE                             R15 R11
       91 CALL                             R12 3 -1
       92 RETURN                           R12 -1

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
       27 GETTABLEKS                       R4 R4 K11 ["SummaryTrack"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Components"]
       36 GETTABLEKS                       R5 R5 K12 ["DopeSheetTrack"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Components"]
       45 GETTABLEKS                       R6 R6 K13 ["BaseTrack"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K14 ["Util"]
       54 GETTABLEKS                       R7 R7 K15 ["TrackUtils"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Src"]
       61 GETTABLEKS                       R8 R8 K14 ["Util"]
       63 GETTABLEKS                       R8 R8 K16 ["Constants"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K17 ["LuaFlags"]
       70 GETTABLEKS                       R9 R9 K18 ["GetFFlagControlRig"]
       72 CALL                             R8 1 1
       73 GETTABLEKS                       R9 R1 K19 ["PureComponent"]
       75 LOADK                            R11 K20 ["DopeSheet"]
       76 NAMECALL                         R9 R9 K21 ["extend"]
       78 CALL                             R9 2 1
       79 DUPCLOSURE                       R10 K22 [PROTO_0]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R3
       82 SETTABLEKS                       R10 R9 K23 ["renderSummaryTrack"]
       84 DUPCLOSURE                       R10 K24 [PROTO_1]
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R7
       91 SETTABLEKS                       R10 R9 K25 ["renderTrackHierarchy"]
       93 DUPCLOSURE                       R10 K26 [PROTO_3]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R5
       98 SETTABLEKS                       R10 R9 K27 ["renderTracks"]
      100 DUPCLOSURE                       R10 K28 [PROTO_4]
      101 CAPTURE                          VAL R6
      102 SETTABLEKS                       R10 R9 K29 ["countKeyframes"]
      104 DUPCLOSURE                       R10 K30 [PROTO_5]
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R1
      107 SETTABLEKS                       R10 R9 K31 ["render"]
      109 RETURN                           R9 1
