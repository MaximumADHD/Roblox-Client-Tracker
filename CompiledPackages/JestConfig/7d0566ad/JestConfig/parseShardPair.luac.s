PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["^\\d+$"]
        2 CALL                             R1 1 1
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["test"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 FASTCALL2K                       TONUMBER R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 [10]
        4 GETIMPORT                        R1 K2 [tonumber]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["isNaN"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 -1
        8 CALL                             R2 -1 1
        9 NOT                              R1 R2
       10 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["filter"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["map"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["filter"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["split"]
       12 MOVE                             R5 R0
       13 LOADK                            R6 K3 ["/"]
       14 CALL                             R4 2 1
       15 DUPCLOSURE                       R5 K4 [PROTO_0]
       16 CAPTURE                          UPVAL U2
       17 CALL                             R3 2 1
       18 DUPCLOSURE                       R4 K5 [PROTO_1]
       19 CALL                             R2 2 1
       20 DUPCLOSURE                       R3 K6 [PROTO_2]
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CALL                             R1 2 1
       24 LOADN                            R4 1
       25 LOADN                            R5 2
       26 FASTCALL3                        TABLE_UNPACK R1 R4 R5
       28 MOVE                             R3 R1
       29 GETIMPORT                        R2 K9 [table.unpack]
       31 CALL                             R2 3 2
       32 LENGTH                           R4 R1
       33 JUMPIFEQKN                       R4 K10 [2] ; [+9]
       35 GETIMPORT                        R4 K12 [error]
       37 GETUPVAL                         R5 5
       38 GETTABLEKS                       R5 R5 K13 ["new"]
       40 LOADK                            R6 K14 ["The shard option requires a string in the format of <n>/<m>."]
       41 CALL                             R5 1 -1
       42 CALL                             R4 -1 0
       43 JUMPIFEQKN                       R2 K15 [0] ; [+3]
       45 JUMPIFNOTEQKN                    R3 K15 [0] ; [+9]
       47 GETIMPORT                        R4 K12 [error]
       49 GETUPVAL                         R5 5
       50 GETTABLEKS                       R5 R5 K13 ["new"]
       52 LOADK                            R6 K16 ["The shard option requires 1-based values, received 0 or lower in the pair."]
       53 CALL                             R5 1 -1
       54 CALL                             R4 -1 0
       55 JUMPIFNOTLT                      R3 R2 ; [+9]
       57 GETIMPORT                        R4 K12 [error]
       59 GETUPVAL                         R5 5
       60 GETTABLEKS                       R5 R5 K13 ["new"]
       62 LOADK                            R6 K17 ["The shard option <n>/<m> requires <n> to be lower or equal than <m>."]
       63 CALL                             R5 1 -1
       64 CALL                             R4 -1 0
       65 DUPTABLE                         R4 K20 [{"shardCount", "shardIndex"}]
       66 SETTABLEKS                       R3 R4 K18 ["shardCount"]
       68 SETTABLEKS                       R2 R4 K19 ["shardIndex"]
       70 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       16 GETTABLEKS                       R4 R1 K8 ["Number"]
       18 GETTABLEKS                       R5 R1 K9 ["Error"]
       20 GETTABLEKS                       R6 R1 K10 ["String"]
       22 GETIMPORT                        R7 K4 [require]
       24 GETTABLEKS                       R8 R0 K11 ["RegExp"]
       26 CALL                             R7 1 1
       27 NEWTABLE                         R8 1 0
       29 DUPCLOSURE                       R9 K12 [PROTO_3]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R6
       32 CAPTURE                          VAL R7
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R9 R8 K13 ["parseShardPair"]
       38 RETURN                           R8 1
