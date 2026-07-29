PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selected"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKS                    R2 K1 ["Light"] ; [+3]
       10 GETUPVAL                         R3 2
       11 JUMP                             ; [+1]
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 4
       14 GETUPVAL                         R5 5
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 4
       17 GETUPVAL                         R6 6
       18 CALL                             R5 1 1
       19 JUMPIFNOT                        R4 ; [+1]
       20 JUMPIF                           R5 ; [+1]
       21 RETURN                           R0 0
       22 JUMPIFNOT                        R1 ; [+3]
       23 GETTABLEKS                       R6 R3 K2 ["ActionEmphasisBg"]
       25 JUMP                             ; [+2]
       26 GETTABLEKS                       R6 R3 K3 ["Surface_300"]
       28 JUMPIFNOT                        R1 ; [+3]
       29 GETTABLEKS                       R7 R3 K2 ["ActionEmphasisBg"]
       31 JUMP                             ; [+2]
       32 GETTABLEKS                       R7 R3 K4 ["ContentEmphasis"]
       34 JUMPIFNOT                        R1 ; [+2]
       35 GETUPVAL                         R8 7
       36 JUMP                             ; [+1]
       37 GETUPVAL                         R8 8
       38 GETUPVAL                         R9 9
       39 JUMPIFNOT                        R9 ; [+14]
       40 LOADB                            R9 0
       41 SETUPVAL                         R9 9
       42 SETTABLEKS                       R6 R4 K5 ["BackgroundColor3"]
       44 SETTABLEKS                       R8 R5 K6 ["Position"]
       46 LOADK                            R11 K7 ["UIStroke"]
       47 NAMECALL                         R9 R4 K8 ["FindFirstChildOfClass"]
       49 CALL                             R9 2 1
       50 JUMPIFNOT                        R9 ; [+44]
       51 SETTABLEKS                       R7 R9 K9 ["Color"]
       53 RETURN                           R0 0
       54 GETUPVAL                         R9 10
       55 MOVE                             R11 R4
       56 GETUPVAL                         R12 11
       57 DUPTABLE                         R13 K10 [{"BackgroundColor3"}]
       58 SETTABLEKS                       R6 R13 K5 ["BackgroundColor3"]
       60 NAMECALL                         R9 R9 K11 ["Create"]
       62 CALL                             R9 4 1
       63 NAMECALL                         R9 R9 K12 ["Play"]
       65 CALL                             R9 1 0
       66 GETUPVAL                         R9 10
       67 MOVE                             R11 R5
       68 GETUPVAL                         R12 11
       69 DUPTABLE                         R13 K13 [{"Position"}]
       70 SETTABLEKS                       R8 R13 K6 ["Position"]
       72 NAMECALL                         R9 R9 K11 ["Create"]
       74 CALL                             R9 4 1
       75 NAMECALL                         R9 R9 K12 ["Play"]
       77 CALL                             R9 1 0
       78 LOADK                            R11 K7 ["UIStroke"]
       79 NAMECALL                         R9 R4 K8 ["FindFirstChildOfClass"]
       81 CALL                             R9 2 1
       82 JUMPIFNOT                        R9 ; [+12]
       83 GETUPVAL                         R10 10
       84 MOVE                             R12 R9
       85 GETUPVAL                         R13 11
       86 DUPTABLE                         R14 K14 [{"Color"}]
       87 SETTABLEKS                       R7 R14 K9 ["Color"]
       89 NAMECALL                         R10 R10 K11 ["Create"]
       91 CALL                             R10 4 1
       92 NAMECALL                         R10 R10 K12 ["Play"]
       94 CALL                             R10 1 0
       95 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 GETTABLEKS                       R3 R1 K1 ["provide"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["token"]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R4 R1 K3 ["createRef"]
       10 LOADK                            R5 K4 ["track"]
       11 CALL                             R4 1 1
       12 GETTABLEKS                       R5 R1 K3 ["createRef"]
       14 LOADK                            R6 K5 ["knob"]
       15 CALL                             R5 1 1
       16 MOVE                             R7 R2
       17 GETTABLEKS                       R8 R0 K6 ["labelPosition"]
       19 CALL                             R7 1 1
       20 JUMPIFEQKS                       R7 K7 ["left"] ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 JUMPIFNOT                        R6 ; [+2]
       25 LOADN                            R7 2
       26 JUMP                             ; [+1]
       27 LOADN                            R7 1
       28 JUMPIFNOT                        R6 ; [+2]
       29 LOADN                            R8 1
       30 JUMP                             ; [+1]
       31 LOADN                            R8 2
       32 LOADB                            R9 1
       33 GETTABLEKS                       R10 R1 K8 ["createEffect"]
       35 NEWCLOSURE                       R11 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          REF R9
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 LOADK                            R12 K9 ["toggle-tween"]
       49 CALL                             R10 2 0
       50 DUPTABLE                         R10 K12 [{"trackOrder", "labelOrder"}]
       51 SETTABLEKS                       R7 R10 K10 ["trackOrder"]
       53 SETTABLEKS                       R8 R10 K11 ["labelOrder"]
       55 CLOSEUPVALS                      R9
       56 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETTABLEKS                       R4 R2 K9 ["template"]
       18 GETTABLEKS                       R5 R2 K10 ["Frame"]
       20 GETTABLEKS                       R6 R2 K11 ["ImageLabel"]
       22 GETTABLEKS                       R7 R2 K12 ["TextButton"]
       24 GETTABLEKS                       R8 R2 K13 ["TextLabel"]
       26 GETIMPORT                        R9 K6 [require]
       28 GETIMPORT                        R10 K1 [script]
       30 GETTABLEKS                       R10 R10 K4 ["Parent"]
       32 GETTABLEKS                       R10 R10 K14 ["ThemeProvider"]
       34 CALL                             R9 1 1
       35 GETIMPORT                        R10 K6 [require]
       37 GETIMPORT                        R11 K1 [script]
       39 GETTABLEKS                       R11 R11 K4 ["Parent"]
       41 GETTABLEKS                       R11 R11 K15 ["DarkTokens"]
       43 CALL                             R10 1 1
       44 GETIMPORT                        R11 K6 [require]
       46 GETIMPORT                        R12 K1 [script]
       48 GETTABLEKS                       R12 R12 K4 ["Parent"]
       50 GETTABLEKS                       R12 R12 K16 ["LightTokens"]
       52 CALL                             R11 1 1
       53 GETIMPORT                        R12 K18 [game]
       55 LOADK                            R14 K19 ["TweenService"]
       56 NAMECALL                         R12 R12 K20 ["GetService"]
       58 CALL                             R12 2 1
       59 GETIMPORT                        R13 K23 [Vector2.new]
       61 LOADN                            R14 294
       62 LOADN                            R15 446
       63 CALL                             R13 2 1
       64 GETIMPORT                        R14 K23 [Vector2.new]
       66 LOADN                            R15 48
       67 LOADN                            R16 48
       68 CALL                             R14 2 1
       69 GETIMPORT                        R15 K26 [UDim2.fromOffset]
       71 LOADN                            R16 3
       72 LOADN                            R17 3
       73 CALL                             R15 2 1
       74 GETIMPORT                        R16 K26 [UDim2.fromOffset]
       76 LOADN                            R17 19
       77 LOADN                            R18 3
       78 CALL                             R16 2 1
       79 GETIMPORT                        R17 K28 [TweenInfo.new]
       81 LOADK                            R18 K29 [0.15]
       82 GETIMPORT                        R19 K33 [Enum.EasingStyle.Quad]
       84 GETIMPORT                        R20 K36 [Enum.EasingDirection.Out]
       86 CALL                             R17 3 1
       87 MOVE                             R18 R4
       88 LOADK                            R19 K37 ["ToggleButton"]
       89 DUPTABLE                         R20 K45 [{["text"] = "Toggle", ["selected"] = False, ["onToggle"], ["labelPosition"] = "right"}]
       90 DUPCLOSURE                       R21 K46 [PROTO_0]
       91 SETTABLEKS                       R21 R20 K42 ["onToggle"]
       93 NEWTABLE                         R21 0 1
       95 MOVE                             R22 R7
       96 NEWTABLE                         R23 4 2
       98 LOADK                            R26 K37 ["ToggleButton"]
       99 SETTABLEKS                       R26 R23 K47 ["Name"]
      101 LOADK                            R26 K48 ["toggle"]
      102 SETTABLEKS                       R26 R23 K49 ["Tags"]
      104 MOVE                             R26 R3
      105 LOADK                            R27 K50 ["fn() onToggle(not api.peek(selected))"]
      106 CALL                             R26 1 1
      107 SETTABLEKS                       R26 R23 K51 ["OnActivated"]
      109 MOVE                             R26 R3
      110 LOADK                            R27 K52 ["api.childOrder"]
      111 CALL                             R26 1 1
      112 SETTABLEKS                       R26 R23 K53 ["LayoutOrder"]
      114 MOVE                             R24 R5
      115 NEWTABLE                         R25 4 1
      117 LOADK                            R27 K54 ["ToggleTrack"]
      118 SETTABLEKS                       R27 R25 K47 ["Name"]
      120 LOADK                            R27 K55 ["track"]
      121 SETTABLEKS                       R27 R25 K56 ["ref"]
      123 LOADK                            R27 K57 ["toggle-track"]
      124 SETTABLEKS                       R27 R25 K49 ["Tags"]
      126 MOVE                             R27 R3
      127 LOADK                            R28 K58 ["trackOrder"]
      128 CALL                             R27 1 1
      129 SETTABLEKS                       R27 R25 K53 ["LayoutOrder"]
      131 MOVE                             R26 R5
      132 NEWTABLE                         R27 4 2
      134 LOADK                            R30 K59 ["ToggleKnob"]
      135 SETTABLEKS                       R30 R27 K47 ["Name"]
      137 LOADK                            R30 K60 ["knob"]
      138 SETTABLEKS                       R30 R27 K56 ["ref"]
      140 LOADK                            R30 K61 ["toggle-knob"]
      141 SETTABLEKS                       R30 R27 K49 ["Tags"]
      143 MOVE                             R28 R5
      144 DUPTABLE                         R29 K64 [{["Name"] = "KnobCircle", ["Tags"] = "toggle-knob-circle"}]
      145 CALL                             R28 1 1
      146 MOVE                             R29 R6
      147 DUPTABLE                         R30 K71 [{["Name"] = "KnobShadow", ["Tags"] = "toggle-knob-shadow", ["Image"] = "rbxassetid://115358313783151", ["ImageRectOffset"], ["ImageRectSize"]}]
      148 SETTABLEKS                       R13 R30 K69 ["ImageRectOffset"]
      150 SETTABLEKS                       R14 R30 K70 ["ImageRectSize"]
      152 CALL                             R29 1 -1
      153 SETLIST                          R27 R28 -1 [1]
      155 CALL                             R26 1 -1
      156 SETLIST                          R25 R26 -1 [1]
      158 CALL                             R24 1 1
      159 MOVE                             R25 R8
      160 DUPTABLE                         R26 K75 [{["Name"] = "ToggleLabel", ["Tags"] = "toggle-label", ["Text"], ["LayoutOrder"]}]
      161 MOVE                             R27 R3
      162 LOADK                            R28 K38 ["text"]
      163 CALL                             R27 1 1
      164 SETTABLEKS                       R27 R26 K74 ["Text"]
      166 MOVE                             R27 R3
      167 LOADK                            R28 K76 ["labelOrder"]
      168 CALL                             R27 1 1
      169 SETTABLEKS                       R27 R26 K53 ["LayoutOrder"]
      171 CALL                             R25 1 -1
      172 SETLIST                          R23 R24 -1 [1]
      174 CALL                             R22 1 -1
      175 SETLIST                          R21 R22 -1 [1]
      177 DUPCLOSURE                       R22 K77 [PROTO_2]
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R17
      185 CALL                             R18 4 1
      186 RETURN                           R18 1
