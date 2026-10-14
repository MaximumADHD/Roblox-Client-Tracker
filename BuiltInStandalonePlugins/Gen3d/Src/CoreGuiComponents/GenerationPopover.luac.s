PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [Vector2.zero]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["current"]
        6 GETUPVAL                         R4 2
        7 DUPTABLE                         R5 K3 [{"pointer", "offset"}]
        8 GETIMPORT                        R6 K6 [Vector2.new]
       10 MOVE                             R7 R0
       11 MOVE                             R8 R1
       12 CALL                             R6 2 1
       13 SETTABLEKS                       R6 R5 K1 ["pointer"]
       15 GETIMPORT                        R6 K6 [Vector2.new]
       17 GETTABLEKS                       R8 R2 K7 ["X"]
       19 GETTABLEKS                       R8 R8 K8 ["Offset"]
       21 GETTABLEKS                       R9 R3 K7 ["X"]
       23 GETTABLEKS                       R9 R9 K8 ["Offset"]
       25 SUB                              R7 R8 R9
       26 GETTABLEKS                       R9 R2 K9 ["Y"]
       28 GETTABLEKS                       R9 R9 K8 ["Offset"]
       30 GETTABLEKS                       R10 R3 K9 ["Y"]
       32 GETTABLEKS                       R10 R10 K8 ["Offset"]
       34 SUB                              R8 R9 R10
       35 CALL                             R6 2 1
       36 SETTABLEKS                       R6 R5 K2 ["offset"]
       38 SETTABLEKS                       R5 R4 K0 ["current"]
       40 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+25]
        4 GETTABLEKS                       R2 R0 K1 ["UserInputType"]
        6 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseMovement]
        8 JUMPIFNOTEQ                      R2 R3 ; [+20]
       10 GETIMPORT                        R2 K7 [Vector2.new]
       12 GETTABLEKS                       R3 R0 K8 ["Position"]
       14 GETTABLEKS                       R3 R3 K9 ["X"]
       16 GETTABLEKS                       R4 R0 K8 ["Position"]
       18 GETTABLEKS                       R4 R4 K10 ["Y"]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R6 R1 K11 ["offset"]
       24 ADD                              R5 R6 R2
       25 GETTABLEKS                       R6 R1 K12 ["pointer"]
       27 SUB                              R4 R5 R6
       28 CALL                             R3 1 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+5]
        6 GETUPVAL                         R1 0
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K4 ["current"]
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["InputChanged"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R0 R0 K1 ["Connect"]
       12 CALL                             R0 2 1
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K2 ["InputEnded"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          UPVAL U2
       18 NAMECALL                         R1 R1 K1 ["Connect"]
       20 CALL                             R1 2 1
       21 NEWCLOSURE                       R2 P2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["AbsoluteSize"]
        8 GETTABLEKS                       R1 R1 K2 ["Y"]
       10 GETUPVAL                         R2 1
       11 JUMPIFNOTEQ                      R1 R2 ; [+16]
       13 GETUPVAL                         R2 2
       14 NAMECALL                         R2 R2 K3 ["Disconnect"]
       16 CALL                             R2 1 0
       17 GETUPVAL                         R2 3
       18 DUPTABLE                         R3 K6 [{"anchor", "height"}]
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K0 ["current"]
       22 SETTABLEKS                       R4 R3 K4 ["anchor"]
       24 SETTABLEKS                       R1 R3 K5 ["height"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0
       28 SETUPVAL                         R1 1
       29 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["Heartbeat"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          REF R0
        8 CAPTURE                          REF R1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 NAMECALL                         R2 R2 K1 ["Connect"]
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 NEWCLOSURE                       R2 P1
       16 CAPTURE                          REF R1
       17 CLOSEUPVALS                      R0
       18 RETURN                           R2 1

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+2]
        4 DUPCLOSURE                       R0 K0 [PROTO_9]
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["Heartbeat"]
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          UPVAL U3
       11 NAMECALL                         R0 R0 K2 ["Once"]
       13 CALL                             R0 2 1
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1

PROTO_13:
        0 JUMPIFNOT                        R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        4 GETIMPORT                        R3 K3 [Enum.KeyCode.Escape]
        6 JUMPIFNOTEQ                      R2 R3 ; [+8]
        8 GETUPVAL                         R2 0
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["setEnabled"]
       13 LOADB                            R3 0
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InputBegan"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"anchor", "height"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K3 ["current"]
        5 SETTABLEKS                       R3 R2 K0 ["anchor"]
        7 GETTABLEKS                       R3 R0 K4 ["AbsoluteSize"]
        9 GETTABLEKS                       R3 R3 K5 ["Y"]
       11 SETTABLEKS                       R3 R2 K1 ["height"]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 2
       15 LOADB                            R2 1
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["getFFlagTextureGenDraggablePopover"]
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["useState"]
       12 LOADB                            R3 0
       13 CALL                             R2 1 2
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K2 ["useState"]
       17 LOADB                            R5 0
       18 CALL                             R4 1 2
       19 GETUPVAL                         R6 3
       20 CALL                             R6 0 1
       21 GETTABLEKS                       R9 R6 K4 ["min"]
       23 GETTABLEKS                       R10 R6 K5 ["max"]
       25 ADD                              R8 R9 R10
       26 DIVK                             R7 R8 K3 [2]
       27 GETTABLEKS                       R9 R6 K4 ["min"]
       29 GETTABLEKS                       R9 R9 K6 ["Y"]
       31 GETTABLEKS                       R12 R6 K5 ["max"]
       33 GETTABLEKS                       R12 R12 K6 ["Y"]
       35 GETTABLEKS                       R13 R6 K4 ["min"]
       37 GETTABLEKS                       R13 R13 K6 ["Y"]
       39 SUB                              R11 R12 R13
       40 MULK                             R10 R11 K7 [0.9]
       41 ADD                              R8 R9 R10
       42 GETIMPORT                        R9 K10 [UDim2.fromOffset]
       44 GETTABLEKS                       R12 R7 K12 ["X"]
       46 SUBK                             R11 R12 K11 [180]
       47 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       48 GETIMPORT                        R10 K15 [math.floor]
       50 CALL                             R10 1 1
       51 FASTCALL1                        MATH_FLOOR R8 ; [+3]
       52 MOVE                             R12 R8
       53 GETIMPORT                        R11 K15 [math.floor]
       55 CALL                             R11 1 1
       56 CALL                             R9 2 1
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K16 ["useRef"]
       60 LOADNIL                          R11
       61 CALL                             R10 1 1
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R11 R11 K16 ["useRef"]
       65 MOVE                             R12 R9
       66 CALL                             R11 1 1
       67 SETTABLEKS                       R9 R11 K17 ["current"]
       69 GETUPVAL                         R12 0
       70 GETTABLEKS                       R12 R12 K2 ["useState"]
       72 DUPTABLE                         R13 K21 [{["anchor"], ["height"] = 200}]
       73 SETTABLEKS                       R9 R13 K18 ["anchor"]
       75 CALL                             R12 1 2
       76 GETUPVAL                         R14 0
       77 GETTABLEKS                       R14 R14 K2 ["useState"]
       79 GETIMPORT                        R15 K24 [Vector2.zero]
       81 CALL                             R14 1 2
       82 GETUPVAL                         R16 4
       83 GETTABLEKS                       R18 R12 K18 ["anchor"]
       85 GETIMPORT                        R19 K10 [UDim2.fromOffset]
       87 GETTABLEKS                       R20 R14 K12 ["X"]
       89 GETTABLEKS                       R21 R14 K6 ["Y"]
       91 CALL                             R19 2 1
       92 ADD                              R17 R18 R19
       93 LOADN                            R18 360
       94 GETTABLEKS                       R19 R12 K19 ["height"]
       96 CALL                             R16 3 1
       97 GETUPVAL                         R17 0
       98 GETTABLEKS                       R17 R17 K16 ["useRef"]
      100 MOVE                             R18 R16
      101 CALL                             R17 1 1
      102 SETTABLEKS                       R16 R17 K17 ["current"]
      104 GETUPVAL                         R18 0
      105 GETTABLEKS                       R18 R18 K16 ["useRef"]
      107 GETTABLEKS                       R19 R12 K18 ["anchor"]
      109 CALL                             R18 1 1
      110 GETTABLEKS                       R19 R12 K18 ["anchor"]
      112 SETTABLEKS                       R19 R18 K17 ["current"]
      114 GETUPVAL                         R19 0
      115 GETTABLEKS                       R19 R19 K16 ["useRef"]
      117 LOADNIL                          R20
      118 CALL                             R19 1 1
      119 GETUPVAL                         R20 0
      120 GETTABLEKS                       R20 R20 K25 ["useEffect"]
      122 NEWCLOSURE                       R21 P0
      123 CAPTURE                          VAL R15
      124 NEWTABLE                         R22 0 1
      126 MOVE                             R23 R9
      127 SETLIST                          R22 R23 1 [1]
      129 CALL                             R20 2 0
      130 GETUPVAL                         R20 0
      131 GETTABLEKS                       R20 R20 K26 ["useCallback"]
      133 NEWCLOSURE                       R21 P1
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R19
      137 NEWTABLE                         R22 0 0
      139 CALL                             R20 2 1
      140 GETUPVAL                         R21 0
      141 GETTABLEKS                       R21 R21 K25 ["useEffect"]
      143 NEWCLOSURE                       R22 P2
      144 CAPTURE                          VAL R1
      145 CAPTURE                          UPVAL U5
      146 CAPTURE                          VAL R19
      147 CAPTURE                          VAL R15
      148 NEWTABLE                         R23 0 1
      150 MOVE                             R24 R1
      151 SETLIST                          R23 R24 1 [1]
      153 CALL                             R21 2 0
      154 GETUPVAL                         R21 0
      155 GETTABLEKS                       R21 R21 K25 ["useEffect"]
      157 NEWCLOSURE                       R22 P3
      158 CAPTURE                          UPVAL U6
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R11
      162 NEWTABLE                         R23 0 1
      164 MOVE                             R24 R9
      165 SETLIST                          R23 R24 1 [1]
      167 CALL                             R21 2 0
      168 GETUPVAL                         R21 0
      169 GETTABLEKS                       R21 R21 K25 ["useEffect"]
      171 NEWCLOSURE                       R22 P4
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R2
      174 CAPTURE                          UPVAL U6
      175 CAPTURE                          VAL R5
      176 NEWTABLE                         R23 0 3
      178 GETTABLEKS                       R24 R12 K19 ["height"]
      180 MOVE                             R25 R2
      181 MOVE                             R26 R4
      182 SETLIST                          R23 R24 3 [1]
      184 CALL                             R21 2 0
      185 GETUPVAL                         R21 0
      186 GETTABLEKS                       R21 R21 K25 ["useEffect"]
      188 NEWCLOSURE                       R22 P5
      189 CAPTURE                          UPVAL U5
      190 CAPTURE                          VAL R0
      191 NEWTABLE                         R23 0 1
      193 MOVE                             R24 R0
      194 SETLIST                          R23 R24 1 [1]
      196 CALL                             R21 2 0
      197 GETUPVAL                         R21 0
      198 GETTABLEKS                       R21 R21 K27 ["createElement"]
      200 LOADK                            R22 K28 ["Frame"]
      201 NEWTABLE                         R23 16 0
      203 SETTABLEKS                       R10 R23 K29 ["ref"]
      205 LOADB                            R24 1
      206 SETTABLEKS                       R24 R23 K30 ["Active"]
      208 SETTABLEKS                       R4 R23 K31 ["Visible"]
      210 LOADN                            R24 1
      211 SETTABLEKS                       R24 R23 K32 ["BackgroundTransparency"]
      213 GETIMPORT                        R24 K34 [Vector2.new]
      215 LOADN                            R25 0
      216 LOADN                            R26 0
      217 CALL                             R24 2 1
      218 SETTABLEKS                       R24 R23 K35 ["AnchorPoint"]
      220 SETTABLEKS                       R16 R23 K36 ["Position"]
      222 GETIMPORT                        R24 K10 [UDim2.fromOffset]
      224 LOADN                            R25 360
      225 LOADN                            R26 0
      226 CALL                             R24 2 1
      227 SETTABLEKS                       R24 R23 K37 ["Size"]
      229 GETIMPORT                        R24 K40 [Enum.AutomaticSize.Y]
      231 SETTABLEKS                       R24 R23 K39 ["AutomaticSize"]
      233 GETUPVAL                         R24 0
      234 GETTABLEKS                       R24 R24 K41 ["Change"]
      236 GETTABLEKS                       R24 R24 K42 ["AbsoluteSize"]
      238 NEWCLOSURE                       R25 P6
      239 CAPTURE                          VAL R13
      240 CAPTURE                          VAL R11
      241 CAPTURE                          VAL R3
      242 SETTABLE                         R25 R23 R24
      243 DUPTABLE                         R24 K45 [{"DragHandle", "Panel"}]
      244 JUMPIFNOT                        R1 ; [+35]
      245 GETUPVAL                         R25 0
      246 GETTABLEKS                       R25 R25 K27 ["createElement"]
      248 LOADK                            R26 K46 ["TextButton"]
      249 NEWTABLE                         R27 8 0
      251 LOADB                            R28 0
      252 SETTABLEKS                       R28 R27 K47 ["AutoButtonColor"]
      254 LOADN                            R28 1
      255 SETTABLEKS                       R28 R27 K32 ["BackgroundTransparency"]
      257 GETIMPORT                        R28 K49 [UDim2.fromScale]
      259 LOADN                            R29 1
      260 LOADN                            R30 1
      261 CALL                             R28 2 1
      262 SETTABLEKS                       R28 R27 K37 ["Size"]
      264 LOADK                            R28 K50 [""]
      265 SETTABLEKS                       R28 R27 K51 ["Text"]
      267 LOADN                            R28 0
      268 SETTABLEKS                       R28 R27 K52 ["ZIndex"]
      270 GETUPVAL                         R28 0
      271 GETTABLEKS                       R28 R28 K53 ["Event"]
      273 GETTABLEKS                       R28 R28 K54 ["MouseButton1Down"]
      275 NEWCLOSURE                       R29 P7
      276 CAPTURE                          VAL R20
      277 SETTABLE                         R29 R27 R28
      278 CALL                             R25 2 1
      279 JUMP                             ; [+1]
      280 LOADNIL                          R25
      281 SETTABLEKS                       R25 R24 K43 ["DragHandle"]
      283 GETUPVAL                         R25 0
      284 GETTABLEKS                       R25 R25 K27 ["createElement"]
      286 GETUPVAL                         R26 7
      287 NEWTABLE                         R27 0 0
      289 CALL                             R25 2 1
      290 SETTABLEKS                       R25 R24 K44 ["Panel"]
      292 CALL                             R21 3 -1
      293 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserInputService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RunService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["Gen3d"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Components"]
       32 GETTABLEKS                       R5 R5 K15 ["TextureGenPanel"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R2 K13 ["Src"]
       39 GETTABLEKS                       R6 R6 K16 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K17 ["PluginToggleContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K10 [require]
       46 GETTABLEKS                       R7 R2 K13 ["Src"]
       48 GETTABLEKS                       R7 R7 K18 ["Hooks"]
       50 GETTABLEKS                       R7 R7 K19 ["useSelectionScreenBounds"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K10 [require]
       55 GETTABLEKS                       R8 R2 K13 ["Src"]
       57 GETTABLEKS                       R8 R8 K18 ["Hooks"]
       59 GETTABLEKS                       R8 R8 K20 ["useViewportPosition"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K10 [require]
       64 GETTABLEKS                       R9 R2 K21 ["Bin"]
       66 GETTABLEKS                       R9 R9 K22 ["Common"]
       68 GETTABLEKS                       R9 R9 K23 ["defineLuaFlags"]
       70 CALL                             R8 1 1
       71 DUPCLOSURE                       R9 K24 [PROTO_18]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R4
       80 RETURN                           R9 1
