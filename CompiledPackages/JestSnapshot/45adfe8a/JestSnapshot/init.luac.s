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

PROTO_3:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["context"]
        2 GETTABLEKS                       R2 R0 K1 ["hint"]
        4 GETTABLEKS                       R3 R0 K2 ["inlineSnapshot"]
        6 GETTABLEKS                       R4 R0 K3 ["isInline"]
        8 GETTABLEKS                       R5 R0 K4 ["matcherName"]
       10 GETTABLEKS                       R6 R0 K5 ["properties"]
       12 GETTABLEKS                       R7 R0 K6 ["received"]
       14 GETTABLEKS                       R8 R1 K7 ["currentTestName"]
       16 GETTABLEKS                       R9 R1 K8 ["isNot"]
       18 GETTABLEKS                       R10 R1 K9 ["snapshotState"]
       20 JUMPIFNOT                        R9 ; [+17]
       21 GETIMPORT                        R11 K11 [error]
       23 GETUPVAL                         R12 0
       24 GETTABLEKS                       R12 R12 K12 ["new"]
       26 DUPTABLE                         R13 K14 [{"message"}]
       27 GETUPVAL                         R14 1
       28 GETUPVAL                         R15 2
       29 MOVE                             R16 R0
       30 LOADB                            R17 0
       31 CALL                             R15 2 1
       32 GETUPVAL                         R16 3
       33 CALL                             R14 2 1
       34 SETTABLEKS                       R14 R13 K13 ["message"]
       36 CALL                             R12 1 -1
       37 CALL                             R11 -1 0
       38 JUMPIFNOTEQKNIL                  R10 ; [+25]
       40 GETIMPORT                        R11 K11 [error]
       42 GETUPVAL                         R12 0
       43 GETTABLEKS                       R12 R12 K12 ["new"]
       45 DUPTABLE                         R13 K14 [{"message"}]
       46 GETUPVAL                         R20 2
       47 MOVE                             R21 R0
       48 LOADB                            R22 0
       49 CALL                             R20 2 1
       50 MOVE                             R15 R20
       51 LOADK                            R16 K15 ["\n\n"]
       52 LOADK                            R17 K16 ["Snapshot state must be initialized"]
       53 LOADK                            R18 K15 ["\n\n"]
       54 GETUPVAL                         R19 4
       55 LOADK                            R20 K17 ["Snapshot state"]
       56 MOVE                             R21 R10
       57 GETUPVAL                         R22 5
       58 CALL                             R19 3 1
       59 CONCAT                           R14 R15 R19
       60 SETTABLEKS                       R14 R13 K13 ["message"]
       62 CALL                             R12 1 -1
       63 CALL                             R11 -1 0
       64 JUMPIFNOT                        R8 ; [+6]
       65 JUMPIFNOT                        R2 ; [+5]
       66 MOVE                             R12 R8
       67 LOADK                            R13 K18 [": "]
       68 MOVE                             R14 R2
       69 CONCAT                           R11 R12 R14
       70 JUMP                             ; [+1]
       71 ORK                              R11 R8 K19 [""]
       72 FASTCALL1                        TYPEOF R6 ; [+3]
       73 MOVE                             R13 R6
       74 GETIMPORT                        R12 K21 [typeof]
       76 CALL                             R12 1 1
       77 JUMPIFNOTEQKS                    R12 K22 ["table"] ; [+106]
       79 JUMPIFEQKNIL                     R7 ; [+13]
       81 FASTCALL1                        TYPEOF R7 ; [+3]
       82 MOVE                             R13 R7
       83 GETIMPORT                        R12 K21 [typeof]
       85 CALL                             R12 1 1
       86 JUMPIFEQKS                       R12 K22 ["table"] ; [+36]
       88 GETUPVAL                         R12 6
       89 MOVE                             R13 R7
       90 CALL                             R12 1 1
       91 JUMPIFEQKS                       R12 K23 ["Instance"] ; [+31]
       93 GETIMPORT                        R12 K11 [error]
       95 GETUPVAL                         R13 0
       96 GETTABLEKS                       R13 R13 K12 ["new"]
       98 DUPTABLE                         R14 K14 [{"message"}]
       99 GETUPVAL                         R15 1
      100 GETUPVAL                         R16 2
      101 MOVE                             R17 R0
      102 LOADB                            R18 0
      103 CALL                             R16 2 1
      104 GETUPVAL                         R21 7
      105 LOADK                            R22 K6 ["received"]
      106 CALL                             R21 1 1
      107 MOVE                             R18 R21
      108 LOADK                            R19 K24 [" value must be an object when the matcher has "]
      109 GETUPVAL                         R20 8
      110 LOADK                            R21 K5 ["properties"]
      111 CALL                             R20 1 1
      112 CONCAT                           R17 R18 R20
      113 GETUPVAL                         R18 4
      114 LOADK                            R19 K25 ["Received"]
      115 MOVE                             R20 R7
      116 GETUPVAL                         R21 9
      117 CALL                             R18 3 -1
      118 CALL                             R15 -1 1
      119 SETTABLEKS                       R15 R14 K13 ["message"]
      121 CALL                             R13 1 -1
      122 CALL                             R12 -1 0
      123 GETTABLEKS                       R12 R1 K26 ["equals"]
      125 MOVE                             R13 R7
      126 MOVE                             R14 R6
      127 NEWTABLE                         R15 0 2
      129 GETTABLEKS                       R16 R1 K27 ["utils"]
      131 GETTABLEKS                       R16 R16 K28 ["iterableEquality"]
      133 GETTABLEKS                       R17 R1 K27 ["utils"]
      135 GETTABLEKS                       R17 R17 K29 ["subsetEquality"]
      137 SETLIST                          R15 R16 2 [1]
      139 CALL                             R12 3 1
      140 JUMPIF                           R12 ; [+36]
      141 MOVE                             R15 R11
      142 MOVE                             R16 R7
      143 NAMECALL                         R13 R10 K30 ["fail"]
      145 CALL                             R13 3 1
      146 LOADK                            R16 K31 ["(%d+)$"]
      147 NAMECALL                         R14 R13 K32 ["match"]
      149 CALL                             R14 2 1
      150 JUMPIFNOTEQKNIL                  R14 ; [+3]
      152 LOADN                            R15 1
      153 JUMP                             ; [+5]
      154 FASTCALL1                        TONUMBER R14 ; [+3]
      155 MOVE                             R16 R14
      156 GETIMPORT                        R15 K34 [tonumber]
      158 CALL                             R15 1 1
      159 NEWCLOSURE                       R16 P0
      160 CAPTURE                          UPVAL U2
      161 CAPTURE                          VAL R0
      162 CAPTURE                          UPVAL U10
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R15
      166 CAPTURE                          UPVAL U11
      167 CAPTURE                          VAL R6
      168 CAPTURE                          REF R7
      169 CAPTURE                          VAL R10
      170 DUPTABLE                         R17 K38 [{["message"], ["name"], ["pass"] = False}]
      171 SETTABLEKS                       R16 R17 K13 ["message"]
      173 SETTABLEKS                       R5 R17 K35 ["name"]
      175 CLOSEUPVALS                      R7
      176 RETURN                           R17 1
      177 GETUPVAL                         R13 12
      178 GETTABLEKS                       R13 R13 K39 ["deepMerge"]
      180 MOVE                             R14 R7
      181 MOVE                             R15 R6
      182 CALL                             R13 2 1
      183 MOVE                             R7 R13
      184 DUPTABLE                         R14 K41 [{"error", "inlineSnapshot", "isInline", "received", "testName"}]
      185 GETTABLEKS                       R15 R1 K10 ["error"]
      187 SETTABLEKS                       R15 R14 K10 ["error"]
      189 SETTABLEKS                       R3 R14 K2 ["inlineSnapshot"]
      191 SETTABLEKS                       R4 R14 K3 ["isInline"]
      193 SETTABLEKS                       R7 R14 K6 ["received"]
      195 SETTABLEKS                       R11 R14 K40 ["testName"]
      197 NAMECALL                         R12 R10 K32 ["match"]
      199 CALL                             R12 2 1
      200 GETTABLEKS                       R13 R12 K42 ["actual"]
      202 GETTABLEKS                       R14 R12 K43 ["count"]
      204 GETTABLEKS                       R15 R12 K44 ["expected"]
      206 GETTABLEKS                       R16 R12 K36 ["pass"]
      208 JUMPIFNOT                        R16 ; [+6]
      209 DUPTABLE                         R17 K46 [{["message"], ["pass"] = True}]
      210 DUPCLOSURE                       R18 K47 [PROTO_3]
      211 SETTABLEKS                       R18 R17 K13 ["message"]
      213 CLOSEUPVALS                      R7
      214 RETURN                           R17 1
      215 LOADNIL                          R17
      216 JUMPIFNOTEQKNIL                  R15 ; [+12]
      218 NEWCLOSURE                       R17 P2
      219 CAPTURE                          UPVAL U2
      220 CAPTURE                          VAL R0
      221 CAPTURE                          UPVAL U10
      222 CAPTURE                          VAL R8
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R14
      225 CAPTURE                          UPVAL U13
      226 CAPTURE                          VAL R13
      227 CAPTURE                          UPVAL U14
      228 JUMP                             ; [+12]
      229 NEWCLOSURE                       R17 P3
      230 CAPTURE                          UPVAL U2
      231 CAPTURE                          VAL R0
      232 CAPTURE                          UPVAL U10
      233 CAPTURE                          VAL R8
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R14
      236 CAPTURE                          UPVAL U15
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R13
      239 CAPTURE                          REF R7
      240 CAPTURE                          VAL R10
      241 DUPTABLE                         R18 K48 [{["actual"], ["expected"], ["message"], ["name"], ["pass"] = False}]
      242 SETTABLEKS                       R13 R18 K42 ["actual"]
      244 SETTABLEKS                       R15 R18 K44 ["expected"]
      246 SETTABLEKS                       R17 R18 K13 ["message"]
      248 SETTABLEKS                       R5 R18 K35 ["name"]
      250 CLOSEUPVALS                      R7
      251 RETURN                           R18 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 DUPTABLE                         R5 K7 [{[1], ["hint"], ["isInline"] = False, ["matcherName"] = "toThrowErrorMatchingSnapshot", ["received"]}]
        2 SETTABLEKS                       R0 R5 K0 ["context"]
        4 SETTABLEKS                       R2 R5 K1 ["hint"]
        6 SETTABLEKS                       R1 R5 K6 ["received"]
        8 MOVE                             R6 R3
        9 CALL                             R4 2 -1
       10 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_9:
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
      145 MOVE                             R12 R10
      146 CALL                             R11 1 1
      147 MOVE                             R10 R11
      148 GETUPVAL                         R11 11
      149 DUPTABLE                         R12 K30 [{"context", "hint", "inlineSnapshot", "isInline", "matcherName", "received"}]
      150 SETTABLEKS                       R2 R12 K0 ["context"]
      152 SETTABLEKS                       R3 R12 K1 ["hint"]
      154 SETTABLEKS                       R4 R12 K2 ["inlineSnapshot"]
      156 SETTABLEKS                       R5 R12 K3 ["isInline"]
      158 SETTABLEKS                       R6 R12 K4 ["matcherName"]
      160 SETTABLEKS                       R10 R12 K5 ["received"]
      162 CALL                             R11 1 -1
      163 RETURN                           R11 -1

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
       18 GETTABLEKS                       R7 R1 K9 ["RobloxShared"]
       20 CALL                             R6 1 1
       21 GETTABLEKS                       R7 R6 K10 ["cleanLoadStringStack"]
       23 GETIMPORT                        R8 K4 [require]
       25 GETTABLEKS                       R9 R1 K11 ["JestGetType"]
       27 CALL                             R8 1 1
       28 GETTABLEKS                       R8 R8 K12 ["getType"]
       30 GETIMPORT                        R9 K4 [require]
       32 GETTABLEKS                       R10 R1 K13 ["JestMatcherUtils"]
       34 CALL                             R9 1 1
       35 GETTABLEKS                       R10 R9 K14 ["BOLD_WEIGHT"]
       37 GETTABLEKS                       R11 R9 K15 ["EXPECTED_COLOR"]
       39 GETTABLEKS                       R12 R9 K16 ["RECEIVED_COLOR"]
       41 GETTABLEKS                       R13 R9 K17 ["matcherErrorMessage"]
       43 GETTABLEKS                       R14 R9 K18 ["matcherHint"]
       45 GETTABLEKS                       R15 R9 K19 ["printWithType"]
       47 GETTABLEKS                       R16 R9 K20 ["stringify"]
       49 GETIMPORT                        R17 K4 [require]
       51 GETIMPORT                        R18 K1 [script]
       53 GETTABLEKS                       R18 R18 K21 ["SnapshotResolver"]
       55 CALL                             R17 1 1
       56 GETTABLEKS                       R18 R17 K22 ["EXTENSION"]
       58 GETTABLEKS                       R19 R17 K23 ["buildSnapshotResolver"]
       60 GETTABLEKS                       R20 R17 K24 ["isSnapshotPath"]
       62 GETIMPORT                        R21 K4 [require]
       64 GETTABLEKS                       R22 R0 K25 ["State"]
       66 CALL                             R21 1 1
       67 GETTABLEKS                       R22 R21 K26 ["default"]
       69 GETIMPORT                        R23 K4 [require]
       71 GETTABLEKS                       R24 R0 K27 ["plugins"]
       73 CALL                             R23 1 1
       74 GETTABLEKS                       R24 R23 K28 ["addSerializer"]
       76 GETTABLEKS                       R25 R23 K29 ["getSerializers"]
       78 GETIMPORT                        R26 K4 [require]
       80 GETTABLEKS                       R27 R0 K30 ["printSnapshot"]
       82 CALL                             R26 1 1
       83 GETTABLEKS                       R27 R26 K31 ["PROPERTIES_ARG"]
       85 GETTABLEKS                       R28 R26 K32 ["bReceivedColor"]
       87 GETTABLEKS                       R29 R26 K33 ["matcherHintFromConfig"]
       89 GETTABLEKS                       R30 R26 K34 ["printExpected"]
       91 GETTABLEKS                       R31 R26 K35 ["printPropertiesAndReceived"]
       93 GETTABLEKS                       R32 R26 K36 ["printReceived"]
       95 GETTABLEKS                       R33 R26 K37 ["printSnapshotAndReceived"]
       97 GETIMPORT                        R34 K4 [require]
       99 GETTABLEKS                       R35 R0 K38 ["types"]
      101 CALL                             R34 1 1
      102 GETIMPORT                        R35 K4 [require]
      104 GETTABLEKS                       R36 R0 K39 ["utils"]
      106 CALL                             R35 1 1
      107 LOADNIL                          R36
      108 LOADNIL                          R37
      109 LOADK                            R39 K40 ["Snapshot matchers cannot be used with "]
      110 MOVE                             R40 R10
      111 LOADK                            R41 K41 ["never"]
      112 CALL                             R40 1 1
      113 CONCAT                           R38 R39 R40
      114 DUPCLOSURE                       R39 K42 [PROTO_0]
      115 CAPTURE                          VAL R35
      116 CAPTURE                          VAL R10
      117 NEWCLOSURE                       R40 P1
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R30
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R27
      125 CAPTURE                          VAL R11
      126 CAPTURE                          REF R36
      127 DUPCLOSURE                       R36 K43 [PROTO_6]
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R29
      131 CAPTURE                          VAL R38
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R32
      138 CAPTURE                          VAL R39
      139 CAPTURE                          VAL R31
      140 CAPTURE                          VAL R35
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R28
      143 CAPTURE                          VAL R33
      144 NEWCLOSURE                       R41 P3
      145 CAPTURE                          REF R37
      146 NEWCLOSURE                       R37 P4
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R32
      153 CAPTURE                          VAL R29
      154 CAPTURE                          VAL R38
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R7
      158 CAPTURE                          REF R36
      159 DUPTABLE                         R42 K47 [{"EXTENSION", "SnapshotState", "addSerializer", "buildSnapshotResolver", "getSerializers", "isSnapshotPath", "toMatchSnapshot", "toThrowErrorMatchingSnapshot", "utils", "plugins"}]
      160 SETTABLEKS                       R18 R42 K22 ["EXTENSION"]
      162 SETTABLEKS                       R22 R42 K44 ["SnapshotState"]
      164 SETTABLEKS                       R24 R42 K28 ["addSerializer"]
      166 SETTABLEKS                       R19 R42 K23 ["buildSnapshotResolver"]
      168 SETTABLEKS                       R25 R42 K29 ["getSerializers"]
      170 SETTABLEKS                       R20 R42 K24 ["isSnapshotPath"]
      172 SETTABLEKS                       R40 R42 K45 ["toMatchSnapshot"]
      174 SETTABLEKS                       R41 R42 K46 ["toThrowErrorMatchingSnapshot"]
      176 SETTABLEKS                       R35 R42 K39 ["utils"]
      178 GETIMPORT                        R43 K4 [require]
      180 GETTABLEKS                       R44 R0 K27 ["plugins"]
      182 CALL                             R43 1 1
      183 SETTABLEKS                       R43 R42 K27 ["plugins"]
      185 CLOSEUPVALS                      R36
      186 RETURN                           R42 1
