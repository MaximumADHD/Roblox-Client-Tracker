PROTO_0:
        0 LOADK                            R3 K0 ["\\"]
        1 LOADK                            R4 K1 ["/"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["reset"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["inverse"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["white"]
       10 GETVARARGS                       R3 -1
       11 CALL                             R2 -1 -1
       12 CALL                             R1 -1 -1
       13 CALL                             R0 -1 -1
       14 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["toJSBoolean"]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+19]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 1
        9 GETTABLE                         R0 R1 R2
       10 JUMPIFEQKNIL                     R0 ; [+15]
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K1 ["reset"]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K2 ["inverse"]
       18 GETUPVAL                         R3 2
       19 GETUPVAL                         R4 1
       20 GETTABLE                         R2 R3 R4
       21 GETVARARGS                       R3 -1
       22 CALL                             R2 -1 -1
       23 CALL                             R1 -1 -1
       24 CALL                             R0 -1 -1
       25 RETURN                           R0 -1
       26 GETUPVAL                         R0 3
       27 GETVARARGS                       R1 -1
       28 CALL                             R0 -1 -1
       29 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["displayName"]
        2 DUPCLOSURE                       R2 K1 [PROTO_1]
        3 CAPTURE                          UPVAL U0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["toJSBoolean"]
        7 MOVE                             R4 R1
        8 CALL                             R3 1 1
        9 JUMPIF                           R3 ; [+2]
       10 LOADK                            R3 K3 [""]
       11 RETURN                           R3 1
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 JUMPIFEQKNIL                     R1 ; [+5]
       16 GETTABLEKS                       R3 R1 K4 ["name"]
       18 GETTABLEKS                       R4 R1 K5 ["color"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          REF R4
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R2
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K6 ["supportsColor"]
       28 JUMPIFEQKNIL                     R7 ; [+6]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K6 ["supportsColor"]
       33 JUMPIFNOTEQKB                    R7 TRUE ; [+9]
       35 MOVE                             R6 R5
       36 LOADK                            R7 K7 [" %s "]
       37 MOVE                             R9 R3
       38 NAMECALL                         R7 R7 K8 ["format"]
       40 CALL                             R7 2 -1
       41 CALL                             R6 -1 1
       42 JUMP                             ; [+1]
       43 MOVE                             R6 R3
       44 CLOSEUPVALS                      R4
       45 RETURN                           R6 1

PROTO_4:
        0 SUB                              R4 R3 R0
        1 GETUPVAL                         R5 0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 CALL                             R5 2 1
        5 GETTABLEKS                       R6 R5 K0 ["basename"]
        7 GETTABLEKS                       R7 R5 K1 ["dirname"]
        9 GETIMPORT                        R8 K4 [utf8.len]
       11 MOVE                             R10 R7
       12 GETUPVAL                         R11 1
       13 GETTABLEKS                       R11 R11 K5 ["sep"]
       15 MOVE                             R12 R6
       16 CONCAT                           R9 R10 R12
       17 CALL                             R8 1 1
       18 JUMPIFNOTEQKNIL                  R8 ; [+2]
       20 LOADB                            R10 0 +1
       21 LOADB                            R10 1
       22 FASTCALL1                        ASSERT R10 ; [+2]
       23 GETIMPORT                        R9 K7 [assert]
       25 CALL                             R9 1 0
       26 JUMPIFNOTLE                      R8 R4 ; [+19]
       28 GETUPVAL                         R9 2
       29 GETUPVAL                         R11 3
       30 GETTABLEKS                       R11 R11 K8 ["dim"]
       32 MOVE                             R13 R7
       33 GETUPVAL                         R14 1
       34 GETTABLEKS                       R14 R14 K5 ["sep"]
       36 CONCAT                           R12 R13 R14
       37 CALL                             R11 1 1
       38 GETUPVAL                         R12 3
       39 GETTABLEKS                       R12 R12 K9 ["bold"]
       41 MOVE                             R13 R6
       42 CALL                             R12 1 1
       43 CONCAT                           R10 R11 R12
       44 CALL                             R9 1 -1
       45 RETURN                           R9 -1
       46 GETIMPORT                        R9 K4 [utf8.len]
       48 MOVE                             R10 R6
       49 CALL                             R9 1 1
       50 FASTCALL1                        ASSERT R9 ; [+3]
       51 MOVE                             R11 R9
       52 GETIMPORT                        R10 K7 [assert]
       54 CALL                             R10 1 0
       55 ADDK                             R10 R9 K10 [4]
       56 JUMPIFNOTLT                      R10 R4 ; [+39]
       58 SUBK                             R11 R4 K10 [4]
       59 SUB                              R10 R11 R9
       60 LOADK                            R11 K11 ["..."]
       61 GETUPVAL                         R12 4
       62 GETTABLEKS                       R12 R12 K12 ["slice"]
       64 MOVE                             R13 R7
       65 GETIMPORT                        R16 K4 [utf8.len]
       67 MOVE                             R17 R7
       68 CALL                             R16 1 1
       69 SUB                              R15 R16 R10
       70 ADDK                             R14 R15 K13 [1]
       71 GETIMPORT                        R16 K4 [utf8.len]
       73 MOVE                             R17 R7
       74 CALL                             R16 1 1
       75 ADDK                             R15 R16 K13 [1]
       76 CALL                             R12 3 1
       77 CONCAT                           R7 R11 R12
       78 GETUPVAL                         R11 2
       79 GETUPVAL                         R13 3
       80 GETTABLEKS                       R13 R13 K8 ["dim"]
       82 MOVE                             R15 R7
       83 GETUPVAL                         R16 1
       84 GETTABLEKS                       R16 R16 K5 ["sep"]
       86 CONCAT                           R14 R15 R16
       87 CALL                             R13 1 1
       88 GETUPVAL                         R14 3
       89 GETTABLEKS                       R14 R14 K9 ["bold"]
       91 MOVE                             R15 R6
       92 CALL                             R14 1 1
       93 CONCAT                           R12 R13 R14
       94 CALL                             R11 1 -1
       95 RETURN                           R11 -1
       96 ADDK                             R10 R9 K10 [4]
       97 JUMPIFNOTEQ                      R10 R4 ; [+19]
       99 GETUPVAL                         R10 2
      100 GETUPVAL                         R12 3
      101 GETTABLEKS                       R12 R12 K8 ["dim"]
      103 LOADK                            R14 K11 ["..."]
      104 GETUPVAL                         R15 1
      105 GETTABLEKS                       R15 R15 K5 ["sep"]
      107 CONCAT                           R13 R14 R15
      108 CALL                             R12 1 1
      109 GETUPVAL                         R13 3
      110 GETTABLEKS                       R13 R13 K9 ["bold"]
      112 MOVE                             R14 R6
      113 CALL                             R13 1 1
      114 CONCAT                           R11 R12 R13
      115 CALL                             R10 1 -1
      116 RETURN                           R10 -1
      117 GETUPVAL                         R10 2
      118 GETUPVAL                         R11 3
      119 GETTABLEKS                       R11 R11 K9 ["bold"]
      121 LOADK                            R13 K11 ["..."]
      122 GETUPVAL                         R14 4
      123 GETTABLEKS                       R14 R14 K12 ["slice"]
      125 MOVE                             R15 R6
      126 SUB                              R17 R9 R4
      127 SUBK                             R16 R17 K10 [4]
      128 ADDK                             R17 R9 K13 [1]
      129 CALL                             R14 3 1
      130 CONCAT                           R12 R13 R14
      131 CALL                             R11 1 -1
      132 CALL                             R10 -1 -1
      133 RETURN                           R10 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K0 ["dirname"]
        6 GETTABLEKS                       R4 R2 K1 ["basename"]
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R7 R7 K2 ["dim"]
       12 MOVE                             R9 R3
       13 GETUPVAL                         R10 3
       14 GETTABLEKS                       R10 R10 K3 ["sep"]
       16 CONCAT                           R8 R9 R10
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K4 ["bold"]
       21 MOVE                             R9 R4
       22 CALL                             R8 1 1
       23 CONCAT                           R6 R7 R8
       24 CALL                             R5 1 -1
       25 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["dirname"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 MOVE                             R5 R1
        7 NAMECALL                         R3 R3 K1 ["basename"]
        9 CALL                             R3 2 1
       10 DUPTABLE                         R4 K2 [{"basename", "dirname"}]
       11 SETTABLEKS                       R3 R4 K1 ["basename"]
       13 SETTABLEKS                       R2 R4 K0 ["dirname"]
       15 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["testCaseResult"]
        2 GETTABLEKS                       R1 R1 K1 ["status"]
        4 JUMPIFNOTEQKS                    R1 K2 ["failed"] ; [+5]
        6 GETUPVAL                         R3 0
        7 ADDK                             R2 R3 K3 [1]
        8 SETUPVAL                         R2 0
        9 JUMP                             ; [+17]
       10 JUMPIFNOTEQKS                    R1 K4 ["passed"] ; [+5]
       12 GETUPVAL                         R3 1
       13 ADDK                             R2 R3 K3 [1]
       14 SETUPVAL                         R2 1
       15 JUMP                             ; [+11]
       16 JUMPIFNOTEQKS                    R1 K5 ["skipped"] ; [+5]
       18 GETUPVAL                         R3 2
       19 ADDK                             R2 R3 K3 [1]
       20 SETUPVAL                         R2 2
       21 JUMP                             ; [+5]
       22 JUMPIFNOTEQKS                    R1 K6 ["todo"] ; [+4]
       24 GETUPVAL                         R3 3
       25 ADDK                             R2 R3 K3 [1]
       26 SETUPVAL                         R2 3
       27 GETUPVAL                         R2 4
       28 ADDK                             R2 R2 K3 [1]
       29 SETUPVAL                         R2 4
       30 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 LOADN                            R1 0
        5 LOADN                            R2 0
        6 LOADN                            R3 0
        7 LOADN                            R4 0
        8 LOADN                            R5 0
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K0 ["forEach"]
       12 MOVE                             R7 R0
       13 NEWCLOSURE                       R8 P0
       14 CAPTURE                          REF R1
       15 CAPTURE                          REF R2
       16 CAPTURE                          REF R3
       17 CAPTURE                          REF R4
       18 CAPTURE                          REF R5
       19 CALL                             R6 2 0
       20 DUPTABLE                         R6 K6 [{"numFailingTests", "numPassingTests", "numPendingTests", "numTodoTests", "numTotalTests"}]
       21 SETTABLEKS                       R1 R6 K1 ["numFailingTests"]
       23 SETTABLEKS                       R2 R6 K2 ["numPassingTests"]
       25 SETTABLEKS                       R3 R6 K3 ["numPendingTests"]
       27 SETTABLEKS                       R4 R6 K4 ["numTodoTests"]
       29 SETTABLEKS                       R5 R6 K5 ["numTotalTests"]
       31 CLOSEUPVALS                      R1
       32 RETURN                           R6 1

PROTO_9:
        0 GETIMPORT                        R4 K3 [DateTime.now]
        2 CALL                             R4 0 1
        3 GETTABLEKS                       R4 R4 K4 ["UnixTimestampMillis"]
        5 GETTABLEKS                       R5 R0 K5 ["startTime"]
        7 SUB                              R3 R4 R5
        8 DIVK                             R2 R3 K0 [1000]
        9 JUMPIFEQKNIL                     R1 ; [+10]
       11 GETTABLEKS                       R3 R1 K6 ["roundTime"]
       13 JUMPIFNOT                        R3 ; [+6]
       14 FASTCALL1                        MATH_FLOOR R2 ; [+3]
       15 MOVE                             R4 R2
       16 GETIMPORT                        R3 K9 [math.floor]
       18 CALL                             R3 1 1
       19 MOVE                             R2 R3
       20 GETUPVAL                         R3 0
       21 JUMPIFEQKNIL                     R1 ; [+4]
       23 GETTABLEKS                       R4 R1 K10 ["currentTestCases"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R4
       27 CALL                             R3 1 1
       28 JUMPIFEQKNIL                     R1 ; [+4]
       30 GETTABLEKS                       R4 R1 K11 ["estimatedTime"]
       32 JUMPIF                           R4 ; [+1]
       33 LOADN                            R4 0
       34 GETTABLEKS                       R5 R0 K12 ["snapshot"]
       36 GETTABLEKS                       R6 R5 K13 ["added"]
       38 GETTABLEKS                       R7 R5 K14 ["unmatched"]
       40 GETTABLEKS                       R8 R5 K15 ["unchecked"]
       42 GETTABLEKS                       R9 R5 K16 ["filesRemoved"]
       44 GETTABLEKS                       R10 R5 K17 ["didUpdate"]
       46 GETTABLEKS                       R11 R5 K18 ["matched"]
       48 GETTABLEKS                       R12 R5 K19 ["total"]
       50 GETTABLEKS                       R13 R5 K20 ["updated"]
       52 GETTABLEKS                       R15 R0 K22 ["numFailedTestSuites"]
       54 ORK                              R14 R15 K21 [0]
       55 GETTABLEKS                       R16 R0 K23 ["numPassedTestSuites"]
       57 ORK                              R15 R16 K21 [0]
       58 GETTABLEKS                       R17 R0 K24 ["numPendingTestSuites"]
       60 ORK                              R16 R17 K21 [0]
       61 ADD                              R17 R14 R15
       62 GETTABLEKS                       R19 R0 K25 ["numTotalTestSuites"]
       64 ORK                              R18 R19 K21 [0]
       65 GETTABLEKS                       R20 R0 K26 ["numFailedTests"]
       67 ORK                              R19 R20 K21 [0]
       68 GETTABLEKS                       R21 R0 K27 ["numPassedTests"]
       70 ORK                              R20 R21 K21 [0]
       71 GETTABLEKS                       R22 R0 K28 ["numPendingTests"]
       73 ORK                              R21 R22 K21 [0]
       74 GETTABLEKS                       R23 R0 K29 ["numTodoTests"]
       76 ORK                              R22 R23 K21 [0]
       77 GETTABLEKS                       R24 R0 K30 ["numTotalTests"]
       79 ORK                              R23 R24 K21 [0]
       80 JUMPIFEQKNIL                     R1 ; [+4]
       82 GETTABLEKS                       R24 R1 K31 ["width"]
       84 JUMPIF                           R24 ; [+1]
       85 LOADN                            R24 0
       86 GETUPVAL                         R26 1
       87 GETTABLEKS                       R26 R26 K32 ["bold"]
       89 LOADK                            R27 K33 ["Test Suites: "]
       90 CALL                             R26 1 1
       91 LOADN                            R28 0
       92 JUMPIFNOTLT                      R28 R14 ; [+17]
       94 GETUPVAL                         R28 1
       95 GETTABLEKS                       R28 R28 K32 ["bold"]
       97 GETUPVAL                         R29 1
       98 GETTABLEKS                       R29 R29 K34 ["red"]
      100 LOADK                            R30 K35 ["%d failed"]
      101 MOVE                             R32 R14
      102 NAMECALL                         R30 R30 K36 ["format"]
      104 CALL                             R30 2 -1
      105 CALL                             R29 -1 -1
      106 CALL                             R28 -1 1
      107 LOADK                            R29 K37 [", "]
      108 CONCAT                           R27 R28 R29
      109 JUMP                             ; [+1]
      110 LOADK                            R27 K38 [""]
      111 LOADN                            R29 0
      112 JUMPIFNOTLT                      R29 R16 ; [+17]
      114 GETUPVAL                         R29 1
      115 GETTABLEKS                       R29 R29 K32 ["bold"]
      117 GETUPVAL                         R30 1
      118 GETTABLEKS                       R30 R30 K39 ["yellow"]
      120 LOADK                            R31 K40 ["%d skipped"]
      121 MOVE                             R33 R16
      122 NAMECALL                         R31 R31 K36 ["format"]
      124 CALL                             R31 2 -1
      125 CALL                             R30 -1 -1
      126 CALL                             R29 -1 1
      127 LOADK                            R30 K37 [", "]
      128 CONCAT                           R28 R29 R30
      129 JUMP                             ; [+1]
      130 LOADK                            R28 K38 [""]
      131 LOADN                            R30 0
      132 JUMPIFNOTLT                      R30 R15 ; [+17]
      134 GETUPVAL                         R30 1
      135 GETTABLEKS                       R30 R30 K32 ["bold"]
      137 GETUPVAL                         R31 1
      138 GETTABLEKS                       R31 R31 K41 ["green"]
      140 LOADK                            R32 K42 ["%d passed"]
      141 MOVE                             R34 R15
      142 NAMECALL                         R32 R32 K36 ["format"]
      144 CALL                             R32 2 -1
      145 CALL                             R31 -1 -1
      146 CALL                             R30 -1 1
      147 LOADK                            R31 K37 [", "]
      148 CONCAT                           R29 R30 R31
      149 JUMP                             ; [+1]
      150 LOADK                            R29 K38 [""]
      151 JUMPIFEQ                         R17 R18 ; [+14]
      153 FASTCALL1                        TOSTRING R17 ; [+3]
      154 MOVE                             R32 R17
      155 GETIMPORT                        R31 K44 [tostring]
      157 CALL                             R31 1 1
      158 LOADK                            R32 K45 [" of "]
      159 FASTCALL1                        TOSTRING R18 ; [+3]
      160 MOVE                             R34 R18
      161 GETIMPORT                        R33 K44 [tostring]
      163 CALL                             R33 1 1
      164 CONCAT                           R30 R31 R33
      165 JUMP                             ; [+5]
      166 FASTCALL1                        TOSTRING R18 ; [+3]
      167 MOVE                             R31 R18
      168 GETIMPORT                        R30 K44 [tostring]
      170 CALL                             R30 1 1
      171 LOADK                            R31 K46 [" total"]
      172 CONCAT                           R25 R26 R31
      173 GETTABLEKS                       R27 R3 K47 ["numFailingTests"]
      175 ADD                              R26 R19 R27
      176 GETTABLEKS                       R28 R3 K28 ["numPendingTests"]
      178 ADD                              R27 R21 R28
      179 GETTABLEKS                       R29 R3 K29 ["numTodoTests"]
      181 ADD                              R28 R22 R29
      182 GETTABLEKS                       R30 R3 K48 ["numPassingTests"]
      184 ADD                              R29 R20 R30
      185 GETTABLEKS                       R31 R3 K30 ["numTotalTests"]
      187 ADD                              R30 R23 R31
      188 GETUPVAL                         R32 1
      189 GETTABLEKS                       R32 R32 K32 ["bold"]
      191 LOADK                            R33 K49 ["Tests:       "]
      192 CALL                             R32 1 1
      193 LOADN                            R34 0
      194 JUMPIFNOTLT                      R34 R26 ; [+17]
      196 GETUPVAL                         R34 1
      197 GETTABLEKS                       R34 R34 K32 ["bold"]
      199 GETUPVAL                         R35 1
      200 GETTABLEKS                       R35 R35 K34 ["red"]
      202 LOADK                            R36 K35 ["%d failed"]
      203 MOVE                             R38 R26
      204 NAMECALL                         R36 R36 K36 ["format"]
      206 CALL                             R36 2 -1
      207 CALL                             R35 -1 -1
      208 CALL                             R34 -1 1
      209 LOADK                            R35 K37 [", "]
      210 CONCAT                           R33 R34 R35
      211 JUMP                             ; [+1]
      212 LOADK                            R33 K38 [""]
      213 LOADN                            R35 0
      214 JUMPIFNOTLT                      R35 R27 ; [+17]
      216 GETUPVAL                         R35 1
      217 GETTABLEKS                       R35 R35 K32 ["bold"]
      219 GETUPVAL                         R36 1
      220 GETTABLEKS                       R36 R36 K39 ["yellow"]
      222 LOADK                            R37 K40 ["%d skipped"]
      223 MOVE                             R39 R27
      224 NAMECALL                         R37 R37 K36 ["format"]
      226 CALL                             R37 2 -1
      227 CALL                             R36 -1 -1
      228 CALL                             R35 -1 1
      229 LOADK                            R36 K37 [", "]
      230 CONCAT                           R34 R35 R36
      231 JUMP                             ; [+1]
      232 LOADK                            R34 K38 [""]
      233 LOADN                            R36 0
      234 JUMPIFNOTLT                      R36 R28 ; [+17]
      236 GETUPVAL                         R36 1
      237 GETTABLEKS                       R36 R36 K32 ["bold"]
      239 GETUPVAL                         R37 1
      240 GETTABLEKS                       R37 R37 K50 ["magenta"]
      242 LOADK                            R38 K51 ["%d todo"]
      243 MOVE                             R40 R28
      244 NAMECALL                         R38 R38 K36 ["format"]
      246 CALL                             R38 2 -1
      247 CALL                             R37 -1 -1
      248 CALL                             R36 -1 1
      249 LOADK                            R37 K37 [", "]
      250 CONCAT                           R35 R36 R37
      251 JUMP                             ; [+1]
      252 LOADK                            R35 K38 [""]
      253 LOADN                            R37 0
      254 JUMPIFNOTLT                      R37 R29 ; [+17]
      256 GETUPVAL                         R37 1
      257 GETTABLEKS                       R37 R37 K32 ["bold"]
      259 GETUPVAL                         R38 1
      260 GETTABLEKS                       R38 R38 K41 ["green"]
      262 LOADK                            R39 K42 ["%d passed"]
      263 MOVE                             R41 R29
      264 NAMECALL                         R39 R39 K36 ["format"]
      266 CALL                             R39 2 -1
      267 CALL                             R38 -1 -1
      268 CALL                             R37 -1 1
      269 LOADK                            R38 K37 [", "]
      270 CONCAT                           R36 R37 R38
      271 JUMP                             ; [+1]
      272 LOADK                            R36 K38 [""]
      273 LOADK                            R37 K52 ["%d total"]
      274 MOVE                             R39 R30
      275 NAMECALL                         R37 R37 K36 ["format"]
      277 CALL                             R37 2 1
      278 CONCAT                           R31 R32 R37
      279 GETUPVAL                         R33 1
      280 GETTABLEKS                       R33 R33 K32 ["bold"]
      282 LOADK                            R34 K53 ["Snapshots:   "]
      283 CALL                             R33 1 1
      284 LOADN                            R35 0
      285 JUMPIFNOTLT                      R35 R7 ; [+17]
      287 GETUPVAL                         R35 1
      288 GETTABLEKS                       R35 R35 K32 ["bold"]
      290 GETUPVAL                         R36 1
      291 GETTABLEKS                       R36 R36 K34 ["red"]
      293 LOADK                            R37 K35 ["%d failed"]
      294 MOVE                             R39 R7
      295 NAMECALL                         R37 R37 K36 ["format"]
      297 CALL                             R37 2 -1
      298 CALL                             R36 -1 -1
      299 CALL                             R35 -1 1
      300 LOADK                            R36 K37 [", "]
      301 CONCAT                           R34 R35 R36
      302 JUMP                             ; [+1]
      303 LOADK                            R34 K38 [""]
      304 GETUPVAL                         R36 2
      305 GETTABLEKS                       R36 R36 K54 ["toJSBoolean"]
      307 MOVE                             R37 R8
      308 CALL                             R36 1 1
      309 JUMPIFNOT                        R36 ; [+17]
      310 JUMPIF                           R10 ; [+16]
      311 GETUPVAL                         R36 1
      312 GETTABLEKS                       R36 R36 K32 ["bold"]
      314 GETUPVAL                         R37 1
      315 GETTABLEKS                       R37 R37 K39 ["yellow"]
      317 LOADK                            R38 K55 ["%d obsolete"]
      318 MOVE                             R40 R8
      319 NAMECALL                         R38 R38 K36 ["format"]
      321 CALL                             R38 2 -1
      322 CALL                             R37 -1 -1
      323 CALL                             R36 -1 1
      324 LOADK                            R37 K37 [", "]
      325 CONCAT                           R35 R36 R37
      326 JUMP                             ; [+1]
      327 LOADK                            R35 K38 [""]
      328 GETUPVAL                         R37 2
      329 GETTABLEKS                       R37 R37 K54 ["toJSBoolean"]
      331 MOVE                             R38 R8
      332 CALL                             R37 1 1
      333 JUMPIFNOT                        R37 ; [+17]
      334 JUMPIFNOT                        R10 ; [+16]
      335 GETUPVAL                         R37 1
      336 GETTABLEKS                       R37 R37 K32 ["bold"]
      338 GETUPVAL                         R38 1
      339 GETTABLEKS                       R38 R38 K41 ["green"]
      341 LOADK                            R39 K56 ["%d removed"]
      342 MOVE                             R41 R8
      343 NAMECALL                         R39 R39 K36 ["format"]
      345 CALL                             R39 2 -1
      346 CALL                             R38 -1 -1
      347 CALL                             R37 -1 1
      348 LOADK                            R38 K37 [", "]
      349 CONCAT                           R36 R37 R38
      350 JUMP                             ; [+1]
      351 LOADK                            R36 K38 [""]
      352 GETUPVAL                         R38 2
      353 GETTABLEKS                       R38 R38 K54 ["toJSBoolean"]
      355 MOVE                             R39 R9
      356 CALL                             R38 1 1
      357 JUMPIFNOT                        R38 ; [+18]
      358 JUMPIF                           R10 ; [+17]
      359 GETUPVAL                         R38 1
      360 GETTABLEKS                       R38 R38 K32 ["bold"]
      362 GETUPVAL                         R39 1
      363 GETTABLEKS                       R39 R39 K39 ["yellow"]
      365 GETUPVAL                         R41 3
      366 LOADK                            R42 K57 ["file"]
      367 MOVE                             R43 R9
      368 CALL                             R41 2 1
      369 LOADK                            R42 K58 [" obsolete"]
      370 CONCAT                           R40 R41 R42
      371 CALL                             R39 1 -1
      372 CALL                             R38 -1 1
      373 LOADK                            R39 K37 [", "]
      374 CONCAT                           R37 R38 R39
      375 JUMP                             ; [+1]
      376 LOADK                            R37 K38 [""]
      377 GETUPVAL                         R39 2
      378 GETTABLEKS                       R39 R39 K54 ["toJSBoolean"]
      380 MOVE                             R40 R9
      381 CALL                             R39 1 1
      382 JUMPIFNOT                        R39 ; [+18]
      383 JUMPIFNOT                        R10 ; [+17]
      384 GETUPVAL                         R39 1
      385 GETTABLEKS                       R39 R39 K32 ["bold"]
      387 GETUPVAL                         R40 1
      388 GETTABLEKS                       R40 R40 K41 ["green"]
      390 GETUPVAL                         R42 3
      391 LOADK                            R43 K57 ["file"]
      392 MOVE                             R44 R9
      393 CALL                             R42 2 1
      394 LOADK                            R43 K59 [" removed"]
      395 CONCAT                           R41 R42 R43
      396 CALL                             R40 1 -1
      397 CALL                             R39 -1 1
      398 LOADK                            R40 K37 [", "]
      399 CONCAT                           R38 R39 R40
      400 JUMP                             ; [+1]
      401 LOADK                            R38 K38 [""]
      402 GETUPVAL                         R40 2
      403 GETTABLEKS                       R40 R40 K54 ["toJSBoolean"]
      405 MOVE                             R41 R13
      406 CALL                             R40 1 1
      407 JUMPIFNOT                        R40 ; [+16]
      408 GETUPVAL                         R40 1
      409 GETTABLEKS                       R40 R40 K32 ["bold"]
      411 GETUPVAL                         R41 1
      412 GETTABLEKS                       R41 R41 K41 ["green"]
      414 LOADK                            R42 K60 ["%d updated"]
      415 MOVE                             R44 R13
      416 NAMECALL                         R42 R42 K36 ["format"]
      418 CALL                             R42 2 -1
      419 CALL                             R41 -1 -1
      420 CALL                             R40 -1 1
      421 LOADK                            R41 K37 [", "]
      422 CONCAT                           R39 R40 R41
      423 JUMP                             ; [+1]
      424 LOADK                            R39 K38 [""]
      425 GETUPVAL                         R41 2
      426 GETTABLEKS                       R41 R41 K54 ["toJSBoolean"]
      428 MOVE                             R42 R6
      429 CALL                             R41 1 1
      430 JUMPIFNOT                        R41 ; [+16]
      431 GETUPVAL                         R41 1
      432 GETTABLEKS                       R41 R41 K32 ["bold"]
      434 GETUPVAL                         R42 1
      435 GETTABLEKS                       R42 R42 K41 ["green"]
      437 LOADK                            R43 K61 ["%d written"]
      438 MOVE                             R45 R6
      439 NAMECALL                         R43 R43 K36 ["format"]
      441 CALL                             R43 2 -1
      442 CALL                             R42 -1 -1
      443 CALL                             R41 -1 1
      444 LOADK                            R42 K37 [", "]
      445 CONCAT                           R40 R41 R42
      446 JUMP                             ; [+1]
      447 LOADK                            R40 K38 [""]
      448 GETUPVAL                         R42 2
      449 GETTABLEKS                       R42 R42 K54 ["toJSBoolean"]
      451 MOVE                             R43 R11
      452 CALL                             R42 1 1
      453 JUMPIFNOT                        R42 ; [+16]
      454 GETUPVAL                         R42 1
      455 GETTABLEKS                       R42 R42 K32 ["bold"]
      457 GETUPVAL                         R43 1
      458 GETTABLEKS                       R43 R43 K41 ["green"]
      460 LOADK                            R44 K42 ["%d passed"]
      461 MOVE                             R46 R11
      462 NAMECALL                         R44 R44 K36 ["format"]
      464 CALL                             R44 2 -1
      465 CALL                             R43 -1 -1
      466 CALL                             R42 -1 1
      467 LOADK                            R43 K37 [", "]
      468 CONCAT                           R41 R42 R43
      469 JUMP                             ; [+1]
      470 LOADK                            R41 K38 [""]
      471 LOADK                            R42 K52 ["%d total"]
      472 MOVE                             R44 R12
      473 NAMECALL                         R42 R42 K36 ["format"]
      475 CALL                             R42 2 1
      476 CONCAT                           R32 R33 R42
      477 GETUPVAL                         R33 4
      478 MOVE                             R34 R2
      479 MOVE                             R35 R4
      480 MOVE                             R36 R24
      481 CALL                             R33 3 1
      482 GETUPVAL                         R34 5
      483 GETTABLEKS                       R34 R34 K62 ["join"]
      485 NEWTABLE                         R35 0 4
      487 MOVE                             R36 R25
      488 MOVE                             R37 R31
      489 MOVE                             R38 R32
      490 MOVE                             R39 R33
      491 SETLIST                          R35 R36 4 [1]
      493 LOADK                            R36 K63 ["\n"]
      494 CALL                             R34 2 -1
      495 RETURN                           R34 -1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 JUMPIFNOT                        R4 ; [+16]
        6 ADDK                             R4 R1 K1 [1]
        7 JUMPIFNOTLE                      R4 R0 ; [+14]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["bold"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["yellow"]
       15 GETUPVAL                         R5 2
       16 MOVE                             R6 R0
       17 LOADN                            R7 0
       18 CALL                             R5 2 -1
       19 CALL                             R4 -1 -1
       20 CALL                             R3 -1 1
       21 JUMP                             ; [+4]
       22 GETUPVAL                         R3 2
       23 MOVE                             R4 R0
       24 LOADN                            R5 0
       25 CALL                             R3 2 1
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K2 ["bold"]
       29 LOADK                            R6 K4 ["Time:"]
       30 CALL                             R5 1 1
       31 LOADK                            R6 K5 ["        %s"]
       32 MOVE                             R8 R3
       33 NAMECALL                         R6 R6 K6 ["format"]
       35 CALL                             R6 2 1
       36 CONCAT                           R4 R5 R6
       37 JUMPIFNOTLT                      R0 R1 ; [+11]
       39 MOVE                             R5 R4
       40 LOADK                            R6 K7 [", estimated %s"]
       41 GETUPVAL                         R8 2
       42 MOVE                             R9 R1
       43 LOADN                            R10 0
       44 CALL                             R8 2 -1
       45 NAMECALL                         R6 R6 K6 ["format"]
       47 CALL                             R6 -1 1
       48 CONCAT                           R4 R5 R6
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K0 ["toJSBoolean"]
       52 LOADB                            R6 0
       53 LOADN                            R7 2
       54 JUMPIFNOTLT                      R7 R1 ; [+5]
       56 LOADB                            R6 0
       57 JUMPIFNOTLT                      R0 R1 ; [+2]
       59 MOVE                             R6 R2
       60 CALL                             R5 1 1
       61 JUMPIFNOT                        R5 ; [+47]
       62 LOADN                            R6 40
       63 FASTCALL2                        MATH_MIN R6 R2 ; [+4]
       65 MOVE                             R7 R2
       66 GETIMPORT                        R5 K10 [math.min]
       68 CALL                             R5 2 1
       69 DIV                              R9 R0 R1
       70 MUL                              R8 R9 R5
       71 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       72 GETIMPORT                        R7 K12 [math.floor]
       74 CALL                             R7 1 1
       75 FASTCALL2                        MATH_MIN R7 R5 ; [+4]
       77 MOVE                             R8 R5
       78 GETIMPORT                        R6 K10 [math.min]
       80 CALL                             R6 2 1
       81 LOADN                            R7 2
       82 JUMPIFNOTLE                      R7 R5 ; [+26]
       84 MOVE                             R7 R4
       85 LOADK                            R8 K13 ["\n"]
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K14 ["green"]
       89 LOADK                            R10 K15 ["█"]
       90 CALL                             R9 1 1
       91 MOVE                             R11 R6
       92 NAMECALL                         R9 R9 K16 ["rep"]
       94 CALL                             R9 2 1
       95 GETUPVAL                         R11 1
       96 GETTABLEKS                       R11 R11 K17 ["white"]
       98 LOADK                            R12 K15 ["█"]
       99 CALL                             R11 1 1
      100 SUB                              R13 R5 R6
      101 NAMECALL                         R11 R11 K16 ["rep"]
      103 CALL                             R11 2 -1
      104 FASTCALL                         TOSTRING ; [+2]
      105 GETIMPORT                        R10 K19 [tostring]
      107 CALL                             R10 -1 1
      108 CONCAT                           R4 R7 R10
      109 RETURN                           R4 1

PROTO_11:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       16 GETTABLEKS                       R5 R2 K8 ["String"]
       18 NEWTABLE                         R6 8 0
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R1 K9 ["Path"]
       24 CALL                             R7 1 1
       25 GETTABLEKS                       R7 R7 K10 ["path"]
       27 GETIMPORT                        R8 K4 [require]
       29 GETTABLEKS                       R9 R1 K11 ["ChalkLua"]
       31 CALL                             R8 1 1
       32 DUPCLOSURE                       R9 K12 [PROTO_0]
       33 GETIMPORT                        R10 K4 [require]
       35 GETTABLEKS                       R11 R1 K13 ["JestTestResult"]
       37 CALL                             R10 1 1
       38 GETIMPORT                        R11 K4 [require]
       40 GETTABLEKS                       R12 R1 K14 ["JestTypes"]
       42 CALL                             R11 1 1
       43 GETIMPORT                        R12 K4 [require]
       45 GETTABLEKS                       R13 R1 K15 ["JestUtil"]
       47 CALL                             R12 1 1
       48 GETTABLEKS                       R13 R12 K16 ["formatTime"]
       50 GETTABLEKS                       R14 R12 K17 ["pluralize"]
       52 GETIMPORT                        R15 K4 [require]
       54 GETTABLEKS                       R16 R0 K18 ["types"]
       56 CALL                             R15 1 1
       57 LOADNIL                          R16
       58 LOADNIL                          R17
       59 DUPCLOSURE                       R18 K19 [PROTO_3]
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R4
       62 SETTABLEKS                       R18 R6 K20 ["printDisplayName"]
       64 NEWCLOSURE                       R19 P2
       65 CAPTURE                          REF R16
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R5
       70 SETTABLEKS                       R19 R6 K21 ["trimAndFormatPath"]
       72 NEWCLOSURE                       R20 P3
       73 CAPTURE                          REF R16
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R7
       77 SETTABLEKS                       R20 R6 K22 ["formatTestPath"]
       79 DUPCLOSURE                       R16 K23 [PROTO_6]
       80 CAPTURE                          VAL R7
       81 SETTABLEKS                       R16 R6 K24 ["relativePath"]
       83 DUPCLOSURE                       R21 K25 [PROTO_8]
       84 CAPTURE                          VAL R3
       85 NEWCLOSURE                       R22 P6
       86 CAPTURE                          VAL R21
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R14
       90 CAPTURE                          REF R17
       91 CAPTURE                          VAL R3
       92 SETTABLEKS                       R22 R6 K26 ["getSummary"]
       94 DUPCLOSURE                       R17 K27 [PROTO_10]
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R13
       98 DUPCLOSURE                       R23 K28 [PROTO_11]
       99 SETTABLEKS                       R23 R6 K29 ["wrapAnsiString"]
      101 CLOSEUPVALS                      R16
      102 RETURN                           R6 1
