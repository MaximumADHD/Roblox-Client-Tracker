PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R4 0
        3 LOADN                            R7 1
        4 MOVE                             R5 R1
        5 LOADN                            R6 1
        6 FORNPREP                         R5
        7 MOVE                             R8 R2
        8 MOVE                             R9 R7
        9 CALL                             R8 1 1
       10 GETTABLEKS                       R10 R8 K0 ["offset"]
       12 GETTABLEKS                       R11 R8 K1 ["length"]
       14 ADD                              R9 R10 R11
       15 LOADN                            R12 1
       16 LENGTH                           R10 R0
       17 LOADN                            R11 1
       18 FORNPREP                         R10
       19 GETTABLE                         R13 R3 R12
       20 JUMPIFNOTEQKNIL                  R13 ; [+26]
       22 GETTABLE                         R13 R0 R12
       23 JUMPIFNOTLE                      R13 R9 ; [+23]
       25 SETTABLE                         R7 R3 R12
       26 ADDK                             R4 R4 K2 [1]
       27 LENGTH                           R13 R0
       28 JUMPIFNOTEQ                      R12 R13 ; [+18]
       30 LENGTH                           R13 R0
       31 JUMPIFEQ                         R4 R13 ; [+14]
       33 GETUPVAL                         R13 0
       34 LENGTH                           R15 R0
       35 JUMPIFEQ                         R4 R15 ; [+2]
       37 LOADB                            R14 0 +1
       38 LOADB                            R14 1
       39 LOADK                            R15 K3 ["bad offsets input, should be in increasing order: %s"]
       40 GETUPVAL                         R16 1
       41 MOVE                             R18 R0
       42 NAMECALL                         R16 R16 K4 ["JSONEncode"]
       44 CALL                             R16 2 -1
       45 CALL                             R13 -1 0
       46 RETURN                           R3 1
       47 FORNLOOP                         R10
       48 FORNLOOP                         R5
       49 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R5 R1 K1 ["last"]
        2 GETTABLEKS                       R6 R1 K2 ["first"]
        4 SUB                              R4 R5 R6
        5 ADDK                             R3 R4 K0 [1]
        6 LOADN                            R5 0
        7 GETTABLEKS                       R9 R1 K1 ["last"]
        9 GETTABLEKS                       R10 R0 K1 ["last"]
       11 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       13 GETIMPORT                        R8 K5 [math.min]
       15 CALL                             R8 2 1
       16 ADDK                             R7 R8 K0 [1]
       17 GETTABLEKS                       R9 R1 K2 ["first"]
       19 GETTABLEKS                       R10 R0 K2 ["first"]
       21 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       23 GETIMPORT                        R8 K7 [math.max]
       25 CALL                             R8 2 1
       26 SUB                              R6 R7 R8
       27 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       29 GETIMPORT                        R4 K7 [math.max]
       31 CALL                             R4 2 1
       32 SUB                              R2 R3 R4
       33 RETURN                           R2 1

PROTO_2:
        0 MOVE                             R7 R1
        1 MOVE                             R8 R0
        2 CALL                             R7 1 1
        3 JUMPIFNOTEQKN                    R7 K0 [0] ; [+2]
        5 RETURN                           R4 1
        6 GETTABLEKS                       R8 R6 K1 ["offset"]
        8 GETTABLEKS                       R9 R6 K2 ["velocity"]
       10 GETTABLEKS                       R10 R6 K3 ["visibleLength"]
       12 LOADN                            R12 0
       13 FASTCALL2                        MATH_MAX R12 R8 ; [+4]
       15 MOVE                             R13 R8
       16 GETIMPORT                        R11 K6 [math.max]
       18 CALL                             R11 2 1
       19 ADD                              R12 R11 R10
       20 SUBK                             R14 R3 K7 [1]
       21 MUL                              R13 R14 R10
       22 LOADN                            R15 1
       23 JUMPIFNOTLT                      R15 R9 ; [+3]
       25 LOADK                            R14 K8 ["after"]
       26 JUMP                             ; [+6]
       27 LOADN                            R15 255
       28 JUMPIFNOTLT                      R9 R15 ; [+3]
       30 LOADK                            R14 K9 ["before"]
       31 JUMP                             ; [+1]
       32 LOADK                            R14 K10 ["none"]
       33 LOADN                            R16 0
       34 LOADK                            R19 K11 [0.5]
       35 MUL                              R18 R19 R13
       36 SUB                              R17 R11 R18
       37 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
       39 GETIMPORT                        R15 K6 [math.max]
       41 CALL                             R15 2 1
       42 LOADN                            R17 0
       43 LOADK                            R20 K11 [0.5]
       44 MUL                              R19 R20 R13
       45 ADD                              R18 R12 R19
       46 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
       48 GETIMPORT                        R16 K6 [math.max]
       50 CALL                             R16 2 1
       51 MOVE                             R18 R5
       52 MOVE                             R19 R7
       53 CALL                             R18 1 1
       54 GETTABLEKS                       R17 R18 K1 ["offset"]
       56 JUMPIFNOTLT                      R17 R15 ; [+14]
       58 DUPTABLE                         R18 K14 [{"first", "last"}]
       59 LOADN                            R20 1
       60 SUB                              R21 R7 R2
       61 FASTCALL2                        MATH_MAX R20 R21 ; [+3]
       63 GETIMPORT                        R19 K6 [math.max]
       65 CALL                             R19 2 1
       66 SETTABLEKS                       R19 R18 K12 ["first"]
       68 SETTABLEKS                       R7 R18 K13 ["last"]
       70 RETURN                           R18 1
       71 GETUPVAL                         R19 0
       72 NEWTABLE                         R20 0 4
       74 MOVE                             R21 R15
       75 MOVE                             R22 R11
       76 MOVE                             R23 R12
       77 MOVE                             R24 R16
       78 SETLIST                          R20 R21 4 [1]
       80 MOVE                             R21 R7
       81 MOVE                             R22 R5
       82 CALL                             R19 3 1
       83 LOADN                            R20 1
       84 LOADN                            R21 4
       85 FASTCALL                         TABLE_UNPACK ; [+2]
       86 GETIMPORT                        R18 K17 [table.unpack]
       88 CALL                             R18 3 4
       89 JUMPIFNOTEQKNIL                  R18 ; [+3]
       91 LOADN                            R18 1
       92 JUMP                             ; [0]
       93 JUMPIFNOTEQKNIL                  R19 ; [+10]
       95 LOADN                            R23 1
       96 FASTCALL2                        MATH_MAX R23 R18 ; [+4]
       98 MOVE                             R24 R18
       99 GETIMPORT                        R22 K6 [math.max]
      101 CALL                             R22 2 1
      102 MOVE                             R19 R22
      103 JUMP                             ; [0]
      104 JUMPIFNOTEQKNIL                  R21 ; [+3]
      106 MOVE                             R21 R7
      107 JUMP                             ; [0]
      108 JUMPIFNOTEQKNIL                  R20 ; [+11]
      110 ADD                              R25 R19 R2
      111 SUBK                             R24 R25 K7 [1]
      112 FASTCALL2                        MATH_MIN R21 R24 ; [+4]
      114 MOVE                             R23 R21
      115 GETIMPORT                        R22 K19 [math.min]
      117 CALL                             R22 2 1
      118 MOVE                             R20 R22
      119 JUMP                             ; [0]
      120 DUPTABLE                         R22 K14 [{"first", "last"}]
      121 SETTABLEKS                       R19 R22 K12 ["first"]
      123 SETTABLEKS                       R20 R22 K13 ["last"]
      125 GETTABLEKS                       R26 R22 K13 ["last"]
      127 GETTABLEKS                       R27 R22 K12 ["first"]
      129 SUB                              R25 R26 R27
      130 ADDK                             R24 R25 K7 [1]
      131 LOADN                            R26 0
      132 GETTABLEKS                       R30 R22 K13 ["last"]
      134 GETTABLEKS                       R31 R4 K13 ["last"]
      136 FASTCALL2                        MATH_MIN R30 R31 ; [+3]
      138 GETIMPORT                        R29 K19 [math.min]
      140 CALL                             R29 2 1
      141 ADDK                             R28 R29 K7 [1]
      142 GETTABLEKS                       R30 R22 K12 ["first"]
      144 GETTABLEKS                       R31 R4 K12 ["first"]
      146 FASTCALL2                        MATH_MAX R30 R31 ; [+3]
      148 GETIMPORT                        R29 K6 [math.max]
      150 CALL                             R29 2 1
      151 SUB                              R27 R28 R29
      152 FASTCALL2                        MATH_MAX R26 R27 ; [+3]
      154 GETIMPORT                        R25 K6 [math.max]
      156 CALL                             R25 2 1
      157 SUB                              R23 R24 R25
      158 JUMPIFNOTLE                      R19 R18 ; [+3]
      160 JUMPIFLE                         R21 R20 ; [+59]
      162 JUMPIFLE                         R2 R23 ; [+2]
      164 LOADB                            R24 0 +1
      165 LOADB                            R24 1
      166 LOADB                            R25 1
      167 GETTABLEKS                       R26 R4 K12 ["first"]
      169 JUMPIFLE                         R19 R26 ; [+7]
      171 GETTABLEKS                       R26 R4 K13 ["last"]
      173 JUMPIFLT                         R26 R19 ; [+2]
      175 LOADB                            R25 0 +1
      176 LOADB                            R25 1
      177 LOADB                            R26 0
      178 JUMPIFNOTLT                      R18 R19 ; [+4]
      180 NOT                              R26 R24
      181 JUMPIF                           R26 ; [+1]
      182 NOT                              R26 R25
      183 LOADB                            R27 1
      184 GETTABLEKS                       R28 R4 K13 ["last"]
      186 JUMPIFLE                         R28 R20 ; [+7]
      188 GETTABLEKS                       R28 R4 K12 ["first"]
      190 JUMPIFLT                         R20 R28 ; [+2]
      192 LOADB                            R27 0 +1
      193 LOADB                            R27 1
      194 LOADB                            R28 0
      195 JUMPIFNOTLT                      R20 R21 ; [+4]
      197 NOT                              R28 R24
      198 JUMPIF                           R28 ; [+1]
      199 NOT                              R28 R27
      200 JUMPIFNOT                        R24 ; [+2]
      201 JUMPIF                           R26 ; [+1]
      202 JUMPIFNOT                        R28 ; [+17]
      203 JUMPIFNOT                        R26 ; [+7]
      204 JUMPIFNOTEQKS                    R14 K8 ["after"] ; [+3]
      206 JUMPIFNOT                        R28 ; [+1]
      207 JUMPIF                           R27 ; [+3]
      208 JUMPIFNOT                        R25 ; [+1]
      209 ADDK                             R23 R23 K7 [1]
      210 SUBK                             R19 R19 K7 [1]
      211 JUMPIFNOT                        R28 ; [+7]
      212 JUMPIFNOTEQKS                    R14 K9 ["before"] ; [+3]
      214 JUMPIFNOT                        R26 ; [+1]
      215 JUMPIF                           R25 ; [+3]
      216 JUMPIFNOT                        R27 ; [+1]
      217 ADDK                             R23 R23 K7 [1]
      218 ADDK                             R20 R20 K7 [1]
      219 JUMPBACK                         ; [-62]
      220 JUMPIFNOTLE                      R19 R20 ; [+18]
      222 LOADN                            R24 1
      223 JUMPIFNOTLE                      R24 R19 ; [+15]
      225 JUMPIFNOTLE                      R20 R7 ; [+13]
      227 JUMPIFNOTLE                      R18 R19 ; [+11]
      229 JUMPIFNOTLE                      R20 R21 ; [+9]
      231 GETTABLEKS                       R24 R22 K12 ["first"]
      233 JUMPIFNOTLE                      R19 R24 ; [+5]
      235 GETTABLEKS                       R24 R22 K13 ["last"]
      237 JUMPIFLE                         R24 R20 ; [+27]
      239 GETIMPORT                        R24 K21 [error]
      241 GETUPVAL                         R26 1
      242 GETTABLEKS                       R25 R26 K22 ["new"]
      244 LOADK                            R27 K23 ["Bad window calculation "]
      245 GETUPVAL                         R28 2
      246 DUPTABLE                         R30 K28 [{"first", "last", "itemCount", "overscanFirst", "overscanLast", "visible"}]
      247 SETTABLEKS                       R19 R30 K12 ["first"]
      249 SETTABLEKS                       R20 R30 K13 ["last"]
      251 SETTABLEKS                       R7 R30 K24 ["itemCount"]
      253 SETTABLEKS                       R18 R30 K25 ["overscanFirst"]
      255 SETTABLEKS                       R21 R30 K26 ["overscanLast"]
      257 SETTABLEKS                       R22 R30 K27 ["visible"]
      259 NAMECALL                         R28 R28 K29 ["JSONEncode"]
      261 CALL                             R28 2 1
      262 CONCAT                           R26 R27 R28
      263 CALL                             R25 1 -1
      264 CALL                             R24 -1 0
      265 DUPTABLE                         R24 K14 [{"first", "last"}]
      266 SETTABLEKS                       R19 R24 K12 ["first"]
      268 SETTABLEKS                       R20 R24 K13 ["last"]
      270 RETURN                           R24 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
        7 GETTABLEKS                       R2 R0 K3 ["key"]
        9 JUMPIFEQKNIL                     R2 ; [+4]
       11 GETTABLEKS                       R2 R0 K3 ["key"]
       13 RETURN                           R2 1
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R3 R0
       16 GETIMPORT                        R2 K1 [typeof]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
       21 GETTABLEKS                       R2 R0 K4 ["id"]
       23 JUMPIFEQKNIL                     R2 ; [+4]
       25 GETTABLEKS                       R2 R0 K4 ["id"]
       27 RETURN                           R2 1
       28 FASTCALL1                        TOSTRING R1 ; [+3]
       29 MOVE                             R3 R1
       30 GETIMPORT                        R2 K6 [tostring]
       32 CALL                             R2 1 1
       33 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Error"]
       16 GETIMPORT                        R4 K8 [game]
       18 LOADK                            R6 K9 ["HttpService"]
       19 NAMECALL                         R4 R4 K10 ["GetService"]
       21 CALL                             R4 2 1
       22 NEWTABLE                         R5 4 0
       24 GETIMPORT                        R6 K4 [require]
       26 GETTABLEKS                       R8 R0 K11 ["jsUtils"]
       28 GETTABLEKS                       R7 R8 K12 ["invariant"]
       30 CALL                             R6 1 1
       31 DUPCLOSURE                       R7 K13 [PROTO_0]
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R7 R5 K14 ["elementsThatOverlapOffsets"]
       36 DUPCLOSURE                       R8 K15 [PROTO_1]
       37 SETTABLEKS                       R8 R5 K16 ["newRangeCount"]
       39 DUPCLOSURE                       R9 K17 [PROTO_2]
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 SETTABLEKS                       R9 R5 K18 ["computeWindowedRenderLimits"]
       45 DUPCLOSURE                       R10 K19 [PROTO_3]
       46 SETTABLEKS                       R10 R5 K20 ["keyExtractor"]
       48 RETURN                           R5 1
