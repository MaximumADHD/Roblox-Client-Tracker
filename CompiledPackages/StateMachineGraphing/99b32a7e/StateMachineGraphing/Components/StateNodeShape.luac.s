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
        7 GETTABLEKS                       R2 R2 K2 ["useFoundationStudioTheme"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["useContext"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["CanvasContext"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K3 ["useContext"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K5 ["ViewportRectContext"]
       23 GETTABLEKS                       R5 R5 K6 ["Context"]
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K3 ["useContext"]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K6 ["Context"]
       32 CALL                             R5 1 1
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K3 ["useContext"]
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R7 R7 K6 ["Context"]
       39 CALL                             R6 1 1
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K3 ["useContext"]
       43 GETUPVAL                         R8 5
       44 GETTABLEKS                       R8 R8 K6 ["Context"]
       46 CALL                             R7 1 1
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R8 R8 K3 ["useContext"]
       50 GETUPVAL                         R9 1
       51 GETTABLEKS                       R9 R9 K7 ["GraphContext"]
       53 GETTABLEKS                       R9 R9 K6 ["Context"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R0 K8 ["GraphPayload"]
       58 GETTABLEKS                       R9 R9 K9 ["id"]
       60 GETUPVAL                         R10 2
       61 GETTABLEKS                       R10 R10 K10 ["useMemo"]
       63 NEWCLOSURE                       R11 P0
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R9
       66 NEWTABLE                         R12 0 2
       68 GETTABLEKS                       R13 R8 K11 ["observeNodePropsById"]
       70 MOVE                             R14 R9
       71 SETLIST                          R12 R13 2 [1]
       73 CALL                             R10 2 1
       74 GETUPVAL                         R11 6
       75 GETTABLEKS                       R11 R11 K12 ["useSignalState"]
       77 MOVE                             R12 R10
       78 CALL                             R11 1 1
       79 LOADB                            R12 0
       80 JUMPIFEQKNIL                     R11 ; [+12]
       82 LOADB                            R12 1
       83 GETTABLEKS                       R13 R11 K13 ["isStart"]
       85 JUMPIFEQKB                       R13 TRUE ; [+7]
       87 GETTABLEKS                       R13 R11 K14 ["isAny"]
       89 JUMPIFEQKB                       R13 TRUE ; [+2]
       91 LOADB                            R12 0 +1
       92 LOADB                            R12 1
       93 LOADB                            R13 1
       94 JUMPIFEQKNIL                     R11 ; [+7]
       96 GETTABLEKS                       R14 R11 K15 ["canStartTransition"]
       98 JUMPIFNOTEQKB                    R14 FALSE ; [+2]
      100 LOADB                            R13 0 +1
      101 LOADB                            R13 1
      102 GETUPVAL                         R14 7
      103 GETTABLEKS                       R14 R14 K16 ["useToggleState"]
      105 LOADB                            R15 0
      106 CALL                             R14 1 1
      107 GETUPVAL                         R15 2
      108 GETTABLEKS                       R15 R15 K17 ["useBinding"]
      110 LOADK                            R16 K18 [""]
      111 CALL                             R15 1 2
      112 GETUPVAL                         R17 2
      113 GETTABLEKS                       R17 R17 K19 ["useRef"]
      115 LOADNIL                          R18
      116 CALL                             R17 1 1
      117 GETUPVAL                         R18 2
      118 GETTABLEKS                       R18 R18 K19 ["useRef"]
      120 LOADN                            R19 0
      121 CALL                             R18 1 1
      122 GETUPVAL                         R19 2
      123 GETTABLEKS                       R19 R19 K19 ["useRef"]
      125 LOADB                            R20 0
      126 CALL                             R19 1 1
      127 GETUPVAL                         R20 2
      128 GETTABLEKS                       R20 R20 K19 ["useRef"]
      130 LOADNIL                          R21
      131 CALL                             R20 1 1
      132 GETUPVAL                         R21 2
      133 GETTABLEKS                       R21 R21 K20 ["useCallback"]
      135 NEWCLOSURE                       R22 P1
      136 CAPTURE                          UPVAL U8
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R9
      140 NEWTABLE                         R23 0 3
      142 GETTABLEKS                       R24 R6 K21 ["report"]
      144 MOVE                             R25 R9
      145 GETTABLEKS                       R26 R0 K22 ["Selected"]
      147 SETLIST                          R23 R24 3 [1]
      149 CALL                             R21 2 1
      150 GETUPVAL                         R22 2
      151 GETTABLEKS                       R22 R22 K23 ["useEffect"]
      153 NEWCLOSURE                       R23 P2
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R21
      156 NEWTABLE                         R24 0 1
      158 MOVE                             R25 R21
      159 SETLIST                          R24 R25 1 [1]
      161 CALL                             R22 2 0
      162 GETUPVAL                         R22 2
      163 GETTABLEKS                       R22 R22 K23 ["useEffect"]
      165 NEWCLOSURE                       R23 P3
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R9
      168 NEWTABLE                         R24 0 2
      170 GETTABLEKS                       R25 R6 K21 ["report"]
      172 MOVE                             R26 R9
      173 SETLIST                          R24 R25 2 [1]
      175 CALL                             R22 2 0
      176 GETUPVAL                         R22 1
      177 GETTABLEKS                       R22 R22 K24 ["useViewportBinding"]
      179 NEWCLOSURE                       R23 P4
      180 CAPTURE                          VAL R0
      181 NEWTABLE                         R24 0 2
      183 GETTABLEKS                       R25 R0 K25 ["Position"]
      185 GETTABLEKS                       R26 R0 K26 ["Size"]
      187 SETLIST                          R24 R25 2 [1]
      189 CALL                             R22 2 1
      190 GETUPVAL                         R23 6
      191 GETTABLEKS                       R23 R23 K27 ["useSignalBinding"]
      193 GETTABLEKS                       R24 R4 K28 ["observeZoomRatio"]
      195 CALL                             R23 1 1
      196 GETUPVAL                         R24 2
      197 GETTABLEKS                       R24 R24 K10 ["useMemo"]
      199 NEWCLOSURE                       R25 P5
      200 CAPTURE                          VAL R23
      201 CAPTURE                          VAL R1
      202 NEWTABLE                         R26 0 2
      204 MOVE                             R27 R23
      205 GETTABLEKS                       R28 R1 K29 ["Stroke"]
      207 GETTABLEKS                       R28 R28 K30 ["Standard"]
      209 SETLIST                          R26 R27 2 [1]
      211 CALL                             R24 2 1
      212 GETUPVAL                         R25 2
      213 GETTABLEKS                       R25 R25 K20 ["useCallback"]
      215 NEWCLOSURE                       R26 P6
      216 CAPTURE                          VAL R3
      217 NEWTABLE                         R27 0 1
      219 MOVE                             R28 R3
      220 SETLIST                          R27 R28 1 [1]
      222 CALL                             R25 2 1
      223 GETUPVAL                         R26 7
      224 GETTABLEKS                       R26 R26 K31 ["useEventCallback"]
      226 NEWCLOSURE                       R27 P7
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R0
      229 CAPTURE                          VAL R14
      230 CAPTURE                          VAL R17
      231 CALL                             R26 1 1
      232 GETUPVAL                         R27 7
      233 GETTABLEKS                       R27 R27 K31 ["useEventCallback"]
      235 NEWCLOSURE                       R28 P8
      236 CAPTURE                          VAL R15
      237 CAPTURE                          VAL R14
      238 CAPTURE                          VAL R8
      239 CAPTURE                          VAL R9
      240 CALL                             R27 1 1
      241 GETUPVAL                         R28 2
      242 GETTABLEKS                       R28 R28 K20 ["useCallback"]
      244 NEWCLOSURE                       R29 P9
      245 CAPTURE                          VAL R8
      246 CAPTURE                          VAL R9
      247 NEWTABLE                         R30 0 2
      249 GETTABLEKS                       R31 R8 K32 ["selectNodes"]
      251 MOVE                             R32 R9
      252 SETLIST                          R30 R31 2 [1]
      254 CALL                             R28 2 1
      255 GETUPVAL                         R29 2
      256 GETTABLEKS                       R29 R29 K20 ["useCallback"]
      258 NEWCLOSURE                       R30 P10
      259 CAPTURE                          VAL R14
      260 CAPTURE                          VAL R12
      261 CAPTURE                          VAL R18
      262 CAPTURE                          VAL R19
      263 CAPTURE                          VAL R26
      264 CAPTURE                          VAL R0
      265 CAPTURE                          VAL R25
      266 NEWTABLE                         R31 0 5
      268 GETTABLEKS                       R32 R0 K33 ["OnDragStart"]
      270 MOVE                             R33 R25
      271 MOVE                             R34 R12
      272 GETTABLEKS                       R35 R14 K34 ["enabled"]
      274 MOVE                             R36 R26
      275 SETLIST                          R31 R32 5 [1]
      277 CALL                             R29 2 1
      278 GETUPVAL                         R30 2
      279 GETTABLEKS                       R30 R30 K20 ["useCallback"]
      281 NEWCLOSURE                       R31 P11
      282 CAPTURE                          VAL R19
      283 CAPTURE                          VAL R0
      284 CAPTURE                          VAL R25
      285 NEWTABLE                         R32 0 2
      287 GETTABLEKS                       R33 R0 K35 ["OnDragMoved"]
      289 MOVE                             R34 R25
      290 SETLIST                          R32 R33 2 [1]
      292 CALL                             R30 2 1
      293 GETUPVAL                         R31 2
      294 GETTABLEKS                       R31 R31 K20 ["useCallback"]
      296 NEWCLOSURE                       R32 P12
      297 CAPTURE                          VAL R19
      298 CAPTURE                          VAL R0
      299 CAPTURE                          VAL R25
      300 NEWTABLE                         R33 0 2
      302 GETTABLEKS                       R34 R0 K36 ["OnDragEnded"]
      304 MOVE                             R35 R25
      305 SETLIST                          R33 R34 2 [1]
      307 CALL                             R31 2 1
      308 GETUPVAL                         R32 2
      309 GETTABLEKS                       R32 R32 K37 ["useState"]
      311 LOADNIL                          R33
      312 CALL                             R32 1 2
      313 GETUPVAL                         R34 2
      314 GETTABLEKS                       R34 R34 K37 ["useState"]
      316 LOADN                            R35 0
      317 CALL                             R34 1 2
      318 GETUPVAL                         R36 2
      319 GETTABLEKS                       R36 R36 K37 ["useState"]
      321 LOADB                            R37 0
      322 CALL                             R36 1 2
      323 GETUPVAL                         R38 2
      324 GETTABLEKS                       R38 R38 K19 ["useRef"]
      326 LOADB                            R39 0
      327 CALL                             R38 1 1
      328 GETUPVAL                         R39 2
      329 GETTABLEKS                       R39 R39 K3 ["useContext"]
      331 GETUPVAL                         R40 1
      332 GETTABLEKS                       R40 R40 K38 ["NodeSelectionBoxDragContext"]
      334 GETTABLEKS                       R40 R40 K6 ["Context"]
      336 CALL                             R39 1 1
      337 GETUPVAL                         R40 2
      338 GETTABLEKS                       R40 R40 K19 ["useRef"]
      340 LOADB                            R41 0
      341 CALL                             R40 1 1
      342 GETTABLEKS                       R42 R39 K39 ["selectionStart"]
      344 JUMPIFNOTEQKNIL                  R42 ; [+2]
      346 LOADB                            R41 0 +1
      347 LOADB                            R41 1
      348 SETTABLEKS                       R41 R40 K40 ["current"]
      350 GETUPVAL                         R41 2
      351 GETTABLEKS                       R41 R41 K20 ["useCallback"]
      353 NEWCLOSURE                       R42 P13
      354 CAPTURE                          VAL R38
      355 CAPTURE                          VAL R40
      356 CAPTURE                          VAL R33
      357 CAPTURE                          VAL R37
      358 CAPTURE                          VAL R5
      359 CAPTURE                          VAL R20
      360 CAPTURE                          UPVAL U9
      361 CAPTURE                          VAL R13
      362 CAPTURE                          UPVAL U10
      363 CAPTURE                          VAL R6
      364 CAPTURE                          VAL R9
      365 CAPTURE                          VAL R35
      366 NEWTABLE                         R43 0 5
      368 GETTABLEKS                       R44 R5 K41 ["observePending"]
      370 GETTABLEKS                       R45 R5 K42 ["setPinActive"]
      372 MOVE                             R46 R13
      373 GETTABLEKS                       R47 R6 K43 ["observeGeometry"]
      375 MOVE                             R48 R9
      376 SETLIST                          R43 R44 5 [1]
      378 CALL                             R41 2 1
      379 GETUPVAL                         R42 2
      380 GETTABLEKS                       R42 R42 K20 ["useCallback"]
      382 NEWCLOSURE                       R43 P14
      383 CAPTURE                          VAL R38
      384 CAPTURE                          VAL R33
      385 CAPTURE                          VAL R37
      386 CAPTURE                          VAL R5
      387 NEWTABLE                         R44 0 1
      389 GETTABLEKS                       R45 R5 K42 ["setPinActive"]
      391 SETLIST                          R44 R45 1 [1]
      393 CALL                             R42 2 1
      394 GETUPVAL                         R43 2
      395 GETTABLEKS                       R43 R43 K20 ["useCallback"]
      397 NEWCLOSURE                       R44 P15
      398 CAPTURE                          VAL R38
      399 CAPTURE                          VAL R5
      400 CAPTURE                          VAL R9
      401 NEWTABLE                         R45 0 2
      403 GETTABLEKS                       R46 R5 K44 ["startConnect"]
      405 MOVE                             R47 R9
      406 SETLIST                          R45 R46 2 [1]
      408 CALL                             R43 2 1
      409 GETUPVAL                         R44 2
      410 GETTABLEKS                       R44 R44 K20 ["useCallback"]
      412 NEWCLOSURE                       R45 P16
      413 CAPTURE                          VAL R5
      414 NEWTABLE                         R46 0 1
      416 GETTABLEKS                       R47 R5 K45 ["updateConnect"]
      418 SETLIST                          R46 R47 1 [1]
      420 CALL                             R44 2 1
      421 GETUPVAL                         R45 2
      422 GETTABLEKS                       R45 R45 K20 ["useCallback"]
      424 NEWCLOSURE                       R46 P17
      425 CAPTURE                          VAL R38
      426 CAPTURE                          VAL R33
      427 CAPTURE                          VAL R5
      428 CAPTURE                          VAL R25
      429 NEWTABLE                         R47 0 3
      431 GETTABLEKS                       R48 R5 K46 ["endConnect"]
      433 GETTABLEKS                       R49 R5 K42 ["setPinActive"]
      435 MOVE                             R50 R25
      436 SETLIST                          R47 R48 3 [1]
      438 CALL                             R45 2 1
      439 GETTABLEKS                       R48 R7 K47 ["activeStateIds"]
      441 GETTABLE                         R47 R48 R9
      442 JUMPIFEQKB                       R47 TRUE ; [+2]
      444 LOADB                            R46 0 +1
      445 LOADB                            R46 1
      446 MOVE                             R47 R46
      447 JUMPIFNOT                        R47 ; [+6]
      448 GETTABLEKS                       R48 R7 K48 ["activeStyle"]
      450 JUMPIFEQKS                       R48 K49 ["invertFill"] ; [+2]
      452 LOADB                            R47 0 +1
      453 LOADB                            R47 1
      454 MOVE                             R48 R46
      455 JUMPIFNOT                        R48 ; [+6]
      456 GETTABLEKS                       R49 R7 K48 ["activeStyle"]
      458 JUMPIFEQKS                       R49 K50 ["outline"] ; [+2]
      460 LOADB                            R48 0 +1
      461 LOADB                            R48 1
      462 JUMPIFNOT                        R46 ; [+46]
      463 GETTABLEKS                       R50 R7 K48 ["activeStyle"]
      465 JUMPIFNOTEQKS                    R50 K51 ["shift100"] ; [+8]
      467 GETTABLEKS                       R49 R1 K52 ["Color"]
      469 GETTABLEKS                       R49 R49 K53 ["Shift"]
      471 GETTABLEKS                       R49 R49 K54 ["Shift_100"]
      473 JUMP                             ; [+36]
      474 GETTABLEKS                       R50 R7 K48 ["activeStyle"]
      476 JUMPIFNOTEQKS                    R50 K55 ["shift200"] ; [+8]
      478 GETTABLEKS                       R49 R1 K52 ["Color"]
      480 GETTABLEKS                       R49 R49 K53 ["Shift"]
      482 GETTABLEKS                       R49 R49 K56 ["Shift_200"]
      484 JUMP                             ; [+25]
      485 GETTABLEKS                       R50 R7 K48 ["activeStyle"]
      487 JUMPIFNOTEQKS                    R50 K57 ["shift300"] ; [+8]
      489 GETTABLEKS                       R49 R1 K52 ["Color"]
      491 GETTABLEKS                       R49 R49 K53 ["Shift"]
      493 GETTABLEKS                       R49 R49 K58 ["Shift_300"]
      495 JUMP                             ; [+14]
      496 GETTABLEKS                       R50 R7 K48 ["activeStyle"]
      498 JUMPIFNOTEQKS                    R50 K59 ["shift400"] ; [+8]
      500 GETTABLEKS                       R49 R1 K52 ["Color"]
      502 GETTABLEKS                       R49 R49 K53 ["Shift"]
      504 GETTABLEKS                       R49 R49 K60 ["Shift_400"]
      506 JUMP                             ; [+3]
      507 LOADNIL                          R49
      508 JUMP                             ; [+1]
      509 LOADNIL                          R49
      510 MOVE                             R50 R49
      511 JUMPIF                           R50 ; [+9]
      512 JUMPIFNOT                        R36 ; [+7]
      513 GETTABLEKS                       R50 R1 K52 ["Color"]
      515 GETTABLEKS                       R50 R50 K53 ["Shift"]
      517 GETTABLEKS                       R50 R50 K54 ["Shift_100"]
      519 JUMP                             ; [+1]
      520 LOADNIL                          R50
      521 GETUPVAL                         R52 0
      522 GETTABLEKS                       R52 R52 K61 ["Enums"]
      524 GETTABLEKS                       R52 R52 K62 ["Theme"]
      526 GETTABLEKS                       R52 R52 K63 ["Dark"]
      528 JUMPIFNOTEQ                      R2 R52 ; [+8]
      530 GETIMPORT                        R51 K66 [Color3.fromRGB]
      532 LOADN                            R52 113
      533 LOADN                            R53 4
      534 LOADN                            R54 55
      535 CALL                             R51 3 1
      536 JUMP                             ; [+6]
      537 GETIMPORT                        R51 K66 [Color3.fromRGB]
      539 LOADN                            R52 251
      540 LOADN                            R53 188
      541 LOADN                            R54 208
      542 CALL                             R51 3 1
      543 GETTABLEKS                       R52 R1 K52 ["Color"]
      545 GETTABLEKS                       R52 R52 K67 ["Surface"]
      547 GETTABLEKS                       R52 R52 K68 ["Surface_200"]
      549 JUMPIFNOT                        R47 ; [+9]
      550 GETTABLEKS                       R53 R1 K52 ["Color"]
      552 GETTABLEKS                       R53 R53 K69 ["Content"]
      554 GETTABLEKS                       R53 R53 K70 ["Emphasis"]
      556 GETTABLEKS                       R53 R53 K64 ["Color3"]
      558 JUMP                             ; [+5]
      559 JUMPIFNOT                        R12 ; [+2]
      560 MOVE                             R53 R51
      561 JUMP                             ; [+2]
      562 GETTABLEKS                       R53 R52 K64 ["Color3"]
      564 JUMPIF                           R47 ; [+1]
      565 JUMPIFNOT                        R12 ; [+2]
      566 LOADN                            R54 0
      567 JUMP                             ; [+2]
      568 GETTABLEKS                       R54 R52 K71 ["Transparency"]
      570 JUMPIFNOT                        R47 ; [+3]
      571 GETTABLEKS                       R55 R52 K64 ["Color3"]
      573 JUMP                             ; [+8]
      574 GETTABLEKS                       R55 R1 K52 ["Color"]
      576 GETTABLEKS                       R55 R55 K69 ["Content"]
      578 GETTABLEKS                       R55 R55 K70 ["Emphasis"]
      580 GETTABLEKS                       R55 R55 K64 ["Color3"]
      582 JUMPIFNOT                        R48 ; [+9]
      583 GETTABLEKS                       R56 R1 K52 ["Color"]
      585 GETTABLEKS                       R56 R56 K72 ["Extended"]
      587 GETTABLEKS                       R56 R56 K73 ["White"]
      589 GETTABLEKS                       R56 R56 K74 ["White_100"]
      591 JUMP                             ; [+6]
      592 GETTABLEKS                       R56 R1 K52 ["Color"]
      594 GETTABLEKS                       R56 R56 K29 ["Stroke"]
      596 GETTABLEKS                       R56 R56 K75 ["Default"]
      598 GETTABLEKS                       R58 R7 K76 ["selectionStyle"]
      600 JUMPIFNOTEQKS                    R58 K77 ["white"] ; [+10]
      602 GETTABLEKS                       R57 R1 K52 ["Color"]
      604 GETTABLEKS                       R57 R57 K72 ["Extended"]
      606 GETTABLEKS                       R57 R57 K73 ["White"]
      608 GETTABLEKS                       R57 R57 K74 ["White_100"]
      610 JUMP                             ; [+6]
      611 GETTABLEKS                       R57 R1 K52 ["Color"]
      613 GETTABLEKS                       R57 R57 K78 ["System"]
      615 GETTABLEKS                       R57 R57 K70 ["Emphasis"]
      617 GETUPVAL                         R58 6
      618 GETTABLEKS                       R58 R58 K12 ["useSignalState"]
      620 GETTABLEKS                       R59 R5 K41 ["observePending"]
      622 CALL                             R58 1 1
      623 LOADB                            R59 0
      624 JUMPIFEQKNIL                     R58 ; [+13]
      626 LOADB                            R59 0
      627 GETTABLEKS                       R60 R58 K79 ["fromStateId"]
      629 JUMPIFEQ                         R60 R9 ; [+8]
      631 GETTABLEKS                       R60 R5 K80 ["isValidTarget"]
      633 GETTABLEKS                       R61 R58 K79 ["fromStateId"]
      635 MOVE                             R62 R9
      636 CALL                             R60 2 1
      637 NOT                              R59 R60
      638 JUMPIFNOT                        R59 ; [+2]
      639 LOADK                            R60 K81 [0.6]
      640 JUMP                             ; [+1]
      641 LOADN                            R60 0
      642 LOADB                            R61 0
      643 JUMPIFEQKNIL                     R32 ; [+10]
      645 LOADB                            R61 0
      646 JUMPIFNOTEQKNIL                  R58 ; [+7]
      648 GETTABLEKS                       R62 R39 K39 ["selectionStart"]
      650 JUMPIFEQKNIL                     R62 ; [+2]
      652 LOADB                            R61 0 +1
      653 LOADB                            R61 1
      654 GETUPVAL                         R62 7
      655 GETTABLEKS                       R62 R62 K82 ["createNextOrder"]
      657 CALL                             R62 0 1
      658 GETUPVAL                         R63 2
      659 GETTABLEKS                       R63 R63 K83 ["createElement"]
      661 LOADK                            R64 K84 ["Frame"]
      662 NEWTABLE                         R65 8 0
      664 SETTABLEKS                       R20 R65 K85 ["ref"]
      666 GETIMPORT                        R66 K88 [Vector2.new]
      668 LOADK                            R67 K89 [0.5]
      669 LOADK                            R68 K89 [0.5]
      670 CALL                             R66 2 1
      671 SETTABLEKS                       R66 R65 K90 ["AnchorPoint"]
      673 SETTABLEKS                       R22 R65 K25 ["Position"]
      675 GETIMPORT                        R66 K93 [UDim2.fromOffset]
      677 GETUPVAL                         R67 8
      678 GETTABLEKS                       R67 R67 K94 ["X"]
      680 GETUPVAL                         R68 8
      681 GETTABLEKS                       R68 R68 K95 ["Y"]
      683 CALL                             R66 2 1
      684 SETTABLEKS                       R66 R65 K26 ["Size"]
      686 LOADN                            R66 1
      687 SETTABLEKS                       R66 R65 K96 ["BackgroundTransparency"]
      689 GETTABLEKS                       R66 R0 K97 ["ZIndex"]
      691 SETTABLEKS                       R66 R65 K97 ["ZIndex"]
      693 GETUPVAL                         R66 2
      694 GETTABLEKS                       R66 R66 K98 ["Change"]
      696 GETTABLEKS                       R66 R66 K99 ["AbsolutePosition"]
      698 SETTABLE                         R21 R65 R66
      699 GETUPVAL                         R66 2
      700 GETTABLEKS                       R66 R66 K98 ["Change"]
      702 GETTABLEKS                       R66 R66 K100 ["AbsoluteSize"]
      704 SETTABLE                         R21 R65 R66
      705 DUPTABLE                         R66 K107 [{"Scale", "Chevron", "SelectionOutline", "Box", "Detection", "ConnectSurface"}]
      706 GETUPVAL                         R67 2
      707 GETTABLEKS                       R67 R67 K83 ["createElement"]
      709 LOADK                            R68 K108 ["UIScale"]
      710 DUPTABLE                         R69 K109 [{"Scale"}]
      711 SETTABLEKS                       R23 R69 K101 ["Scale"]
      713 CALL                             R67 2 1
      714 SETTABLEKS                       R67 R66 K101 ["Scale"]
      716 JUMPIFNOT                        R61 ; [+58]
      717 GETUPVAL                         R67 2
      718 GETTABLEKS                       R67 R67 K83 ["createElement"]
      720 LOADK                            R68 K84 ["Frame"]
      721 DUPTABLE                         R69 K112 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["Rotation"], ["ZIndex"]}]
      722 GETIMPORT                        R70 K88 [Vector2.new]
      724 LOADK                            R71 K89 [0.5]
      725 LOADK                            R72 K89 [0.5]
      726 CALL                             R70 2 1
      727 SETTABLEKS                       R70 R69 K90 ["AnchorPoint"]
      729 GETIMPORT                        R70 K93 [UDim2.fromOffset]
      731 GETTABLEKS                       R71 R32 K94 ["X"]
      733 GETTABLEKS                       R72 R32 K95 ["Y"]
      735 CALL                             R70 2 1
      736 SETTABLEKS                       R70 R69 K25 ["Position"]
      738 GETIMPORT                        R70 K93 [UDim2.fromOffset]
      740 GETUPVAL                         R71 11
      741 GETTABLEKS                       R71 R71 K113 ["SIZE"]
      743 GETUPVAL                         R72 11
      744 GETTABLEKS                       R72 R72 K113 ["SIZE"]
      746 CALL                             R70 2 1
      747 SETTABLEKS                       R70 R69 K26 ["Size"]
      749 SETTABLEKS                       R34 R69 K111 ["Rotation"]
      751 MOVE                             R70 R62
      752 CALL                             R70 0 1
      753 SETTABLEKS                       R70 R69 K97 ["ZIndex"]
      755 GETUPVAL                         R70 11
      756 GETTABLEKS                       R70 R70 K114 ["children"]
      758 GETUPVAL                         R71 11
      759 GETTABLEKS                       R71 R71 K115 ["SCALE"]
      761 GETTABLEKS                       R72 R1 K52 ["Color"]
      763 GETTABLEKS                       R72 R72 K72 ["Extended"]
      765 GETTABLEKS                       R72 R72 K116 ["Gray"]
      767 GETTABLEKS                       R72 R72 K117 ["Gray_600"]
      769 GETTABLEKS                       R72 R72 K64 ["Color3"]
      771 LOADN                            R73 0
      772 CALL                             R70 3 -1
      773 CALL                             R67 -1 1
      774 JUMP                             ; [+1]
      775 LOADNIL                          R67
      776 SETTABLEKS                       R67 R66 K102 ["Chevron"]
      778 GETTABLEKS                       R68 R0 K22 ["Selected"]
      780 JUMPIFNOT                        R68 ; [+71]
      781 GETUPVAL                         R67 2
      782 GETTABLEKS                       R67 R67 K83 ["createElement"]
      784 LOADK                            R68 K84 ["Frame"]
      785 DUPTABLE                         R69 K118 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"]}]
      786 GETIMPORT                        R70 K88 [Vector2.new]
      788 LOADK                            R71 K89 [0.5]
      789 LOADK                            R72 K89 [0.5]
      790 CALL                             R70 2 1
      791 SETTABLEKS                       R70 R69 K90 ["AnchorPoint"]
      793 GETIMPORT                        R70 K120 [UDim2.fromScale]
      795 LOADK                            R71 K89 [0.5]
      796 LOADK                            R72 K89 [0.5]
      797 CALL                             R70 2 1
      798 SETTABLEKS                       R70 R69 K25 ["Position"]
      800 GETIMPORT                        R70 K121 [UDim2.new]
      802 LOADN                            R71 1
      803 LOADN                            R72 8
      804 LOADN                            R73 1
      805 LOADN                            R74 8
      806 CALL                             R70 4 1
      807 SETTABLEKS                       R70 R69 K26 ["Size"]
      809 MOVE                             R70 R62
      810 CALL                             R70 0 1
      811 SETTABLEKS                       R70 R69 K97 ["ZIndex"]
      813 DUPTABLE                         R70 K123 [{"Corner", "Stroke"}]
      814 GETUPVAL                         R71 2
      815 GETTABLEKS                       R71 R71 K83 ["createElement"]
      817 LOADK                            R72 K124 ["UICorner"]
      818 DUPTABLE                         R73 K126 [{"CornerRadius"}]
      819 GETIMPORT                        R74 K128 [UDim.new]
      821 LOADN                            R75 0
      822 GETTABLEKS                       R76 R1 K129 ["Radius"]
      824 GETTABLEKS                       R76 R76 K130 ["Medium"]
      826 CALL                             R74 2 1
      827 SETTABLEKS                       R74 R73 K125 ["CornerRadius"]
      829 CALL                             R71 2 1
      830 SETTABLEKS                       R71 R70 K122 ["Corner"]
      832 GETUPVAL                         R71 2
      833 GETTABLEKS                       R71 R71 K83 ["createElement"]
      835 LOADK                            R72 K131 ["UIStroke"]
      836 DUPTABLE                         R73 K133 [{"Color", "Thickness", "Transparency"}]
      837 GETTABLEKS                       R74 R57 K64 ["Color3"]
      839 SETTABLEKS                       R74 R73 K52 ["Color"]
      841 SETTABLEKS                       R24 R73 K132 ["Thickness"]
      843 GETTABLEKS                       R74 R57 K71 ["Transparency"]
      845 SETTABLEKS                       R74 R73 K71 ["Transparency"]
      847 CALL                             R71 2 1
      848 SETTABLEKS                       R71 R70 K29 ["Stroke"]
      850 CALL                             R67 3 1
      851 JUMP                             ; [+1]
      852 LOADNIL                          R67
      853 SETTABLEKS                       R67 R66 K103 ["SelectionOutline"]
      855 GETUPVAL                         R67 2
      856 GETTABLEKS                       R67 R67 K83 ["createElement"]
      858 LOADK                            R68 K84 ["Frame"]
      859 NEWTABLE                         R69 8 0
      861 GETIMPORT                        R70 K120 [UDim2.fromScale]
      863 LOADN                            R71 1
      864 LOADN                            R72 1
      865 CALL                             R70 2 1
      866 SETTABLEKS                       R70 R69 K26 ["Size"]
      868 SETTABLEKS                       R53 R69 K134 ["BackgroundColor3"]
      870 ADD                              R70 R54 R60
      871 SETTABLEKS                       R70 R69 K96 ["BackgroundTransparency"]
      873 LOADN                            R70 0
      874 SETTABLEKS                       R70 R69 K135 ["BorderSizePixel"]
      876 MOVE                             R70 R62
      877 CALL                             R70 0 1
      878 SETTABLEKS                       R70 R69 K97 ["ZIndex"]
      880 GETUPVAL                         R70 2
      881 GETTABLEKS                       R70 R70 K136 ["Event"]
      883 GETTABLEKS                       R70 R70 K137 ["InputBegan"]
      885 SETTABLE                         R28 R69 R70
      886 DUPTABLE                         R70 K142 [{"Corner", "ShiftOverlay", "Stroke", "Label", "RenameInput", "MoveDrag"}]
      887 GETUPVAL                         R71 2
      888 GETTABLEKS                       R71 R71 K83 ["createElement"]
      890 LOADK                            R72 K124 ["UICorner"]
      891 DUPTABLE                         R73 K126 [{"CornerRadius"}]
      892 GETIMPORT                        R74 K128 [UDim.new]
      894 LOADN                            R75 0
      895 GETTABLEKS                       R76 R1 K129 ["Radius"]
      897 GETTABLEKS                       R76 R76 K143 ["Small"]
      899 CALL                             R74 2 1
      900 SETTABLEKS                       R74 R73 K125 ["CornerRadius"]
      902 CALL                             R71 2 1
      903 SETTABLEKS                       R71 R70 K122 ["Corner"]
      905 JUMPIFNOT                        R50 ; [+45]
      906 GETUPVAL                         R71 2
      907 GETTABLEKS                       R71 R71 K83 ["createElement"]
      909 LOADK                            R72 K84 ["Frame"]
      910 DUPTABLE                         R73 K145 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["ZIndex"]}]
      911 GETIMPORT                        R74 K120 [UDim2.fromScale]
      913 LOADN                            R75 1
      914 LOADN                            R76 1
      915 CALL                             R74 2 1
      916 SETTABLEKS                       R74 R73 K26 ["Size"]
      918 GETTABLEKS                       R74 R50 K64 ["Color3"]
      920 SETTABLEKS                       R74 R73 K134 ["BackgroundColor3"]
      922 GETTABLEKS                       R74 R50 K71 ["Transparency"]
      924 SETTABLEKS                       R74 R73 K96 ["BackgroundTransparency"]
      926 MOVE                             R74 R62
      927 CALL                             R74 0 1
      928 SETTABLEKS                       R74 R73 K97 ["ZIndex"]
      930 DUPTABLE                         R74 K146 [{"Corner"}]
      931 GETUPVAL                         R75 2
      932 GETTABLEKS                       R75 R75 K83 ["createElement"]
      934 LOADK                            R76 K124 ["UICorner"]
      935 DUPTABLE                         R77 K126 [{"CornerRadius"}]
      936 GETIMPORT                        R78 K128 [UDim.new]
      938 LOADN                            R79 0
      939 GETTABLEKS                       R80 R1 K129 ["Radius"]
      941 GETTABLEKS                       R80 R80 K143 ["Small"]
      943 CALL                             R78 2 1
      944 SETTABLEKS                       R78 R77 K125 ["CornerRadius"]
      946 CALL                             R75 2 1
      947 SETTABLEKS                       R75 R74 K122 ["Corner"]
      949 CALL                             R71 3 1
      950 JUMP                             ; [+1]
      951 LOADNIL                          R71
      952 SETTABLEKS                       R71 R70 K138 ["ShiftOverlay"]
      954 GETUPVAL                         R71 2
      955 GETTABLEKS                       R71 R71 K83 ["createElement"]
      957 LOADK                            R72 K131 ["UIStroke"]
      958 DUPTABLE                         R73 K133 [{"Color", "Thickness", "Transparency"}]
      959 GETTABLEKS                       R74 R56 K64 ["Color3"]
      961 SETTABLEKS                       R74 R73 K52 ["Color"]
      963 SETTABLEKS                       R24 R73 K132 ["Thickness"]
      965 JUMPIFNOT                        R48 ; [+2]
      966 LOADN                            R74 0
      967 JUMP                             ; [+8]
      968 JUMPIFNOT                        R59 ; [+2]
      969 LOADN                            R74 1
      970 JUMP                             ; [+5]
      971 GETTABLEKS                       R75 R56 K71 ["Transparency"]
      973 GETTABLEKS                       R76 R56 K71 ["Transparency"]
      975 MUL                              R74 R75 R76
      976 SETTABLEKS                       R74 R73 K71 ["Transparency"]
      978 CALL                             R71 2 1
      979 SETTABLEKS                       R71 R70 K29 ["Stroke"]
      981 GETUPVAL                         R71 2
      982 GETTABLEKS                       R71 R71 K83 ["createElement"]
      984 LOADK                            R72 K147 ["TextLabel"]
      985 DUPTABLE                         R73 K156 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextColor3"], ["TextTransparency"], ["TextSize"] = 14, ["Font"], ["TextTruncate"], ["Visible"], ["ZIndex"]}]
      986 GETIMPORT                        R74 K120 [UDim2.fromScale]
      988 LOADN                            R75 1
      989 LOADN                            R76 1
      990 CALL                             R74 2 1
      991 SETTABLEKS                       R74 R73 K26 ["Size"]
      993 GETTABLEKS                       R75 R0 K8 ["GraphPayload"]
      995 GETTABLEKS                       R75 R75 K157 ["name"]
      997 ORK                              R74 R75 K18 [""]
      998 SETTABLEKS                       R74 R73 K148 ["Text"]
     1000 SETTABLEKS                       R55 R73 K149 ["TextColor3"]
     1002 SETTABLEKS                       R60 R73 K150 ["TextTransparency"]
     1004 GETIMPORT                        R74 K160 [Enum.Font.GothamMedium]
     1006 SETTABLEKS                       R74 R73 K153 ["Font"]
     1008 GETIMPORT                        R74 K162 [Enum.TextTruncate.AtEnd]
     1010 SETTABLEKS                       R74 R73 K154 ["TextTruncate"]
     1012 GETTABLEKS                       R75 R14 K34 ["enabled"]
     1014 NOT                              R74 R75
     1015 SETTABLEKS                       R74 R73 K155 ["Visible"]
     1017 MOVE                             R74 R62
     1018 CALL                             R74 0 1
     1019 SETTABLEKS                       R74 R73 K97 ["ZIndex"]
     1021 CALL                             R71 2 1
     1022 SETTABLEKS                       R71 R70 K139 ["Label"]
     1024 GETUPVAL                         R71 2
     1025 GETTABLEKS                       R71 R71 K83 ["createElement"]
     1027 GETUPVAL                         R72 0
     1028 GETTABLEKS                       R72 R72 K163 ["TextInput"]
     1030 DUPTABLE                         R73 K173 [{["AnchorPoint"], ["Position"], ["width"], ["size"], ["variant"], ["label"] = "", ["text"], ["onChanged"], ["onFocusLost"], ["focusBehavior"], ["textBoxRef"], ["ref"], ["Visible"], ["ZIndex"]}]
     1031 GETIMPORT                        R74 K88 [Vector2.new]
     1033 LOADK                            R75 K89 [0.5]
     1034 LOADK                            R76 K89 [0.5]
     1035 CALL                             R74 2 1
     1036 SETTABLEKS                       R74 R73 K90 ["AnchorPoint"]
     1038 GETIMPORT                        R74 K120 [UDim2.fromScale]
     1040 LOADK                            R75 K89 [0.5]
     1041 LOADK                            R76 K89 [0.5]
     1042 CALL                             R74 2 1
     1043 SETTABLEKS                       R74 R73 K25 ["Position"]
     1045 GETIMPORT                        R74 K128 [UDim.new]
     1047 LOADN                            R75 0
     1048 GETUPVAL                         R77 8
     1049 GETTABLEKS                       R77 R77 K94 ["X"]
     1051 SUBK                             R76 R77 K174 [16]
     1052 CALL                             R74 2 1
     1053 SETTABLEKS                       R74 R73 K164 ["width"]
     1055 GETUPVAL                         R74 0
     1056 GETTABLEKS                       R74 R74 K61 ["Enums"]
     1058 GETTABLEKS                       R74 R74 K175 ["InputSize"]
     1060 GETTABLEKS                       R74 R74 K176 ["XSmall"]
     1062 SETTABLEKS                       R74 R73 K165 ["size"]
     1064 GETUPVAL                         R74 0
     1065 GETTABLEKS                       R74 R74 K61 ["Enums"]
     1067 GETTABLEKS                       R74 R74 K177 ["InputVariant"]
     1069 GETTABLEKS                       R74 R74 K178 ["Utility"]
     1071 SETTABLEKS                       R74 R73 K166 ["variant"]
     1073 SETTABLEKS                       R15 R73 K168 ["text"]
     1075 SETTABLEKS                       R16 R73 K169 ["onChanged"]
     1077 SETTABLEKS                       R27 R73 K170 ["onFocusLost"]
     1079 GETUPVAL                         R74 0
     1080 GETTABLEKS                       R74 R74 K61 ["Enums"]
     1082 GETTABLEKS                       R74 R74 K179 ["InputFocusBehavior"]
     1084 GETTABLEKS                       R74 R74 K180 ["Highlight"]
     1086 SETTABLEKS                       R74 R73 K171 ["focusBehavior"]
     1088 SETTABLEKS                       R17 R73 K172 ["textBoxRef"]
     1090 SETTABLEKS                       R17 R73 K85 ["ref"]
     1092 GETTABLEKS                       R74 R14 K34 ["enabled"]
     1094 SETTABLEKS                       R74 R73 K155 ["Visible"]
     1096 MOVE                             R74 R62
     1097 CALL                             R74 0 1
     1098 SETTABLEKS                       R74 R73 K97 ["ZIndex"]
     1100 CALL                             R71 2 1
     1101 SETTABLEKS                       R71 R70 K140 ["RenameInput"]
     1103 GETUPVAL                         R71 2
     1104 GETTABLEKS                       R71 R71 K83 ["createElement"]
     1106 LOADK                            R72 K181 ["UIDragDetector"]
     1107 NEWTABLE                         R73 8 0
     1109 GETUPVAL                         R74 12
     1110 SETTABLEKS                       R74 R73 K182 ["DragStyle"]
     1112 GETUPVAL                         R74 13
     1113 SETTABLEKS                       R74 R73 K183 ["ResponseStyle"]
     1115 GETTABLEKS                       R74 R3 K184 ["getViewport"]
     1117 CALL                             R74 0 1
     1118 SETTABLEKS                       R74 R73 K185 ["ReferenceUIInstance"]
     1120 GETUPVAL                         R74 2
     1121 GETTABLEKS                       R74 R74 K136 ["Event"]
     1123 GETTABLEKS                       R74 R74 K186 ["DragStart"]
     1125 SETTABLE                         R29 R73 R74
     1126 GETUPVAL                         R74 2
     1127 GETTABLEKS                       R74 R74 K136 ["Event"]
     1129 GETTABLEKS                       R74 R74 K187 ["DragContinue"]
     1131 SETTABLE                         R30 R73 R74
     1132 GETUPVAL                         R74 2
     1133 GETTABLEKS                       R74 R74 K136 ["Event"]
     1135 GETTABLEKS                       R74 R74 K188 ["DragEnd"]
     1137 SETTABLE                         R31 R73 R74
     1138 CALL                             R71 2 1
     1139 SETTABLEKS                       R71 R70 K141 ["MoveDrag"]
     1141 CALL                             R67 3 1
     1142 SETTABLEKS                       R67 R66 K104 ["Box"]
     1144 GETUPVAL                         R67 2
     1145 GETTABLEKS                       R67 R67 K83 ["createElement"]
     1147 LOADK                            R68 K84 ["Frame"]
     1148 NEWTABLE                         R69 8 0
     1150 LOADB                            R70 0
     1151 SETTABLEKS                       R70 R69 K189 ["Active"]
     1153 GETIMPORT                        R70 K88 [Vector2.new]
     1155 LOADK                            R71 K89 [0.5]
     1156 LOADK                            R72 K89 [0.5]
     1157 CALL                             R70 2 1
     1158 SETTABLEKS                       R70 R69 K90 ["AnchorPoint"]
     1160 GETIMPORT                        R70 K120 [UDim2.fromScale]
     1162 LOADK                            R71 K89 [0.5]
     1163 LOADK                            R72 K89 [0.5]
     1164 CALL                             R70 2 1
     1165 SETTABLEKS                       R70 R69 K25 ["Position"]
     1167 GETIMPORT                        R70 K121 [UDim2.new]
     1169 LOADN                            R71 1
     1170 LOADN                            R72 76
     1171 LOADN                            R73 1
     1172 LOADN                            R74 76
     1173 CALL                             R70 4 1
     1174 SETTABLEKS                       R70 R69 K26 ["Size"]
     1176 LOADN                            R70 1
     1177 SETTABLEKS                       R70 R69 K96 ["BackgroundTransparency"]
     1179 MOVE                             R70 R62
     1180 CALL                             R70 0 1
     1181 SETTABLEKS                       R70 R69 K97 ["ZIndex"]
     1183 GETUPVAL                         R70 2
     1184 GETTABLEKS                       R70 R70 K136 ["Event"]
     1186 GETTABLEKS                       R70 R70 K190 ["MouseMoved"]
     1188 SETTABLE                         R41 R69 R70
     1189 GETUPVAL                         R70 2
     1190 GETTABLEKS                       R70 R70 K136 ["Event"]
     1192 GETTABLEKS                       R70 R70 K191 ["MouseLeave"]
     1194 SETTABLE                         R42 R69 R70
     1195 CALL                             R67 2 1
     1196 SETTABLEKS                       R67 R66 K105 ["Detection"]
     1198 JUMPIFNOT                        R32 ; [+89]
     1199 GETUPVAL                         R67 2
     1200 GETTABLEKS                       R67 R67 K83 ["createElement"]
     1202 LOADK                            R68 K192 ["ImageButton"]
     1203 NEWTABLE                         R69 8 0
     1205 GETIMPORT                        R70 K88 [Vector2.new]
     1207 LOADK                            R71 K89 [0.5]
     1208 LOADK                            R72 K89 [0.5]
     1209 CALL                             R70 2 1
     1210 SETTABLEKS                       R70 R69 K90 ["AnchorPoint"]
     1212 GETIMPORT                        R70 K120 [UDim2.fromScale]
     1214 LOADK                            R71 K89 [0.5]
     1215 LOADK                            R72 K89 [0.5]
     1216 CALL                             R70 2 1
     1217 SETTABLEKS                       R70 R69 K25 ["Position"]
     1219 GETIMPORT                        R70 K121 [UDim2.new]
     1221 LOADN                            R71 1
     1222 LOADN                            R72 60
     1223 LOADN                            R73 1
     1224 LOADN                            R74 60
     1225 CALL                             R70 4 1
     1226 SETTABLEKS                       R70 R69 K26 ["Size"]
     1228 LOADN                            R70 1
     1229 SETTABLEKS                       R70 R69 K96 ["BackgroundTransparency"]
     1231 MOVE                             R70 R62
     1232 CALL                             R70 0 1
     1233 SETTABLEKS                       R70 R69 K97 ["ZIndex"]
     1235 GETUPVAL                         R70 2
     1236 GETTABLEKS                       R70 R70 K136 ["Event"]
     1238 GETTABLEKS                       R70 R70 K190 ["MouseMoved"]
     1240 SETTABLE                         R41 R69 R70
     1241 GETUPVAL                         R70 2
     1242 GETTABLEKS                       R70 R70 K136 ["Event"]
     1244 GETTABLEKS                       R70 R70 K191 ["MouseLeave"]
     1246 SETTABLE                         R42 R69 R70
     1247 DUPTABLE                         R70 K194 [{"ConnectDrag"}]
     1248 GETUPVAL                         R71 2
     1249 GETTABLEKS                       R71 R71 K83 ["createElement"]
     1251 LOADK                            R72 K181 ["UIDragDetector"]
     1252 NEWTABLE                         R73 8 0
     1254 GETUPVAL                         R74 12
     1255 SETTABLEKS                       R74 R73 K182 ["DragStyle"]
     1257 GETUPVAL                         R74 13
     1258 SETTABLEKS                       R74 R73 K183 ["ResponseStyle"]
     1260 GETTABLEKS                       R74 R3 K184 ["getViewport"]
     1262 CALL                             R74 0 1
     1263 SETTABLEKS                       R74 R73 K185 ["ReferenceUIInstance"]
     1265 GETUPVAL                         R74 2
     1266 GETTABLEKS                       R74 R74 K136 ["Event"]
     1268 GETTABLEKS                       R74 R74 K186 ["DragStart"]
     1270 SETTABLE                         R43 R73 R74
     1271 GETUPVAL                         R74 2
     1272 GETTABLEKS                       R74 R74 K136 ["Event"]
     1274 GETTABLEKS                       R74 R74 K187 ["DragContinue"]
     1276 SETTABLE                         R44 R73 R74
     1277 GETUPVAL                         R74 2
     1278 GETTABLEKS                       R74 R74 K136 ["Event"]
     1280 GETTABLEKS                       R74 R74 K188 ["DragEnd"]
     1282 SETTABLE                         R45 R73 R74
     1283 CALL                             R71 2 1
     1284 SETTABLEKS                       R71 R70 K193 ["ConnectDrag"]
     1286 CALL                             R67 3 1
     1287 JUMP                             ; [+1]
     1288 LOADNIL                          R67
     1289 SETTABLEKS                       R67 R66 K106 ["ConnectSurface"]
     1291 CALL                             R63 3 -1
     1292 RETURN                           R63 -1

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
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R3
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
