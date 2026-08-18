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
       18 CALL                             R7 0 1
       19 JUMPIFNOT                        R7 ; [+18]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K6 ["Dictionary"]
       23 GETTABLEKS                       R7 R7 K7 ["join"]
       25 MOVE                             R8 R1
       26 NEWTABLE                         R9 1 0
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R10 R10 K5 ["Children"]
       31 GETUPVAL                         R11 2
       32 GETTABLEKS                       R11 R11 K8 ["None"]
       34 SETTABLE                         R11 R9 R10
       35 CALL                             R7 2 1
       36 MOVE                             R1 R7
       37 JUMP                             ; [+5]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K5 ["Children"]
       41 LOADNIL                          R8
       42 SETTABLE                         R8 R1 R7
       43 GETTABLEKS                       R7 R1 K9 ["Events"]
       45 JUMPIFNOT                        R7 ; [+13]
       46 GETTABLEKS                       R8 R7 K10 ["Keyframes"]
       48 JUMPIFNOT                        R8 ; [+10]
       49 GETTABLEKS                       R9 R7 K10 ["Keyframes"]
       51 LENGTH                           R8 R9
       52 LOADN                            R9 0
       53 JUMPIFNOTLT                      R9 R8 ; [+5]
       55 MOVE                             R10 R6
       56 NAMECALL                         R8 R0 K11 ["renderEvents"]
       58 CALL                             R8 2 0
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K12 ["createElement"]
       62 GETUPVAL                         R9 3
       63 NEWTABLE                         R10 0 0
       65 DUPTABLE                         R11 K15 [{"FilterButton", "Markers"}]
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R12 R12 K12 ["createElement"]
       69 GETUPVAL                         R13 4
       70 DUPTABLE                         R14 K21 [{"AnchorPoint", "Size", "Position", "Style", "OnClick"}]
       71 GETIMPORT                        R15 K24 [Vector2.new]
       73 LOADK                            R16 K25 [0.5]
       74 LOADK                            R17 K25 [0.5]
       75 CALL                             R15 2 1
       76 SETTABLEKS                       R15 R14 K16 ["AnchorPoint"]
       78 GETIMPORT                        R15 K28 [UDim2.fromOffset]
       80 GETUPVAL                         R16 5
       81 GETTABLEKS                       R16 R16 K29 ["TOGGLE_EDITOR_BUTTON_WIDTH"]
       83 GETUPVAL                         R17 5
       84 GETTABLEKS                       R17 R17 K30 ["TOGGLE_EDITOR_BUTTON_HEIGHT"]
       86 CALL                             R15 2 1
       87 SETTABLEKS                       R15 R14 K17 ["Size"]
       89 GETIMPORT                        R15 K28 [UDim2.fromOffset]
       91 GETTABLEKS                       R17 R0 K0 ["props"]
       93 GETTABLEKS                       R17 R17 K32 ["TrackPadding"]
       95 DIVK                             R16 R17 K31 [4]
       96 GETUPVAL                         R18 5
       97 GETTABLEKS                       R18 R18 K34 ["TIMELINE_HEIGHT"]
       99 DIVK                             R17 R18 K33 [2]
      100 CALL                             R15 2 1
      101 SETTABLEKS                       R15 R14 K18 ["Position"]
      103 GETTABLEKS                       R15 R2 K35 ["button"]
      105 GETTABLEKS                       R15 R15 K36 ["EventFilter"]
      107 SETTABLEKS                       R15 R14 K19 ["Style"]
      109 GETTABLEKS                       R15 R0 K4 ["showFilterMenu"]
      111 SETTABLEKS                       R15 R14 K20 ["OnClick"]
      113 DUPTABLE                         R15 K40 [{"Image", "Tooltip", "FilterMenu"}]
      114 GETUPVAL                         R16 0
      115 GETTABLEKS                       R16 R16 K12 ["createElement"]
      117 LOADK                            R17 K41 ["ImageLabel"]
      118 DUPTABLE                         R18 K45 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"], ["Image"], ["ImageColor3"]}]
      119 GETTABLEKS                       R19 R2 K46 ["eventTheme"]
      121 GETTABLEKS                       R19 R19 K47 ["filterButton"]
      123 GETTABLEKS                       R19 R19 K48 ["size"]
      125 SETTABLEKS                       R19 R18 K17 ["Size"]
      127 GETIMPORT                        R19 K49 [UDim2.new]
      129 LOADK                            R20 K25 [0.5]
      130 LOADN                            R21 0
      131 LOADK                            R22 K25 [0.5]
      132 LOADN                            R23 0
      133 CALL                             R19 4 1
      134 SETTABLEKS                       R19 R18 K18 ["Position"]
      136 GETIMPORT                        R19 K24 [Vector2.new]
      138 LOADK                            R20 K25 [0.5]
      139 LOADK                            R21 K25 [0.5]
      140 CALL                             R19 2 1
      141 SETTABLEKS                       R19 R18 K16 ["AnchorPoint"]
      143 GETTABLEKS                       R19 R2 K46 ["eventTheme"]
      145 GETTABLEKS                       R19 R19 K47 ["filterButton"]
      147 GETTABLEKS                       R19 R19 K50 ["image"]
      149 SETTABLEKS                       R19 R18 K37 ["Image"]
      151 GETTABLEKS                       R19 R2 K51 ["playbackTheme"]
      153 GETTABLEKS                       R19 R19 K52 ["iconColor"]
      155 SETTABLEKS                       R19 R18 K44 ["ImageColor3"]
      157 CALL                             R16 2 1
      158 SETTABLEKS                       R16 R15 K37 ["Image"]
      160 GETUPVAL                         R16 0
      161 GETTABLEKS                       R16 R16 K12 ["createElement"]
      163 GETUPVAL                         R17 6
      164 DUPTABLE                         R18 K54 [{"Text"}]
      165 LOADK                            R21 K38 ["Tooltip"]
      166 LOADK                            R22 K55 ["FilterEvents"]
      167 NAMECALL                         R19 R3 K56 ["getText"]
      169 CALL                             R19 3 1
      170 SETTABLEKS                       R19 R18 K53 ["Text"]
      172 CALL                             R16 2 1
      173 SETTABLEKS                       R16 R15 K38 ["Tooltip"]
      175 MOVE                             R16 R5
      176 JUMPIFNOT                        R16 ; [+15]
      177 GETUPVAL                         R16 0
      178 GETTABLEKS                       R16 R16 K12 ["createElement"]
      180 GETUPVAL                         R17 7
      181 DUPTABLE                         R18 K59 [{"Actions", "OnMenuOpened"}]
      182 NAMECALL                         R19 R0 K60 ["makeFilterActions"]
      184 CALL                             R19 1 1
      185 SETTABLEKS                       R19 R18 K57 ["Actions"]
      187 GETTABLEKS                       R19 R0 K61 ["hideFilterMenu"]
      189 SETTABLEKS                       R19 R18 K58 ["OnMenuOpened"]
      191 CALL                             R16 2 1
      192 SETTABLEKS                       R16 R15 K39 ["FilterMenu"]
      194 CALL                             R12 3 1
      195 SETTABLEKS                       R12 R11 K13 ["FilterButton"]
      197 GETUPVAL                         R12 0
      198 GETTABLEKS                       R12 R12 K12 ["createElement"]
      200 GETUPVAL                         R13 8
      201 MOVE                             R14 R1
      202 MOVE                             R15 R6
      203 CALL                             R12 3 1
      204 SETTABLEKS                       R12 R11 K14 ["Markers"]
      206 CALL                             R8 3 -1
      207 RETURN                           R8 -1

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
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K17 ["LuaFlags"]
       63 GETTABLEKS                       R10 R10 K18 ["GetFFlagACERoactCompatPrepFixes"]
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R10 R0 K12 ["Src"]
       68 GETTABLEKS                       R10 R10 K19 ["Util"]
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R12 R10 K20 ["Constants"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R13 R10 K21 ["TrackUtils"]
       79 CALL                             R12 1 1
       80 GETTABLEKS                       R13 R3 K22 ["UI"]
       82 GETTABLEKS                       R14 R13 K23 ["Button"]
       84 GETTABLEKS                       R15 R13 K24 ["Pane"]
       86 GETTABLEKS                       R16 R13 K25 ["Tooltip"]
       88 GETTABLEKS                       R17 R1 K26 ["PureComponent"]
       90 LOADK                            R19 K27 ["EventTrack"]
       91 NAMECALL                         R17 R17 K28 ["extend"]
       93 CALL                             R17 2 1
       94 DUPCLOSURE                       R18 K29 [PROTO_2]
       95 SETTABLEKS                       R18 R17 K30 ["init"]
       97 DUPCLOSURE                       R18 K31 [PROTO_6]
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R7
      101 SETTABLEKS                       R18 R17 K32 ["renderEvent"]
      103 DUPCLOSURE                       R18 K33 [PROTO_7]
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R18 R17 K34 ["renderPreviewEvent"]
      108 DUPCLOSURE                       R18 K35 [PROTO_8]
      109 CAPTURE                          VAL R12
      110 SETTABLEKS                       R18 R17 K36 ["renderEvents"]
      112 DUPCLOSURE                       R18 K37 [PROTO_10]
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R2
      115 SETTABLEKS                       R18 R17 K38 ["makeFilterActions"]
      117 DUPCLOSURE                       R18 K39 [PROTO_11]
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R6
      127 SETTABLEKS                       R18 R17 K40 ["render"]
      129 MOVE                             R18 R5
      130 DUPTABLE                         R19 K43 [{"Stylizer", "Localization"}]
      131 GETTABLEKS                       R20 R4 K41 ["Stylizer"]
      133 SETTABLEKS                       R20 R19 K41 ["Stylizer"]
      135 GETTABLEKS                       R20 R4 K42 ["Localization"]
      137 SETTABLEKS                       R20 R19 K42 ["Localization"]
      139 CALL                             R18 1 1
      140 MOVE                             R19 R17
      141 CALL                             R18 1 1
      142 MOVE                             R17 R18
      143 RETURN                           R17 1
