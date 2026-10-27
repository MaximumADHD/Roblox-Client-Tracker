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
       26 JUMPIFNOTLE                      R8 R4 ; [+20]
       28 GETUPVAL                         R9 2
       29 GETUPVAL                         R13 3
       30 GETTABLEKS                       R13 R13 K8 ["dim"]
       32 MOVE                             R15 R7
       33 GETUPVAL                         R16 1
       34 GETTABLEKS                       R16 R16 K5 ["sep"]
       36 CONCAT                           R14 R15 R16
       37 CALL                             R13 1 1
       38 MOVE                             R11 R13
       39 GETUPVAL                         R12 3
       40 GETTABLEKS                       R12 R12 K9 ["bold"]
       42 MOVE                             R13 R6
       43 CALL                             R12 1 1
       44 CONCAT                           R10 R11 R12
       45 CALL                             R9 1 -1
       46 RETURN                           R9 -1
       47 GETIMPORT                        R9 K4 [utf8.len]
       49 MOVE                             R10 R6
       50 CALL                             R9 1 1
       51 FASTCALL1                        ASSERT R9 ; [+3]
       52 MOVE                             R11 R9
       53 GETIMPORT                        R10 K7 [assert]
       55 CALL                             R10 1 0
       56 ADDK                             R10 R9 K10 [4]
       57 JUMPIFNOTLT                      R10 R4 ; [+40]
       59 SUBK                             R11 R4 K10 [4]
       60 SUB                              R10 R11 R9
       61 LOADK                            R11 K11 ["..."]
       62 GETUPVAL                         R12 4
       63 GETTABLEKS                       R12 R12 K12 ["slice"]
       65 MOVE                             R13 R7
       66 GETIMPORT                        R16 K4 [utf8.len]
       68 MOVE                             R17 R7
       69 CALL                             R16 1 1
       70 SUB                              R15 R16 R10
       71 ADDK                             R14 R15 K13 [1]
       72 GETIMPORT                        R16 K4 [utf8.len]
       74 MOVE                             R17 R7
       75 CALL                             R16 1 1
       76 ADDK                             R15 R16 K13 [1]
       77 CALL                             R12 3 1
       78 CONCAT                           R7 R11 R12
       79 GETUPVAL                         R11 2
       80 GETUPVAL                         R15 3
       81 GETTABLEKS                       R15 R15 K8 ["dim"]
       83 MOVE                             R17 R7
       84 GETUPVAL                         R18 1
       85 GETTABLEKS                       R18 R18 K5 ["sep"]
       87 CONCAT                           R16 R17 R18
       88 CALL                             R15 1 1
       89 MOVE                             R13 R15
       90 GETUPVAL                         R14 3
       91 GETTABLEKS                       R14 R14 K9 ["bold"]
       93 MOVE                             R15 R6
       94 CALL                             R14 1 1
       95 CONCAT                           R12 R13 R14
       96 CALL                             R11 1 -1
       97 RETURN                           R11 -1
       98 ADDK                             R10 R9 K10 [4]
       99 JUMPIFNOTEQ                      R10 R4 ; [+20]
      101 GETUPVAL                         R10 2
      102 GETUPVAL                         R14 3
      103 GETTABLEKS                       R14 R14 K8 ["dim"]
      105 LOADK                            R16 K11 ["..."]
      106 GETUPVAL                         R17 1
      107 GETTABLEKS                       R17 R17 K5 ["sep"]
      109 CONCAT                           R15 R16 R17
      110 CALL                             R14 1 1
      111 MOVE                             R12 R14
      112 GETUPVAL                         R13 3
      113 GETTABLEKS                       R13 R13 K9 ["bold"]
      115 MOVE                             R14 R6
      116 CALL                             R13 1 1
      117 CONCAT                           R11 R12 R13
      118 CALL                             R10 1 -1
      119 RETURN                           R10 -1
      120 GETUPVAL                         R10 2
      121 GETUPVAL                         R11 3
      122 GETTABLEKS                       R11 R11 K9 ["bold"]
      124 LOADK                            R13 K11 ["..."]
      125 GETUPVAL                         R14 4
      126 GETTABLEKS                       R14 R14 K12 ["slice"]
      128 MOVE                             R15 R6
      129 SUB                              R17 R9 R4
      130 SUBK                             R16 R17 K10 [4]
      131 ADDK                             R17 R9 K13 [1]
      132 CALL                             R14 3 1
      133 CONCAT                           R12 R13 R14
      134 CALL                             R11 1 -1
      135 CALL                             R10 -1 -1
      136 RETURN                           R10 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K0 ["dirname"]
        6 GETTABLEKS                       R4 R2 K1 ["basename"]
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R9 2
       10 GETTABLEKS                       R9 R9 K2 ["dim"]
       12 MOVE                             R11 R3
       13 GETUPVAL                         R12 3
       14 GETTABLEKS                       R12 R12 K3 ["sep"]
       16 CONCAT                           R10 R11 R12
       17 CALL                             R9 1 1
       18 MOVE                             R7 R9
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R8 R8 K4 ["bold"]
       22 MOVE                             R9 R4
       23 CALL                             R8 1 1
       24 CONCAT                           R6 R7 R8
       25 CALL                             R5 1 -1
       26 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["toJSBoolean"]
        4 GETTABLEKS                       R6 R0 K1 ["cwd"]
        6 CALL                             R5 1 1
        7 JUMPIFNOT                        R5 ; [+3]
        8 GETTABLEKS                       R4 R0 K1 ["cwd"]
       10 JUMPIF                           R4 ; [+2]
       11 GETTABLEKS                       R4 R0 K2 ["rootDir"]
       13 MOVE                             R5 R1
       14 NAMECALL                         R2 R2 K3 ["relative"]
       16 CALL                             R2 3 1
       17 MOVE                             R1 R2
       18 GETUPVAL                         R2 0
       19 MOVE                             R4 R1
       20 NAMECALL                         R2 R2 K4 ["dirname"]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 0
       24 MOVE                             R5 R1
       25 NAMECALL                         R3 R3 K5 ["basename"]
       27 CALL                             R3 2 1
       28 DUPTABLE                         R4 K6 [{"basename", "dirname"}]
       29 SETTABLEKS                       R3 R4 K5 ["basename"]
       31 SETTABLEKS                       R2 R4 K4 ["dirname"]
       33 RETURN                           R4 1

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
       86 GETUPVAL                         R32 1
       87 GETTABLEKS                       R32 R32 K32 ["bold"]
       89 LOADK                            R33 K33 ["Test Suites: "]
       90 CALL                             R32 1 1
       91 MOVE                             R26 R32
       92 LOADN                            R32 0
       93 JUMPIFNOTLT                      R32 R14 ; [+18]
       95 GETUPVAL                         R34 1
       96 GETTABLEKS                       R34 R34 K32 ["bold"]
       98 GETUPVAL                         R35 1
       99 GETTABLEKS                       R35 R35 K34 ["red"]
      101 LOADK                            R36 K35 ["%d failed"]
      102 MOVE                             R38 R14
      103 NAMECALL                         R36 R36 K36 ["format"]
      105 CALL                             R36 2 -1
      106 CALL                             R35 -1 -1
      107 CALL                             R34 -1 1
      108 MOVE                             R32 R34
      109 LOADK                            R33 K37 [", "]
      110 CONCAT                           R27 R32 R33
      111 JUMP                             ; [+1]
      112 LOADK                            R27 K38 [""]
      113 LOADN                            R32 0
      114 JUMPIFNOTLT                      R32 R16 ; [+18]
      116 GETUPVAL                         R34 1
      117 GETTABLEKS                       R34 R34 K32 ["bold"]
      119 GETUPVAL                         R35 1
      120 GETTABLEKS                       R35 R35 K39 ["yellow"]
      122 LOADK                            R36 K40 ["%d skipped"]
      123 MOVE                             R38 R16
      124 NAMECALL                         R36 R36 K36 ["format"]
      126 CALL                             R36 2 -1
      127 CALL                             R35 -1 -1
      128 CALL                             R34 -1 1
      129 MOVE                             R32 R34
      130 LOADK                            R33 K37 [", "]
      131 CONCAT                           R28 R32 R33
      132 JUMP                             ; [+1]
      133 LOADK                            R28 K38 [""]
      134 LOADN                            R32 0
      135 JUMPIFNOTLT                      R32 R15 ; [+18]
      137 GETUPVAL                         R34 1
      138 GETTABLEKS                       R34 R34 K32 ["bold"]
      140 GETUPVAL                         R35 1
      141 GETTABLEKS                       R35 R35 K41 ["green"]
      143 LOADK                            R36 K42 ["%d passed"]
      144 MOVE                             R38 R15
      145 NAMECALL                         R36 R36 K36 ["format"]
      147 CALL                             R36 2 -1
      148 CALL                             R35 -1 -1
      149 CALL                             R34 -1 1
      150 MOVE                             R32 R34
      151 LOADK                            R33 K37 [", "]
      152 CONCAT                           R29 R32 R33
      153 JUMP                             ; [+1]
      154 LOADK                            R29 K38 [""]
      155 JUMPIFEQ                         R17 R18 ; [+15]
      157 FASTCALL1                        TOSTRING R17 ; [+3]
      158 MOVE                             R36 R17
      159 GETIMPORT                        R35 K44 [tostring]
      161 CALL                             R35 1 1
      162 MOVE                             R32 R35
      163 LOADK                            R33 K45 [" of "]
      164 FASTCALL1                        TOSTRING R18 ; [+3]
      165 MOVE                             R35 R18
      166 GETIMPORT                        R34 K44 [tostring]
      168 CALL                             R34 1 1
      169 CONCAT                           R30 R32 R34
      170 JUMP                             ; [+6]
      171 FASTCALL1                        TOSTRING R18 ; [+3]
      172 MOVE                             R33 R18
      173 GETIMPORT                        R32 K44 [tostring]
      175 CALL                             R32 1 1
      176 MOVE                             R30 R32
      177 LOADK                            R31 K46 [" total"]
      178 CONCAT                           R25 R26 R31
      179 GETTABLEKS                       R27 R3 K47 ["numFailingTests"]
      181 ADD                              R26 R19 R27
      182 GETTABLEKS                       R28 R3 K28 ["numPendingTests"]
      184 ADD                              R27 R21 R28
      185 GETTABLEKS                       R29 R3 K29 ["numTodoTests"]
      187 ADD                              R28 R22 R29
      188 GETTABLEKS                       R30 R3 K48 ["numPassingTests"]
      190 ADD                              R29 R20 R30
      191 GETTABLEKS                       R31 R3 K30 ["numTotalTests"]
      193 ADD                              R30 R23 R31
      194 GETUPVAL                         R38 1
      195 GETTABLEKS                       R38 R38 K32 ["bold"]
      197 LOADK                            R39 K49 ["Tests:       "]
      198 CALL                             R38 1 1
      199 MOVE                             R32 R38
      200 LOADN                            R38 0
      201 JUMPIFNOTLT                      R38 R26 ; [+18]
      203 GETUPVAL                         R40 1
      204 GETTABLEKS                       R40 R40 K32 ["bold"]
      206 GETUPVAL                         R41 1
      207 GETTABLEKS                       R41 R41 K34 ["red"]
      209 LOADK                            R42 K35 ["%d failed"]
      210 MOVE                             R44 R26
      211 NAMECALL                         R42 R42 K36 ["format"]
      213 CALL                             R42 2 -1
      214 CALL                             R41 -1 -1
      215 CALL                             R40 -1 1
      216 MOVE                             R38 R40
      217 LOADK                            R39 K37 [", "]
      218 CONCAT                           R33 R38 R39
      219 JUMP                             ; [+1]
      220 LOADK                            R33 K38 [""]
      221 LOADN                            R38 0
      222 JUMPIFNOTLT                      R38 R27 ; [+18]
      224 GETUPVAL                         R40 1
      225 GETTABLEKS                       R40 R40 K32 ["bold"]
      227 GETUPVAL                         R41 1
      228 GETTABLEKS                       R41 R41 K39 ["yellow"]
      230 LOADK                            R42 K40 ["%d skipped"]
      231 MOVE                             R44 R27
      232 NAMECALL                         R42 R42 K36 ["format"]
      234 CALL                             R42 2 -1
      235 CALL                             R41 -1 -1
      236 CALL                             R40 -1 1
      237 MOVE                             R38 R40
      238 LOADK                            R39 K37 [", "]
      239 CONCAT                           R34 R38 R39
      240 JUMP                             ; [+1]
      241 LOADK                            R34 K38 [""]
      242 LOADN                            R38 0
      243 JUMPIFNOTLT                      R38 R28 ; [+18]
      245 GETUPVAL                         R40 1
      246 GETTABLEKS                       R40 R40 K32 ["bold"]
      248 GETUPVAL                         R41 1
      249 GETTABLEKS                       R41 R41 K50 ["magenta"]
      251 LOADK                            R42 K51 ["%d todo"]
      252 MOVE                             R44 R28
      253 NAMECALL                         R42 R42 K36 ["format"]
      255 CALL                             R42 2 -1
      256 CALL                             R41 -1 -1
      257 CALL                             R40 -1 1
      258 MOVE                             R38 R40
      259 LOADK                            R39 K37 [", "]
      260 CONCAT                           R35 R38 R39
      261 JUMP                             ; [+1]
      262 LOADK                            R35 K38 [""]
      263 LOADN                            R38 0
      264 JUMPIFNOTLT                      R38 R29 ; [+18]
      266 GETUPVAL                         R40 1
      267 GETTABLEKS                       R40 R40 K32 ["bold"]
      269 GETUPVAL                         R41 1
      270 GETTABLEKS                       R41 R41 K41 ["green"]
      272 LOADK                            R42 K42 ["%d passed"]
      273 MOVE                             R44 R29
      274 NAMECALL                         R42 R42 K36 ["format"]
      276 CALL                             R42 2 -1
      277 CALL                             R41 -1 -1
      278 CALL                             R40 -1 1
      279 MOVE                             R38 R40
      280 LOADK                            R39 K37 [", "]
      281 CONCAT                           R36 R38 R39
      282 JUMP                             ; [+1]
      283 LOADK                            R36 K38 [""]
      284 LOADK                            R37 K52 ["%d total"]
      285 MOVE                             R39 R30
      286 NAMECALL                         R37 R37 K36 ["format"]
      288 CALL                             R37 2 1
      289 CONCAT                           R31 R32 R37
      290 GETUPVAL                         R43 1
      291 GETTABLEKS                       R43 R43 K32 ["bold"]
      293 LOADK                            R44 K53 ["Snapshots:   "]
      294 CALL                             R43 1 1
      295 MOVE                             R33 R43
      296 LOADN                            R43 0
      297 JUMPIFNOTLT                      R43 R7 ; [+18]
      299 GETUPVAL                         R45 1
      300 GETTABLEKS                       R45 R45 K32 ["bold"]
      302 GETUPVAL                         R46 1
      303 GETTABLEKS                       R46 R46 K34 ["red"]
      305 LOADK                            R47 K35 ["%d failed"]
      306 MOVE                             R49 R7
      307 NAMECALL                         R47 R47 K36 ["format"]
      309 CALL                             R47 2 -1
      310 CALL                             R46 -1 -1
      311 CALL                             R45 -1 1
      312 MOVE                             R43 R45
      313 LOADK                            R44 K37 [", "]
      314 CONCAT                           R34 R43 R44
      315 JUMP                             ; [+1]
      316 LOADK                            R34 K38 [""]
      317 GETUPVAL                         R43 2
      318 GETTABLEKS                       R43 R43 K54 ["toJSBoolean"]
      320 MOVE                             R44 R8
      321 CALL                             R43 1 1
      322 JUMPIFNOT                        R43 ; [+18]
      323 JUMPIF                           R10 ; [+17]
      324 GETUPVAL                         R45 1
      325 GETTABLEKS                       R45 R45 K32 ["bold"]
      327 GETUPVAL                         R46 1
      328 GETTABLEKS                       R46 R46 K39 ["yellow"]
      330 LOADK                            R47 K55 ["%d obsolete"]
      331 MOVE                             R49 R8
      332 NAMECALL                         R47 R47 K36 ["format"]
      334 CALL                             R47 2 -1
      335 CALL                             R46 -1 -1
      336 CALL                             R45 -1 1
      337 MOVE                             R43 R45
      338 LOADK                            R44 K37 [", "]
      339 CONCAT                           R35 R43 R44
      340 JUMP                             ; [+1]
      341 LOADK                            R35 K38 [""]
      342 GETUPVAL                         R43 2
      343 GETTABLEKS                       R43 R43 K54 ["toJSBoolean"]
      345 MOVE                             R44 R8
      346 CALL                             R43 1 1
      347 JUMPIFNOT                        R43 ; [+18]
      348 JUMPIFNOT                        R10 ; [+17]
      349 GETUPVAL                         R45 1
      350 GETTABLEKS                       R45 R45 K32 ["bold"]
      352 GETUPVAL                         R46 1
      353 GETTABLEKS                       R46 R46 K41 ["green"]
      355 LOADK                            R47 K56 ["%d removed"]
      356 MOVE                             R49 R8
      357 NAMECALL                         R47 R47 K36 ["format"]
      359 CALL                             R47 2 -1
      360 CALL                             R46 -1 -1
      361 CALL                             R45 -1 1
      362 MOVE                             R43 R45
      363 LOADK                            R44 K37 [", "]
      364 CONCAT                           R36 R43 R44
      365 JUMP                             ; [+1]
      366 LOADK                            R36 K38 [""]
      367 GETUPVAL                         R43 2
      368 GETTABLEKS                       R43 R43 K54 ["toJSBoolean"]
      370 MOVE                             R44 R9
      371 CALL                             R43 1 1
      372 JUMPIFNOT                        R43 ; [+20]
      373 JUMPIF                           R10 ; [+19]
      374 GETUPVAL                         R45 1
      375 GETTABLEKS                       R45 R45 K32 ["bold"]
      377 GETUPVAL                         R46 1
      378 GETTABLEKS                       R46 R46 K39 ["yellow"]
      380 GETUPVAL                         R50 3
      381 LOADK                            R51 K57 ["file"]
      382 MOVE                             R52 R9
      383 CALL                             R50 2 1
      384 MOVE                             R48 R50
      385 LOADK                            R49 K58 [" obsolete"]
      386 CONCAT                           R47 R48 R49
      387 CALL                             R46 1 -1
      388 CALL                             R45 -1 1
      389 MOVE                             R43 R45
      390 LOADK                            R44 K37 [", "]
      391 CONCAT                           R37 R43 R44
      392 JUMP                             ; [+1]
      393 LOADK                            R37 K38 [""]
      394 GETUPVAL                         R43 2
      395 GETTABLEKS                       R43 R43 K54 ["toJSBoolean"]
      397 MOVE                             R44 R9
      398 CALL                             R43 1 1
      399 JUMPIFNOT                        R43 ; [+20]
      400 JUMPIFNOT                        R10 ; [+19]
      401 GETUPVAL                         R45 1
      402 GETTABLEKS                       R45 R45 K32 ["bold"]
      404 GETUPVAL                         R46 1
      405 GETTABLEKS                       R46 R46 K41 ["green"]
      407 GETUPVAL                         R50 3
      408 LOADK                            R51 K57 ["file"]
      409 MOVE                             R52 R9
      410 CALL                             R50 2 1
      411 MOVE                             R48 R50
      412 LOADK                            R49 K59 [" removed"]
      413 CONCAT                           R47 R48 R49
      414 CALL                             R46 1 -1
      415 CALL                             R45 -1 1
      416 MOVE                             R43 R45
      417 LOADK                            R44 K37 [", "]
      418 CONCAT                           R38 R43 R44
      419 JUMP                             ; [+1]
      420 LOADK                            R38 K38 [""]
      421 GETUPVAL                         R43 2
      422 GETTABLEKS                       R43 R43 K54 ["toJSBoolean"]
      424 MOVE                             R44 R13
      425 CALL                             R43 1 1
      426 JUMPIFNOT                        R43 ; [+17]
      427 GETUPVAL                         R45 1
      428 GETTABLEKS                       R45 R45 K32 ["bold"]
      430 GETUPVAL                         R46 1
      431 GETTABLEKS                       R46 R46 K41 ["green"]
      433 LOADK                            R47 K60 ["%d updated"]
      434 MOVE                             R49 R13
      435 NAMECALL                         R47 R47 K36 ["format"]
      437 CALL                             R47 2 -1
      438 CALL                             R46 -1 -1
      439 CALL                             R45 -1 1
      440 MOVE                             R43 R45
      441 LOADK                            R44 K37 [", "]
      442 CONCAT                           R39 R43 R44
      443 JUMP                             ; [+1]
      444 LOADK                            R39 K38 [""]
      445 GETUPVAL                         R43 2
      446 GETTABLEKS                       R43 R43 K54 ["toJSBoolean"]
      448 MOVE                             R44 R6
      449 CALL                             R43 1 1
      450 JUMPIFNOT                        R43 ; [+17]
      451 GETUPVAL                         R45 1
      452 GETTABLEKS                       R45 R45 K32 ["bold"]
      454 GETUPVAL                         R46 1
      455 GETTABLEKS                       R46 R46 K41 ["green"]
      457 LOADK                            R47 K61 ["%d written"]
      458 MOVE                             R49 R6
      459 NAMECALL                         R47 R47 K36 ["format"]
      461 CALL                             R47 2 -1
      462 CALL                             R46 -1 -1
      463 CALL                             R45 -1 1
      464 MOVE                             R43 R45
      465 LOADK                            R44 K37 [", "]
      466 CONCAT                           R40 R43 R44
      467 JUMP                             ; [+1]
      468 LOADK                            R40 K38 [""]
      469 GETUPVAL                         R43 2
      470 GETTABLEKS                       R43 R43 K54 ["toJSBoolean"]
      472 MOVE                             R44 R11
      473 CALL                             R43 1 1
      474 JUMPIFNOT                        R43 ; [+17]
      475 GETUPVAL                         R45 1
      476 GETTABLEKS                       R45 R45 K32 ["bold"]
      478 GETUPVAL                         R46 1
      479 GETTABLEKS                       R46 R46 K41 ["green"]
      481 LOADK                            R47 K42 ["%d passed"]
      482 MOVE                             R49 R11
      483 NAMECALL                         R47 R47 K36 ["format"]
      485 CALL                             R47 2 -1
      486 CALL                             R46 -1 -1
      487 CALL                             R45 -1 1
      488 MOVE                             R43 R45
      489 LOADK                            R44 K37 [", "]
      490 CONCAT                           R41 R43 R44
      491 JUMP                             ; [+1]
      492 LOADK                            R41 K38 [""]
      493 LOADK                            R42 K52 ["%d total"]
      494 MOVE                             R44 R12
      495 NAMECALL                         R42 R42 K36 ["format"]
      497 CALL                             R42 2 1
      498 CONCAT                           R32 R33 R42
      499 GETUPVAL                         R33 4
      500 MOVE                             R34 R2
      501 MOVE                             R35 R4
      502 MOVE                             R36 R24
      503 CALL                             R33 3 1
      504 GETUPVAL                         R34 5
      505 GETTABLEKS                       R34 R34 K62 ["join"]
      507 NEWTABLE                         R35 0 4
      509 MOVE                             R36 R25
      510 MOVE                             R37 R31
      511 MOVE                             R38 R32
      512 MOVE                             R39 R33
      513 SETLIST                          R35 R36 4 [1]
      515 LOADK                            R36 K63 ["\n"]
      516 CALL                             R34 2 -1
      517 RETURN                           R34 -1

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
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K2 ["bold"]
       29 LOADK                            R8 K4 ["Time:"]
       30 CALL                             R7 1 1
       31 MOVE                             R5 R7
       32 LOADK                            R6 K5 ["        %s"]
       33 MOVE                             R8 R3
       34 NAMECALL                         R6 R6 K6 ["format"]
       36 CALL                             R6 2 1
       37 CONCAT                           R4 R5 R6
       38 JUMPIFNOTLT                      R0 R1 ; [+11]
       40 MOVE                             R5 R4
       41 LOADK                            R6 K7 [", estimated %s"]
       42 GETUPVAL                         R8 2
       43 MOVE                             R9 R1
       44 LOADN                            R10 0
       45 CALL                             R8 2 -1
       46 NAMECALL                         R6 R6 K6 ["format"]
       48 CALL                             R6 -1 1
       49 CONCAT                           R4 R5 R6
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K0 ["toJSBoolean"]
       53 LOADB                            R6 0
       54 LOADN                            R7 2
       55 JUMPIFNOTLT                      R7 R1 ; [+5]
       57 LOADB                            R6 0
       58 JUMPIFNOTLT                      R0 R1 ; [+2]
       60 MOVE                             R6 R2
       61 CALL                             R5 1 1
       62 JUMPIFNOT                        R5 ; [+48]
       63 LOADN                            R6 40
       64 FASTCALL2                        MATH_MIN R6 R2 ; [+4]
       66 MOVE                             R7 R2
       67 GETIMPORT                        R5 K10 [math.min]
       69 CALL                             R5 2 1
       70 DIV                              R9 R0 R1
       71 MUL                              R8 R9 R5
       72 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       73 GETIMPORT                        R7 K12 [math.floor]
       75 CALL                             R7 1 1
       76 FASTCALL2                        MATH_MIN R7 R5 ; [+4]
       78 MOVE                             R8 R5
       79 GETIMPORT                        R6 K10 [math.min]
       81 CALL                             R6 2 1
       82 LOADN                            R7 2
       83 JUMPIFNOTLE                      R7 R5 ; [+27]
       85 MOVE                             R7 R4
       86 LOADK                            R8 K13 ["\n"]
       87 GETUPVAL                         R11 1
       88 GETTABLEKS                       R11 R11 K14 ["green"]
       90 LOADK                            R12 K15 ["█"]
       91 CALL                             R11 1 1
       92 MOVE                             R13 R6
       93 NAMECALL                         R11 R11 K16 ["rep"]
       95 CALL                             R11 2 1
       96 MOVE                             R9 R11
       97 GETUPVAL                         R11 1
       98 GETTABLEKS                       R11 R11 K17 ["white"]
      100 LOADK                            R12 K15 ["█"]
      101 CALL                             R11 1 1
      102 SUB                              R13 R5 R6
      103 NAMECALL                         R11 R11 K16 ["rep"]
      105 CALL                             R11 2 -1
      106 FASTCALL                         TOSTRING ; [+2]
      107 GETIMPORT                        R10 K19 [tostring]
      109 CALL                             R10 -1 1
      110 CONCAT                           R4 R7 R10
      111 RETURN                           R4 1

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
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R16 R6 K24 ["relativePath"]
       84 DUPCLOSURE                       R21 K25 [PROTO_8]
       85 CAPTURE                          VAL R3
       86 NEWCLOSURE                       R22 P6
       87 CAPTURE                          VAL R21
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R14
       91 CAPTURE                          REF R17
       92 CAPTURE                          VAL R3
       93 SETTABLEKS                       R22 R6 K26 ["getSummary"]
       95 DUPCLOSURE                       R17 K27 [PROTO_10]
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R13
       99 DUPCLOSURE                       R23 K28 [PROTO_11]
      100 SETTABLEKS                       R23 R6 K29 ["wrapAnsiString"]
      102 CLOSEUPVALS                      R16
      103 RETURN                           R6 1
