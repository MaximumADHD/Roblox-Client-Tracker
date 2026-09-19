PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["X"]
        2 LOADN                            R4 0
        3 JUMPIFLE                         R3 R4 ; [+6]
        5 GETTABLEKS                       R3 R2 K1 ["Y"]
        7 LOADN                            R4 0
        8 JUMPIFNOTLE                      R3 R4 ; [+3]
       10 DUPTABLE                         R3 K4 [{["mode"] = "none"}]
       11 RETURN                           R3 1
       12 GETTABLEKS                       R4 R2 K0 ["X"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K0 ["X"]
       17 DIV                              R3 R4 R5
       18 GETTABLEKS                       R6 R0 K0 ["X"]
       20 GETTABLEKS                       R7 R1 K0 ["X"]
       22 SUB                              R5 R6 R7
       23 DIV                              R4 R5 R3
       24 GETTABLEKS                       R7 R0 K1 ["Y"]
       26 GETTABLEKS                       R8 R1 K1 ["Y"]
       28 SUB                              R6 R7 R8
       29 DIV                              R5 R6 R3
       30 MINUS                            R7 R4
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K0 ["X"]
       34 SUB                              R8 R4 R9
       35 LOADN                            R9 0
       36 FASTCALL                         MATH_MAX ; [+2]
       37 GETIMPORT                        R6 K7 [math.max]
       39 CALL                             R6 3 1
       40 MINUS                            R8 R5
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K1 ["Y"]
       44 SUB                              R9 R5 R10
       45 LOADN                            R10 0
       46 FASTCALL                         MATH_MAX ; [+2]
       47 GETIMPORT                        R7 K7 [math.max]
       49 CALL                             R7 3 1
       50 LOADB                            R8 0
       51 JUMPIFNOTEQKN                    R6 K8 [0] ; [+5]
       53 JUMPIFEQKN                       R7 K8 [0] ; [+2]
       55 LOADB                            R8 0 +1
       56 LOADB                            R8 1
       57 LOADNIL                          R9
       58 JUMPIFNOT                        R8 ; [+21]
       59 MOVE                             R11 R4
       60 GETUPVAL                         R13 0
       61 GETTABLEKS                       R13 R13 K0 ["X"]
       63 SUB                              R12 R13 R4
       64 MOVE                             R13 R5
       65 GETUPVAL                         R15 0
       66 GETTABLEKS                       R15 R15 K1 ["Y"]
       68 SUB                              R14 R15 R5
       69 FASTCALL                         MATH_MIN ; [+2]
       70 GETIMPORT                        R10 K10 [math.min]
       72 CALL                             R10 4 1
       73 LOADN                            R11 4
       74 JUMPIFNOTLT                      R11 R10 ; [+3]
       76 DUPTABLE                         R11 K12 [{["mode"] = "body"}]
       77 RETURN                           R11 1
       78 MINUS                            R9 R10
       79 JUMP                             ; [+13]
       80 MUL                              R12 R6 R6
       81 MUL                              R13 R7 R7
       82 ADD                              R11 R12 R13
       83 FASTCALL1                        MATH_SQRT R11 ; [+2]
       84 GETIMPORT                        R10 K14 [math.sqrt]
       86 CALL                             R10 1 1
       87 MOVE                             R9 R10
       88 LOADN                            R10 30
       89 JUMPIFNOTLT                      R10 R9 ; [+3]
       91 DUPTABLE                         R10 K4 [{["mode"] = "none"}]
       92 RETURN                           R10 1
       93 LOADN                            R12 0
       94 GETUPVAL                         R13 0
       95 GETTABLEKS                       R13 R13 K0 ["X"]
       97 FASTCALL3                        MATH_CLAMP R4 R12 R13
       99 MOVE                             R11 R4
      100 GETIMPORT                        R10 K16 [math.clamp]
      102 CALL                             R10 3 1
      103 LOADN                            R13 0
      104 GETUPVAL                         R14 0
      105 GETTABLEKS                       R14 R14 K1 ["Y"]
      107 FASTCALL3                        MATH_CLAMP R5 R13 R14
      109 MOVE                             R12 R5
      110 GETIMPORT                        R11 K16 [math.clamp]
      112 CALL                             R11 3 1
      113 LOADNIL                          R12
      114 JUMPIFNOT                        R8 ; [+70]
      115 GETUPVAL                         R16 0
      116 GETTABLEKS                       R16 R16 K0 ["X"]
      118 SUB                              R15 R16 R10
      119 FASTCALL2                        MATH_MIN R10 R15 ; [+4]
      121 MOVE                             R14 R10
      122 GETIMPORT                        R13 K10 [math.min]
      124 CALL                             R13 2 1
      125 GETUPVAL                         R17 0
      126 GETTABLEKS                       R17 R17 K1 ["Y"]
      128 SUB                              R16 R17 R11
      129 FASTCALL2                        MATH_MIN R11 R16 ; [+4]
      131 MOVE                             R15 R11
      132 GETIMPORT                        R14 K10 [math.min]
      134 CALL                             R14 2 1
      135 JUMPIFNOTLE                      R13 R14 ; [+25]
      137 GETUPVAL                         R14 0
      138 GETTABLEKS                       R14 R14 K0 ["X"]
      140 DIVK                             R13 R14 K17 [2]
      141 JUMPIFNOTLT                      R10 R13 ; [+9]
      143 LOADN                            R10 0
      144 GETIMPORT                        R13 K20 [Vector2.new]
      146 LOADN                            R14 -1
      147 LOADN                            R15 0
      148 CALL                             R13 2 1
      149 MOVE                             R12 R13
      150 JUMP                             ; [+49]
      151 GETUPVAL                         R13 0
      152 GETTABLEKS                       R10 R13 K0 ["X"]
      154 GETIMPORT                        R13 K20 [Vector2.new]
      156 LOADN                            R14 1
      157 LOADN                            R15 0
      158 CALL                             R13 2 1
      159 MOVE                             R12 R13
      160 JUMP                             ; [+39]
      161 GETUPVAL                         R14 0
      162 GETTABLEKS                       R14 R14 K1 ["Y"]
      164 DIVK                             R13 R14 K17 [2]
      165 JUMPIFNOTLT                      R11 R13 ; [+9]
      167 LOADN                            R11 0
      168 GETIMPORT                        R13 K20 [Vector2.new]
      170 LOADN                            R14 0
      171 LOADN                            R15 -1
      172 CALL                             R13 2 1
      173 MOVE                             R12 R13
      174 JUMP                             ; [+25]
      175 GETUPVAL                         R13 0
      176 GETTABLEKS                       R11 R13 K1 ["Y"]
      178 GETIMPORT                        R13 K20 [Vector2.new]
      180 LOADN                            R14 0
      181 LOADN                            R15 1
      182 CALL                             R13 2 1
      183 MOVE                             R12 R13
      184 JUMP                             ; [+15]
      185 GETIMPORT                        R13 K20 [Vector2.new]
      187 SUB                              R14 R4 R10
      188 SUB                              R15 R5 R11
      189 CALL                             R13 2 1
      190 GETTABLEKS                       R14 R13 K21 ["Magnitude"]
      192 LOADK                            R15 K22 [0.0001]
      193 JUMPIFNOTLT                      R15 R14 ; [+4]
      195 GETTABLEKS                       R12 R13 K23 ["Unit"]
      197 JUMP                             ; [+2]
      198 GETIMPORT                        R12 K25 [Vector2.zero]
      200 GETTABLEKS                       R15 R12 K1 ["Y"]
      202 GETTABLEKS                       R16 R12 K0 ["X"]
      204 FASTCALL2                        MATH_ATAN2 R15 R16 ; [+3]
      206 GETIMPORT                        R14 K27 [math.atan2]
      208 CALL                             R14 2 1
      209 FASTCALL1                        MATH_DEG R14 ; [+2]
      210 GETIMPORT                        R13 K29 [math.deg]
      212 CALL                             R13 1 1
      213 DUPTABLE                         R14 K32 [{["mode"] = "pin", ["pin"], ["angle"]}]
      214 GETIMPORT                        R16 K20 [Vector2.new]
      216 MOVE                             R17 R10
      217 MOVE                             R18 R11
      218 CALL                             R16 2 1
      219 MULK                             R17 R12 K33 [10]
      220 ADD                              R15 R16 R17
      221 SETTABLEKS                       R15 R14 K30 ["pin"]
      223 SETTABLEKS                       R13 R14 K31 ["angle"]
      225 RETURN                           R14 1

PROTO_1:
        0 GETTABLEKS                       R6 R0 K0 ["X"]
        2 GETTABLEKS                       R7 R1 K1 ["center"]
        4 GETTABLEKS                       R7 R7 K0 ["X"]
        6 SUB                              R5 R6 R7
        7 FASTCALL1                        MATH_ABS R5 ; [+2]
        8 GETIMPORT                        R4 K4 [math.abs]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R1 K5 ["halfSize"]
       13 GETTABLEKS                       R5 R5 K0 ["X"]
       15 SUB                              R3 R4 R5
       16 FASTCALL2K                       MATH_MAX R3 K6 ; [+4]
       18 LOADK                            R4 K6 [0]
       19 GETIMPORT                        R2 K8 [math.max]
       21 CALL                             R2 2 1
       22 GETTABLEKS                       R7 R0 K9 ["Y"]
       24 GETTABLEKS                       R8 R1 K1 ["center"]
       26 GETTABLEKS                       R8 R8 K9 ["Y"]
       28 SUB                              R6 R7 R8
       29 FASTCALL1                        MATH_ABS R6 ; [+2]
       30 GETIMPORT                        R5 K4 [math.abs]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R1 K5 ["halfSize"]
       35 GETTABLEKS                       R6 R6 K9 ["Y"]
       37 SUB                              R4 R5 R6
       38 FASTCALL2K                       MATH_MAX R4 K6 ; [+4]
       40 LOADK                            R5 K6 [0]
       41 GETIMPORT                        R3 K8 [math.max]
       43 CALL                             R3 2 1
       44 MUL                              R6 R2 R2
       45 MUL                              R7 R3 R3
       46 ADD                              R5 R6 R7
       47 FASTCALL1                        MATH_SQRT R5 ; [+2]
       48 GETIMPORT                        R4 K11 [math.sqrt]
       50 CALL                             R4 1 1
       51 RETURN                           R4 1

PROTO_2:
        0 GETTABLE                         R3 R0 R1
        1 JUMPIFNOTEQKNIL                  R3 ; [+3]
        3 LOADB                            R4 1
        4 RETURN                           R4 1
        5 GETTABLEKS                       R9 R2 K0 ["X"]
        7 GETTABLEKS                       R10 R3 K1 ["center"]
        9 GETTABLEKS                       R10 R10 K0 ["X"]
       11 SUB                              R8 R9 R10
       12 FASTCALL1                        MATH_ABS R8 ; [+2]
       13 GETIMPORT                        R7 K4 [math.abs]
       15 CALL                             R7 1 1
       16 GETTABLEKS                       R8 R3 K5 ["halfSize"]
       18 GETTABLEKS                       R8 R8 K0 ["X"]
       20 SUB                              R6 R7 R8
       21 FASTCALL2K                       MATH_MAX R6 K6 ; [+4]
       23 LOADK                            R7 K6 [0]
       24 GETIMPORT                        R5 K8 [math.max]
       26 CALL                             R5 2 1
       27 GETTABLEKS                       R10 R2 K9 ["Y"]
       29 GETTABLEKS                       R11 R3 K1 ["center"]
       31 GETTABLEKS                       R11 R11 K9 ["Y"]
       33 SUB                              R9 R10 R11
       34 FASTCALL1                        MATH_ABS R9 ; [+2]
       35 GETIMPORT                        R8 K4 [math.abs]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R9 R3 K5 ["halfSize"]
       40 GETTABLEKS                       R9 R9 K9 ["Y"]
       42 SUB                              R7 R8 R9
       43 FASTCALL2K                       MATH_MAX R7 K6 ; [+4]
       45 LOADK                            R8 K6 [0]
       46 GETIMPORT                        R6 K8 [math.max]
       48 CALL                             R6 2 1
       49 MUL                              R9 R5 R5
       50 MUL                              R10 R6 R6
       51 ADD                              R8 R9 R10
       52 FASTCALL1                        MATH_SQRT R8 ; [+2]
       53 GETIMPORT                        R7 K11 [math.sqrt]
       55 CALL                             R7 1 1
       56 MOVE                             R4 R7
       57 MOVE                             R5 R0
       58 LOADNIL                          R6
       59 LOADNIL                          R7
       60 FORGPREP                         R5
       61 JUMPIFEQ                         R8 R1 ; [+61]
       63 GETTABLEKS                       R15 R2 K0 ["X"]
       65 GETTABLEKS                       R16 R9 K1 ["center"]
       67 GETTABLEKS                       R16 R16 K0 ["X"]
       69 SUB                              R14 R15 R16
       70 FASTCALL1                        MATH_ABS R14 ; [+2]
       71 GETIMPORT                        R13 K4 [math.abs]
       73 CALL                             R13 1 1
       74 GETTABLEKS                       R14 R9 K5 ["halfSize"]
       76 GETTABLEKS                       R14 R14 K0 ["X"]
       78 SUB                              R12 R13 R14
       79 FASTCALL2K                       MATH_MAX R12 K6 ; [+4]
       81 LOADK                            R13 K6 [0]
       82 GETIMPORT                        R11 K8 [math.max]
       84 CALL                             R11 2 1
       85 GETTABLEKS                       R16 R2 K9 ["Y"]
       87 GETTABLEKS                       R17 R9 K1 ["center"]
       89 GETTABLEKS                       R17 R17 K9 ["Y"]
       91 SUB                              R15 R16 R17
       92 FASTCALL1                        MATH_ABS R15 ; [+2]
       93 GETIMPORT                        R14 K4 [math.abs]
       95 CALL                             R14 1 1
       96 GETTABLEKS                       R15 R9 K5 ["halfSize"]
       98 GETTABLEKS                       R15 R15 K9 ["Y"]
      100 SUB                              R13 R14 R15
      101 FASTCALL2K                       MATH_MAX R13 K6 ; [+4]
      103 LOADK                            R14 K6 [0]
      104 GETIMPORT                        R12 K8 [math.max]
      106 CALL                             R12 2 1
      107 MUL                              R15 R11 R11
      108 MUL                              R16 R12 R12
      109 ADD                              R14 R15 R16
      110 FASTCALL1                        MATH_SQRT R14 ; [+2]
      111 GETIMPORT                        R13 K11 [math.sqrt]
      113 CALL                             R13 1 1
      114 MOVE                             R10 R13
      115 JUMPIFLT                         R10 R4 ; [+5]
      117 JUMPIFNOTEQ                      R10 R4 ; [+5]
      119 JUMPIFNOTLT                      R8 R1 ; [+3]
      121 LOADB                            R11 0
      122 RETURN                           R11 1
      123 FORGLOOP                         R5 2 ; [-63]
      125 LOADB                            R5 1
      126 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePropsById"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R2 R2 K1 ["X"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["X"]
        7 DIV                              R1 R2 R3
        8 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
       10 DIVK                             R2 R3 K2 [2]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["Selected"]
       14 JUMPIFNOT                        R4 ; [+6]
       15 GETIMPORT                        R4 K6 [Vector2.one]
       17 LOADN                            R6 4
       18 MUL                              R5 R6 R1
       19 MUL                              R3 R4 R5
       20 JUMP                             ; [+2]
       21 GETIMPORT                        R3 K8 [Vector2.zero]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K9 ["report"]
       26 GETUPVAL                         R5 3
       27 DUPTABLE                         R6 K14 [{"center", "halfSize", "attachHalfSize", "zoom"}]
       28 GETTABLEKS                       R8 R0 K15 ["AbsolutePosition"]
       30 GETTABLEKS                       R10 R0 K0 ["AbsoluteSize"]
       32 DIVK                             R9 R10 K2 [2]
       33 ADD                              R7 R8 R9
       34 SETTABLEKS                       R7 R6 K10 ["center"]
       36 SETTABLEKS                       R2 R6 K11 ["halfSize"]
       38 ADD                              R7 R2 R3
       39 SETTABLEKS                       R7 R6 K12 ["attachHalfSize"]
       41 SETTABLEKS                       R1 R6 K13 ["zoom"]
       43 CALL                             R4 2 0
       44 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["report"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Position"]
        3 GETIMPORT                        R3 K3 [Vector2.new]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K5 ["Size"]
        8 GETTABLEKS                       R5 R5 K6 ["X"]
       10 DIVK                             R4 R5 K4 [2]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K5 ["Size"]
       14 GETTABLEKS                       R7 R7 K7 ["Y"]
       16 MINUS                            R6 R7
       17 DIVK                             R5 R6 K4 [2]
       18 CALL                             R3 2 1
       19 ADD                              R1 R2 R3
       20 GETTABLEKS                       R2 R0 K8 ["plotToView"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K11 [UDim2.fromScale]
       26 GETTABLEKS                       R4 R2 K6 ["X"]
       28 GETTABLEKS                       R5 R2 K7 ["Y"]
       30 CALL                             R3 2 -1
       31 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Stroke"]
        3 GETTABLEKS                       R2 R2 K1 ["Standard"]
        5 DIV                              R1 R2 R0
        6 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["map"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["viewToPlot"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["absToView"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K1 ["GraphPayload"]
        4 GETTABLEKS                       R2 R2 K2 ["name"]
        6 ORK                              R1 R2 K0 [""]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K3 ["enable"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K4 ["current"]
       15 JUMPIFNOT                        R0 ; [+6]
       16 GETUPVAL                         R0 3
       17 GETTABLEKS                       R0 R0 K4 ["current"]
       19 GETTABLEKS                       R0 R0 K5 ["focus"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getValue"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["disable"]
        7 CALL                             R1 0 0
        8 JUMPIFEQKNIL                     R0 ; [+12]
       10 LOADK                            R3 K2 ["%S"]
       11 NAMECALL                         R1 R0 K3 ["match"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+6]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K4 ["renameNode"]
       18 GETUPVAL                         R2 3
       19 MOVE                             R3 R0
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R2 R3 ; [+11]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["selectNodes"]
        9 NEWTABLE                         R3 1 0
       11 GETUPVAL                         R4 1
       12 LOADB                            R5 1
       13 SETTABLE                         R5 R3 R4
       14 LOADB                            R4 0
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["enabled"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 JUMPIF                           R2 ; [+23]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["current"]
       10 GETUPVAL                         R3 2
       11 GETIMPORT                        R4 K4 [os.clock]
       13 CALL                             R4 0 1
       14 SETTABLEKS                       R4 R3 K1 ["current"]
       16 GETIMPORT                        R4 K4 [os.clock]
       18 CALL                             R4 0 1
       19 SUB                              R3 R4 R2
       20 LOADK                            R4 K5 [0.5]
       21 JUMPIFNOTLE                      R3 R4 ; [+8]
       23 GETUPVAL                         R3 3
       24 LOADB                            R4 0
       25 SETTABLEKS                       R4 R3 K1 ["current"]
       27 GETUPVAL                         R3 4
       28 CALL                             R3 0 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R2 3
       31 LOADB                            R3 1
       32 SETTABLEKS                       R3 R2 K1 ["current"]
       34 GETUPVAL                         R2 5
       35 GETTABLEKS                       R2 R2 K6 ["OnDragStart"]
       37 JUMPIFNOT                        R2 ; [+7]
       38 GETUPVAL                         R2 5
       39 GETTABLEKS                       R2 R2 K6 ["OnDragStart"]
       41 GETUPVAL                         R3 6
       42 MOVE                             R4 R1
       43 CALL                             R3 1 -1
       44 CALL                             R2 -1 0
       45 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+11]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["OnDragMoved"]
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["OnDragMoved"]
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R1
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 0
       15 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K0 ["current"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["OnDragEnded"]
       12 JUMPIFNOT                        R2 ; [+7]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K1 ["OnDragEnded"]
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R1
       18 CALL                             R3 1 -1
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 JUMPIFNOT                        R3 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["current"]
        8 JUMPIFNOT                        R3 ; [+12]
        9 GETUPVAL                         R3 2
       10 LOADNIL                          R4
       11 CALL                             R3 1 0
       12 GETUPVAL                         R3 3
       13 LOADB                            R4 0
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R3 R3 K1 ["setPinActive"]
       18 LOADB                            R4 0
       19 CALL                             R3 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K2 ["observePending"]
       24 LOADB                            R4 0
       25 CALL                             R3 1 1
       26 JUMPIFEQKNIL                     R3 ; [+13]
       28 GETUPVAL                         R3 2
       29 LOADNIL                          R4
       30 CALL                             R3 1 0
       31 GETUPVAL                         R3 3
       32 LOADB                            R4 0
       33 CALL                             R3 1 0
       34 GETUPVAL                         R3 4
       35 GETTABLEKS                       R3 R3 K1 ["setPinActive"]
       37 LOADB                            R4 0
       38 CALL                             R3 1 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R3 5
       41 GETTABLEKS                       R3 R3 K0 ["current"]
       43 JUMPIF                           R3 ; [+1]
       44 RETURN                           R0 0
       45 GETUPVAL                         R4 6
       46 GETIMPORT                        R5 K5 [Vector2.new]
       48 MOVE                             R6 R1
       49 MOVE                             R7 R2
       50 CALL                             R5 2 1
       51 GETTABLEKS                       R6 R3 K6 ["AbsolutePosition"]
       53 GETTABLEKS                       R7 R3 K7 ["AbsoluteSize"]
       55 CALL                             R4 3 1
       56 GETTABLEKS                       R5 R4 K8 ["mode"]
       58 JUMPIFNOTEQKS                    R5 K9 ["pin"] ; [+29]
       60 GETUPVAL                         R5 7
       61 JUMPIFNOT                        R5 ; [+14]
       62 GETUPVAL                         R5 8
       63 GETUPVAL                         R6 9
       64 GETTABLEKS                       R6 R6 K10 ["observeGeometry"]
       66 LOADB                            R7 0
       67 CALL                             R6 1 1
       68 GETUPVAL                         R7 10
       69 GETIMPORT                        R8 K5 [Vector2.new]
       71 MOVE                             R9 R1
       72 MOVE                             R10 R2
       73 CALL                             R8 2 -1
       74 CALL                             R5 -1 1
       75 JUMPIF                           R5 ; [+12]
       76 GETUPVAL                         R5 2
       77 LOADNIL                          R6
       78 CALL                             R5 1 0
       79 GETUPVAL                         R5 3
       80 LOADB                            R6 0
       81 CALL                             R5 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R5 R5 K1 ["setPinActive"]
       85 LOADB                            R6 0
       86 CALL                             R5 1 0
       87 RETURN                           R0 0
       88 GETUPVAL                         R5 2
       89 GETTABLEKS                       R6 R4 K9 ["pin"]
       91 CALL                             R5 1 0
       92 GETUPVAL                         R5 11
       93 GETTABLEKS                       R7 R4 K12 ["angle"]
       95 ORK                              R6 R7 K11 [0]
       96 CALL                             R5 1 0
       97 GETUPVAL                         R5 3
       98 GETTABLEKS                       R7 R4 K8 ["mode"]
      100 JUMPIFEQKS                       R7 K13 ["body"] ; [+2]
      102 LOADB                            R6 0 +1
      103 LOADB                            R6 1
      104 CALL                             R5 1 0
      105 GETUPVAL                         R5 4
      106 GETTABLEKS                       R5 R5 K1 ["setPinActive"]
      108 GETTABLEKS                       R7 R4 K8 ["mode"]
      110 JUMPIFEQKS                       R7 K9 ["pin"] ; [+2]
      112 LOADB                            R6 0 +1
      113 LOADB                            R6 1
      114 CALL                             R5 1 0
      115 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K1 ["setPinActive"]
       13 LOADB                            R1 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["current"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["startConnect"]
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["updateConnect"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["current"]
        4 GETUPVAL                         R2 1
        5 LOADNIL                          R3
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["setPinActive"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K2 ["endConnect"]
       15 MOVE                             R3 R1
       16 GETUPVAL                         R4 3
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useContext"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["CanvasContext"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K2 ["useContext"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["ViewportRectContext"]
       19 GETTABLEKS                       R4 R4 K5 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K2 ["useContext"]
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K5 ["Context"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K2 ["useContext"]
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R6 R6 K5 ["Context"]
       35 CALL                             R5 1 1
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K2 ["useContext"]
       39 GETUPVAL                         R7 5
       40 GETTABLEKS                       R7 R7 K5 ["Context"]
       42 CALL                             R6 1 1
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K2 ["useContext"]
       46 GETUPVAL                         R8 2
       47 GETTABLEKS                       R8 R8 K6 ["GraphContext"]
       49 GETTABLEKS                       R8 R8 K5 ["Context"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R0 K7 ["GraphPayload"]
       54 GETTABLEKS                       R8 R8 K8 ["id"]
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R9 R9 K9 ["useMemo"]
       59 NEWCLOSURE                       R10 P0
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R8
       62 NEWTABLE                         R11 0 2
       64 GETTABLEKS                       R12 R7 K10 ["observeNodePropsById"]
       66 MOVE                             R13 R8
       67 SETLIST                          R11 R12 2 [1]
       69 CALL                             R9 2 1
       70 GETUPVAL                         R10 6
       71 GETTABLEKS                       R10 R10 K11 ["useSignalState"]
       73 MOVE                             R11 R9
       74 CALL                             R10 1 1
       75 LOADB                            R11 0
       76 JUMPIFEQKNIL                     R10 ; [+12]
       78 LOADB                            R11 1
       79 GETTABLEKS                       R12 R10 K12 ["isStart"]
       81 JUMPIFEQKB                       R12 TRUE ; [+7]
       83 GETTABLEKS                       R12 R10 K13 ["isAny"]
       85 JUMPIFEQKB                       R12 TRUE ; [+2]
       87 LOADB                            R11 0 +1
       88 LOADB                            R11 1
       89 LOADB                            R12 1
       90 JUMPIFEQKNIL                     R10 ; [+7]
       92 GETTABLEKS                       R13 R10 K14 ["canStartTransition"]
       94 JUMPIFNOTEQKB                    R13 FALSE ; [+2]
       96 LOADB                            R12 0 +1
       97 LOADB                            R12 1
       98 GETUPVAL                         R13 7
       99 GETTABLEKS                       R13 R13 K15 ["useToggleState"]
      101 LOADB                            R14 0
      102 CALL                             R13 1 1
      103 GETUPVAL                         R14 1
      104 GETTABLEKS                       R14 R14 K16 ["useBinding"]
      106 LOADK                            R15 K17 [""]
      107 CALL                             R14 1 2
      108 GETUPVAL                         R16 1
      109 GETTABLEKS                       R16 R16 K18 ["useRef"]
      111 LOADNIL                          R17
      112 CALL                             R16 1 1
      113 GETUPVAL                         R17 1
      114 GETTABLEKS                       R17 R17 K18 ["useRef"]
      116 LOADN                            R18 0
      117 CALL                             R17 1 1
      118 GETUPVAL                         R18 1
      119 GETTABLEKS                       R18 R18 K18 ["useRef"]
      121 LOADB                            R19 0
      122 CALL                             R18 1 1
      123 GETUPVAL                         R19 1
      124 GETTABLEKS                       R19 R19 K18 ["useRef"]
      126 LOADNIL                          R20
      127 CALL                             R19 1 1
      128 GETUPVAL                         R20 1
      129 GETTABLEKS                       R20 R20 K19 ["useCallback"]
      131 NEWCLOSURE                       R21 P1
      132 CAPTURE                          UPVAL U8
      133 CAPTURE                          VAL R0
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R8
      136 NEWTABLE                         R22 0 3
      138 GETTABLEKS                       R23 R5 K20 ["report"]
      140 MOVE                             R24 R8
      141 GETTABLEKS                       R25 R0 K21 ["Selected"]
      143 SETLIST                          R22 R23 3 [1]
      145 CALL                             R20 2 1
      146 GETUPVAL                         R21 1
      147 GETTABLEKS                       R21 R21 K22 ["useEffect"]
      149 NEWCLOSURE                       R22 P2
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R20
      152 NEWTABLE                         R23 0 1
      154 MOVE                             R24 R20
      155 SETLIST                          R23 R24 1 [1]
      157 CALL                             R21 2 0
      158 GETUPVAL                         R21 1
      159 GETTABLEKS                       R21 R21 K22 ["useEffect"]
      161 NEWCLOSURE                       R22 P3
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R8
      164 NEWTABLE                         R23 0 2
      166 GETTABLEKS                       R24 R5 K20 ["report"]
      168 MOVE                             R25 R8
      169 SETLIST                          R23 R24 2 [1]
      171 CALL                             R21 2 0
      172 GETUPVAL                         R21 2
      173 GETTABLEKS                       R21 R21 K23 ["useViewportBinding"]
      175 NEWCLOSURE                       R22 P4
      176 CAPTURE                          VAL R0
      177 NEWTABLE                         R23 0 2
      179 GETTABLEKS                       R24 R0 K24 ["Position"]
      181 GETTABLEKS                       R25 R0 K25 ["Size"]
      183 SETLIST                          R23 R24 2 [1]
      185 CALL                             R21 2 1
      186 GETUPVAL                         R22 6
      187 GETTABLEKS                       R22 R22 K26 ["useSignalBinding"]
      189 GETTABLEKS                       R23 R3 K27 ["observeZoomRatio"]
      191 CALL                             R22 1 1
      192 GETUPVAL                         R23 1
      193 GETTABLEKS                       R23 R23 K9 ["useMemo"]
      195 NEWCLOSURE                       R24 P5
      196 CAPTURE                          VAL R22
      197 CAPTURE                          VAL R1
      198 NEWTABLE                         R25 0 2
      200 MOVE                             R26 R22
      201 GETTABLEKS                       R27 R1 K28 ["Stroke"]
      203 GETTABLEKS                       R27 R27 K29 ["Standard"]
      205 SETLIST                          R25 R26 2 [1]
      207 CALL                             R23 2 1
      208 GETUPVAL                         R24 1
      209 GETTABLEKS                       R24 R24 K19 ["useCallback"]
      211 NEWCLOSURE                       R25 P6
      212 CAPTURE                          VAL R2
      213 NEWTABLE                         R26 0 1
      215 MOVE                             R27 R2
      216 SETLIST                          R26 R27 1 [1]
      218 CALL                             R24 2 1
      219 GETUPVAL                         R25 7
      220 GETTABLEKS                       R25 R25 K30 ["useEventCallback"]
      222 NEWCLOSURE                       R26 P7
      223 CAPTURE                          VAL R15
      224 CAPTURE                          VAL R0
      225 CAPTURE                          VAL R13
      226 CAPTURE                          VAL R16
      227 CALL                             R25 1 1
      228 GETUPVAL                         R26 7
      229 GETTABLEKS                       R26 R26 K30 ["useEventCallback"]
      231 NEWCLOSURE                       R27 P8
      232 CAPTURE                          VAL R14
      233 CAPTURE                          VAL R13
      234 CAPTURE                          VAL R7
      235 CAPTURE                          VAL R8
      236 CALL                             R26 1 1
      237 GETUPVAL                         R27 1
      238 GETTABLEKS                       R27 R27 K19 ["useCallback"]
      240 NEWCLOSURE                       R28 P9
      241 CAPTURE                          VAL R7
      242 CAPTURE                          VAL R8
      243 NEWTABLE                         R29 0 2
      245 GETTABLEKS                       R30 R7 K31 ["selectNodes"]
      247 MOVE                             R31 R8
      248 SETLIST                          R29 R30 2 [1]
      250 CALL                             R27 2 1
      251 GETUPVAL                         R28 1
      252 GETTABLEKS                       R28 R28 K19 ["useCallback"]
      254 NEWCLOSURE                       R29 P10
      255 CAPTURE                          VAL R13
      256 CAPTURE                          VAL R11
      257 CAPTURE                          VAL R17
      258 CAPTURE                          VAL R18
      259 CAPTURE                          VAL R25
      260 CAPTURE                          VAL R0
      261 CAPTURE                          VAL R24
      262 NEWTABLE                         R30 0 5
      264 GETTABLEKS                       R31 R0 K32 ["OnDragStart"]
      266 MOVE                             R32 R24
      267 MOVE                             R33 R11
      268 GETTABLEKS                       R34 R13 K33 ["enabled"]
      270 MOVE                             R35 R25
      271 SETLIST                          R30 R31 5 [1]
      273 CALL                             R28 2 1
      274 GETUPVAL                         R29 1
      275 GETTABLEKS                       R29 R29 K19 ["useCallback"]
      277 NEWCLOSURE                       R30 P11
      278 CAPTURE                          VAL R18
      279 CAPTURE                          VAL R0
      280 CAPTURE                          VAL R24
      281 NEWTABLE                         R31 0 2
      283 GETTABLEKS                       R32 R0 K34 ["OnDragMoved"]
      285 MOVE                             R33 R24
      286 SETLIST                          R31 R32 2 [1]
      288 CALL                             R29 2 1
      289 GETUPVAL                         R30 1
      290 GETTABLEKS                       R30 R30 K19 ["useCallback"]
      292 NEWCLOSURE                       R31 P12
      293 CAPTURE                          VAL R18
      294 CAPTURE                          VAL R0
      295 CAPTURE                          VAL R24
      296 NEWTABLE                         R32 0 2
      298 GETTABLEKS                       R33 R0 K35 ["OnDragEnded"]
      300 MOVE                             R34 R24
      301 SETLIST                          R32 R33 2 [1]
      303 CALL                             R30 2 1
      304 GETUPVAL                         R31 1
      305 GETTABLEKS                       R31 R31 K36 ["useState"]
      307 LOADNIL                          R32
      308 CALL                             R31 1 2
      309 GETUPVAL                         R33 1
      310 GETTABLEKS                       R33 R33 K36 ["useState"]
      312 LOADN                            R34 0
      313 CALL                             R33 1 2
      314 GETUPVAL                         R35 1
      315 GETTABLEKS                       R35 R35 K36 ["useState"]
      317 LOADB                            R36 0
      318 CALL                             R35 1 2
      319 GETUPVAL                         R37 1
      320 GETTABLEKS                       R37 R37 K18 ["useRef"]
      322 LOADB                            R38 0
      323 CALL                             R37 1 1
      324 GETUPVAL                         R38 1
      325 GETTABLEKS                       R38 R38 K2 ["useContext"]
      327 GETUPVAL                         R39 2
      328 GETTABLEKS                       R39 R39 K37 ["NodeSelectionBoxDragContext"]
      330 GETTABLEKS                       R39 R39 K5 ["Context"]
      332 CALL                             R38 1 1
      333 GETUPVAL                         R39 1
      334 GETTABLEKS                       R39 R39 K18 ["useRef"]
      336 LOADB                            R40 0
      337 CALL                             R39 1 1
      338 GETTABLEKS                       R41 R38 K38 ["selectionStart"]
      340 JUMPIFNOTEQKNIL                  R41 ; [+2]
      342 LOADB                            R40 0 +1
      343 LOADB                            R40 1
      344 SETTABLEKS                       R40 R39 K39 ["current"]
      346 GETUPVAL                         R40 1
      347 GETTABLEKS                       R40 R40 K19 ["useCallback"]
      349 NEWCLOSURE                       R41 P13
      350 CAPTURE                          VAL R37
      351 CAPTURE                          VAL R39
      352 CAPTURE                          VAL R32
      353 CAPTURE                          VAL R36
      354 CAPTURE                          VAL R4
      355 CAPTURE                          VAL R19
      356 CAPTURE                          UPVAL U9
      357 CAPTURE                          VAL R12
      358 CAPTURE                          UPVAL U10
      359 CAPTURE                          VAL R5
      360 CAPTURE                          VAL R8
      361 CAPTURE                          VAL R34
      362 NEWTABLE                         R42 0 5
      364 GETTABLEKS                       R43 R4 K40 ["observePending"]
      366 GETTABLEKS                       R44 R4 K41 ["setPinActive"]
      368 MOVE                             R45 R12
      369 GETTABLEKS                       R46 R5 K42 ["observeGeometry"]
      371 MOVE                             R47 R8
      372 SETLIST                          R42 R43 5 [1]
      374 CALL                             R40 2 1
      375 GETUPVAL                         R41 1
      376 GETTABLEKS                       R41 R41 K19 ["useCallback"]
      378 NEWCLOSURE                       R42 P14
      379 CAPTURE                          VAL R37
      380 CAPTURE                          VAL R32
      381 CAPTURE                          VAL R36
      382 CAPTURE                          VAL R4
      383 NEWTABLE                         R43 0 1
      385 GETTABLEKS                       R44 R4 K41 ["setPinActive"]
      387 SETLIST                          R43 R44 1 [1]
      389 CALL                             R41 2 1
      390 GETUPVAL                         R42 1
      391 GETTABLEKS                       R42 R42 K19 ["useCallback"]
      393 NEWCLOSURE                       R43 P15
      394 CAPTURE                          VAL R37
      395 CAPTURE                          VAL R4
      396 CAPTURE                          VAL R8
      397 NEWTABLE                         R44 0 2
      399 GETTABLEKS                       R45 R4 K43 ["startConnect"]
      401 MOVE                             R46 R8
      402 SETLIST                          R44 R45 2 [1]
      404 CALL                             R42 2 1
      405 GETUPVAL                         R43 1
      406 GETTABLEKS                       R43 R43 K19 ["useCallback"]
      408 NEWCLOSURE                       R44 P16
      409 CAPTURE                          VAL R4
      410 NEWTABLE                         R45 0 1
      412 GETTABLEKS                       R46 R4 K44 ["updateConnect"]
      414 SETLIST                          R45 R46 1 [1]
      416 CALL                             R43 2 1
      417 GETUPVAL                         R44 1
      418 GETTABLEKS                       R44 R44 K19 ["useCallback"]
      420 NEWCLOSURE                       R45 P17
      421 CAPTURE                          VAL R37
      422 CAPTURE                          VAL R32
      423 CAPTURE                          VAL R4
      424 CAPTURE                          VAL R24
      425 NEWTABLE                         R46 0 3
      427 GETTABLEKS                       R47 R4 K45 ["endConnect"]
      429 GETTABLEKS                       R48 R4 K41 ["setPinActive"]
      431 MOVE                             R49 R24
      432 SETLIST                          R46 R47 3 [1]
      434 CALL                             R44 2 1
      435 GETTABLEKS                       R47 R6 K46 ["activeStateIds"]
      437 GETTABLE                         R46 R47 R8
      438 JUMPIFEQKB                       R46 TRUE ; [+2]
      440 LOADB                            R45 0 +1
      441 LOADB                            R45 1
      442 MOVE                             R46 R45
      443 JUMPIFNOT                        R46 ; [+6]
      444 GETTABLEKS                       R47 R6 K47 ["activeStyle"]
      446 JUMPIFEQKS                       R47 K48 ["invertFill"] ; [+2]
      448 LOADB                            R46 0 +1
      449 LOADB                            R46 1
      450 MOVE                             R47 R45
      451 JUMPIFNOT                        R47 ; [+6]
      452 GETTABLEKS                       R48 R6 K47 ["activeStyle"]
      454 JUMPIFEQKS                       R48 K49 ["outline"] ; [+2]
      456 LOADB                            R47 0 +1
      457 LOADB                            R47 1
      458 JUMPIFNOT                        R45 ; [+46]
      459 GETTABLEKS                       R49 R6 K47 ["activeStyle"]
      461 JUMPIFNOTEQKS                    R49 K50 ["shift100"] ; [+8]
      463 GETTABLEKS                       R48 R1 K51 ["Color"]
      465 GETTABLEKS                       R48 R48 K52 ["Shift"]
      467 GETTABLEKS                       R48 R48 K53 ["Shift_100"]
      469 JUMP                             ; [+36]
      470 GETTABLEKS                       R49 R6 K47 ["activeStyle"]
      472 JUMPIFNOTEQKS                    R49 K54 ["shift200"] ; [+8]
      474 GETTABLEKS                       R48 R1 K51 ["Color"]
      476 GETTABLEKS                       R48 R48 K52 ["Shift"]
      478 GETTABLEKS                       R48 R48 K55 ["Shift_200"]
      480 JUMP                             ; [+25]
      481 GETTABLEKS                       R49 R6 K47 ["activeStyle"]
      483 JUMPIFNOTEQKS                    R49 K56 ["shift300"] ; [+8]
      485 GETTABLEKS                       R48 R1 K51 ["Color"]
      487 GETTABLEKS                       R48 R48 K52 ["Shift"]
      489 GETTABLEKS                       R48 R48 K57 ["Shift_300"]
      491 JUMP                             ; [+14]
      492 GETTABLEKS                       R49 R6 K47 ["activeStyle"]
      494 JUMPIFNOTEQKS                    R49 K58 ["shift400"] ; [+8]
      496 GETTABLEKS                       R48 R1 K51 ["Color"]
      498 GETTABLEKS                       R48 R48 K52 ["Shift"]
      500 GETTABLEKS                       R48 R48 K59 ["Shift_400"]
      502 JUMP                             ; [+3]
      503 LOADNIL                          R48
      504 JUMP                             ; [+1]
      505 LOADNIL                          R48
      506 MOVE                             R49 R48
      507 JUMPIF                           R49 ; [+9]
      508 JUMPIFNOT                        R35 ; [+7]
      509 GETTABLEKS                       R49 R1 K51 ["Color"]
      511 GETTABLEKS                       R49 R49 K52 ["Shift"]
      513 GETTABLEKS                       R49 R49 K53 ["Shift_100"]
      515 JUMP                             ; [+1]
      516 LOADNIL                          R49
      517 GETTABLEKS                       R50 R1 K51 ["Color"]
      519 GETTABLEKS                       R50 R50 K60 ["Surface"]
      521 GETTABLEKS                       R50 R50 K61 ["Surface_200"]
      523 JUMPIFNOT                        R46 ; [+9]
      524 GETTABLEKS                       R51 R1 K51 ["Color"]
      526 GETTABLEKS                       R51 R51 K62 ["Content"]
      528 GETTABLEKS                       R51 R51 K63 ["Emphasis"]
      530 GETTABLEKS                       R51 R51 K64 ["Color3"]
      532 JUMP                             ; [+2]
      533 GETTABLEKS                       R51 R50 K64 ["Color3"]
      535 JUMPIFNOT                        R46 ; [+2]
      536 LOADN                            R52 0
      537 JUMP                             ; [+2]
      538 GETTABLEKS                       R52 R50 K65 ["Transparency"]
      540 JUMPIFNOT                        R46 ; [+9]
      541 GETTABLEKS                       R53 R1 K51 ["Color"]
      543 GETTABLEKS                       R53 R53 K60 ["Surface"]
      545 GETTABLEKS                       R53 R53 K61 ["Surface_200"]
      547 GETTABLEKS                       R53 R53 K64 ["Color3"]
      549 JUMP                             ; [+8]
      550 GETTABLEKS                       R53 R1 K51 ["Color"]
      552 GETTABLEKS                       R53 R53 K62 ["Content"]
      554 GETTABLEKS                       R53 R53 K63 ["Emphasis"]
      556 GETTABLEKS                       R53 R53 K64 ["Color3"]
      558 JUMPIFNOT                        R47 ; [+9]
      559 GETTABLEKS                       R54 R1 K51 ["Color"]
      561 GETTABLEKS                       R54 R54 K66 ["Extended"]
      563 GETTABLEKS                       R54 R54 K67 ["White"]
      565 GETTABLEKS                       R54 R54 K68 ["White_100"]
      567 JUMP                             ; [+6]
      568 GETTABLEKS                       R54 R1 K51 ["Color"]
      570 GETTABLEKS                       R54 R54 K28 ["Stroke"]
      572 GETTABLEKS                       R54 R54 K69 ["Default"]
      574 GETTABLEKS                       R56 R6 K70 ["selectionStyle"]
      576 JUMPIFNOTEQKS                    R56 K71 ["white"] ; [+10]
      578 GETTABLEKS                       R55 R1 K51 ["Color"]
      580 GETTABLEKS                       R55 R55 K66 ["Extended"]
      582 GETTABLEKS                       R55 R55 K67 ["White"]
      584 GETTABLEKS                       R55 R55 K68 ["White_100"]
      586 JUMP                             ; [+6]
      587 GETTABLEKS                       R55 R1 K51 ["Color"]
      589 GETTABLEKS                       R55 R55 K72 ["System"]
      591 GETTABLEKS                       R55 R55 K63 ["Emphasis"]
      593 GETUPVAL                         R56 6
      594 GETTABLEKS                       R56 R56 K11 ["useSignalState"]
      596 GETTABLEKS                       R57 R4 K40 ["observePending"]
      598 CALL                             R56 1 1
      599 LOADB                            R57 0
      600 JUMPIFEQKNIL                     R56 ; [+13]
      602 LOADB                            R57 0
      603 GETTABLEKS                       R58 R56 K73 ["fromStateId"]
      605 JUMPIFEQ                         R58 R8 ; [+8]
      607 GETTABLEKS                       R58 R4 K74 ["isValidTarget"]
      609 GETTABLEKS                       R59 R56 K73 ["fromStateId"]
      611 MOVE                             R60 R8
      612 CALL                             R58 2 1
      613 NOT                              R57 R58
      614 JUMPIFNOT                        R57 ; [+2]
      615 LOADK                            R58 K75 [0.6]
      616 JUMP                             ; [+1]
      617 LOADN                            R58 0
      618 LOADB                            R59 0
      619 JUMPIFEQKNIL                     R31 ; [+10]
      621 LOADB                            R59 0
      622 JUMPIFNOTEQKNIL                  R56 ; [+7]
      624 GETTABLEKS                       R60 R38 K38 ["selectionStart"]
      626 JUMPIFEQKNIL                     R60 ; [+2]
      628 LOADB                            R59 0 +1
      629 LOADB                            R59 1
      630 GETUPVAL                         R60 1
      631 GETTABLEKS                       R60 R60 K76 ["createElement"]
      633 LOADK                            R61 K77 ["Frame"]
      634 NEWTABLE                         R62 8 0
      636 SETTABLEKS                       R19 R62 K78 ["ref"]
      638 GETIMPORT                        R63 K81 [Vector2.new]
      640 LOADK                            R64 K82 [0.5]
      641 LOADK                            R65 K82 [0.5]
      642 CALL                             R63 2 1
      643 SETTABLEKS                       R63 R62 K83 ["AnchorPoint"]
      645 SETTABLEKS                       R21 R62 K24 ["Position"]
      647 GETIMPORT                        R63 K86 [UDim2.fromOffset]
      649 GETUPVAL                         R64 8
      650 GETTABLEKS                       R64 R64 K87 ["X"]
      652 GETUPVAL                         R65 8
      653 GETTABLEKS                       R65 R65 K88 ["Y"]
      655 CALL                             R63 2 1
      656 SETTABLEKS                       R63 R62 K25 ["Size"]
      658 LOADN                            R63 1
      659 SETTABLEKS                       R63 R62 K89 ["BackgroundTransparency"]
      661 GETTABLEKS                       R63 R0 K90 ["ZIndex"]
      663 SETTABLEKS                       R63 R62 K90 ["ZIndex"]
      665 GETUPVAL                         R63 1
      666 GETTABLEKS                       R63 R63 K91 ["Change"]
      668 GETTABLEKS                       R63 R63 K92 ["AbsolutePosition"]
      670 SETTABLE                         R20 R62 R63
      671 GETUPVAL                         R63 1
      672 GETTABLEKS                       R63 R63 K91 ["Change"]
      674 GETTABLEKS                       R63 R63 K93 ["AbsoluteSize"]
      676 SETTABLE                         R20 R62 R63
      677 DUPTABLE                         R63 K100 [{"Scale", "Chevron", "SelectionOutline", "Box", "Detection", "ConnectSurface"}]
      678 GETUPVAL                         R64 1
      679 GETTABLEKS                       R64 R64 K76 ["createElement"]
      681 LOADK                            R65 K101 ["UIScale"]
      682 DUPTABLE                         R66 K102 [{"Scale"}]
      683 SETTABLEKS                       R22 R66 K94 ["Scale"]
      685 CALL                             R64 2 1
      686 SETTABLEKS                       R64 R63 K94 ["Scale"]
      688 JUMPIFNOT                        R59 ; [+54]
      689 GETUPVAL                         R64 1
      690 GETTABLEKS                       R64 R64 K76 ["createElement"]
      692 LOADK                            R65 K77 ["Frame"]
      693 DUPTABLE                         R66 K105 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["Rotation"], ["ZIndex"] = 1}]
      694 GETIMPORT                        R67 K81 [Vector2.new]
      696 LOADK                            R68 K82 [0.5]
      697 LOADK                            R69 K82 [0.5]
      698 CALL                             R67 2 1
      699 SETTABLEKS                       R67 R66 K83 ["AnchorPoint"]
      701 GETIMPORT                        R67 K86 [UDim2.fromOffset]
      703 GETTABLEKS                       R68 R31 K87 ["X"]
      705 GETTABLEKS                       R69 R31 K88 ["Y"]
      707 CALL                             R67 2 1
      708 SETTABLEKS                       R67 R66 K24 ["Position"]
      710 GETIMPORT                        R67 K86 [UDim2.fromOffset]
      712 GETUPVAL                         R68 11
      713 GETTABLEKS                       R68 R68 K106 ["SIZE"]
      715 GETUPVAL                         R69 11
      716 GETTABLEKS                       R69 R69 K106 ["SIZE"]
      718 CALL                             R67 2 1
      719 SETTABLEKS                       R67 R66 K25 ["Size"]
      721 SETTABLEKS                       R33 R66 K104 ["Rotation"]
      723 GETUPVAL                         R67 11
      724 GETTABLEKS                       R67 R67 K107 ["children"]
      726 GETUPVAL                         R68 11
      727 GETTABLEKS                       R68 R68 K108 ["SCALE"]
      729 GETTABLEKS                       R69 R1 K51 ["Color"]
      731 GETTABLEKS                       R69 R69 K66 ["Extended"]
      733 GETTABLEKS                       R69 R69 K109 ["Gray"]
      735 GETTABLEKS                       R69 R69 K110 ["Gray_600"]
      737 GETTABLEKS                       R69 R69 K64 ["Color3"]
      739 LOADN                            R70 0
      740 CALL                             R67 3 -1
      741 CALL                             R64 -1 1
      742 JUMP                             ; [+1]
      743 LOADNIL                          R64
      744 SETTABLEKS                       R64 R63 K95 ["Chevron"]
      746 GETTABLEKS                       R65 R0 K21 ["Selected"]
      748 JUMPIFNOT                        R65 ; [+67]
      749 GETUPVAL                         R64 1
      750 GETTABLEKS                       R64 R64 K76 ["createElement"]
      752 LOADK                            R65 K77 ["Frame"]
      753 DUPTABLE                         R66 K112 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 2}]
      754 GETIMPORT                        R67 K81 [Vector2.new]
      756 LOADK                            R68 K82 [0.5]
      757 LOADK                            R69 K82 [0.5]
      758 CALL                             R67 2 1
      759 SETTABLEKS                       R67 R66 K83 ["AnchorPoint"]
      761 GETIMPORT                        R67 K114 [UDim2.fromScale]
      763 LOADK                            R68 K82 [0.5]
      764 LOADK                            R69 K82 [0.5]
      765 CALL                             R67 2 1
      766 SETTABLEKS                       R67 R66 K24 ["Position"]
      768 GETIMPORT                        R67 K115 [UDim2.new]
      770 LOADN                            R68 1
      771 LOADN                            R69 8
      772 LOADN                            R70 1
      773 LOADN                            R71 8
      774 CALL                             R67 4 1
      775 SETTABLEKS                       R67 R66 K25 ["Size"]
      777 DUPTABLE                         R67 K117 [{"Corner", "Stroke"}]
      778 GETUPVAL                         R68 1
      779 GETTABLEKS                       R68 R68 K76 ["createElement"]
      781 LOADK                            R69 K118 ["UICorner"]
      782 DUPTABLE                         R70 K120 [{"CornerRadius"}]
      783 GETIMPORT                        R71 K122 [UDim.new]
      785 LOADN                            R72 0
      786 GETTABLEKS                       R73 R1 K123 ["Radius"]
      788 GETTABLEKS                       R73 R73 K124 ["Medium"]
      790 CALL                             R71 2 1
      791 SETTABLEKS                       R71 R70 K119 ["CornerRadius"]
      793 CALL                             R68 2 1
      794 SETTABLEKS                       R68 R67 K116 ["Corner"]
      796 GETUPVAL                         R68 1
      797 GETTABLEKS                       R68 R68 K76 ["createElement"]
      799 LOADK                            R69 K125 ["UIStroke"]
      800 DUPTABLE                         R70 K127 [{"Color", "Thickness", "Transparency"}]
      801 GETTABLEKS                       R71 R55 K64 ["Color3"]
      803 SETTABLEKS                       R71 R70 K51 ["Color"]
      805 SETTABLEKS                       R23 R70 K126 ["Thickness"]
      807 GETTABLEKS                       R71 R55 K65 ["Transparency"]
      809 SETTABLEKS                       R71 R70 K65 ["Transparency"]
      811 CALL                             R68 2 1
      812 SETTABLEKS                       R68 R67 K28 ["Stroke"]
      814 CALL                             R64 3 1
      815 JUMP                             ; [+1]
      816 LOADNIL                          R64
      817 SETTABLEKS                       R64 R63 K96 ["SelectionOutline"]
      819 GETUPVAL                         R64 1
      820 GETTABLEKS                       R64 R64 K76 ["createElement"]
      822 LOADK                            R65 K77 ["Frame"]
      823 NEWTABLE                         R66 8 0
      825 GETIMPORT                        R67 K114 [UDim2.fromScale]
      827 LOADN                            R68 1
      828 LOADN                            R69 1
      829 CALL                             R67 2 1
      830 SETTABLEKS                       R67 R66 K25 ["Size"]
      832 SETTABLEKS                       R51 R66 K128 ["BackgroundColor3"]
      834 ADD                              R67 R52 R58
      835 SETTABLEKS                       R67 R66 K89 ["BackgroundTransparency"]
      837 LOADN                            R67 0
      838 SETTABLEKS                       R67 R66 K129 ["BorderSizePixel"]
      840 LOADN                            R67 2
      841 SETTABLEKS                       R67 R66 K90 ["ZIndex"]
      843 GETUPVAL                         R67 1
      844 GETTABLEKS                       R67 R67 K130 ["Event"]
      846 GETTABLEKS                       R67 R67 K131 ["InputBegan"]
      848 SETTABLE                         R27 R66 R67
      849 DUPTABLE                         R67 K136 [{"Corner", "ShiftOverlay", "Stroke", "Label", "RenameInput", "MoveDrag"}]
      850 GETUPVAL                         R68 1
      851 GETTABLEKS                       R68 R68 K76 ["createElement"]
      853 LOADK                            R69 K118 ["UICorner"]
      854 DUPTABLE                         R70 K120 [{"CornerRadius"}]
      855 GETIMPORT                        R71 K122 [UDim.new]
      857 LOADN                            R72 0
      858 GETTABLEKS                       R73 R1 K123 ["Radius"]
      860 GETTABLEKS                       R73 R73 K137 ["Small"]
      862 CALL                             R71 2 1
      863 SETTABLEKS                       R71 R70 K119 ["CornerRadius"]
      865 CALL                             R68 2 1
      866 SETTABLEKS                       R68 R67 K116 ["Corner"]
      868 JUMPIFNOT                        R49 ; [+41]
      869 GETUPVAL                         R68 1
      870 GETTABLEKS                       R68 R68 K76 ["createElement"]
      872 LOADK                            R69 K77 ["Frame"]
      873 DUPTABLE                         R70 K139 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["ZIndex"] = 0}]
      874 GETIMPORT                        R71 K114 [UDim2.fromScale]
      876 LOADN                            R72 1
      877 LOADN                            R73 1
      878 CALL                             R71 2 1
      879 SETTABLEKS                       R71 R70 K25 ["Size"]
      881 GETTABLEKS                       R71 R49 K64 ["Color3"]
      883 SETTABLEKS                       R71 R70 K128 ["BackgroundColor3"]
      885 GETTABLEKS                       R71 R49 K65 ["Transparency"]
      887 SETTABLEKS                       R71 R70 K89 ["BackgroundTransparency"]
      889 DUPTABLE                         R71 K140 [{"Corner"}]
      890 GETUPVAL                         R72 1
      891 GETTABLEKS                       R72 R72 K76 ["createElement"]
      893 LOADK                            R73 K118 ["UICorner"]
      894 DUPTABLE                         R74 K120 [{"CornerRadius"}]
      895 GETIMPORT                        R75 K122 [UDim.new]
      897 LOADN                            R76 0
      898 GETTABLEKS                       R77 R1 K123 ["Radius"]
      900 GETTABLEKS                       R77 R77 K137 ["Small"]
      902 CALL                             R75 2 1
      903 SETTABLEKS                       R75 R74 K119 ["CornerRadius"]
      905 CALL                             R72 2 1
      906 SETTABLEKS                       R72 R71 K116 ["Corner"]
      908 CALL                             R68 3 1
      909 JUMP                             ; [+1]
      910 LOADNIL                          R68
      911 SETTABLEKS                       R68 R67 K132 ["ShiftOverlay"]
      913 GETUPVAL                         R68 1
      914 GETTABLEKS                       R68 R68 K76 ["createElement"]
      916 LOADK                            R69 K125 ["UIStroke"]
      917 DUPTABLE                         R70 K127 [{"Color", "Thickness", "Transparency"}]
      918 GETTABLEKS                       R71 R54 K64 ["Color3"]
      920 SETTABLEKS                       R71 R70 K51 ["Color"]
      922 SETTABLEKS                       R23 R70 K126 ["Thickness"]
      924 JUMPIFNOT                        R47 ; [+2]
      925 LOADN                            R71 0
      926 JUMP                             ; [+8]
      927 JUMPIFNOT                        R57 ; [+2]
      928 LOADN                            R71 1
      929 JUMP                             ; [+5]
      930 GETTABLEKS                       R72 R54 K65 ["Transparency"]
      932 GETTABLEKS                       R73 R54 K65 ["Transparency"]
      934 MUL                              R71 R72 R73
      935 SETTABLEKS                       R71 R70 K65 ["Transparency"]
      937 CALL                             R68 2 1
      938 SETTABLEKS                       R68 R67 K28 ["Stroke"]
      940 GETUPVAL                         R68 1
      941 GETTABLEKS                       R68 R68 K76 ["createElement"]
      943 LOADK                            R69 K141 ["TextLabel"]
      944 DUPTABLE                         R70 K150 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextColor3"], ["TextTransparency"], ["TextSize"] = 14, ["Font"], ["TextTruncate"], ["Visible"]}]
      945 GETIMPORT                        R71 K114 [UDim2.fromScale]
      947 LOADN                            R72 1
      948 LOADN                            R73 1
      949 CALL                             R71 2 1
      950 SETTABLEKS                       R71 R70 K25 ["Size"]
      952 GETTABLEKS                       R72 R0 K7 ["GraphPayload"]
      954 GETTABLEKS                       R72 R72 K151 ["name"]
      956 ORK                              R71 R72 K17 [""]
      957 SETTABLEKS                       R71 R70 K142 ["Text"]
      959 SETTABLEKS                       R53 R70 K143 ["TextColor3"]
      961 SETTABLEKS                       R58 R70 K144 ["TextTransparency"]
      963 GETIMPORT                        R71 K154 [Enum.Font.GothamMedium]
      965 SETTABLEKS                       R71 R70 K147 ["Font"]
      967 GETIMPORT                        R71 K156 [Enum.TextTruncate.AtEnd]
      969 SETTABLEKS                       R71 R70 K148 ["TextTruncate"]
      971 GETTABLEKS                       R72 R13 K33 ["enabled"]
      973 NOT                              R71 R72
      974 SETTABLEKS                       R71 R70 K149 ["Visible"]
      976 CALL                             R68 2 1
      977 SETTABLEKS                       R68 R67 K133 ["Label"]
      979 GETUPVAL                         R68 1
      980 GETTABLEKS                       R68 R68 K76 ["createElement"]
      982 GETUPVAL                         R69 0
      983 GETTABLEKS                       R69 R69 K157 ["TextInput"]
      985 DUPTABLE                         R70 K168 [{["AnchorPoint"], ["Position"], ["width"], ["size"], ["variant"], ["label"] = "", ["text"], ["onChanged"], ["onFocusLost"], ["focusBehavior"], ["textBoxRef"], ["ref"], ["Visible"], ["ZIndex"] = 5}]
      986 GETIMPORT                        R71 K81 [Vector2.new]
      988 LOADK                            R72 K82 [0.5]
      989 LOADK                            R73 K82 [0.5]
      990 CALL                             R71 2 1
      991 SETTABLEKS                       R71 R70 K83 ["AnchorPoint"]
      993 GETIMPORT                        R71 K114 [UDim2.fromScale]
      995 LOADK                            R72 K82 [0.5]
      996 LOADK                            R73 K82 [0.5]
      997 CALL                             R71 2 1
      998 SETTABLEKS                       R71 R70 K24 ["Position"]
     1000 GETIMPORT                        R71 K122 [UDim.new]
     1002 LOADN                            R72 0
     1003 GETUPVAL                         R74 8
     1004 GETTABLEKS                       R74 R74 K87 ["X"]
     1006 SUBK                             R73 R74 K169 [16]
     1007 CALL                             R71 2 1
     1008 SETTABLEKS                       R71 R70 K158 ["width"]
     1010 GETUPVAL                         R71 0
     1011 GETTABLEKS                       R71 R71 K170 ["Enums"]
     1013 GETTABLEKS                       R71 R71 K171 ["InputSize"]
     1015 GETTABLEKS                       R71 R71 K172 ["XSmall"]
     1017 SETTABLEKS                       R71 R70 K159 ["size"]
     1019 GETUPVAL                         R71 0
     1020 GETTABLEKS                       R71 R71 K170 ["Enums"]
     1022 GETTABLEKS                       R71 R71 K173 ["InputVariant"]
     1024 GETTABLEKS                       R71 R71 K174 ["Utility"]
     1026 SETTABLEKS                       R71 R70 K160 ["variant"]
     1028 SETTABLEKS                       R14 R70 K162 ["text"]
     1030 SETTABLEKS                       R15 R70 K163 ["onChanged"]
     1032 SETTABLEKS                       R26 R70 K164 ["onFocusLost"]
     1034 GETUPVAL                         R71 0
     1035 GETTABLEKS                       R71 R71 K170 ["Enums"]
     1037 GETTABLEKS                       R71 R71 K175 ["InputFocusBehavior"]
     1039 GETTABLEKS                       R71 R71 K176 ["Highlight"]
     1041 SETTABLEKS                       R71 R70 K165 ["focusBehavior"]
     1043 SETTABLEKS                       R16 R70 K166 ["textBoxRef"]
     1045 SETTABLEKS                       R16 R70 K78 ["ref"]
     1047 GETTABLEKS                       R71 R13 K33 ["enabled"]
     1049 SETTABLEKS                       R71 R70 K149 ["Visible"]
     1051 CALL                             R68 2 1
     1052 SETTABLEKS                       R68 R67 K134 ["RenameInput"]
     1054 GETUPVAL                         R68 1
     1055 GETTABLEKS                       R68 R68 K76 ["createElement"]
     1057 LOADK                            R69 K177 ["UIDragDetector"]
     1058 NEWTABLE                         R70 8 0
     1060 GETUPVAL                         R71 12
     1061 SETTABLEKS                       R71 R70 K178 ["DragStyle"]
     1063 GETUPVAL                         R71 13
     1064 SETTABLEKS                       R71 R70 K179 ["ResponseStyle"]
     1066 GETTABLEKS                       R71 R2 K180 ["getViewport"]
     1068 CALL                             R71 0 1
     1069 SETTABLEKS                       R71 R70 K181 ["ReferenceUIInstance"]
     1071 GETUPVAL                         R71 1
     1072 GETTABLEKS                       R71 R71 K130 ["Event"]
     1074 GETTABLEKS                       R71 R71 K182 ["DragStart"]
     1076 SETTABLE                         R28 R70 R71
     1077 GETUPVAL                         R71 1
     1078 GETTABLEKS                       R71 R71 K130 ["Event"]
     1080 GETTABLEKS                       R71 R71 K183 ["DragContinue"]
     1082 SETTABLE                         R29 R70 R71
     1083 GETUPVAL                         R71 1
     1084 GETTABLEKS                       R71 R71 K130 ["Event"]
     1086 GETTABLEKS                       R71 R71 K184 ["DragEnd"]
     1088 SETTABLE                         R30 R70 R71
     1089 CALL                             R68 2 1
     1090 SETTABLEKS                       R68 R67 K135 ["MoveDrag"]
     1092 CALL                             R64 3 1
     1093 SETTABLEKS                       R64 R63 K97 ["Box"]
     1095 GETUPVAL                         R64 1
     1096 GETTABLEKS                       R64 R64 K76 ["createElement"]
     1098 LOADK                            R65 K77 ["Frame"]
     1099 NEWTABLE                         R66 8 0
     1101 LOADB                            R67 0
     1102 SETTABLEKS                       R67 R66 K185 ["Active"]
     1104 GETIMPORT                        R67 K81 [Vector2.new]
     1106 LOADK                            R68 K82 [0.5]
     1107 LOADK                            R69 K82 [0.5]
     1108 CALL                             R67 2 1
     1109 SETTABLEKS                       R67 R66 K83 ["AnchorPoint"]
     1111 GETIMPORT                        R67 K114 [UDim2.fromScale]
     1113 LOADK                            R68 K82 [0.5]
     1114 LOADK                            R69 K82 [0.5]
     1115 CALL                             R67 2 1
     1116 SETTABLEKS                       R67 R66 K24 ["Position"]
     1118 GETIMPORT                        R67 K115 [UDim2.new]
     1120 LOADN                            R68 1
     1121 LOADN                            R69 76
     1122 LOADN                            R70 1
     1123 LOADN                            R71 76
     1124 CALL                             R67 4 1
     1125 SETTABLEKS                       R67 R66 K25 ["Size"]
     1127 LOADN                            R67 1
     1128 SETTABLEKS                       R67 R66 K89 ["BackgroundTransparency"]
     1130 LOADN                            R67 3
     1131 SETTABLEKS                       R67 R66 K90 ["ZIndex"]
     1133 GETUPVAL                         R67 1
     1134 GETTABLEKS                       R67 R67 K130 ["Event"]
     1136 GETTABLEKS                       R67 R67 K186 ["MouseMoved"]
     1138 SETTABLE                         R40 R66 R67
     1139 GETUPVAL                         R67 1
     1140 GETTABLEKS                       R67 R67 K130 ["Event"]
     1142 GETTABLEKS                       R67 R67 K187 ["MouseLeave"]
     1144 SETTABLE                         R41 R66 R67
     1145 CALL                             R64 2 1
     1146 SETTABLEKS                       R64 R63 K98 ["Detection"]
     1148 JUMPIFNOT                        R31 ; [+88]
     1149 GETUPVAL                         R64 1
     1150 GETTABLEKS                       R64 R64 K76 ["createElement"]
     1152 LOADK                            R65 K188 ["ImageButton"]
     1153 NEWTABLE                         R66 8 0
     1155 GETIMPORT                        R67 K81 [Vector2.new]
     1157 LOADK                            R68 K82 [0.5]
     1158 LOADK                            R69 K82 [0.5]
     1159 CALL                             R67 2 1
     1160 SETTABLEKS                       R67 R66 K83 ["AnchorPoint"]
     1162 GETIMPORT                        R67 K114 [UDim2.fromScale]
     1164 LOADK                            R68 K82 [0.5]
     1165 LOADK                            R69 K82 [0.5]
     1166 CALL                             R67 2 1
     1167 SETTABLEKS                       R67 R66 K24 ["Position"]
     1169 GETIMPORT                        R67 K115 [UDim2.new]
     1171 LOADN                            R68 1
     1172 LOADN                            R69 60
     1173 LOADN                            R70 1
     1174 LOADN                            R71 60
     1175 CALL                             R67 4 1
     1176 SETTABLEKS                       R67 R66 K25 ["Size"]
     1178 LOADN                            R67 1
     1179 SETTABLEKS                       R67 R66 K89 ["BackgroundTransparency"]
     1181 LOADN                            R67 4
     1182 SETTABLEKS                       R67 R66 K90 ["ZIndex"]
     1184 GETUPVAL                         R67 1
     1185 GETTABLEKS                       R67 R67 K130 ["Event"]
     1187 GETTABLEKS                       R67 R67 K186 ["MouseMoved"]
     1189 SETTABLE                         R40 R66 R67
     1190 GETUPVAL                         R67 1
     1191 GETTABLEKS                       R67 R67 K130 ["Event"]
     1193 GETTABLEKS                       R67 R67 K187 ["MouseLeave"]
     1195 SETTABLE                         R41 R66 R67
     1196 DUPTABLE                         R67 K190 [{"ConnectDrag"}]
     1197 GETUPVAL                         R68 1
     1198 GETTABLEKS                       R68 R68 K76 ["createElement"]
     1200 LOADK                            R69 K177 ["UIDragDetector"]
     1201 NEWTABLE                         R70 8 0
     1203 GETUPVAL                         R71 12
     1204 SETTABLEKS                       R71 R70 K178 ["DragStyle"]
     1206 GETUPVAL                         R71 13
     1207 SETTABLEKS                       R71 R70 K179 ["ResponseStyle"]
     1209 GETTABLEKS                       R71 R2 K180 ["getViewport"]
     1211 CALL                             R71 0 1
     1212 SETTABLEKS                       R71 R70 K181 ["ReferenceUIInstance"]
     1214 GETUPVAL                         R71 1
     1215 GETTABLEKS                       R71 R71 K130 ["Event"]
     1217 GETTABLEKS                       R71 R71 K182 ["DragStart"]
     1219 SETTABLE                         R42 R70 R71
     1220 GETUPVAL                         R71 1
     1221 GETTABLEKS                       R71 R71 K130 ["Event"]
     1223 GETTABLEKS                       R71 R71 K183 ["DragContinue"]
     1225 SETTABLE                         R43 R70 R71
     1226 GETUPVAL                         R71 1
     1227 GETTABLEKS                       R71 R71 K130 ["Event"]
     1229 GETTABLEKS                       R71 R71 K184 ["DragEnd"]
     1231 SETTABLE                         R44 R70 R71
     1232 CALL                             R68 2 1
     1233 SETTABLEKS                       R68 R67 K189 ["ConnectDrag"]
     1235 CALL                             R64 3 1
     1236 JUMP                             ; [+1]
     1237 LOADNIL                          R64
     1238 SETTABLEKS                       R64 R63 K99 ["ConnectSurface"]
     1240 CALL                             R60 3 -1
     1241 RETURN                           R60 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["SignalsReact"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Components"]
       46 GETTABLEKS                       R7 R7 K13 ["StateMachineChevron"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Contexts"]
       53 GETTABLEKS                       R8 R8 K15 ["StateMachineConnectContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Contexts"]
       60 GETTABLEKS                       R9 R9 K16 ["StateMachineGeometryContext"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K14 ["Contexts"]
       67 GETTABLEKS                       R10 R10 K17 ["StateMachinePreviewContext"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K20 [Vector2.new]
       72 LOADN                            R11 144
       73 LOADN                            R12 40
       74 CALL                             R10 2 1
       75 GETIMPORT                        R11 K24 [Enum.UIDragDetectorDragStyle.TranslatePlane]
       77 GETIMPORT                        R12 K27 [Enum.UIDragDetectorResponseStyle.CustomOffset]
       79 DUPCLOSURE                       R13 K28 [PROTO_0]
       80 CAPTURE                          VAL R10
       81 DUPCLOSURE                       R14 K29 [PROTO_1]
       82 DUPCLOSURE                       R15 K30 [PROTO_2]
       83 DUPCLOSURE                       R16 K31 [PROTO_23]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R12
       98 RETURN                           R16 1
