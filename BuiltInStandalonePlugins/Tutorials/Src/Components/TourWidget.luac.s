PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showTopics"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["state"]
        5 GETTABLEKS                       R4 R4 K0 ["showTopics"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["showTopics"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["StepData"]
        5 GETTABLEKS                       R1 R1 K2 ["topic"]
        7 JUMPIFNOTLT                      R0 R1 ; [+19]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["props"]
       12 GETTABLEKS                       R1 R1 K3 ["OnSelectTopic"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 0
       17 DUPTABLE                         R3 K7 [{["showTopics"] = False, ["jumpToTopic"]}]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K8 ["None"]
       21 SETTABLEKS                       R4 R3 K6 ["jumpToTopic"]
       23 NAMECALL                         R1 R1 K9 ["setState"]
       25 CALL                             R1 2 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 0
       28 DUPTABLE                         R3 K10 [{"jumpToTopic"}]
       29 SETTABLEKS                       R0 R3 K6 ["jumpToTopic"]
       31 NAMECALL                         R1 R1 K9 ["setState"]
       33 CALL                             R1 2 0
       34 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["accept"] ; [+24]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["state"]
        5 GETTABLEKS                       R1 R1 K2 ["jumpToTopic"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["props"]
       10 GETTABLEKS                       R2 R2 K4 ["OnSelectTopic"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 0
       15 DUPTABLE                         R4 K7 [{["showTopics"] = False, ["jumpToTopic"]}]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K8 ["None"]
       19 SETTABLEKS                       R5 R4 K2 ["jumpToTopic"]
       21 NAMECALL                         R2 R2 K9 ["setState"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 0
       26 DUPTABLE                         R3 K10 [{"jumpToTopic"}]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K8 ["None"]
       30 SETTABLEKS                       R4 R3 K2 ["jumpToTopic"]
       32 NAMECALL                         R1 R1 K9 ["setState"]
       34 CALL                             R1 2 0
       35 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 LOADN                            R1 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["complimentRef"]
        5 GETTABLEKS                       R2 R2 K1 ["current"]
        7 JUMPIFEQKNIL                     R2 ; [+5]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R0 R2 K0 ["complimentRef"]
       12 JUMP                             ; [+4]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R0 R2 K2 ["windowRef"]
       16 LOADN                            R1 275
       17 GETTABLEKS                       R2 R0 K1 ["current"]
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["lastSize"]
       24 GETTABLEKS                       R3 R0 K1 ["current"]
       26 GETTABLEKS                       R3 R3 K4 ["AbsoluteSize"]
       28 JUMPIFEQ                         R2 R3 ; [+46]
       30 GETTABLEKS                       R2 R0 K1 ["current"]
       32 GETTABLEKS                       R2 R2 K4 ["AbsoluteSize"]
       34 GETIMPORT                        R3 K7 [Vector2.new]
       36 GETTABLEKS                       R6 R2 K8 ["X"]
       38 FASTCALL2                        MATH_MAX R1 R6 ; [+4]
       40 MOVE                             R5 R1
       41 GETIMPORT                        R4 K11 [math.max]
       43 CALL                             R4 2 1
       44 GETTABLEKS                       R5 R2 K12 ["Y"]
       46 CALL                             R3 2 1
       47 MOVE                             R2 R3
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K13 ["props"]
       51 GETTABLEKS                       R4 R3 K14 ["Plugin"]
       53 NAMECALL                         R5 R4 K15 ["GetUri"]
       55 CALL                             R5 1 1
       56 GETTABLEKS                       R6 R3 K16 ["Widget"]
       58 GETUPVAL                         R7 1
       59 MOVE                             R8 R5
       60 DUPTABLE                         R9 K20 [{["Category"] = "Panels", ["ItemId"]}]
       61 GETTABLEKS                       R10 R6 K21 ["Name"]
       63 SETTABLEKS                       R10 R9 K19 ["ItemId"]
       65 CALL                             R7 2 1
       66 LOADK                            R10 K18 ["Panels"]
       67 NAMECALL                         R8 R4 K22 ["GetPluginComponent"]
       69 CALL                             R8 2 1
       70 MOVE                             R11 R7
       71 MOVE                             R12 R2
       72 NAMECALL                         R9 R8 K23 ["SetSizeAsync"]
       74 CALL                             R9 3 0
       75 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K4 [{[1] = False, ["jumpToTopic"] = }]
        1 SETTABLEKS                       R1 R0 K5 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K6 ["createRef"]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K7 ["windowRef"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K6 ["createRef"]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K8 ["complimentRef"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K9 ["lastSize"]
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K10 ["onToggleTopics"]
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U0
       25 SETTABLEKS                       R1 R0 K11 ["onSelectTopic"]
       27 NEWCLOSURE                       R1 P2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U0
       30 SETTABLEKS                       R1 R0 K12 ["onJumpDialogAction"]
       32 NEWCLOSURE                       R1 P3
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U1
       35 SETTABLEKS                       R1 R0 K13 ["onAbsoluteSizeChanged"]
       37 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelectTopic"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Localization"]
        4 GETTABLEKS                       R4 R2 K2 ["Stylizer"]
        6 NEWTABLE                         R5 0 0
        8 GETUPVAL                         R6 0
        9 CALL                             R6 0 1
       10 GETTABLEKS                       R7 R2 K3 ["StepData"]
       12 GETTABLEKS                       R8 R7 K4 ["topics"]
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 JUMPIFEQ                         R11 R1 ; [+2]
       19 LOADB                            R13 0 +1
       20 LOADB                            R13 1
       21 JUMPIFNOT                        R13 ; [+3]
       22 GETTABLEKS                       R14 R4 K5 ["SelectedTopicTextColor"]
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R14 R4 K6 ["TopicTextColor"]
       27 MOVE                             R16 R5
       28 GETUPVAL                         R17 1
       29 GETTABLEKS                       R17 R17 K7 ["createElement"]
       31 GETUPVAL                         R18 2
       32 DUPTABLE                         R19 K12 [{"Layout", "HorizontalAlignment", "Spacing", "Size"}]
       33 GETIMPORT                        R20 K16 [Enum.FillDirection.Horizontal]
       35 SETTABLEKS                       R20 R19 K8 ["Layout"]
       37 GETIMPORT                        R20 K18 [Enum.HorizontalAlignment.Left]
       39 SETTABLEKS                       R20 R19 K9 ["HorizontalAlignment"]
       41 GETTABLEKS                       R20 R4 K19 ["PaddingSmall"]
       43 SETTABLEKS                       R20 R19 K10 ["Spacing"]
       45 GETIMPORT                        R20 K22 [UDim2.new]
       47 LOADN                            R21 1
       48 LOADN                            R22 0
       49 LOADN                            R23 0
       50 GETTABLEKS                       R25 R4 K23 ["CircleSize"]
       52 GETTABLEKS                       R26 R4 K19 ["PaddingSmall"]
       54 ADD                              R24 R25 R26
       55 CALL                             R20 4 1
       56 SETTABLEKS                       R20 R19 K11 ["Size"]
       58 DUPTABLE                         R20 K26 [{"Number", "Title"}]
       59 GETUPVAL                         R21 1
       60 GETTABLEKS                       R21 R21 K7 ["createElement"]
       62 GETUPVAL                         R22 2
       63 DUPTABLE                         R23 K29 [{"BackgroundColor3", "Padding", "Size"}]
       64 GETTABLEKS                       R24 R4 K30 ["CircleColor"]
       66 SETTABLEKS                       R24 R23 K27 ["BackgroundColor3"]
       68 GETTABLEKS                       R24 R4 K19 ["PaddingSmall"]
       70 SETTABLEKS                       R24 R23 K28 ["Padding"]
       72 GETIMPORT                        R24 K32 [UDim2.fromOffset]
       74 GETTABLEKS                       R25 R4 K23 ["CircleSize"]
       76 GETTABLEKS                       R26 R4 K23 ["CircleSize"]
       78 CALL                             R24 2 1
       79 SETTABLEKS                       R24 R23 K11 ["Size"]
       81 DUPTABLE                         R24 K35 [{"Corner", "Text"}]
       82 GETUPVAL                         R25 1
       83 GETTABLEKS                       R25 R25 K7 ["createElement"]
       85 LOADK                            R26 K36 ["UICorner"]
       86 DUPTABLE                         R27 K38 [{"CornerRadius"}]
       87 GETIMPORT                        R28 K40 [UDim.new]
       89 LOADN                            R29 0
       90 GETTABLEKS                       R30 R4 K23 ["CircleSize"]
       92 CALL                             R28 2 1
       93 SETTABLEKS                       R28 R27 K37 ["CornerRadius"]
       95 CALL                             R25 2 1
       96 SETTABLEKS                       R25 R24 K33 ["Corner"]
       98 GETUPVAL                         R25 1
       99 GETTABLEKS                       R25 R25 K7 ["createElement"]
      101 GETUPVAL                         R26 3
      102 DUPTABLE                         R27 K46 [{"AnchorPoint", "AutomaticSize", "Font", "Position", "Text", "TextColor"}]
      103 GETIMPORT                        R28 K48 [Vector2.new]
      105 LOADK                            R29 K49 [0.5]
      106 LOADK                            R30 K49 [0.5]
      107 CALL                             R28 2 1
      108 SETTABLEKS                       R28 R27 K41 ["AnchorPoint"]
      110 GETIMPORT                        R28 K51 [Enum.AutomaticSize.XY]
      112 SETTABLEKS                       R28 R27 K42 ["AutomaticSize"]
      114 GETIMPORT                        R28 K53 [Enum.Font.SourceSansBold]
      116 SETTABLEKS                       R28 R27 K43 ["Font"]
      118 GETIMPORT                        R28 K55 [UDim2.fromScale]
      120 LOADK                            R29 K49 [0.5]
      121 LOADK                            R30 K49 [0.5]
      122 CALL                             R28 2 1
      123 SETTABLEKS                       R28 R27 K44 ["Position"]
      125 LOADK                            R28 K56 ["%d"]
      126 MOVE                             R30 R11
      127 NAMECALL                         R28 R28 K57 ["format"]
      129 CALL                             R28 2 1
      130 SETTABLEKS                       R28 R27 K34 ["Text"]
      132 SETTABLEKS                       R14 R27 K45 ["TextColor"]
      134 CALL                             R25 2 1
      135 SETTABLEKS                       R25 R24 K34 ["Text"]
      137 CALL                             R21 3 1
      138 SETTABLEKS                       R21 R20 K24 ["Number"]
      140 GETUPVAL                         R21 1
      141 GETTABLEKS                       R21 R21 K7 ["createElement"]
      143 GETUPVAL                         R22 4
      144 DUPTABLE                         R23 K65 [{["AutomaticSize"], ["Cursor"], ["Disabled"], ["DisabledTextColor"], ["OnClick"], ["LayoutOrder"], ["Style"] = "IconOnly", ["Text"], ["TextColor"]}]
      145 GETIMPORT                        R24 K51 [Enum.AutomaticSize.XY]
      147 SETTABLEKS                       R24 R23 K42 ["AutomaticSize"]
      149 JUMPIFNOT                        R13 ; [+2]
      150 LOADNIL                          R24
      151 JUMP                             ; [+1]
      152 LOADK                            R24 K66 ["PointingHand"]
      153 SETTABLEKS                       R24 R23 K58 ["Cursor"]
      155 SETTABLEKS                       R13 R23 K59 ["Disabled"]
      157 SETTABLEKS                       R14 R23 K60 ["DisabledTextColor"]
      159 NEWCLOSURE                       R24 P0
      160 CAPTURE                          VAL R0
      161 CAPTURE                          VAL R11
      162 SETTABLEKS                       R24 R23 K61 ["OnClick"]
      164 MOVE                             R24 R6
      165 CALL                             R24 0 1
      166 SETTABLEKS                       R24 R23 K62 ["LayoutOrder"]
      168 GETTABLEKS                       R26 R7 K67 ["id"]
      170 LOADK                            R28 K68 ["topic_"]
      171 MOVE                             R29 R12
      172 CONCAT                           R27 R28 R29
      173 NAMECALL                         R24 R3 K69 ["getText"]
      175 CALL                             R24 3 1
      176 SETTABLEKS                       R24 R23 K34 ["Text"]
      178 SETTABLEKS                       R14 R23 K45 ["TextColor"]
      180 CALL                             R21 2 1
      181 SETTABLEKS                       R21 R20 K25 ["Title"]
      183 CALL                             R17 3 -1
      184 FASTCALL                         TABLE_INSERT ; [+1]
      185 GETUPVAL                         R15 5
      186 CALL                             R15 -1 0
      187 FORGLOOP                         R8 2 ; [-171]
      189 RETURN                           R5 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R4 R1 K2 ["Stylizer"]
        8 GETTABLEKS                       R5 R1 K3 ["Localization"]
       10 GETTABLEKS                       R6 R1 K4 ["StepData"]
       12 JUMPIF                           R6 ; [+7]
       13 GETTABLEKS                       R7 R1 K5 ["Widget"]
       15 LOADB                            R8 0
       16 SETTABLEKS                       R8 R7 K6 ["Enabled"]
       18 LOADNIL                          R7
       19 RETURN                           R7 1
       20 GETTABLEKS                       R7 R6 K7 ["step"]
       22 JUMPIF                           R7 ; [+7]
       23 GETTABLEKS                       R8 R1 K5 ["Widget"]
       25 LOADB                            R9 0
       26 SETTABLEKS                       R9 R8 K6 ["Enabled"]
       28 LOADNIL                          R8
       29 RETURN                           R8 1
       30 GETTABLEKS                       R9 R7 K8 ["kind"]
       32 JUMPIFEQKS                       R9 K9 ["Completed"] ; [+2]
       34 LOADB                            R8 0 +1
       35 LOADB                            R8 1
       36 GETTABLEKS                       R10 R7 K8 ["kind"]
       38 JUMPIFEQKS                       R10 K10 ["Skipped"] ; [+2]
       40 LOADB                            R9 0 +1
       41 LOADB                            R9 1
       42 OR                               R10 R8 R9
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R11 R11 K11 ["createElement"]
       46 GETUPVAL                         R12 2
       47 DUPTABLE                         R13 K15 [{["ShouldRestore"] = True, ["Enabled"] = True, ["Title"], ["Widget"]}]
       48 GETTABLEKS                       R14 R1 K5 ["Widget"]
       50 GETTABLEKS                       R14 R14 K16 ["Name"]
       52 SETTABLEKS                       R14 R13 K14 ["Title"]
       54 GETTABLEKS                       R14 R1 K5 ["Widget"]
       56 SETTABLEKS                       R14 R13 K5 ["Widget"]
       58 DUPTABLE                         R14 K19 [{"Window", "Dialog"}]
       59 JUMPIFNOT                        R10 ; [+49]
       60 GETUPVAL                         R15 1
       61 GETTABLEKS                       R15 R15 K11 ["createElement"]
       63 GETUPVAL                         R16 3
       64 NEWTABLE                         R17 8 0
       66 GETTABLEKS                       R18 R4 K20 ["IconSize"]
       68 SETTABLEKS                       R18 R17 K20 ["IconSize"]
       70 GETTABLEKS                       R18 R4 K21 ["CheckmarkImage"]
       72 SETTABLEKS                       R18 R17 K22 ["Image"]
       74 MOVE                             R18 R3
       75 CALL                             R18 0 1
       76 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
       78 JUMPIFNOT                        R9 ; [+3]
       79 GETTABLEKS                       R18 R7 K24 ["description"]
       81 JUMP                             ; [+11]
       82 GETTABLEKS                       R20 R6 K25 ["id"]
       84 LOADK                            R21 K26 ["%s_Compliment"]
       85 GETTABLEKS                       R23 R7 K25 ["id"]
       87 NAMECALL                         R21 R21 K27 ["format"]
       89 CALL                             R21 2 -1
       90 NAMECALL                         R18 R5 K28 ["getText"]
       92 CALL                             R18 -1 1
       93 SETTABLEKS                       R18 R17 K29 ["Text"]
       95 GETTABLEKS                       R18 R0 K30 ["complimentRef"]
       97 SETTABLEKS                       R18 R17 K31 ["PaneRef"]
       99 GETUPVAL                         R18 1
      100 GETTABLEKS                       R18 R18 K32 ["Change"]
      102 GETTABLEKS                       R18 R18 K33 ["AbsoluteSize"]
      104 GETTABLEKS                       R19 R0 K34 ["onAbsoluteSizeChanged"]
      106 SETTABLE                         R19 R17 R18
      107 CALL                             R15 2 1
      108 JUMP                             ; [+3]
      109 NAMECALL                         R15 R0 K35 ["renderWindow"]
      111 CALL                             R15 1 1
      112 SETTABLEKS                       R15 R14 K17 ["Window"]
      114 GETUPVAL                         R15 1
      115 GETTABLEKS                       R15 R15 K11 ["createElement"]
      117 GETUPVAL                         R16 4
      118 DUPTABLE                         R17 K44 [{["Buttons"], ["Enabled"], ["MinContentSize"], ["Modal"] = True, ["OnClose"], ["OnButtonPressed"], ["Size"], ["Style"] = "AcceptCancel", ["Title"]}]
      119 NEWTABLE                         R18 0 2
      121 DUPTABLE                         R19 K47 [{["Key"] = "accept", ["Text"]}]
      122 LOADK                            R22 K48 ["Tutorial"]
      123 LOADK                            R23 K49 ["Skip"]
      124 NAMECALL                         R20 R5 K28 ["getText"]
      126 CALL                             R20 3 1
      127 SETTABLEKS                       R20 R19 K29 ["Text"]
      129 DUPTABLE                         R20 K51 [{["Key"] = "cancel", ["Text"]}]
      130 LOADK                            R23 K48 ["Tutorial"]
      131 LOADK                            R24 K52 ["Back"]
      132 NAMECALL                         R21 R5 K28 ["getText"]
      134 CALL                             R21 3 1
      135 SETTABLEKS                       R21 R20 K29 ["Text"]
      137 SETLIST                          R18 R19 2 [1]
      139 SETTABLEKS                       R18 R17 K36 ["Buttons"]
      141 GETTABLEKS                       R19 R2 K53 ["jumpToTopic"]
      143 JUMPIFNOTEQKNIL                  R19 ; [+2]
      145 LOADB                            R18 0 +1
      146 LOADB                            R18 1
      147 SETTABLEKS                       R18 R17 K6 ["Enabled"]
      149 GETIMPORT                        R18 K56 [Vector2.new]
      151 LOADN                            R19 450
      152 LOADN                            R20 100
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K37 ["MinContentSize"]
      156 GETTABLEKS                       R18 R0 K57 ["onJumpDialogAction"]
      158 SETTABLEKS                       R18 R17 K39 ["OnClose"]
      160 GETTABLEKS                       R18 R0 K57 ["onJumpDialogAction"]
      162 SETTABLEKS                       R18 R17 K40 ["OnButtonPressed"]
      164 GETIMPORT                        R18 K60 [UDim2.fromOffset]
      166 LOADN                            R19 450
      167 LOADN                            R20 100
      168 CALL                             R18 2 1
      169 SETTABLEKS                       R18 R17 K41 ["Size"]
      171 GETTABLEKS                       R20 R6 K25 ["id"]
      173 LOADK                            R21 K14 ["Title"]
      174 NAMECALL                         R18 R5 K28 ["getText"]
      176 CALL                             R18 3 1
      177 SETTABLEKS                       R18 R17 K14 ["Title"]
      179 DUPTABLE                         R18 K62 [{"Content"}]
      180 GETUPVAL                         R19 1
      181 GETTABLEKS                       R19 R19 K11 ["createElement"]
      183 GETUPVAL                         R20 5
      184 DUPTABLE                         R21 K67 [{["HorizontalAlignment"], ["Layout"], ["Spacing"] = 20}]
      185 GETIMPORT                        R22 K70 [Enum.HorizontalAlignment.Left]
      187 SETTABLEKS                       R22 R21 K63 ["HorizontalAlignment"]
      189 GETIMPORT                        R22 K73 [Enum.FillDirection.Vertical]
      191 SETTABLEKS                       R22 R21 K64 ["Layout"]
      193 DUPTABLE                         R22 K74 [{"Title", "Text"}]
      194 GETUPVAL                         R23 1
      195 GETTABLEKS                       R23 R23 K11 ["createElement"]
      197 GETUPVAL                         R24 6
      198 DUPTABLE                         R25 K77 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "Title", ["Text"], ["TextXAlignment"]}]
      199 GETIMPORT                        R26 K79 [Enum.AutomaticSize.XY]
      201 SETTABLEKS                       R26 R25 K75 ["AutomaticSize"]
      203 MOVE                             R26 R3
      204 CALL                             R26 0 1
      205 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      207 LOADK                            R28 K80 ["SkipDialog"]
      208 LOADK                            R29 K14 ["Title"]
      209 NAMECALL                         R26 R5 K28 ["getText"]
      211 CALL                             R26 3 1
      212 SETTABLEKS                       R26 R25 K29 ["Text"]
      214 GETIMPORT                        R26 K81 [Enum.TextXAlignment.Left]
      216 SETTABLEKS                       R26 R25 K76 ["TextXAlignment"]
      218 CALL                             R23 2 1
      219 SETTABLEKS                       R23 R22 K14 ["Title"]
      221 GETUPVAL                         R23 1
      222 GETTABLEKS                       R23 R23 K11 ["createElement"]
      224 GETUPVAL                         R24 6
      225 DUPTABLE                         R25 K83 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      226 GETIMPORT                        R26 K85 [Enum.AutomaticSize.Y]
      228 SETTABLEKS                       R26 R25 K75 ["AutomaticSize"]
      230 MOVE                             R26 R3
      231 CALL                             R26 0 1
      232 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      234 GETIMPORT                        R26 K87 [UDim2.fromScale]
      236 LOADN                            R27 1
      237 LOADN                            R28 0
      238 CALL                             R26 2 1
      239 SETTABLEKS                       R26 R25 K41 ["Size"]
      241 LOADK                            R28 K80 ["SkipDialog"]
      242 LOADK                            R29 K29 ["Text"]
      243 NAMECALL                         R26 R5 K28 ["getText"]
      245 CALL                             R26 3 1
      246 SETTABLEKS                       R26 R25 K29 ["Text"]
      248 GETIMPORT                        R26 K81 [Enum.TextXAlignment.Left]
      250 SETTABLEKS                       R26 R25 K76 ["TextXAlignment"]
      252 CALL                             R23 2 1
      253 SETTABLEKS                       R23 R22 K29 ["Text"]
      255 CALL                             R19 3 1
      256 SETTABLEKS                       R19 R18 K61 ["Content"]
      258 CALL                             R15 3 1
      259 SETTABLEKS                       R15 R14 K18 ["Dialog"]
      261 CALL                             R11 3 -1
      262 RETURN                           R11 -1

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R4 R1 K2 ["StepData"]
        8 GETTABLEKS                       R5 R4 K3 ["step"]
       10 GETTABLEKS                       R6 R1 K4 ["Stylizer"]
       12 GETTABLEKS                       R7 R1 K5 ["Localization"]
       14 GETTABLEKS                       R10 R4 K6 ["id"]
       16 LOADK                            R12 K7 ["topic_"]
       17 GETTABLEKS                       R14 R4 K8 ["topics"]
       19 GETTABLEKS                       R15 R4 K9 ["topic"]
       21 GETTABLE                         R13 R14 R15
       22 CONCAT                           R11 R12 R13
       23 NAMECALL                         R8 R7 K10 ["getText"]
       25 CALL                             R8 3 1
       26 LOADK                            R11 K11 ["Tutorial"]
       27 LOADK                            R12 K12 ["TopicNumber"]
       28 NAMECALL                         R9 R7 K10 ["getText"]
       30 CALL                             R9 3 1
       31 GETTABLEKS                       R11 R4 K9 ["topic"]
       33 GETTABLEKS                       R13 R4 K8 ["topics"]
       35 LENGTH                           R12 R13
       36 NAMECALL                         R9 R9 K13 ["format"]
       38 CALL                             R9 3 1
       39 GETTABLEKS                       R10 R1 K14 ["PressedKeys"]
       41 GETTABLEKS                       R11 R4 K15 ["showNext"]
       43 LOADB                            R12 0
       44 GETTABLEKS                       R13 R4 K9 ["topic"]
       46 GETTABLEKS                       R15 R4 K8 ["topics"]
       48 LENGTH                           R14 R15
       49 JUMPIFNOTEQ                      R13 R14 ; [+9]
       51 GETTABLEKS                       R13 R4 K16 ["topicStep"]
       53 GETTABLEKS                       R14 R4 K17 ["topicStepCount"]
       55 JUMPIFEQ                         R13 R14 ; [+2]
       57 LOADB                            R12 0 +1
       58 LOADB                            R12 1
       59 LOADB                            R13 0
       60 GETTABLEKS                       R14 R4 K9 ["topic"]
       62 JUMPIFNOTEQKN                    R14 K18 [1] ; [+7]
       64 GETTABLEKS                       R14 R4 K16 ["topicStep"]
       66 JUMPIFEQKN                       R14 K18 [1] ; [+2]
       68 LOADB                            R13 0 +1
       69 LOADB                            R13 1
       70 GETUPVAL                         R14 1
       71 GETTABLEKS                       R14 R14 K19 ["createElement"]
       73 GETUPVAL                         R15 2
       74 NEWTABLE                         R16 16 0
       76 GETIMPORT                        R17 K23 [Enum.AutomaticSize.Y]
       78 SETTABLEKS                       R17 R16 K21 ["AutomaticSize"]
       80 GETIMPORT                        R17 K26 [Enum.FillDirection.Vertical]
       82 SETTABLEKS                       R17 R16 K27 ["Layout"]
       84 GETIMPORT                        R17 K30 [Enum.HorizontalAlignment.Left]
       86 SETTABLEKS                       R17 R16 K28 ["HorizontalAlignment"]
       88 GETIMPORT                        R17 K33 [Enum.VerticalAlignment.Top]
       90 SETTABLEKS                       R17 R16 K31 ["VerticalAlignment"]
       92 GETTABLEKS                       R17 R6 K34 ["Padding"]
       94 SETTABLEKS                       R17 R16 K34 ["Padding"]
       96 GETTABLEKS                       R17 R6 K34 ["Padding"]
       98 SETTABLEKS                       R17 R16 K35 ["Spacing"]
      100 LOADK                            R17 K36 ["Box"]
      101 SETTABLEKS                       R17 R16 K37 ["Style"]
      103 GETTABLEKS                       R17 R0 K38 ["windowRef"]
      105 SETTABLEKS                       R17 R16 K39 ["ref"]
      107 GETUPVAL                         R17 1
      108 GETTABLEKS                       R17 R17 K40 ["Change"]
      110 GETTABLEKS                       R17 R17 K41 ["AbsoluteSize"]
      112 GETTABLEKS                       R18 R0 K42 ["onAbsoluteSizeChanged"]
      114 SETTABLE                         R18 R16 R17
      115 DUPTABLE                         R17 K47 [{"Header", "Separator", "Scroller", "NavigationRow"}]
      116 GETUPVAL                         R18 1
      117 GETTABLEKS                       R18 R18 K19 ["createElement"]
      119 GETUPVAL                         R19 2
      120 DUPTABLE                         R20 K49 [{"AutomaticSize", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "LayoutOrder"}]
      121 GETIMPORT                        R21 K23 [Enum.AutomaticSize.Y]
      123 SETTABLEKS                       R21 R20 K21 ["AutomaticSize"]
      125 GETIMPORT                        R21 K26 [Enum.FillDirection.Vertical]
      127 SETTABLEKS                       R21 R20 K27 ["Layout"]
      129 GETIMPORT                        R21 K30 [Enum.HorizontalAlignment.Left]
      131 SETTABLEKS                       R21 R20 K28 ["HorizontalAlignment"]
      133 GETIMPORT                        R21 K33 [Enum.VerticalAlignment.Top]
      135 SETTABLEKS                       R21 R20 K31 ["VerticalAlignment"]
      137 GETTABLEKS                       R21 R6 K50 ["PaddingSmall"]
      139 SETTABLEKS                       R21 R20 K35 ["Spacing"]
      141 MOVE                             R21 R3
      142 CALL                             R21 0 1
      143 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      145 DUPTABLE                         R21 K53 [{"Topbar", "TopicName"}]
      146 GETUPVAL                         R22 1
      147 GETTABLEKS                       R22 R22 K19 ["createElement"]
      149 GETUPVAL                         R23 2
      150 DUPTABLE                         R24 K54 [{"AutomaticSize", "LayoutOrder"}]
      151 GETIMPORT                        R25 K23 [Enum.AutomaticSize.Y]
      153 SETTABLEKS                       R25 R24 K21 ["AutomaticSize"]
      155 MOVE                             R25 R3
      156 CALL                             R25 0 1
      157 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      159 DUPTABLE                         R25 K56 [{"TopicNumber", "Controls"}]
      160 GETUPVAL                         R26 1
      161 GETTABLEKS                       R26 R26 K19 ["createElement"]
      163 GETUPVAL                         R27 3
      164 DUPTABLE                         R28 K61 [{["AutomaticSize"], ["Size"], ["Text"], ["TextXAlignment"], ["Style"] = "Label"}]
      165 GETIMPORT                        R29 K63 [Enum.AutomaticSize.X]
      167 SETTABLEKS                       R29 R28 K21 ["AutomaticSize"]
      169 GETIMPORT                        R29 K66 [UDim2.fromOffset]
      171 LOADN                            R30 0
      172 GETTABLEKS                       R32 R6 K67 ["IconSize"]
      174 GETTABLEKS                       R32 R32 K22 ["Y"]
      176 GETTABLEKS                       R32 R32 K68 ["Offset"]
      178 GETTABLEKS                       R33 R6 K50 ["PaddingSmall"]
      180 ADD                              R31 R32 R33
      181 CALL                             R29 2 1
      182 SETTABLEKS                       R29 R28 K57 ["Size"]
      184 SETTABLEKS                       R9 R28 K58 ["Text"]
      186 GETIMPORT                        R29 K69 [Enum.TextXAlignment.Left]
      188 SETTABLEKS                       R29 R28 K59 ["TextXAlignment"]
      190 CALL                             R26 2 1
      191 SETTABLEKS                       R26 R25 K12 ["TopicNumber"]
      193 GETUPVAL                         R26 1
      194 GETTABLEKS                       R26 R26 K19 ["createElement"]
      196 GETUPVAL                         R27 2
      197 DUPTABLE                         R28 K72 [{"AutomaticSize", "Size", "Position", "AnchorPoint", "Layout", "HorizontalAlignment", "Spacing"}]
      198 GETIMPORT                        R29 K63 [Enum.AutomaticSize.X]
      200 SETTABLEKS                       R29 R28 K21 ["AutomaticSize"]
      202 GETIMPORT                        R29 K66 [UDim2.fromOffset]
      204 LOADN                            R30 0
      205 GETTABLEKS                       R32 R6 K67 ["IconSize"]
      207 GETTABLEKS                       R32 R32 K22 ["Y"]
      209 GETTABLEKS                       R32 R32 K68 ["Offset"]
      211 GETTABLEKS                       R33 R6 K50 ["PaddingSmall"]
      213 ADD                              R31 R32 R33
      214 CALL                             R29 2 1
      215 SETTABLEKS                       R29 R28 K57 ["Size"]
      217 GETIMPORT                        R29 K74 [UDim2.fromScale]
      219 LOADN                            R30 1
      220 LOADN                            R31 0
      221 CALL                             R29 2 1
      222 SETTABLEKS                       R29 R28 K70 ["Position"]
      224 GETIMPORT                        R29 K77 [Vector2.new]
      226 LOADN                            R30 1
      227 LOADN                            R31 0
      228 CALL                             R29 2 1
      229 SETTABLEKS                       R29 R28 K71 ["AnchorPoint"]
      231 GETIMPORT                        R29 K79 [Enum.FillDirection.Horizontal]
      233 SETTABLEKS                       R29 R28 K27 ["Layout"]
      235 GETIMPORT                        R29 K81 [Enum.HorizontalAlignment.Right]
      237 SETTABLEKS                       R29 R28 K28 ["HorizontalAlignment"]
      239 GETTABLEKS                       R29 R6 K50 ["PaddingSmall"]
      241 SETTABLEKS                       R29 R28 K35 ["Spacing"]
      243 DUPTABLE                         R29 K84 [{"List", "Close"}]
      244 GETUPVAL                         R31 4
      245 NAMECALL                         R31 R31 K85 ["IsEdit"]
      247 CALL                             R31 1 1
      248 JUMPIFNOT                        R31 ; [+29]
      249 GETUPVAL                         R30 1
      250 GETTABLEKS                       R30 R30 K19 ["createElement"]
      252 GETUPVAL                         R31 5
      253 DUPTABLE                         R32 K91 [{["Cursor"] = "PointingHand", ["OnClick"], ["LayoutOrder"], ["LeftIcon"], ["Size"], ["Style"] = "IconOnly"}]
      254 GETTABLEKS                       R33 R0 K92 ["onToggleTopics"]
      256 SETTABLEKS                       R33 R32 K88 ["OnClick"]
      258 MOVE                             R33 R3
      259 CALL                             R33 0 1
      260 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      262 GETTABLEKS                       R34 R2 K93 ["showTopics"]
      264 JUMPIFNOT                        R34 ; [+3]
      265 GETTABLEKS                       R33 R6 K94 ["ListSelectedImage"]
      267 JUMP                             ; [+2]
      268 GETTABLEKS                       R33 R6 K95 ["ListImage"]
      270 SETTABLEKS                       R33 R32 K89 ["LeftIcon"]
      272 GETTABLEKS                       R33 R6 K67 ["IconSize"]
      274 SETTABLEKS                       R33 R32 K57 ["Size"]
      276 CALL                             R30 2 1
      277 JUMP                             ; [+1]
      278 LOADNIL                          R30
      279 SETTABLEKS                       R30 R29 K82 ["List"]
      281 GETUPVAL                         R30 1
      282 GETTABLEKS                       R30 R30 K19 ["createElement"]
      284 GETUPVAL                         R31 5
      285 DUPTABLE                         R32 K91 [{["Cursor"] = "PointingHand", ["OnClick"], ["LayoutOrder"], ["LeftIcon"], ["Size"], ["Style"] = "IconOnly"}]
      286 GETTABLEKS                       R33 R0 K0 ["props"]
      288 GETTABLEKS                       R33 R33 K96 ["OnQuit"]
      290 SETTABLEKS                       R33 R32 K88 ["OnClick"]
      292 MOVE                             R33 R3
      293 CALL                             R33 0 1
      294 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      296 GETTABLEKS                       R33 R6 K97 ["CloseImage"]
      298 SETTABLEKS                       R33 R32 K89 ["LeftIcon"]
      300 GETTABLEKS                       R33 R6 K67 ["IconSize"]
      302 SETTABLEKS                       R33 R32 K57 ["Size"]
      304 CALL                             R30 2 1
      305 SETTABLEKS                       R30 R29 K83 ["Close"]
      307 CALL                             R26 3 1
      308 SETTABLEKS                       R26 R25 K55 ["Controls"]
      310 CALL                             R22 3 1
      311 SETTABLEKS                       R22 R21 K51 ["Topbar"]
      313 GETUPVAL                         R22 1
      314 GETTABLEKS                       R22 R22 K19 ["createElement"]
      316 GETUPVAL                         R23 3
      317 DUPTABLE                         R24 K101 [{["AutomaticSize"], ["Size"], ["LayoutOrder"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True, ["Style"] = "Semibold"}]
      318 GETIMPORT                        R25 K23 [Enum.AutomaticSize.Y]
      320 SETTABLEKS                       R25 R24 K21 ["AutomaticSize"]
      322 GETIMPORT                        R25 K74 [UDim2.fromScale]
      324 LOADN                            R26 1
      325 LOADN                            R27 0
      326 CALL                             R25 2 1
      327 SETTABLEKS                       R25 R24 K57 ["Size"]
      329 MOVE                             R25 R3
      330 CALL                             R25 0 1
      331 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      333 SETTABLEKS                       R8 R24 K58 ["Text"]
      335 GETIMPORT                        R25 K69 [Enum.TextXAlignment.Left]
      337 SETTABLEKS                       R25 R24 K59 ["TextXAlignment"]
      339 CALL                             R22 2 1
      340 SETTABLEKS                       R22 R21 K52 ["TopicName"]
      342 CALL                             R18 3 1
      343 SETTABLEKS                       R18 R17 K43 ["Header"]
      345 GETUPVAL                         R18 1
      346 GETTABLEKS                       R18 R18 K19 ["createElement"]
      348 GETUPVAL                         R19 6
      349 DUPTABLE                         R20 K102 [{"LayoutOrder"}]
      350 MOVE                             R21 R3
      351 CALL                             R21 0 1
      352 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      354 CALL                             R18 2 1
      355 SETTABLEKS                       R18 R17 K44 ["Separator"]
      357 GETUPVAL                         R18 1
      358 GETTABLEKS                       R18 R18 K19 ["createElement"]
      360 GETUPVAL                         R19 2
      361 DUPTABLE                         R20 K104 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Padding"] = 0, ["Spacing"]}]
      362 GETIMPORT                        R21 K23 [Enum.AutomaticSize.Y]
      364 SETTABLEKS                       R21 R20 K21 ["AutomaticSize"]
      366 GETIMPORT                        R21 K30 [Enum.HorizontalAlignment.Left]
      368 SETTABLEKS                       R21 R20 K28 ["HorizontalAlignment"]
      370 GETIMPORT                        R21 K26 [Enum.FillDirection.Vertical]
      372 SETTABLEKS                       R21 R20 K27 ["Layout"]
      374 MOVE                             R21 R3
      375 CALL                             R21 0 1
      376 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      378 GETIMPORT                        R21 K106 [UDim.new]
      380 LOADN                            R22 0
      381 GETTABLEKS                       R23 R6 K34 ["Padding"]
      383 CALL                             R21 2 1
      384 SETTABLEKS                       R21 R20 K35 ["Spacing"]
      386 GETTABLEKS                       R22 R2 K93 ["showTopics"]
      388 JUMPIFNOT                        R22 ; [+6]
      389 GETTABLEKS                       R23 R4 K9 ["topic"]
      391 NAMECALL                         R21 R0 K107 ["getTopicList"]
      393 CALL                             R21 2 1
      394 JUMP                             ; [+85]
      395 DUPTABLE                         R21 K111 [{"StepTitle", "StepDescription", "Keys"}]
      396 GETTABLEKS                       R23 R5 K112 ["title"]
      398 JUMPIFNOT                        R23 ; [+30]
      399 GETUPVAL                         R22 1
      400 GETTABLEKS                       R22 R22 K19 ["createElement"]
      402 GETUPVAL                         R23 3
      403 DUPTABLE                         R24 K114 [{["AutomaticSize"], ["TextXAlignment"], ["TextWrapped"] = True, ["Size"], ["LayoutOrder"], ["Style"] = "Title", ["Text"]}]
      404 GETIMPORT                        R25 K23 [Enum.AutomaticSize.Y]
      406 SETTABLEKS                       R25 R24 K21 ["AutomaticSize"]
      408 GETIMPORT                        R25 K69 [Enum.TextXAlignment.Left]
      410 SETTABLEKS                       R25 R24 K59 ["TextXAlignment"]
      412 GETIMPORT                        R25 K74 [UDim2.fromScale]
      414 LOADN                            R26 1
      415 LOADN                            R27 0
      416 CALL                             R25 2 1
      417 SETTABLEKS                       R25 R24 K57 ["Size"]
      419 MOVE                             R25 R3
      420 CALL                             R25 0 1
      421 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      423 GETTABLEKS                       R25 R5 K112 ["title"]
      425 SETTABLEKS                       R25 R24 K58 ["Text"]
      427 CALL                             R22 2 1
      428 JUMP                             ; [+1]
      429 LOADNIL                          R22
      430 SETTABLEKS                       R22 R21 K108 ["StepTitle"]
      432 GETUPVAL                         R22 1
      433 GETTABLEKS                       R22 R22 K19 ["createElement"]
      435 GETUPVAL                         R23 3
      436 DUPTABLE                         R24 K116 [{["AutomaticSize"], ["LayoutOrder"], ["RichText"] = True, ["Size"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      437 GETIMPORT                        R25 K23 [Enum.AutomaticSize.Y]
      439 SETTABLEKS                       R25 R24 K21 ["AutomaticSize"]
      441 MOVE                             R25 R3
      442 CALL                             R25 0 1
      443 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      445 GETIMPORT                        R25 K74 [UDim2.fromScale]
      447 LOADN                            R26 1
      448 LOADN                            R27 0
      449 CALL                             R25 2 1
      450 SETTABLEKS                       R25 R24 K57 ["Size"]
      452 GETTABLEKS                       R25 R5 K117 ["description"]
      454 SETTABLEKS                       R25 R24 K58 ["Text"]
      456 GETIMPORT                        R25 K69 [Enum.TextXAlignment.Left]
      458 SETTABLEKS                       R25 R24 K59 ["TextXAlignment"]
      460 CALL                             R22 2 1
      461 SETTABLEKS                       R22 R21 K109 ["StepDescription"]
      463 JUMPIFNOT                        R10 ; [+13]
      464 GETUPVAL                         R22 1
      465 GETTABLEKS                       R22 R22 K19 ["createElement"]
      467 GETUPVAL                         R23 7
      468 DUPTABLE                         R24 K118 [{"LayoutOrder", "PressedKeys"}]
      469 MOVE                             R25 R3
      470 CALL                             R25 0 1
      471 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      473 SETTABLEKS                       R10 R24 K14 ["PressedKeys"]
      475 CALL                             R22 2 1
      476 JUMP                             ; [+1]
      477 LOADNIL                          R22
      478 SETTABLEKS                       R22 R21 K110 ["Keys"]
      480 CALL                             R18 3 1
      481 SETTABLEKS                       R18 R17 K45 ["Scroller"]
      483 GETUPVAL                         R19 4
      484 NAMECALL                         R19 R19 K85 ["IsEdit"]
      486 CALL                             R19 1 1
      487 JUMPIFNOT                        R19 ; [+162]
      488 GETUPVAL                         R18 1
      489 GETTABLEKS                       R18 R18 K19 ["createElement"]
      491 GETUPVAL                         R19 2
      492 DUPTABLE                         R20 K54 [{"AutomaticSize", "LayoutOrder"}]
      493 GETIMPORT                        R21 K23 [Enum.AutomaticSize.Y]
      495 SETTABLEKS                       R21 R20 K21 ["AutomaticSize"]
      497 MOVE                             R21 R3
      498 CALL                             R21 0 1
      499 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      501 DUPTABLE                         R21 K122 [{"Back", "PaginationDots", "Next"}]
      502 JUMPIF                           R13 ; [+26]
      503 GETUPVAL                         R22 1
      504 GETTABLEKS                       R22 R22 K19 ["createElement"]
      506 GETUPVAL                         R23 5
      507 DUPTABLE                         R24 K124 [{["AutomaticSize"], ["Cursor"] = "PointingHand", ["OnClick"], ["LayoutOrder"], ["Style"] = "Link", ["Text"]}]
      508 GETIMPORT                        R25 K126 [Enum.AutomaticSize.XY]
      510 SETTABLEKS                       R25 R24 K21 ["AutomaticSize"]
      512 GETTABLEKS                       R25 R1 K127 ["OnBack"]
      514 SETTABLEKS                       R25 R24 K88 ["OnClick"]
      516 MOVE                             R25 R3
      517 CALL                             R25 0 1
      518 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      520 LOADK                            R27 K11 ["Tutorial"]
      521 LOADK                            R28 K119 ["Back"]
      522 NAMECALL                         R25 R7 K10 ["getText"]
      524 CALL                             R25 3 1
      525 SETTABLEKS                       R25 R24 K58 ["Text"]
      527 CALL                             R22 2 1
      528 JUMP                             ; [+1]
      529 LOADNIL                          R22
      530 SETTABLEKS                       R22 R21 K119 ["Back"]
      532 GETUPVAL                         R22 1
      533 GETTABLEKS                       R22 R22 K19 ["createElement"]
      535 GETUPVAL                         R23 2
      536 DUPTABLE                         R24 K128 [{"AnchorPoint", "HorizontalAlignment", "Layout", "Position", "VerticalAlignment"}]
      537 GETIMPORT                        R25 K77 [Vector2.new]
      539 LOADK                            R26 K129 [0.5]
      540 LOADK                            R27 K129 [0.5]
      541 CALL                             R25 2 1
      542 SETTABLEKS                       R25 R24 K71 ["AnchorPoint"]
      544 GETIMPORT                        R25 K131 [Enum.HorizontalAlignment.Center]
      546 SETTABLEKS                       R25 R24 K28 ["HorizontalAlignment"]
      548 GETIMPORT                        R25 K79 [Enum.FillDirection.Horizontal]
      550 SETTABLEKS                       R25 R24 K27 ["Layout"]
      552 GETIMPORT                        R25 K74 [UDim2.fromScale]
      554 LOADK                            R26 K129 [0.5]
      555 LOADK                            R27 K129 [0.5]
      556 CALL                             R25 2 1
      557 SETTABLEKS                       R25 R24 K70 ["Position"]
      559 GETIMPORT                        R25 K132 [Enum.VerticalAlignment.Center]
      561 SETTABLEKS                       R25 R24 K31 ["VerticalAlignment"]
      563 DUPTABLE                         R25 K134 [{"Child"}]
      564 GETUPVAL                         R26 1
      565 GETTABLEKS                       R26 R26 K19 ["createElement"]
      567 GETUPVAL                         R27 8
      568 DUPTABLE                         R28 K138 [{"Count", "OnSelected", "SelectedIndex"}]
      569 GETTABLEKS                       R29 R4 K17 ["topicStepCount"]
      571 SETTABLEKS                       R29 R28 K135 ["Count"]
      573 DUPCLOSURE                       R29 K139 [PROTO_8]
      574 SETTABLEKS                       R29 R28 K136 ["OnSelected"]
      576 GETTABLEKS                       R29 R4 K16 ["topicStep"]
      578 SETTABLEKS                       R29 R28 K137 ["SelectedIndex"]
      580 CALL                             R26 2 1
      581 SETTABLEKS                       R26 R25 K133 ["Child"]
      583 CALL                             R22 3 1
      584 SETTABLEKS                       R22 R21 K120 ["PaginationDots"]
      586 GETUPVAL                         R22 1
      587 GETTABLEKS                       R22 R22 K19 ["createElement"]
      589 GETUPVAL                         R23 5
      590 DUPTABLE                         R24 K140 [{["AnchorPoint"], ["AutomaticSize"], ["Cursor"] = "PointingHand", ["LayoutOrder"], ["OnClick"], ["Position"], ["Style"], ["Text"]}]
      591 GETIMPORT                        R25 K77 [Vector2.new]
      593 LOADN                            R26 1
      594 LOADN                            R27 0
      595 CALL                             R25 2 1
      596 SETTABLEKS                       R25 R24 K71 ["AnchorPoint"]
      598 GETIMPORT                        R25 K126 [Enum.AutomaticSize.XY]
      600 SETTABLEKS                       R25 R24 K21 ["AutomaticSize"]
      602 MOVE                             R25 R3
      603 CALL                             R25 0 1
      604 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      606 GETTABLEKS                       R25 R1 K141 ["OnNext"]
      608 SETTABLEKS                       R25 R24 K88 ["OnClick"]
      610 GETIMPORT                        R25 K74 [UDim2.fromScale]
      612 LOADN                            R26 1
      613 LOADN                            R27 0
      614 CALL                             R25 2 1
      615 SETTABLEKS                       R25 R24 K70 ["Position"]
      617 JUMPIF                           R12 ; [+1]
      618 JUMPIFNOT                        R11 ; [+2]
      619 LOADK                            R25 K142 ["Primary"]
      620 JUMP                             ; [+1]
      621 LOADK                            R25 K123 ["Link"]
      622 SETTABLEKS                       R25 R24 K37 ["Style"]
      624 JUMPIFNOT                        R12 ; [+6]
      625 LOADK                            R27 K143 ["Plugin"]
      626 LOADK                            R28 K144 ["Finish"]
      627 NAMECALL                         R25 R7 K10 ["getText"]
      629 CALL                             R25 3 1
      630 JUMP                             ; [+12]
      631 JUMPIFNOT                        R11 ; [+6]
      632 LOADK                            R27 K143 ["Plugin"]
      633 LOADK                            R28 K121 ["Next"]
      634 NAMECALL                         R25 R7 K10 ["getText"]
      636 CALL                             R25 3 1
      637 JUMP                             ; [+5]
      638 LOADK                            R27 K11 ["Tutorial"]
      639 LOADK                            R28 K145 ["Skip"]
      640 NAMECALL                         R25 R7 K10 ["getText"]
      642 CALL                             R25 3 1
      643 SETTABLEKS                       R25 R24 K58 ["Text"]
      645 CALL                             R22 2 1
      646 SETTABLEKS                       R22 R21 K121 ["Next"]
      648 CALL                             R18 3 1
      649 JUMP                             ; [+1]
      650 LOADNIL                          R18
      651 SETTABLEKS                       R18 R17 K46 ["NavigationRow"]
      653 CALL                             R14 3 -1
      654 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       31 GETTABLEKS                       R5 R4 K13 ["withContext"]
       33 GETTABLEKS                       R6 R4 K14 ["Stylizer"]
       35 GETTABLEKS                       R7 R4 K15 ["Localization"]
       37 GETIMPORT                        R8 K8 [require]
       39 GETTABLEKS                       R9 R1 K16 ["Src"]
       41 GETTABLEKS                       R9 R9 K17 ["Util"]
       43 GETTABLEKS                       R9 R9 K18 ["TutorialTypes"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R3 K19 ["UI"]
       48 GETTABLEKS                       R10 R9 K20 ["DockWidget"]
       50 GETTABLEKS                       R11 R9 K21 ["IconButton"]
       52 GETTABLEKS                       R12 R9 K22 ["PaginationDots"]
       54 GETTABLEKS                       R13 R9 K23 ["Pane"]
       56 GETTABLEKS                       R14 R9 K24 ["StyledDialog"]
       58 GETTABLEKS                       R15 R9 K25 ["Separator"]
       60 GETTABLEKS                       R16 R9 K26 ["TextLabel"]
       62 GETIMPORT                        R17 K8 [require]
       64 GETTABLEKS                       R18 R1 K16 ["Src"]
       66 GETTABLEKS                       R18 R18 K27 ["Components"]
       68 GETTABLEKS                       R18 R18 K28 ["Compliment"]
       70 CALL                             R17 1 1
       71 GETIMPORT                        R18 K8 [require]
       73 GETTABLEKS                       R19 R1 K16 ["Src"]
       75 GETTABLEKS                       R19 R19 K27 ["Components"]
       77 GETTABLEKS                       R19 R19 K29 ["HintKeys"]
       79 CALL                             R18 1 1
       80 GETIMPORT                        R19 K8 [require]
       82 GETTABLEKS                       R20 R1 K16 ["Src"]
       84 GETTABLEKS                       R20 R20 K17 ["Util"]
       86 GETTABLEKS                       R20 R20 K30 ["counter"]
       88 CALL                             R19 1 1
       89 GETIMPORT                        R20 K8 [require]
       91 GETTABLEKS                       R21 R1 K9 ["Packages"]
       93 GETTABLEKS                       R21 R21 K31 ["Dash"]
       95 CALL                             R20 1 1
       96 GETTABLEKS                       R21 R20 K32 ["join"]
       98 GETIMPORT                        R22 K35 [table.insert]
      100 GETTABLEKS                       R23 R2 K36 ["PureComponent"]
      102 LOADK                            R25 K37 ["TourWidget"]
      103 NAMECALL                         R23 R23 K38 ["extend"]
      105 CALL                             R23 2 1
      106 DUPCLOSURE                       R24 K39 [PROTO_4]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R21
      109 SETTABLEKS                       R24 R23 K40 ["init"]
      111 DUPCLOSURE                       R24 K41 [PROTO_6]
      112 CAPTURE                          VAL R19
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R22
      118 SETTABLEKS                       R24 R23 K42 ["getTopicList"]
      120 DUPCLOSURE                       R24 K43 [PROTO_7]
      121 CAPTURE                          VAL R19
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R16
      128 SETTABLEKS                       R24 R23 K44 ["render"]
      130 DUPCLOSURE                       R24 K45 [PROTO_9]
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R0
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R12
      140 SETTABLEKS                       R24 R23 K46 ["renderWindow"]
      142 MOVE                             R24 R5
      143 DUPTABLE                         R25 K47 [{"Localization", "Stylizer"}]
      144 SETTABLEKS                       R7 R25 K15 ["Localization"]
      146 SETTABLEKS                       R6 R25 K14 ["Stylizer"]
      148 CALL                             R24 1 1
      149 MOVE                             R25 R23
      150 CALL                             R24 1 1
      151 MOVE                             R23 R24
      152 RETURN                           R23 1
