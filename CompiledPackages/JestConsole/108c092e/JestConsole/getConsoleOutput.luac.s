PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 GETTABLEKS                       R3 R1 K1 ["message"]
        4 GETTABLEKS                       R4 R1 K2 ["origin"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K3 ["join"]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K4 ["map"]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R7 R8 K5 ["split"]
       15 MOVE                             R8 R3
       16 LOADK                            R9 K6 ["\n"]
       17 CALL                             R7 2 1
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          UPVAL U2
       20 CALL                             R6 2 1
       21 LOADK                            R7 K6 ["\n"]
       22 CALL                             R5 2 1
       23 MOVE                             R3 R5
       24 LOADK                            R6 K7 ["console."]
       25 MOVE                             R7 R2
       26 CONCAT                           R5 R6 R7
       27 LOADB                            R6 1
       28 LOADB                            R7 1
       29 JUMPIFNOTEQKS                    R2 K8 ["warn"] ; [+19]
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R8 R9 K9 ["yellow"]
       34 MOVE                             R9 R3
       35 CALL                             R8 1 1
       36 MOVE                             R3 R8
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R8 R9 K9 ["yellow"]
       40 MOVE                             R9 R5
       41 CALL                             R8 1 1
       42 MOVE                             R5 R8
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R8 R9 K11 ["noStackTrace"]
       46 ORK                              R6 R8 K10 [False]
       47 LOADB                            R7 0
       48 JUMP                             ; [+19]
       49 JUMPIFNOTEQKS                    R2 K12 ["error"] ; [+18]
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R8 R9 K13 ["red"]
       54 MOVE                             R9 R3
       55 CALL                             R8 1 1
       56 MOVE                             R3 R8
       57 GETUPVAL                         R9 3
       58 GETTABLEKS                       R8 R9 K13 ["red"]
       60 MOVE                             R9 R5
       61 CALL                             R8 1 1
       62 MOVE                             R5 R8
       63 GETUPVAL                         R9 4
       64 GETTABLEKS                       R8 R9 K11 ["noStackTrace"]
       66 ORK                              R6 R8 K10 [False]
       67 LOADB                            R7 0
       68 DUPTABLE                         R8 K16 [{"noStackTrace", "noCodeFrame", "stackDepth"}]
       69 SETTABLEKS                       R6 R8 K11 ["noStackTrace"]
       71 SETTABLEKS                       R7 R8 K14 ["noCodeFrame"]
       73 GETUPVAL                         R10 4
       74 GETTABLEKS                       R9 R10 K15 ["stackDepth"]
       76 SETTABLEKS                       R9 R8 K15 ["stackDepth"]
       78 GETUPVAL                         R9 5
       79 MOVE                             R10 R4
       80 GETUPVAL                         R11 6
       81 MOVE                             R12 R8
       82 CALL                             R9 3 1
       83 MOVE                             R11 R0
       84 GETUPVAL                         R12 7
       85 GETUPVAL                         R20 3
       86 GETTABLEKS                       R19 R20 K17 ["dim"]
       88 MOVE                             R20 R5
       89 CALL                             R19 1 1
       90 MOVE                             R13 R19
       91 LOADK                            R14 K6 ["\n"]
       92 GETUPVAL                         R20 1
       93 GETTABLEKS                       R19 R20 K18 ["trimEnd"]
       95 MOVE                             R20 R3
       96 CALL                             R19 1 1
       97 MOVE                             R15 R19
       98 LOADK                            R16 K6 ["\n"]
       99 GETUPVAL                         R20 3
      100 GETTABLEKS                       R19 R20 K17 ["dim"]
      102 GETUPVAL                         R21 1
      103 GETTABLEKS                       R20 R21 K18 ["trimEnd"]
      105 MOVE                             R21 R9
      106 CALL                             R20 1 -1
      107 CALL                             R19 -1 1
      108 MOVE                             R17 R19
      109 LOADK                            R18 K19 ["\n\n"]
      110 CONCAT                           R10 R11 R18
      111 RETURN                           R10 1

PROTO_2:
        0 GETTABLEKS                       R4 R2 K0 ["verbose"]
        2 JUMPIFNOT                        R4 ; [+2]
        3 LOADK                            R3 K1 ["  "]
        4 JUMP                             ; [+1]
        5 LOADK                            R3 K2 ["    "]
        6 MOVE                             R5 R3
        7 LOADK                            R6 K1 ["  "]
        8 CONCAT                           R4 R5 R6
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K3 ["reduce"]
       12 MOVE                             R6 R0
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R4
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R3
       22 LOADK                            R8 K4 [""]
       23 CALL                             R5 3 1
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R9 R10 K5 ["trimEnd"]
       27 MOVE                             R10 R5
       28 CALL                             R9 1 1
       29 MOVE                             R7 R9
       30 LOADK                            R8 K6 ["\n"]
       31 CONCAT                           R6 R7 R8
       32 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R2 K1 [script]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R2 K5 ["LuauPolyfill"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R3 K6 ["Array"]
       16 GETTABLEKS                       R5 R3 K7 ["String"]
       18 GETIMPORT                        R6 K4 [require]
       20 GETTABLEKS                       R7 R2 K8 ["ChalkLua"]
       22 CALL                             R6 1 1
       23 GETIMPORT                        R7 K4 [require]
       25 GETTABLEKS                       R8 R2 K9 ["JestTypes"]
       27 CALL                             R7 1 1
       28 GETIMPORT                        R8 K4 [require]
       30 GETTABLEKS                       R9 R2 K10 ["JestMessageUtil"]
       32 CALL                             R8 1 1
       33 GETTABLEKS                       R9 R8 K11 ["formatStackTrace"]
       35 GETIMPORT                        R10 K4 [require]
       37 GETTABLEKS                       R11 R1 K12 ["types"]
       39 CALL                             R10 1 1
       40 DUPCLOSURE                       R11 K13 [PROTO_2]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R9
       45 SETTABLEKS                       R11 R0 K14 ["default"]
       47 RETURN                           R0 1
