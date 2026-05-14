PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["Icon"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETIMPORT                        R3 K2 [UDim2.fromOffset]
        4 LOADN                            R4 0
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K3 ["cursorYOffset"]
        8 SUB                              R6 R1 R7
        9 LOADN                            R7 0
       10 LOADN                            R9 0
       11 GETUPVAL                         R11 1
       12 SUB                              R10 R2 R11
       13 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       15 GETIMPORT                        R8 K6 [math.max]
       17 CALL                             R8 2 1
       18 FASTCALL                         MATH_CLAMP ; [+2]
       19 GETIMPORT                        R5 K8 [math.clamp]
       21 CALL                             R5 3 1
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 DIV                              R3 R0 R4
        2 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        3 GETIMPORT                        R2 K3 [math.floor]
        5 CALL                             R2 1 1
        6 ADDK                             R1 R2 K0 [1]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K4 ["index"]
       11 JUMPIFNOTLT                      R3 R1 ; [+12]
       13 GETUPVAL                         R3 1
       14 JUMPIFNOTLE                      R3 R1 ; [+19]
       16 GETUPVAL                         R3 1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K4 ["index"]
       20 JUMPIFNOTLT                      R4 R3 ; [+13]
       22 SUBK                             R2 R2 K0 [1]
       23 JUMP                             ; [+10]
       24 GETUPVAL                         R3 1
       25 JUMPIFNOTLE                      R1 R3 ; [+8]
       27 GETUPVAL                         R3 1
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K4 ["index"]
       31 JUMPIFNOTLT                      R3 R4 ; [+2]
       33 ADDK                             R2 R2 K0 [1]
       34 GETIMPORT                        R3 K7 [UDim2.fromOffset]
       36 LOADN                            R4 0
       37 GETUPVAL                         R6 0
       38 SUBK                             R7 R2 K0 [1]
       39 MUL                              R5 R6 R7
       40 CALL                             R3 2 -1
       41 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getValue"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R3 R0 K1 ["Position"]
        6 GETTABLEKS                       R3 R3 K2 ["Y"]
        8 SUB                              R2 R3 R1
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R2
       11 CALL                             R3 1 0
       12 DUPTABLE                         R3 K5 [{"cursorYOffset", "index"}]
       13 GETUPVAL                         R5 2
       14 MOD                              R4 R2 R5
       15 SETTABLEKS                       R4 R3 K3 ["cursorYOffset"]
       17 GETUPVAL                         R7 2
       18 DIV                              R6 R2 R7
       19 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       20 GETIMPORT                        R5 K9 [math.floor]
       22 CALL                             R5 1 1
       23 ADDK                             R4 R5 K6 [1]
       24 SETTABLEKS                       R4 R3 K4 ["index"]
       26 GETUPVAL                         R4 3
       27 LOADK                            R5 K10 ["rbxasset://SystemCursors/ClosedHand"]
       28 SETTABLEKS                       R5 R4 K11 ["Icon"]
       30 GETUPVAL                         R4 4
       31 MOVE                             R5 R3
       32 CALL                             R4 1 0
       33 GETUPVAL                         R4 5
       34 SETTABLEKS                       R3 R4 K12 ["current"]
       36 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+6]
        5 GETUPVAL                         R2 1
        6 LOADK                            R3 K1 ["rbxasset://SystemCursors/OpenHand"]
        7 SETTABLEKS                       R3 R2 K2 ["Icon"]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 LOADK                            R3 K3 ["rbxasset://SystemCursors/ClosedHand"]
       12 SETTABLEKS                       R3 R2 K2 ["Icon"]
       14 GETTABLEKS                       R2 R1 K4 ["UserInputType"]
       16 GETIMPORT                        R3 K7 [Enum.UserInputType.MouseMovement]
       18 JUMPIFEQ                         R2 R3 ; [+2]
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R4 R1 K8 ["Position"]
       24 GETTABLEKS                       R4 R4 K9 ["Y"]
       26 GETUPVAL                         R5 3
       27 NAMECALL                         R5 R5 K10 ["getValue"]
       29 CALL                             R5 1 1
       30 SUB                              R3 R4 R5
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R2 0
        7 LOADK                            R3 K4 ["rbxasset://SystemCursors/Arrow"]
        8 SETTABLEKS                       R3 R2 K5 ["Icon"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K6 ["current"]
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 RETURN                           R0 0
       16 JUMPIFNOTEQKNIL                  R2 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K7 ["LUAU_ANALYZE_ERROR"]
       23 FASTCALL2                        ASSERT R4 R5 ; [+3]
       25 GETIMPORT                        R3 K9 [assert]
       27 CALL                             R3 2 0
       28 GETTABLEKS                       R3 R1 K0 ["UserInputType"]
       30 GETIMPORT                        R4 K11 [Enum.UserInputType.MouseButton1]
       32 JUMPIFEQ                         R3 R4 ; [+2]
       34 RETURN                           R0 0
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K5 ["Icon"]
       38 JUMPIFEQKS                       R3 K4 ["rbxasset://SystemCursors/Arrow"] ; [+5]
       40 GETUPVAL                         R3 0
       41 LOADK                            R4 K12 ["rbxasset://SystemCursors/OpenHand"]
       42 SETTABLEKS                       R4 R3 K5 ["Icon"]
       44 GETUPVAL                         R3 3
       45 LOADNIL                          R4
       46 CALL                             R3 1 0
       47 GETUPVAL                         R3 1
       48 LOADNIL                          R4
       49 SETTABLEKS                       R4 R3 K6 ["current"]
       51 GETUPVAL                         R6 4
       52 NAMECALL                         R6 R6 K14 ["getValue"]
       54 CALL                             R6 1 1
       55 GETUPVAL                         R7 5
       56 DIV                              R5 R6 R7
       57 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       58 GETIMPORT                        R4 K17 [math.floor]
       60 CALL                             R4 1 1
       61 ADDK                             R3 R4 K13 [1]
       62 GETTABLEKS                       R4 R2 K18 ["index"]
       64 JUMPIFNOTEQ                      R4 R3 ; [+2]
       66 RETURN                           R0 0
       67 GETUPVAL                         R4 6
       68 GETTABLEKS                       R4 R4 K19 ["move"]
       70 GETTABLEKS                       R5 R2 K18 ["index"]
       72 MOVE                             R6 R3
       73 CALL                             R4 2 0
       74 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["rbxasset://SystemCursors/Arrow"]
        2 SETTABLEKS                       R1 R0 K1 ["Icon"]
        4 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["spacing"]
        2 JUMPIF                           R1 ; [+5]
        3 GETIMPORT                        R1 K3 [UDim.new]
        5 LOADN                            R2 0
        6 LOADN                            R3 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 NAMECALL                         R2 R2 K4 ["use"]
       11 CALL                             R2 1 1
       12 NAMECALL                         R2 R2 K5 ["get"]
       14 CALL                             R2 1 1
       15 NAMECALL                         R2 R2 K6 ["GetMouse"]
       17 CALL                             R2 1 1
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R2
       20 GETTABLEKS                       R5 R0 K7 ["cellSize"]
       22 GETTABLEKS                       R5 R5 K8 ["Y"]
       24 GETTABLEKS                       R5 R5 K9 ["Offset"]
       26 GETTABLEKS                       R6 R1 K9 ["Offset"]
       28 ADD                              R4 R5 R6
       29 GETTABLEKS                       R7 R0 K7 ["cellSize"]
       31 GETTABLEKS                       R7 R7 K8 ["Y"]
       33 GETTABLEKS                       R7 R7 K10 ["Scale"]
       35 JUMPIFEQKN                       R7 K11 [0] ; [+2]
       37 LOADB                            R6 0 +1
       38 LOADB                            R6 1
       39 FASTCALL2K                       ASSERT R6 K12 ; [+4]
       41 LOADK                            R7 K12 ["CellSize cannot have a scaled Y"]
       42 GETIMPORT                        R5 K14 [assert]
       44 CALL                             R5 2 0
       45 NEWTABLE                         R5 0 0
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K15 ["useState"]
       50 LOADNIL                          R7
       51 CALL                             R6 1 2
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R8 R8 K16 ["useRef"]
       55 LOADNIL                          R9
       56 CALL                             R8 1 1
       57 GETUPVAL                         R9 1
       58 GETTABLEKS                       R9 R9 K17 ["useBinding"]
       60 LOADN                            R10 0
       61 CALL                             R9 1 2
       62 GETUPVAL                         R11 1
       63 GETTABLEKS                       R11 R11 K17 ["useBinding"]
       65 LOADN                            R12 0
       66 CALL                             R11 1 2
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R13 R13 K17 ["useBinding"]
       70 LOADN                            R14 0
       71 CALL                             R13 1 2
       72 GETTABLEKS                       R15 R0 K18 ["tiles"]
       74 LOADNIL                          R16
       75 LOADNIL                          R17
       76 FORGPREP                         R15
       77 GETTABLEKS                       R20 R0 K19 ["render"]
       79 MOVE                             R21 R19
       80 JUMPIFNOTEQKNIL                  R6 ; [+2]
       82 LOADB                            R22 0 +1
       83 LOADB                            R22 1
       84 CALL                             R20 2 2
       85 GETTABLE                         R24 R5 R21
       86 JUMPIFEQKNIL                     R24 ; [+2]
       88 LOADB                            R23 0 +1
       89 LOADB                            R23 1
       90 FASTCALL2K                       ASSERT R23 K20 ; [+4]
       92 LOADK                            R24 K20 ["Render key has already been used"]
       93 GETIMPORT                        R22 K14 [assert]
       95 CALL                             R22 2 0
       96 GETIMPORT                        R22 K23 [UDim2.fromOffset]
       98 LOADN                            R23 0
       99 SUBK                             R25 R18 K24 [1]
      100 MUL                              R24 R4 R25
      101 CALL                             R22 2 1
      102 JUMPIFEQKNIL                     R6 ; [+31]
      104 GETTABLEKS                       R23 R6 K25 ["index"]
      106 JUMPIFNOTEQ                      R23 R18 ; [+19]
      108 GETUPVAL                         R23 1
      109 GETTABLEKS                       R23 R23 K26 ["joinBindings"]
      111 NEWTABLE                         R24 0 2
      113 MOVE                             R25 R13
      114 MOVE                             R26 R11
      115 SETLIST                          R24 R25 2 [1]
      117 CALL                             R23 1 1
      118 NEWCLOSURE                       R25 P1
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R4
      121 NAMECALL                         R23 R23 K27 ["map"]
      123 CALL                             R23 2 1
      124 MOVE                             R22 R23
      125 JUMP                             ; [+8]
      126 NEWCLOSURE                       R25 P2
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R18
      129 CAPTURE                          VAL R6
      130 NAMECALL                         R23 R13 K27 ["map"]
      132 CALL                             R23 2 1
      133 MOVE                             R22 R23
      134 GETUPVAL                         R23 1
      135 GETTABLEKS                       R23 R23 K28 ["createElement"]
      137 GETUPVAL                         R24 2
      138 DUPTABLE                         R25 K32 [{"Position", "Size", "ZIndex"}]
      139 SETTABLEKS                       R22 R25 K29 ["Position"]
      141 GETTABLEKS                       R26 R0 K7 ["cellSize"]
      143 SETTABLEKS                       R26 R25 K30 ["Size"]
      145 JUMPIFEQKNIL                     R6 ; [+7]
      147 GETTABLEKS                       R27 R6 K25 ["index"]
      149 JUMPIFNOTEQ                      R27 R18 ; [+3]
      151 LOADN                            R26 2
      152 JUMP                             ; [+1]
      153 LOADN                            R26 1
      154 SETTABLEKS                       R26 R25 K31 ["ZIndex"]
      156 MOVE                             R26 R20
      157 CALL                             R23 3 1
      158 SETTABLE                         R23 R5 R21
      159 FORGLOOP                         R15 2 ; [-83]
      161 GETUPVAL                         R15 1
      162 GETTABLEKS                       R15 R15 K33 ["useCallback"]
      164 NEWCLOSURE                       R16 P3
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R8
      171 NEWTABLE                         R17 0 1
      173 MOVE                             R18 R4
      174 SETLIST                          R17 R18 1 [1]
      176 CALL                             R15 2 1
      177 GETUPVAL                         R16 1
      178 GETTABLEKS                       R16 R16 K33 ["useCallback"]
      180 NEWCLOSURE                       R17 P4
      181 CAPTURE                          VAL R8
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R9
      185 NEWTABLE                         R18 0 0
      187 CALL                             R16 2 1
      188 GETUPVAL                         R17 1
      189 GETTABLEKS                       R17 R17 K33 ["useCallback"]
      191 NEWCLOSURE                       R18 P5
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R8
      194 CAPTURE                          UPVAL U3
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R0
      199 NEWTABLE                         R19 0 1
      201 GETTABLEKS                       R20 R0 K34 ["move"]
      203 SETLIST                          R19 R20 1 [1]
      205 CALL                             R17 2 1
      206 GETUPVAL                         R18 1
      207 GETTABLEKS                       R18 R18 K35 ["useEffect"]
      209 NEWCLOSURE                       R19 P6
      210 CAPTURE                          VAL R2
      211 NEWTABLE                         R20 0 0
      213 CALL                             R18 2 0
      214 LOADNIL                          R18
      215 GETTABLEKS                       R20 R0 K18 ["tiles"]
      217 LENGTH                           R19 R20
      218 LOADN                            R20 0
      219 JUMPIFNOTLT                      R20 R19 ; [+5]
      221 GETTABLEKS                       R19 R1 K9 ["Offset"]
      223 MINUS                            R18 R19
      224 JUMP                             ; [+1]
      225 LOADN                            R18 0
      226 GETUPVAL                         R19 1
      227 GETTABLEKS                       R19 R19 K28 ["createElement"]
      229 GETUPVAL                         R20 2
      230 NEWTABLE                         R21 8 0
      232 GETTABLEKS                       R22 R0 K36 ["layoutOrder"]
      234 SETTABLEKS                       R22 R21 K37 ["LayoutOrder"]
      236 GETIMPORT                        R22 K38 [UDim2.new]
      238 GETTABLEKS                       R23 R0 K7 ["cellSize"]
      240 GETTABLEKS                       R23 R23 K39 ["X"]
      242 GETIMPORT                        R24 K3 [UDim.new]
      244 LOADN                            R25 0
      245 GETTABLEKS                       R29 R0 K18 ["tiles"]
      247 LENGTH                           R28 R29
      248 MUL                              R27 R4 R28
      249 ADD                              R26 R27 R18
      250 CALL                             R24 2 -1
      251 CALL                             R22 -1 1
      252 SETTABLEKS                       R22 R21 K30 ["Size"]
      254 SETTABLEKS                       R1 R21 K40 ["Spacing"]
      256 SETTABLEKS                       R15 R21 K41 ["OnPress"]
      258 GETUPVAL                         R22 1
      259 GETTABLEKS                       R22 R22 K42 ["Event"]
      261 GETTABLEKS                       R22 R22 K43 ["InputChanged"]
      263 SETTABLE                         R16 R21 R22
      264 GETUPVAL                         R22 1
      265 GETTABLEKS                       R22 R22 K42 ["Event"]
      267 GETTABLEKS                       R22 R22 K44 ["InputEnded"]
      269 SETTABLE                         R17 R21 R22
      270 GETUPVAL                         R22 1
      271 GETTABLEKS                       R22 R22 K45 ["Change"]
      273 GETTABLEKS                       R22 R22 K46 ["AbsolutePosition"]
      275 NEWCLOSURE                       R23 P7
      276 CAPTURE                          VAL R10
      277 SETTABLE                         R23 R21 R22
      278 GETUPVAL                         R22 1
      279 GETTABLEKS                       R22 R22 K45 ["Change"]
      281 GETTABLEKS                       R22 R22 K47 ["AbsoluteSize"]
      283 NEWCLOSURE                       R23 P8
      284 CAPTURE                          VAL R12
      285 SETTABLE                         R23 R21 R22
      286 MOVE                             R22 R5
      287 CALL                             R19 3 -1
      288 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["ContextServices"]
       32 GETTABLEKS                       R4 R4 K13 ["Plugin"]
       34 GETTABLEKS                       R5 R1 K14 ["UI"]
       36 GETTABLEKS                       R6 R5 K15 ["Pane"]
       38 DUPCLOSURE                       R7 K16 [PROTO_10]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R3
       43 RETURN                           R7 1
