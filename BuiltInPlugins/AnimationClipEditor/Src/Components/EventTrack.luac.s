PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K0 ["showFilterMenu"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K4 ["hideFilterMenu"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnEventRightClick"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnEventInputBegan"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnEventInputEnded"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R4 K1 ["Events"]
        4 GETTABLEKS                       R6 R4 K2 ["EventFilters"]
        6 GETTABLEKS                       R9 R5 K3 ["Data"]
        8 GETTABLE                         R8 R9 R3
        9 JUMPIFNOT                        R8 ; [+10]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K4 ["Dictionary"]
       13 GETTABLEKS                       R7 R7 K5 ["keys"]
       15 GETTABLEKS                       R9 R5 K3 ["Data"]
       17 GETTABLE                         R8 R9 R3
       18 CALL                             R7 1 1
       19 JUMPIF                           R7 ; [+2]
       20 NEWTABLE                         R7 0 0
       22 JUMPIFNOT                        R6 ; [+18]
       23 NEWTABLE                         R8 0 0
       25 MOVE                             R9 R7
       26 LOADNIL                          R10
       27 LOADNIL                          R11
       28 FORGPREP                         R9
       29 GETTABLE                         R14 R6 R13
       30 JUMPIFNOT                        R14 ; [+7]
       31 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
       33 MOVE                             R15 R8
       34 MOVE                             R16 R13
       35 GETIMPORT                        R14 K8 [table.insert]
       37 CALL                             R14 2 0
       38 FORGLOOP                         R9 2 ; [-10]
       40 MOVE                             R7 R8
       41 GETIMPORT                        R8 K10 [table.sort]
       43 MOVE                             R9 R7
       44 CALL                             R8 1 0
       45 GETIMPORT                        R9 K12 [next]
       47 MOVE                             R10 R7
       48 CALL                             R9 1 1
       49 JUMPIFNOT                        R9 ; [+42]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K13 ["createElement"]
       53 GETUPVAL                         R9 2
       54 DUPTABLE                         R10 K21 [{"Selected", "Names", "Position", "ZIndex", "OnRightClick", "OnInputBegan", "OnInputEnded"}]
       55 SETTABLEKS                       R1 R10 K14 ["Selected"]
       57 SETTABLEKS                       R7 R10 K15 ["Names"]
       59 GETIMPORT                        R11 K24 [UDim2.new]
       61 LOADN                            R12 0
       62 MOVE                             R13 R2
       63 LOADK                            R14 K25 [0.5]
       64 LOADN                            R15 0
       65 CALL                             R11 4 1
       66 SETTABLEKS                       R11 R10 K16 ["Position"]
       68 GETTABLEKS                       R11 R4 K17 ["ZIndex"]
       70 SETTABLEKS                       R11 R10 K17 ["ZIndex"]
       72 NEWCLOSURE                       R11 P0
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R11 R10 K18 ["OnRightClick"]
       78 NEWCLOSURE                       R11 P1
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R1
       82 SETTABLEKS                       R11 R10 K19 ["OnInputBegan"]
       84 NEWCLOSURE                       R11 P2
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R11 R10 K20 ["OnInputEnded"]
       90 CALL                             R8 2 1
       91 RETURN                           R8 1
       92 LOADNIL                          R8
       93 RETURN                           R8 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["createElement"]
        5 GETUPVAL                         R5 1
        6 DUPTABLE                         R6 K6 [{["Selected"] = True, ["Position"], ["ZIndex"]}]
        7 GETIMPORT                        R7 K9 [UDim2.new]
        9 LOADN                            R8 0
       10 MOVE                             R9 R1
       11 LOADK                            R10 K10 [0.5]
       12 LOADN                            R11 0
       13 CALL                             R7 4 1
       14 SETTABLEKS                       R7 R6 K4 ["Position"]
       16 GETTABLEKS                       R8 R3 K5 ["ZIndex"]
       18 ADDK                             R7 R8 K11 [1]
       19 SETTABLEKS                       R7 R6 K5 ["ZIndex"]
       21 CALL                             R4 2 -1
       22 RETURN                           R4 -1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Width"]
        4 GETTABLEKS                       R4 R2 K2 ["StartTick"]
        6 GETTABLEKS                       R5 R2 K3 ["EndTick"]
        8 GETTABLEKS                       R6 R2 K4 ["Events"]
       10 GETTABLEKS                       R6 R6 K5 ["Keyframes"]
       12 GETTABLEKS                       R7 R2 K6 ["SelectedEvents"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K7 ["getKeyframesExtents"]
       17 MOVE                             R9 R6
       18 MOVE                             R10 R4
       19 MOVE                             R11 R5
       20 CALL                             R8 3 2
       21 JUMPIFEQKNIL                     R8 ; [+27]
       23 JUMPIFEQKNIL                     R9 ; [+25]
       25 MOVE                             R12 R8
       26 MOVE                             R10 R9
       27 LOADN                            R11 1
       28 FORNPREP                         R10
       29 GETTABLE                         R13 R6 R12
       30 GETUPVAL                         R14 0
       31 GETTABLEKS                       R14 R14 K8 ["getScaledKeyframePosition"]
       33 MOVE                             R15 R13
       34 MOVE                             R16 R4
       35 MOVE                             R17 R5
       36 MOVE                             R18 R3
       37 CALL                             R14 4 1
       38 MOVE                             R15 R7
       39 JUMPIFNOT                        R15 ; [+1]
       40 GETTABLE                         R15 R7 R13
       41 MOVE                             R18 R15
       42 MOVE                             R19 R14
       43 MOVE                             R20 R13
       44 NAMECALL                         R16 R0 K9 ["renderEvent"]
       46 CALL                             R16 4 1
       47 SETTABLE                         R16 R1 R12
       48 FORNLOOP                         R10
       49 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ToggleEventFilter"]
        3 GETTABLEKS                       R2 R0 K1 ["Text"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R1 K2 ["AvailableEvents"]
        8 GETTABLEKS                       R5 R1 K3 ["EventFilters"]
       10 GETIMPORT                        R6 K5 [ipairs]
       12 MOVE                             R7 R4
       13 CALL                             R6 1 3
       14 FORGPREP_INEXT                   R6
       15 DUPTABLE                         R13 K9 [{"Text", "Checked", "OnItemClicked"}]
       16 SETTABLEKS                       R10 R13 K6 ["Text"]
       18 MOVE                             R14 R5
       19 JUMPIFNOT                        R14 ; [+1]
       20 GETTABLE                         R14 R5 R10
       21 SETTABLEKS                       R14 R13 K7 ["Checked"]
       23 NEWCLOSURE                       R14 P0
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R14 R13 K8 ["OnItemClicked"]
       27 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       29 MOVE                             R12 R3
       30 GETIMPORT                        R11 K12 [table.insert]
       32 CALL                             R11 2 0
       33 FORGLOOP                         R6 2 [inext] ; [-19]
       35 LENGTH                           R6 R3
       36 LOADN                            R7 0
       37 JUMPIFNOTLT                      R7 R6 ; [+10]
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R8 R8 K13 ["MENU_SEPARATOR"]
       42 FASTCALL2                        TABLE_INSERT R3 R8 ; [+4]
       44 MOVE                             R7 R3
       45 GETIMPORT                        R6 K12 [table.insert]
       47 CALL                             R6 2 0
       48 DUPTABLE                         R8 K9 [{"Text", "Checked", "OnItemClicked"}]
       49 LOADK                            R11 K14 ["Menu"]
       50 LOADK                            R12 K15 ["Nothing"]
       51 NAMECALL                         R9 R2 K16 ["getText"]
       53 CALL                             R9 3 1
       54 SETTABLEKS                       R9 R8 K6 ["Text"]
       56 LOADB                            R9 0
       57 LENGTH                           R10 R4
       58 LOADN                            R11 0
       59 JUMPIFNOTLT                      R11 R10 ; [+15]
       61 NOT                              R9 R5
       62 JUMPIF                           R9 ; [+12]
       63 GETUPVAL                         R11 1
       64 GETTABLEKS                       R11 R11 K17 ["Dictionary"]
       66 GETTABLEKS                       R11 R11 K18 ["keys"]
       68 MOVE                             R12 R5
       69 CALL                             R11 1 1
       70 LENGTH                           R10 R11
       71 JUMPIFEQKN                       R10 K19 [0] ; [+2]
       73 LOADB                            R9 0 +1
       74 LOADB                            R9 1
       75 SETTABLEKS                       R9 R8 K7 ["Checked"]
       77 GETTABLEKS                       R9 R0 K0 ["props"]
       79 GETTABLEKS                       R9 R9 K20 ["ClearEventFilters"]
       81 SETTABLEKS                       R9 R8 K8 ["OnItemClicked"]
       83 FASTCALL2                        TABLE_INSERT R3 R8 ; [+4]
       85 MOVE                             R7 R3
       86 GETIMPORT                        R6 K12 [table.insert]
       88 CALL                             R6 2 0
       89 DUPTABLE                         R8 K9 [{"Text", "Checked", "OnItemClicked"}]
       90 LOADK                            R11 K14 ["Menu"]
       91 LOADK                            R12 K21 ["Everything"]
       92 NAMECALL                         R9 R2 K16 ["getText"]
       94 CALL                             R9 3 1
       95 SETTABLEKS                       R9 R8 K6 ["Text"]
       97 NOT                              R9 R5
       98 JUMPIF                           R9 ; [+13]
       99 GETUPVAL                         R11 1
      100 GETTABLEKS                       R11 R11 K17 ["Dictionary"]
      102 GETTABLEKS                       R11 R11 K18 ["keys"]
      104 MOVE                             R12 R5
      105 CALL                             R11 1 1
      106 LENGTH                           R10 R11
      107 LENGTH                           R11 R4
      108 JUMPIFEQ                         R10 R11 ; [+2]
      110 LOADB                            R9 0 +1
      111 LOADB                            R9 1
      112 SETTABLEKS                       R9 R8 K7 ["Checked"]
      114 GETTABLEKS                       R9 R0 K0 ["props"]
      116 GETTABLEKS                       R9 R9 K22 ["SetAllEventFilters"]
      118 SETTABLEKS                       R9 R8 K8 ["OnItemClicked"]
      120 FASTCALL2                        TABLE_INSERT R3 R8 ; [+4]
      122 MOVE                             R7 R3
      123 GETIMPORT                        R6 K12 [table.insert]
      125 CALL                             R6 2 0
      126 RETURN                           R3 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R5 R4 K4 ["showFilterMenu"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K5 ["Children"]
       13 GETTABLE                         R6 R1 R7
       14 JUMPIF                           R6 ; [+2]
       15 NEWTABLE                         R6 0 0
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K6 ["Dictionary"]
       20 GETTABLEKS                       R7 R7 K7 ["join"]
       22 MOVE                             R8 R1
       23 NEWTABLE                         R9 1 0
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K5 ["Children"]
       28 GETUPVAL                         R11 1
       29 GETTABLEKS                       R11 R11 K8 ["None"]
       31 SETTABLE                         R11 R9 R10
       32 CALL                             R7 2 1
       33 MOVE                             R1 R7
       34 GETTABLEKS                       R7 R1 K9 ["Events"]
       36 JUMPIFNOT                        R7 ; [+13]
       37 GETTABLEKS                       R8 R7 K10 ["Keyframes"]
       39 JUMPIFNOT                        R8 ; [+10]
       40 GETTABLEKS                       R9 R7 K10 ["Keyframes"]
       42 LENGTH                           R8 R9
       43 LOADN                            R9 0
       44 JUMPIFNOTLT                      R9 R8 ; [+5]
       46 MOVE                             R10 R6
       47 NAMECALL                         R8 R0 K11 ["renderEvents"]
       49 CALL                             R8 2 0
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K12 ["createElement"]
       53 GETUPVAL                         R9 2
       54 NEWTABLE                         R10 0 0
       56 DUPTABLE                         R11 K15 [{"FilterButton", "Markers"}]
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R12 R12 K12 ["createElement"]
       60 GETUPVAL                         R13 3
       61 DUPTABLE                         R14 K21 [{"AnchorPoint", "Size", "Position", "Style", "OnClick"}]
       62 GETIMPORT                        R15 K24 [Vector2.new]
       64 LOADK                            R16 K25 [0.5]
       65 LOADK                            R17 K25 [0.5]
       66 CALL                             R15 2 1
       67 SETTABLEKS                       R15 R14 K16 ["AnchorPoint"]
       69 GETIMPORT                        R15 K28 [UDim2.fromOffset]
       71 GETUPVAL                         R16 4
       72 GETTABLEKS                       R16 R16 K29 ["TOGGLE_EDITOR_BUTTON_WIDTH"]
       74 GETUPVAL                         R17 4
       75 GETTABLEKS                       R17 R17 K30 ["TOGGLE_EDITOR_BUTTON_HEIGHT"]
       77 CALL                             R15 2 1
       78 SETTABLEKS                       R15 R14 K17 ["Size"]
       80 GETIMPORT                        R15 K28 [UDim2.fromOffset]
       82 GETTABLEKS                       R17 R0 K0 ["props"]
       84 GETTABLEKS                       R17 R17 K32 ["TrackPadding"]
       86 DIVK                             R16 R17 K31 [4]
       87 GETUPVAL                         R18 4
       88 GETTABLEKS                       R18 R18 K34 ["TIMELINE_HEIGHT"]
       90 DIVK                             R17 R18 K33 [2]
       91 CALL                             R15 2 1
       92 SETTABLEKS                       R15 R14 K18 ["Position"]
       94 GETTABLEKS                       R15 R2 K35 ["button"]
       96 GETTABLEKS                       R15 R15 K36 ["EventFilter"]
       98 SETTABLEKS                       R15 R14 K19 ["Style"]
      100 GETTABLEKS                       R15 R0 K4 ["showFilterMenu"]
      102 SETTABLEKS                       R15 R14 K20 ["OnClick"]
      104 DUPTABLE                         R15 K40 [{"Image", "Tooltip", "FilterMenu"}]
      105 GETUPVAL                         R16 0
      106 GETTABLEKS                       R16 R16 K12 ["createElement"]
      108 LOADK                            R17 K41 ["ImageLabel"]
      109 DUPTABLE                         R18 K45 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"], ["Image"], ["ImageColor3"]}]
      110 GETTABLEKS                       R19 R2 K46 ["eventTheme"]
      112 GETTABLEKS                       R19 R19 K47 ["filterButton"]
      114 GETTABLEKS                       R19 R19 K48 ["size"]
      116 SETTABLEKS                       R19 R18 K17 ["Size"]
      118 GETIMPORT                        R19 K49 [UDim2.new]
      120 LOADK                            R20 K25 [0.5]
      121 LOADN                            R21 0
      122 LOADK                            R22 K25 [0.5]
      123 LOADN                            R23 0
      124 CALL                             R19 4 1
      125 SETTABLEKS                       R19 R18 K18 ["Position"]
      127 GETIMPORT                        R19 K24 [Vector2.new]
      129 LOADK                            R20 K25 [0.5]
      130 LOADK                            R21 K25 [0.5]
      131 CALL                             R19 2 1
      132 SETTABLEKS                       R19 R18 K16 ["AnchorPoint"]
      134 GETTABLEKS                       R19 R2 K46 ["eventTheme"]
      136 GETTABLEKS                       R19 R19 K47 ["filterButton"]
      138 GETTABLEKS                       R19 R19 K50 ["image"]
      140 SETTABLEKS                       R19 R18 K37 ["Image"]
      142 GETTABLEKS                       R19 R2 K51 ["playbackTheme"]
      144 GETTABLEKS                       R19 R19 K52 ["iconColor"]
      146 SETTABLEKS                       R19 R18 K44 ["ImageColor3"]
      148 CALL                             R16 2 1
      149 SETTABLEKS                       R16 R15 K37 ["Image"]
      151 GETUPVAL                         R16 0
      152 GETTABLEKS                       R16 R16 K12 ["createElement"]
      154 GETUPVAL                         R17 5
      155 DUPTABLE                         R18 K54 [{"Text"}]
      156 LOADK                            R21 K38 ["Tooltip"]
      157 LOADK                            R22 K55 ["FilterEvents"]
      158 NAMECALL                         R19 R3 K56 ["getText"]
      160 CALL                             R19 3 1
      161 SETTABLEKS                       R19 R18 K53 ["Text"]
      163 CALL                             R16 2 1
      164 SETTABLEKS                       R16 R15 K38 ["Tooltip"]
      166 MOVE                             R16 R5
      167 JUMPIFNOT                        R16 ; [+15]
      168 GETUPVAL                         R16 0
      169 GETTABLEKS                       R16 R16 K12 ["createElement"]
      171 GETUPVAL                         R17 6
      172 DUPTABLE                         R18 K59 [{"Actions", "OnMenuOpened"}]
      173 NAMECALL                         R19 R0 K60 ["makeFilterActions"]
      175 CALL                             R19 1 1
      176 SETTABLEKS                       R19 R18 K57 ["Actions"]
      178 GETTABLEKS                       R19 R0 K61 ["hideFilterMenu"]
      180 SETTABLEKS                       R19 R18 K58 ["OnMenuOpened"]
      182 CALL                             R16 2 1
      183 SETTABLEKS                       R16 R15 K39 ["FilterMenu"]
      185 CALL                             R12 3 1
      186 SETTABLEKS                       R12 R11 K13 ["FilterButton"]
      188 GETUPVAL                         R12 0
      189 GETTABLEKS                       R12 R12 K12 ["createElement"]
      191 GETUPVAL                         R13 7
      192 MOVE                             R14 R1
      193 MOVE                             R15 R6
      194 CALL                             R12 3 1
      195 SETTABLEKS                       R12 R11 K14 ["Markers"]
      197 CALL                             R8 3 -1
      198 RETURN                           R8 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Components"]
       38 GETTABLEKS                       R7 R7 K14 ["BaseTrack"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K13 ["Components"]
       47 GETTABLEKS                       R8 R8 K15 ["EventMarker"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Src"]
       54 GETTABLEKS                       R9 R9 K13 ["Components"]
       56 GETTABLEKS                       R9 R9 K16 ["ContextMenu"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R0 K12 ["Src"]
       61 GETTABLEKS                       R9 R9 K17 ["Util"]
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R9 K18 ["Constants"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R12 R9 K19 ["TrackUtils"]
       72 CALL                             R11 1 1
       73 GETTABLEKS                       R12 R3 K20 ["UI"]
       75 GETTABLEKS                       R13 R12 K21 ["Button"]
       77 GETTABLEKS                       R14 R12 K22 ["Pane"]
       79 GETTABLEKS                       R15 R12 K23 ["Tooltip"]
       81 GETTABLEKS                       R16 R1 K24 ["PureComponent"]
       83 LOADK                            R18 K25 ["EventTrack"]
       84 NAMECALL                         R16 R16 K26 ["extend"]
       86 CALL                             R16 2 1
       87 DUPCLOSURE                       R17 K27 [PROTO_2]
       88 SETTABLEKS                       R17 R16 K28 ["init"]
       90 DUPCLOSURE                       R17 K29 [PROTO_6]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R7
       94 SETTABLEKS                       R17 R16 K30 ["renderEvent"]
       96 DUPCLOSURE                       R17 K31 [PROTO_7]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R7
       99 SETTABLEKS                       R17 R16 K32 ["renderPreviewEvent"]
      101 DUPCLOSURE                       R17 K33 [PROTO_8]
      102 CAPTURE                          VAL R11
      103 SETTABLEKS                       R17 R16 K34 ["renderEvents"]
      105 DUPCLOSURE                       R17 K35 [PROTO_10]
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R2
      108 SETTABLEKS                       R17 R16 K36 ["makeFilterActions"]
      110 DUPCLOSURE                       R17 K37 [PROTO_11]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R6
      119 SETTABLEKS                       R17 R16 K38 ["render"]
      121 MOVE                             R17 R5
      122 DUPTABLE                         R18 K41 [{"Stylizer", "Localization"}]
      123 GETTABLEKS                       R19 R4 K39 ["Stylizer"]
      125 SETTABLEKS                       R19 R18 K39 ["Stylizer"]
      127 GETTABLEKS                       R19 R4 K40 ["Localization"]
      129 SETTABLEKS                       R19 R18 K40 ["Localization"]
      131 CALL                             R17 1 1
      132 MOVE                             R18 R16
      133 CALL                             R17 1 1
      134 MOVE                             R16 R17
      135 RETURN                           R16 1
