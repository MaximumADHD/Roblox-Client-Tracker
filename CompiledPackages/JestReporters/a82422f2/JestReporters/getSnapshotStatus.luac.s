PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["bold"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["red"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["bold"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["green"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["bold"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["green"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["bold"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["yellow"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["\t"]
        2 LOADK                            R5 K1 [" • "]
        3 MOVE                             R6 R0
        4 CONCAT                           R3 R4 R6
        5 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
        7 GETIMPORT                        R1 K4 [table.insert]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
        5 GETTABLEKS                       R4 R0 K1 ["added"]
        7 CALL                             R3 1 1
        8 JUMPIFNOT                        R3 ; [+16]
        9 MOVE                             R4 R2
       10 GETUPVAL                         R5 1
       11 LOADK                            R7 K2 [" › "]
       12 GETUPVAL                         R10 2
       13 LOADK                            R11 K3 ["snapshot"]
       14 GETTABLEKS                       R12 R0 K1 ["added"]
       16 CALL                             R10 2 1
       17 MOVE                             R8 R10
       18 LOADK                            R9 K4 [" written."]
       19 CONCAT                           R6 R7 R9
       20 CALL                             R5 1 -1
       21 FASTCALL                         TABLE_INSERT ; [+2]
       22 GETIMPORT                        R3 K7 [table.insert]
       24 CALL                             R3 -1 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
       28 GETTABLEKS                       R4 R0 K8 ["updated"]
       30 CALL                             R3 1 1
       31 JUMPIFNOT                        R3 ; [+16]
       32 MOVE                             R4 R2
       33 GETUPVAL                         R5 3
       34 LOADK                            R7 K2 [" › "]
       35 GETUPVAL                         R10 2
       36 LOADK                            R11 K3 ["snapshot"]
       37 GETTABLEKS                       R12 R0 K8 ["updated"]
       39 CALL                             R10 2 1
       40 MOVE                             R8 R10
       41 LOADK                            R9 K9 [" updated."]
       42 CONCAT                           R6 R7 R9
       43 CALL                             R5 1 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R3 K7 [table.insert]
       47 CALL                             R3 -1 0
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
       51 GETTABLEKS                       R4 R0 K10 ["unmatched"]
       53 CALL                             R3 1 1
       54 JUMPIFNOT                        R3 ; [+16]
       55 MOVE                             R4 R2
       56 GETUPVAL                         R5 4
       57 LOADK                            R7 K2 [" › "]
       58 GETUPVAL                         R10 2
       59 LOADK                            R11 K3 ["snapshot"]
       60 GETTABLEKS                       R12 R0 K10 ["unmatched"]
       62 CALL                             R10 2 1
       63 MOVE                             R8 R10
       64 LOADK                            R9 K11 [" failed."]
       65 CONCAT                           R6 R7 R9
       66 CALL                             R5 1 -1
       67 FASTCALL                         TABLE_INSERT ; [+2]
       68 GETIMPORT                        R3 K7 [table.insert]
       70 CALL                             R3 -1 0
       71 GETUPVAL                         R4 0
       72 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
       74 GETTABLEKS                       R4 R0 K12 ["unchecked"]
       76 CALL                             R3 1 1
       77 JUMPIFNOT                        R3 ; [+42]
       78 JUMPIFNOT                        R1 ; [+17]
       79 MOVE                             R4 R2
       80 GETUPVAL                         R5 3
       81 LOADK                            R7 K2 [" › "]
       82 GETUPVAL                         R10 2
       83 LOADK                            R11 K3 ["snapshot"]
       84 GETTABLEKS                       R12 R0 K12 ["unchecked"]
       86 CALL                             R10 2 1
       87 MOVE                             R8 R10
       88 LOADK                            R9 K13 [" removed."]
       89 CONCAT                           R6 R7 R9
       90 CALL                             R5 1 -1
       91 FASTCALL                         TABLE_INSERT ; [+2]
       92 GETIMPORT                        R3 K7 [table.insert]
       94 CALL                             R3 -1 0
       95 JUMP                             ; [+16]
       96 MOVE                             R4 R2
       97 GETUPVAL                         R5 5
       98 LOADK                            R7 K2 [" › "]
       99 GETUPVAL                         R10 2
      100 LOADK                            R11 K3 ["snapshot"]
      101 GETTABLEKS                       R12 R0 K12 ["unchecked"]
      103 CALL                             R10 2 1
      104 MOVE                             R8 R10
      105 LOADK                            R9 K14 [" obsolete."]
      106 CONCAT                           R6 R7 R9
      107 CALL                             R5 1 -1
      108 FASTCALL                         TABLE_INSERT ; [+2]
      109 GETIMPORT                        R3 K7 [table.insert]
      111 CALL                             R3 -1 0
      112 GETUPVAL                         R4 6
      113 GETTABLEKS                       R3 R4 K15 ["forEach"]
      115 GETTABLEKS                       R4 R0 K16 ["uncheckedKeys"]
      117 NEWCLOSURE                       R5 P0
      118 CAPTURE                          VAL R2
      119 CALL                             R3 2 0
      120 GETTABLEKS                       R3 R0 K17 ["fileDeleted"]
      122 JUMPIFNOT                        R3 ; [+8]
      123 MOVE                             R4 R2
      124 GETUPVAL                         R5 3
      125 LOADK                            R6 K18 [" › snapshot file removed."]
      126 CALL                             R5 1 -1
      127 FASTCALL                         TABLE_INSERT ; [+2]
      128 GETIMPORT                        R3 K7 [table.insert]
      130 CALL                             R3 -1 0
      131 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Boolean"]
       14 GETTABLEKS                       R4 R2 K7 ["Array"]
       16 NEWTABLE                         R5 1 0
       18 GETIMPORT                        R6 K4 [require]
       20 GETTABLEKS                       R7 R1 K8 ["ChalkLua"]
       22 CALL                             R6 1 1
       23 GETIMPORT                        R7 K4 [require]
       25 GETTABLEKS                       R8 R1 K9 ["JestTestResult"]
       27 CALL                             R7 1 1
       28 GETIMPORT                        R9 K4 [require]
       30 GETTABLEKS                       R10 R1 K10 ["JestUtil"]
       32 CALL                             R9 1 1
       33 GETTABLEKS                       R8 R9 K11 ["pluralize"]
       35 DUPCLOSURE                       R9 K12 [PROTO_0]
       36 CAPTURE                          VAL R6
       37 DUPCLOSURE                       R10 K13 [PROTO_1]
       38 CAPTURE                          VAL R6
       39 DUPCLOSURE                       R11 K14 [PROTO_2]
       40 CAPTURE                          VAL R6
       41 DUPCLOSURE                       R12 K15 [PROTO_3]
       42 CAPTURE                          VAL R6
       43 DUPCLOSURE                       R13 K16 [PROTO_5]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R10
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R11
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R12
       50 CAPTURE                          VAL R4
       51 SETTABLEKS                       R13 R5 K17 ["default"]
       53 RETURN                           R5 1
