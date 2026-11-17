PROTO_0:
        0 DUPTABLE                         R1 K1 [{"isLoaded"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["audioRef"]
        4 GETTABLEKS                       R2 R2 K3 ["current"]
        6 GETTABLEKS                       R2 R2 K4 ["IsLoaded"]
        8 SETTABLEKS                       R2 R1 K0 ["isLoaded"]
       10 GETUPVAL                         R2 1
       11 JUMPIFNOTEQKS                    R2 K5 ["TimeLength"] ; [+21]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["audioRef"]
       16 GETTABLEKS                       R2 R2 K3 ["current"]
       18 GETTABLEKS                       R2 R2 K5 ["TimeLength"]
       20 GETTABLEKS                       R3 R0 K6 ["totalTime"]
       22 JUMPIFEQ                         R2 R3 ; [+10]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K2 ["audioRef"]
       27 GETTABLEKS                       R2 R2 K3 ["current"]
       29 GETTABLEKS                       R2 R2 K5 ["TimeLength"]
       31 SETTABLEKS                       R2 R1 K6 ["totalTime"]
       33 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isMounted"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["audioRef"]
        7 GETTABLEKS                       R2 R2 K2 ["current"]
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 JUMPIFEQKS                       R1 K3 ["Playing"] ; [+3]
       13 JUMPIFNOTEQKS                    R1 K4 ["TimePosition"] ; [+27]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K1 ["audioRef"]
       18 GETTABLEKS                       R2 R2 K2 ["current"]
       20 GETTABLEKS                       R2 R2 K4 ["TimePosition"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K5 ["elapsedTime"]
       25 NAMECALL                         R3 R3 K6 ["getValue"]
       27 CALL                             R3 1 1
       28 JUMPIFEQ                         R2 R3 ; [+12]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K7 ["updateElapsedTime"]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K1 ["audioRef"]
       36 GETTABLEKS                       R3 R3 K2 ["current"]
       38 GETTABLEKS                       R3 R3 K4 ["TimePosition"]
       40 CALL                             R2 1 0
       41 GETUPVAL                         R2 0
       42 NEWCLOSURE                       R4 P0
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R1
       45 NAMECALL                         R2 R2 K8 ["setState"]
       47 CALL                             R2 2 0
       48 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["frameRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 GETTABLEKS                       R4 R0 K2 ["Position"]
        7 GETTABLEKS                       R4 R4 K3 ["X"]
        9 GETTABLEKS                       R5 R1 K4 ["AbsolutePosition"]
       11 GETTABLEKS                       R5 R5 K3 ["X"]
       13 SUB                              R3 R4 R5
       14 GETTABLEKS                       R4 R1 K5 ["AbsoluteSize"]
       16 GETTABLEKS                       R4 R4 K3 ["X"]
       18 DIV                              R2 R3 R4
       19 LOADN                            R5 0
       20 LOADN                            R6 1
       21 FASTCALL3                        MATH_CLAMP R2 R5 R6
       23 MOVE                             R4 R2
       24 GETIMPORT                        R3 K8 [math.clamp]
       26 CALL                             R3 3 1
       27 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R2 0
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K4 ["indicatorPressed"]
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["totalTime"]
        5 MUL                              R1 R2 R0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["audioRef"]
        9 GETTABLEKS                       R2 R2 K3 ["current"]
       11 SETTABLEKS                       R1 R2 K4 ["TimePosition"]
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnEnded"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnEnded"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["totalTime"]
        5 JUMPIFEQKN                       R2 K2 [0] ; [+8]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["state"]
       10 GETTABLEKS                       R2 R2 K1 ["totalTime"]
       12 DIV                              R1 R0 R2
       13 JUMPIF                           R1 ; [+1]
       14 LOADN                            R1 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["state"]
       18 GETTABLEKS                       R2 R2 K3 ["indicatorPosition"]
       20 OR                               R1 R2 R1
       21 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["frameRef"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["createRef"]
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R0 K2 ["audioRef"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K3 ["createBinding"]
       15 LOADN                            R3 0
       16 CALL                             R2 1 2
       17 SETTABLEKS                       R2 R0 K4 ["elapsedTime"]
       19 SETTABLEKS                       R3 R0 K5 ["updateElapsedTime"]
       21 DUPTABLE                         R2 K10 [{["isLoaded"] = False, ["totalTime"] = 0}]
       22 SETTABLEKS                       R2 R0 K11 ["state"]
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R0 K12 ["onSoundChange"]
       28 NEWCLOSURE                       R2 P1
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R2 R0 K13 ["calculateTimePosition"]
       32 NEWCLOSURE                       R2 P2
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R2 R0 K14 ["handleIndicatorEvent"]
       36 NEWCLOSURE                       R2 P3
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R2 R0 K15 ["updateTimePosition"]
       40 NEWCLOSURE                       R2 P4
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R2 R0 K16 ["onSoundEnded"]
       44 NEWCLOSURE                       R2 P5
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R2 R0 K17 ["getCurrentTimeProgress"]
       48 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isMounted"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["audioRef"]
        7 GETTABLEKS                       R1 R1 K2 ["current"]
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["audioRef"]
       13 GETTABLEKS                       R1 R1 K2 ["current"]
       15 GETTABLEKS                       R1 R1 K3 ["IsPlaying"]
       17 JUMPIF                           R1 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K1 ["audioRef"]
       22 GETTABLEKS                       R1 R1 K2 ["current"]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K4 ["elapsedTime"]
       27 NAMECALL                         R2 R2 K5 ["getValue"]
       29 CALL                             R2 1 1
       30 ADD                              R3 R2 R0
       31 GETTABLEKS                       R4 R1 K6 ["TimeLength"]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K7 ["updateElapsedTime"]
       36 FASTCALL2                        MATH_MIN R3 R4 ; [+5]
       38 MOVE                             R7 R3
       39 MOVE                             R8 R4
       40 GETIMPORT                        R6 K10 [math.min]
       42 CALL                             R6 2 1
       43 CALL                             R5 1 0
       44 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["RenderStepped"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R1 R1 K2 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K3 ["runServiceConnection"]
       13 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["runServiceConnection"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R1 R0 K1 ["runServiceConnection"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["runServiceConnection"]
       14 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["getCurrentTimeProgress"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 LOADN                            R3 0
        8 LOADN                            R4 1
        9 LOADN                            R5 0
       10 CALL                             R1 4 -1
       11 RETURN                           R1 -1

PROTO_12:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["getCurrentTimeProgress"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 LOADN                            R3 0
        8 LOADK                            R4 K4 [0.5]
        9 LOADN                            R5 0
       10 CALL                             R1 4 -1
       11 RETURN                           R1 -1

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+17]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["indicatorPressed"]
        9 JUMPIFNOT                        R2 ; [+12]
       10 GETUPVAL                         R2 0
       11 DUPTABLE                         R4 K6 [{"indicatorPosition"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K7 ["calculateTimePosition"]
       15 MOVE                             R6 R1
       16 CALL                             R5 1 1
       17 SETTABLEKS                       R5 R4 K5 ["indicatorPosition"]
       19 NAMECALL                         R2 R2 K8 ["setState"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+24]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["updateTimePosition"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K5 ["calculateTimePosition"]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 0
       15 GETUPVAL                         R2 0
       16 LOADB                            R3 0
       17 SETTABLEKS                       R3 R2 K6 ["indicatorPressed"]
       19 GETUPVAL                         R2 0
       20 DUPTABLE                         R4 K8 [{"indicatorPosition"}]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K9 ["None"]
       24 SETTABLEKS                       R5 R4 K7 ["indicatorPosition"]
       26 NAMECALL                         R2 R2 K10 ["setState"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R2 0
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K4 ["indicatorPressed"]
       10 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["isLoaded"]
        6 GETTABLEKS                       R4 R1 K3 ["IsPlaying"]
        8 GETTABLEKS                       R5 R1 K4 ["SoundId"]
       10 GETTABLEKS                       R6 R1 K5 ["Stylizer"]
       12 GETTABLEKS                       R6 R6 K6 ["audioPlayer"]
       14 GETTABLEKS                       R7 R0 K7 ["elapsedTime"]
       16 NEWCLOSURE                       R9 P0
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R7 R7 K8 ["map"]
       20 CALL                             R7 2 1
       21 GETTABLEKS                       R8 R0 K7 ["elapsedTime"]
       23 NEWCLOSURE                       R10 P1
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R8 R8 K8 ["map"]
       27 CALL                             R8 2 1
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K9 ["createElement"]
       31 LOADK                            R10 K10 ["Frame"]
       32 NEWTABLE                         R11 4 0
       34 GETIMPORT                        R12 K13 [UDim2.new]
       36 LOADN                            R13 1
       37 LOADN                            R14 0
       38 LOADN                            R15 0
       39 LOADN                            R16 4
       40 CALL                             R12 4 1
       41 SETTABLEKS                       R12 R11 K14 ["Size"]
       43 GETTABLEKS                       R12 R6 K15 ["backgroundColor"]
       45 SETTABLEKS                       R12 R11 K16 ["BackgroundColor3"]
       47 GETUPVAL                         R12 0
       48 GETTABLEKS                       R12 R12 K17 ["Ref"]
       50 GETTABLEKS                       R13 R0 K18 ["frameRef"]
       52 SETTABLE                         R13 R11 R12
       53 DUPTABLE                         R12 K25 [{"Button", "ProgressBar", "ProgressIndicator", "ProgressIndicatorBorder", "UICorner", "Sound"}]
       54 GETUPVAL                         R13 0
       55 GETTABLEKS                       R13 R13 K9 ["createElement"]
       57 LOADK                            R14 K26 ["ImageButton"]
       58 NEWTABLE                         R15 8 0
       60 LOADN                            R16 1
       61 SETTABLEKS                       R16 R15 K27 ["BackgroundTransparency"]
       63 GETIMPORT                        R16 K13 [UDim2.new]
       65 LOADN                            R17 1
       66 LOADN                            R18 0
       67 LOADN                            R19 0
       68 LOADN                            R20 12
       69 CALL                             R16 4 1
       70 SETTABLEKS                       R16 R15 K14 ["Size"]
       72 GETIMPORT                        R16 K29 [Vector2.new]
       74 LOADN                            R17 0
       75 LOADK                            R18 K30 [0.5]
       76 CALL                             R16 2 1
       77 SETTABLEKS                       R16 R15 K31 ["AnchorPoint"]
       79 GETIMPORT                        R16 K13 [UDim2.new]
       81 LOADN                            R17 0
       82 LOADN                            R18 0
       83 LOADK                            R19 K30 [0.5]
       84 LOADN                            R20 0
       85 CALL                             R16 4 1
       86 SETTABLEKS                       R16 R15 K32 ["Position"]
       88 GETUPVAL                         R16 0
       89 GETTABLEKS                       R16 R16 K33 ["Event"]
       91 GETTABLEKS                       R16 R16 K34 ["InputChanged"]
       93 NEWCLOSURE                       R17 P2
       94 CAPTURE                          VAL R0
       95 SETTABLE                         R17 R15 R16
       96 GETUPVAL                         R16 0
       97 GETTABLEKS                       R16 R16 K33 ["Event"]
       99 GETTABLEKS                       R16 R16 K35 ["InputEnded"]
      101 NEWCLOSURE                       R17 P3
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U0
      104 SETTABLE                         R17 R15 R16
      105 CALL                             R13 2 1
      106 SETTABLEKS                       R13 R12 K19 ["Button"]
      108 GETUPVAL                         R13 0
      109 GETTABLEKS                       R13 R13 K9 ["createElement"]
      111 LOADK                            R14 K10 ["Frame"]
      112 DUPTABLE                         R15 K38 [{["BackgroundColor3"], ["Size"], ["ZIndex"] = 1}]
      113 GETTABLEKS                       R16 R6 K39 ["progressBarColor"]
      115 SETTABLEKS                       R16 R15 K16 ["BackgroundColor3"]
      117 SETTABLEKS                       R7 R15 K14 ["Size"]
      119 GETUPVAL                         R16 0
      120 GETTABLEKS                       R16 R16 K9 ["createElement"]
      122 LOADK                            R17 K23 ["UICorner"]
      123 DUPTABLE                         R18 K41 [{"CornerRadius"}]
      124 GETIMPORT                        R19 K43 [UDim.new]
      126 LOADN                            R20 0
      127 LOADN                            R21 4
      128 CALL                             R19 2 1
      129 SETTABLEKS                       R19 R18 K40 ["CornerRadius"]
      131 CALL                             R16 2 -1
      132 CALL                             R13 -1 1
      133 SETTABLEKS                       R13 R12 K20 ["ProgressBar"]
      135 GETUPVAL                         R13 0
      136 GETTABLEKS                       R13 R13 K9 ["createElement"]
      138 LOADK                            R14 K10 ["Frame"]
      139 NEWTABLE                         R15 8 0
      141 GETTABLEKS                       R16 R6 K44 ["indicatorColor"]
      143 SETTABLEKS                       R16 R15 K16 ["BackgroundColor3"]
      145 GETIMPORT                        R16 K13 [UDim2.new]
      147 LOADN                            R17 0
      148 LOADN                            R18 12
      149 LOADN                            R19 0
      150 LOADN                            R20 12
      151 CALL                             R16 4 1
      152 SETTABLEKS                       R16 R15 K14 ["Size"]
      154 GETIMPORT                        R16 K29 [Vector2.new]
      156 LOADK                            R17 K30 [0.5]
      157 LOADK                            R18 K30 [0.5]
      158 CALL                             R16 2 1
      159 SETTABLEKS                       R16 R15 K31 ["AnchorPoint"]
      161 SETTABLEKS                       R8 R15 K32 ["Position"]
      163 LOADN                            R16 3
      164 SETTABLEKS                       R16 R15 K36 ["ZIndex"]
      166 GETUPVAL                         R16 0
      167 GETTABLEKS                       R16 R16 K33 ["Event"]
      169 GETTABLEKS                       R16 R16 K45 ["InputBegan"]
      171 NEWCLOSURE                       R17 P4
      172 CAPTURE                          VAL R0
      173 SETTABLE                         R17 R15 R16
      174 DUPTABLE                         R16 K41 [{"CornerRadius"}]
      175 GETUPVAL                         R17 0
      176 GETTABLEKS                       R17 R17 K9 ["createElement"]
      178 LOADK                            R18 K23 ["UICorner"]
      179 DUPTABLE                         R19 K41 [{"CornerRadius"}]
      180 GETIMPORT                        R20 K43 [UDim.new]
      182 LOADN                            R21 0
      183 LOADN                            R22 12
      184 CALL                             R20 2 1
      185 SETTABLEKS                       R20 R19 K40 ["CornerRadius"]
      187 CALL                             R17 2 1
      188 SETTABLEKS                       R17 R16 K40 ["CornerRadius"]
      190 CALL                             R13 3 1
      191 SETTABLEKS                       R13 R12 K21 ["ProgressIndicator"]
      193 GETUPVAL                         R13 0
      194 GETTABLEKS                       R13 R13 K9 ["createElement"]
      196 LOADK                            R14 K10 ["Frame"]
      197 DUPTABLE                         R15 K47 [{["BackgroundColor3"], ["Size"], ["AnchorPoint"], ["Position"], ["ZIndex"] = 2}]
      198 GETTABLEKS                       R16 R6 K48 ["indicatorBorderColor"]
      200 SETTABLEKS                       R16 R15 K16 ["BackgroundColor3"]
      202 GETIMPORT                        R16 K13 [UDim2.new]
      204 LOADN                            R17 0
      205 LOADN                            R18 14
      206 LOADN                            R19 0
      207 LOADN                            R20 14
      208 CALL                             R16 4 1
      209 SETTABLEKS                       R16 R15 K14 ["Size"]
      211 GETIMPORT                        R16 K29 [Vector2.new]
      213 LOADK                            R17 K30 [0.5]
      214 LOADK                            R18 K30 [0.5]
      215 CALL                             R16 2 1
      216 SETTABLEKS                       R16 R15 K31 ["AnchorPoint"]
      218 SETTABLEKS                       R8 R15 K32 ["Position"]
      220 DUPTABLE                         R16 K49 [{"UICorner"}]
      221 GETUPVAL                         R17 0
      222 GETTABLEKS                       R17 R17 K9 ["createElement"]
      224 LOADK                            R18 K23 ["UICorner"]
      225 DUPTABLE                         R19 K41 [{"CornerRadius"}]
      226 GETIMPORT                        R20 K43 [UDim.new]
      228 LOADN                            R21 0
      229 LOADN                            R22 14
      230 CALL                             R20 2 1
      231 SETTABLEKS                       R20 R19 K40 ["CornerRadius"]
      233 CALL                             R17 2 1
      234 SETTABLEKS                       R17 R16 K23 ["UICorner"]
      236 CALL                             R13 3 1
      237 SETTABLEKS                       R13 R12 K22 ["ProgressIndicatorBorder"]
      239 GETUPVAL                         R13 0
      240 GETTABLEKS                       R13 R13 K9 ["createElement"]
      242 LOADK                            R14 K23 ["UICorner"]
      243 DUPTABLE                         R15 K41 [{"CornerRadius"}]
      244 GETIMPORT                        R16 K43 [UDim.new]
      246 LOADN                            R17 4
      247 LOADN                            R18 4
      248 CALL                             R16 2 1
      249 SETTABLEKS                       R16 R15 K40 ["CornerRadius"]
      251 CALL                             R13 2 1
      252 SETTABLEKS                       R13 R12 K23 ["UICorner"]
      254 GETUPVAL                         R13 0
      255 GETTABLEKS                       R13 R13 K9 ["createElement"]
      257 LOADK                            R14 K24 ["Sound"]
      258 NEWTABLE                         R15 8 0
      260 GETUPVAL                         R16 0
      261 GETTABLEKS                       R16 R16 K17 ["Ref"]
      263 GETTABLEKS                       R17 R0 K50 ["audioRef"]
      265 SETTABLE                         R17 R15 R16
      266 GETUPVAL                         R16 0
      267 GETTABLEKS                       R16 R16 K33 ["Event"]
      269 GETTABLEKS                       R16 R16 K51 ["Changed"]
      271 GETTABLEKS                       R17 R0 K52 ["onSoundChange"]
      273 SETTABLE                         R17 R15 R16
      274 GETUPVAL                         R16 0
      275 GETTABLEKS                       R16 R16 K33 ["Event"]
      277 GETTABLEKS                       R16 R16 K53 ["Ended"]
      279 GETTABLEKS                       R17 R0 K54 ["onSoundEnded"]
      281 SETTABLE                         R17 R15 R16
      282 GETUPVAL                         R16 1
      283 GETTABLEKS                       R16 R16 K55 ["constructAssetIdString"]
      285 MOVE                             R17 R5
      286 CALL                             R16 1 1
      287 SETTABLEKS                       R16 R15 K4 ["SoundId"]
      289 GETTABLEKS                       R17 R2 K56 ["indicatorPosition"]
      291 NOT                              R16 R17
      292 JUMPIFNOT                        R16 ; [+3]
      293 MOVE                             R16 R3
      294 JUMPIFNOT                        R16 ; [+1]
      295 MOVE                             R16 R4
      296 SETTABLEKS                       R16 R15 K57 ["Playing"]
      298 GETIMPORT                        R16 K61 [Enum.UsageContext.Preview]
      300 SETTABLEKS                       R16 R15 K62 ["UsageContextPermission"]
      302 CALL                             R13 2 1
      303 SETTABLEKS                       R13 R12 K24 ["Sound"]
      305 CALL                             R9 3 -1
      306 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RunService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Roact"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["Framework"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       27 GETTABLEKS                       R6 R5 K14 ["withContext"]
       29 GETIMPORT                        R7 K10 [require]
       31 GETTABLEKS                       R8 R0 K15 ["Src"]
       33 GETTABLEKS                       R8 R8 K16 ["Util"]
       35 GETTABLEKS                       R8 R8 K17 ["Urls"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R3 K18 ["PureComponent"]
       40 LOADK                            R10 K19 ["AudioPlayer"]
       41 NAMECALL                         R8 R8 K20 ["extend"]
       43 CALL                             R8 2 1
       44 DUPCLOSURE                       R9 K21 [PROTO_7]
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R9 R8 K22 ["init"]
       48 DUPCLOSURE                       R9 K23 [PROTO_9]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R9 R8 K24 ["didMount"]
       52 DUPCLOSURE                       R9 K25 [PROTO_10]
       53 SETTABLEKS                       R9 R8 K26 ["willUnmount"]
       55 DUPCLOSURE                       R9 K27 [PROTO_16]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R7
       58 SETTABLEKS                       R9 R8 K28 ["render"]
       60 MOVE                             R9 R6
       61 DUPTABLE                         R10 K30 [{"Stylizer"}]
       62 GETTABLEKS                       R11 R5 K29 ["Stylizer"]
       64 SETTABLEKS                       R11 R10 K29 ["Stylizer"]
       66 CALL                             R9 1 1
       67 MOVE                             R10 R8
       68 CALL                             R9 1 1
       69 MOVE                             R8 R9
       70 RETURN                           R8 1
