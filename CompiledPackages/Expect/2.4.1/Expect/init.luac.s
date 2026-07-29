PROTO_0:
        0 PREPVARARGS                      2
        1 NEWTABLE                         R2 0 0
        3 GETVARARGS                       R3 -1
        4 SETLIST                          R2 R3 -1 [1]
        6 LENGTH                           R3 R2
        7 JUMPIFEQKN                       R3 K0 [0] ; [+5]
        9 GETIMPORT                        R3 K2 [error]
       11 LOADK                            R4 K3 ["Expect takes at most one argument."]
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 0
       14 CALL                             R3 0 1
       15 DUPTABLE                         R4 K7 [{"never", "rejects", "resolves"}]
       16 NEWTABLE                         R5 0 0
       18 SETTABLEKS                       R5 R4 K4 ["never"]
       20 DUPTABLE                         R5 K8 [{"never"}]
       21 NEWTABLE                         R6 0 0
       23 SETTABLEKS                       R6 R5 K4 ["never"]
       25 SETTABLEKS                       R5 R4 K5 ["rejects"]
       27 DUPTABLE                         R5 K8 [{"never"}]
       28 NEWTABLE                         R6 0 0
       30 SETTABLEKS                       R6 R5 K4 ["never"]
       32 SETTABLEKS                       R5 R4 K6 ["resolves"]
       34 GETIMPORT                        R5 K10 [pairs]
       36 MOVE                             R6 R3
       37 CALL                             R5 1 3
       38 FORGPREP_NEXT                    R5
       39 GETUPVAL                         R10 1
       40 MOVE                             R11 R9
       41 LOADB                            R12 0
       42 LOADK                            R13 K11 [""]
       43 MOVE                             R14 R1
       44 CALL                             R10 4 1
       45 SETTABLE                         R10 R4 R8
       46 GETTABLEKS                       R10 R4 K4 ["never"]
       48 GETUPVAL                         R11 1
       49 MOVE                             R12 R9
       50 LOADB                            R13 1
       51 LOADK                            R14 K11 [""]
       52 MOVE                             R15 R1
       53 CALL                             R11 4 1
       54 SETTABLE                         R11 R10 R8
       55 FORGLOOP                         R5 2 ; [-17]
       57 RETURN                           R4 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+3]
        1 MOVE                             R1 R0
        2 CALL                             R1 0 1
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["RECEIVED_COLOR"]
        7 LOADK                            R2 K1 ["No message was specified for this matcher."]
        8 CALL                             R1 1 1
        9 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 1
        7 GETTABLEKS                       R4 R4 K1 ["assertionCalls"]
        9 ADDK                             R3 R4 K0 [1]
       10 SETTABLEKS                       R3 R2 K1 ["assertionCalls"]
       12 GETTABLEKS                       R2 R0 K2 ["pass"]
       14 JUMPIFNOT                        R2 ; [+2]
       15 GETUPVAL                         R2 2
       16 JUMPIF                           R2 ; [+5]
       17 GETTABLEKS                       R2 R0 K2 ["pass"]
       19 JUMPIF                           R2 ; [+68]
       20 GETUPVAL                         R2 2
       21 JUMPIF                           R2 ; [+66]
       22 GETTABLEKS                       R3 R0 K3 ["message"]
       24 JUMPIFNOT                        R3 ; [+4]
       25 MOVE                             R4 R3
       26 CALL                             R4 0 1
       27 MOVE                             R2 R4
       28 JUMP                             ; [+6]
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R4 R4 K4 ["RECEIVED_COLOR"]
       32 LOADK                            R5 K5 ["No message was specified for this matcher."]
       33 CALL                             R4 1 1
       34 MOVE                             R2 R4
       35 LOADNIL                          R3
       36 GETUPVAL                         R4 4
       37 JUMPIFNOT                        R4 ; [+4]
       38 GETUPVAL                         R3 4
       39 SETTABLEKS                       R2 R3 K3 ["message"]
       41 JUMP                             ; [+10]
       42 JUMPIFNOT                        R1 ; [+5]
       43 GETIMPORT                        R4 K7 [error]
       45 LOADK                            R5 K8 ["Currently async is not implemented"]
       46 CALL                             R4 1 0
       47 JUMP                             ; [+4]
       48 NEWTABLE                         R3 0 0
       50 SETTABLEKS                       R2 R3 K3 ["message"]
       52 GETUPVAL                         R4 5
       53 GETTABLEKS                       R4 R4 K9 ["assign"]
       55 NEWTABLE                         R5 0 0
       57 MOVE                             R6 R0
       58 DUPTABLE                         R7 K10 [{"message"}]
       59 SETTABLEKS                       R2 R7 K3 ["message"]
       61 CALL                             R4 3 1
       62 SETTABLEKS                       R4 R3 K11 ["matcherResult"]
       64 GETUPVAL                         R4 6
       65 JUMPIFNOT                        R4 ; [+11]
       66 GETIMPORT                        R4 K7 [error]
       68 GETUPVAL                         R5 7
       69 GETTABLEKS                       R5 R5 K12 ["new"]
       71 DUPTABLE                         R6 K10 [{"message"}]
       72 SETTABLEKS                       R2 R6 K3 ["message"]
       74 CALL                             R5 1 -1
       75 CALL                             R4 -1 0
       76 RETURN                           R0 0
       77 GETUPVAL                         R5 1
       78 CALL                             R5 0 1
       79 GETTABLEKS                       R5 R5 K13 ["suppressedErrors"]
       81 GETIMPORT                        R6 K7 [error]
       83 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       85 GETIMPORT                        R4 K16 [table.insert]
       87 CALL                             R4 2 0
       88 RETURN                           R0 0

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 1
        2 GETUPVAL                         R1 2
        3 GETUPVAL                         R2 3
        4 GETVARARGS                       R3 -1
        5 CALL                             R0 -1 1
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R1 4
        9 MOVE                             R2 R0
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1

PROTO_5:
        0 GETIMPORT                        R1 K2 [debug.traceback]
        2 LOADNIL                          R2
        3 LOADN                            R3 7
        4 CALL                             R1 2 1
        5 SETUPVAL                         R1 0
        6 SETUPVAL                         R0 1
        7 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      0
        1 LOADB                            R0 1
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["assign"]
        5 DUPTABLE                         R2 K3 [{"iterableEquality", "subsetEquality"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["iterableEquality"]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K2 ["subsetEquality"]
       12 GETUPVAL                         R3 3
       13 CALL                             R1 2 1
       14 DUPTABLE                         R2 K10 [{"dontThrow", "equals", "error", "isNot", "promise", "utils"}]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          REF R0
       17 SETTABLEKS                       R3 R2 K4 ["dontThrow"]
       19 GETUPVAL                         R3 4
       20 SETTABLEKS                       R3 R2 K5 ["equals"]
       22 GETUPVAL                         R3 5
       23 SETTABLEKS                       R3 R2 K6 ["error"]
       25 GETUPVAL                         R3 6
       26 SETTABLEKS                       R3 R2 K7 ["isNot"]
       28 GETUPVAL                         R3 7
       29 SETTABLEKS                       R3 R2 K8 ["promise"]
       31 SETTABLEKS                       R1 R2 K9 ["utils"]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K0 ["assign"]
       36 MOVE                             R4 R2
       37 GETUPVAL                         R5 8
       38 CALL                             R5 0 -1
       39 CALL                             R3 -1 0
       40 NEWCLOSURE                       R3 P1
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          UPVAL U8
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          REF R0
       48 CAPTURE                          UPVAL U10
       49 LOADNIL                          R4
       50 LOADNIL                          R5
       51 LOADNIL                          R6
       52 GETIMPORT                        R7 K12 [xpcall]
       54 NEWCLOSURE                       R8 P2
       55 CAPTURE                          REF R4
       56 CAPTURE                          UPVAL U11
       57 CAPTURE                          VAL R2
       58 CAPTURE                          UPVAL U12
       59 CAPTURE                          VAL R3
       60 NEWCLOSURE                       R9 P3
       61 CAPTURE                          REF R5
       62 CAPTURE                          REF R6
       63 GETVARARGS                       R10 -1
       64 CALL                             R7 -1 1
       65 JUMPIF                           R7 ; [+44]
       66 FASTCALL1                        TYPEOF R6 ; [+3]
       67 MOVE                             R9 R6
       68 GETIMPORT                        R8 K14 [typeof]
       70 CALL                             R8 1 1
       71 JUMPIFNOTEQKS                    R8 K15 ["table"] ; [+25]
       73 GETTABLEKS                       R9 R6 K16 ["message"]
       75 FASTCALL1                        TYPEOF R9 ; [+2]
       76 GETIMPORT                        R8 K14 [typeof]
       78 CALL                             R8 1 1
       79 JUMPIFNOTEQKS                    R8 K17 ["string"] ; [+17]
       81 GETUPVAL                         R8 10
       82 GETTABLEKS                       R8 R8 K18 ["new"]
       84 DUPTABLE                         R9 K19 [{"message"}]
       85 GETTABLEKS                       R10 R6 K16 ["message"]
       87 SETTABLEKS                       R10 R9 K16 ["message"]
       89 CALL                             R8 1 1
       90 SETTABLEKS                       R5 R8 K20 ["stack"]
       92 GETIMPORT                        R9 K21 [error]
       94 MOVE                             R10 R8
       95 CALL                             R9 1 0
       96 JUMP                             ; [+13]
       97 GETUPVAL                         R8 10
       98 GETTABLEKS                       R8 R8 K18 ["new"]
      100 DUPTABLE                         R9 K19 [{"message"}]
      101 SETTABLEKS                       R6 R9 K16 ["message"]
      103 CALL                             R8 1 1
      104 SETTABLEKS                       R5 R8 K20 ["stack"]
      106 GETIMPORT                        R9 K21 [error]
      108 MOVE                             R10 R8
      109 CALL                             R9 1 0
      110 CLOSEUPVALS                      R0
      111 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R4
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R3
       14 RETURN                           R5 1

PROTO_8:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+28]
        7 GETTABLEKS                       R2 R0 K3 ["pass"]
        9 FASTCALL1                        TYPEOF R2 ; [+2]
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["boolean"] ; [+20]
       15 GETTABLEKS                       R1 R0 K5 ["message"]
       17 JUMPIFNOT                        R1 ; [+31]
       18 GETTABLEKS                       R2 R0 K5 ["message"]
       20 FASTCALL1                        TYPEOF R2 ; [+2]
       21 GETIMPORT                        R1 K1 [typeof]
       23 CALL                             R1 1 1
       24 JUMPIFEQKS                       R1 K6 ["string"] ; [+24]
       26 GETTABLEKS                       R2 R0 K5 ["message"]
       28 FASTCALL1                        TYPEOF R2 ; [+2]
       29 GETIMPORT                        R1 K1 [typeof]
       31 CALL                             R1 1 1
       32 JUMPIFEQKS                       R1 K7 ["function"] ; [+16]
       34 GETIMPORT                        R1 K9 [error]
       36 LOADK                            R3 K10 ["Unexpected return from a matcher function.\n"]
       37 LOADK                            R4 K11 ["Matcher functions should "]
       38 LOADK                            R5 K12 ["return an object in the following format:\n"]
       39 LOADK                            R6 K13 ["  {message?: string | function, pass: boolean}\n"]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K14 ["stringify"]
       43 MOVE                             R10 R0
       44 CALL                             R9 1 1
       45 MOVE                             R7 R9
       46 LOADK                            R8 K15 [" was returned"]
       47 CONCAT                           R2 R3 R8
       48 CALL                             R1 1 0
       49 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 0
        3 GETUPVAL                         R4 1
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K6 ["Object"]
       12 GETTABLEKS                       R4 R2 K7 ["AssertionError"]
       14 GETIMPORT                        R5 K4 [require]
       16 GETTABLEKS                       R6 R1 K8 ["JestMatcherUtils"]
       18 CALL                             R5 1 1
       19 GETIMPORT                        R6 K4 [require]
       21 GETTABLEKS                       R7 R0 K9 ["asymmetricMatchers"]
       23 CALL                             R6 1 1
       24 GETTABLEKS                       R7 R6 K10 ["any"]
       26 GETTABLEKS                       R8 R6 K11 ["anything"]
       28 GETTABLEKS                       R9 R6 K12 ["arrayContaining"]
       30 GETTABLEKS                       R10 R6 K13 ["arrayNotContaining"]
       32 GETTABLEKS                       R11 R6 K14 ["objectContaining"]
       34 GETTABLEKS                       R12 R6 K15 ["objectNotContaining"]
       36 GETTABLEKS                       R13 R6 K16 ["stringContaining"]
       38 GETTABLEKS                       R14 R6 K17 ["stringNotContaining"]
       40 GETTABLEKS                       R15 R6 K18 ["stringMatching"]
       42 GETTABLEKS                       R16 R6 K19 ["stringNotMatching"]
       44 GETIMPORT                        R17 K4 [require]
       46 GETTABLEKS                       R18 R0 K20 ["jasmineUtils"]
       48 CALL                             R17 1 1
       49 GETTABLEKS                       R18 R17 K21 ["equals"]
       51 GETIMPORT                        R19 K4 [require]
       53 GETTABLEKS                       R20 R0 K22 ["jestMatchersObject"]
       55 CALL                             R19 1 1
       56 GETTABLEKS                       R20 R19 K23 ["getMatchers"]
       58 GETTABLEKS                       R21 R19 K24 ["getState"]
       60 GETTABLEKS                       R22 R19 K25 ["setMatchers"]
       62 GETTABLEKS                       R23 R19 K26 ["setState"]
       64 GETIMPORT                        R24 K4 [require]
       66 GETTABLEKS                       R25 R0 K27 ["matchers"]
       68 CALL                             R24 1 1
       69 GETIMPORT                        R25 K4 [require]
       71 GETTABLEKS                       R26 R0 K28 ["spyMatchers"]
       73 CALL                             R25 1 1
       74 GETIMPORT                        R26 K4 [require]
       76 GETTABLEKS                       R27 R0 K29 ["toThrowMatchers"]
       78 CALL                             R26 1 1
       79 GETTABLEKS                       R26 R26 K27 ["matchers"]
       81 GETIMPORT                        R27 K4 [require]
       83 GETTABLEKS                       R28 R0 K30 ["types"]
       85 CALL                             R27 1 1
       86 GETIMPORT                        R28 K4 [require]
       88 GETTABLEKS                       R29 R0 K31 ["utils"]
       90 CALL                             R28 1 1
       91 GETTABLEKS                       R29 R28 K32 ["iterableEquality"]
       93 GETTABLEKS                       R30 R28 K33 ["subsetEquality"]
       95 LOADNIL                          R31
       96 LOADNIL                          R32
       97 NEWCLOSURE                       R33 P0
       98 CAPTURE                          VAL R20
       99 CAPTURE                          REF R31
      100 DUPCLOSURE                       R34 K34 [PROTO_1]
      101 CAPTURE                          VAL R5
      102 NEWCLOSURE                       R31 P2
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R29
      105 CAPTURE                          VAL R30
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R21
      109 CAPTURE                          REF R32
      110 CAPTURE                          VAL R4
      111 DUPCLOSURE                       R32 K35 [PROTO_8]
      112 CAPTURE                          VAL R5
      113 NEWTABLE                         R35 16 0
      115 DUPCLOSURE                       R36 K36 [PROTO_9]
      116 CAPTURE                          VAL R22
      117 CAPTURE                          VAL R35
      118 SETTABLEKS                       R36 R35 K37 ["extend"]
      120 SETTABLEKS                       R8 R35 K11 ["anything"]
      122 SETTABLEKS                       R7 R35 K10 ["any"]
      124 DUPTABLE                         R36 K38 [{"arrayContaining", "objectContaining", "stringContaining", "stringMatching"}]
      125 SETTABLEKS                       R10 R36 K12 ["arrayContaining"]
      127 SETTABLEKS                       R12 R36 K14 ["objectContaining"]
      129 SETTABLEKS                       R14 R36 K16 ["stringContaining"]
      131 SETTABLEKS                       R16 R36 K18 ["stringMatching"]
      133 SETTABLEKS                       R36 R35 K39 ["never"]
      135 SETTABLEKS                       R11 R35 K14 ["objectContaining"]
      137 SETTABLEKS                       R9 R35 K12 ["arrayContaining"]
      139 SETTABLEKS                       R13 R35 K16 ["stringContaining"]
      141 SETTABLEKS                       R15 R35 K18 ["stringMatching"]
      143 MOVE                             R36 R22
      144 MOVE                             R37 R24
      145 LOADB                            R38 1
      146 MOVE                             R39 R35
      147 CALL                             R36 3 0
      148 MOVE                             R36 R22
      149 MOVE                             R37 R25
      150 LOADB                            R38 1
      151 MOVE                             R39 R35
      152 CALL                             R36 3 0
      153 MOVE                             R36 R22
      154 MOVE                             R37 R26
      155 LOADB                            R38 1
      156 MOVE                             R39 R35
      157 CALL                             R36 3 0
      158 GETIMPORT                        R36 K4 [require]
      160 GETTABLEKS                       R37 R1 K40 ["JestSnapshot"]
      162 CALL                             R36 1 1
      163 GETTABLEKS                       R36 R36 K41 ["plugins"]
      165 GETTABLEKS                       R37 R36 K42 ["addSerializer"]
      167 SETTABLEKS                       R37 R35 K43 ["addSnapshotSerializer"]
      169 GETTABLEKS                       R37 R36 K44 ["resetSerializers"]
      171 SETTABLEKS                       R37 R35 K45 ["resetSnapshotSerializers"]
      173 SETTABLEKS                       R21 R35 K24 ["getState"]
      175 SETTABLEKS                       R23 R35 K26 ["setState"]
      177 GETIMPORT                        R37 K4 [require]
      179 GETTABLEKS                       R38 R1 K40 ["JestSnapshot"]
      181 CALL                             R37 1 1
      182 GETTABLEKS                       R38 R37 K46 ["toMatchSnapshot"]
      184 GETTABLEKS                       R39 R37 K47 ["toThrowErrorMatchingSnapshot"]
      186 MOVE                             R40 R22
      187 DUPTABLE                         R41 K48 [{"toMatchSnapshot", "toThrowErrorMatchingSnapshot"}]
      188 SETTABLEKS                       R38 R41 K46 ["toMatchSnapshot"]
      190 SETTABLEKS                       R39 R41 K47 ["toThrowErrorMatchingSnapshot"]
      192 LOADB                            R42 0
      193 MOVE                             R43 R35
      194 CALL                             R40 3 0
      195 DUPTABLE                         R42 K50 [{"__call"}]
      196 SETTABLEKS                       R33 R42 K49 ["__call"]
      198 FASTCALL2                        SETMETATABLE R35 R42 ; [+4]
      200 MOVE                             R41 R35
      201 GETIMPORT                        R40 K52 [setmetatable]
      203 CALL                             R40 2 0
      204 CLOSEUPVALS                      R31
      205 RETURN                           R35 1
