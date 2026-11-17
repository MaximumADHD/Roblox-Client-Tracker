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
       27 JUMP                             ; [+70]
       28 LOADN                            R7 3
       29 JUMPIFNOTLE                      R7 R6 ; [+68]
       31 FASTCALL1                        TYPEOF R3 ; [+3]
       32 MOVE                             R8 R3
       33 GETIMPORT                        R7 K5 [typeof]
       35 CALL                             R7 1 1
       36 JUMPIFNOTEQKS                    R7 K7 ["table"] ; [+8]
       38 FASTCALL1                        TYPEOF R3 ; [+3]
       39 MOVE                             R8 R3
       40 GETIMPORT                        R7 K5 [typeof]
       42 CALL                             R7 1 1
       43 JUMPIFNOTEQKNIL                  R7 ; [+53]
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
       86 GETUPVAL                         R16 7
       87 LOADK                            R17 K24 ["properties"]
       88 CALL                             R16 1 1
       89 LOADK                            R17 K25 [" must be an object"]
       90 CONCAT                           R14 R15 R17
       91 MOVE                             R15 R8
       92 CALL                             R12 3 1
       93 SETTABLEKS                       R12 R11 K20 ["message"]
       95 CALL                             R10 1 -1
       96 CALL                             R9 -1 0
       97 MOVE                             R5 R3
       98 GETUPVAL                         R7 8
       99 DUPTABLE                         R8 K31 [{["context"], ["hint"], ["isInline"] = False, ["matcherName"] = "toMatchSnapshot", ["properties"], ["received"]}]
      100 SETTABLEKS                       R1 R8 K26 ["context"]
      102 SETTABLEKS                       R4 R8 K13 ["hint"]
      104 SETTABLEKS                       R5 R8 K24 ["properties"]
      106 SETTABLEKS                       R2 R8 K30 ["received"]
      108 CALL                             R7 1 -1
      109 RETURN                           R7 -1

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 0
        3 CALL                             R1 2 1
        4 LOADK                            R2 K0 ["\n\n"]
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 3
        7 GETUPVAL                         R5 4
        8 GETUPVAL                         R6 5
        9 CALL                             R3 3 1
       10 LOADK                            R4 K0 ["\n\n"]
       11 GETUPVAL                         R5 6
       12 GETUPVAL                         R6 7
       13 GETUPVAL                         R7 8
       14 GETUPVAL                         R8 9
       15 GETTABLEKS                       R8 R8 K1 ["expand"]
       17 CALL                             R5 3 1
       18 CONCAT                           R0 R1 R5
       19 RETURN                           R0 1

PROTO_6:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 1
        3 CALL                             R1 2 1
        4 LOADK                            R2 K0 ["\n\n"]
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 3
        7 GETUPVAL                         R5 4
        8 GETUPVAL                         R6 5
        9 CALL                             R3 3 1
       10 LOADK                            R4 K0 ["\n\n"]
       11 LOADK                            R5 K1 ["New snapshot was "]
       12 GETUPVAL                         R6 6
       13 LOADK                            R7 K2 ["not written"]
       14 CALL                             R6 1 1
       15 LOADK                            R7 K3 [". The update flag "]
       16 LOADK                            R8 K4 ["must be explicitly passed to write a new snapshot.\n\n"]
       17 LOADK                            R9 K5 ["This is likely because this test is run in a continuous integration "]
       18 LOADK                            R10 K6 ["(CI) environment in which snapshots are not written by default.\n\n"]
       19 LOADK                            R11 K7 ["Received:"]
       20 CONCAT                           R0 R1 R11
       21 GETUPVAL                         R1 7
       22 LOADK                            R3 K8 ["\n"]
       23 NAMECALL                         R1 R1 K9 ["find"]
       25 CALL                             R1 2 1
       26 JUMPIFNOT                        R1 ; [+4]
       27 MOVE                             R1 R0
       28 LOADK                            R2 K8 ["\n"]
       29 CONCAT                           R0 R1 R2
       30 JUMP                             ; [+3]
       31 MOVE                             R1 R0
       32 LOADK                            R2 K10 [" "]
       33 CONCAT                           R0 R1 R2
       34 MOVE                             R1 R0
       35 GETUPVAL                         R2 8
       36 GETUPVAL                         R3 7
       37 CALL                             R2 1 1
       38 CONCAT                           R0 R1 R2
       39 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 1
        3 CALL                             R1 2 1
        4 LOADK                            R2 K0 ["\n\n"]
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 3
        7 GETUPVAL                         R5 4
        8 GETUPVAL                         R6 5
        9 CALL                             R3 3 1
       10 LOADK                            R4 K0 ["\n\n"]
       11 GETUPVAL                         R5 6
       12 GETUPVAL                         R6 7
       13 GETUPVAL                         R7 8
       14 GETUPVAL                         R8 9
       15 GETUPVAL                         R9 10
       16 GETTABLEKS                       R9 R9 K1 ["expand"]
       18 CALL                             R5 4 1
       19 CONCAT                           R0 R1 R5
       20 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["context"]
        2 GETTABLEKS                       R2 R0 K1 ["hint"]
        4 GETTABLEKS                       R3 R0 K2 ["inlineSnapshot"]
        6 GETTABLEKS                       R4 R0 K3 ["isInline"]
        8 GETTABLEKS                       R5 R0 K4 ["matcherName"]
       10 GETTABLEKS                       R6 R0 K5 ["properties"]
       12 GETTABLEKS                       R7 R0 K6 ["received"]
       14 GETIMPORT                        R10 K9 [_G]
       16 GETTABLEKS                       R9 R10 K7 ["__JEST_TEST_CONTEXT__"]
       18 GETTABLEKS                       R9 R9 K10 ["instance"]
       20 GETTABLEKS                       R9 R9 K11 ["Name"]
       22 LOADK                            R11 K12 ["(.*)%.spec"]
       23 NAMECALL                         R9 R9 K13 ["match"]
       25 CALL                             R9 2 1
       26 LOADK                            R10 K14 [".snap"]
       27 CONCAT                           R8 R9 R10
       28 GETIMPORT                        R10 K9 [_G]
       30 GETTABLEKS                       R9 R10 K7 ["__JEST_TEST_CONTEXT__"]
       32 GETTABLEKS                       R9 R9 K15 ["snapshotState"]
       34 JUMPIFNOTEQKNIL                  R9 ; [+31]
       36 LOADNIL                          R9
       37 NEWCLOSURE                       R11 P0
       38 CAPTURE                          REF R9
       39 CAPTURE                          VAL R8
       40 FASTPCALL                        pcall 1 ; [+2]
       41 GETIMPORT                        R10 K17 [pcall]
       43 CALL                             R10 1 0
       44 NEWCLOSURE                       R11 P1
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          REF R9
       47 FASTPCALL                        pcall 1 ; [+2]
       48 GETIMPORT                        R10 K17 [pcall]
       50 CALL                             R10 1 2
       51 JUMPIFNOT                        R10 ; [+7]
       52 GETIMPORT                        R13 K9 [_G]
       54 GETTABLEKS                       R12 R13 K7 ["__JEST_TEST_CONTEXT__"]
       56 SETTABLEKS                       R11 R12 K15 ["snapshotState"]
       58 JUMP                             ; [+6]
       59 DUPTABLE                         R12 K21 [{["message"], ["pass"] = False}]
       60 DUPCLOSURE                       R13 K22 [PROTO_4]
       61 SETTABLEKS                       R13 R12 K18 ["message"]
       63 CLOSEUPVALS                      R7
       64 RETURN                           R12 1
       65 CLOSEUPVALS                      R9
       66 GETTABLEKS                       R9 R1 K15 ["snapshotState"]
       68 JUMPIF                           R9 ; [+6]
       69 GETIMPORT                        R10 K9 [_G]
       71 GETTABLEKS                       R9 R10 K7 ["__JEST_TEST_CONTEXT__"]
       73 GETTABLEKS                       R9 R9 K15 ["snapshotState"]
       75 SETTABLEKS                       R9 R1 K15 ["snapshotState"]
       77 GETTABLEKS                       R9 R1 K23 ["currentTestName"]
       79 JUMPIF                           R9 ; [+10]
       80 GETIMPORT                        R9 K26 [table.concat]
       82 GETIMPORT                        R11 K9 [_G]
       84 GETTABLEKS                       R10 R11 K7 ["__JEST_TEST_CONTEXT__"]
       86 GETTABLEKS                       R10 R10 K27 ["blocks"]
       88 LOADK                            R11 K28 [" "]
       89 CALL                             R9 2 1
       90 SETTABLEKS                       R9 R1 K23 ["currentTestName"]
       92 GETTABLEKS                       R9 R1 K23 ["currentTestName"]
       94 GETTABLEKS                       R10 R1 K29 ["isNot"]
       96 GETTABLEKS                       R11 R1 K15 ["snapshotState"]
       98 JUMPIFNOT                        R10 ; [+17]
       99 GETIMPORT                        R12 K31 [error]
      101 GETUPVAL                         R13 1
      102 GETTABLEKS                       R13 R13 K32 ["new"]
      104 DUPTABLE                         R14 K33 [{"message"}]
      105 GETUPVAL                         R15 2
      106 GETUPVAL                         R16 3
      107 MOVE                             R17 R0
      108 LOADB                            R18 0
      109 CALL                             R16 2 1
      110 GETUPVAL                         R17 4
      111 CALL                             R15 2 1
      112 SETTABLEKS                       R15 R14 K18 ["message"]
      114 CALL                             R13 1 -1
      115 CALL                             R12 -1 0
      116 JUMPIFNOTEQKNIL                  R11 ; [+24]
      118 GETIMPORT                        R12 K31 [error]
      120 GETUPVAL                         R13 1
      121 GETTABLEKS                       R13 R13 K32 ["new"]
      123 DUPTABLE                         R14 K33 [{"message"}]
      124 GETUPVAL                         R16 3
      125 MOVE                             R17 R0
      126 LOADB                            R18 0
      127 CALL                             R16 2 1
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
      154 JUMPIFNOTEQKS                    R13 K24 ["table"] ; [+105]
      156 JUMPIFEQKNIL                     R7 ; [+13]
      158 FASTCALL1                        TYPEOF R7 ; [+3]
      159 MOVE                             R14 R7
      160 GETIMPORT                        R13 K40 [typeof]
      162 CALL                             R13 1 1
      163 JUMPIFEQKS                       R13 K24 ["table"] ; [+35]
      165 GETUPVAL                         R13 7
      166 MOVE                             R14 R7
      167 CALL                             R13 1 1
      168 JUMPIFEQKS                       R13 K41 ["Instance"] ; [+30]
      170 GETIMPORT                        R13 K31 [error]
      172 GETUPVAL                         R14 1
      173 GETTABLEKS                       R14 R14 K32 ["new"]
      175 DUPTABLE                         R15 K33 [{"message"}]
      176 GETUPVAL                         R16 2
      177 GETUPVAL                         R17 3
      178 MOVE                             R18 R0
      179 LOADB                            R19 0
      180 CALL                             R17 2 1
      181 GETUPVAL                         R19 8
      182 LOADK                            R20 K6 ["received"]
      183 CALL                             R19 1 1
      184 LOADK                            R20 K42 [" value must be an object when the matcher has "]
      185 GETUPVAL                         R21 9
      186 LOADK                            R22 K5 ["properties"]
      187 CALL                             R21 1 1
      188 CONCAT                           R18 R19 R21
      189 GETUPVAL                         R19 5
      190 LOADK                            R20 K43 ["Received"]
      191 MOVE                             R21 R7
      192 GETUPVAL                         R22 10
      193 CALL                             R19 3 -1
      194 CALL                             R16 -1 1
      195 SETTABLEKS                       R16 R15 K18 ["message"]
      197 CALL                             R14 1 -1
      198 CALL                             R13 -1 0
      199 GETTABLEKS                       R13 R1 K44 ["equals"]
      201 MOVE                             R14 R7
      202 MOVE                             R15 R6
      203 NEWTABLE                         R16 0 2
      205 GETTABLEKS                       R17 R1 K45 ["utils"]
      207 GETTABLEKS                       R17 R17 K46 ["iterableEquality"]
      209 GETTABLEKS                       R18 R1 K45 ["utils"]
      211 GETTABLEKS                       R18 R18 K47 ["subsetEquality"]
      213 SETLIST                          R16 R17 2 [1]
      215 CALL                             R13 3 1
      216 JUMPIF                           R13 ; [+36]
      217 MOVE                             R16 R12
      218 MOVE                             R17 R7
      219 NAMECALL                         R14 R11 K48 ["fail"]
      221 CALL                             R14 3 1
      222 LOADK                            R17 K49 ["(%d+)$"]
      223 NAMECALL                         R15 R14 K13 ["match"]
      225 CALL                             R15 2 1
      226 JUMPIFNOTEQKNIL                  R15 ; [+3]
      228 LOADN                            R16 1
      229 JUMP                             ; [+5]
      230 FASTCALL1                        TONUMBER R15 ; [+3]
      231 MOVE                             R17 R15
      232 GETIMPORT                        R16 K51 [tonumber]
      234 CALL                             R16 1 1
      235 NEWCLOSURE                       R17 P3
      236 CAPTURE                          UPVAL U3
      237 CAPTURE                          VAL R0
      238 CAPTURE                          UPVAL U11
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R2
      241 CAPTURE                          VAL R16
      242 CAPTURE                          UPVAL U12
      243 CAPTURE                          VAL R6
      244 CAPTURE                          REF R7
      245 CAPTURE                          VAL R11
      246 DUPTABLE                         R18 K53 [{["message"], ["name"], ["pass"] = False}]
      247 SETTABLEKS                       R17 R18 K18 ["message"]
      249 SETTABLEKS                       R5 R18 K52 ["name"]
      251 CLOSEUPVALS                      R7
      252 RETURN                           R18 1
      253 GETUPVAL                         R14 13
      254 GETTABLEKS                       R14 R14 K54 ["deepMerge"]
      256 MOVE                             R15 R7
      257 MOVE                             R16 R6
      258 CALL                             R14 2 1
      259 MOVE                             R7 R14
      260 DUPTABLE                         R15 K56 [{"error", "inlineSnapshot", "isInline", "received", "testName"}]
      261 GETTABLEKS                       R16 R1 K30 ["error"]
      263 SETTABLEKS                       R16 R15 K30 ["error"]
      265 SETTABLEKS                       R3 R15 K2 ["inlineSnapshot"]
      267 SETTABLEKS                       R4 R15 K3 ["isInline"]
      269 SETTABLEKS                       R7 R15 K6 ["received"]
      271 SETTABLEKS                       R12 R15 K55 ["testName"]
      273 NAMECALL                         R13 R11 K13 ["match"]
      275 CALL                             R13 2 1
      276 GETTABLEKS                       R14 R13 K57 ["actual"]
      278 GETTABLEKS                       R15 R13 K58 ["count"]
      280 GETTABLEKS                       R16 R13 K59 ["expected"]
      282 GETTABLEKS                       R17 R13 K19 ["pass"]
      284 JUMPIFNOT                        R17 ; [+6]
      285 DUPTABLE                         R18 K61 [{["message"], ["pass"] = True}]
      286 DUPCLOSURE                       R19 K62 [PROTO_6]
      287 SETTABLEKS                       R19 R18 K18 ["message"]
      289 CLOSEUPVALS                      R7
      290 RETURN                           R18 1
      291 LOADNIL                          R18
      292 JUMPIFNOTEQKNIL                  R16 ; [+12]
      294 NEWCLOSURE                       R18 P5
      295 CAPTURE                          UPVAL U3
      296 CAPTURE                          VAL R0
      297 CAPTURE                          UPVAL U11
      298 CAPTURE                          VAL R9
      299 CAPTURE                          VAL R2
      300 CAPTURE                          VAL R15
      301 CAPTURE                          UPVAL U14
      302 CAPTURE                          VAL R14
      303 CAPTURE                          UPVAL U15
      304 JUMP                             ; [+12]
      305 NEWCLOSURE                       R18 P6
      306 CAPTURE                          UPVAL U3
      307 CAPTURE                          VAL R0
      308 CAPTURE                          UPVAL U11
      309 CAPTURE                          VAL R9
      310 CAPTURE                          VAL R2
      311 CAPTURE                          VAL R15
      312 CAPTURE                          UPVAL U16
      313 CAPTURE                          VAL R16
      314 CAPTURE                          VAL R14
      315 CAPTURE                          REF R7
      316 CAPTURE                          VAL R11
      317 DUPTABLE                         R19 K63 [{["actual"], ["expected"], ["message"], ["name"], ["pass"] = False}]
      318 SETTABLEKS                       R14 R19 K57 ["actual"]
      320 SETTABLEKS                       R16 R19 K59 ["expected"]
      322 SETTABLEKS                       R18 R19 K18 ["message"]
      324 SETTABLEKS                       R5 R19 K52 ["name"]
      326 CLOSEUPVALS                      R7
      327 RETURN                           R19 1

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
       16 JUMPIF                           R1 ; [+40]
       17 FASTCALL1                        TYPEOF R7 ; [+3]
       18 MOVE                             R11 R7
       19 GETIMPORT                        R10 K9 [typeof]
       21 CALL                             R10 1 1
       22 JUMPIFEQKS                       R10 K10 ["function"] ; [+34]
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
       42 GETUPVAL                         R17 3
       43 LOADK                            R18 K5 ["received"]
       44 CALL                             R17 1 1
       45 LOADK                            R18 K18 [" value must be a function"]
       46 CONCAT                           R16 R17 R18
       47 GETUPVAL                         R17 4
       48 LOADK                            R18 K19 ["Received"]
       49 MOVE                             R19 R7
       50 GETUPVAL                         R20 5
       51 CALL                             R17 3 -1
       52 CALL                             R14 -1 1
       53 SETTABLEKS                       R14 R13 K15 ["message"]
       55 CALL                             R12 1 -1
       56 CALL                             R11 -1 0
       57 JUMPIFNOT                        R8 ; [+17]
       58 GETIMPORT                        R10 K13 [error]
       60 GETUPVAL                         R11 0
       61 GETTABLEKS                       R11 R11 K14 ["new"]
       63 DUPTABLE                         R12 K16 [{"message"}]
       64 GETUPVAL                         R13 1
       65 GETUPVAL                         R14 6
       66 MOVE                             R15 R0
       67 LOADB                            R16 0
       68 CALL                             R14 2 1
       69 GETUPVAL                         R15 7
       70 CALL                             R13 2 1
       71 SETTABLEKS                       R13 R12 K15 ["message"]
       73 CALL                             R11 1 -1
       74 CALL                             R10 -1 0
       75 LOADNIL                          R10
       76 JUMPIFNOT                        R1 ; [+2]
       77 MOVE                             R10 R7
       78 JUMP                             ; [+8]
       79 NEWCLOSURE                       R12 P0
       80 CAPTURE                          VAL R7
       81 FASTPCALL                        pcall 1 ; [+2]
       82 GETIMPORT                        R11 K21 [pcall]
       84 CALL                             R11 1 2
       85 JUMPIF                           R11 ; [+1]
       86 MOVE                             R10 R12
       87 JUMPIFNOTEQKNIL                  R10 ; [+18]
       89 GETIMPORT                        R11 K13 [error]
       91 GETUPVAL                         R12 0
       92 GETTABLEKS                       R12 R12 K14 ["new"]
       94 DUPTABLE                         R13 K16 [{"message"}]
       95 GETUPVAL                         R15 6
       96 MOVE                             R16 R0
       97 LOADB                            R17 0
       98 CALL                             R15 2 1
       99 LOADK                            R16 K22 ["\n\n"]
      100 LOADK                            R17 K23 ["Received function did not throw"]
      101 CONCAT                           R14 R15 R17
      102 SETTABLEKS                       R14 R13 K15 ["message"]
      104 CALL                             R12 1 -1
      105 CALL                             R11 -1 0
      106 GETUPVAL                         R11 8
      107 MOVE                             R12 R10
      108 GETUPVAL                         R13 9
      109 CALL                             R11 2 1
      110 JUMPIF                           R11 ; [+16]
      111 FASTCALL1                        TYPEOF R10 ; [+3]
      112 MOVE                             R12 R10
      113 GETIMPORT                        R11 K9 [typeof]
      115 CALL                             R11 1 1
      116 JUMPIFNOTEQKS                    R11 K24 ["table"] ; [+13]
      118 FASTCALL2K                       RAWGET R10 K15 ; [+5]
      120 MOVE                             R12 R10
      121 LOADK                            R13 K15 ["message"]
      122 GETIMPORT                        R11 K26 [rawget]
      124 CALL                             R11 2 1
      125 JUMPIFEQKNIL                     R11 ; [+4]
      127 GETTABLEKS                       R10 R10 K15 ["message"]
      129 JUMP                             ; [+13]
      130 FASTCALL1                        TYPEOF R10 ; [+3]
      131 MOVE                             R12 R10
      132 GETIMPORT                        R11 K9 [typeof]
      134 CALL                             R11 1 1
      135 JUMPIFEQKS                       R11 K27 ["string"] ; [+7]
      137 FASTCALL1                        TOSTRING R10 ; [+3]
      138 MOVE                             R12 R10
      139 GETIMPORT                        R11 K29 [tostring]
      141 CALL                             R11 1 1
      142 MOVE                             R10 R11
      143 GETUPVAL                         R11 10
      144 DUPTABLE                         R12 K30 [{"context", "hint", "inlineSnapshot", "isInline", "matcherName", "received"}]
      145 SETTABLEKS                       R2 R12 K0 ["context"]
      147 SETTABLEKS                       R3 R12 K1 ["hint"]
      149 SETTABLEKS                       R4 R12 K2 ["inlineSnapshot"]
      151 SETTABLEKS                       R5 R12 K3 ["isInline"]
      153 SETTABLEKS                       R6 R12 K4 ["matcherName"]
      155 SETTABLEKS                       R10 R12 K5 ["received"]
      157 CALL                             R11 1 -1
      158 RETURN                           R11 -1

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
