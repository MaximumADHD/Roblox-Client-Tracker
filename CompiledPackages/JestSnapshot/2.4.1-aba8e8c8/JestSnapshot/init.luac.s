PROTO_0:
        0 ORK                              R3 R0 K0 [""]
        1 ORK                              R4 R1 K0 [""]
        2 NAMECALL                         R6 R3 K1 ["len"]
        4 CALL                             R6 1 1
        5 JUMPIFNOTEQKN                    R6 K2 [0] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 LENGTH                           R7 R4
       10 JUMPIFNOTEQKN                    R7 K2 [0] ; [+2]
       12 LOADB                            R6 0 +1
       13 LOADB                            R6 1
       14 LOADK                            R7 K3 ["Snapshot name: `"]
       15 JUMPIFNOT                        R5 ; [+7]
       16 MOVE                             R8 R7
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R9 R9 K4 ["escapeBacktickString"]
       20 MOVE                             R10 R3
       21 CALL                             R9 1 1
       22 CONCAT                           R7 R8 R9
       23 JUMPIFNOT                        R5 ; [+4]
       24 JUMPIFNOT                        R6 ; [+3]
       25 MOVE                             R8 R7
       26 LOADK                            R9 K5 [": "]
       27 CONCAT                           R7 R8 R9
       28 JUMPIFNOT                        R6 ; [+9]
       29 MOVE                             R8 R7
       30 GETUPVAL                         R9 1
       31 GETUPVAL                         R10 0
       32 GETTABLEKS                       R10 R10 K4 ["escapeBacktickString"]
       34 MOVE                             R11 R4
       35 CALL                             R10 1 -1
       36 CALL                             R9 -1 1
       37 CONCAT                           R7 R8 R9
       38 MOVE                             R8 R7
       39 LOADK                            R9 K6 [" "]
       40 MOVE                             R10 R2
       41 LOADK                            R11 K7 ["`"]
       42 CONCAT                           R7 R8 R11
       43 RETURN                           R7 1

PROTO_1:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETTABLEN                        R1 R0 1
        7 GETTABLEN                        R2 R0 2
        8 GETTABLEN                        R3 R0 3
        9 GETTABLEN                        R4 R0 4
       10 LOADNIL                          R5
       11 LOADK                            R7 K0 ["#"]
       12 FASTCALL1                        SELECT_VARARG R7 ; [+3]
       13 GETIMPORT                        R6 K2 [select]
       15 GETVARARGS                       R8 -1
       16 CALL                             R6 -1 1
       17 JUMPIFNOTEQKN                    R6 K3 [3] ; [+10]
       19 FASTCALL1                        TYPEOF R3 ; [+3]
       20 MOVE                             R8 R3
       21 GETIMPORT                        R7 K5 [typeof]
       23 CALL                             R7 1 1
       24 JUMPIFNOTEQKS                    R7 K6 ["string"] ; [+3]
       26 MOVE                             R4 R3
       27 JUMP                             ; [+71]
       28 LOADN                            R7 3
       29 JUMPIFNOTLE                      R7 R6 ; [+69]
       31 FASTCALL1                        TYPEOF R3 ; [+3]
       32 MOVE                             R8 R3
       33 GETIMPORT                        R7 K5 [typeof]
       35 CALL                             R7 1 1
       36 JUMPIFNOTEQKS                    R7 K7 ["table"] ; [+8]
       38 FASTCALL1                        TYPEOF R3 ; [+3]
       39 MOVE                             R8 R3
       40 GETIMPORT                        R7 K5 [typeof]
       42 CALL                             R7 1 1
       43 JUMPIFNOTEQKNIL                  R7 ; [+54]
       45 DUPTABLE                         R7 K10 [{"isNot", "promise"}]
       46 GETTABLEKS                       R8 R1 K8 ["isNot"]
       48 SETTABLEKS                       R8 R7 K8 ["isNot"]
       50 GETTABLEKS                       R8 R1 K9 ["promise"]
       52 SETTABLEKS                       R8 R7 K9 ["promise"]
       54 GETUPVAL                         R8 0
       55 LOADK                            R9 K11 ["Expected properties"]
       56 MOVE                             R10 R3
       57 GETUPVAL                         R11 1
       58 CALL                             R8 3 1
       59 JUMPIFNOTEQKN                    R6 K12 [4] ; [+12]
       61 LOADK                            R9 K13 ["hint"]
       62 SETTABLEKS                       R9 R7 K14 ["secondArgument"]
       64 GETUPVAL                         R9 2
       65 SETTABLEKS                       R9 R7 K15 ["secondArgumentColor"]
       67 JUMPIFNOTEQKNIL                  R3 ; [+4]
       69 MOVE                             R9 R8
       70 LOADK                            R10 K16 ["\n\nTo provide a hint without properties: toMatchSnapshot('hint')"]
       71 CONCAT                           R8 R9 R10
       72 GETIMPORT                        R9 K18 [error]
       74 GETUPVAL                         R10 3
       75 GETTABLEKS                       R10 R10 K19 ["new"]
       77 DUPTABLE                         R11 K21 [{"message"}]
       78 GETUPVAL                         R12 4
       79 GETUPVAL                         R13 5
       80 LOADK                            R14 K22 ["toMatchSnapshot"]
       81 LOADNIL                          R15
       82 GETUPVAL                         R16 6
       83 MOVE                             R17 R7
       84 CALL                             R13 4 1
       85 LOADK                            R15 K23 ["Expected "]
       86 GETUPVAL                         R18 7
       87 LOADK                            R19 K24 ["properties"]
       88 CALL                             R18 1 1
       89 MOVE                             R16 R18
       90 LOADK                            R17 K25 [" must be an object"]
       91 CONCAT                           R14 R15 R17
       92 MOVE                             R15 R8
       93 CALL                             R12 3 1
       94 SETTABLEKS                       R12 R11 K20 ["message"]
       96 CALL                             R10 1 -1
       97 CALL                             R9 -1 0
       98 MOVE                             R5 R3
       99 GETUPVAL                         R7 8
      100 DUPTABLE                         R8 K31 [{["context"], ["hint"], ["isInline"] = False, ["matcherName"] = "toMatchSnapshot", ["properties"], ["received"]}]
      101 SETTABLEKS                       R1 R8 K26 ["context"]
      103 SETTABLEKS                       R4 R8 K13 ["hint"]
      105 SETTABLEKS                       R5 R8 K24 ["properties"]
      107 SETTABLEKS                       R2 R8 K30 ["received"]
      109 CALL                             R7 1 -1
      110 RETURN                           R7 -1

PROTO_2:
        0 GETIMPORT                        R2 K2 [_G]
        2 GETTABLEKS                       R1 R2 K0 ["__JEST_TEST_CONTEXT__"]
        4 GETTABLEKS                       R1 R1 K3 ["instance"]
        6 GETTABLEKS                       R1 R1 K4 ["Parent"]
        8 GETTABLEKS                       R1 R1 K5 ["__snapshots__"]
       10 GETUPVAL                         R2 1
       11 GETTABLE                         R0 R1 R2
       12 SETUPVAL                         R0 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"updateSnapshot", "snapshotFormat"}]
        5 GETIMPORT                        R4 K6 [_G]
        7 GETTABLEKS                       R4 R4 K7 ["UPDATESNAPSHOT"]
        9 ORK                              R3 R4 K4 ["none"]
       10 SETTABLEKS                       R3 R2 K1 ["updateSnapshot"]
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R2 K2 ["snapshotFormat"]
       16 CALL                             R0 2 -1
       17 RETURN                           R0 -1

PROTO_4:
        0 LOADK                            R0 K0 ["Jest-Roblox: Error while loading snapshot file"]
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R7 1
        2 LOADB                            R8 0
        3 CALL                             R6 2 1
        4 MOVE                             R1 R6
        5 LOADK                            R2 K0 ["\n\n"]
        6 GETUPVAL                         R6 2
        7 GETUPVAL                         R7 3
        8 GETUPVAL                         R8 4
        9 GETUPVAL                         R9 5
       10 CALL                             R6 3 1
       11 MOVE                             R3 R6
       12 LOADK                            R4 K0 ["\n\n"]
       13 GETUPVAL                         R5 6
       14 GETUPVAL                         R6 7
       15 GETUPVAL                         R7 8
       16 GETUPVAL                         R8 9
       17 GETTABLEKS                       R8 R8 K1 ["expand"]
       19 CALL                             R5 3 1
       20 CONCAT                           R0 R1 R5
       21 RETURN                           R0 1

PROTO_6:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R12 0
        1 GETUPVAL                         R13 1
        2 LOADB                            R14 1
        3 CALL                             R12 2 1
        4 MOVE                             R1 R12
        5 LOADK                            R2 K0 ["\n\n"]
        6 GETUPVAL                         R12 2
        7 GETUPVAL                         R13 3
        8 GETUPVAL                         R14 4
        9 GETUPVAL                         R15 5
       10 CALL                             R12 3 1
       11 MOVE                             R3 R12
       12 LOADK                            R4 K0 ["\n\n"]
       13 LOADK                            R5 K1 ["New snapshot was "]
       14 GETUPVAL                         R12 6
       15 LOADK                            R13 K2 ["not written"]
       16 CALL                             R12 1 1
       17 MOVE                             R6 R12
       18 LOADK                            R7 K3 [". The update flag "]
       19 LOADK                            R8 K4 ["must be explicitly passed to write a new snapshot.\n\n"]
       20 LOADK                            R9 K5 ["This is likely because this test is run in a continuous integration "]
       21 LOADK                            R10 K6 ["(CI) environment in which snapshots are not written by default.\n\n"]
       22 LOADK                            R11 K7 ["Received:"]
       23 CONCAT                           R0 R1 R11
       24 GETUPVAL                         R1 7
       25 LOADK                            R3 K8 ["\n"]
       26 NAMECALL                         R1 R1 K9 ["find"]
       28 CALL                             R1 2 1
       29 JUMPIFNOT                        R1 ; [+4]
       30 MOVE                             R1 R0
       31 LOADK                            R2 K8 ["\n"]
       32 CONCAT                           R0 R1 R2
       33 JUMP                             ; [+3]
       34 MOVE                             R1 R0
       35 LOADK                            R2 K10 [" "]
       36 CONCAT                           R0 R1 R2
       37 MOVE                             R1 R0
       38 GETUPVAL                         R2 8
       39 GETUPVAL                         R3 7
       40 CALL                             R2 1 1
       41 CONCAT                           R0 R1 R2
       42 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R7 1
        2 LOADB                            R8 1
        3 CALL                             R6 2 1
        4 MOVE                             R1 R6
        5 LOADK                            R2 K0 ["\n\n"]
        6 GETUPVAL                         R6 2
        7 GETUPVAL                         R7 3
        8 GETUPVAL                         R8 4
        9 GETUPVAL                         R9 5
       10 CALL                             R6 3 1
       11 MOVE                             R3 R6
       12 LOADK                            R4 K0 ["\n\n"]
       13 GETUPVAL                         R5 6
       14 GETUPVAL                         R6 7
       15 GETUPVAL                         R7 8
       16 GETUPVAL                         R8 9
       17 GETUPVAL                         R9 10
       18 GETTABLEKS                       R9 R9 K1 ["expand"]
       20 CALL                             R5 4 1
       21 CONCAT                           R0 R1 R5
       22 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["context"]
        2 GETTABLEKS                       R2 R0 K1 ["hint"]
        4 GETTABLEKS                       R3 R0 K2 ["inlineSnapshot"]
        6 GETTABLEKS                       R4 R0 K3 ["isInline"]
        8 GETTABLEKS                       R5 R0 K4 ["matcherName"]
       10 GETTABLEKS                       R6 R0 K5 ["properties"]
       12 GETTABLEKS                       R7 R0 K6 ["received"]
       14 GETIMPORT                        R12 K9 [_G]
       16 GETTABLEKS                       R11 R12 K7 ["__JEST_TEST_CONTEXT__"]
       18 GETTABLEKS                       R11 R11 K10 ["instance"]
       20 GETTABLEKS                       R11 R11 K11 ["Name"]
       22 LOADK                            R13 K12 ["(.*)%.spec"]
       23 NAMECALL                         R11 R11 K13 ["match"]
       25 CALL                             R11 2 1
       26 MOVE                             R9 R11
       27 LOADK                            R10 K14 [".snap"]
       28 CONCAT                           R8 R9 R10
       29 GETIMPORT                        R10 K9 [_G]
       31 GETTABLEKS                       R9 R10 K7 ["__JEST_TEST_CONTEXT__"]
       33 GETTABLEKS                       R9 R9 K15 ["snapshotState"]
       35 JUMPIFNOTEQKNIL                  R9 ; [+29]
       37 LOADNIL                          R9
       38 GETIMPORT                        R10 K17 [pcall]
       40 NEWCLOSURE                       R11 P0
       41 CAPTURE                          REF R9
       42 CAPTURE                          VAL R8
       43 CALL                             R10 1 0
       44 GETIMPORT                        R10 K17 [pcall]
       46 NEWCLOSURE                       R11 P1
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          REF R9
       49 CALL                             R10 1 2
       50 JUMPIFNOT                        R10 ; [+7]
       51 GETIMPORT                        R13 K9 [_G]
       53 GETTABLEKS                       R12 R13 K7 ["__JEST_TEST_CONTEXT__"]
       55 SETTABLEKS                       R11 R12 K15 ["snapshotState"]
       57 JUMP                             ; [+6]
       58 DUPTABLE                         R12 K21 [{["message"], ["pass"] = False}]
       59 DUPCLOSURE                       R13 K22 [PROTO_4]
       60 SETTABLEKS                       R13 R12 K18 ["message"]
       62 CLOSEUPVALS                      R7
       63 RETURN                           R12 1
       64 CLOSEUPVALS                      R9
       65 GETTABLEKS                       R9 R1 K15 ["snapshotState"]
       67 JUMPIF                           R9 ; [+6]
       68 GETIMPORT                        R10 K9 [_G]
       70 GETTABLEKS                       R9 R10 K7 ["__JEST_TEST_CONTEXT__"]
       72 GETTABLEKS                       R9 R9 K15 ["snapshotState"]
       74 SETTABLEKS                       R9 R1 K15 ["snapshotState"]
       76 GETTABLEKS                       R9 R1 K23 ["currentTestName"]
       78 JUMPIF                           R9 ; [+10]
       79 GETIMPORT                        R9 K26 [table.concat]
       81 GETIMPORT                        R11 K9 [_G]
       83 GETTABLEKS                       R10 R11 K7 ["__JEST_TEST_CONTEXT__"]
       85 GETTABLEKS                       R10 R10 K27 ["blocks"]
       87 LOADK                            R11 K28 [" "]
       88 CALL                             R9 2 1
       89 SETTABLEKS                       R9 R1 K23 ["currentTestName"]
       91 GETTABLEKS                       R9 R1 K23 ["currentTestName"]
       93 GETTABLEKS                       R10 R1 K29 ["isNot"]
       95 GETTABLEKS                       R11 R1 K15 ["snapshotState"]
       97 JUMPIFNOT                        R10 ; [+17]
       98 GETIMPORT                        R12 K31 [error]
      100 GETUPVAL                         R13 1
      101 GETTABLEKS                       R13 R13 K32 ["new"]
      103 DUPTABLE                         R14 K33 [{"message"}]
      104 GETUPVAL                         R15 2
      105 GETUPVAL                         R16 3
      106 MOVE                             R17 R0
      107 LOADB                            R18 0
      108 CALL                             R16 2 1
      109 GETUPVAL                         R17 4
      110 CALL                             R15 2 1
      111 SETTABLEKS                       R15 R14 K18 ["message"]
      113 CALL                             R13 1 -1
      114 CALL                             R12 -1 0
      115 JUMPIFNOTEQKNIL                  R11 ; [+25]
      117 GETIMPORT                        R12 K31 [error]
      119 GETUPVAL                         R13 1
      120 GETTABLEKS                       R13 R13 K32 ["new"]
      122 DUPTABLE                         R14 K33 [{"message"}]
      123 GETUPVAL                         R21 3
      124 MOVE                             R22 R0
      125 LOADB                            R23 0
      126 CALL                             R21 2 1
      127 MOVE                             R16 R21
      128 LOADK                            R17 K34 ["\n\n"]
      129 LOADK                            R18 K35 ["Snapshot state must be initialized"]
      130 LOADK                            R19 K34 ["\n\n"]
      131 GETUPVAL                         R20 5
      132 LOADK                            R21 K36 ["Snapshot state"]
      133 MOVE                             R22 R11
      134 GETUPVAL                         R23 6
      135 CALL                             R20 3 1
      136 CONCAT                           R15 R16 R20
      137 SETTABLEKS                       R15 R14 K18 ["message"]
      139 CALL                             R13 1 -1
      140 CALL                             R12 -1 0
      141 JUMPIFNOT                        R9 ; [+6]
      142 JUMPIFNOT                        R2 ; [+5]
      143 MOVE                             R13 R9
      144 LOADK                            R14 K37 [": "]
      145 MOVE                             R15 R2
      146 CONCAT                           R12 R13 R15
      147 JUMP                             ; [+1]
      148 ORK                              R12 R9 K38 [""]
      149 FASTCALL1                        TYPEOF R6 ; [+3]
      150 MOVE                             R14 R6
      151 GETIMPORT                        R13 K40 [typeof]
      153 CALL                             R13 1 1
      154 JUMPIFNOTEQKS                    R13 K24 ["table"] ; [+106]
      156 JUMPIFEQKNIL                     R7 ; [+13]
      158 FASTCALL1                        TYPEOF R7 ; [+3]
      159 MOVE                             R14 R7
      160 GETIMPORT                        R13 K40 [typeof]
      162 CALL                             R13 1 1
      163 JUMPIFEQKS                       R13 K24 ["table"] ; [+36]
      165 GETUPVAL                         R13 7
      166 MOVE                             R14 R7
      167 CALL                             R13 1 1
      168 JUMPIFEQKS                       R13 K41 ["Instance"] ; [+31]
      170 GETIMPORT                        R13 K31 [error]
      172 GETUPVAL                         R14 1
      173 GETTABLEKS                       R14 R14 K32 ["new"]
      175 DUPTABLE                         R15 K33 [{"message"}]
      176 GETUPVAL                         R16 2
      177 GETUPVAL                         R17 3
      178 MOVE                             R18 R0
      179 LOADB                            R19 0
      180 CALL                             R17 2 1
      181 GETUPVAL                         R22 8
      182 LOADK                            R23 K6 ["received"]
      183 CALL                             R22 1 1
      184 MOVE                             R19 R22
      185 LOADK                            R20 K42 [" value must be an object when the matcher has "]
      186 GETUPVAL                         R21 9
      187 LOADK                            R22 K5 ["properties"]
      188 CALL                             R21 1 1
      189 CONCAT                           R18 R19 R21
      190 GETUPVAL                         R19 5
      191 LOADK                            R20 K43 ["Received"]
      192 MOVE                             R21 R7
      193 GETUPVAL                         R22 10
      194 CALL                             R19 3 -1
      195 CALL                             R16 -1 1
      196 SETTABLEKS                       R16 R15 K18 ["message"]
      198 CALL                             R14 1 -1
      199 CALL                             R13 -1 0
      200 GETTABLEKS                       R13 R1 K44 ["equals"]
      202 MOVE                             R14 R7
      203 MOVE                             R15 R6
      204 NEWTABLE                         R16 0 2
      206 GETTABLEKS                       R17 R1 K45 ["utils"]
      208 GETTABLEKS                       R17 R17 K46 ["iterableEquality"]
      210 GETTABLEKS                       R18 R1 K45 ["utils"]
      212 GETTABLEKS                       R18 R18 K47 ["subsetEquality"]
      214 SETLIST                          R16 R17 2 [1]
      216 CALL                             R13 3 1
      217 JUMPIF                           R13 ; [+36]
      218 MOVE                             R16 R12
      219 MOVE                             R17 R7
      220 NAMECALL                         R14 R11 K48 ["fail"]
      222 CALL                             R14 3 1
      223 LOADK                            R17 K49 ["(%d+)$"]
      224 NAMECALL                         R15 R14 K13 ["match"]
      226 CALL                             R15 2 1
      227 JUMPIFNOTEQKNIL                  R15 ; [+3]
      229 LOADN                            R16 1
      230 JUMP                             ; [+5]
      231 FASTCALL1                        TONUMBER R15 ; [+3]
      232 MOVE                             R17 R15
      233 GETIMPORT                        R16 K51 [tonumber]
      235 CALL                             R16 1 1
      236 NEWCLOSURE                       R17 P3
      237 CAPTURE                          UPVAL U3
      238 CAPTURE                          VAL R0
      239 CAPTURE                          UPVAL U11
      240 CAPTURE                          VAL R9
      241 CAPTURE                          VAL R2
      242 CAPTURE                          VAL R16
      243 CAPTURE                          UPVAL U12
      244 CAPTURE                          VAL R6
      245 CAPTURE                          REF R7
      246 CAPTURE                          VAL R11
      247 DUPTABLE                         R18 K53 [{["message"], ["name"], ["pass"] = False}]
      248 SETTABLEKS                       R17 R18 K18 ["message"]
      250 SETTABLEKS                       R5 R18 K52 ["name"]
      252 CLOSEUPVALS                      R7
      253 RETURN                           R18 1
      254 GETUPVAL                         R14 13
      255 GETTABLEKS                       R14 R14 K54 ["deepMerge"]
      257 MOVE                             R15 R7
      258 MOVE                             R16 R6
      259 CALL                             R14 2 1
      260 MOVE                             R7 R14
      261 DUPTABLE                         R15 K56 [{"error", "inlineSnapshot", "isInline", "received", "testName"}]
      262 GETTABLEKS                       R16 R1 K30 ["error"]
      264 SETTABLEKS                       R16 R15 K30 ["error"]
      266 SETTABLEKS                       R3 R15 K2 ["inlineSnapshot"]
      268 SETTABLEKS                       R4 R15 K3 ["isInline"]
      270 SETTABLEKS                       R7 R15 K6 ["received"]
      272 SETTABLEKS                       R12 R15 K55 ["testName"]
      274 NAMECALL                         R13 R11 K13 ["match"]
      276 CALL                             R13 2 1
      277 GETTABLEKS                       R14 R13 K57 ["actual"]
      279 GETTABLEKS                       R15 R13 K58 ["count"]
      281 GETTABLEKS                       R16 R13 K59 ["expected"]
      283 GETTABLEKS                       R17 R13 K19 ["pass"]
      285 JUMPIFNOT                        R17 ; [+6]
      286 DUPTABLE                         R18 K61 [{["message"], ["pass"] = True}]
      287 DUPCLOSURE                       R19 K62 [PROTO_6]
      288 SETTABLEKS                       R19 R18 K18 ["message"]
      290 CLOSEUPVALS                      R7
      291 RETURN                           R18 1
      292 LOADNIL                          R18
      293 JUMPIFNOTEQKNIL                  R16 ; [+12]
      295 NEWCLOSURE                       R18 P5
      296 CAPTURE                          UPVAL U3
      297 CAPTURE                          VAL R0
      298 CAPTURE                          UPVAL U11
      299 CAPTURE                          VAL R9
      300 CAPTURE                          VAL R2
      301 CAPTURE                          VAL R15
      302 CAPTURE                          UPVAL U14
      303 CAPTURE                          VAL R14
      304 CAPTURE                          UPVAL U15
      305 JUMP                             ; [+12]
      306 NEWCLOSURE                       R18 P6
      307 CAPTURE                          UPVAL U3
      308 CAPTURE                          VAL R0
      309 CAPTURE                          UPVAL U11
      310 CAPTURE                          VAL R9
      311 CAPTURE                          VAL R2
      312 CAPTURE                          VAL R15
      313 CAPTURE                          UPVAL U16
      314 CAPTURE                          VAL R16
      315 CAPTURE                          VAL R14
      316 CAPTURE                          REF R7
      317 CAPTURE                          VAL R11
      318 DUPTABLE                         R19 K63 [{["actual"], ["expected"], ["message"], ["name"], ["pass"] = False}]
      319 SETTABLEKS                       R14 R19 K57 ["actual"]
      321 SETTABLEKS                       R16 R19 K59 ["expected"]
      323 SETTABLEKS                       R18 R19 K18 ["message"]
      325 SETTABLEKS                       R5 R19 K52 ["name"]
      327 CLOSEUPVALS                      R7
      328 RETURN                           R19 1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 DUPTABLE                         R5 K7 [{[1], ["hint"], ["isInline"] = False, ["matcherName"] = "toThrowErrorMatchingSnapshot", ["received"]}]
        2 SETTABLEKS                       R0 R5 K0 ["context"]
        4 SETTABLEKS                       R2 R5 K1 ["hint"]
        6 SETTABLEKS                       R1 R5 K6 ["received"]
        8 MOVE                             R6 R3
        9 CALL                             R4 2 -1
       10 RETURN                           R4 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["context"]
        2 GETTABLEKS                       R3 R0 K1 ["hint"]
        4 GETTABLEKS                       R4 R0 K2 ["inlineSnapshot"]
        6 GETTABLEKS                       R5 R0 K3 ["isInline"]
        8 GETTABLEKS                       R6 R0 K4 ["matcherName"]
       10 GETTABLEKS                       R7 R0 K5 ["received"]
       12 GETTABLEKS                       R8 R2 K6 ["isNot"]
       14 GETTABLEKS                       R9 R2 K7 ["promise"]
       16 JUMPIF                           R1 ; [+41]
       17 FASTCALL1                        TYPEOF R7 ; [+3]
       18 MOVE                             R11 R7
       19 GETIMPORT                        R10 K9 [typeof]
       21 CALL                             R10 1 1
       22 JUMPIFEQKS                       R10 K10 ["function"] ; [+35]
       24 DUPTABLE                         R10 K11 [{"isNot", "promise"}]
       25 SETTABLEKS                       R8 R10 K6 ["isNot"]
       27 SETTABLEKS                       R9 R10 K7 ["promise"]
       29 GETIMPORT                        R11 K13 [error]
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R12 R12 K14 ["new"]
       34 DUPTABLE                         R13 K16 [{"message"}]
       35 GETUPVAL                         R14 1
       36 GETUPVAL                         R15 2
       37 MOVE                             R16 R6
       38 LOADNIL                          R17
       39 LOADK                            R18 K17 [""]
       40 MOVE                             R19 R10
       41 CALL                             R15 4 1
       42 GETUPVAL                         R19 3
       43 LOADK                            R20 K5 ["received"]
       44 CALL                             R19 1 1
       45 MOVE                             R17 R19
       46 LOADK                            R18 K18 [" value must be a function"]
       47 CONCAT                           R16 R17 R18
       48 GETUPVAL                         R17 4
       49 LOADK                            R18 K19 ["Received"]
       50 MOVE                             R19 R7
       51 GETUPVAL                         R20 5
       52 CALL                             R17 3 -1
       53 CALL                             R14 -1 1
       54 SETTABLEKS                       R14 R13 K15 ["message"]
       56 CALL                             R12 1 -1
       57 CALL                             R11 -1 0
       58 JUMPIFNOT                        R8 ; [+17]
       59 GETIMPORT                        R10 K13 [error]
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R11 R11 K14 ["new"]
       64 DUPTABLE                         R12 K16 [{"message"}]
       65 GETUPVAL                         R13 1
       66 GETUPVAL                         R14 6
       67 MOVE                             R15 R0
       68 LOADB                            R16 0
       69 CALL                             R14 2 1
       70 GETUPVAL                         R15 7
       71 CALL                             R13 2 1
       72 SETTABLEKS                       R13 R12 K15 ["message"]
       74 CALL                             R11 1 -1
       75 CALL                             R10 -1 0
       76 LOADNIL                          R10
       77 JUMPIFNOT                        R1 ; [+2]
       78 MOVE                             R10 R7
       79 JUMP                             ; [+7]
       80 GETIMPORT                        R11 K21 [pcall]
       82 NEWCLOSURE                       R12 P0
       83 CAPTURE                          VAL R7
       84 CALL                             R11 1 2
       85 JUMPIF                           R11 ; [+1]
       86 MOVE                             R10 R12
       87 JUMPIFNOTEQKNIL                  R10 ; [+19]
       89 GETIMPORT                        R11 K13 [error]
       91 GETUPVAL                         R12 0
       92 GETTABLEKS                       R12 R12 K14 ["new"]
       94 DUPTABLE                         R13 K16 [{"message"}]
       95 GETUPVAL                         R18 6
       96 MOVE                             R19 R0
       97 LOADB                            R20 0
       98 CALL                             R18 2 1
       99 MOVE                             R15 R18
      100 LOADK                            R16 K22 ["\n\n"]
      101 LOADK                            R17 K23 ["Received function did not throw"]
      102 CONCAT                           R14 R15 R17
      103 SETTABLEKS                       R14 R13 K15 ["message"]
      105 CALL                             R12 1 -1
      106 CALL                             R11 -1 0
      107 GETUPVAL                         R11 8
      108 MOVE                             R12 R10
      109 GETUPVAL                         R13 9
      110 CALL                             R11 2 1
      111 JUMPIF                           R11 ; [+16]
      112 FASTCALL1                        TYPEOF R10 ; [+3]
      113 MOVE                             R12 R10
      114 GETIMPORT                        R11 K9 [typeof]
      116 CALL                             R11 1 1
      117 JUMPIFNOTEQKS                    R11 K24 ["table"] ; [+13]
      119 FASTCALL2K                       RAWGET R10 K15 ; [+5]
      121 MOVE                             R12 R10
      122 LOADK                            R13 K15 ["message"]
      123 GETIMPORT                        R11 K26 [rawget]
      125 CALL                             R11 2 1
      126 JUMPIFEQKNIL                     R11 ; [+4]
      128 GETTABLEKS                       R10 R10 K15 ["message"]
      130 JUMP                             ; [+13]
      131 FASTCALL1                        TYPEOF R10 ; [+3]
      132 MOVE                             R12 R10
      133 GETIMPORT                        R11 K9 [typeof]
      135 CALL                             R11 1 1
      136 JUMPIFEQKS                       R11 K27 ["string"] ; [+7]
      138 FASTCALL1                        TOSTRING R10 ; [+3]
      139 MOVE                             R12 R10
      140 GETIMPORT                        R11 K29 [tostring]
      142 CALL                             R11 1 1
      143 MOVE                             R10 R11
      144 GETUPVAL                         R11 10
      145 DUPTABLE                         R12 K30 [{"context", "hint", "inlineSnapshot", "isInline", "matcherName", "received"}]
      146 SETTABLEKS                       R2 R12 K0 ["context"]
      148 SETTABLEKS                       R3 R12 K1 ["hint"]
      150 SETTABLEKS                       R4 R12 K2 ["inlineSnapshot"]
      152 SETTABLEKS                       R5 R12 K3 ["isInline"]
      154 SETTABLEKS                       R6 R12 K4 ["matcherName"]
      156 SETTABLEKS                       R10 R12 K5 ["received"]
      158 CALL                             R11 1 -1
      159 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K6 ["Error"]
       12 GETTABLEKS                       R4 R2 K7 ["instanceof"]
       14 GETTABLEKS                       R5 R2 K8 ["AssertionError"]
       16 GETIMPORT                        R6 K4 [require]
       18 GETTABLEKS                       R7 R1 K9 ["JestGetType"]
       20 CALL                             R6 1 1
       21 GETTABLEKS                       R6 R6 K10 ["getType"]
       23 GETIMPORT                        R7 K4 [require]
       25 GETTABLEKS                       R8 R1 K11 ["JestMatcherUtils"]
       27 CALL                             R7 1 1
       28 GETTABLEKS                       R8 R7 K12 ["BOLD_WEIGHT"]
       30 GETTABLEKS                       R9 R7 K13 ["EXPECTED_COLOR"]
       32 GETTABLEKS                       R10 R7 K14 ["RECEIVED_COLOR"]
       34 GETTABLEKS                       R11 R7 K15 ["matcherErrorMessage"]
       36 GETTABLEKS                       R12 R7 K16 ["matcherHint"]
       38 GETTABLEKS                       R13 R7 K17 ["printWithType"]
       40 GETTABLEKS                       R14 R7 K18 ["stringify"]
       42 GETIMPORT                        R15 K4 [require]
       44 GETTABLEKS                       R16 R0 K19 ["State"]
       46 CALL                             R15 1 1
       47 GETIMPORT                        R16 K4 [require]
       49 GETTABLEKS                       R17 R0 K20 ["plugins"]
       51 CALL                             R16 1 1
       52 GETTABLEKS                       R17 R16 K21 ["addSerializer"]
       54 GETTABLEKS                       R18 R16 K22 ["getSerializers"]
       56 GETIMPORT                        R19 K4 [require]
       58 GETTABLEKS                       R20 R0 K23 ["printSnapshot"]
       60 CALL                             R19 1 1
       61 GETTABLEKS                       R20 R19 K24 ["PROPERTIES_ARG"]
       63 GETTABLEKS                       R21 R19 K25 ["bReceivedColor"]
       65 GETTABLEKS                       R22 R19 K26 ["matcherHintFromConfig"]
       67 GETTABLEKS                       R23 R19 K27 ["printExpected"]
       69 GETTABLEKS                       R24 R19 K28 ["printPropertiesAndReceived"]
       71 GETTABLEKS                       R25 R19 K29 ["printReceived"]
       73 GETTABLEKS                       R26 R19 K30 ["printSnapshotAndReceived"]
       75 GETIMPORT                        R27 K4 [require]
       77 GETTABLEKS                       R28 R0 K31 ["types"]
       79 CALL                             R27 1 1
       80 GETIMPORT                        R28 K4 [require]
       82 GETTABLEKS                       R29 R0 K32 ["utils"]
       84 CALL                             R28 1 1
       85 LOADNIL                          R29
       86 LOADNIL                          R30
       87 LOADK                            R32 K33 ["Snapshot matchers cannot be used with "]
       88 MOVE                             R33 R8
       89 LOADK                            R34 K34 ["never"]
       90 CALL                             R33 1 1
       91 CONCAT                           R31 R32 R33
       92 DUPCLOSURE                       R32 K35 [PROTO_0]
       93 CAPTURE                          VAL R28
       94 CAPTURE                          VAL R8
       95 NEWCLOSURE                       R33 P1
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R23
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R20
      103 CAPTURE                          VAL R9
      104 CAPTURE                          REF R29
      105 DUPCLOSURE                       R29 K36 [PROTO_9]
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R22
      110 CAPTURE                          VAL R31
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R25
      117 CAPTURE                          VAL R32
      118 CAPTURE                          VAL R24
      119 CAPTURE                          VAL R28
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R21
      122 CAPTURE                          VAL R26
      123 NEWCLOSURE                       R34 P3
      124 CAPTURE                          REF R30
      125 NEWCLOSURE                       R30 P4
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R25
      132 CAPTURE                          VAL R22
      133 CAPTURE                          VAL R31
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R3
      136 CAPTURE                          REF R29
      137 DUPTABLE                         R35 K40 [{"SnapshotState", "addSerializer", "getSerializers", "toMatchSnapshot", "toThrowErrorMatchingSnapshot", "utils", "plugins"}]
      138 SETTABLEKS                       R15 R35 K37 ["SnapshotState"]
      140 SETTABLEKS                       R17 R35 K21 ["addSerializer"]
      142 SETTABLEKS                       R18 R35 K22 ["getSerializers"]
      144 SETTABLEKS                       R33 R35 K38 ["toMatchSnapshot"]
      146 SETTABLEKS                       R34 R35 K39 ["toThrowErrorMatchingSnapshot"]
      148 SETTABLEKS                       R28 R35 K32 ["utils"]
      150 GETIMPORT                        R36 K4 [require]
      152 GETTABLEKS                       R37 R0 K20 ["plugins"]
      154 CALL                             R36 1 1
      155 SETTABLEKS                       R36 R35 K20 ["plugins"]
      157 CLOSEUPVALS                      R29
      158 RETURN                           R35 1
