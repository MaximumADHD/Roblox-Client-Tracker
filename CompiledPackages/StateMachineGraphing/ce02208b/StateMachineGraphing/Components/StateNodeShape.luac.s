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
       56 GETUPVAL                         R9 6
       57 GETTABLEKS                       R9 R9 K8 ["ContextServices"]
       59 GETTABLEKS                       R9 R9 K9 ["Localization"]
       61 NAMECALL                         R9 R9 K10 ["use"]
       63 CALL                             R9 1 1
       64 GETTABLEKS                       R10 R0 K11 ["GraphPayload"]
       66 GETTABLEKS                       R10 R10 K12 ["id"]
       68 GETUPVAL                         R11 2
       69 GETTABLEKS                       R11 R11 K13 ["useMemo"]
       71 NEWCLOSURE                       R12 P0
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R10
       74 NEWTABLE                         R13 0 2
       76 GETTABLEKS                       R14 R8 K14 ["observeNodePropsById"]
       78 MOVE                             R15 R10
       79 SETLIST                          R13 R14 2 [1]
       81 CALL                             R11 2 1
       82 GETUPVAL                         R12 7
       83 GETTABLEKS                       R12 R12 K15 ["useSignalState"]
       85 MOVE                             R13 R11
       86 CALL                             R12 1 1
       87 LOADB                            R13 0
       88 JUMPIFEQKNIL                     R12 ; [+12]
       90 LOADB                            R13 1
       91 GETTABLEKS                       R14 R12 K16 ["isStart"]
       93 JUMPIFEQKB                       R14 TRUE ; [+7]
       95 GETTABLEKS                       R14 R12 K17 ["isAny"]
       97 JUMPIFEQKB                       R14 TRUE ; [+2]
       99 LOADB                            R13 0 +1
      100 LOADB                            R13 1
      101 LOADB                            R14 1
      102 JUMPIFEQKNIL                     R12 ; [+7]
      104 GETTABLEKS                       R15 R12 K18 ["canStartTransition"]
      106 JUMPIFNOTEQKB                    R15 FALSE ; [+2]
      108 LOADB                            R14 0 +1
      109 LOADB                            R14 1
      110 GETTABLEKS                       R16 R0 K11 ["GraphPayload"]
      112 GETTABLEKS                       R16 R16 K20 ["name"]
      114 ORK                              R15 R16 K19 [""]
      115 GETUPVAL                         R16 8
      116 CALL                             R16 0 1
      117 JUMPIFNOT                        R16 ; [+25]
      118 JUMPIFEQKNIL                     R12 ; [+24]
      120 GETTABLEKS                       R16 R12 K16 ["isStart"]
      122 JUMPIFNOT                        R16 ; [+9]
      123 LOADK                            R18 K21 ["Common"]
      124 LOADK                            R19 K22 ["StateMachineGraphing"]
      125 LOADK                            R20 K23 ["SyntheticState"]
      126 LOADK                            R21 K24 ["Entry"]
      127 NAMECALL                         R16 R9 K25 ["getExternalText"]
      129 CALL                             R16 5 1
      130 MOVE                             R15 R16
      131 JUMP                             ; [+11]
      132 GETTABLEKS                       R16 R12 K17 ["isAny"]
      134 JUMPIFNOT                        R16 ; [+8]
      135 LOADK                            R18 K21 ["Common"]
      136 LOADK                            R19 K22 ["StateMachineGraphing"]
      137 LOADK                            R20 K23 ["SyntheticState"]
      138 LOADK                            R21 K26 ["Any"]
      139 NAMECALL                         R16 R9 K25 ["getExternalText"]
      141 CALL                             R16 5 1
      142 MOVE                             R15 R16
      143 GETUPVAL                         R16 9
      144 GETTABLEKS                       R16 R16 K27 ["useToggleState"]
      146 LOADB                            R17 0
      147 CALL                             R16 1 1
      148 GETUPVAL                         R17 2
      149 GETTABLEKS                       R17 R17 K28 ["useBinding"]
      151 LOADK                            R18 K19 [""]
      152 CALL                             R17 1 2
      153 GETUPVAL                         R19 2
      154 GETTABLEKS                       R19 R19 K29 ["useRef"]
      156 LOADNIL                          R20
      157 CALL                             R19 1 1
      158 GETUPVAL                         R20 2
      159 GETTABLEKS                       R20 R20 K29 ["useRef"]
      161 LOADN                            R21 0
      162 CALL                             R20 1 1
      163 GETUPVAL                         R21 2
      164 GETTABLEKS                       R21 R21 K29 ["useRef"]
      166 LOADB                            R22 0
      167 CALL                             R21 1 1
      168 GETUPVAL                         R22 2
      169 GETTABLEKS                       R22 R22 K29 ["useRef"]
      171 LOADNIL                          R23
      172 CALL                             R22 1 1
      173 GETUPVAL                         R23 2
      174 GETTABLEKS                       R23 R23 K30 ["useCallback"]
      176 NEWCLOSURE                       R24 P1
      177 CAPTURE                          UPVAL U10
      178 CAPTURE                          VAL R0
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R10
      181 NEWTABLE                         R25 0 3
      183 GETTABLEKS                       R26 R6 K31 ["report"]
      185 MOVE                             R27 R10
      186 GETTABLEKS                       R28 R0 K32 ["Selected"]
      188 SETLIST                          R25 R26 3 [1]
      190 CALL                             R23 2 1
      191 GETUPVAL                         R24 2
      192 GETTABLEKS                       R24 R24 K33 ["useEffect"]
      194 NEWCLOSURE                       R25 P2
      195 CAPTURE                          VAL R22
      196 CAPTURE                          VAL R23
      197 NEWTABLE                         R26 0 1
      199 MOVE                             R27 R23
      200 SETLIST                          R26 R27 1 [1]
      202 CALL                             R24 2 0
      203 GETUPVAL                         R24 2
      204 GETTABLEKS                       R24 R24 K33 ["useEffect"]
      206 NEWCLOSURE                       R25 P3
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R10
      209 NEWTABLE                         R26 0 2
      211 GETTABLEKS                       R27 R6 K31 ["report"]
      213 MOVE                             R28 R10
      214 SETLIST                          R26 R27 2 [1]
      216 CALL                             R24 2 0
      217 GETUPVAL                         R24 1
      218 GETTABLEKS                       R24 R24 K34 ["useViewportBinding"]
      220 NEWCLOSURE                       R25 P4
      221 CAPTURE                          VAL R0
      222 NEWTABLE                         R26 0 2
      224 GETTABLEKS                       R27 R0 K35 ["Position"]
      226 GETTABLEKS                       R28 R0 K36 ["Size"]
      228 SETLIST                          R26 R27 2 [1]
      230 CALL                             R24 2 1
      231 GETUPVAL                         R25 7
      232 GETTABLEKS                       R25 R25 K37 ["useSignalBinding"]
      234 GETTABLEKS                       R26 R4 K38 ["observeZoomRatio"]
      236 CALL                             R25 1 1
      237 GETUPVAL                         R26 2
      238 GETTABLEKS                       R26 R26 K13 ["useMemo"]
      240 NEWCLOSURE                       R27 P5
      241 CAPTURE                          VAL R25
      242 CAPTURE                          VAL R1
      243 NEWTABLE                         R28 0 2
      245 MOVE                             R29 R25
      246 GETTABLEKS                       R30 R1 K39 ["Stroke"]
      248 GETTABLEKS                       R30 R30 K40 ["Standard"]
      250 SETLIST                          R28 R29 2 [1]
      252 CALL                             R26 2 1
      253 GETUPVAL                         R27 2
      254 GETTABLEKS                       R27 R27 K30 ["useCallback"]
      256 NEWCLOSURE                       R28 P6
      257 CAPTURE                          VAL R3
      258 NEWTABLE                         R29 0 1
      260 MOVE                             R30 R3
      261 SETLIST                          R29 R30 1 [1]
      263 CALL                             R27 2 1
      264 GETUPVAL                         R28 9
      265 GETTABLEKS                       R28 R28 K41 ["useEventCallback"]
      267 NEWCLOSURE                       R29 P7
      268 CAPTURE                          VAL R18
      269 CAPTURE                          VAL R0
      270 CAPTURE                          VAL R16
      271 CAPTURE                          VAL R19
      272 CALL                             R28 1 1
      273 GETUPVAL                         R29 9
      274 GETTABLEKS                       R29 R29 K41 ["useEventCallback"]
      276 NEWCLOSURE                       R30 P8
      277 CAPTURE                          VAL R17
      278 CAPTURE                          VAL R16
      279 CAPTURE                          VAL R8
      280 CAPTURE                          VAL R10
      281 CALL                             R29 1 1
      282 GETUPVAL                         R30 2
      283 GETTABLEKS                       R30 R30 K30 ["useCallback"]
      285 NEWCLOSURE                       R31 P9
      286 CAPTURE                          VAL R8
      287 CAPTURE                          VAL R10
      288 NEWTABLE                         R32 0 2
      290 GETTABLEKS                       R33 R8 K42 ["selectNodes"]
      292 MOVE                             R34 R10
      293 SETLIST                          R32 R33 2 [1]
      295 CALL                             R30 2 1
      296 GETUPVAL                         R31 2
      297 GETTABLEKS                       R31 R31 K30 ["useCallback"]
      299 NEWCLOSURE                       R32 P10
      300 CAPTURE                          VAL R16
      301 CAPTURE                          VAL R13
      302 CAPTURE                          VAL R20
      303 CAPTURE                          VAL R21
      304 CAPTURE                          VAL R28
      305 CAPTURE                          VAL R0
      306 CAPTURE                          VAL R27
      307 NEWTABLE                         R33 0 5
      309 GETTABLEKS                       R34 R0 K43 ["OnDragStart"]
      311 MOVE                             R35 R27
      312 MOVE                             R36 R13
      313 GETTABLEKS                       R37 R16 K44 ["enabled"]
      315 MOVE                             R38 R28
      316 SETLIST                          R33 R34 5 [1]
      318 CALL                             R31 2 1
      319 GETUPVAL                         R32 2
      320 GETTABLEKS                       R32 R32 K30 ["useCallback"]
      322 NEWCLOSURE                       R33 P11
      323 CAPTURE                          VAL R21
      324 CAPTURE                          VAL R0
      325 CAPTURE                          VAL R27
      326 NEWTABLE                         R34 0 2
      328 GETTABLEKS                       R35 R0 K45 ["OnDragMoved"]
      330 MOVE                             R36 R27
      331 SETLIST                          R34 R35 2 [1]
      333 CALL                             R32 2 1
      334 GETUPVAL                         R33 2
      335 GETTABLEKS                       R33 R33 K30 ["useCallback"]
      337 NEWCLOSURE                       R34 P12
      338 CAPTURE                          VAL R21
      339 CAPTURE                          VAL R0
      340 CAPTURE                          VAL R27
      341 NEWTABLE                         R35 0 2
      343 GETTABLEKS                       R36 R0 K46 ["OnDragEnded"]
      345 MOVE                             R37 R27
      346 SETLIST                          R35 R36 2 [1]
      348 CALL                             R33 2 1
      349 GETUPVAL                         R34 2
      350 GETTABLEKS                       R34 R34 K47 ["useState"]
      352 LOADNIL                          R35
      353 CALL                             R34 1 2
      354 GETUPVAL                         R36 2
      355 GETTABLEKS                       R36 R36 K47 ["useState"]
      357 LOADN                            R37 0
      358 CALL                             R36 1 2
      359 GETUPVAL                         R38 2
      360 GETTABLEKS                       R38 R38 K47 ["useState"]
      362 LOADB                            R39 0
      363 CALL                             R38 1 2
      364 GETUPVAL                         R40 2
      365 GETTABLEKS                       R40 R40 K29 ["useRef"]
      367 LOADB                            R41 0
      368 CALL                             R40 1 1
      369 GETUPVAL                         R41 2
      370 GETTABLEKS                       R41 R41 K3 ["useContext"]
      372 GETUPVAL                         R42 1
      373 GETTABLEKS                       R42 R42 K48 ["NodeSelectionBoxDragContext"]
      375 GETTABLEKS                       R42 R42 K6 ["Context"]
      377 CALL                             R41 1 1
      378 GETUPVAL                         R42 2
      379 GETTABLEKS                       R42 R42 K29 ["useRef"]
      381 LOADB                            R43 0
      382 CALL                             R42 1 1
      383 GETTABLEKS                       R44 R41 K49 ["selectionStart"]
      385 JUMPIFNOTEQKNIL                  R44 ; [+2]
      387 LOADB                            R43 0 +1
      388 LOADB                            R43 1
      389 SETTABLEKS                       R43 R42 K50 ["current"]
      391 GETUPVAL                         R43 2
      392 GETTABLEKS                       R43 R43 K30 ["useCallback"]
      394 NEWCLOSURE                       R44 P13
      395 CAPTURE                          VAL R40
      396 CAPTURE                          VAL R42
      397 CAPTURE                          VAL R35
      398 CAPTURE                          VAL R39
      399 CAPTURE                          VAL R5
      400 CAPTURE                          VAL R22
      401 CAPTURE                          UPVAL U11
      402 CAPTURE                          VAL R14
      403 CAPTURE                          UPVAL U12
      404 CAPTURE                          VAL R6
      405 CAPTURE                          VAL R10
      406 CAPTURE                          VAL R37
      407 NEWTABLE                         R45 0 5
      409 GETTABLEKS                       R46 R5 K51 ["observePending"]
      411 GETTABLEKS                       R47 R5 K52 ["setPinActive"]
      413 MOVE                             R48 R14
      414 GETTABLEKS                       R49 R6 K53 ["observeGeometry"]
      416 MOVE                             R50 R10
      417 SETLIST                          R45 R46 5 [1]
      419 CALL                             R43 2 1
      420 GETUPVAL                         R44 2
      421 GETTABLEKS                       R44 R44 K30 ["useCallback"]
      423 NEWCLOSURE                       R45 P14
      424 CAPTURE                          VAL R40
      425 CAPTURE                          VAL R35
      426 CAPTURE                          VAL R39
      427 CAPTURE                          VAL R5
      428 NEWTABLE                         R46 0 1
      430 GETTABLEKS                       R47 R5 K52 ["setPinActive"]
      432 SETLIST                          R46 R47 1 [1]
      434 CALL                             R44 2 1
      435 GETUPVAL                         R45 2
      436 GETTABLEKS                       R45 R45 K30 ["useCallback"]
      438 NEWCLOSURE                       R46 P15
      439 CAPTURE                          VAL R40
      440 CAPTURE                          VAL R5
      441 CAPTURE                          VAL R10
      442 NEWTABLE                         R47 0 2
      444 GETTABLEKS                       R48 R5 K54 ["startConnect"]
      446 MOVE                             R49 R10
      447 SETLIST                          R47 R48 2 [1]
      449 CALL                             R45 2 1
      450 GETUPVAL                         R46 2
      451 GETTABLEKS                       R46 R46 K30 ["useCallback"]
      453 NEWCLOSURE                       R47 P16
      454 CAPTURE                          VAL R5
      455 NEWTABLE                         R48 0 1
      457 GETTABLEKS                       R49 R5 K55 ["updateConnect"]
      459 SETLIST                          R48 R49 1 [1]
      461 CALL                             R46 2 1
      462 GETUPVAL                         R47 2
      463 GETTABLEKS                       R47 R47 K30 ["useCallback"]
      465 NEWCLOSURE                       R48 P17
      466 CAPTURE                          VAL R40
      467 CAPTURE                          VAL R35
      468 CAPTURE                          VAL R5
      469 CAPTURE                          VAL R27
      470 NEWTABLE                         R49 0 3
      472 GETTABLEKS                       R50 R5 K56 ["endConnect"]
      474 GETTABLEKS                       R51 R5 K52 ["setPinActive"]
      476 MOVE                             R52 R27
      477 SETLIST                          R49 R50 3 [1]
      479 CALL                             R47 2 1
      480 GETTABLEKS                       R50 R7 K57 ["activeStateIds"]
      482 GETTABLE                         R49 R50 R10
      483 JUMPIFEQKB                       R49 TRUE ; [+2]
      485 LOADB                            R48 0 +1
      486 LOADB                            R48 1
      487 MOVE                             R49 R48
      488 JUMPIFNOT                        R49 ; [+6]
      489 GETTABLEKS                       R50 R7 K58 ["activeStyle"]
      491 JUMPIFEQKS                       R50 K59 ["invertFill"] ; [+2]
      493 LOADB                            R49 0 +1
      494 LOADB                            R49 1
      495 MOVE                             R50 R48
      496 JUMPIFNOT                        R50 ; [+6]
      497 GETTABLEKS                       R51 R7 K58 ["activeStyle"]
      499 JUMPIFEQKS                       R51 K60 ["outline"] ; [+2]
      501 LOADB                            R50 0 +1
      502 LOADB                            R50 1
      503 JUMPIFNOT                        R48 ; [+46]
      504 GETTABLEKS                       R52 R7 K58 ["activeStyle"]
      506 JUMPIFNOTEQKS                    R52 K61 ["shift100"] ; [+8]
      508 GETTABLEKS                       R51 R1 K62 ["Color"]
      510 GETTABLEKS                       R51 R51 K63 ["Shift"]
      512 GETTABLEKS                       R51 R51 K64 ["Shift_100"]
      514 JUMP                             ; [+36]
      515 GETTABLEKS                       R52 R7 K58 ["activeStyle"]
      517 JUMPIFNOTEQKS                    R52 K65 ["shift200"] ; [+8]
      519 GETTABLEKS                       R51 R1 K62 ["Color"]
      521 GETTABLEKS                       R51 R51 K63 ["Shift"]
      523 GETTABLEKS                       R51 R51 K66 ["Shift_200"]
      525 JUMP                             ; [+25]
      526 GETTABLEKS                       R52 R7 K58 ["activeStyle"]
      528 JUMPIFNOTEQKS                    R52 K67 ["shift300"] ; [+8]
      530 GETTABLEKS                       R51 R1 K62 ["Color"]
      532 GETTABLEKS                       R51 R51 K63 ["Shift"]
      534 GETTABLEKS                       R51 R51 K68 ["Shift_300"]
      536 JUMP                             ; [+14]
      537 GETTABLEKS                       R52 R7 K58 ["activeStyle"]
      539 JUMPIFNOTEQKS                    R52 K69 ["shift400"] ; [+8]
      541 GETTABLEKS                       R51 R1 K62 ["Color"]
      543 GETTABLEKS                       R51 R51 K63 ["Shift"]
      545 GETTABLEKS                       R51 R51 K70 ["Shift_400"]
      547 JUMP                             ; [+3]
      548 LOADNIL                          R51
      549 JUMP                             ; [+1]
      550 LOADNIL                          R51
      551 MOVE                             R52 R51
      552 JUMPIF                           R52 ; [+9]
      553 JUMPIFNOT                        R38 ; [+7]
      554 GETTABLEKS                       R52 R1 K62 ["Color"]
      556 GETTABLEKS                       R52 R52 K63 ["Shift"]
      558 GETTABLEKS                       R52 R52 K64 ["Shift_100"]
      560 JUMP                             ; [+1]
      561 LOADNIL                          R52
      562 GETUPVAL                         R54 0
      563 GETTABLEKS                       R54 R54 K71 ["Enums"]
      565 GETTABLEKS                       R54 R54 K72 ["Theme"]
      567 GETTABLEKS                       R54 R54 K73 ["Dark"]
      569 JUMPIFNOTEQ                      R2 R54 ; [+8]
      571 GETIMPORT                        R53 K76 [Color3.fromRGB]
      573 LOADN                            R54 113
      574 LOADN                            R55 4
      575 LOADN                            R56 55
      576 CALL                             R53 3 1
      577 JUMP                             ; [+6]
      578 GETIMPORT                        R53 K76 [Color3.fromRGB]
      580 LOADN                            R54 251
      581 LOADN                            R55 188
      582 LOADN                            R56 208
      583 CALL                             R53 3 1
      584 GETTABLEKS                       R54 R1 K62 ["Color"]
      586 GETTABLEKS                       R54 R54 K77 ["Surface"]
      588 GETTABLEKS                       R54 R54 K78 ["Surface_200"]
      590 JUMPIFNOT                        R49 ; [+9]
      591 GETTABLEKS                       R55 R1 K62 ["Color"]
      593 GETTABLEKS                       R55 R55 K79 ["Content"]
      595 GETTABLEKS                       R55 R55 K80 ["Emphasis"]
      597 GETTABLEKS                       R55 R55 K74 ["Color3"]
      599 JUMP                             ; [+5]
      600 JUMPIFNOT                        R13 ; [+2]
      601 MOVE                             R55 R53
      602 JUMP                             ; [+2]
      603 GETTABLEKS                       R55 R54 K74 ["Color3"]
      605 JUMPIF                           R49 ; [+1]
      606 JUMPIFNOT                        R13 ; [+2]
      607 LOADN                            R56 0
      608 JUMP                             ; [+2]
      609 GETTABLEKS                       R56 R54 K81 ["Transparency"]
      611 JUMPIFNOT                        R49 ; [+3]
      612 GETTABLEKS                       R57 R54 K74 ["Color3"]
      614 JUMP                             ; [+8]
      615 GETTABLEKS                       R57 R1 K62 ["Color"]
      617 GETTABLEKS                       R57 R57 K79 ["Content"]
      619 GETTABLEKS                       R57 R57 K80 ["Emphasis"]
      621 GETTABLEKS                       R57 R57 K74 ["Color3"]
      623 JUMPIFNOT                        R50 ; [+9]
      624 GETTABLEKS                       R58 R1 K62 ["Color"]
      626 GETTABLEKS                       R58 R58 K82 ["Extended"]
      628 GETTABLEKS                       R58 R58 K83 ["White"]
      630 GETTABLEKS                       R58 R58 K84 ["White_100"]
      632 JUMP                             ; [+6]
      633 GETTABLEKS                       R58 R1 K62 ["Color"]
      635 GETTABLEKS                       R58 R58 K39 ["Stroke"]
      637 GETTABLEKS                       R58 R58 K85 ["Default"]
      639 GETTABLEKS                       R60 R7 K86 ["selectionStyle"]
      641 JUMPIFNOTEQKS                    R60 K87 ["white"] ; [+10]
      643 GETTABLEKS                       R59 R1 K62 ["Color"]
      645 GETTABLEKS                       R59 R59 K82 ["Extended"]
      647 GETTABLEKS                       R59 R59 K83 ["White"]
      649 GETTABLEKS                       R59 R59 K84 ["White_100"]
      651 JUMP                             ; [+6]
      652 GETTABLEKS                       R59 R1 K62 ["Color"]
      654 GETTABLEKS                       R59 R59 K88 ["System"]
      656 GETTABLEKS                       R59 R59 K80 ["Emphasis"]
      658 GETUPVAL                         R60 7
      659 GETTABLEKS                       R60 R60 K15 ["useSignalState"]
      661 GETTABLEKS                       R61 R5 K51 ["observePending"]
      663 CALL                             R60 1 1
      664 LOADB                            R61 0
      665 JUMPIFEQKNIL                     R60 ; [+13]
      667 LOADB                            R61 0
      668 GETTABLEKS                       R62 R60 K89 ["fromStateId"]
      670 JUMPIFEQ                         R62 R10 ; [+8]
      672 GETTABLEKS                       R62 R5 K90 ["isValidTarget"]
      674 GETTABLEKS                       R63 R60 K89 ["fromStateId"]
      676 MOVE                             R64 R10
      677 CALL                             R62 2 1
      678 NOT                              R61 R62
      679 JUMPIFNOT                        R61 ; [+2]
      680 LOADK                            R62 K91 [0.6]
      681 JUMP                             ; [+1]
      682 LOADN                            R62 0
      683 LOADB                            R63 0
      684 JUMPIFEQKNIL                     R34 ; [+10]
      686 LOADB                            R63 0
      687 JUMPIFNOTEQKNIL                  R60 ; [+7]
      689 GETTABLEKS                       R64 R41 K49 ["selectionStart"]
      691 JUMPIFEQKNIL                     R64 ; [+2]
      693 LOADB                            R63 0 +1
      694 LOADB                            R63 1
      695 GETUPVAL                         R64 9
      696 GETTABLEKS                       R64 R64 K92 ["createNextOrder"]
      698 CALL                             R64 0 1
      699 GETUPVAL                         R65 2
      700 GETTABLEKS                       R65 R65 K93 ["createElement"]
      702 LOADK                            R66 K94 ["Frame"]
      703 NEWTABLE                         R67 8 0
      705 SETTABLEKS                       R22 R67 K95 ["ref"]
      707 GETIMPORT                        R68 K98 [Vector2.new]
      709 LOADK                            R69 K99 [0.5]
      710 LOADK                            R70 K99 [0.5]
      711 CALL                             R68 2 1
      712 SETTABLEKS                       R68 R67 K100 ["AnchorPoint"]
      714 SETTABLEKS                       R24 R67 K35 ["Position"]
      716 GETIMPORT                        R68 K103 [UDim2.fromOffset]
      718 GETUPVAL                         R69 10
      719 GETTABLEKS                       R69 R69 K104 ["X"]
      721 GETUPVAL                         R70 10
      722 GETTABLEKS                       R70 R70 K105 ["Y"]
      724 CALL                             R68 2 1
      725 SETTABLEKS                       R68 R67 K36 ["Size"]
      727 LOADN                            R68 1
      728 SETTABLEKS                       R68 R67 K106 ["BackgroundTransparency"]
      730 GETTABLEKS                       R68 R0 K107 ["ZIndex"]
      732 SETTABLEKS                       R68 R67 K107 ["ZIndex"]
      734 GETUPVAL                         R68 2
      735 GETTABLEKS                       R68 R68 K108 ["Change"]
      737 GETTABLEKS                       R68 R68 K109 ["AbsolutePosition"]
      739 SETTABLE                         R23 R67 R68
      740 GETUPVAL                         R68 2
      741 GETTABLEKS                       R68 R68 K108 ["Change"]
      743 GETTABLEKS                       R68 R68 K110 ["AbsoluteSize"]
      745 SETTABLE                         R23 R67 R68
      746 DUPTABLE                         R68 K117 [{"Scale", "Chevron", "SelectionOutline", "Box", "Detection", "ConnectSurface"}]
      747 GETUPVAL                         R69 2
      748 GETTABLEKS                       R69 R69 K93 ["createElement"]
      750 LOADK                            R70 K118 ["UIScale"]
      751 DUPTABLE                         R71 K119 [{"Scale"}]
      752 SETTABLEKS                       R25 R71 K111 ["Scale"]
      754 CALL                             R69 2 1
      755 SETTABLEKS                       R69 R68 K111 ["Scale"]
      757 JUMPIFNOT                        R63 ; [+58]
      758 GETUPVAL                         R69 2
      759 GETTABLEKS                       R69 R69 K93 ["createElement"]
      761 LOADK                            R70 K94 ["Frame"]
      762 DUPTABLE                         R71 K122 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["Rotation"], ["ZIndex"]}]
      763 GETIMPORT                        R72 K98 [Vector2.new]
      765 LOADK                            R73 K99 [0.5]
      766 LOADK                            R74 K99 [0.5]
      767 CALL                             R72 2 1
      768 SETTABLEKS                       R72 R71 K100 ["AnchorPoint"]
      770 GETIMPORT                        R72 K103 [UDim2.fromOffset]
      772 GETTABLEKS                       R73 R34 K104 ["X"]
      774 GETTABLEKS                       R74 R34 K105 ["Y"]
      776 CALL                             R72 2 1
      777 SETTABLEKS                       R72 R71 K35 ["Position"]
      779 GETIMPORT                        R72 K103 [UDim2.fromOffset]
      781 GETUPVAL                         R73 13
      782 GETTABLEKS                       R73 R73 K123 ["SIZE"]
      784 GETUPVAL                         R74 13
      785 GETTABLEKS                       R74 R74 K123 ["SIZE"]
      787 CALL                             R72 2 1
      788 SETTABLEKS                       R72 R71 K36 ["Size"]
      790 SETTABLEKS                       R36 R71 K121 ["Rotation"]
      792 MOVE                             R72 R64
      793 CALL                             R72 0 1
      794 SETTABLEKS                       R72 R71 K107 ["ZIndex"]
      796 GETUPVAL                         R72 13
      797 GETTABLEKS                       R72 R72 K124 ["children"]
      799 GETUPVAL                         R73 13
      800 GETTABLEKS                       R73 R73 K125 ["SCALE"]
      802 GETTABLEKS                       R74 R1 K62 ["Color"]
      804 GETTABLEKS                       R74 R74 K82 ["Extended"]
      806 GETTABLEKS                       R74 R74 K126 ["Gray"]
      808 GETTABLEKS                       R74 R74 K127 ["Gray_600"]
      810 GETTABLEKS                       R74 R74 K74 ["Color3"]
      812 LOADN                            R75 0
      813 CALL                             R72 3 -1
      814 CALL                             R69 -1 1
      815 JUMP                             ; [+1]
      816 LOADNIL                          R69
      817 SETTABLEKS                       R69 R68 K112 ["Chevron"]
      819 GETTABLEKS                       R70 R0 K32 ["Selected"]
      821 JUMPIFNOT                        R70 ; [+71]
      822 GETUPVAL                         R69 2
      823 GETTABLEKS                       R69 R69 K93 ["createElement"]
      825 LOADK                            R70 K94 ["Frame"]
      826 DUPTABLE                         R71 K128 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"]}]
      827 GETIMPORT                        R72 K98 [Vector2.new]
      829 LOADK                            R73 K99 [0.5]
      830 LOADK                            R74 K99 [0.5]
      831 CALL                             R72 2 1
      832 SETTABLEKS                       R72 R71 K100 ["AnchorPoint"]
      834 GETIMPORT                        R72 K130 [UDim2.fromScale]
      836 LOADK                            R73 K99 [0.5]
      837 LOADK                            R74 K99 [0.5]
      838 CALL                             R72 2 1
      839 SETTABLEKS                       R72 R71 K35 ["Position"]
      841 GETIMPORT                        R72 K131 [UDim2.new]
      843 LOADN                            R73 1
      844 LOADN                            R74 8
      845 LOADN                            R75 1
      846 LOADN                            R76 8
      847 CALL                             R72 4 1
      848 SETTABLEKS                       R72 R71 K36 ["Size"]
      850 MOVE                             R72 R64
      851 CALL                             R72 0 1
      852 SETTABLEKS                       R72 R71 K107 ["ZIndex"]
      854 DUPTABLE                         R72 K133 [{"Corner", "Stroke"}]
      855 GETUPVAL                         R73 2
      856 GETTABLEKS                       R73 R73 K93 ["createElement"]
      858 LOADK                            R74 K134 ["UICorner"]
      859 DUPTABLE                         R75 K136 [{"CornerRadius"}]
      860 GETIMPORT                        R76 K138 [UDim.new]
      862 LOADN                            R77 0
      863 GETTABLEKS                       R78 R1 K139 ["Radius"]
      865 GETTABLEKS                       R78 R78 K140 ["Medium"]
      867 CALL                             R76 2 1
      868 SETTABLEKS                       R76 R75 K135 ["CornerRadius"]
      870 CALL                             R73 2 1
      871 SETTABLEKS                       R73 R72 K132 ["Corner"]
      873 GETUPVAL                         R73 2
      874 GETTABLEKS                       R73 R73 K93 ["createElement"]
      876 LOADK                            R74 K141 ["UIStroke"]
      877 DUPTABLE                         R75 K143 [{"Color", "Thickness", "Transparency"}]
      878 GETTABLEKS                       R76 R59 K74 ["Color3"]
      880 SETTABLEKS                       R76 R75 K62 ["Color"]
      882 SETTABLEKS                       R26 R75 K142 ["Thickness"]
      884 GETTABLEKS                       R76 R59 K81 ["Transparency"]
      886 SETTABLEKS                       R76 R75 K81 ["Transparency"]
      888 CALL                             R73 2 1
      889 SETTABLEKS                       R73 R72 K39 ["Stroke"]
      891 CALL                             R69 3 1
      892 JUMP                             ; [+1]
      893 LOADNIL                          R69
      894 SETTABLEKS                       R69 R68 K113 ["SelectionOutline"]
      896 GETUPVAL                         R69 2
      897 GETTABLEKS                       R69 R69 K93 ["createElement"]
      899 LOADK                            R70 K94 ["Frame"]
      900 NEWTABLE                         R71 8 0
      902 GETIMPORT                        R72 K130 [UDim2.fromScale]
      904 LOADN                            R73 1
      905 LOADN                            R74 1
      906 CALL                             R72 2 1
      907 SETTABLEKS                       R72 R71 K36 ["Size"]
      909 SETTABLEKS                       R55 R71 K144 ["BackgroundColor3"]
      911 ADD                              R72 R56 R62
      912 SETTABLEKS                       R72 R71 K106 ["BackgroundTransparency"]
      914 LOADN                            R72 0
      915 SETTABLEKS                       R72 R71 K145 ["BorderSizePixel"]
      917 MOVE                             R72 R64
      918 CALL                             R72 0 1
      919 SETTABLEKS                       R72 R71 K107 ["ZIndex"]
      921 GETUPVAL                         R72 2
      922 GETTABLEKS                       R72 R72 K146 ["Event"]
      924 GETTABLEKS                       R72 R72 K147 ["InputBegan"]
      926 SETTABLE                         R30 R71 R72
      927 DUPTABLE                         R72 K152 [{"Corner", "ShiftOverlay", "Stroke", "Label", "RenameInput", "MoveDrag"}]
      928 GETUPVAL                         R73 2
      929 GETTABLEKS                       R73 R73 K93 ["createElement"]
      931 LOADK                            R74 K134 ["UICorner"]
      932 DUPTABLE                         R75 K136 [{"CornerRadius"}]
      933 GETIMPORT                        R76 K138 [UDim.new]
      935 LOADN                            R77 0
      936 GETTABLEKS                       R78 R1 K139 ["Radius"]
      938 GETTABLEKS                       R78 R78 K153 ["Small"]
      940 CALL                             R76 2 1
      941 SETTABLEKS                       R76 R75 K135 ["CornerRadius"]
      943 CALL                             R73 2 1
      944 SETTABLEKS                       R73 R72 K132 ["Corner"]
      946 JUMPIFNOT                        R52 ; [+45]
      947 GETUPVAL                         R73 2
      948 GETTABLEKS                       R73 R73 K93 ["createElement"]
      950 LOADK                            R74 K94 ["Frame"]
      951 DUPTABLE                         R75 K155 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["ZIndex"]}]
      952 GETIMPORT                        R76 K130 [UDim2.fromScale]
      954 LOADN                            R77 1
      955 LOADN                            R78 1
      956 CALL                             R76 2 1
      957 SETTABLEKS                       R76 R75 K36 ["Size"]
      959 GETTABLEKS                       R76 R52 K74 ["Color3"]
      961 SETTABLEKS                       R76 R75 K144 ["BackgroundColor3"]
      963 GETTABLEKS                       R76 R52 K81 ["Transparency"]
      965 SETTABLEKS                       R76 R75 K106 ["BackgroundTransparency"]
      967 MOVE                             R76 R64
      968 CALL                             R76 0 1
      969 SETTABLEKS                       R76 R75 K107 ["ZIndex"]
      971 DUPTABLE                         R76 K156 [{"Corner"}]
      972 GETUPVAL                         R77 2
      973 GETTABLEKS                       R77 R77 K93 ["createElement"]
      975 LOADK                            R78 K134 ["UICorner"]
      976 DUPTABLE                         R79 K136 [{"CornerRadius"}]
      977 GETIMPORT                        R80 K138 [UDim.new]
      979 LOADN                            R81 0
      980 GETTABLEKS                       R82 R1 K139 ["Radius"]
      982 GETTABLEKS                       R82 R82 K153 ["Small"]
      984 CALL                             R80 2 1
      985 SETTABLEKS                       R80 R79 K135 ["CornerRadius"]
      987 CALL                             R77 2 1
      988 SETTABLEKS                       R77 R76 K132 ["Corner"]
      990 CALL                             R73 3 1
      991 JUMP                             ; [+1]
      992 LOADNIL                          R73
      993 SETTABLEKS                       R73 R72 K148 ["ShiftOverlay"]
      995 GETUPVAL                         R73 2
      996 GETTABLEKS                       R73 R73 K93 ["createElement"]
      998 LOADK                            R74 K141 ["UIStroke"]
      999 DUPTABLE                         R75 K143 [{"Color", "Thickness", "Transparency"}]
     1000 GETTABLEKS                       R76 R58 K74 ["Color3"]
     1002 SETTABLEKS                       R76 R75 K62 ["Color"]
     1004 SETTABLEKS                       R26 R75 K142 ["Thickness"]
     1006 JUMPIFNOT                        R50 ; [+2]
     1007 LOADN                            R76 0
     1008 JUMP                             ; [+8]
     1009 JUMPIFNOT                        R61 ; [+2]
     1010 LOADN                            R76 1
     1011 JUMP                             ; [+5]
     1012 GETTABLEKS                       R77 R58 K81 ["Transparency"]
     1014 GETTABLEKS                       R78 R58 K81 ["Transparency"]
     1016 MUL                              R76 R77 R78
     1017 SETTABLEKS                       R76 R75 K81 ["Transparency"]
     1019 CALL                             R73 2 1
     1020 SETTABLEKS                       R73 R72 K39 ["Stroke"]
     1022 GETUPVAL                         R73 2
     1023 GETTABLEKS                       R73 R73 K93 ["createElement"]
     1025 GETUPVAL                         R74 0
     1026 GETTABLEKS                       R74 R74 K157 ["Text"]
     1028 DUPTABLE                         R75 K165 [{["tag"] = "size-full-full text-title-small", ["Text"], ["textStyle"], ["TextXAlignment"], ["TextYAlignment"], ["TextTruncate"], ["Visible"], ["ZIndex"]}]
     1029 SETTABLEKS                       R15 R75 K157 ["Text"]
     1031 DUPTABLE                         R76 K166 [{"Color3", "Transparency"}]
     1032 SETTABLEKS                       R57 R76 K74 ["Color3"]
     1034 SETTABLEKS                       R62 R76 K81 ["Transparency"]
     1036 SETTABLEKS                       R76 R75 K160 ["textStyle"]
     1038 GETIMPORT                        R76 K169 [Enum.TextXAlignment.Center]
     1040 SETTABLEKS                       R76 R75 K161 ["TextXAlignment"]
     1042 GETIMPORT                        R76 K170 [Enum.TextYAlignment.Center]
     1044 SETTABLEKS                       R76 R75 K162 ["TextYAlignment"]
     1046 GETIMPORT                        R76 K172 [Enum.TextTruncate.AtEnd]
     1048 SETTABLEKS                       R76 R75 K163 ["TextTruncate"]
     1050 GETTABLEKS                       R77 R16 K44 ["enabled"]
     1052 NOT                              R76 R77
     1053 SETTABLEKS                       R76 R75 K164 ["Visible"]
     1055 MOVE                             R76 R64
     1056 CALL                             R76 0 1
     1057 SETTABLEKS                       R76 R75 K107 ["ZIndex"]
     1059 CALL                             R73 2 1
     1060 SETTABLEKS                       R73 R72 K149 ["Label"]
     1062 GETUPVAL                         R73 2
     1063 GETTABLEKS                       R73 R73 K93 ["createElement"]
     1065 GETUPVAL                         R74 0
     1066 GETTABLEKS                       R74 R74 K173 ["TextInput"]
     1068 DUPTABLE                         R75 K183 [{["AnchorPoint"], ["Position"], ["width"], ["size"], ["variant"], ["label"] = "", ["text"], ["onChanged"], ["onFocusLost"], ["focusBehavior"], ["textBoxRef"], ["ref"], ["Visible"], ["ZIndex"]}]
     1069 GETIMPORT                        R76 K98 [Vector2.new]
     1071 LOADK                            R77 K99 [0.5]
     1072 LOADK                            R78 K99 [0.5]
     1073 CALL                             R76 2 1
     1074 SETTABLEKS                       R76 R75 K100 ["AnchorPoint"]
     1076 GETIMPORT                        R76 K130 [UDim2.fromScale]
     1078 LOADK                            R77 K99 [0.5]
     1079 LOADK                            R78 K99 [0.5]
     1080 CALL                             R76 2 1
     1081 SETTABLEKS                       R76 R75 K35 ["Position"]
     1083 GETIMPORT                        R76 K138 [UDim.new]
     1085 LOADN                            R77 0
     1086 GETUPVAL                         R79 10
     1087 GETTABLEKS                       R79 R79 K104 ["X"]
     1089 SUBK                             R78 R79 K184 [16]
     1090 CALL                             R76 2 1
     1091 SETTABLEKS                       R76 R75 K174 ["width"]
     1093 GETUPVAL                         R76 0
     1094 GETTABLEKS                       R76 R76 K71 ["Enums"]
     1096 GETTABLEKS                       R76 R76 K185 ["InputSize"]
     1098 GETTABLEKS                       R76 R76 K186 ["XSmall"]
     1100 SETTABLEKS                       R76 R75 K175 ["size"]
     1102 GETUPVAL                         R76 0
     1103 GETTABLEKS                       R76 R76 K71 ["Enums"]
     1105 GETTABLEKS                       R76 R76 K187 ["InputVariant"]
     1107 GETTABLEKS                       R76 R76 K188 ["Utility"]
     1109 SETTABLEKS                       R76 R75 K176 ["variant"]
     1111 SETTABLEKS                       R17 R75 K178 ["text"]
     1113 SETTABLEKS                       R18 R75 K179 ["onChanged"]
     1115 SETTABLEKS                       R29 R75 K180 ["onFocusLost"]
     1117 GETUPVAL                         R76 0
     1118 GETTABLEKS                       R76 R76 K71 ["Enums"]
     1120 GETTABLEKS                       R76 R76 K189 ["InputFocusBehavior"]
     1122 GETTABLEKS                       R76 R76 K190 ["Highlight"]
     1124 SETTABLEKS                       R76 R75 K181 ["focusBehavior"]
     1126 SETTABLEKS                       R19 R75 K182 ["textBoxRef"]
     1128 SETTABLEKS                       R19 R75 K95 ["ref"]
     1130 GETTABLEKS                       R76 R16 K44 ["enabled"]
     1132 SETTABLEKS                       R76 R75 K164 ["Visible"]
     1134 MOVE                             R76 R64
     1135 CALL                             R76 0 1
     1136 SETTABLEKS                       R76 R75 K107 ["ZIndex"]
     1138 CALL                             R73 2 1
     1139 SETTABLEKS                       R73 R72 K150 ["RenameInput"]
     1141 GETUPVAL                         R73 2
     1142 GETTABLEKS                       R73 R73 K93 ["createElement"]
     1144 LOADK                            R74 K191 ["UIDragDetector"]
     1145 NEWTABLE                         R75 8 0
     1147 GETUPVAL                         R76 14
     1148 SETTABLEKS                       R76 R75 K192 ["DragStyle"]
     1150 GETUPVAL                         R76 15
     1151 SETTABLEKS                       R76 R75 K193 ["ResponseStyle"]
     1153 GETTABLEKS                       R76 R3 K194 ["getViewport"]
     1155 CALL                             R76 0 1
     1156 SETTABLEKS                       R76 R75 K195 ["ReferenceUIInstance"]
     1158 GETUPVAL                         R76 2
     1159 GETTABLEKS                       R76 R76 K146 ["Event"]
     1161 GETTABLEKS                       R76 R76 K196 ["DragStart"]
     1163 SETTABLE                         R31 R75 R76
     1164 GETUPVAL                         R76 2
     1165 GETTABLEKS                       R76 R76 K146 ["Event"]
     1167 GETTABLEKS                       R76 R76 K197 ["DragContinue"]
     1169 SETTABLE                         R32 R75 R76
     1170 GETUPVAL                         R76 2
     1171 GETTABLEKS                       R76 R76 K146 ["Event"]
     1173 GETTABLEKS                       R76 R76 K198 ["DragEnd"]
     1175 SETTABLE                         R33 R75 R76
     1176 CALL                             R73 2 1
     1177 SETTABLEKS                       R73 R72 K151 ["MoveDrag"]
     1179 CALL                             R69 3 1
     1180 SETTABLEKS                       R69 R68 K114 ["Box"]
     1182 GETUPVAL                         R69 2
     1183 GETTABLEKS                       R69 R69 K93 ["createElement"]
     1185 LOADK                            R70 K94 ["Frame"]
     1186 NEWTABLE                         R71 8 0
     1188 LOADB                            R72 0
     1189 SETTABLEKS                       R72 R71 K199 ["Active"]
     1191 GETIMPORT                        R72 K98 [Vector2.new]
     1193 LOADK                            R73 K99 [0.5]
     1194 LOADK                            R74 K99 [0.5]
     1195 CALL                             R72 2 1
     1196 SETTABLEKS                       R72 R71 K100 ["AnchorPoint"]
     1198 GETIMPORT                        R72 K130 [UDim2.fromScale]
     1200 LOADK                            R73 K99 [0.5]
     1201 LOADK                            R74 K99 [0.5]
     1202 CALL                             R72 2 1
     1203 SETTABLEKS                       R72 R71 K35 ["Position"]
     1205 GETIMPORT                        R72 K131 [UDim2.new]
     1207 LOADN                            R73 1
     1208 LOADN                            R74 76
     1209 LOADN                            R75 1
     1210 LOADN                            R76 76
     1211 CALL                             R72 4 1
     1212 SETTABLEKS                       R72 R71 K36 ["Size"]
     1214 LOADN                            R72 1
     1215 SETTABLEKS                       R72 R71 K106 ["BackgroundTransparency"]
     1217 MOVE                             R72 R64
     1218 CALL                             R72 0 1
     1219 SETTABLEKS                       R72 R71 K107 ["ZIndex"]
     1221 GETUPVAL                         R72 2
     1222 GETTABLEKS                       R72 R72 K146 ["Event"]
     1224 GETTABLEKS                       R72 R72 K200 ["MouseMoved"]
     1226 SETTABLE                         R43 R71 R72
     1227 GETUPVAL                         R72 2
     1228 GETTABLEKS                       R72 R72 K146 ["Event"]
     1230 GETTABLEKS                       R72 R72 K201 ["MouseLeave"]
     1232 SETTABLE                         R44 R71 R72
     1233 CALL                             R69 2 1
     1234 SETTABLEKS                       R69 R68 K115 ["Detection"]
     1236 JUMPIFNOT                        R34 ; [+89]
     1237 GETUPVAL                         R69 2
     1238 GETTABLEKS                       R69 R69 K93 ["createElement"]
     1240 LOADK                            R70 K202 ["ImageButton"]
     1241 NEWTABLE                         R71 8 0
     1243 GETIMPORT                        R72 K98 [Vector2.new]
     1245 LOADK                            R73 K99 [0.5]
     1246 LOADK                            R74 K99 [0.5]
     1247 CALL                             R72 2 1
     1248 SETTABLEKS                       R72 R71 K100 ["AnchorPoint"]
     1250 GETIMPORT                        R72 K130 [UDim2.fromScale]
     1252 LOADK                            R73 K99 [0.5]
     1253 LOADK                            R74 K99 [0.5]
     1254 CALL                             R72 2 1
     1255 SETTABLEKS                       R72 R71 K35 ["Position"]
     1257 GETIMPORT                        R72 K131 [UDim2.new]
     1259 LOADN                            R73 1
     1260 LOADN                            R74 60
     1261 LOADN                            R75 1
     1262 LOADN                            R76 60
     1263 CALL                             R72 4 1
     1264 SETTABLEKS                       R72 R71 K36 ["Size"]
     1266 LOADN                            R72 1
     1267 SETTABLEKS                       R72 R71 K106 ["BackgroundTransparency"]
     1269 MOVE                             R72 R64
     1270 CALL                             R72 0 1
     1271 SETTABLEKS                       R72 R71 K107 ["ZIndex"]
     1273 GETUPVAL                         R72 2
     1274 GETTABLEKS                       R72 R72 K146 ["Event"]
     1276 GETTABLEKS                       R72 R72 K200 ["MouseMoved"]
     1278 SETTABLE                         R43 R71 R72
     1279 GETUPVAL                         R72 2
     1280 GETTABLEKS                       R72 R72 K146 ["Event"]
     1282 GETTABLEKS                       R72 R72 K201 ["MouseLeave"]
     1284 SETTABLE                         R44 R71 R72
     1285 DUPTABLE                         R72 K204 [{"ConnectDrag"}]
     1286 GETUPVAL                         R73 2
     1287 GETTABLEKS                       R73 R73 K93 ["createElement"]
     1289 LOADK                            R74 K191 ["UIDragDetector"]
     1290 NEWTABLE                         R75 8 0
     1292 GETUPVAL                         R76 14
     1293 SETTABLEKS                       R76 R75 K192 ["DragStyle"]
     1295 GETUPVAL                         R76 15
     1296 SETTABLEKS                       R76 R75 K193 ["ResponseStyle"]
     1298 GETTABLEKS                       R76 R3 K194 ["getViewport"]
     1300 CALL                             R76 0 1
     1301 SETTABLEKS                       R76 R75 K195 ["ReferenceUIInstance"]
     1303 GETUPVAL                         R76 2
     1304 GETTABLEKS                       R76 R76 K146 ["Event"]
     1306 GETTABLEKS                       R76 R76 K196 ["DragStart"]
     1308 SETTABLE                         R45 R75 R76
     1309 GETUPVAL                         R76 2
     1310 GETTABLEKS                       R76 R76 K146 ["Event"]
     1312 GETTABLEKS                       R76 R76 K197 ["DragContinue"]
     1314 SETTABLE                         R46 R75 R76
     1315 GETUPVAL                         R76 2
     1316 GETTABLEKS                       R76 R76 K146 ["Event"]
     1318 GETTABLEKS                       R76 R76 K198 ["DragEnd"]
     1320 SETTABLE                         R47 R75 R76
     1321 CALL                             R73 2 1
     1322 SETTABLEKS                       R73 R72 K203 ["ConnectDrag"]
     1324 CALL                             R69 3 1
     1325 JUMP                             ; [+1]
     1326 LOADNIL                          R69
     1327 SETTABLEKS                       R69 R68 K116 ["ConnectSurface"]
     1329 CALL                             R65 3 -1
     1330 RETURN                           R65 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["NodeGraphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K12 ["SignalsReact"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Components"]
       53 GETTABLEKS                       R8 R8 K14 ["StateMachineChevron"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Contexts"]
       60 GETTABLEKS                       R9 R9 K16 ["StateMachineConnectContext"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K15 ["Contexts"]
       67 GETTABLEKS                       R10 R10 K17 ["StateMachineGeometryContext"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K15 ["Contexts"]
       74 GETTABLEKS                       R11 R11 K18 ["StateMachinePreviewContext"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K19 ["Flags"]
       81 GETTABLEKS                       R12 R12 K20 ["getFFlagAnimGraphUI_Localization2"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K23 [Vector2.new]
       86 LOADN                            R13 144
       87 LOADN                            R14 40
       88 CALL                             R12 2 1
       89 GETIMPORT                        R13 K27 [Enum.UIDragDetectorDragStyle.TranslatePlane]
       91 GETIMPORT                        R14 K30 [Enum.UIDragDetectorResponseStyle.CustomOffset]
       93 DUPCLOSURE                       R15 K31 [PROTO_0]
       94 CAPTURE                          VAL R12
       95 DUPCLOSURE                       R16 K32 [PROTO_1]
       96 DUPCLOSURE                       R17 K33 [PROTO_2]
       97 DUPCLOSURE                       R18 K34 [PROTO_23]
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R17
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R14
      114 RETURN                           R18 1
