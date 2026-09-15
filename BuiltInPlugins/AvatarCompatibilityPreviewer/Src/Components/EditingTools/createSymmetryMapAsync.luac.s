PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETUPVAL                         R2 0
        5 GETTABLE                         R1 R2 R0
        6 RETURN                           R1 1
        7 LOADK                            R3 K0 ["^Left(.+)$"]
        8 NAMECALL                         R1 R0 K1 ["match"]
       10 CALL                             R1 2 1
       11 JUMPIFEQKNIL                     R1 ; [+7]
       13 LOADK                            R3 K2 ["Right"]
       14 MOVE                             R4 R1
       15 CONCAT                           R2 R3 R4
       16 GETUPVAL                         R3 0
       17 SETTABLE                         R2 R3 R0
       18 RETURN                           R2 1
       19 LOADK                            R4 K3 ["^Right(.+)$"]
       20 NAMECALL                         R2 R0 K1 ["match"]
       22 CALL                             R2 2 1
       23 JUMPIFEQKNIL                     R2 ; [+7]
       25 LOADK                            R4 K4 ["Left"]
       26 MOVE                             R5 R2
       27 CONCAT                           R3 R4 R5
       28 GETUPVAL                         R4 0
       29 SETTABLE                         R3 R4 R0
       30 RETURN                           R3 1
       31 GETUPVAL                         R3 0
       32 SETTABLE                         R0 R3 R0
       33 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R5 R0 K0 ["X"]
        2 GETTABLEKS                       R6 R1 K0 ["X"]
        4 SUB                              R4 R5 R6
        5 FASTCALL1                        MATH_ABS R4 ; [+2]
        6 GETIMPORT                        R3 K3 [math.abs]
        8 CALL                             R3 1 1
        9 LOADK                            R4 K4 [1E-05]
       10 JUMPIFNOTLE                      R3 R4 ; [+10]
       12 GETTABLEKS                       R3 R0 K5 ["Y"]
       14 GETTABLEKS                       R4 R1 K5 ["Y"]
       16 JUMPIFLT                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 GETTABLEKS                       R3 R0 K0 ["X"]
       23 GETTABLEKS                       R4 R1 K0 ["X"]
       25 JUMPIFLT                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R3 K0 ["WrapTarget"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R6 0
        1 GETTABLE                         R5 R6 R0
        2 JUMPIFNOTEQKNIL                  R5 ; [+5]
        4 GETUPVAL                         R5 0
        5 NEWTABLE                         R6 0 0
        7 SETTABLE                         R6 R5 R0
        8 GETUPVAL                         R7 0
        9 GETTABLE                         R6 R7 R0
       10 GETTABLE                         R5 R6 R1
       11 JUMPIFNOTEQKNIL                  R5 ; [+6]
       13 GETUPVAL                         R6 0
       14 GETTABLE                         R5 R6 R0
       15 NEWTABLE                         R6 0 0
       17 SETTABLE                         R6 R5 R1
       18 GETUPVAL                         R9 0
       19 GETTABLE                         R8 R9 R0
       20 GETTABLE                         R5 R8 R1
       21 LOADNIL                          R6
       22 LOADNIL                          R7
       23 FORGPREP                         R5
       24 GETTABLEKS                       R10 R9 K0 ["targetName"]
       26 JUMPIFNOTEQ                      R10 R2 ; [+10]
       28 GETTABLEKS                       R10 R9 K1 ["vertex"]
       30 JUMPIFNOTEQ                      R10 R3 ; [+6]
       32 GETTABLEKS                       R10 R9 K2 ["side"]
       34 JUMPIFNOTEQ                      R10 R4 ; [+2]
       36 RETURN                           R0 0
       37 FORGLOOP                         R5 2 ; [-14]
       39 GETUPVAL                         R8 0
       40 GETTABLE                         R7 R8 R0
       41 GETTABLE                         R6 R7 R1
       42 DUPTABLE                         R7 K3 [{"targetName", "vertex", "side"}]
       43 SETTABLEKS                       R2 R7 K0 ["targetName"]
       45 SETTABLEKS                       R3 R7 K1 ["vertex"]
       47 SETTABLEKS                       R4 R7 K2 ["side"]
       49 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       51 GETIMPORT                        R5 K6 [table.insert]
       53 CALL                             R5 2 0
       54 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        BUFFER_READF64 R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [buffer.readf64]
        6 CALL                             R1 2 1
        7 GETUPVAL                         R3 0
        8 ADDK                             R4 R0 K3 [8]
        9 FASTCALL2                        BUFFER_READF64 R3 R4 ; [+3]
       11 GETIMPORT                        R2 K2 [buffer.readf64]
       13 CALL                             R2 2 1
       14 FASTCALL2                        VECTOR R1 R2 ; [+5]
       16 MOVE                             R4 R1
       17 MOVE                             R5 R2
       18 GETIMPORT                        R3 K6 [Vector3.new]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R5 1
       22 LOADK                            R6 K7 [1E-07]
       23 NAMECALL                         R3 R3 K8 ["FuzzyEq"]
       25 CALL                             R3 3 1
       26 JUMPIFNOT                        R3 ; [+2]
       27 LOADK                            R3 K9 ["equal"]
       28 RETURN                           R3 1
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K10 ["X"]
       32 SUB                              R4 R1 R5
       33 FASTCALL1                        MATH_ABS R4 ; [+2]
       34 GETIMPORT                        R3 K13 [math.abs]
       36 CALL                             R3 1 1
       37 LOADK                            R4 K7 [1E-07]
       38 JUMPIFNOTLT                      R4 R3 ; [+10]
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K10 ["X"]
       43 JUMPIFNOTLT                      R4 R1 ; [+3]
       45 LOADK                            R3 K14 ["bigger"]
       46 RETURN                           R3 1
       47 LOADK                            R3 K15 ["smaller"]
       48 RETURN                           R3 1
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R4 R4 K16 ["Y"]
       52 JUMPIFNOTLT                      R4 R2 ; [+3]
       54 LOADK                            R3 K14 ["bigger"]
       55 RETURN                           R3 1
       56 LOADK                            R3 K15 ["smaller"]
       57 RETURN                           R3 1

PROTO_5:
        0 SUBK                             R2 R0 K1 [1]
        1 MULK                             R1 R2 K0 [32]
        2 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [buffer.len]
        3 GETUPVAL                         R4 1
        4 CALL                             R3 1 1
        5 IDIVK                            R2 R3 K0 [32]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 DUPCLOSURE                       R4 K4 [PROTO_5]
       10 CALL                             R1 3 1
       11 NEWTABLE                         R2 0 0
       13 MOVE                             R3 R1
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 SUBK                             R9 R7 K5 [1]
       18 MULK                             R8 R9 K0 [32]
       19 GETUPVAL                         R10 1
       20 ADDK                             R11 R8 K6 [16]
       21 FASTCALL2                        BUFFER_READF64 R10 R11 ; [+3]
       23 GETIMPORT                        R9 K8 [buffer.readf64]
       25 CALL                             R9 2 1
       26 GETUPVAL                         R11 1
       27 ADDK                             R12 R8 K9 [24]
       28 FASTCALL2                        BUFFER_READF64 R11 R12 ; [+3]
       30 GETIMPORT                        R10 K8 [buffer.readf64]
       32 CALL                             R10 2 1
       33 FASTCALL2                        VECTOR R9 R10 ; [+5]
       35 MOVE                             R14 R9
       36 MOVE                             R15 R10
       37 GETIMPORT                        R13 K12 [Vector3.new]
       39 CALL                             R13 2 1
       40 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       42 MOVE                             R12 R2
       43 GETIMPORT                        R11 K15 [table.insert]
       45 CALL                             R11 2 0
       46 FORGLOOP                         R3 2 ; [-30]
       48 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["uv"]
        2 GETUPVAL                         R3 0
        3 NAMECALL                         R1 R1 K1 ["FuzzyEq"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+2]
        7 LOADK                            R1 K2 ["equal"]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R3 R0 K0 ["uv"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R7 R3 K3 ["X"]
       14 GETTABLEKS                       R8 R4 K3 ["X"]
       16 SUB                              R6 R7 R8
       17 FASTCALL1                        MATH_ABS R6 ; [+2]
       18 GETIMPORT                        R5 K6 [math.abs]
       20 CALL                             R5 1 1
       21 LOADK                            R6 K7 [1E-05]
       22 JUMPIFNOTLE                      R5 R6 ; [+10]
       24 GETTABLEKS                       R5 R3 K8 ["Y"]
       26 GETTABLEKS                       R6 R4 K8 ["Y"]
       28 JUMPIFLT                         R5 R6 ; [+2]
       30 LOADB                            R2 0 +1
       31 LOADB                            R2 1
       32 JUMP                             ; [+8]
       33 GETTABLEKS                       R5 R3 K3 ["X"]
       35 GETTABLEKS                       R6 R4 K3 ["X"]
       37 JUMPIFLT                         R5 R6 ; [+2]
       39 LOADB                            R2 0 +1
       40 LOADB                            R2 1
       41 JUMPIFNOT                        R2 ; [+2]
       42 LOADK                            R1 K9 ["smaller"]
       43 RETURN                           R1 1
       44 LOADK                            R1 K10 ["bigger"]
       45 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 GETUPVAL                         R9 1
        8 LENGTH                           R8 R9
        9 NEWCLOSURE                       R9 P0
       10 CAPTURE                          VAL R6
       11 NEWCLOSURE                       R10 P1
       12 CAPTURE                          UPVAL U1
       13 CALL                             R7 3 1
       14 MOVE                             R8 R7
       15 LOADNIL                          R9
       16 LOADNIL                          R10
       17 FORGPREP                         R8
       18 GETUPVAL                         R16 1
       19 GETTABLE                         R15 R16 R12
       20 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       22 MOVE                             R14 R1
       23 GETIMPORT                        R13 K2 [table.insert]
       25 CALL                             R13 2 0
       26 FORGLOOP                         R8 2 ; [-9]
       28 FORGLOOP                         R2 2 ; [-23]
       30 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 1
        1 GETIMPORT                        R2 K3 [Enum.CageType.Outer]
        3 NAMECALL                         R0 R0 K4 ["GetUVs"]
        5 CALL                             R0 2 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["uv"]
        2 GETTABLEKS                       R4 R1 K0 ["uv"]
        4 GETTABLEKS                       R7 R3 K1 ["X"]
        6 GETTABLEKS                       R8 R4 K1 ["X"]
        8 SUB                              R6 R7 R8
        9 FASTCALL1                        MATH_ABS R6 ; [+2]
       10 GETIMPORT                        R5 K4 [math.abs]
       12 CALL                             R5 1 1
       13 LOADK                            R6 K5 [1E-05]
       14 JUMPIFNOTLE                      R5 R6 ; [+10]
       16 GETTABLEKS                       R5 R3 K6 ["Y"]
       18 GETTABLEKS                       R6 R4 K6 ["Y"]
       20 JUMPIFLT                         R5 R6 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 RETURN                           R2 1
       25 GETTABLEKS                       R5 R3 K1 ["X"]
       27 GETTABLEKS                       R6 R4 K1 ["X"]
       29 JUMPIFLT                         R5 R6 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 RETURN                           R2 1

PROTO_12:
        0 GETIMPORT                        R2 K1 [require]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K2 ["Src"]
        5 GETTABLEKS                       R3 R3 K3 ["Components"]
        7 GETTABLEKS                       R3 R3 K4 ["EditingTools"]
        9 GETTABLEKS                       R3 R3 K5 ["CageEditingTool"]
       11 GETTABLEKS                       R3 R3 K6 ["SymmetricalUVs"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R6 K10 [buffer.len]
       16 MOVE                             R7 R2
       17 CALL                             R6 1 1
       18 DIVK                             R5 R6 K7 [32]
       19 GETIMPORT                        R7 K10 [buffer.len]
       21 MOVE                             R8 R2
       22 CALL                             R7 1 1
       23 IDIVK                            R6 R7 K7 [32]
       24 JUMPIFEQ                         R5 R6 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 FASTCALL2K                       ASSERT R4 K11 ; [+4]
       30 LOADK                            R5 K11 ["SymmetricalUVs buffer is not divisible by cursor offset"]
       31 GETIMPORT                        R3 K13 [assert]
       33 CALL                             R3 2 0
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K14 ["filter"]
       37 NAMECALL                         R4 R0 K15 ["GetDescendants"]
       39 CALL                             R4 1 1
       40 DUPCLOSURE                       R5 K16 [PROTO_2]
       41 CALL                             R3 2 1
       42 JUMPIFNOTEQKNIL                  R1 ; [+3]
       44 GETIMPORT                        R1 K18 [warn]
       46 JUMPIFNOTEQKNIL                  R1 ; [+2]
       48 LOADB                            R5 0 +1
       49 LOADB                            R5 1
       50 GETUPVAL                         R6 2
       51 GETTABLEKS                       R6 R6 K19 ["LUAU_ANALYZE_ERROR"]
       53 FASTCALL2                        ASSERT R5 R6 ; [+3]
       55 GETIMPORT                        R4 K13 [assert]
       57 CALL                             R4 2 0
       58 NEWTABLE                         R4 0 0
       60 NEWTABLE                         R5 0 0
       62 NEWCLOSURE                       R6 P1
       63 CAPTURE                          VAL R4
       64 NEWCLOSURE                       R7 P2
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          VAL R2
       67 NEWCLOSURE                       R8 P3
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          VAL R5
       70 GETIMPORT                        R9 K22 [debug.profilebegin]
       72 LOADK                            R10 K23 ["Collect points and UVs"]
       73 CALL                             R9 1 0
       74 MOVE                             R9 R3
       75 LOADNIL                          R10
       76 LOADNIL                          R11
       77 FORGPREP                         R9
       78 LOADNIL                          R14
       79 GETIMPORT                        R15 K25 [pcall]
       81 NEWCLOSURE                       R16 P4
       82 CAPTURE                          REF R14
       83 CAPTURE                          VAL R13
       84 CALL                             R15 1 2
       85 JUMPIFNOT                        R15 ; [+2]
       86 JUMPIFNOTEQKNIL                  R14 ; [+14]
       88 GETIMPORT                        R17 K18 [warn]
       90 LOADK                            R18 K26 ["createSymmetryMapAsync - %*:GetUVs() failed with error %*"]
       91 NAMECALL                         R20 R13 K27 ["GetFullName"]
       93 CALL                             R20 1 1
       94 MOVE                             R21 R16
       95 NAMECALL                         R18 R18 K28 ["format"]
       97 CALL                             R18 3 1
       98 CALL                             R17 1 0
       99 CLOSEUPVALS                      R14
      100 JUMP                             ; [+41]
      101 MOVE                             R17 R14
      102 LOADNIL                          R18
      103 LOADNIL                          R19
      104 FORGPREP                         R17
      105 DUPTABLE                         R24 K33 [{"targetName", "vertex", "uv", "side"}]
      106 GETTABLEKS                       R25 R13 K34 ["Name"]
      108 SETTABLEKS                       R25 R24 K29 ["targetName"]
      110 SETTABLEKS                       R20 R24 K30 ["vertex"]
      112 GETTABLEKS                       R26 R21 K35 ["X"]
      114 GETTABLEKS                       R27 R21 K36 ["Y"]
      116 FASTCALL2                        VECTOR R26 R27 ; [+3]
      118 GETIMPORT                        R25 K39 [Vector3.new]
      120 CALL                             R25 2 1
      121 SETTABLEKS                       R25 R24 K31 ["uv"]
      123 GETTABLEKS                       R26 R21 K35 ["X"]
      125 LOADK                            R27 K40 [3.5]
      126 JUMPIFNOTLE                      R27 R26 ; [+3]
      128 LOADK                            R25 K41 ["right"]
      129 JUMP                             ; [+1]
      130 LOADK                            R25 K42 ["left"]
      131 SETTABLEKS                       R25 R24 K32 ["side"]
      133 FASTCALL2                        TABLE_INSERT R5 R24 ; [+4]
      135 MOVE                             R23 R5
      136 GETIMPORT                        R22 K45 [table.insert]
      138 CALL                             R22 2 0
      139 FORGLOOP                         R17 2 ; [-35]
      141 CLOSEUPVALS                      R14
      142 FORGLOOP                         R9 2 ; [-65]
      144 GETIMPORT                        R9 K47 [debug.profileend]
      146 CALL                             R9 0 0
      147 GETIMPORT                        R9 K22 [debug.profilebegin]
      149 LOADK                            R10 K48 ["Sort points and UVs"]
      150 CALL                             R9 1 0
      151 GETIMPORT                        R9 K50 [table.sort]
      153 MOVE                             R10 R5
      154 DUPCLOSURE                       R11 K51 [PROTO_11]
      155 CALL                             R9 2 0
      156 GETIMPORT                        R9 K47 [debug.profileend]
      158 CALL                             R9 0 0
      159 GETIMPORT                        R9 K22 [debug.profilebegin]
      161 LOADK                            R10 K52 ["Create symmetry map"]
      162 CALL                             R9 1 0
      163 MOVE                             R9 R5
      164 LOADNIL                          R10
      165 LOADNIL                          R11
      166 FORGPREP                         R9
      167 GETIMPORT                        R14 K22 [debug.profilebegin]
      169 LOADK                            R15 K53 ["Find what UVs are symmetrical"]
      170 CALL                             R14 1 0
      171 MOVE                             R14 R7
      172 GETTABLEKS                       R15 R13 K31 ["uv"]
      174 CALL                             R14 1 1
      175 GETIMPORT                        R15 K47 [debug.profileend]
      177 CALL                             R15 0 0
      178 LENGTH                           R15 R14
      179 JUMPIFNOTEQKN                    R15 K54 [0] ; [+56]
      181 LOADNIL                          R15
      182 LOADN                            R18 0
      183 GETIMPORT                        R19 K10 [buffer.len]
      185 MOVE                             R20 R2
      186 CALL                             R19 1 1
      187 SUBK                             R16 R19 K7 [32]
      188 LOADN                            R17 32
      189 FORNPREP                         R16
      190 FASTCALL2                        BUFFER_READF64 R2 R18 ; [+5]
      192 MOVE                             R20 R2
      193 MOVE                             R21 R18
      194 GETIMPORT                        R19 K56 [buffer.readf64]
      196 CALL                             R19 2 1
      197 ADDK                             R22 R18 K57 [8]
      198 FASTCALL2                        BUFFER_READF64 R2 R22 ; [+4]
      200 MOVE                             R21 R2
      201 GETIMPORT                        R20 K56 [buffer.readf64]
      203 CALL                             R20 2 1
      204 FASTCALL2                        VECTOR R19 R20 ; [+5]
      206 MOVE                             R22 R19
      207 MOVE                             R23 R20
      208 GETIMPORT                        R21 K39 [Vector3.new]
      210 CALL                             R21 2 1
      211 GETTABLEKS                       R23 R13 K31 ["uv"]
      213 LOADK                            R24 K58 [1E-07]
      214 NAMECALL                         R21 R21 K59 ["FuzzyEq"]
      216 CALL                             R21 3 1
      217 JUMPIFNOT                        R21 ; [+3]
      218 IDIVK                            R21 R18 K7 [32]
      219 ADDK                             R15 R21 K60 [1]
      220 JUMP                             ; [+1]
      221 FORNLOOP                         R16
      222 MOVE                             R16 R1
      223 LOADK                            R17 K61 ["Couldn't find symmetrical UVs for %*:%* (at %*), was supposed to find it at index %*"]
      224 GETTABLEKS                       R19 R13 K29 ["targetName"]
      226 GETTABLEKS                       R20 R13 K30 ["vertex"]
      228 GETTABLEKS                       R21 R13 K31 ["uv"]
      230 MOVE                             R22 R15
      231 NAMECALL                         R17 R17 K28 ["format"]
      233 CALL                             R17 5 1
      234 CALL                             R16 1 0
      235 JUMP                             ; [+37]
      236 GETIMPORT                        R15 K22 [debug.profilebegin]
      238 LOADK                            R16 K62 ["Find points with UV"]
      239 CALL                             R15 1 0
      240 MOVE                             R15 R8
      241 MOVE                             R16 R14
      242 CALL                             R15 1 3
      243 FORGPREP                         R15
      244 MOVE                             R20 R6
      245 GETTABLEKS                       R21 R13 K29 ["targetName"]
      247 GETTABLEKS                       R22 R13 K30 ["vertex"]
      249 GETTABLEKS                       R23 R19 K29 ["targetName"]
      251 GETTABLEKS                       R24 R19 K30 ["vertex"]
      253 GETTABLEKS                       R25 R13 K32 ["side"]
      255 CALL                             R20 5 0
      256 MOVE                             R20 R6
      257 GETTABLEKS                       R21 R19 K29 ["targetName"]
      259 GETTABLEKS                       R22 R19 K30 ["vertex"]
      261 GETTABLEKS                       R23 R13 K29 ["targetName"]
      263 GETTABLEKS                       R24 R13 K30 ["vertex"]
      265 GETTABLEKS                       R25 R19 K32 ["side"]
      267 CALL                             R20 5 0
      268 FORGLOOP                         R15 2 ; [-25]
      270 GETIMPORT                        R15 K47 [debug.profileend]
      272 CALL                             R15 0 0
      273 FORGLOOP                         R9 2 ; [-107]
      275 MOVE                             R9 R5
      276 LOADNIL                          R10
      277 LOADNIL                          R11
      278 FORGPREP                         R9
      279 GETTABLEKS                       R16 R13 K29 ["targetName"]
      281 GETTABLE                         R15 R4 R16
      282 GETTABLEKS                       R16 R13 K30 ["vertex"]
      284 GETTABLE                         R14 R15 R16
      285 JUMPIFEQKNIL                     R14 ; [+56]
      287 NEWTABLE                         R15 0 0
      289 MOVE                             R16 R14
      290 LOADNIL                          R17
      291 LOADNIL                          R18
      292 FORGPREP                         R16
      293 GETTABLEKS                       R25 R20 K29 ["targetName"]
      295 GETTABLE                         R24 R4 R25
      296 GETTABLEKS                       R25 R20 K30 ["vertex"]
      298 GETTABLE                         R21 R24 R25
      299 LOADNIL                          R22
      300 LOADNIL                          R23
      301 FORGPREP                         R21
      302 FASTCALL2                        TABLE_INSERT R15 R25 ; [+5]
      304 MOVE                             R27 R15
      305 MOVE                             R28 R25
      306 GETIMPORT                        R26 K45 [table.insert]
      308 CALL                             R26 2 0
      309 FORGLOOP                         R21 2 ; [-8]
      311 FORGLOOP                         R16 2 ; [-19]
      313 MOVE                             R16 R15
      314 LOADNIL                          R17
      315 LOADNIL                          R18
      316 FORGPREP                         R16
      317 GETTABLEKS                       R25 R20 K29 ["targetName"]
      319 GETTABLE                         R24 R4 R25
      320 GETTABLEKS                       R25 R20 K30 ["vertex"]
      322 GETTABLE                         R21 R24 R25
      323 LOADNIL                          R22
      324 LOADNIL                          R23
      325 FORGPREP                         R21
      326 MOVE                             R26 R6
      327 GETTABLEKS                       R27 R13 K29 ["targetName"]
      329 GETTABLEKS                       R28 R13 K30 ["vertex"]
      331 GETTABLEKS                       R29 R25 K29 ["targetName"]
      333 GETTABLEKS                       R30 R25 K30 ["vertex"]
      335 GETTABLEKS                       R31 R13 K32 ["side"]
      337 CALL                             R26 5 0
      338 FORGLOOP                         R21 2 ; [-13]
      340 FORGLOOP                         R16 2 ; [-24]
      342 FORGLOOP                         R9 2 ; [-64]
      344 MOVE                             R9 R4
      345 LOADNIL                          R10
      346 LOADNIL                          R11
      347 FORGPREP                         R9
      348 MOVE                             R14 R13
      349 LOADNIL                          R15
      350 LOADNIL                          R16
      351 FORGPREP                         R14
      352 LENGTH                           R21 R18
      353 LOADN                            R19 1
      354 LOADN                            R20 -1
      355 FORNPREP                         R19
      356 GETUPVAL                         R24 4
      357 GETTABLE                         R23 R24 R12
      358 JUMPIFEQKNIL                     R23 ; [+4]
      360 GETUPVAL                         R23 4
      361 GETTABLE                         R22 R23 R12
      362 JUMP                             ; [+29]
      363 LOADK                            R25 K63 ["^Left(.+)$"]
      364 NAMECALL                         R23 R12 K64 ["match"]
      366 CALL                             R23 2 1
      367 JUMPIFEQKNIL                     R23 ; [+8]
      369 LOADK                            R25 K65 ["Right"]
      370 MOVE                             R26 R23
      371 CONCAT                           R24 R25 R26
      372 GETUPVAL                         R25 4
      373 SETTABLE                         R24 R25 R12
      374 MOVE                             R22 R24
      375 JUMP                             ; [+16]
      376 LOADK                            R26 K66 ["^Right(.+)$"]
      377 NAMECALL                         R24 R12 K64 ["match"]
      379 CALL                             R24 2 1
      380 JUMPIFEQKNIL                     R24 ; [+8]
      382 LOADK                            R26 K67 ["Left"]
      383 MOVE                             R27 R24
      384 CONCAT                           R25 R26 R27
      385 GETUPVAL                         R26 4
      386 SETTABLE                         R25 R26 R12
      387 MOVE                             R22 R25
      388 JUMP                             ; [+3]
      389 GETUPVAL                         R25 4
      390 SETTABLE                         R12 R25 R12
      391 MOVE                             R22 R12
      392 GETTABLE                         R23 R18 R21
      393 GETTABLEKS                       R23 R23 K29 ["targetName"]
      395 JUMPIFEQ                         R22 R23 ; [+6]
      397 GETIMPORT                        R22 K69 [table.remove]
      399 MOVE                             R23 R18
      400 MOVE                             R24 R21
      401 CALL                             R22 2 0
      402 FORNLOOP                         R19
      403 FORGLOOP                         R14 2 ; [-52]
      405 FORGLOOP                         R9 2 ; [-58]
      407 GETIMPORT                        R9 K47 [debug.profileend]
      409 CALL                             R9 0 0
      410 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["LuaMeshEditingModule"]
       29 GETTABLEKS                       R4 R4 K12 ["Types"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Types"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K9 ["Util"]
       45 GETTABLEKS                       R6 R6 K13 ["binarySearchRange"]
       47 CALL                             R5 1 1
       48 NEWTABLE                         R6 0 0
       50 DUPCLOSURE                       R7 K14 [PROTO_0]
       51 CAPTURE                          VAL R6
       52 DUPCLOSURE                       R8 K15 [PROTO_1]
       53 DUPCLOSURE                       R9 K16 [PROTO_12]
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 RETURN                           R9 1
