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
       21 DUPTABLE                         R2 K8 [{"isLoaded", "totalTime"}]
       22 LOADB                            R3 0
       23 SETTABLEKS                       R3 R2 K6 ["isLoaded"]
       25 LOADN                            R3 0
       26 SETTABLEKS                       R3 R2 K7 ["totalTime"]
       28 SETTABLEKS                       R2 R0 K9 ["state"]
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R2 R0 K10 ["onSoundChange"]
       34 NEWCLOSURE                       R2 P1
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R2 R0 K11 ["calculateTimePosition"]
       38 NEWCLOSURE                       R2 P2
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R2 R0 K12 ["handleIndicatorEvent"]
       42 NEWCLOSURE                       R2 P3
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R2 R0 K13 ["updateTimePosition"]
       46 NEWCLOSURE                       R2 P4
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R2 R0 K14 ["onSoundEnded"]
       50 NEWCLOSURE                       R2 P5
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R2 R0 K15 ["getCurrentTimeProgress"]
       54 RETURN                           R0 0

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
      112 DUPTABLE                         R15 K37 [{"BackgroundColor3", "Size", "ZIndex"}]
      113 GETTABLEKS                       R16 R6 K38 ["progressBarColor"]
      115 SETTABLEKS                       R16 R15 K16 ["BackgroundColor3"]
      117 SETTABLEKS                       R7 R15 K14 ["Size"]
      119 LOADN                            R16 1
      120 SETTABLEKS                       R16 R15 K36 ["ZIndex"]
      122 GETUPVAL                         R16 0
      123 GETTABLEKS                       R16 R16 K9 ["createElement"]
      125 LOADK                            R17 K23 ["UICorner"]
      126 DUPTABLE                         R18 K40 [{"CornerRadius"}]
      127 GETIMPORT                        R19 K42 [UDim.new]
      129 LOADN                            R20 0
      130 LOADN                            R21 4
      131 CALL                             R19 2 1
      132 SETTABLEKS                       R19 R18 K39 ["CornerRadius"]
      134 CALL                             R16 2 -1
      135 CALL                             R13 -1 1
      136 SETTABLEKS                       R13 R12 K20 ["ProgressBar"]
      138 GETUPVAL                         R13 0
      139 GETTABLEKS                       R13 R13 K9 ["createElement"]
      141 LOADK                            R14 K10 ["Frame"]
      142 NEWTABLE                         R15 8 0
      144 GETTABLEKS                       R16 R6 K43 ["indicatorColor"]
      146 SETTABLEKS                       R16 R15 K16 ["BackgroundColor3"]
      148 GETIMPORT                        R16 K13 [UDim2.new]
      150 LOADN                            R17 0
      151 LOADN                            R18 12
      152 LOADN                            R19 0
      153 LOADN                            R20 12
      154 CALL                             R16 4 1
      155 SETTABLEKS                       R16 R15 K14 ["Size"]
      157 GETIMPORT                        R16 K29 [Vector2.new]
      159 LOADK                            R17 K30 [0.5]
      160 LOADK                            R18 K30 [0.5]
      161 CALL                             R16 2 1
      162 SETTABLEKS                       R16 R15 K31 ["AnchorPoint"]
      164 SETTABLEKS                       R8 R15 K32 ["Position"]
      166 LOADN                            R16 3
      167 SETTABLEKS                       R16 R15 K36 ["ZIndex"]
      169 GETUPVAL                         R16 0
      170 GETTABLEKS                       R16 R16 K33 ["Event"]
      172 GETTABLEKS                       R16 R16 K44 ["InputBegan"]
      174 NEWCLOSURE                       R17 P4
      175 CAPTURE                          VAL R0
      176 SETTABLE                         R17 R15 R16
      177 DUPTABLE                         R16 K40 [{"CornerRadius"}]
      178 GETUPVAL                         R17 0
      179 GETTABLEKS                       R17 R17 K9 ["createElement"]
      181 LOADK                            R18 K23 ["UICorner"]
      182 DUPTABLE                         R19 K40 [{"CornerRadius"}]
      183 GETIMPORT                        R20 K42 [UDim.new]
      185 LOADN                            R21 0
      186 LOADN                            R22 12
      187 CALL                             R20 2 1
      188 SETTABLEKS                       R20 R19 K39 ["CornerRadius"]
      190 CALL                             R17 2 1
      191 SETTABLEKS                       R17 R16 K39 ["CornerRadius"]
      193 CALL                             R13 3 1
      194 SETTABLEKS                       R13 R12 K21 ["ProgressIndicator"]
      196 GETUPVAL                         R13 0
      197 GETTABLEKS                       R13 R13 K9 ["createElement"]
      199 LOADK                            R14 K10 ["Frame"]
      200 DUPTABLE                         R15 K45 [{"BackgroundColor3", "Size", "AnchorPoint", "Position", "ZIndex"}]
      201 GETTABLEKS                       R16 R6 K46 ["indicatorBorderColor"]
      203 SETTABLEKS                       R16 R15 K16 ["BackgroundColor3"]
      205 GETIMPORT                        R16 K13 [UDim2.new]
      207 LOADN                            R17 0
      208 LOADN                            R18 14
      209 LOADN                            R19 0
      210 LOADN                            R20 14
      211 CALL                             R16 4 1
      212 SETTABLEKS                       R16 R15 K14 ["Size"]
      214 GETIMPORT                        R16 K29 [Vector2.new]
      216 LOADK                            R17 K30 [0.5]
      217 LOADK                            R18 K30 [0.5]
      218 CALL                             R16 2 1
      219 SETTABLEKS                       R16 R15 K31 ["AnchorPoint"]
      221 SETTABLEKS                       R8 R15 K32 ["Position"]
      223 LOADN                            R16 2
      224 SETTABLEKS                       R16 R15 K36 ["ZIndex"]
      226 DUPTABLE                         R16 K47 [{"UICorner"}]
      227 GETUPVAL                         R17 0
      228 GETTABLEKS                       R17 R17 K9 ["createElement"]
      230 LOADK                            R18 K23 ["UICorner"]
      231 DUPTABLE                         R19 K40 [{"CornerRadius"}]
      232 GETIMPORT                        R20 K42 [UDim.new]
      234 LOADN                            R21 0
      235 LOADN                            R22 14
      236 CALL                             R20 2 1
      237 SETTABLEKS                       R20 R19 K39 ["CornerRadius"]
      239 CALL                             R17 2 1
      240 SETTABLEKS                       R17 R16 K23 ["UICorner"]
      242 CALL                             R13 3 1
      243 SETTABLEKS                       R13 R12 K22 ["ProgressIndicatorBorder"]
      245 GETUPVAL                         R13 0
      246 GETTABLEKS                       R13 R13 K9 ["createElement"]
      248 LOADK                            R14 K23 ["UICorner"]
      249 DUPTABLE                         R15 K40 [{"CornerRadius"}]
      250 GETIMPORT                        R16 K42 [UDim.new]
      252 LOADN                            R17 4
      253 LOADN                            R18 4
      254 CALL                             R16 2 1
      255 SETTABLEKS                       R16 R15 K39 ["CornerRadius"]
      257 CALL                             R13 2 1
      258 SETTABLEKS                       R13 R12 K23 ["UICorner"]
      260 GETUPVAL                         R13 0
      261 GETTABLEKS                       R13 R13 K9 ["createElement"]
      263 LOADK                            R14 K24 ["Sound"]
      264 NEWTABLE                         R15 8 0
      266 GETUPVAL                         R16 0
      267 GETTABLEKS                       R16 R16 K17 ["Ref"]
      269 GETTABLEKS                       R17 R0 K48 ["audioRef"]
      271 SETTABLE                         R17 R15 R16
      272 GETUPVAL                         R16 0
      273 GETTABLEKS                       R16 R16 K33 ["Event"]
      275 GETTABLEKS                       R16 R16 K49 ["Changed"]
      277 GETTABLEKS                       R17 R0 K50 ["onSoundChange"]
      279 SETTABLE                         R17 R15 R16
      280 GETUPVAL                         R16 0
      281 GETTABLEKS                       R16 R16 K33 ["Event"]
      283 GETTABLEKS                       R16 R16 K51 ["Ended"]
      285 GETTABLEKS                       R17 R0 K52 ["onSoundEnded"]
      287 SETTABLE                         R17 R15 R16
      288 GETUPVAL                         R16 1
      289 GETTABLEKS                       R16 R16 K53 ["constructAssetIdString"]
      291 MOVE                             R17 R5
      292 CALL                             R16 1 1
      293 SETTABLEKS                       R16 R15 K4 ["SoundId"]
      295 GETTABLEKS                       R17 R2 K54 ["indicatorPosition"]
      297 NOT                              R16 R17
      298 JUMPIFNOT                        R16 ; [+3]
      299 MOVE                             R16 R3
      300 JUMPIFNOT                        R16 ; [+1]
      301 MOVE                             R16 R4
      302 SETTABLEKS                       R16 R15 K55 ["Playing"]
      304 GETIMPORT                        R16 K59 [Enum.UsageContext.Preview]
      306 SETTABLEKS                       R16 R15 K60 ["UsageContextPermission"]
      308 CALL                             R13 2 1
      309 SETTABLEKS                       R13 R12 K24 ["Sound"]
      311 CALL                             R9 3 -1
      312 RETURN                           R9 -1

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
