PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R0 1
        1 GETIMPORT                        R2 K3 [Enum.CageType.Outer]
        3 NAMECALL                         R0 R0 K4 ["GetUVs"]
        5 CALL                             R0 2 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["FuzzyEq"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADK                            R1 K1 ["equal"]
        6 RETURN                           R1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R6 R0 K2 ["X"]
       10 GETTABLEKS                       R7 R3 K2 ["X"]
       12 SUB                              R5 R6 R7
       13 FASTCALL1                        MATH_ABS R5 ; [+2]
       14 GETIMPORT                        R4 K5 [math.abs]
       16 CALL                             R4 1 1
       17 LOADK                            R5 K6 [1E-05]
       18 JUMPIFNOTLE                      R4 R5 ; [+10]
       20 GETTABLEKS                       R4 R0 K7 ["Y"]
       22 GETTABLEKS                       R5 R3 K7 ["Y"]
       24 JUMPIFLT                         R4 R5 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 JUMP                             ; [+8]
       29 GETTABLEKS                       R4 R0 K2 ["X"]
       31 GETTABLEKS                       R5 R3 K2 ["X"]
       33 JUMPIFLT                         R4 R5 ; [+2]
       35 LOADB                            R2 0 +1
       36 LOADB                            R2 1
       37 JUMPIFNOT                        R2 ; [+2]
       38 LOADK                            R1 K8 ["smaller"]
       39 RETURN                           R1 1
       40 LOADK                            R1 K9 ["bigger"]
       41 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETTABLEKS                       R1 R2 K0 ["uv"]
        4 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LENGTH                           R2 R3
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R4 P1
        6 CAPTURE                          UPVAL U1
        7 CALL                             R1 3 1
        8 NEWTABLE                         R2 0 0
       10 MOVE                             R3 R1
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETUPVAL                         R12 1
       15 GETTABLE                         R11 R12 R7
       16 GETTABLEKS                       R10 R11 K0 ["index"]
       18 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       20 MOVE                             R9 R2
       21 GETIMPORT                        R8 K3 [table.insert]
       23 CALL                             R8 2 0
       24 FORGLOOP                         R3 2 ; [-11]
       26 RETURN                           R2 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 GETIMPORT                        R1 K1 [warn]
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       10 LOADK                            R4 K2 ["Luau"]
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 2 0
       14 GETIMPORT                        R2 K7 [debug.profilebegin]
       16 LOADK                            R3 K8 ["createSegmentationMapAsync"]
       17 CALL                             R2 1 0
       18 NEWTABLE                         R2 0 0
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R3 R6 K9 ["LIMBS"]
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 MOVE                             R10 R7
       27 NAMECALL                         R8 R0 K10 ["FindFirstChild"]
       29 CALL                             R8 2 1
       30 JUMPIFEQKNIL                     R8 ; [+187]
       32 LOADK                            R11 K11 ["WrapTarget"]
       33 NAMECALL                         R9 R8 K12 ["FindFirstChildWhichIsA"]
       35 CALL                             R9 2 1
       36 JUMPIFEQKNIL                     R9 ; [+181]
       38 JUMPIFNOTEQKNIL                  R9 ; [+2]
       40 LOADB                            R11 0 +1
       41 LOADB                            R11 1
       42 FASTCALL2K                       ASSERT R11 K2 ; [+4]
       44 LOADK                            R12 K2 ["Luau"]
       45 GETIMPORT                        R10 K4 [assert]
       47 CALL                             R10 2 0
       48 GETUPVAL                         R11 1
       49 GETTABLE                         R10 R11 R7
       50 NEWTABLE                         R11 0 0
       52 GETTABLEKS                       R12 R9 K13 ["Name"]
       54 SETTABLE                         R11 R2 R12
       55 NEWTABLE                         R12 0 0
       57 LOADNIL                          R13
       58 GETIMPORT                        R14 K15 [pcall]
       60 NEWCLOSURE                       R15 P0
       61 CAPTURE                          REF R13
       62 CAPTURE                          VAL R9
       63 CALL                             R14 1 2
       64 JUMPIFNOT                        R14 ; [+2]
       65 JUMPIFNOTEQKNIL                  R13 ; [+15]
       67 GETIMPORT                        R16 K1 [warn]
       69 LOADK                            R18 K16 ["createSegmentationMapAsync - %*:GetUVs() failed with error %*"]
       70 NAMECALL                         R20 R9 K17 ["GetFullName"]
       72 CALL                             R20 1 1
       73 MOVE                             R21 R15
       74 NAMECALL                         R18 R18 K18 ["format"]
       76 CALL                             R18 3 1
       77 MOVE                             R17 R18
       78 CALL                             R16 1 0
       79 CLOSEUPVALS                      R13
       80 JUMP                             ; [+137]
       81 MOVE                             R16 R13
       82 LOADNIL                          R17
       83 LOADNIL                          R18
       84 FORGPREP                         R16
       85 DUPTABLE                         R23 K21 [{"index", "uv"}]
       86 SETTABLEKS                       R19 R23 K19 ["index"]
       88 GETTABLEKS                       R25 R20 K22 ["X"]
       90 GETTABLEKS                       R26 R20 K23 ["Y"]
       92 FASTCALL2                        VECTOR R25 R26 ; [+3]
       94 GETIMPORT                        R24 K26 [Vector3.new]
       96 CALL                             R24 2 1
       97 SETTABLEKS                       R24 R23 K20 ["uv"]
       99 FASTCALL2                        TABLE_INSERT R12 R23 ; [+4]
      101 MOVE                             R22 R12
      102 GETIMPORT                        R21 K29 [table.insert]
      104 CALL                             R21 2 0
      105 FORGLOOP                         R16 2 ; [-21]
      107 GETIMPORT                        R16 K31 [table.sort]
      109 MOVE                             R17 R12
      110 DUPCLOSURE                       R18 K32 [PROTO_2]
      111 CALL                             R16 2 0
      112 NEWCLOSURE                       R16 P2
      113 CAPTURE                          UPVAL U2
      114 CAPTURE                          VAL R12
      115 LOADN                            R19 0
      116 GETIMPORT                        R20 K36 [buffer.len]
      118 MOVE                             R21 R10
      119 CALL                             R20 1 1
      120 SUBK                             R17 R20 K33 [32]
      121 LOADN                            R18 32
      122 FORNPREP                         R17
      123 FASTCALL2                        BUFFER_READF64 R10 R19 ; [+5]
      125 MOVE                             R21 R10
      126 MOVE                             R22 R19
      127 GETIMPORT                        R20 K38 [buffer.readf64]
      129 CALL                             R20 2 1
      130 ADDK                             R23 R19 K39 [8]
      131 FASTCALL2                        BUFFER_READF64 R10 R23 ; [+4]
      133 MOVE                             R22 R10
      134 GETIMPORT                        R21 K38 [buffer.readf64]
      136 CALL                             R21 2 1
      137 ADDK                             R24 R19 K40 [16]
      138 FASTCALL2                        BUFFER_READF64 R10 R24 ; [+4]
      140 MOVE                             R23 R10
      141 GETIMPORT                        R22 K38 [buffer.readf64]
      143 CALL                             R22 2 1
      144 ADDK                             R25 R19 K41 [24]
      145 FASTCALL2                        BUFFER_READF64 R10 R25 ; [+4]
      147 MOVE                             R24 R10
      148 GETIMPORT                        R23 K38 [buffer.readf64]
      150 CALL                             R23 2 1
      151 MOVE                             R24 R16
      152 FASTCALL2                        VECTOR R20 R21 ; [+5]
      154 MOVE                             R26 R20
      155 MOVE                             R27 R21
      156 GETIMPORT                        R25 K26 [Vector3.new]
      158 CALL                             R25 2 1
      159 CALL                             R24 1 1
      160 MOVE                             R25 R16
      161 FASTCALL2                        VECTOR R22 R23 ; [+5]
      163 MOVE                             R27 R22
      164 MOVE                             R28 R23
      165 GETIMPORT                        R26 K26 [Vector3.new]
      167 CALL                             R26 2 1
      168 CALL                             R25 1 1
      169 LENGTH                           R26 R24
      170 JUMPIFNOTEQKN                    R26 K42 [0] ; [+11]
      172 MOVE                             R26 R1
      173 LOADK                            R28 K43 ["Couldn't find anything with the first pair of UV (%*, %*) in %*"]
      174 MOVE                             R30 R20
      175 MOVE                             R31 R21
      176 MOVE                             R32 R7
      177 NAMECALL                         R28 R28 K18 ["format"]
      179 CALL                             R28 4 1
      180 MOVE                             R27 R28
      181 CALL                             R26 1 0
      182 LENGTH                           R26 R25
      183 JUMPIFNOTEQKN                    R26 K42 [0] ; [+11]
      185 MOVE                             R26 R1
      186 LOADK                            R28 K43 ["Couldn't find anything with the first pair of UV (%*, %*) in %*"]
      187 MOVE                             R30 R22
      188 MOVE                             R31 R23
      189 MOVE                             R32 R7
      190 NAMECALL                         R28 R28 K18 ["format"]
      192 CALL                             R28 4 1
      193 MOVE                             R27 R28
      194 CALL                             R26 1 0
      195 MOVE                             R26 R24
      196 LOADNIL                          R27
      197 LOADNIL                          R28
      198 FORGPREP                         R26
      199 MOVE                             R31 R25
      200 LOADNIL                          R32
      201 LOADNIL                          R33
      202 FORGPREP                         R31
      203 FASTCALL2                        VECTOR R30 R35 ; [+5]
      205 MOVE                             R37 R30
      206 MOVE                             R38 R35
      207 GETIMPORT                        R36 K26 [Vector3.new]
      209 CALL                             R36 2 1
      210 LOADB                            R37 1
      211 SETTABLE                         R37 R11 R36
      212 FORGLOOP                         R31 2 ; [-10]
      214 FORGLOOP                         R26 2 ; [-16]
      216 FORNLOOP                         R17
      217 CLOSEUPVALS                      R13
      218 FORGLOOP                         R3 2 ; [-193]
      220 GETIMPORT                        R3 K45 [debug.profileend]
      222 CALL                             R3 0 0
      223 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K9 ["Packages"]
       20 GETTABLEKS                       R4 R5 K10 ["LuaMeshEditingModule"]
       22 GETTABLEKS                       R3 R4 K11 ["Types"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R8 R0 K6 ["Src"]
       29 GETTABLEKS                       R7 R8 K12 ["Components"]
       31 GETTABLEKS                       R6 R7 K13 ["EditingTools"]
       33 GETTABLEKS                       R5 R6 K14 ["CageEditingTool"]
       35 GETTABLEKS                       R4 R5 K15 ["SegmentationUVs"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R6 R0 K6 ["Src"]
       42 GETTABLEKS                       R5 R6 K11 ["Types"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R8 R0 K6 ["Src"]
       49 GETTABLEKS                       R7 R8 K7 ["Util"]
       51 GETTABLEKS                       R6 R7 K16 ["binarySearchRange"]
       53 CALL                             R5 1 1
       54 DUPCLOSURE                       R6 K17 [PROTO_0]
       55 DUPCLOSURE                       R7 K18 [PROTO_6]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 RETURN                           R7 1
