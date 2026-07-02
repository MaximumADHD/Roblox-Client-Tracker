PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FOUNDATION_BUTTON_FONT"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["FOUNDATION_BUTTON_TEXT_SIZE"]
        6 LOADNIL                          R4
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K2 ["LINKTYPE_EDIT"]
       10 JUMPIFNOTEQ                      R1 R5 ; [+8]
       12 LOADK                            R7 K3 ["Buttons"]
       13 LOADK                            R8 K4 ["CopyEditLink"]
       14 NAMECALL                         R5 R0 K5 ["getText"]
       16 CALL                             R5 3 1
       17 MOVE                             R4 R5
       18 JUMP                             ; [+6]
       19 LOADK                            R7 K3 ["Buttons"]
       20 LOADK                            R8 K6 ["CopyTeamTestLink"]
       21 NAMECALL                         R5 R0 K5 ["getText"]
       23 CALL                             R5 3 1
       24 MOVE                             R4 R5
       25 LOADK                            R7 K3 ["Buttons"]
       26 LOADK                            R8 K7 ["Copied"]
       27 NAMECALL                         R5 R0 K5 ["getText"]
       29 CALL                             R5 3 1
       30 GETUPVAL                         R6 1
       31 MOVE                             R8 R4
       32 MOVE                             R9 R3
       33 MOVE                             R10 R2
       34 GETIMPORT                        R11 K10 [Vector2.new]
       36 LOADK                            R12 K11 [∞]
       37 LOADK                            R13 K11 [∞]
       38 CALL                             R11 2 -1
       39 NAMECALL                         R6 R6 K12 ["GetTextSize"]
       41 CALL                             R6 -1 1
       42 GETUPVAL                         R7 1
       43 MOVE                             R9 R5
       44 MOVE                             R10 R3
       45 MOVE                             R11 R2
       46 GETIMPORT                        R12 K10 [Vector2.new]
       48 LOADK                            R13 K11 [∞]
       49 LOADK                            R14 K11 [∞]
       50 CALL                             R12 2 -1
       51 NAMECALL                         R7 R7 K12 ["GetTextSize"]
       53 CALL                             R7 -1 1
       54 GETTABLEKS                       R9 R6 K13 ["X"]
       56 GETTABLEKS                       R10 R7 K13 ["X"]
       58 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       60 GETIMPORT                        R8 K16 [math.max]
       62 CALL                             R8 2 1
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R12 R12 K17 ["FOUNDATION_BUTTON_ICON_WIDTH"]
       66 ADD                              R11 R8 R12
       67 GETUPVAL                         R12 0
       68 GETTABLEKS                       R12 R12 K18 ["FOUNDATION_BUTTON_ICON_TEXT_PADDING"]
       70 ADD                              R10 R11 R12
       71 GETUPVAL                         R11 0
       72 GETTABLEKS                       R11 R11 K19 ["FOUNDATION_BUTTON_PADDING"]
       74 ADD                              R9 R10 R11
       75 FASTCALL1                        MATH_CEIL R9 ; [+3]
       76 MOVE                             R11 R9
       77 GETIMPORT                        R10 K21 [math.ceil]
       79 CALL                             R10 1 1
       80 RETURN                           R10 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+4]
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R1 K0 ["current"]
        6 ADDK                             R2 R2 K1 [1]
        7 SETTABLEKS                       R2 R1 K0 ["current"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["current"]
       12 GETIMPORT                        R2 K3 [delay]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["COPIED_INDICATOR_DURATION"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U0
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["CopyToClipboard"]
        4 CALL                             R3 2 0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R3 1 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R3 K1 ["current"]
       11 ADDK                             R4 R4 K2 [1]
       12 SETTABLEKS                       R4 R3 K1 ["current"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K1 ["current"]
       17 GETIMPORT                        R4 K4 [delay]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K5 ["COPIED_INDICATOR_DURATION"]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U1
       26 CALL                             R4 2 0
       27 GETUPVAL                         R3 4
       28 JUMPIFNOT                        R3 ; [+14]
       29 GETUPVAL                         R3 5
       30 JUMPIFNOT                        R3 ; [+12]
       31 GETUPVAL                         R3 6
       32 JUMPIFNOT                        R3 ; [+10]
       33 GETUPVAL                         R3 5
       34 GETUPVAL                         R5 6
       35 DUPTABLE                         R6 K8 [{"linkType", "teamCreateEnabledForCopy"}]
       36 SETTABLEKS                       R1 R6 K6 ["linkType"]
       38 SETTABLEKS                       R2 R6 K7 ["teamCreateEnabledForCopy"]
       40 NAMECALL                         R3 R3 K9 ["logRobloxTelemetryEvent"]
       42 CALL                             R3 3 0
       43 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R2
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 CALL                             R3 3 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 2
       10 JUMPIFNOT                        R3 ; [+10]
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 NAMECALL                         R3 R3 K0 ["andThen"]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKS                    R0 K0 ["CONTINUE"] ; [+31]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R1
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R2
        8 MOVE                             R5 R1
        9 LOADB                            R6 1
       10 CALL                             R3 3 0
       11 JUMP                             ; [+13]
       12 GETUPVAL                         R3 3
       13 JUMPIFNOT                        R3 ; [+11]
       14 GETUPVAL                         R3 3
       15 MOVE                             R4 R1
       16 CALL                             R3 1 1
       17 LOADB                            R6 1
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R6
       22 NAMECALL                         R3 R3 K1 ["andThen"]
       24 CALL                             R3 2 0
       25 GETUPVAL                         R1 4
       26 JUMPIFNOT                        R1 ; [+3]
       27 GETUPVAL                         R1 5
       28 CALL                             R1 0 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 6
       31 CALL                             R1 0 0
       32 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+23]
        2 GETUPVAL                         R2 1
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R2 2
        6 MOVE                             R3 R1
        7 MOVE                             R4 R0
        8 LOADB                            R5 0
        9 CALL                             R2 3 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 3
       12 JUMPIFNOT                        R2 ; [+135]
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 LOADB                            R5 0
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R5
       21 NAMECALL                         R2 R2 K0 ["andThen"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0
       25 NEWTABLE                         R1 0 2
       27 DUPTABLE                         R2 K4 [{["Key"] = "CANCEL", ["Text"]}]
       28 GETUPVAL                         R3 4
       29 LOADK                            R5 K5 ["Buttons"]
       30 LOADK                            R6 K6 ["Cancel"]
       31 NAMECALL                         R3 R3 K7 ["getText"]
       33 CALL                             R3 3 1
       34 SETTABLEKS                       R3 R2 K3 ["Text"]
       36 DUPTABLE                         R3 K11 [{["Key"] = "CONTINUE", ["Text"], ["Style"] = "RoundPrimary"}]
       37 GETUPVAL                         R4 4
       38 LOADK                            R6 K5 ["Buttons"]
       39 LOADK                            R7 K12 ["Continue"]
       40 NAMECALL                         R4 R4 K7 ["getText"]
       42 CALL                             R4 3 1
       43 SETTABLEKS                       R4 R3 K3 ["Text"]
       45 SETLIST                          R1 R2 2 [1]
       47 GETUPVAL                         R2 5
       48 GETUPVAL                         R3 6
       49 GETUPVAL                         R4 4
       50 GETUPVAL                         R5 7
       51 DUPTABLE                         R6 K20 [{["Buttons"], ["MinContentSize"], ["Style"] = "EnableTeamCreateDialog", ["OnButtonPressed"], ["OnClose"], ["Title"], ["Modal"] = True}]
       52 SETTABLEKS                       R1 R6 K5 ["Buttons"]
       54 GETUPVAL                         R7 8
       55 GETTABLEKS                       R7 R7 K21 ["enableTeamCreateDialog"]
       57 GETTABLEKS                       R7 R7 K22 ["Size"]
       59 SETTABLEKS                       R7 R6 K13 ["MinContentSize"]
       61 NEWCLOSURE                       R7 P1
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          UPVAL U9
       67 CAPTURE                          UPVAL U10
       68 CAPTURE                          UPVAL U11
       69 SETTABLEKS                       R7 R6 K15 ["OnButtonPressed"]
       71 DUPCLOSURE                       R7 K23 [PROTO_9]
       72 SETTABLEKS                       R7 R6 K16 ["OnClose"]
       74 GETUPVAL                         R7 4
       75 LOADK                            R9 K17 ["Title"]
       76 LOADK                            R10 K24 ["EnableTeamCreate"]
       77 NAMECALL                         R7 R7 K7 ["getText"]
       79 CALL                             R7 3 1
       80 SETTABLEKS                       R7 R6 K17 ["Title"]
       82 DUPTABLE                         R7 K26 [{"Contents"}]
       83 GETUPVAL                         R8 12
       84 GETTABLEKS                       R8 R8 K27 ["createElement"]
       86 LOADK                            R9 K28 ["TextLabel"]
       87 DUPTABLE                         R10 K37 [{["BackgroundTransparency"] = 1, ["TextSize"], ["Text"], ["TextColor3"], ["Font"], ["Size"], ["AnchorPoint"], ["Position"], ["TextWrapped"] = True}]
       88 GETUPVAL                         R11 8
       89 GETTABLEKS                       R11 R11 K21 ["enableTeamCreateDialog"]
       91 GETTABLEKS                       R11 R11 K3 ["Text"]
       93 GETTABLEKS                       R11 R11 K31 ["TextSize"]
       95 SETTABLEKS                       R11 R10 K31 ["TextSize"]
       97 GETUPVAL                         R11 4
       98 LOADK                            R13 K38 ["Description"]
       99 LOADK                            R14 K39 ["CopyingLinkWillEnableTeamCreate"]
      100 NAMECALL                         R11 R11 K7 ["getText"]
      102 CALL                             R11 3 1
      103 SETTABLEKS                       R11 R10 K3 ["Text"]
      105 GETUPVAL                         R11 8
      106 GETTABLEKS                       R11 R11 K21 ["enableTeamCreateDialog"]
      108 GETTABLEKS                       R11 R11 K3 ["Text"]
      110 GETTABLEKS                       R11 R11 K32 ["TextColor3"]
      112 SETTABLEKS                       R11 R10 K32 ["TextColor3"]
      114 GETUPVAL                         R11 8
      115 GETTABLEKS                       R11 R11 K21 ["enableTeamCreateDialog"]
      117 GETTABLEKS                       R11 R11 K3 ["Text"]
      119 GETTABLEKS                       R11 R11 K33 ["Font"]
      121 SETTABLEKS                       R11 R10 K33 ["Font"]
      123 GETIMPORT                        R11 K42 [UDim2.fromScale]
      125 LOADN                            R12 1
      126 LOADN                            R13 1
      127 CALL                             R11 2 1
      128 SETTABLEKS                       R11 R10 K22 ["Size"]
      130 GETIMPORT                        R11 K45 [Vector2.new]
      132 LOADK                            R12 K46 [0.5]
      133 LOADK                            R13 K46 [0.5]
      134 CALL                             R11 2 1
      135 SETTABLEKS                       R11 R10 K34 ["AnchorPoint"]
      137 GETUPVAL                         R11 8
      138 GETTABLEKS                       R11 R11 K21 ["enableTeamCreateDialog"]
      140 GETTABLEKS                       R11 R11 K35 ["Position"]
      142 SETTABLEKS                       R11 R10 K35 ["Position"]
      144 CALL                             R8 2 1
      145 SETTABLEKS                       R8 R7 K25 ["Contents"]
      147 CALL                             R2 5 0
      148 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["IsEdit"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RunState"]
        2 NAMECALL                         R0 R0 K1 ["GetPropertyChangedSignal"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R0 R0 K2 ["Connect"]
       10 CALL                             R0 2 1
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["LINKTYPE_TEAM_TEST"]
        5 JUMP                             ; [+3]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["LINKTYPE_EDIT"]
        9 GETUPVAL                         R1 2
       10 JUMPIF                           R1 ; [+6]
       11 GETUPVAL                         R1 3
       12 JUMPIFNOTEQ                      R1 R0 ; [+4]
       14 GETUPVAL                         R1 4
       15 LOADNIL                          R2
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R1 K4 [{[1] = "chain-link", ["text"], ["onActivated"]}]
        1 GETUPVAL                         R3 0
        2 JUMPIFNOTEQ                      R3 R0 ; [+8]
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K5 ["Buttons"]
        6 LOADK                            R5 K6 ["Copied"]
        7 NAMECALL                         R2 R2 K7 ["getText"]
        9 CALL                             R2 3 1
       10 JUMP                             ; [+13]
       11 GETUPVAL                         R2 1
       12 LOADK                            R4 K5 ["Buttons"]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K8 ["LINKTYPE_EDIT"]
       16 JUMPIFNOTEQ                      R0 R6 ; [+3]
       18 LOADK                            R5 K9 ["CopyEditLink"]
       19 JUMP                             ; [+1]
       20 LOADK                            R5 K10 ["CopyTeamTestLink"]
       21 NAMECALL                         R2 R2 K7 ["getText"]
       23 CALL                             R2 3 1
       24 SETTABLEKS                       R2 R1 K2 ["text"]
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R2 R1 K3 ["onActivated"]
       31 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["Localization"]
        2 GETTABLEKS                       R2 R0 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K2 ["IsTeamCreateEnabled"]
        6 GETTABLEKS                       R4 R0 K3 ["HasUnsavedChanges"]
        8 GETTABLEKS                       R5 R0 K4 ["HasCollaborators"]
       10 GETTABLEKS                       R6 R0 K5 ["Plugin"]
       12 GETTABLEKS                       R7 R0 K6 ["SaveThenTurnOnTeamCreate"]
       14 GETTABLEKS                       R8 R0 K7 ["TurnOnTeamCreate"]
       16 GETTABLEKS                       R9 R0 K8 ["Links"]
       18 GETTABLEKS                       R10 R0 K9 ["FetchLink"]
       20 MOVE                             R11 R4
       21 JUMPIF                           R11 ; [+2]
       22 NOT                              R12 R3
       23 AND                              R11 R12 R5
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R12 R12 K10 ["useState"]
       27 GETUPVAL                         R13 1
       28 NAMECALL                         R13 R13 K11 ["IsEdit"]
       30 CALL                             R13 1 -1
       31 CALL                             R12 -1 2
       32 GETUPVAL                         R14 0
       33 GETTABLEKS                       R14 R14 K10 ["useState"]
       35 LOADB                            R15 0
       36 CALL                             R14 1 2
       37 GETUPVAL                         R16 0
       38 GETTABLEKS                       R16 R16 K10 ["useState"]
       40 LOADNIL                          R17
       41 CALL                             R16 1 2
       42 GETUPVAL                         R18 0
       43 GETTABLEKS                       R18 R18 K12 ["useRef"]
       45 LOADN                            R19 0
       46 CALL                             R18 1 1
       47 JUMPIFNOT                        R12 ; [+4]
       48 GETUPVAL                         R19 2
       49 GETTABLEKS                       R19 R19 K13 ["LINKTYPE_EDIT"]
       51 JUMP                             ; [+3]
       52 GETUPVAL                         R19 2
       53 GETTABLEKS                       R19 R19 K14 ["LINKTYPE_TEAM_TEST"]
       55 JUMPIFNOT                        R12 ; [+4]
       56 GETUPVAL                         R20 2
       57 GETTABLEKS                       R20 R20 K14 ["LINKTYPE_TEAM_TEST"]
       59 JUMP                             ; [+3]
       60 GETUPVAL                         R20 2
       61 GETTABLEKS                       R20 R20 K13 ["LINKTYPE_EDIT"]
       63 GETUPVAL                         R21 0
       64 GETTABLEKS                       R21 R21 K15 ["useMemo"]
       66 NEWCLOSURE                       R22 P0
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R19
       70 NEWTABLE                         R23 0 2
       72 MOVE                             R24 R1
       73 MOVE                             R25 R19
       74 SETLIST                          R23 R24 2 [1]
       76 CALL                             R21 2 1
       77 GETUPVAL                         R22 0
       78 GETTABLEKS                       R22 R22 K15 ["useMemo"]
       80 NEWCLOSURE                       R23 P1
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R20
       84 NEWTABLE                         R24 0 2
       86 MOVE                             R25 R1
       87 MOVE                             R26 R20
       88 SETLIST                          R24 R25 2 [1]
       90 CALL                             R22 2 1
       91 NEWCLOSURE                       R23 P2
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R18
       94 CAPTURE                          UPVAL U2
       95 NEWCLOSURE                       R24 P3
       96 CAPTURE                          UPVAL U4
       97 CAPTURE                          VAL R17
       98 CAPTURE                          VAL R18
       99 CAPTURE                          UPVAL U2
      100 CAPTURE                          UPVAL U5
      101 CAPTURE                          UPVAL U6
      102 CAPTURE                          UPVAL U7
      103 NEWCLOSURE                       R25 P4
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R24
      106 CAPTURE                          VAL R10
      107 NEWCLOSURE                       R26 P5
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R24
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R1
      113 CAPTURE                          UPVAL U8
      114 CAPTURE                          VAL R6
      115 CAPTURE                          UPVAL U9
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R8
      120 CAPTURE                          UPVAL U0
      121 GETUPVAL                         R27 0
      122 GETTABLEKS                       R27 R27 K16 ["useEffect"]
      124 NEWCLOSURE                       R28 P6
      125 CAPTURE                          UPVAL U1
      126 CAPTURE                          VAL R13
      127 NEWTABLE                         R29 0 0
      129 CALL                             R27 2 0
      130 GETUPVAL                         R27 0
      131 GETTABLEKS                       R27 R27 K16 ["useEffect"]
      133 NEWCLOSURE                       R28 P7
      134 CAPTURE                          VAL R12
      135 CAPTURE                          UPVAL U2
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R17
      139 NEWTABLE                         R29 0 3
      141 MOVE                             R30 R14
      142 MOVE                             R31 R16
      143 MOVE                             R32 R12
      144 SETLIST                          R29 R30 3 [1]
      146 CALL                             R27 2 0
      147 NEWCLOSURE                       R27 P8
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R1
      150 CAPTURE                          UPVAL U2
      151 CAPTURE                          VAL R26
      152 NEWTABLE                         R28 2 0
      154 GETUPVAL                         R29 2
      155 GETTABLEKS                       R29 R29 K17 ["BUTTONTYPE_PRIMARY"]
      157 MOVE                             R30 R27
      158 MOVE                             R31 R19
      159 CALL                             R30 1 1
      160 SETTABLE                         R30 R28 R29
      161 GETUPVAL                         R29 2
      162 GETTABLEKS                       R29 R29 K18 ["BUTTONTYPE_SECONDARY"]
      164 MOVE                             R30 R27
      165 MOVE                             R31 R20
      166 CALL                             R30 1 1
      167 SETTABLE                         R30 R28 R29
      168 GETUPVAL                         R29 0
      169 GETTABLEKS                       R29 R29 K19 ["createElement"]
      171 GETUPVAL                         R30 10
      172 GETTABLEKS                       R30 R30 K20 ["Root"]
      174 DUPTABLE                         R31 K22 [{"isOpen"}]
      175 SETTABLEKS                       R14 R31 K21 ["isOpen"]
      177 DUPTABLE                         R32 K25 [{"CopyLinkButton", "CopyLinkButtonPopover"}]
      178 GETUPVAL                         R33 0
      179 GETTABLEKS                       R33 R33 K19 ["createElement"]
      181 GETUPVAL                         R34 10
      182 GETTABLEKS                       R34 R34 K26 ["Anchor"]
      184 DUPTABLE                         R35 K28 [{"LayoutOrder"}]
      185 GETTABLEKS                       R37 R0 K27 ["LayoutOrder"]
      187 ORK                              R36 R37 K29 [1]
      188 SETTABLEKS                       R36 R35 K27 ["LayoutOrder"]
      190 GETUPVAL                         R36 0
      191 GETTABLEKS                       R36 R36 K19 ["createElement"]
      193 LOADK                            R37 K30 ["CanvasGroup"]
      194 DUPTABLE                         R38 K35 [{["AutomaticSize"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      195 GETIMPORT                        R39 K38 [Enum.AutomaticSize.XY]
      197 SETTABLEKS                       R39 R38 K31 ["AutomaticSize"]
      199 GETTABLEKS                       R39 R2 K39 ["buttonBar"]
      201 GETTABLEKS                       R39 R39 K40 ["backgroundColor"]
      203 SETTABLEKS                       R39 R38 K32 ["BackgroundColor3"]
      205 NEWTABLE                         R39 4 1
      207 GETUPVAL                         R40 0
      208 GETTABLEKS                       R40 R40 K19 ["createElement"]
      210 LOADK                            R41 K41 ["UICorner"]
      211 DUPTABLE                         R42 K43 [{"CornerRadius"}]
      212 GETIMPORT                        R43 K46 [UDim.new]
      214 LOADN                            R44 0
      215 LOADN                            R45 8
      216 CALL                             R43 2 1
      217 SETTABLEKS                       R43 R42 K42 ["CornerRadius"]
      219 CALL                             R40 2 1
      220 SETLIST                          R39 R40 1 [1]
      222 GETUPVAL                         R41 0
      223 GETTABLEKS                       R41 R41 K19 ["createElement"]
      225 LOADK                            R42 K47 ["UIListLayout"]
      226 DUPTABLE                         R43 K52 [{"SortOrder", "FillDirection", "ItemLineAlignment", "Padding"}]
      227 GETIMPORT                        R44 K53 [Enum.SortOrder.LayoutOrder]
      229 SETTABLEKS                       R44 R43 K48 ["SortOrder"]
      231 GETIMPORT                        R44 K55 [Enum.FillDirection.Horizontal]
      233 SETTABLEKS                       R44 R43 K49 ["FillDirection"]
      235 GETIMPORT                        R44 K57 [Enum.ItemLineAlignment.Center]
      237 SETTABLEKS                       R44 R43 K50 ["ItemLineAlignment"]
      239 GETIMPORT                        R44 K46 [UDim.new]
      241 LOADN                            R45 0
      242 LOADN                            R46 2
      243 CALL                             R44 2 1
      244 SETTABLEKS                       R44 R43 K51 ["Padding"]
      246 CALL                             R41 2 1
      247 SETTABLEKS                       R41 R39 K58 ["Layout"]
      249 GETUPVAL                         R41 0
      250 GETTABLEKS                       R41 R41 K19 ["createElement"]
      252 GETUPVAL                         R42 11
      253 GETUPVAL                         R43 12
      254 GETTABLEKS                       R43 R43 K59 ["Dictionary"]
      256 GETTABLEKS                       R43 R43 K60 ["join"]
      258 GETUPVAL                         R45 2
      259 GETTABLEKS                       R45 R45 K17 ["BUTTONTYPE_PRIMARY"]
      261 GETTABLE                         R44 R28 R45
      262 DUPTABLE                         R45 K62 [{"width"}]
      263 GETIMPORT                        R46 K46 [UDim.new]
      265 LOADN                            R47 0
      266 MOVE                             R48 R21
      267 CALL                             R46 2 1
      268 SETTABLEKS                       R46 R45 K61 ["width"]
      270 CALL                             R43 2 -1
      271 CALL                             R41 -1 1
      272 SETTABLEKS                       R41 R39 K63 ["PrimaryButton"]
      274 GETUPVAL                         R41 0
      275 GETTABLEKS                       R41 R41 K19 ["createElement"]
      277 GETUPVAL                         R42 13
      278 DUPTABLE                         R43 K67 [{["LayoutOrder"] = 1, ["icon"] = "chevron-small-down", ["onActivated"]}]
      279 NEWCLOSURE                       R44 P9
      280 CAPTURE                          VAL R15
      281 CAPTURE                          VAL R14
      282 SETTABLEKS                       R44 R43 K66 ["onActivated"]
      284 CALL                             R41 2 1
      285 SETTABLEKS                       R41 R39 K68 ["DropdownButton"]
      287 CALL                             R36 3 -1
      288 CALL                             R33 -1 1
      289 SETTABLEKS                       R33 R32 K23 ["CopyLinkButton"]
      291 GETUPVAL                         R33 0
      292 GETTABLEKS                       R33 R33 K19 ["createElement"]
      294 GETUPVAL                         R34 14
      295 DUPTABLE                         R35 K74 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"]}]
      296 GETUPVAL                         R36 15
      297 GETTABLEKS                       R36 R36 K75 ["Bottom"]
      299 SETTABLEKS                       R36 R35 K69 ["side"]
      301 GETUPVAL                         R36 16
      302 GETTABLEKS                       R36 R36 K76 ["End"]
      304 SETTABLEKS                       R36 R35 K70 ["align"]
      306 NEWCLOSURE                       R36 P10
      307 CAPTURE                          VAL R15
      308 SETTABLEKS                       R36 R35 K73 ["onPressedOutside"]
      310 NEWTABLE                         R36 1 1
      312 GETUPVAL                         R38 0
      313 GETTABLEKS                       R38 R38 K19 ["createElement"]
      315 LOADK                            R39 K77 ["UIGradient"]
      316 DUPTABLE                         R40 K79 [{"Transparency"}]
      317 GETIMPORT                        R41 K81 [NumberSequence.new]
      319 NEWTABLE                         R42 0 2
      321 GETIMPORT                        R43 K83 [NumberSequenceKeypoint.new]
      323 LOADN                            R44 0
      324 LOADN                            R45 1
      325 CALL                             R43 2 1
      326 GETIMPORT                        R44 K83 [NumberSequenceKeypoint.new]
      328 LOADN                            R45 1
      329 LOADN                            R46 1
      330 CALL                             R44 2 -1
      331 SETLIST                          R42 R43 -1 [1]
      333 CALL                             R41 1 1
      334 SETTABLEKS                       R41 R40 K78 ["Transparency"]
      336 CALL                             R38 2 1
      337 SETTABLEKS                       R38 R36 K77 ["UIGradient"]
      339 GETUPVAL                         R37 0
      340 GETTABLEKS                       R37 R37 K19 ["createElement"]
      342 GETUPVAL                         R38 17
      343 DUPTABLE                         R39 K87 [{["tag"] = "col flex-none items-center auto-xy padding-top-xsmall radius-medium", ["backgroundStyle"]}]
      344 DUPTABLE                         R40 K89 [{["Color3"], ["Transparency"] = 0}]
      345 GETTABLEKS                       R41 R2 K40 ["backgroundColor"]
      347 SETTABLEKS                       R41 R40 K88 ["Color3"]
      349 SETTABLEKS                       R40 R39 K86 ["backgroundStyle"]
      351 DUPTABLE                         R40 K91 [{"SecondaryButton"}]
      352 GETUPVAL                         R41 0
      353 GETTABLEKS                       R41 R41 K19 ["createElement"]
      355 GETUPVAL                         R42 18
      356 GETUPVAL                         R43 12
      357 GETTABLEKS                       R43 R43 K59 ["Dictionary"]
      359 GETTABLEKS                       R43 R43 K60 ["join"]
      361 GETUPVAL                         R45 2
      362 GETTABLEKS                       R45 R45 K18 ["BUTTONTYPE_SECONDARY"]
      364 GETTABLE                         R44 R28 R45
      365 DUPTABLE                         R45 K62 [{"width"}]
      366 GETIMPORT                        R46 K46 [UDim.new]
      368 LOADN                            R47 0
      369 MOVE                             R48 R22
      370 CALL                             R46 2 1
      371 SETTABLEKS                       R46 R45 K61 ["width"]
      373 CALL                             R43 2 -1
      374 CALL                             R41 -1 1
      375 SETTABLEKS                       R41 R40 K90 ["SecondaryButton"]
      377 CALL                             R37 3 -1
      378 SETLIST                          R36 R37 -1 [1]
      380 CALL                             R33 3 1
      381 SETTABLEKS                       R33 R32 K24 ["CopyLinkButtonPopover"]
      383 CALL                             R29 3 -1
      384 RETURN                           R29 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["View"]
       25 GETTABLEKS                       R4 R2 K9 ["Button"]
       27 GETTABLEKS                       R5 R2 K10 ["Popover"]
       29 GETTABLEKS                       R6 R2 K11 ["Enums"]
       31 GETTABLEKS                       R6 R6 K12 ["PopoverSide"]
       33 GETTABLEKS                       R7 R2 K11 ["Enums"]
       35 GETTABLEKS                       R7 R7 K13 ["PopoverAlign"]
       37 GETIMPORT                        R8 K4 [require]
       39 GETTABLEKS                       R9 R0 K5 ["Packages"]
       41 GETTABLEKS                       R9 R9 K14 ["Cryo"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K16 [game]
       46 LOADK                            R11 K17 ["StudioService"]
       47 NAMECALL                         R9 R9 K18 ["GetService"]
       49 CALL                             R9 2 1
       50 GETIMPORT                        R10 K16 [game]
       52 LOADK                            R12 K19 ["RunService"]
       53 NAMECALL                         R10 R10 K18 ["GetService"]
       55 CALL                             R10 2 1
       56 GETIMPORT                        R11 K16 [game]
       58 LOADK                            R13 K20 ["TextService"]
       59 NAMECALL                         R11 R11 K18 ["GetService"]
       61 CALL                             R11 2 1
       62 GETIMPORT                        R12 K4 [require]
       64 GETTABLEKS                       R13 R0 K21 ["Src"]
       66 GETTABLEKS                       R13 R13 K22 ["Util"]
       68 GETTABLEKS                       R13 R13 K23 ["modifiedType"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K4 [require]
       73 GETTABLEKS                       R14 R0 K5 ["Packages"]
       75 GETTABLEKS                       R14 R14 K24 ["Framework"]
       77 CALL                             R13 1 1
       78 GETTABLEKS                       R14 R13 K25 ["UI"]
       80 GETTABLEKS                       R15 R14 K26 ["StyledDialog"]
       82 GETIMPORT                        R16 K4 [require]
       84 GETTABLEKS                       R17 R0 K21 ["Src"]
       86 GETTABLEKS                       R17 R17 K22 ["Util"]
       88 GETTABLEKS                       R17 R17 K27 ["ShowDialog"]
       90 CALL                             R16 1 1
       91 GETIMPORT                        R17 K4 [require]
       93 GETTABLEKS                       R18 R0 K21 ["Src"]
       95 GETTABLEKS                       R18 R18 K22 ["Util"]
       97 GETTABLEKS                       R18 R18 K28 ["Constants"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K4 [require]
      102 GETTABLEKS                       R19 R0 K21 ["Src"]
      104 GETTABLEKS                       R19 R19 K29 ["Types"]
      106 CALL                             R18 1 1
      107 GETIMPORT                        R19 K16 [game]
      109 LOADK                            R21 K30 ["Collab9119_LogLinkCopiedEvent"]
      110 NAMECALL                         R19 R19 K31 ["GetFastFlag"]
      112 CALL                             R19 2 1
      113 LOADNIL                          R20
      114 LOADNIL                          R21
      115 LOADNIL                          R22
      116 JUMPIFNOT                        R19 ; [+24]
      117 GETIMPORT                        R23 K4 [require]
      119 GETTABLEKS                       R24 R0 K21 ["Src"]
      121 GETTABLEKS                       R24 R24 K22 ["Util"]
      123 GETTABLEKS                       R24 R24 K32 ["Telemetry"]
      125 GETTABLEKS                       R24 R24 K33 ["LinkCopiedEvent"]
      127 CALL                             R23 1 1
      128 MOVE                             R20 R23
      129 GETIMPORT                        R23 K4 [require]
      131 GETTABLEKS                       R24 R0 K5 ["Packages"]
      133 GETTABLEKS                       R24 R24 K34 ["TelemetryProtocol"]
      135 CALL                             R23 1 1
      136 MOVE                             R21 R23
      137 GETTABLEKS                       R23 R21 K35 ["new"]
      139 CALL                             R23 0 1
      140 MOVE                             R22 R23
      141 MOVE                             R23 R12
      142 MOVE                             R24 R4
      143 NEWTABLE                         R25 0 2
      145 DUPTABLE                         R26 K43 [{["name"] = "CornerRadius", ["type"] = "UICorner", ["childNotSibling"] = True, ["delete"] = True}]
      146 DUPTABLE                         R27 K48 [{["name"] = "ListLayout", ["type"] = "UIListLayout", ["childNotSibling"] = True, ["delete"] = False, ["modifyProps"]}]
      147 DUPTABLE                         R28 K50 [{"HorizontalAlignment"}]
      148 GETIMPORT                        R29 K53 [Enum.HorizontalAlignment.Left]
      150 SETTABLEKS                       R29 R28 K49 ["HorizontalAlignment"]
      152 SETTABLEKS                       R28 R27 K47 ["modifyProps"]
      154 SETLIST                          R25 R26 2 [1]
      156 CALL                             R23 2 1
      157 MOVE                             R24 R12
      158 MOVE                             R25 R4
      159 NEWTABLE                         R26 0 2
      161 DUPTABLE                         R27 K43 [{["name"] = "CornerRadius", ["type"] = "UICorner", ["childNotSibling"] = True, ["delete"] = True}]
      162 DUPTABLE                         R28 K56 [{["name"] = "Padding", ["type"] = "UIPadding", ["childNotSibling"] = True, ["delete"] = False, ["modifyProps"]}]
      163 DUPTABLE                         R29 K59 [{"PaddingLeft", "PaddingRight"}]
      164 GETIMPORT                        R30 K61 [UDim.new]
      166 LOADN                            R31 0
      167 LOADN                            R32 6
      168 CALL                             R30 2 1
      169 SETTABLEKS                       R30 R29 K57 ["PaddingLeft"]
      171 GETIMPORT                        R30 K61 [UDim.new]
      173 LOADN                            R31 0
      174 LOADN                            R32 6
      175 CALL                             R30 2 1
      176 SETTABLEKS                       R30 R29 K58 ["PaddingRight"]
      178 SETTABLEKS                       R29 R28 K47 ["modifyProps"]
      180 SETLIST                          R26 R27 2 [1]
      182 CALL                             R24 2 1
      183 MOVE                             R25 R12
      184 GETTABLEKS                       R26 R5 K62 ["Content"]
      186 NEWTABLE                         R27 0 1
      188 DUPTABLE                         R28 K65 [{["name"] = "Shadow", ["type"] = "ImageLabel", ["childNotSibling"] = False, ["delete"] = True}]
      189 SETLIST                          R27 R28 1 [1]
      191 CALL                             R25 2 1
      192 MOVE                             R26 R12
      193 MOVE                             R27 R4
      194 NEWTABLE                         R28 0 1
      196 DUPTABLE                         R29 K66 [{["name"] = "ListLayout", ["type"] = "UIListLayout", ["childNotSibling"] = True, ["modifyProps"]}]
      197 DUPTABLE                         R30 K50 [{"HorizontalAlignment"}]
      198 GETIMPORT                        R31 K53 [Enum.HorizontalAlignment.Left]
      200 SETTABLEKS                       R31 R30 K49 ["HorizontalAlignment"]
      202 SETTABLEKS                       R30 R29 K47 ["modifyProps"]
      204 SETLIST                          R28 R29 1 [1]
      206 CALL                             R26 2 1
      207 DUPCLOSURE                       R27 K67 [PROTO_0]
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R11
      210 NEWCLOSURE                       R28 P1
      211 CAPTURE                          VAL R1
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R17
      214 CAPTURE                          VAL R27
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R19
      217 CAPTURE                          REF R22
      218 CAPTURE                          REF R20
      219 CAPTURE                          VAL R16
      220 CAPTURE                          VAL R15
      221 CAPTURE                          VAL R5
      222 CAPTURE                          VAL R23
      223 CAPTURE                          VAL R8
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R6
      227 CAPTURE                          VAL R7
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R26
      230 CLOSEUPVALS                      R20
      231 RETURN                           R28 1
