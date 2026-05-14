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
       86 JUMPIFNOTEQKNIL                  R14 ; [+15]
       88 GETIMPORT                        R17 K18 [warn]
       90 LOADK                            R19 K26 ["createSymmetryMapAsync - %*:GetUVs() failed with error %*"]
       91 NAMECALL                         R21 R13 K27 ["GetFullName"]
       93 CALL                             R21 1 1
       94 MOVE                             R22 R16
       95 NAMECALL                         R19 R19 K28 ["format"]
       97 CALL                             R19 3 1
       98 MOVE                             R18 R19
       99 CALL                             R17 1 0
      100 CLOSEUPVALS                      R14
      101 JUMP                             ; [+41]
      102 MOVE                             R17 R14
      103 LOADNIL                          R18
      104 LOADNIL                          R19
      105 FORGPREP                         R17
      106 DUPTABLE                         R24 K33 [{"targetName", "vertex", "uv", "side"}]
      107 GETTABLEKS                       R25 R13 K34 ["Name"]
      109 SETTABLEKS                       R25 R24 K29 ["targetName"]
      111 SETTABLEKS                       R20 R24 K30 ["vertex"]
      113 GETTABLEKS                       R26 R21 K35 ["X"]
      115 GETTABLEKS                       R27 R21 K36 ["Y"]
      117 FASTCALL2                        VECTOR R26 R27 ; [+3]
      119 GETIMPORT                        R25 K39 [Vector3.new]
      121 CALL                             R25 2 1
      122 SETTABLEKS                       R25 R24 K31 ["uv"]
      124 GETTABLEKS                       R26 R21 K35 ["X"]
      126 LOADK                            R27 K40 [3.5]
      127 JUMPIFNOTLE                      R27 R26 ; [+3]
      129 LOADK                            R25 K41 ["right"]
      130 JUMP                             ; [+1]
      131 LOADK                            R25 K42 ["left"]
      132 SETTABLEKS                       R25 R24 K32 ["side"]
      134 FASTCALL2                        TABLE_INSERT R5 R24 ; [+4]
      136 MOVE                             R23 R5
      137 GETIMPORT                        R22 K45 [table.insert]
      139 CALL                             R22 2 0
      140 FORGLOOP                         R17 2 ; [-35]
      142 CLOSEUPVALS                      R14
      143 FORGLOOP                         R9 2 ; [-66]
      145 GETIMPORT                        R9 K47 [debug.profileend]
      147 CALL                             R9 0 0
      148 GETIMPORT                        R9 K22 [debug.profilebegin]
      150 LOADK                            R10 K48 ["Sort points and UVs"]
      151 CALL                             R9 1 0
      152 GETIMPORT                        R9 K50 [table.sort]
      154 MOVE                             R10 R5
      155 DUPCLOSURE                       R11 K51 [PROTO_11]
      156 CALL                             R9 2 0
      157 GETIMPORT                        R9 K47 [debug.profileend]
      159 CALL                             R9 0 0
      160 GETIMPORT                        R9 K22 [debug.profilebegin]
      162 LOADK                            R10 K52 ["Create symmetry map"]
      163 CALL                             R9 1 0
      164 MOVE                             R9 R5
      165 LOADNIL                          R10
      166 LOADNIL                          R11
      167 FORGPREP                         R9
      168 GETIMPORT                        R14 K22 [debug.profilebegin]
      170 LOADK                            R15 K53 ["Find what UVs are symmetrical"]
      171 CALL                             R14 1 0
      172 MOVE                             R14 R7
      173 GETTABLEKS                       R15 R13 K31 ["uv"]
      175 CALL                             R14 1 1
      176 GETIMPORT                        R15 K47 [debug.profileend]
      178 CALL                             R15 0 0
      179 LENGTH                           R15 R14
      180 JUMPIFNOTEQKN                    R15 K54 [0] ; [+57]
      182 LOADNIL                          R15
      183 LOADN                            R18 0
      184 GETIMPORT                        R19 K10 [buffer.len]
      186 MOVE                             R20 R2
      187 CALL                             R19 1 1
      188 SUBK                             R16 R19 K7 [32]
      189 LOADN                            R17 32
      190 FORNPREP                         R16
      191 FASTCALL2                        BUFFER_READF64 R2 R18 ; [+5]
      193 MOVE                             R20 R2
      194 MOVE                             R21 R18
      195 GETIMPORT                        R19 K56 [buffer.readf64]
      197 CALL                             R19 2 1
      198 ADDK                             R22 R18 K57 [8]
      199 FASTCALL2                        BUFFER_READF64 R2 R22 ; [+4]
      201 MOVE                             R21 R2
      202 GETIMPORT                        R20 K56 [buffer.readf64]
      204 CALL                             R20 2 1
      205 FASTCALL2                        VECTOR R19 R20 ; [+5]
      207 MOVE                             R22 R19
      208 MOVE                             R23 R20
      209 GETIMPORT                        R21 K39 [Vector3.new]
      211 CALL                             R21 2 1
      212 GETTABLEKS                       R23 R13 K31 ["uv"]
      214 LOADK                            R24 K58 [1E-07]
      215 NAMECALL                         R21 R21 K59 ["FuzzyEq"]
      217 CALL                             R21 3 1
      218 JUMPIFNOT                        R21 ; [+3]
      219 IDIVK                            R21 R18 K7 [32]
      220 ADDK                             R15 R21 K60 [1]
      221 JUMP                             ; [+1]
      222 FORNLOOP                         R16
      223 MOVE                             R16 R1
      224 LOADK                            R18 K61 ["Couldn't find symmetrical UVs for %*:%* (at %*), was supposed to find it at index %*"]
      225 GETTABLEKS                       R20 R13 K29 ["targetName"]
      227 GETTABLEKS                       R21 R13 K30 ["vertex"]
      229 GETTABLEKS                       R22 R13 K31 ["uv"]
      231 MOVE                             R23 R15
      232 NAMECALL                         R18 R18 K28 ["format"]
      234 CALL                             R18 5 1
      235 MOVE                             R17 R18
      236 CALL                             R16 1 0
      237 JUMP                             ; [+37]
      238 GETIMPORT                        R15 K22 [debug.profilebegin]
      240 LOADK                            R16 K62 ["Find points with UV"]
      241 CALL                             R15 1 0
      242 MOVE                             R15 R8
      243 MOVE                             R16 R14
      244 CALL                             R15 1 3
      245 FORGPREP                         R15
      246 MOVE                             R20 R6
      247 GETTABLEKS                       R21 R13 K29 ["targetName"]
      249 GETTABLEKS                       R22 R13 K30 ["vertex"]
      251 GETTABLEKS                       R23 R19 K29 ["targetName"]
      253 GETTABLEKS                       R24 R19 K30 ["vertex"]
      255 GETTABLEKS                       R25 R13 K32 ["side"]
      257 CALL                             R20 5 0
      258 MOVE                             R20 R6
      259 GETTABLEKS                       R21 R19 K29 ["targetName"]
      261 GETTABLEKS                       R22 R19 K30 ["vertex"]
      263 GETTABLEKS                       R23 R13 K29 ["targetName"]
      265 GETTABLEKS                       R24 R13 K30 ["vertex"]
      267 GETTABLEKS                       R25 R19 K32 ["side"]
      269 CALL                             R20 5 0
      270 FORGLOOP                         R15 2 ; [-25]
      272 GETIMPORT                        R15 K47 [debug.profileend]
      274 CALL                             R15 0 0
      275 FORGLOOP                         R9 2 ; [-108]
      277 MOVE                             R9 R5
      278 LOADNIL                          R10
      279 LOADNIL                          R11
      280 FORGPREP                         R9
      281 GETTABLEKS                       R16 R13 K29 ["targetName"]
      283 GETTABLE                         R15 R4 R16
      284 GETTABLEKS                       R16 R13 K30 ["vertex"]
      286 GETTABLE                         R14 R15 R16
      287 JUMPIFEQKNIL                     R14 ; [+56]
      289 NEWTABLE                         R15 0 0
      291 MOVE                             R16 R14
      292 LOADNIL                          R17
      293 LOADNIL                          R18
      294 FORGPREP                         R16
      295 GETTABLEKS                       R25 R20 K29 ["targetName"]
      297 GETTABLE                         R24 R4 R25
      298 GETTABLEKS                       R25 R20 K30 ["vertex"]
      300 GETTABLE                         R21 R24 R25
      301 LOADNIL                          R22
      302 LOADNIL                          R23
      303 FORGPREP                         R21
      304 FASTCALL2                        TABLE_INSERT R15 R25 ; [+5]
      306 MOVE                             R27 R15
      307 MOVE                             R28 R25
      308 GETIMPORT                        R26 K45 [table.insert]
      310 CALL                             R26 2 0
      311 FORGLOOP                         R21 2 ; [-8]
      313 FORGLOOP                         R16 2 ; [-19]
      315 MOVE                             R16 R15
      316 LOADNIL                          R17
      317 LOADNIL                          R18
      318 FORGPREP                         R16
      319 GETTABLEKS                       R25 R20 K29 ["targetName"]
      321 GETTABLE                         R24 R4 R25
      322 GETTABLEKS                       R25 R20 K30 ["vertex"]
      324 GETTABLE                         R21 R24 R25
      325 LOADNIL                          R22
      326 LOADNIL                          R23
      327 FORGPREP                         R21
      328 MOVE                             R26 R6
      329 GETTABLEKS                       R27 R13 K29 ["targetName"]
      331 GETTABLEKS                       R28 R13 K30 ["vertex"]
      333 GETTABLEKS                       R29 R25 K29 ["targetName"]
      335 GETTABLEKS                       R30 R25 K30 ["vertex"]
      337 GETTABLEKS                       R31 R13 K32 ["side"]
      339 CALL                             R26 5 0
      340 FORGLOOP                         R21 2 ; [-13]
      342 FORGLOOP                         R16 2 ; [-24]
      344 FORGLOOP                         R9 2 ; [-64]
      346 MOVE                             R9 R4
      347 LOADNIL                          R10
      348 LOADNIL                          R11
      349 FORGPREP                         R9
      350 MOVE                             R14 R13
      351 LOADNIL                          R15
      352 LOADNIL                          R16
      353 FORGPREP                         R14
      354 LENGTH                           R21 R18
      355 LOADN                            R19 1
      356 LOADN                            R20 255
      357 FORNPREP                         R19
      358 GETUPVAL                         R24 4
      359 GETTABLE                         R23 R24 R12
      360 JUMPIFEQKNIL                     R23 ; [+4]
      362 GETUPVAL                         R23 4
      363 GETTABLE                         R22 R23 R12
      364 JUMP                             ; [+29]
      365 LOADK                            R25 K63 ["^Left(.+)$"]
      366 NAMECALL                         R23 R12 K64 ["match"]
      368 CALL                             R23 2 1
      369 JUMPIFEQKNIL                     R23 ; [+8]
      371 LOADK                            R25 K65 ["Right"]
      372 MOVE                             R26 R23
      373 CONCAT                           R24 R25 R26
      374 GETUPVAL                         R25 4
      375 SETTABLE                         R24 R25 R12
      376 MOVE                             R22 R24
      377 JUMP                             ; [+16]
      378 LOADK                            R26 K66 ["^Right(.+)$"]
      379 NAMECALL                         R24 R12 K64 ["match"]
      381 CALL                             R24 2 1
      382 JUMPIFEQKNIL                     R24 ; [+8]
      384 LOADK                            R26 K67 ["Left"]
      385 MOVE                             R27 R24
      386 CONCAT                           R25 R26 R27
      387 GETUPVAL                         R26 4
      388 SETTABLE                         R25 R26 R12
      389 MOVE                             R22 R25
      390 JUMP                             ; [+3]
      391 GETUPVAL                         R25 4
      392 SETTABLE                         R12 R25 R12
      393 MOVE                             R22 R12
      394 GETTABLE                         R23 R18 R21
      395 GETTABLEKS                       R23 R23 K29 ["targetName"]
      397 JUMPIFEQ                         R22 R23 ; [+6]
      399 GETIMPORT                        R22 K69 [table.remove]
      401 MOVE                             R23 R18
      402 MOVE                             R24 R21
      403 CALL                             R22 2 0
      404 FORNLOOP                         R19
      405 FORGLOOP                         R14 2 ; [-52]
      407 FORGLOOP                         R9 2 ; [-58]
      409 GETIMPORT                        R9 K47 [debug.profileend]
      411 CALL                             R9 0 0
      412 RETURN                           R4 1

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
