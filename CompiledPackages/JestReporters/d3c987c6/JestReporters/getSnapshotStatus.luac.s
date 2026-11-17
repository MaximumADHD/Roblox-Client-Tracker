PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["bold"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["red"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["bold"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["green"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["bold"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["green"]
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["bold"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["yellow"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
        5 GETTABLEKS                       R4 R0 K1 ["added"]
        7 CALL                             R3 1 1
        8 JUMPIFNOT                        R3 ; [+15]
        9 MOVE                             R4 R2
       10 GETUPVAL                         R5 1
       11 LOADK                            R7 K2 [" › "]
       12 GETUPVAL                         R8 2
       13 LOADK                            R9 K3 ["snapshot"]
       14 GETTABLEKS                       R10 R0 K1 ["added"]
       16 CALL                             R8 2 1
       17 LOADK                            R9 K4 [" written."]
       18 CONCAT                           R6 R7 R9
       19 CALL                             R5 1 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R3 K7 [table.insert]
       23 CALL                             R3 -1 0
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
       27 GETTABLEKS                       R4 R0 K8 ["updated"]
       29 CALL                             R3 1 1
       30 JUMPIFNOT                        R3 ; [+15]
       31 MOVE                             R4 R2
       32 GETUPVAL                         R5 3
       33 LOADK                            R7 K2 [" › "]
       34 GETUPVAL                         R8 2
       35 LOADK                            R9 K3 ["snapshot"]
       36 GETTABLEKS                       R10 R0 K8 ["updated"]
       38 CALL                             R8 2 1
       39 LOADK                            R9 K9 [" updated."]
       40 CONCAT                           R6 R7 R9
       41 CALL                             R5 1 -1
       42 FASTCALL                         TABLE_INSERT ; [+2]
       43 GETIMPORT                        R3 K7 [table.insert]
       45 CALL                             R3 -1 0
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
       49 GETTABLEKS                       R4 R0 K10 ["unmatched"]
       51 CALL                             R3 1 1
       52 JUMPIFNOT                        R3 ; [+15]
       53 MOVE                             R4 R2
       54 GETUPVAL                         R5 4
       55 LOADK                            R7 K2 [" › "]
       56 GETUPVAL                         R8 2
       57 LOADK                            R9 K3 ["snapshot"]
       58 GETTABLEKS                       R10 R0 K10 ["unmatched"]
       60 CALL                             R8 2 1
       61 LOADK                            R9 K11 [" failed."]
       62 CONCAT                           R6 R7 R9
       63 CALL                             R5 1 -1
       64 FASTCALL                         TABLE_INSERT ; [+2]
       65 GETIMPORT                        R3 K7 [table.insert]
       67 CALL                             R3 -1 0
       68 GETUPVAL                         R3 0
       69 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
       71 GETTABLEKS                       R4 R0 K12 ["unchecked"]
       73 CALL                             R3 1 1
       74 JUMPIFNOT                        R3 ; [+40]
       75 JUMPIFNOT                        R1 ; [+16]
       76 MOVE                             R4 R2
       77 GETUPVAL                         R5 3
       78 LOADK                            R7 K2 [" › "]
       79 GETUPVAL                         R8 2
       80 LOADK                            R9 K3 ["snapshot"]
       81 GETTABLEKS                       R10 R0 K12 ["unchecked"]
       83 CALL                             R8 2 1
       84 LOADK                            R9 K13 [" removed."]
       85 CONCAT                           R6 R7 R9
       86 CALL                             R5 1 -1
       87 FASTCALL                         TABLE_INSERT ; [+2]
       88 GETIMPORT                        R3 K7 [table.insert]
       90 CALL                             R3 -1 0
       91 JUMP                             ; [+15]
       92 MOVE                             R4 R2
       93 GETUPVAL                         R5 5
       94 LOADK                            R7 K2 [" › "]
       95 GETUPVAL                         R8 2
       96 LOADK                            R9 K3 ["snapshot"]
       97 GETTABLEKS                       R10 R0 K12 ["unchecked"]
       99 CALL                             R8 2 1
      100 LOADK                            R9 K14 [" obsolete."]
      101 CONCAT                           R6 R7 R9
      102 CALL                             R5 1 -1
      103 FASTCALL                         TABLE_INSERT ; [+2]
      104 GETIMPORT                        R3 K7 [table.insert]
      106 CALL                             R3 -1 0
      107 GETUPVAL                         R3 6
      108 GETTABLEKS                       R3 R3 K15 ["forEach"]
      110 GETTABLEKS                       R4 R0 K16 ["uncheckedKeys"]
      112 NEWCLOSURE                       R5 P0
      113 CAPTURE                          VAL R2
      114 CALL                             R3 2 0
      115 GETTABLEKS                       R3 R0 K17 ["fileDeleted"]
      117 JUMPIFNOT                        R3 ; [+8]
      118 MOVE                             R4 R2
      119 GETUPVAL                         R5 3
      120 LOADK                            R6 K18 [" › snapshot file removed."]
      121 CALL                             R5 1 -1
      122 FASTCALL                         TABLE_INSERT ; [+2]
      123 GETIMPORT                        R3 K7 [table.insert]
      125 CALL                             R3 -1 0
      126 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       28 GETIMPORT                        R8 K4 [require]
       30 GETTABLEKS                       R9 R1 K10 ["JestUtil"]
       32 CALL                             R8 1 1
       33 GETTABLEKS                       R8 R8 K11 ["pluralize"]
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
