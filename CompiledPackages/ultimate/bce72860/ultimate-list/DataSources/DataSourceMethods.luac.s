PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 SUBK                             R1 R2 K0 [1]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 ADDK                             R1 R2 K0 [1]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 LOADN                            R1 1
        1 JUMPIFLT                         R0 R1 ; [+7]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["array"]
        6 LENGTH                           R1 R2
        7 JUMPIFNOTLT                      R1 R0 ; [+3]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 DUPTABLE                         R1 K4 [{"before", "value", "after"}]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R1 K1 ["before"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K0 ["array"]
       20 GETTABLE                         R2 R3 R0
       21 SETTABLEKS                       R2 R1 K2 ["value"]
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R1 K3 ["after"]
       28 RETURN                           R1 1

PROTO_3:
        0 LOADN                            R4 1
        1 JUMPIFLE                         R4 R1 ; [+2]
        3 LOADB                            R3 0 +1
        4 LOADB                            R3 1
        5 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        7 LOADK                            R4 K0 ["index < 1"]
        8 GETIMPORT                        R2 K2 [assert]
       10 CALL                             R2 2 0
       11 GETTABLEKS                       R2 R0 K3 ["type"]
       13 JUMPIFNOTEQKS                    R2 K4 ["array"] ; [+8]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 MOVE                             R3 R2
       19 MOVE                             R4 R1
       20 CALL                             R3 1 1
       21 RETURN                           R3 1
       22 GETTABLEKS                       R2 R0 K3 ["type"]
       24 JUMPIFNOTEQKS                    R2 K5 ["mutableSource"] ; [+8]
       26 GETTABLEKS                       R2 R0 K6 ["methods"]
       28 GETTABLEKS                       R2 R2 K7 ["get"]
       30 MOVE                             R3 R1
       31 CALL                             R2 1 -1
       32 RETURN                           R2 -1
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R3 R0 K3 ["type"]
       36 CALL                             R2 1 -1
       37 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["array"] ; [+14]
        4 GETIMPORT                        R2 K4 [table.move]
        6 GETTABLEKS                       R3 R0 K1 ["array"]
        8 GETTABLEKS                       R4 R1 K5 ["X"]
       10 GETTABLEKS                       R5 R1 K6 ["Y"]
       12 LOADN                            R6 1
       13 NEWTABLE                         R7 0 0
       15 CALL                             R2 5 -1
       16 RETURN                           R2 -1
       17 GETTABLEKS                       R2 R0 K0 ["type"]
       19 JUMPIFNOTEQKS                    R2 K7 ["mutableSource"] ; [+50]
       21 GETTABLEKS                       R2 R0 K8 ["methods"]
       23 GETTABLEKS                       R2 R2 K9 ["getByRange"]
       25 JUMPIFNOTEQKNIL                  R2 ; [+34]
       27 NEWTABLE                         R2 0 0
       29 GETTABLEKS                       R3 R0 K8 ["methods"]
       31 GETTABLEKS                       R3 R3 K10 ["get"]
       33 GETTABLEKS                       R4 R1 K5 ["X"]
       35 CALL                             R3 1 1
       36 LOADN                            R6 0
       37 GETTABLEKS                       R7 R1 K6 ["Y"]
       39 GETTABLEKS                       R8 R1 K5 ["X"]
       41 SUB                              R4 R7 R8
       42 LOADN                            R5 1
       43 FORNPREP                         R4
       44 JUMPIFEQKNIL                     R3 ; [+14]
       46 GETTABLEKS                       R9 R3 K11 ["value"]
       48 FASTCALL2                        TABLE_INSERT R2 R9 ; [+4]
       50 MOVE                             R8 R2
       51 GETIMPORT                        R7 K13 [table.insert]
       53 CALL                             R7 2 0
       54 GETTABLEKS                       R7 R3 K14 ["after"]
       56 CALL                             R7 0 1
       57 MOVE                             R3 R7
       58 FORNLOOP                         R4
       59 RETURN                           R2 1
       60 GETTABLEKS                       R2 R0 K8 ["methods"]
       62 GETTABLEKS                       R2 R2 K9 ["getByRange"]
       64 GETTABLEKS                       R3 R1 K5 ["X"]
       66 GETTABLEKS                       R4 R1 K6 ["Y"]
       68 CALL                             R2 2 -1
       69 RETURN                           R2 -1
       70 GETUPVAL                         R2 0
       71 GETTABLEKS                       R3 R0 K0 ["type"]
       73 CALL                             R2 1 -1
       74 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["array"] ; [+8]
        4 GETTABLEKS                       R2 R0 K1 ["array"]
        6 GETTABLEKS                       R4 R0 K1 ["array"]
        8 LENGTH                           R3 R4
        9 GETTABLE                         R1 R2 R3
       10 RETURN                           R1 1
       11 GETTABLEKS                       R1 R0 K0 ["type"]
       13 JUMPIFNOTEQKS                    R1 K2 ["mutableSource"] ; [+28]
       15 GETTABLEKS                       R1 R0 K3 ["methods"]
       17 GETTABLEKS                       R1 R1 K4 ["back"]
       19 JUMPIFNOTEQKNIL                  R1 ; [+16]
       21 GETTABLEKS                       R1 R0 K3 ["methods"]
       23 GETTABLEKS                       R1 R1 K5 ["get"]
       25 GETTABLEKS                       R2 R0 K3 ["methods"]
       27 GETTABLEKS                       R2 R2 K6 ["length"]
       29 CALL                             R2 0 -1
       30 CALL                             R1 -1 1
       31 MOVE                             R2 R1
       32 JUMPIFNOT                        R2 ; [+2]
       33 GETTABLEKS                       R2 R1 K7 ["value"]
       35 RETURN                           R2 1
       36 GETTABLEKS                       R1 R0 K3 ["methods"]
       38 GETTABLEKS                       R1 R1 K4 ["back"]
       40 CALL                             R1 0 -1
       41 RETURN                           R1 -1
       42 GETUPVAL                         R1 0
       43 GETTABLEKS                       R2 R0 K0 ["type"]
       45 CALL                             R1 1 -1
       46 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["array"] ; [+5]
        4 GETTABLEKS                       R2 R0 K1 ["array"]
        6 LENGTH                           R1 R2
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K0 ["type"]
       10 JUMPIFNOTEQKS                    R1 K2 ["mutableSource"] ; [+7]
       12 GETTABLEKS                       R1 R0 K3 ["methods"]
       14 GETTABLEKS                       R1 R1 K4 ["length"]
       16 CALL                             R1 0 -1
       17 RETURN                           R1 -1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R2 R0 K0 ["type"]
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 GETTABLEKS                       R3 R1 K0 ["type"]
        4 JUMPIFEQ                         R2 R3 ; [+3]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K0 ["type"]
       10 JUMPIFNOTEQKS                    R2 K1 ["array"] ; [+22]
       12 GETTABLEKS                       R4 R1 K0 ["type"]
       14 JUMPIFEQKS                       R4 K1 ["array"] ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       20 LOADK                            R4 K2 ["Luau"]
       21 GETIMPORT                        R2 K4 [assert]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R3 R0 K1 ["array"]
       26 GETTABLEKS                       R4 R1 K1 ["array"]
       28 JUMPIFEQ                         R3 R4 ; [+2]
       30 LOADB                            R2 0 +1
       31 LOADB                            R2 1
       32 RETURN                           R2 1
       33 GETTABLEKS                       R2 R0 K0 ["type"]
       35 JUMPIFNOTEQKS                    R2 K5 ["mutableSource"] ; [+22]
       37 GETTABLEKS                       R4 R1 K0 ["type"]
       39 JUMPIFEQKS                       R4 K5 ["mutableSource"] ; [+2]
       41 LOADB                            R3 0 +1
       42 LOADB                            R3 1
       43 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       45 LOADK                            R4 K2 ["Luau"]
       46 GETIMPORT                        R2 K4 [assert]
       48 CALL                             R2 2 0
       49 GETTABLEKS                       R3 R0 K6 ["methods"]
       51 GETTABLEKS                       R4 R1 K6 ["methods"]
       53 JUMPIFEQ                         R3 R4 ; [+2]
       55 LOADB                            R2 0 +1
       56 LOADB                            R2 1
       57 RETURN                           R2 1
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R3 R0 K0 ["type"]
       61 CALL                             R2 1 -1
       62 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ultimate-list"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["exhaustiveMatch"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 8 0
       23 DUPCLOSURE                       R4 K9 [PROTO_3]
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R4 R3 K10 ["get"]
       27 DUPCLOSURE                       R4 K11 [PROTO_4]
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R4 R3 K12 ["getByRange"]
       31 DUPCLOSURE                       R4 K13 [PROTO_5]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R4 R3 K14 ["back"]
       35 DUPCLOSURE                       R4 K15 [PROTO_6]
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R4 R3 K16 ["length"]
       39 DUPCLOSURE                       R4 K17 [PROTO_7]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R4 R3 K18 ["equals"]
       43 RETURN                           R3 1
