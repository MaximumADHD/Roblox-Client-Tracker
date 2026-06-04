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
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["expr"]
       14 GETTABLEKS                       R3 R1 K8 ["template"]
       16 GETTABLEKS                       R4 R1 K9 ["Frame"]
       18 GETTABLEKS                       R5 R1 K10 ["ImageLabel"]
       20 GETTABLEKS                       R6 R1 K11 ["TextButton"]
       22 GETTABLEKS                       R7 R1 K12 ["TextLabel"]
       24 GETIMPORT                        R8 K5 [require]
       26 GETIMPORT                        R9 K1 [script]
       28 GETTABLEKS                       R9 R9 K13 ["Parent"]
       30 GETTABLEKS                       R9 R9 K14 ["ThemeProvider"]
       32 CALL                             R8 1 1
       33 GETIMPORT                        R9 K5 [require]
       35 GETIMPORT                        R10 K1 [script]
       37 GETTABLEKS                       R10 R10 K13 ["Parent"]
       39 GETTABLEKS                       R10 R10 K15 ["DarkTokens"]
       41 CALL                             R9 1 1
       42 GETIMPORT                        R10 K5 [require]
       44 GETIMPORT                        R11 K1 [script]
       46 GETTABLEKS                       R11 R11 K13 ["Parent"]
       48 GETTABLEKS                       R11 R11 K16 ["LightTokens"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K18 [game]
       53 LOADK                            R13 K19 ["TweenService"]
       54 NAMECALL                         R11 R11 K20 ["GetService"]
       56 CALL                             R11 2 1
       57 GETIMPORT                        R12 K23 [Vector2.new]
       59 LOADN                            R13 38
       60 LOADN                            R14 190
       61 CALL                             R12 2 1
       62 GETIMPORT                        R13 K23 [Vector2.new]
       64 LOADN                            R14 48
       65 LOADN                            R15 48
       66 CALL                             R13 2 1
       67 GETIMPORT                        R14 K26 [UDim2.fromOffset]
       69 LOADN                            R15 3
       70 LOADN                            R16 3
       71 CALL                             R14 2 1
       72 GETIMPORT                        R15 K26 [UDim2.fromOffset]
       74 LOADN                            R16 19
       75 LOADN                            R17 3
       76 CALL                             R15 2 1
       77 GETIMPORT                        R16 K28 [TweenInfo.new]
       79 LOADK                            R17 K29 [0.15]
       80 GETIMPORT                        R18 K33 [Enum.EasingStyle.Quad]
       82 GETIMPORT                        R19 K36 [Enum.EasingDirection.Out]
       84 CALL                             R16 3 1
       85 MOVE                             R17 R3
       86 LOADK                            R18 K37 ["ToggleButton"]
       87 DUPTABLE                         R19 K42 [{"text", "selected", "onToggle", "labelPosition"}]
       88 LOADK                            R20 K43 ["Toggle"]
       89 SETTABLEKS                       R20 R19 K38 ["text"]
       91 LOADB                            R20 0
       92 SETTABLEKS                       R20 R19 K39 ["selected"]
       94 DUPCLOSURE                       R20 K44 [PROTO_0]
       95 SETTABLEKS                       R20 R19 K40 ["onToggle"]
       97 LOADK                            R20 K45 ["right"]
       98 SETTABLEKS                       R20 R19 K41 ["labelPosition"]
      100 NEWTABLE                         R20 0 1
      102 MOVE                             R21 R6
      103 NEWTABLE                         R22 4 2
      105 LOADK                            R25 K37 ["ToggleButton"]
      106 SETTABLEKS                       R25 R22 K46 ["Name"]
      108 LOADK                            R25 K47 ["toggle"]
      109 SETTABLEKS                       R25 R22 K48 ["Tags"]
      111 MOVE                             R25 R2
      112 LOADK                            R26 K49 ["fn() onToggle(not api.peek(selected))"]
      113 CALL                             R25 1 1
      114 SETTABLEKS                       R25 R22 K50 ["OnActivated"]
      116 MOVE                             R25 R2
      117 LOADK                            R26 K51 ["api.childOrder"]
      118 CALL                             R25 1 1
      119 SETTABLEKS                       R25 R22 K52 ["LayoutOrder"]
      121 MOVE                             R23 R4
      122 NEWTABLE                         R24 4 1
      124 LOADK                            R26 K53 ["ToggleTrack"]
      125 SETTABLEKS                       R26 R24 K46 ["Name"]
      127 LOADK                            R26 K54 ["track"]
      128 SETTABLEKS                       R26 R24 K55 ["ref"]
      130 LOADK                            R26 K56 ["toggle-track"]
      131 SETTABLEKS                       R26 R24 K48 ["Tags"]
      133 MOVE                             R26 R2
      134 LOADK                            R27 K57 ["trackOrder"]
      135 CALL                             R26 1 1
      136 SETTABLEKS                       R26 R24 K52 ["LayoutOrder"]
      138 MOVE                             R25 R4
      139 NEWTABLE                         R26 4 2
      141 LOADK                            R29 K58 ["ToggleKnob"]
      142 SETTABLEKS                       R29 R26 K46 ["Name"]
      144 LOADK                            R29 K59 ["knob"]
      145 SETTABLEKS                       R29 R26 K55 ["ref"]
      147 LOADK                            R29 K60 ["toggle-knob"]
      148 SETTABLEKS                       R29 R26 K48 ["Tags"]
      150 MOVE                             R27 R4
      151 DUPTABLE                         R28 K61 [{"Name", "Tags"}]
      152 LOADK                            R29 K62 ["KnobCircle"]
      153 SETTABLEKS                       R29 R28 K46 ["Name"]
      155 LOADK                            R29 K63 ["toggle-knob-circle"]
      156 SETTABLEKS                       R29 R28 K48 ["Tags"]
      158 CALL                             R27 1 1
      159 MOVE                             R28 R5
      160 DUPTABLE                         R29 K67 [{"Name", "Tags", "Image", "ImageRectOffset", "ImageRectSize"}]
      161 LOADK                            R30 K68 ["KnobShadow"]
      162 SETTABLEKS                       R30 R29 K46 ["Name"]
      164 LOADK                            R30 K69 ["toggle-knob-shadow"]
      165 SETTABLEKS                       R30 R29 K48 ["Tags"]
      167 LOADK                            R30 K70 ["rbxassetid://115358313783151"]
      168 SETTABLEKS                       R30 R29 K64 ["Image"]
      170 SETTABLEKS                       R12 R29 K65 ["ImageRectOffset"]
      172 SETTABLEKS                       R13 R29 K66 ["ImageRectSize"]
      174 CALL                             R28 1 -1
      175 SETLIST                          R26 R27 -1 [1]
      177 CALL                             R25 1 -1
      178 SETLIST                          R24 R25 -1 [1]
      180 CALL                             R23 1 1
      181 MOVE                             R24 R7
      182 DUPTABLE                         R25 K72 [{"Name", "Tags", "Text", "LayoutOrder"}]
      183 LOADK                            R26 K73 ["ToggleLabel"]
      184 SETTABLEKS                       R26 R25 K46 ["Name"]
      186 LOADK                            R26 K74 ["toggle-label"]
      187 SETTABLEKS                       R26 R25 K48 ["Tags"]
      189 MOVE                             R26 R2
      190 LOADK                            R27 K38 ["text"]
      191 CALL                             R26 1 1
      192 SETTABLEKS                       R26 R25 K71 ["Text"]
      194 MOVE                             R26 R2
      195 LOADK                            R27 K75 ["labelOrder"]
      196 CALL                             R26 1 1
      197 SETTABLEKS                       R26 R25 K52 ["LayoutOrder"]
      199 CALL                             R24 1 -1
      200 SETLIST                          R22 R23 -1 [1]
      202 CALL                             R21 1 -1
      203 SETLIST                          R20 R21 -1 [1]
      205 DUPCLOSURE                       R21 K76 [PROTO_2]
      206 CAPTURE                          VAL R8
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R15
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R11
      212 CAPTURE                          VAL R16
      213 CALL                             R17 4 1
      214 RETURN                           R17 1
