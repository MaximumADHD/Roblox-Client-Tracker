PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+2]
        4 DUPCLOSURE                       R0 K0 [PROTO_3]
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InputBegan"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["useState"]
        8 LOADB                            R2 0
        9 CALL                             R1 1 2
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["useState"]
       13 LOADB                            R4 0
       14 CALL                             R3 1 2
       15 GETUPVAL                         R5 2
       16 CALL                             R5 0 1
       17 GETTABLEKS                       R8 R5 K3 ["min"]
       19 GETTABLEKS                       R9 R5 K4 ["max"]
       21 ADD                              R7 R8 R9
       22 DIVK                             R6 R7 K2 [2]
       23 GETTABLEKS                       R8 R5 K3 ["min"]
       25 GETTABLEKS                       R8 R8 K5 ["Y"]
       27 GETTABLEKS                       R11 R5 K4 ["max"]
       29 GETTABLEKS                       R11 R11 K5 ["Y"]
       31 GETTABLEKS                       R12 R5 K3 ["min"]
       33 GETTABLEKS                       R12 R12 K5 ["Y"]
       35 SUB                              R10 R11 R12
       36 MULK                             R9 R10 K6 [0.9]
       37 ADD                              R7 R8 R9
       38 GETIMPORT                        R8 K9 [UDim2.fromOffset]
       40 GETTABLEKS                       R11 R6 K11 ["X"]
       42 SUBK                             R10 R11 K10 [180]
       43 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       44 GETIMPORT                        R9 K14 [math.floor]
       46 CALL                             R9 1 1
       47 FASTCALL1                        MATH_FLOOR R7 ; [+3]
       48 MOVE                             R11 R7
       49 GETIMPORT                        R10 K14 [math.floor]
       51 CALL                             R10 1 1
       52 CALL                             R8 2 1
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K15 ["useRef"]
       56 LOADNIL                          R10
       57 CALL                             R9 1 1
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K15 ["useRef"]
       61 MOVE                             R11 R8
       62 CALL                             R10 1 1
       63 SETTABLEKS                       R8 R10 K16 ["current"]
       65 GETUPVAL                         R11 0
       66 GETTABLEKS                       R11 R11 K1 ["useState"]
       68 DUPTABLE                         R12 K20 [{["anchor"], ["height"] = 200}]
       69 SETTABLEKS                       R8 R12 K17 ["anchor"]
       71 CALL                             R11 1 2
       72 GETUPVAL                         R13 3
       73 GETTABLEKS                       R14 R11 K17 ["anchor"]
       75 LOADN                            R15 360
       76 GETTABLEKS                       R16 R11 K18 ["height"]
       78 CALL                             R13 3 1
       79 GETUPVAL                         R14 0
       80 GETTABLEKS                       R14 R14 K21 ["useEffect"]
       82 NEWCLOSURE                       R15 P0
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R10
       87 NEWTABLE                         R16 0 1
       89 MOVE                             R17 R8
       90 SETLIST                          R16 R17 1 [1]
       92 CALL                             R14 2 0
       93 GETUPVAL                         R14 0
       94 GETTABLEKS                       R14 R14 K21 ["useEffect"]
       96 NEWCLOSURE                       R15 P1
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R1
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          VAL R4
      101 NEWTABLE                         R16 0 3
      103 GETTABLEKS                       R17 R11 K18 ["height"]
      105 MOVE                             R18 R1
      106 MOVE                             R19 R3
      107 SETLIST                          R16 R17 3 [1]
      109 CALL                             R14 2 0
      110 GETUPVAL                         R14 0
      111 GETTABLEKS                       R14 R14 K21 ["useEffect"]
      113 NEWCLOSURE                       R15 P2
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          VAL R0
      116 NEWTABLE                         R16 0 1
      118 MOVE                             R17 R0
      119 SETLIST                          R16 R17 1 [1]
      121 CALL                             R14 2 0
      122 GETUPVAL                         R14 0
      123 GETTABLEKS                       R14 R14 K22 ["createElement"]
      125 LOADK                            R15 K23 ["Frame"]
      126 NEWTABLE                         R16 16 0
      128 SETTABLEKS                       R9 R16 K24 ["ref"]
      130 LOADB                            R17 1
      131 SETTABLEKS                       R17 R16 K25 ["Active"]
      133 SETTABLEKS                       R3 R16 K26 ["Visible"]
      135 LOADN                            R17 1
      136 SETTABLEKS                       R17 R16 K27 ["BackgroundTransparency"]
      138 GETIMPORT                        R17 K30 [Vector2.new]
      140 LOADN                            R18 0
      141 LOADN                            R19 0
      142 CALL                             R17 2 1
      143 SETTABLEKS                       R17 R16 K31 ["AnchorPoint"]
      145 SETTABLEKS                       R13 R16 K32 ["Position"]
      147 GETIMPORT                        R17 K9 [UDim2.fromOffset]
      149 LOADN                            R18 360
      150 LOADN                            R19 0
      151 CALL                             R17 2 1
      152 SETTABLEKS                       R17 R16 K33 ["Size"]
      154 GETIMPORT                        R17 K36 [Enum.AutomaticSize.Y]
      156 SETTABLEKS                       R17 R16 K35 ["AutomaticSize"]
      158 GETUPVAL                         R17 0
      159 GETTABLEKS                       R17 R17 K37 ["Change"]
      161 GETTABLEKS                       R17 R17 K38 ["AbsoluteSize"]
      163 NEWCLOSURE                       R18 P3
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R2
      167 SETTABLE                         R18 R16 R17
      168 DUPTABLE                         R17 K40 [{"Panel"}]
      169 GETUPVAL                         R18 0
      170 GETTABLEKS                       R18 R18 K22 ["createElement"]
      172 GETUPVAL                         R19 6
      173 NEWTABLE                         R20 0 0
      175 CALL                             R18 2 1
      176 SETTABLEKS                       R18 R17 K39 ["Panel"]
      178 CALL                             R14 3 -1
      179 RETURN                           R14 -1

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
       62 DUPCLOSURE                       R8 K21 [PROTO_11]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R4
       70 RETURN                           R8 1
