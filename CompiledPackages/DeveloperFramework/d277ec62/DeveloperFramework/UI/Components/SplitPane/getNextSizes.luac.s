PROTO_0:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETTABLEKS                       R3 R0 K0 ["Scale"]
        3 GETUPVAL                         R4 0
        4 MUL                              R2 R3 R4
        5 GETTABLEKS                       R3 R0 K1 ["Offset"]
        7 ADD                              R1 R2 R3
        8 RETURN                           R1 1
        9 LOADN                            R1 0
       10 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R5 0 0
        2 GETTABLEKS                       R7 R0 K0 ["Sizes"]
        4 LENGTH                           R6 R7
        5 JUMPIFNOT                        R3 ; [+2]
        6 LOADN                            R7 1
        7 JUMP                             ; [+1]
        8 LOADN                            R7 255
        9 NEWCLOSURE                       R8 P0
       10 CAPTURE                          VAL R2
       11 GETTABLEKS                       R9 R0 K1 ["MaxSizes"]
       13 JUMPIF                           R9 ; [+2]
       14 NEWTABLE                         R9 0 0
       16 LOADN                            R10 0
       17 LOADN                            R11 0
       18 LOADN                            R12 0
       19 LOADN                            R13 0
       20 LOADN                            R16 1
       21 MOVE                             R14 R6
       22 LOADN                            R15 1
       23 FORNPREP                         R14
       24 GETTABLEKS                       R19 R0 K2 ["MinSizes"]
       26 GETTABLE                         R18 R19 R16
       27 JUMPIFNOT                        R18 ; [+7]
       28 GETTABLEKS                       R20 R18 K3 ["Scale"]
       30 MUL                              R19 R20 R2
       31 GETTABLEKS                       R20 R18 K4 ["Offset"]
       33 ADD                              R17 R19 R20
       34 JUMP                             ; [+1]
       35 LOADN                            R17 0
       36 GETTABLE                         R19 R9 R16
       37 JUMPIFNOT                        R19 ; [+11]
       38 GETTABLE                         R19 R9 R16
       39 JUMPIFNOT                        R19 ; [+7]
       40 GETTABLEKS                       R21 R19 K3 ["Scale"]
       42 MUL                              R20 R21 R2
       43 GETTABLEKS                       R21 R19 K4 ["Offset"]
       45 ADD                              R18 R20 R21
       46 JUMP                             ; [+3]
       47 LOADN                            R18 0
       48 JUMP                             ; [+1]
       49 LOADK                            R18 K5 [∞]
       50 JUMPIFNOT                        R3 ; [+5]
       51 JUMPIFLT                         R4 R16 ; [+2]
       53 LOADB                            R19 0 +1
       54 LOADB                            R19 1
       55 JUMP                             ; [+4]
       56 JUMPIFLT                         R16 R4 ; [+2]
       58 LOADB                            R19 0 +1
       59 LOADB                            R19 1
       60 JUMPIFNOT                        R19 ; [+3]
       61 ADD                              R10 R10 R17
       62 ADD                              R11 R11 R18
       63 JUMP                             ; [+2]
       64 ADD                              R12 R12 R17
       65 ADD                              R13 R13 R18
       66 FORNLOOP                         R14
       67 SUB                              R15 R2 R10
       68 JUMPIFNOT                        R11 ; [+2]
       69 SUB                              R17 R2 R11
       70 JUMP                             ; [+1]
       71 LOADN                            R17 0
       72 FASTCALL2                        MATH_MAX R17 R1 ; [+4]
       74 MOVE                             R18 R1
       75 GETIMPORT                        R16 K8 [math.max]
       77 CALL                             R16 2 1
       78 FASTCALL2                        MATH_MIN R15 R16 ; [+3]
       80 GETIMPORT                        R14 K10 [math.min]
       82 CALL                             R14 2 1
       83 FASTCALL2                        MATH_MAX R12 R14 ; [+5]
       85 MOVE                             R18 R12
       86 MOVE                             R19 R14
       87 GETIMPORT                        R17 K8 [math.max]
       89 CALL                             R17 2 1
       90 FASTCALL2                        MATH_MIN R13 R17 ; [+4]
       92 MOVE                             R16 R13
       93 GETIMPORT                        R15 K10 [math.min]
       95 CALL                             R15 2 1
       96 JUMPIFNOT                        R3 ; [+2]
       97 LOADN                            R16 1
       98 JUMP                             ; [+1]
       99 MOVE                             R16 R6
      100 LOADN                            R17 0
      101 MOVE                             R20 R4
      102 MOVE                             R18 R16
      103 MINUS                            R19 R7
      104 FORNPREP                         R18
      105 GETTABLEKS                       R23 R0 K0 ["Sizes"]
      107 GETTABLE                         R22 R23 R20
      108 JUMPIFNOT                        R22 ; [+7]
      109 GETTABLEKS                       R24 R22 K3 ["Scale"]
      111 MUL                              R23 R24 R2
      112 GETTABLEKS                       R24 R22 K4 ["Offset"]
      114 ADD                              R21 R23 R24
      115 JUMP                             ; [+1]
      116 LOADN                            R21 0
      117 ADD                              R17 R17 R21
      118 FORNLOOP                         R18
      119 SUB                              R18 R15 R17
      120 MOVE                             R19 R18
      121 ADD                              R20 R4 R7
      122 JUMPIFNOT                        R3 ; [+2]
      123 MOVE                             R21 R6
      124 JUMP                             ; [+1]
      125 LOADN                            R21 1
      126 MOVE                             R24 R20
      127 MOVE                             R22 R21
      128 MOVE                             R23 R7
      129 FORNPREP                         R22
      130 GETTABLEKS                       R27 R0 K11 ["ClampSize"]
      132 NOT                              R26 R27
      133 AND                              R25 R26 R3
      134 GETTABLEKS                       R28 R0 K0 ["Sizes"]
      136 GETTABLE                         R27 R28 R24
      137 JUMPIFNOT                        R27 ; [+7]
      138 GETTABLEKS                       R29 R27 K3 ["Scale"]
      140 MUL                              R28 R29 R2
      141 GETTABLEKS                       R29 R27 K4 ["Offset"]
      143 ADD                              R26 R28 R29
      144 JUMP                             ; [+1]
      145 LOADN                            R26 0
      146 GETTABLEKS                       R29 R0 K2 ["MinSizes"]
      148 GETTABLE                         R28 R29 R24
      149 JUMPIFNOT                        R28 ; [+7]
      150 GETTABLEKS                       R30 R28 K3 ["Scale"]
      152 MUL                              R29 R30 R2
      153 GETTABLEKS                       R30 R28 K4 ["Offset"]
      155 ADD                              R27 R29 R30
      156 JUMP                             ; [+1]
      157 LOADN                            R27 0
      158 JUMPIF                           R25 ; [+11]
      159 LOADN                            R29 0
      160 JUMPIFNOTLT                      R29 R18 ; [+9]
      162 SUB                              R29 R26 R18
      163 FASTCALL2                        MATH_MAX R29 R27 ; [+4]
      165 MOVE                             R30 R27
      166 GETIMPORT                        R28 K8 [math.max]
      168 CALL                             R28 2 1
      169 JUMP                             ; [+1]
      170 MOVE                             R28 R26
      171 SUB                              R29 R26 R28
      172 SUB                              R18 R18 R29
      173 GETTABLEKS                       R30 R0 K12 ["UseScale"]
      175 JUMPIFNOT                        R30 ; [+6]
      176 GETIMPORT                        R29 K15 [UDim.new]
      178 DIV                              R30 R28 R2
      179 LOADN                            R31 0
      180 CALL                             R29 2 1
      181 JUMP                             ; [+5]
      182 GETIMPORT                        R29 K15 [UDim.new]
      184 LOADN                            R30 0
      185 MOVE                             R31 R28
      186 CALL                             R29 2 1
      187 SETTABLE                         R29 R5 R24
      188 FORNLOOP                         R22
      189 MOVE                             R24 R4
      190 MOVE                             R22 R16
      191 MINUS                            R23 R7
      192 FORNPREP                         R22
      193 GETTABLEKS                       R26 R0 K11 ["ClampSize"]
      195 NOT                              R25 R26
      196 JUMPIFNOT                        R25 ; [+1]
      197 NOT                              R25 R3
      198 GETTABLEKS                       R28 R0 K0 ["Sizes"]
      200 GETTABLE                         R27 R28 R24
      201 JUMPIFNOT                        R27 ; [+7]
      202 GETTABLEKS                       R29 R27 K3 ["Scale"]
      204 MUL                              R28 R29 R2
      205 GETTABLEKS                       R29 R27 K4 ["Offset"]
      207 ADD                              R26 R28 R29
      208 JUMP                             ; [+1]
      209 LOADN                            R26 0
      210 GETTABLE                         R28 R9 R24
      211 JUMPIFNOT                        R28 ; [+11]
      212 GETTABLE                         R28 R9 R24
      213 JUMPIFNOT                        R28 ; [+7]
      214 GETTABLEKS                       R30 R28 K3 ["Scale"]
      216 MUL                              R29 R30 R2
      217 GETTABLEKS                       R30 R28 K4 ["Offset"]
      219 ADD                              R27 R29 R30
      220 JUMP                             ; [+3]
      221 LOADN                            R27 0
      222 JUMP                             ; [+1]
      223 LOADK                            R27 K5 [∞]
      224 JUMPIF                           R25 ; [+11]
      225 LOADN                            R29 0
      226 JUMPIFNOTLT                      R29 R19 ; [+9]
      228 ADD                              R29 R26 R19
      229 FASTCALL2                        MATH_MIN R29 R27 ; [+4]
      231 MOVE                             R30 R27
      232 GETIMPORT                        R28 K10 [math.min]
      234 CALL                             R28 2 1
      235 JUMP                             ; [+1]
      236 MOVE                             R28 R26
      237 SUB                              R29 R28 R26
      238 SUB                              R19 R19 R29
      239 GETTABLEKS                       R30 R0 K12 ["UseScale"]
      241 JUMPIFNOT                        R30 ; [+6]
      242 GETIMPORT                        R29 K15 [UDim.new]
      244 DIV                              R30 R28 R2
      245 LOADN                            R31 0
      246 CALL                             R29 2 1
      247 JUMP                             ; [+5]
      248 GETIMPORT                        R29 K15 [UDim.new]
      250 LOADN                            R30 0
      251 MOVE                             R31 R28
      252 CALL                             R29 2 1
      253 SETTABLE                         R29 R5 R24
      254 FORNLOOP                         R22
      255 GETTABLEKS                       R22 R0 K16 ["UseDeficit"]
      257 JUMPIFNOT                        R22 ; [+15]
      258 GETTABLEKS                       R22 R0 K11 ["ClampSize"]
      260 JUMPIFNOT                        R22 ; [+12]
      261 GETTABLEKS                       R22 R0 K12 ["UseScale"]
      263 JUMPIF                           R22 ; [+9]
      264 GETIMPORT                        R22 K15 [UDim.new]
      266 LOADN                            R23 1
      267 GETTABLE                         R25 R5 R6
      268 GETTABLEKS                       R25 R25 K4 ["Offset"]
      270 SUB                              R24 R25 R2
      271 CALL                             R22 2 1
      272 SETTABLE                         R22 R5 R6
      273 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 RETURN                           R2 1
