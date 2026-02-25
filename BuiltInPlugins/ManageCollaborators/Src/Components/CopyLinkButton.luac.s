PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FOUNDATION_BUTTON_FONT"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["FOUNDATION_BUTTON_TEXT_SIZE"]
        6 LOADNIL                          R4
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K2 ["LINKTYPE_EDIT"]
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
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R12 R13 K17 ["FOUNDATION_BUTTON_ICON_WIDTH"]
       66 ADD                              R11 R8 R12
       67 GETUPVAL                         R13 0
       68 GETTABLEKS                       R12 R13 K18 ["FOUNDATION_BUTTON_ICON_TEXT_PADDING"]
       70 ADD                              R10 R11 R12
       71 GETUPVAL                         R12 0
       72 GETTABLEKS                       R11 R12 K19 ["FOUNDATION_BUTTON_PADDING"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
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
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K0 ["current"]
       12 GETIMPORT                        R2 K3 [delay]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K4 ["COPIED_INDICATOR_DURATION"]
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
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K1 ["current"]
       17 GETIMPORT                        R4 K4 [delay]
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R5 R6 K5 ["COPIED_INDICATOR_DURATION"]
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
       12 JUMPIFNOT                        R2 ; [+156]
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
       27 DUPTABLE                         R2 K3 [{"Key", "Text"}]
       28 LOADK                            R3 K4 ["CANCEL"]
       29 SETTABLEKS                       R3 R2 K1 ["Key"]
       31 GETUPVAL                         R3 4
       32 LOADK                            R5 K5 ["Buttons"]
       33 LOADK                            R6 K6 ["Cancel"]
       34 NAMECALL                         R3 R3 K7 ["getText"]
       36 CALL                             R3 3 1
       37 SETTABLEKS                       R3 R2 K2 ["Text"]
       39 DUPTABLE                         R3 K9 [{"Key", "Text", "Style"}]
       40 LOADK                            R4 K10 ["CONTINUE"]
       41 SETTABLEKS                       R4 R3 K1 ["Key"]
       43 GETUPVAL                         R4 4
       44 LOADK                            R6 K5 ["Buttons"]
       45 LOADK                            R7 K11 ["Continue"]
       46 NAMECALL                         R4 R4 K7 ["getText"]
       48 CALL                             R4 3 1
       49 SETTABLEKS                       R4 R3 K2 ["Text"]
       51 LOADK                            R4 K12 ["RoundPrimary"]
       52 SETTABLEKS                       R4 R3 K8 ["Style"]
       54 SETLIST                          R1 R2 2 [1]
       56 GETUPVAL                         R2 5
       57 GETUPVAL                         R3 6
       58 GETUPVAL                         R4 4
       59 GETUPVAL                         R5 7
       60 DUPTABLE                         R6 K18 [{"Buttons", "MinContentSize", "Style", "OnButtonPressed", "OnClose", "Title", "Modal"}]
       61 SETTABLEKS                       R1 R6 K5 ["Buttons"]
       63 GETUPVAL                         R9 8
       64 GETTABLEKS                       R8 R9 K19 ["enableTeamCreateDialog"]
       66 GETTABLEKS                       R7 R8 K20 ["Size"]
       68 SETTABLEKS                       R7 R6 K13 ["MinContentSize"]
       70 LOADK                            R7 K21 ["EnableTeamCreateDialog"]
       71 SETTABLEKS                       R7 R6 K8 ["Style"]
       73 NEWCLOSURE                       R7 P1
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U1
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          UPVAL U9
       79 CAPTURE                          UPVAL U10
       80 CAPTURE                          UPVAL U11
       81 SETTABLEKS                       R7 R6 K14 ["OnButtonPressed"]
       83 DUPCLOSURE                       R7 K22 [PROTO_9]
       84 SETTABLEKS                       R7 R6 K15 ["OnClose"]
       86 GETUPVAL                         R7 4
       87 LOADK                            R9 K16 ["Title"]
       88 LOADK                            R10 K23 ["EnableTeamCreate"]
       89 NAMECALL                         R7 R7 K7 ["getText"]
       91 CALL                             R7 3 1
       92 SETTABLEKS                       R7 R6 K16 ["Title"]
       94 LOADB                            R7 1
       95 SETTABLEKS                       R7 R6 K17 ["Modal"]
       97 DUPTABLE                         R7 K25 [{"Contents"}]
       98 GETUPVAL                         R9 12
       99 GETTABLEKS                       R8 R9 K26 ["createElement"]
      101 LOADK                            R9 K27 ["TextLabel"]
      102 DUPTABLE                         R10 K35 [{"BackgroundTransparency", "TextSize", "Text", "TextColor3", "Font", "Size", "AnchorPoint", "Position", "TextWrapped"}]
      103 LOADN                            R11 1
      104 SETTABLEKS                       R11 R10 K28 ["BackgroundTransparency"]
      106 GETUPVAL                         R14 8
      107 GETTABLEKS                       R13 R14 K19 ["enableTeamCreateDialog"]
      109 GETTABLEKS                       R12 R13 K2 ["Text"]
      111 GETTABLEKS                       R11 R12 K29 ["TextSize"]
      113 SETTABLEKS                       R11 R10 K29 ["TextSize"]
      115 GETUPVAL                         R11 4
      116 LOADK                            R13 K36 ["Description"]
      117 LOADK                            R14 K37 ["CopyingLinkWillEnableTeamCreate"]
      118 NAMECALL                         R11 R11 K7 ["getText"]
      120 CALL                             R11 3 1
      121 SETTABLEKS                       R11 R10 K2 ["Text"]
      123 GETUPVAL                         R14 8
      124 GETTABLEKS                       R13 R14 K19 ["enableTeamCreateDialog"]
      126 GETTABLEKS                       R12 R13 K2 ["Text"]
      128 GETTABLEKS                       R11 R12 K30 ["TextColor3"]
      130 SETTABLEKS                       R11 R10 K30 ["TextColor3"]
      132 GETUPVAL                         R14 8
      133 GETTABLEKS                       R13 R14 K19 ["enableTeamCreateDialog"]
      135 GETTABLEKS                       R12 R13 K2 ["Text"]
      137 GETTABLEKS                       R11 R12 K31 ["Font"]
      139 SETTABLEKS                       R11 R10 K31 ["Font"]
      141 GETIMPORT                        R11 K40 [UDim2.fromScale]
      143 LOADN                            R12 1
      144 LOADN                            R13 1
      145 CALL                             R11 2 1
      146 SETTABLEKS                       R11 R10 K20 ["Size"]
      148 GETIMPORT                        R11 K43 [Vector2.new]
      150 LOADK                            R12 K44 [0.5]
      151 LOADK                            R13 K44 [0.5]
      152 CALL                             R11 2 1
      153 SETTABLEKS                       R11 R10 K32 ["AnchorPoint"]
      155 GETUPVAL                         R13 8
      156 GETTABLEKS                       R12 R13 K19 ["enableTeamCreateDialog"]
      158 GETTABLEKS                       R11 R12 K33 ["Position"]
      160 SETTABLEKS                       R11 R10 K33 ["Position"]
      162 LOADB                            R11 1
      163 SETTABLEKS                       R11 R10 K34 ["TextWrapped"]
      165 CALL                             R8 2 1
      166 SETTABLEKS                       R8 R7 K24 ["Contents"]
      168 CALL                             R2 5 0
      169 RETURN                           R0 0

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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["LINKTYPE_TEAM_TEST"]
        5 JUMP                             ; [+3]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K1 ["LINKTYPE_EDIT"]
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
        0 DUPTABLE                         R1 K3 [{"icon", "text", "onActivated"}]
        1 LOADK                            R2 K4 ["chain-link"]
        2 SETTABLEKS                       R2 R1 K0 ["icon"]
        4 GETUPVAL                         R3 0
        5 JUMPIFNOTEQ                      R3 R0 ; [+8]
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K5 ["Buttons"]
        9 LOADK                            R5 K6 ["Copied"]
       10 NAMECALL                         R2 R2 K7 ["getText"]
       12 CALL                             R2 3 1
       13 JUMP                             ; [+13]
       14 GETUPVAL                         R2 1
       15 LOADK                            R4 K5 ["Buttons"]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K8 ["LINKTYPE_EDIT"]
       19 JUMPIFNOTEQ                      R0 R6 ; [+3]
       21 LOADK                            R5 K9 ["CopyEditLink"]
       22 JUMP                             ; [+1]
       23 LOADK                            R5 K10 ["CopyTeamTestLink"]
       24 NAMECALL                         R2 R2 K7 ["getText"]
       26 CALL                             R2 3 1
       27 SETTABLEKS                       R2 R1 K1 ["text"]
       29 NEWCLOSURE                       R2 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R2 R1 K2 ["onActivated"]
       34 RETURN                           R1 1

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
       24 GETUPVAL                         R13 0
       25 GETTABLEKS                       R12 R13 K10 ["useState"]
       27 GETUPVAL                         R13 1
       28 NAMECALL                         R13 R13 K11 ["IsEdit"]
       30 CALL                             R13 1 -1
       31 CALL                             R12 -1 2
       32 GETUPVAL                         R15 0
       33 GETTABLEKS                       R14 R15 K10 ["useState"]
       35 LOADB                            R15 0
       36 CALL                             R14 1 2
       37 GETUPVAL                         R17 0
       38 GETTABLEKS                       R16 R17 K10 ["useState"]
       40 LOADNIL                          R17
       41 CALL                             R16 1 2
       42 GETUPVAL                         R19 0
       43 GETTABLEKS                       R18 R19 K12 ["useRef"]
       45 LOADN                            R19 0
       46 CALL                             R18 1 1
       47 JUMPIFNOT                        R12 ; [+4]
       48 GETUPVAL                         R20 2
       49 GETTABLEKS                       R19 R20 K13 ["LINKTYPE_EDIT"]
       51 JUMP                             ; [+3]
       52 GETUPVAL                         R20 2
       53 GETTABLEKS                       R19 R20 K14 ["LINKTYPE_TEAM_TEST"]
       55 JUMPIFNOT                        R12 ; [+4]
       56 GETUPVAL                         R21 2
       57 GETTABLEKS                       R20 R21 K14 ["LINKTYPE_TEAM_TEST"]
       59 JUMP                             ; [+3]
       60 GETUPVAL                         R21 2
       61 GETTABLEKS                       R20 R21 K13 ["LINKTYPE_EDIT"]
       63 GETUPVAL                         R22 0
       64 GETTABLEKS                       R21 R22 K15 ["useMemo"]
       66 NEWCLOSURE                       R22 P0
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R19
       70 NEWTABLE                         R23 0 2
       72 MOVE                             R24 R1
       73 MOVE                             R25 R19
       74 SETLIST                          R23 R24 2 [1]
       76 CALL                             R21 2 1
       77 GETUPVAL                         R23 0
       78 GETTABLEKS                       R22 R23 K15 ["useMemo"]
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
      121 GETUPVAL                         R28 0
      122 GETTABLEKS                       R27 R28 K16 ["useEffect"]
      124 NEWCLOSURE                       R28 P6
      125 CAPTURE                          UPVAL U1
      126 CAPTURE                          VAL R13
      127 NEWTABLE                         R29 0 0
      129 CALL                             R27 2 0
      130 GETUPVAL                         R28 0
      131 GETTABLEKS                       R27 R28 K16 ["useEffect"]
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
      154 GETUPVAL                         R30 2
      155 GETTABLEKS                       R29 R30 K17 ["BUTTONTYPE_PRIMARY"]
      157 MOVE                             R30 R27
      158 MOVE                             R31 R19
      159 CALL                             R30 1 1
      160 SETTABLE                         R30 R28 R29
      161 GETUPVAL                         R30 2
      162 GETTABLEKS                       R29 R30 K18 ["BUTTONTYPE_SECONDARY"]
      164 MOVE                             R30 R27
      165 MOVE                             R31 R20
      166 CALL                             R30 1 1
      167 SETTABLE                         R30 R28 R29
      168 GETUPVAL                         R30 0
      169 GETTABLEKS                       R29 R30 K19 ["createElement"]
      171 GETUPVAL                         R31 10
      172 GETTABLEKS                       R30 R31 K20 ["Root"]
      174 DUPTABLE                         R31 K22 [{"isOpen"}]
      175 SETTABLEKS                       R14 R31 K21 ["isOpen"]
      177 DUPTABLE                         R32 K25 [{"CopyLinkButton", "CopyLinkButtonPopover"}]
      178 GETUPVAL                         R34 0
      179 GETTABLEKS                       R33 R34 K19 ["createElement"]
      181 GETUPVAL                         R35 10
      182 GETTABLEKS                       R34 R35 K26 ["Anchor"]
      184 DUPTABLE                         R35 K28 [{"LayoutOrder"}]
      185 GETTABLEKS                       R37 R0 K27 ["LayoutOrder"]
      187 ORK                              R36 R37 K29 [1]
      188 SETTABLEKS                       R36 R35 K27 ["LayoutOrder"]
      190 GETUPVAL                         R37 0
      191 GETTABLEKS                       R36 R37 K19 ["createElement"]
      193 LOADK                            R37 K30 ["CanvasGroup"]
      194 DUPTABLE                         R38 K34 [{"AutomaticSize", "BackgroundColor3", "BorderSizePixel"}]
      195 GETIMPORT                        R39 K37 [Enum.AutomaticSize.XY]
      197 SETTABLEKS                       R39 R38 K31 ["AutomaticSize"]
      199 GETTABLEKS                       R40 R2 K38 ["buttonBar"]
      201 GETTABLEKS                       R39 R40 K39 ["backgroundColor"]
      203 SETTABLEKS                       R39 R38 K32 ["BackgroundColor3"]
      205 LOADN                            R39 0
      206 SETTABLEKS                       R39 R38 K33 ["BorderSizePixel"]
      208 NEWTABLE                         R39 4 1
      210 GETUPVAL                         R41 0
      211 GETTABLEKS                       R40 R41 K19 ["createElement"]
      213 LOADK                            R41 K40 ["UICorner"]
      214 DUPTABLE                         R42 K42 [{"CornerRadius"}]
      215 GETIMPORT                        R43 K45 [UDim.new]
      217 LOADN                            R44 0
      218 LOADN                            R45 8
      219 CALL                             R43 2 1
      220 SETTABLEKS                       R43 R42 K41 ["CornerRadius"]
      222 CALL                             R40 2 1
      223 SETLIST                          R39 R40 1 [1]
      225 GETUPVAL                         R42 0
      226 GETTABLEKS                       R41 R42 K19 ["createElement"]
      228 LOADK                            R42 K46 ["UIListLayout"]
      229 DUPTABLE                         R43 K51 [{"SortOrder", "FillDirection", "ItemLineAlignment", "Padding"}]
      230 GETIMPORT                        R44 K52 [Enum.SortOrder.LayoutOrder]
      232 SETTABLEKS                       R44 R43 K47 ["SortOrder"]
      234 GETIMPORT                        R44 K54 [Enum.FillDirection.Horizontal]
      236 SETTABLEKS                       R44 R43 K48 ["FillDirection"]
      238 GETIMPORT                        R44 K56 [Enum.ItemLineAlignment.Center]
      240 SETTABLEKS                       R44 R43 K49 ["ItemLineAlignment"]
      242 GETIMPORT                        R44 K45 [UDim.new]
      244 LOADN                            R45 0
      245 LOADN                            R46 2
      246 CALL                             R44 2 1
      247 SETTABLEKS                       R44 R43 K50 ["Padding"]
      249 CALL                             R41 2 1
      250 SETTABLEKS                       R41 R39 K57 ["Layout"]
      252 GETUPVAL                         R42 0
      253 GETTABLEKS                       R41 R42 K19 ["createElement"]
      255 GETUPVAL                         R42 11
      256 GETUPVAL                         R45 12
      257 GETTABLEKS                       R44 R45 K58 ["Dictionary"]
      259 GETTABLEKS                       R43 R44 K59 ["join"]
      261 GETUPVAL                         R46 2
      262 GETTABLEKS                       R45 R46 K17 ["BUTTONTYPE_PRIMARY"]
      264 GETTABLE                         R44 R28 R45
      265 DUPTABLE                         R45 K61 [{"width"}]
      266 GETIMPORT                        R46 K45 [UDim.new]
      268 LOADN                            R47 0
      269 MOVE                             R48 R21
      270 CALL                             R46 2 1
      271 SETTABLEKS                       R46 R45 K60 ["width"]
      273 CALL                             R43 2 -1
      274 CALL                             R41 -1 1
      275 SETTABLEKS                       R41 R39 K62 ["PrimaryButton"]
      277 GETUPVAL                         R42 0
      278 GETTABLEKS                       R41 R42 K19 ["createElement"]
      280 GETUPVAL                         R42 13
      281 DUPTABLE                         R43 K65 [{"LayoutOrder", "icon", "onActivated"}]
      282 LOADN                            R44 1
      283 SETTABLEKS                       R44 R43 K27 ["LayoutOrder"]
      285 LOADK                            R44 K66 ["chevron-small-down"]
      286 SETTABLEKS                       R44 R43 K63 ["icon"]
      288 NEWCLOSURE                       R44 P9
      289 CAPTURE                          VAL R15
      290 CAPTURE                          VAL R14
      291 SETTABLEKS                       R44 R43 K64 ["onActivated"]
      293 CALL                             R41 2 1
      294 SETTABLEKS                       R41 R39 K67 ["DropdownButton"]
      296 CALL                             R36 3 -1
      297 CALL                             R33 -1 1
      298 SETTABLEKS                       R33 R32 K23 ["CopyLinkButton"]
      300 GETUPVAL                         R34 0
      301 GETTABLEKS                       R33 R34 K19 ["createElement"]
      303 GETUPVAL                         R34 14
      304 DUPTABLE                         R35 K72 [{"side", "align", "hasArrow", "onPressedOutside"}]
      305 GETUPVAL                         R37 15
      306 GETTABLEKS                       R36 R37 K73 ["Bottom"]
      308 SETTABLEKS                       R36 R35 K68 ["side"]
      310 GETUPVAL                         R37 16
      311 GETTABLEKS                       R36 R37 K74 ["End"]
      313 SETTABLEKS                       R36 R35 K69 ["align"]
      315 LOADB                            R36 0
      316 SETTABLEKS                       R36 R35 K70 ["hasArrow"]
      318 NEWCLOSURE                       R36 P10
      319 CAPTURE                          VAL R15
      320 SETTABLEKS                       R36 R35 K71 ["onPressedOutside"]
      322 NEWTABLE                         R36 1 1
      324 GETUPVAL                         R39 0
      325 GETTABLEKS                       R38 R39 K19 ["createElement"]
      327 LOADK                            R39 K75 ["UIGradient"]
      328 DUPTABLE                         R40 K77 [{"Transparency"}]
      329 GETIMPORT                        R41 K79 [NumberSequence.new]
      331 NEWTABLE                         R42 0 2
      333 GETIMPORT                        R43 K81 [NumberSequenceKeypoint.new]
      335 LOADN                            R44 0
      336 LOADN                            R45 1
      337 CALL                             R43 2 1
      338 GETIMPORT                        R44 K81 [NumberSequenceKeypoint.new]
      340 LOADN                            R45 1
      341 LOADN                            R46 1
      342 CALL                             R44 2 -1
      343 SETLIST                          R42 R43 -1 [1]
      345 CALL                             R41 1 1
      346 SETTABLEKS                       R41 R40 K76 ["Transparency"]
      348 CALL                             R38 2 1
      349 SETTABLEKS                       R38 R36 K75 ["UIGradient"]
      351 GETUPVAL                         R38 0
      352 GETTABLEKS                       R37 R38 K19 ["createElement"]
      354 GETUPVAL                         R38 17
      355 DUPTABLE                         R39 K84 [{"tag", "backgroundStyle"}]
      356 LOADK                            R40 K85 ["auto-xy col flex-none items-center padding-top-xsmall radius-medium"]
      357 SETTABLEKS                       R40 R39 K82 ["tag"]
      359 DUPTABLE                         R40 K87 [{"Color3", "Transparency"}]
      360 GETTABLEKS                       R41 R2 K39 ["backgroundColor"]
      362 SETTABLEKS                       R41 R40 K86 ["Color3"]
      364 LOADN                            R41 0
      365 SETTABLEKS                       R41 R40 K76 ["Transparency"]
      367 SETTABLEKS                       R40 R39 K83 ["backgroundStyle"]
      369 DUPTABLE                         R40 K89 [{"SecondaryButton"}]
      370 GETUPVAL                         R42 0
      371 GETTABLEKS                       R41 R42 K19 ["createElement"]
      373 GETUPVAL                         R42 18
      374 GETUPVAL                         R45 12
      375 GETTABLEKS                       R44 R45 K58 ["Dictionary"]
      377 GETTABLEKS                       R43 R44 K59 ["join"]
      379 GETUPVAL                         R46 2
      380 GETTABLEKS                       R45 R46 K18 ["BUTTONTYPE_SECONDARY"]
      382 GETTABLE                         R44 R28 R45
      383 DUPTABLE                         R45 K61 [{"width"}]
      384 GETIMPORT                        R46 K45 [UDim.new]
      386 LOADN                            R47 0
      387 MOVE                             R48 R22
      388 CALL                             R46 2 1
      389 SETTABLEKS                       R46 R45 K60 ["width"]
      391 CALL                             R43 2 -1
      392 CALL                             R41 -1 1
      393 SETTABLEKS                       R41 R40 K88 ["SecondaryButton"]
      395 CALL                             R37 3 -1
      396 SETLIST                          R36 R37 -1 [1]
      398 CALL                             R33 3 1
      399 SETTABLEKS                       R33 R32 K24 ["CopyLinkButtonPopover"]
      401 CALL                             R29 3 -1
      402 RETURN                           R29 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["View"]
       25 GETTABLEKS                       R4 R2 K9 ["Button"]
       27 GETTABLEKS                       R5 R2 K10 ["Popover"]
       29 GETTABLEKS                       R7 R2 K11 ["Enums"]
       31 GETTABLEKS                       R6 R7 K12 ["PopoverSide"]
       33 GETTABLEKS                       R8 R2 K11 ["Enums"]
       35 GETTABLEKS                       R7 R8 K13 ["PopoverAlign"]
       37 GETIMPORT                        R8 K4 [require]
       39 GETTABLEKS                       R10 R0 K5 ["Packages"]
       41 GETTABLEKS                       R9 R10 K14 ["Cryo"]
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
       64 GETTABLEKS                       R15 R0 K21 ["Src"]
       66 GETTABLEKS                       R14 R15 K22 ["Util"]
       68 GETTABLEKS                       R13 R14 K23 ["modifiedType"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K4 [require]
       73 GETTABLEKS                       R15 R0 K5 ["Packages"]
       75 GETTABLEKS                       R14 R15 K24 ["Framework"]
       77 CALL                             R13 1 1
       78 GETTABLEKS                       R14 R13 K25 ["UI"]
       80 GETTABLEKS                       R15 R14 K26 ["StyledDialog"]
       82 GETIMPORT                        R16 K4 [require]
       84 GETTABLEKS                       R19 R0 K21 ["Src"]
       86 GETTABLEKS                       R18 R19 K22 ["Util"]
       88 GETTABLEKS                       R17 R18 K27 ["ShowDialog"]
       90 CALL                             R16 1 1
       91 GETIMPORT                        R17 K4 [require]
       93 GETTABLEKS                       R20 R0 K21 ["Src"]
       95 GETTABLEKS                       R19 R20 K22 ["Util"]
       97 GETTABLEKS                       R18 R19 K28 ["Constants"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K4 [require]
      102 GETTABLEKS                       R20 R0 K21 ["Src"]
      104 GETTABLEKS                       R19 R20 K29 ["Types"]
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
      119 GETTABLEKS                       R27 R0 K21 ["Src"]
      121 GETTABLEKS                       R26 R27 K22 ["Util"]
      123 GETTABLEKS                       R25 R26 K32 ["Telemetry"]
      125 GETTABLEKS                       R24 R25 K33 ["LinkCopiedEvent"]
      127 CALL                             R23 1 1
      128 MOVE                             R20 R23
      129 GETIMPORT                        R23 K4 [require]
      131 GETTABLEKS                       R25 R0 K5 ["Packages"]
      133 GETTABLEKS                       R24 R25 K34 ["TelemetryProtocol"]
      135 CALL                             R23 1 1
      136 MOVE                             R21 R23
      137 GETTABLEKS                       R23 R21 K35 ["new"]
      139 CALL                             R23 0 1
      140 MOVE                             R22 R23
      141 MOVE                             R23 R12
      142 MOVE                             R24 R4
      143 NEWTABLE                         R25 0 2
      145 DUPTABLE                         R26 K40 [{"name", "type", "childNotSibling", "delete"}]
      146 LOADK                            R27 K41 ["CornerRadius"]
      147 SETTABLEKS                       R27 R26 K36 ["name"]
      149 LOADK                            R27 K42 ["UICorner"]
      150 SETTABLEKS                       R27 R26 K37 ["type"]
      152 LOADB                            R27 1
      153 SETTABLEKS                       R27 R26 K38 ["childNotSibling"]
      155 LOADB                            R27 1
      156 SETTABLEKS                       R27 R26 K39 ["delete"]
      158 DUPTABLE                         R27 K44 [{"name", "type", "childNotSibling", "delete", "modifyProps"}]
      159 LOADK                            R28 K45 ["ListLayout"]
      160 SETTABLEKS                       R28 R27 K36 ["name"]
      162 LOADK                            R28 K46 ["UIListLayout"]
      163 SETTABLEKS                       R28 R27 K37 ["type"]
      165 LOADB                            R28 1
      166 SETTABLEKS                       R28 R27 K38 ["childNotSibling"]
      168 LOADB                            R28 0
      169 SETTABLEKS                       R28 R27 K39 ["delete"]
      171 DUPTABLE                         R28 K48 [{"HorizontalAlignment"}]
      172 GETIMPORT                        R29 K51 [Enum.HorizontalAlignment.Left]
      174 SETTABLEKS                       R29 R28 K47 ["HorizontalAlignment"]
      176 SETTABLEKS                       R28 R27 K43 ["modifyProps"]
      178 SETLIST                          R25 R26 2 [1]
      180 CALL                             R23 2 1
      181 MOVE                             R24 R12
      182 MOVE                             R25 R4
      183 NEWTABLE                         R26 0 2
      185 DUPTABLE                         R27 K40 [{"name", "type", "childNotSibling", "delete"}]
      186 LOADK                            R28 K41 ["CornerRadius"]
      187 SETTABLEKS                       R28 R27 K36 ["name"]
      189 LOADK                            R28 K42 ["UICorner"]
      190 SETTABLEKS                       R28 R27 K37 ["type"]
      192 LOADB                            R28 1
      193 SETTABLEKS                       R28 R27 K38 ["childNotSibling"]
      195 LOADB                            R28 1
      196 SETTABLEKS                       R28 R27 K39 ["delete"]
      198 DUPTABLE                         R28 K44 [{"name", "type", "childNotSibling", "delete", "modifyProps"}]
      199 LOADK                            R29 K52 ["Padding"]
      200 SETTABLEKS                       R29 R28 K36 ["name"]
      202 LOADK                            R29 K53 ["UIPadding"]
      203 SETTABLEKS                       R29 R28 K37 ["type"]
      205 LOADB                            R29 1
      206 SETTABLEKS                       R29 R28 K38 ["childNotSibling"]
      208 LOADB                            R29 0
      209 SETTABLEKS                       R29 R28 K39 ["delete"]
      211 DUPTABLE                         R29 K56 [{"PaddingLeft", "PaddingRight"}]
      212 GETIMPORT                        R30 K58 [UDim.new]
      214 LOADN                            R31 0
      215 LOADN                            R32 6
      216 CALL                             R30 2 1
      217 SETTABLEKS                       R30 R29 K54 ["PaddingLeft"]
      219 GETIMPORT                        R30 K58 [UDim.new]
      221 LOADN                            R31 0
      222 LOADN                            R32 6
      223 CALL                             R30 2 1
      224 SETTABLEKS                       R30 R29 K55 ["PaddingRight"]
      226 SETTABLEKS                       R29 R28 K43 ["modifyProps"]
      228 SETLIST                          R26 R27 2 [1]
      230 CALL                             R24 2 1
      231 MOVE                             R25 R12
      232 GETTABLEKS                       R26 R5 K59 ["Content"]
      234 NEWTABLE                         R27 0 1
      236 DUPTABLE                         R28 K40 [{"name", "type", "childNotSibling", "delete"}]
      237 LOADK                            R29 K60 ["Shadow"]
      238 SETTABLEKS                       R29 R28 K36 ["name"]
      240 LOADK                            R29 K61 ["ImageLabel"]
      241 SETTABLEKS                       R29 R28 K37 ["type"]
      243 LOADB                            R29 0
      244 SETTABLEKS                       R29 R28 K38 ["childNotSibling"]
      246 LOADB                            R29 1
      247 SETTABLEKS                       R29 R28 K39 ["delete"]
      249 SETLIST                          R27 R28 1 [1]
      251 CALL                             R25 2 1
      252 MOVE                             R26 R12
      253 MOVE                             R27 R4
      254 NEWTABLE                         R28 0 1
      256 DUPTABLE                         R29 K62 [{"name", "type", "childNotSibling", "modifyProps"}]
      257 LOADK                            R30 K45 ["ListLayout"]
      258 SETTABLEKS                       R30 R29 K36 ["name"]
      260 LOADK                            R30 K46 ["UIListLayout"]
      261 SETTABLEKS                       R30 R29 K37 ["type"]
      263 LOADB                            R30 1
      264 SETTABLEKS                       R30 R29 K38 ["childNotSibling"]
      266 DUPTABLE                         R30 K48 [{"HorizontalAlignment"}]
      267 GETIMPORT                        R31 K51 [Enum.HorizontalAlignment.Left]
      269 SETTABLEKS                       R31 R30 K47 ["HorizontalAlignment"]
      271 SETTABLEKS                       R30 R29 K43 ["modifyProps"]
      273 SETLIST                          R28 R29 1 [1]
      275 CALL                             R26 2 1
      276 DUPCLOSURE                       R27 K63 [PROTO_0]
      277 CAPTURE                          VAL R17
      278 CAPTURE                          VAL R11
      279 NEWCLOSURE                       R28 P1
      280 CAPTURE                          VAL R1
      281 CAPTURE                          VAL R10
      282 CAPTURE                          VAL R17
      283 CAPTURE                          VAL R27
      284 CAPTURE                          VAL R9
      285 CAPTURE                          VAL R19
      286 CAPTURE                          REF R22
      287 CAPTURE                          REF R20
      288 CAPTURE                          VAL R16
      289 CAPTURE                          VAL R15
      290 CAPTURE                          VAL R5
      291 CAPTURE                          VAL R23
      292 CAPTURE                          VAL R8
      293 CAPTURE                          VAL R24
      294 CAPTURE                          VAL R25
      295 CAPTURE                          VAL R6
      296 CAPTURE                          VAL R7
      297 CAPTURE                          VAL R3
      298 CAPTURE                          VAL R26
      299 CLOSEUPVALS                      R20
      300 RETURN                           R28 1
