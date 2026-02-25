PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showTopics"}]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K2 ["state"]
        5 GETTABLEKS                       R4 R5 K0 ["showTopics"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["showTopics"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["StepData"]
        5 GETTABLEKS                       R1 R2 K2 ["topic"]
        7 JUMPIFNOTLT                      R0 R1 ; [+22]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["props"]
       12 GETTABLEKS                       R1 R2 K3 ["OnSelectTopic"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 0
       17 DUPTABLE                         R3 K6 [{"showTopics", "jumpToTopic"}]
       18 LOADB                            R4 0
       19 SETTABLEKS                       R4 R3 K4 ["showTopics"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K7 ["None"]
       24 SETTABLEKS                       R4 R3 K5 ["jumpToTopic"]
       26 NAMECALL                         R1 R1 K8 ["setState"]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 0
       31 DUPTABLE                         R3 K9 [{"jumpToTopic"}]
       32 SETTABLEKS                       R0 R3 K5 ["jumpToTopic"]
       34 NAMECALL                         R1 R1 K8 ["setState"]
       36 CALL                             R1 2 0
       37 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["accept"] ; [+27]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["state"]
        5 GETTABLEKS                       R1 R2 K2 ["jumpToTopic"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["props"]
       10 GETTABLEKS                       R2 R3 K4 ["OnSelectTopic"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 0
       15 DUPTABLE                         R4 K6 [{"showTopics", "jumpToTopic"}]
       16 LOADB                            R5 0
       17 SETTABLEKS                       R5 R4 K5 ["showTopics"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K7 ["None"]
       22 SETTABLEKS                       R5 R4 K2 ["jumpToTopic"]
       24 NAMECALL                         R2 R2 K8 ["setState"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 0
       29 DUPTABLE                         R3 K9 [{"jumpToTopic"}]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R4 R5 K7 ["None"]
       33 SETTABLEKS                       R4 R3 K2 ["jumpToTopic"]
       35 NAMECALL                         R1 R1 K8 ["setState"]
       37 CALL                             R1 2 0
       38 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 LOADN                            R1 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["complimentRef"]
        5 GETTABLEKS                       R2 R3 K1 ["current"]
        7 JUMPIFEQKNIL                     R2 ; [+5]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R0 R2 K0 ["complimentRef"]
       12 JUMP                             ; [+4]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R0 R2 K2 ["windowRef"]
       16 LOADN                            R1 19
       17 GETTABLEKS                       R2 R0 K1 ["current"]
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K3 ["lastSize"]
       24 GETTABLEKS                       R4 R0 K1 ["current"]
       26 GETTABLEKS                       R3 R4 K4 ["AbsoluteSize"]
       28 JUMPIFEQ                         R2 R3 ; [+49]
       30 GETTABLEKS                       R3 R0 K1 ["current"]
       32 GETTABLEKS                       R2 R3 K4 ["AbsoluteSize"]
       34 GETIMPORT                        R3 K7 [Vector2.new]
       36 GETTABLEKS                       R6 R2 K8 ["X"]
       38 FASTCALL2                        MATH_MAX R1 R6 ; [+4]
       40 MOVE                             R5 R1
       41 GETIMPORT                        R4 K11 [math.max]
       43 CALL                             R4 2 1
       44 GETTABLEKS                       R5 R2 K12 ["Y"]
       46 CALL                             R3 2 1
       47 MOVE                             R2 R3
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R3 R4 K13 ["props"]
       51 GETTABLEKS                       R4 R3 K14 ["Plugin"]
       53 NAMECALL                         R5 R4 K15 ["GetUri"]
       55 CALL                             R5 1 1
       56 GETTABLEKS                       R6 R3 K16 ["Widget"]
       58 GETUPVAL                         R7 1
       59 MOVE                             R8 R5
       60 DUPTABLE                         R9 K19 [{"Category", "ItemId"}]
       61 LOADK                            R10 K20 ["Panels"]
       62 SETTABLEKS                       R10 R9 K17 ["Category"]
       64 GETTABLEKS                       R10 R6 K21 ["Name"]
       66 SETTABLEKS                       R10 R9 K18 ["ItemId"]
       68 CALL                             R7 2 1
       69 LOADK                            R10 K20 ["Panels"]
       70 NAMECALL                         R8 R4 K22 ["GetPluginComponent"]
       72 CALL                             R8 2 1
       73 MOVE                             R11 R7
       74 MOVE                             R12 R2
       75 NAMECALL                         R9 R8 K23 ["SetSizeAsync"]
       77 CALL                             R9 3 0
       78 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"showTopics", "jumpToTopic"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["showTopics"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["jumpToTopic"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K4 ["createRef"]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K5 ["windowRef"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K4 ["createRef"]
       18 CALL                             R1 0 1
       19 SETTABLEKS                       R1 R0 K6 ["complimentRef"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K7 ["lastSize"]
       24 NEWCLOSURE                       R1 P0
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K8 ["onToggleTopics"]
       28 NEWCLOSURE                       R1 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U0
       31 SETTABLEKS                       R1 R0 K9 ["onSelectTopic"]
       33 NEWCLOSURE                       R1 P2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U0
       36 SETTABLEKS                       R1 R0 K10 ["onJumpDialogAction"]
       38 NEWCLOSURE                       R1 P3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U1
       41 SETTABLEKS                       R1 R0 K11 ["onAbsoluteSizeChanged"]
       43 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onSelectTopic"]
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
       28 GETUPVAL                         R18 1
       29 GETTABLEKS                       R17 R18 K7 ["createElement"]
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
       59 GETUPVAL                         R22 1
       60 GETTABLEKS                       R21 R22 K7 ["createElement"]
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
       82 GETUPVAL                         R26 1
       83 GETTABLEKS                       R25 R26 K7 ["createElement"]
       85 LOADK                            R26 K36 ["UICorner"]
       86 DUPTABLE                         R27 K38 [{"CornerRadius"}]
       87 GETIMPORT                        R28 K40 [UDim.new]
       89 LOADN                            R29 0
       90 GETTABLEKS                       R30 R4 K23 ["CircleSize"]
       92 CALL                             R28 2 1
       93 SETTABLEKS                       R28 R27 K37 ["CornerRadius"]
       95 CALL                             R25 2 1
       96 SETTABLEKS                       R25 R24 K33 ["Corner"]
       98 GETUPVAL                         R26 1
       99 GETTABLEKS                       R25 R26 K7 ["createElement"]
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
      140 GETUPVAL                         R22 1
      141 GETTABLEKS                       R21 R22 K7 ["createElement"]
      143 GETUPVAL                         R22 4
      144 DUPTABLE                         R23 K64 [{"AutomaticSize", "Cursor", "Disabled", "DisabledTextColor", "OnClick", "LayoutOrder", "Style", "Text", "TextColor"}]
      145 GETIMPORT                        R24 K51 [Enum.AutomaticSize.XY]
      147 SETTABLEKS                       R24 R23 K42 ["AutomaticSize"]
      149 JUMPIFNOT                        R13 ; [+2]
      150 LOADNIL                          R24
      151 JUMP                             ; [+1]
      152 LOADK                            R24 K65 ["PointingHand"]
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
      168 LOADK                            R24 K66 ["IconOnly"]
      169 SETTABLEKS                       R24 R23 K63 ["Style"]
      171 GETTABLEKS                       R26 R7 K67 ["id"]
      173 LOADK                            R28 K68 ["topic_"]
      174 MOVE                             R29 R12
      175 CONCAT                           R27 R28 R29
      176 NAMECALL                         R24 R3 K69 ["getText"]
      178 CALL                             R24 3 1
      179 SETTABLEKS                       R24 R23 K34 ["Text"]
      181 SETTABLEKS                       R14 R23 K45 ["TextColor"]
      183 CALL                             R21 2 1
      184 SETTABLEKS                       R21 R20 K25 ["Title"]
      186 CALL                             R17 3 -1
      187 FASTCALL                         TABLE_INSERT ; [+1]
      188 GETUPVAL                         R15 5
      189 CALL                             R15 -1 0
      190 FORGLOOP                         R8 2 ; [-174]
      192 RETURN                           R5 1

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
       43 GETUPVAL                         R12 1
       44 GETTABLEKS                       R11 R12 K11 ["createElement"]
       46 GETUPVAL                         R12 2
       47 DUPTABLE                         R13 K14 [{"ShouldRestore", "Enabled", "Title", "Widget"}]
       48 LOADB                            R14 1
       49 SETTABLEKS                       R14 R13 K12 ["ShouldRestore"]
       51 LOADB                            R14 1
       52 SETTABLEKS                       R14 R13 K6 ["Enabled"]
       54 GETTABLEKS                       R15 R1 K5 ["Widget"]
       56 GETTABLEKS                       R14 R15 K15 ["Name"]
       58 SETTABLEKS                       R14 R13 K13 ["Title"]
       60 GETTABLEKS                       R14 R1 K5 ["Widget"]
       62 SETTABLEKS                       R14 R13 K5 ["Widget"]
       64 DUPTABLE                         R14 K18 [{"Window", "Dialog"}]
       65 JUMPIFNOT                        R10 ; [+49]
       66 GETUPVAL                         R16 1
       67 GETTABLEKS                       R15 R16 K11 ["createElement"]
       69 GETUPVAL                         R16 3
       70 NEWTABLE                         R17 8 0
       72 GETTABLEKS                       R18 R4 K19 ["IconSize"]
       74 SETTABLEKS                       R18 R17 K19 ["IconSize"]
       76 GETTABLEKS                       R18 R4 K20 ["CheckmarkImage"]
       78 SETTABLEKS                       R18 R17 K21 ["Image"]
       80 MOVE                             R18 R3
       81 CALL                             R18 0 1
       82 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
       84 JUMPIFNOT                        R9 ; [+3]
       85 GETTABLEKS                       R18 R7 K23 ["description"]
       87 JUMP                             ; [+11]
       88 GETTABLEKS                       R20 R6 K24 ["id"]
       90 LOADK                            R21 K25 ["%s_Compliment"]
       91 GETTABLEKS                       R23 R7 K24 ["id"]
       93 NAMECALL                         R21 R21 K26 ["format"]
       95 CALL                             R21 2 -1
       96 NAMECALL                         R18 R5 K27 ["getText"]
       98 CALL                             R18 -1 1
       99 SETTABLEKS                       R18 R17 K28 ["Text"]
      101 GETTABLEKS                       R18 R0 K29 ["complimentRef"]
      103 SETTABLEKS                       R18 R17 K30 ["PaneRef"]
      105 GETUPVAL                         R20 1
      106 GETTABLEKS                       R19 R20 K31 ["Change"]
      108 GETTABLEKS                       R18 R19 K32 ["AbsoluteSize"]
      110 GETTABLEKS                       R19 R0 K33 ["onAbsoluteSizeChanged"]
      112 SETTABLE                         R19 R17 R18
      113 CALL                             R15 2 1
      114 JUMP                             ; [+3]
      115 NAMECALL                         R15 R0 K34 ["renderWindow"]
      117 CALL                             R15 1 1
      118 SETTABLEKS                       R15 R14 K16 ["Window"]
      120 GETUPVAL                         R16 1
      121 GETTABLEKS                       R15 R16 K11 ["createElement"]
      123 GETUPVAL                         R16 4
      124 DUPTABLE                         R17 K42 [{"Buttons", "Enabled", "MinContentSize", "Modal", "OnClose", "OnButtonPressed", "Size", "Style", "Title"}]
      125 NEWTABLE                         R18 0 2
      127 DUPTABLE                         R19 K44 [{"Key", "Text"}]
      128 LOADK                            R20 K45 ["accept"]
      129 SETTABLEKS                       R20 R19 K43 ["Key"]
      131 LOADK                            R22 K46 ["Tutorial"]
      132 LOADK                            R23 K47 ["Skip"]
      133 NAMECALL                         R20 R5 K27 ["getText"]
      135 CALL                             R20 3 1
      136 SETTABLEKS                       R20 R19 K28 ["Text"]
      138 DUPTABLE                         R20 K44 [{"Key", "Text"}]
      139 LOADK                            R21 K48 ["cancel"]
      140 SETTABLEKS                       R21 R20 K43 ["Key"]
      142 LOADK                            R23 K46 ["Tutorial"]
      143 LOADK                            R24 K49 ["Back"]
      144 NAMECALL                         R21 R5 K27 ["getText"]
      146 CALL                             R21 3 1
      147 SETTABLEKS                       R21 R20 K28 ["Text"]
      149 SETLIST                          R18 R19 2 [1]
      151 SETTABLEKS                       R18 R17 K35 ["Buttons"]
      153 GETTABLEKS                       R19 R2 K50 ["jumpToTopic"]
      155 JUMPIFNOTEQKNIL                  R19 ; [+2]
      157 LOADB                            R18 0 +1
      158 LOADB                            R18 1
      159 SETTABLEKS                       R18 R17 K6 ["Enabled"]
      161 GETIMPORT                        R18 K53 [Vector2.new]
      163 LOADN                            R19 194
      164 LOADN                            R20 100
      165 CALL                             R18 2 1
      166 SETTABLEKS                       R18 R17 K36 ["MinContentSize"]
      168 LOADB                            R18 1
      169 SETTABLEKS                       R18 R17 K37 ["Modal"]
      171 GETTABLEKS                       R18 R0 K54 ["onJumpDialogAction"]
      173 SETTABLEKS                       R18 R17 K38 ["OnClose"]
      175 GETTABLEKS                       R18 R0 K54 ["onJumpDialogAction"]
      177 SETTABLEKS                       R18 R17 K39 ["OnButtonPressed"]
      179 GETIMPORT                        R18 K57 [UDim2.fromOffset]
      181 LOADN                            R19 194
      182 LOADN                            R20 100
      183 CALL                             R18 2 1
      184 SETTABLEKS                       R18 R17 K40 ["Size"]
      186 LOADK                            R18 K58 ["AcceptCancel"]
      187 SETTABLEKS                       R18 R17 K41 ["Style"]
      189 GETTABLEKS                       R20 R6 K24 ["id"]
      191 LOADK                            R21 K13 ["Title"]
      192 NAMECALL                         R18 R5 K27 ["getText"]
      194 CALL                             R18 3 1
      195 SETTABLEKS                       R18 R17 K13 ["Title"]
      197 DUPTABLE                         R18 K60 [{"Content"}]
      198 GETUPVAL                         R20 1
      199 GETTABLEKS                       R19 R20 K11 ["createElement"]
      201 GETUPVAL                         R20 5
      202 DUPTABLE                         R21 K64 [{"HorizontalAlignment", "Layout", "Spacing"}]
      203 GETIMPORT                        R22 K67 [Enum.HorizontalAlignment.Left]
      205 SETTABLEKS                       R22 R21 K61 ["HorizontalAlignment"]
      207 GETIMPORT                        R22 K70 [Enum.FillDirection.Vertical]
      209 SETTABLEKS                       R22 R21 K62 ["Layout"]
      211 LOADN                            R22 20
      212 SETTABLEKS                       R22 R21 K63 ["Spacing"]
      214 DUPTABLE                         R22 K71 [{"Title", "Text"}]
      215 GETUPVAL                         R24 1
      216 GETTABLEKS                       R23 R24 K11 ["createElement"]
      218 GETUPVAL                         R24 6
      219 DUPTABLE                         R25 K74 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextXAlignment"}]
      220 GETIMPORT                        R26 K76 [Enum.AutomaticSize.XY]
      222 SETTABLEKS                       R26 R25 K72 ["AutomaticSize"]
      224 MOVE                             R26 R3
      225 CALL                             R26 0 1
      226 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      228 LOADK                            R26 K13 ["Title"]
      229 SETTABLEKS                       R26 R25 K41 ["Style"]
      231 LOADK                            R28 K77 ["SkipDialog"]
      232 LOADK                            R29 K13 ["Title"]
      233 NAMECALL                         R26 R5 K27 ["getText"]
      235 CALL                             R26 3 1
      236 SETTABLEKS                       R26 R25 K28 ["Text"]
      238 GETIMPORT                        R26 K78 [Enum.TextXAlignment.Left]
      240 SETTABLEKS                       R26 R25 K73 ["TextXAlignment"]
      242 CALL                             R23 2 1
      243 SETTABLEKS                       R23 R22 K13 ["Title"]
      245 GETUPVAL                         R24 1
      246 GETTABLEKS                       R23 R24 K11 ["createElement"]
      248 GETUPVAL                         R24 6
      249 DUPTABLE                         R25 K80 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      250 GETIMPORT                        R26 K82 [Enum.AutomaticSize.Y]
      252 SETTABLEKS                       R26 R25 K72 ["AutomaticSize"]
      254 MOVE                             R26 R3
      255 CALL                             R26 0 1
      256 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      258 GETIMPORT                        R26 K84 [UDim2.fromScale]
      260 LOADN                            R27 1
      261 LOADN                            R28 0
      262 CALL                             R26 2 1
      263 SETTABLEKS                       R26 R25 K40 ["Size"]
      265 LOADK                            R28 K77 ["SkipDialog"]
      266 LOADK                            R29 K28 ["Text"]
      267 NAMECALL                         R26 R5 K27 ["getText"]
      269 CALL                             R26 3 1
      270 SETTABLEKS                       R26 R25 K28 ["Text"]
      272 LOADB                            R26 1
      273 SETTABLEKS                       R26 R25 K79 ["TextWrapped"]
      275 GETIMPORT                        R26 K78 [Enum.TextXAlignment.Left]
      277 SETTABLEKS                       R26 R25 K73 ["TextXAlignment"]
      279 CALL                             R23 2 1
      280 SETTABLEKS                       R23 R22 K28 ["Text"]
      282 CALL                             R19 3 1
      283 SETTABLEKS                       R19 R18 K59 ["Content"]
      285 CALL                             R15 3 1
      286 SETTABLEKS                       R15 R14 K17 ["Dialog"]
      288 CALL                             R11 3 -1
      289 RETURN                           R11 -1

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
       70 GETUPVAL                         R15 1
       71 GETTABLEKS                       R14 R15 K19 ["createElement"]
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
      107 GETUPVAL                         R19 1
      108 GETTABLEKS                       R18 R19 K40 ["Change"]
      110 GETTABLEKS                       R17 R18 K41 ["AbsoluteSize"]
      112 GETTABLEKS                       R18 R0 K42 ["onAbsoluteSizeChanged"]
      114 SETTABLE                         R18 R16 R17
      115 DUPTABLE                         R17 K47 [{"Header", "Separator", "Scroller", "NavigationRow"}]
      116 GETUPVAL                         R19 1
      117 GETTABLEKS                       R18 R19 K19 ["createElement"]
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
      146 GETUPVAL                         R23 1
      147 GETTABLEKS                       R22 R23 K19 ["createElement"]
      149 GETUPVAL                         R23 2
      150 DUPTABLE                         R24 K54 [{"AutomaticSize", "LayoutOrder"}]
      151 GETIMPORT                        R25 K23 [Enum.AutomaticSize.Y]
      153 SETTABLEKS                       R25 R24 K21 ["AutomaticSize"]
      155 MOVE                             R25 R3
      156 CALL                             R25 0 1
      157 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      159 DUPTABLE                         R25 K56 [{"TopicNumber", "Controls"}]
      160 GETUPVAL                         R27 1
      161 GETTABLEKS                       R26 R27 K19 ["createElement"]
      163 GETUPVAL                         R27 3
      164 DUPTABLE                         R28 K60 [{"AutomaticSize", "Size", "Text", "TextXAlignment", "Style"}]
      165 GETIMPORT                        R29 K62 [Enum.AutomaticSize.X]
      167 SETTABLEKS                       R29 R28 K21 ["AutomaticSize"]
      169 GETIMPORT                        R29 K65 [UDim2.fromOffset]
      171 LOADN                            R30 0
      172 GETTABLEKS                       R34 R6 K66 ["IconSize"]
      174 GETTABLEKS                       R33 R34 K22 ["Y"]
      176 GETTABLEKS                       R32 R33 K67 ["Offset"]
      178 GETTABLEKS                       R33 R6 K50 ["PaddingSmall"]
      180 ADD                              R31 R32 R33
      181 CALL                             R29 2 1
      182 SETTABLEKS                       R29 R28 K57 ["Size"]
      184 SETTABLEKS                       R9 R28 K58 ["Text"]
      186 GETIMPORT                        R29 K68 [Enum.TextXAlignment.Left]
      188 SETTABLEKS                       R29 R28 K59 ["TextXAlignment"]
      190 LOADK                            R29 K69 ["Label"]
      191 SETTABLEKS                       R29 R28 K37 ["Style"]
      193 CALL                             R26 2 1
      194 SETTABLEKS                       R26 R25 K12 ["TopicNumber"]
      196 GETUPVAL                         R27 1
      197 GETTABLEKS                       R26 R27 K19 ["createElement"]
      199 GETUPVAL                         R27 2
      200 DUPTABLE                         R28 K72 [{"AutomaticSize", "Size", "Position", "AnchorPoint", "Layout", "HorizontalAlignment", "Spacing"}]
      201 GETIMPORT                        R29 K62 [Enum.AutomaticSize.X]
      203 SETTABLEKS                       R29 R28 K21 ["AutomaticSize"]
      205 GETIMPORT                        R29 K65 [UDim2.fromOffset]
      207 LOADN                            R30 0
      208 GETTABLEKS                       R34 R6 K66 ["IconSize"]
      210 GETTABLEKS                       R33 R34 K22 ["Y"]
      212 GETTABLEKS                       R32 R33 K67 ["Offset"]
      214 GETTABLEKS                       R33 R6 K50 ["PaddingSmall"]
      216 ADD                              R31 R32 R33
      217 CALL                             R29 2 1
      218 SETTABLEKS                       R29 R28 K57 ["Size"]
      220 GETIMPORT                        R29 K74 [UDim2.fromScale]
      222 LOADN                            R30 1
      223 LOADN                            R31 0
      224 CALL                             R29 2 1
      225 SETTABLEKS                       R29 R28 K70 ["Position"]
      227 GETIMPORT                        R29 K77 [Vector2.new]
      229 LOADN                            R30 1
      230 LOADN                            R31 0
      231 CALL                             R29 2 1
      232 SETTABLEKS                       R29 R28 K71 ["AnchorPoint"]
      234 GETIMPORT                        R29 K79 [Enum.FillDirection.Horizontal]
      236 SETTABLEKS                       R29 R28 K27 ["Layout"]
      238 GETIMPORT                        R29 K81 [Enum.HorizontalAlignment.Right]
      240 SETTABLEKS                       R29 R28 K28 ["HorizontalAlignment"]
      242 GETTABLEKS                       R29 R6 K50 ["PaddingSmall"]
      244 SETTABLEKS                       R29 R28 K35 ["Spacing"]
      246 DUPTABLE                         R29 K84 [{"List", "Close"}]
      247 GETUPVAL                         R31 4
      248 NAMECALL                         R31 R31 K85 ["IsEdit"]
      250 CALL                             R31 1 1
      251 JUMPIFNOT                        R31 ; [+35]
      252 GETUPVAL                         R31 1
      253 GETTABLEKS                       R30 R31 K19 ["createElement"]
      255 GETUPVAL                         R31 5
      256 DUPTABLE                         R32 K89 [{"Cursor", "OnClick", "LayoutOrder", "LeftIcon", "Size", "Style"}]
      257 LOADK                            R33 K90 ["PointingHand"]
      258 SETTABLEKS                       R33 R32 K86 ["Cursor"]
      260 GETTABLEKS                       R33 R0 K91 ["onToggleTopics"]
      262 SETTABLEKS                       R33 R32 K87 ["OnClick"]
      264 MOVE                             R33 R3
      265 CALL                             R33 0 1
      266 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      268 GETTABLEKS                       R34 R2 K92 ["showTopics"]
      270 JUMPIFNOT                        R34 ; [+3]
      271 GETTABLEKS                       R33 R6 K93 ["ListSelectedImage"]
      273 JUMP                             ; [+2]
      274 GETTABLEKS                       R33 R6 K94 ["ListImage"]
      276 SETTABLEKS                       R33 R32 K88 ["LeftIcon"]
      278 GETTABLEKS                       R33 R6 K66 ["IconSize"]
      280 SETTABLEKS                       R33 R32 K57 ["Size"]
      282 LOADK                            R33 K95 ["IconOnly"]
      283 SETTABLEKS                       R33 R32 K37 ["Style"]
      285 CALL                             R30 2 1
      286 JUMP                             ; [+1]
      287 LOADNIL                          R30
      288 SETTABLEKS                       R30 R29 K82 ["List"]
      290 GETUPVAL                         R31 1
      291 GETTABLEKS                       R30 R31 K19 ["createElement"]
      293 GETUPVAL                         R31 5
      294 DUPTABLE                         R32 K89 [{"Cursor", "OnClick", "LayoutOrder", "LeftIcon", "Size", "Style"}]
      295 LOADK                            R33 K90 ["PointingHand"]
      296 SETTABLEKS                       R33 R32 K86 ["Cursor"]
      298 GETTABLEKS                       R34 R0 K0 ["props"]
      300 GETTABLEKS                       R33 R34 K96 ["OnQuit"]
      302 SETTABLEKS                       R33 R32 K87 ["OnClick"]
      304 MOVE                             R33 R3
      305 CALL                             R33 0 1
      306 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      308 GETTABLEKS                       R33 R6 K97 ["CloseImage"]
      310 SETTABLEKS                       R33 R32 K88 ["LeftIcon"]
      312 GETTABLEKS                       R33 R6 K66 ["IconSize"]
      314 SETTABLEKS                       R33 R32 K57 ["Size"]
      316 LOADK                            R33 K95 ["IconOnly"]
      317 SETTABLEKS                       R33 R32 K37 ["Style"]
      319 CALL                             R30 2 1
      320 SETTABLEKS                       R30 R29 K83 ["Close"]
      322 CALL                             R26 3 1
      323 SETTABLEKS                       R26 R25 K55 ["Controls"]
      325 CALL                             R22 3 1
      326 SETTABLEKS                       R22 R21 K51 ["Topbar"]
      328 GETUPVAL                         R23 1
      329 GETTABLEKS                       R22 R23 K19 ["createElement"]
      331 GETUPVAL                         R23 3
      332 DUPTABLE                         R24 K99 [{"AutomaticSize", "Size", "LayoutOrder", "Text", "TextXAlignment", "TextWrapped", "Style"}]
      333 GETIMPORT                        R25 K23 [Enum.AutomaticSize.Y]
      335 SETTABLEKS                       R25 R24 K21 ["AutomaticSize"]
      337 GETIMPORT                        R25 K74 [UDim2.fromScale]
      339 LOADN                            R26 1
      340 LOADN                            R27 0
      341 CALL                             R25 2 1
      342 SETTABLEKS                       R25 R24 K57 ["Size"]
      344 MOVE                             R25 R3
      345 CALL                             R25 0 1
      346 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      348 SETTABLEKS                       R8 R24 K58 ["Text"]
      350 GETIMPORT                        R25 K68 [Enum.TextXAlignment.Left]
      352 SETTABLEKS                       R25 R24 K59 ["TextXAlignment"]
      354 LOADB                            R25 1
      355 SETTABLEKS                       R25 R24 K98 ["TextWrapped"]
      357 LOADK                            R25 K100 ["Semibold"]
      358 SETTABLEKS                       R25 R24 K37 ["Style"]
      360 CALL                             R22 2 1
      361 SETTABLEKS                       R22 R21 K52 ["TopicName"]
      363 CALL                             R18 3 1
      364 SETTABLEKS                       R18 R17 K43 ["Header"]
      366 GETUPVAL                         R19 1
      367 GETTABLEKS                       R18 R19 K19 ["createElement"]
      369 GETUPVAL                         R19 6
      370 DUPTABLE                         R20 K101 [{"LayoutOrder"}]
      371 MOVE                             R21 R3
      372 CALL                             R21 0 1
      373 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      375 CALL                             R18 2 1
      376 SETTABLEKS                       R18 R17 K44 ["Separator"]
      378 GETUPVAL                         R19 1
      379 GETTABLEKS                       R18 R19 K19 ["createElement"]
      381 GETUPVAL                         R19 2
      382 DUPTABLE                         R20 K102 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Spacing"}]
      383 GETIMPORT                        R21 K23 [Enum.AutomaticSize.Y]
      385 SETTABLEKS                       R21 R20 K21 ["AutomaticSize"]
      387 GETIMPORT                        R21 K30 [Enum.HorizontalAlignment.Left]
      389 SETTABLEKS                       R21 R20 K28 ["HorizontalAlignment"]
      391 GETIMPORT                        R21 K26 [Enum.FillDirection.Vertical]
      393 SETTABLEKS                       R21 R20 K27 ["Layout"]
      395 MOVE                             R21 R3
      396 CALL                             R21 0 1
      397 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      399 LOADN                            R21 0
      400 SETTABLEKS                       R21 R20 K34 ["Padding"]
      402 GETIMPORT                        R21 K104 [UDim.new]
      404 LOADN                            R22 0
      405 GETTABLEKS                       R23 R6 K34 ["Padding"]
      407 CALL                             R21 2 1
      408 SETTABLEKS                       R21 R20 K35 ["Spacing"]
      410 GETTABLEKS                       R22 R2 K92 ["showTopics"]
      412 JUMPIFNOT                        R22 ; [+6]
      413 GETTABLEKS                       R23 R4 K9 ["topic"]
      415 NAMECALL                         R21 R0 K105 ["getTopicList"]
      417 CALL                             R21 2 1
      418 JUMP                             ; [+97]
      419 DUPTABLE                         R21 K109 [{"StepTitle", "StepDescription", "Keys"}]
      420 GETTABLEKS                       R23 R5 K110 ["title"]
      422 JUMPIFNOT                        R23 ; [+36]
      423 GETUPVAL                         R23 1
      424 GETTABLEKS                       R22 R23 K19 ["createElement"]
      426 GETUPVAL                         R23 3
      427 DUPTABLE                         R24 K111 [{"AutomaticSize", "TextXAlignment", "TextWrapped", "Size", "LayoutOrder", "Style", "Text"}]
      428 GETIMPORT                        R25 K23 [Enum.AutomaticSize.Y]
      430 SETTABLEKS                       R25 R24 K21 ["AutomaticSize"]
      432 GETIMPORT                        R25 K68 [Enum.TextXAlignment.Left]
      434 SETTABLEKS                       R25 R24 K59 ["TextXAlignment"]
      436 LOADB                            R25 1
      437 SETTABLEKS                       R25 R24 K98 ["TextWrapped"]
      439 GETIMPORT                        R25 K74 [UDim2.fromScale]
      441 LOADN                            R26 1
      442 LOADN                            R27 0
      443 CALL                             R25 2 1
      444 SETTABLEKS                       R25 R24 K57 ["Size"]
      446 MOVE                             R25 R3
      447 CALL                             R25 0 1
      448 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      450 LOADK                            R25 K112 ["Title"]
      451 SETTABLEKS                       R25 R24 K37 ["Style"]
      453 GETTABLEKS                       R25 R5 K110 ["title"]
      455 SETTABLEKS                       R25 R24 K58 ["Text"]
      457 CALL                             R22 2 1
      458 JUMP                             ; [+1]
      459 LOADNIL                          R22
      460 SETTABLEKS                       R22 R21 K106 ["StepTitle"]
      462 GETUPVAL                         R23 1
      463 GETTABLEKS                       R22 R23 K19 ["createElement"]
      465 GETUPVAL                         R23 3
      466 DUPTABLE                         R24 K114 [{"AutomaticSize", "LayoutOrder", "RichText", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      467 GETIMPORT                        R25 K23 [Enum.AutomaticSize.Y]
      469 SETTABLEKS                       R25 R24 K21 ["AutomaticSize"]
      471 MOVE                             R25 R3
      472 CALL                             R25 0 1
      473 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      475 LOADB                            R25 1
      476 SETTABLEKS                       R25 R24 K113 ["RichText"]
      478 GETIMPORT                        R25 K74 [UDim2.fromScale]
      480 LOADN                            R26 1
      481 LOADN                            R27 0
      482 CALL                             R25 2 1
      483 SETTABLEKS                       R25 R24 K57 ["Size"]
      485 GETTABLEKS                       R25 R5 K115 ["description"]
      487 SETTABLEKS                       R25 R24 K58 ["Text"]
      489 LOADB                            R25 1
      490 SETTABLEKS                       R25 R24 K98 ["TextWrapped"]
      492 GETIMPORT                        R25 K68 [Enum.TextXAlignment.Left]
      494 SETTABLEKS                       R25 R24 K59 ["TextXAlignment"]
      496 CALL                             R22 2 1
      497 SETTABLEKS                       R22 R21 K107 ["StepDescription"]
      499 JUMPIFNOT                        R10 ; [+13]
      500 GETUPVAL                         R23 1
      501 GETTABLEKS                       R22 R23 K19 ["createElement"]
      503 GETUPVAL                         R23 7
      504 DUPTABLE                         R24 K116 [{"LayoutOrder", "PressedKeys"}]
      505 MOVE                             R25 R3
      506 CALL                             R25 0 1
      507 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      509 SETTABLEKS                       R10 R24 K14 ["PressedKeys"]
      511 CALL                             R22 2 1
      512 JUMP                             ; [+1]
      513 LOADNIL                          R22
      514 SETTABLEKS                       R22 R21 K108 ["Keys"]
      516 CALL                             R18 3 1
      517 SETTABLEKS                       R18 R17 K45 ["Scroller"]
      519 GETUPVAL                         R19 4
      520 NAMECALL                         R19 R19 K85 ["IsEdit"]
      522 CALL                             R19 1 1
      523 JUMPIFNOT                        R19 ; [+171]
      524 GETUPVAL                         R19 1
      525 GETTABLEKS                       R18 R19 K19 ["createElement"]
      527 GETUPVAL                         R19 2
      528 DUPTABLE                         R20 K54 [{"AutomaticSize", "LayoutOrder"}]
      529 GETIMPORT                        R21 K23 [Enum.AutomaticSize.Y]
      531 SETTABLEKS                       R21 R20 K21 ["AutomaticSize"]
      533 MOVE                             R21 R3
      534 CALL                             R21 0 1
      535 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      537 DUPTABLE                         R21 K120 [{"Back", "PaginationDots", "Next"}]
      538 JUMPIF                           R13 ; [+32]
      539 GETUPVAL                         R23 1
      540 GETTABLEKS                       R22 R23 K19 ["createElement"]
      542 GETUPVAL                         R23 5
      543 DUPTABLE                         R24 K121 [{"AutomaticSize", "Cursor", "OnClick", "LayoutOrder", "Style", "Text"}]
      544 GETIMPORT                        R25 K123 [Enum.AutomaticSize.XY]
      546 SETTABLEKS                       R25 R24 K21 ["AutomaticSize"]
      548 LOADK                            R25 K90 ["PointingHand"]
      549 SETTABLEKS                       R25 R24 K86 ["Cursor"]
      551 GETTABLEKS                       R25 R1 K124 ["OnBack"]
      553 SETTABLEKS                       R25 R24 K87 ["OnClick"]
      555 MOVE                             R25 R3
      556 CALL                             R25 0 1
      557 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      559 LOADK                            R25 K125 ["Link"]
      560 SETTABLEKS                       R25 R24 K37 ["Style"]
      562 LOADK                            R27 K11 ["Tutorial"]
      563 LOADK                            R28 K117 ["Back"]
      564 NAMECALL                         R25 R7 K10 ["getText"]
      566 CALL                             R25 3 1
      567 SETTABLEKS                       R25 R24 K58 ["Text"]
      569 CALL                             R22 2 1
      570 JUMP                             ; [+1]
      571 LOADNIL                          R22
      572 SETTABLEKS                       R22 R21 K117 ["Back"]
      574 GETUPVAL                         R23 1
      575 GETTABLEKS                       R22 R23 K19 ["createElement"]
      577 GETUPVAL                         R23 2
      578 DUPTABLE                         R24 K126 [{"AnchorPoint", "HorizontalAlignment", "Layout", "Position", "VerticalAlignment"}]
      579 GETIMPORT                        R25 K77 [Vector2.new]
      581 LOADK                            R26 K127 [0.5]
      582 LOADK                            R27 K127 [0.5]
      583 CALL                             R25 2 1
      584 SETTABLEKS                       R25 R24 K71 ["AnchorPoint"]
      586 GETIMPORT                        R25 K129 [Enum.HorizontalAlignment.Center]
      588 SETTABLEKS                       R25 R24 K28 ["HorizontalAlignment"]
      590 GETIMPORT                        R25 K79 [Enum.FillDirection.Horizontal]
      592 SETTABLEKS                       R25 R24 K27 ["Layout"]
      594 GETIMPORT                        R25 K74 [UDim2.fromScale]
      596 LOADK                            R26 K127 [0.5]
      597 LOADK                            R27 K127 [0.5]
      598 CALL                             R25 2 1
      599 SETTABLEKS                       R25 R24 K70 ["Position"]
      601 GETIMPORT                        R25 K130 [Enum.VerticalAlignment.Center]
      603 SETTABLEKS                       R25 R24 K31 ["VerticalAlignment"]
      605 DUPTABLE                         R25 K132 [{"Child"}]
      606 GETUPVAL                         R27 1
      607 GETTABLEKS                       R26 R27 K19 ["createElement"]
      609 GETUPVAL                         R27 8
      610 DUPTABLE                         R28 K136 [{"Count", "OnSelected", "SelectedIndex"}]
      611 GETTABLEKS                       R29 R4 K17 ["topicStepCount"]
      613 SETTABLEKS                       R29 R28 K133 ["Count"]
      615 DUPCLOSURE                       R29 K137 [PROTO_8]
      616 SETTABLEKS                       R29 R28 K134 ["OnSelected"]
      618 GETTABLEKS                       R29 R4 K16 ["topicStep"]
      620 SETTABLEKS                       R29 R28 K135 ["SelectedIndex"]
      622 CALL                             R26 2 1
      623 SETTABLEKS                       R26 R25 K131 ["Child"]
      625 CALL                             R22 3 1
      626 SETTABLEKS                       R22 R21 K118 ["PaginationDots"]
      628 GETUPVAL                         R23 1
      629 GETTABLEKS                       R22 R23 K19 ["createElement"]
      631 GETUPVAL                         R23 5
      632 DUPTABLE                         R24 K138 [{"AnchorPoint", "AutomaticSize", "Cursor", "LayoutOrder", "OnClick", "Position", "Style", "Text"}]
      633 GETIMPORT                        R25 K77 [Vector2.new]
      635 LOADN                            R26 1
      636 LOADN                            R27 0
      637 CALL                             R25 2 1
      638 SETTABLEKS                       R25 R24 K71 ["AnchorPoint"]
      640 GETIMPORT                        R25 K123 [Enum.AutomaticSize.XY]
      642 SETTABLEKS                       R25 R24 K21 ["AutomaticSize"]
      644 LOADK                            R25 K90 ["PointingHand"]
      645 SETTABLEKS                       R25 R24 K86 ["Cursor"]
      647 MOVE                             R25 R3
      648 CALL                             R25 0 1
      649 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      651 GETTABLEKS                       R25 R1 K139 ["OnNext"]
      653 SETTABLEKS                       R25 R24 K87 ["OnClick"]
      655 GETIMPORT                        R25 K74 [UDim2.fromScale]
      657 LOADN                            R26 1
      658 LOADN                            R27 0
      659 CALL                             R25 2 1
      660 SETTABLEKS                       R25 R24 K70 ["Position"]
      662 JUMPIF                           R12 ; [+1]
      663 JUMPIFNOT                        R11 ; [+2]
      664 LOADK                            R25 K140 ["Primary"]
      665 JUMP                             ; [+1]
      666 LOADK                            R25 K125 ["Link"]
      667 SETTABLEKS                       R25 R24 K37 ["Style"]
      669 JUMPIFNOT                        R12 ; [+6]
      670 LOADK                            R27 K141 ["Plugin"]
      671 LOADK                            R28 K142 ["Finish"]
      672 NAMECALL                         R25 R7 K10 ["getText"]
      674 CALL                             R25 3 1
      675 JUMP                             ; [+12]
      676 JUMPIFNOT                        R11 ; [+6]
      677 LOADK                            R27 K141 ["Plugin"]
      678 LOADK                            R28 K119 ["Next"]
      679 NAMECALL                         R25 R7 K10 ["getText"]
      681 CALL                             R25 3 1
      682 JUMP                             ; [+5]
      683 LOADK                            R27 K11 ["Tutorial"]
      684 LOADK                            R28 K143 ["Skip"]
      685 NAMECALL                         R25 R7 K10 ["getText"]
      687 CALL                             R25 3 1
      688 SETTABLEKS                       R25 R24 K58 ["Text"]
      690 CALL                             R22 2 1
      691 SETTABLEKS                       R22 R21 K119 ["Next"]
      693 CALL                             R18 3 1
      694 JUMP                             ; [+1]
      695 LOADNIL                          R18
      696 SETTABLEKS                       R18 R17 K46 ["NavigationRow"]
      698 CALL                             R14 3 -1
      699 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       31 GETTABLEKS                       R5 R4 K13 ["withContext"]
       33 GETTABLEKS                       R6 R4 K14 ["Stylizer"]
       35 GETTABLEKS                       R7 R4 K15 ["Localization"]
       37 GETIMPORT                        R8 K8 [require]
       39 GETTABLEKS                       R11 R1 K16 ["Src"]
       41 GETTABLEKS                       R10 R11 K17 ["Util"]
       43 GETTABLEKS                       R9 R10 K18 ["TutorialTypes"]
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
       64 GETTABLEKS                       R20 R1 K16 ["Src"]
       66 GETTABLEKS                       R19 R20 K27 ["Components"]
       68 GETTABLEKS                       R18 R19 K28 ["Compliment"]
       70 CALL                             R17 1 1
       71 GETIMPORT                        R18 K8 [require]
       73 GETTABLEKS                       R21 R1 K16 ["Src"]
       75 GETTABLEKS                       R20 R21 K27 ["Components"]
       77 GETTABLEKS                       R19 R20 K29 ["HintKeys"]
       79 CALL                             R18 1 1
       80 GETIMPORT                        R19 K8 [require]
       82 GETTABLEKS                       R22 R1 K16 ["Src"]
       84 GETTABLEKS                       R21 R22 K17 ["Util"]
       86 GETTABLEKS                       R20 R21 K30 ["counter"]
       88 CALL                             R19 1 1
       89 GETIMPORT                        R20 K8 [require]
       91 GETTABLEKS                       R22 R1 K9 ["Packages"]
       93 GETTABLEKS                       R21 R22 K31 ["Dash"]
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
