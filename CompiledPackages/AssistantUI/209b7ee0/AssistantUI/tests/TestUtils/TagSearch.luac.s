PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 JUMPIFEQ                         R0 R2 ; [+5]
        4 GETUPVAL                         R3 0
        5 NAMECALL                         R1 R0 K0 ["IsDescendantOf"]
        7 CALL                             R1 2 1
        8 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R3 1
        1 GETIMPORT                        R4 K1 [game]
        3 JUMPIFEQ                         R0 R4 ; [+6]
        5 GETIMPORT                        R5 K1 [game]
        7 NAMECALL                         R3 R0 K2 ["IsDescendantOf"]
        9 CALL                             R3 2 1
       10 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       12 LOADK                            R4 K3 ["Tag APIs require the instance be in the data model"]
       13 GETIMPORT                        R2 K5 [assert]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 0
       17 GETUPVAL                         R3 1
       18 MOVE                             R5 R1
       19 NAMECALL                         R3 R3 K6 ["GetTagged"]
       21 CALL                             R3 2 1
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R0
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["queryAll"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 LENGTH                           R3 R2
        7 JUMPIFEQKN                       R3 K1 [1] ; [+11]
        9 GETIMPORT                        R3 K3 [error]
       11 LOADK                            R5 K4 ["%* instances found with tag \"%*\""]
       12 LENGTH                           R7 R2
       13 MOVE                             R8 R1
       14 NAMECALL                         R5 R5 K5 ["format"]
       16 CALL                             R5 3 1
       17 MOVE                             R4 R5
       18 CALL                             R3 1 0
       19 GETTABLEN                        R3 R2 1
       20 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["queryAll"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 LENGTH                           R3 R2
        7 LOADN                            R4 1
        8 JUMPIFNOTLT                      R4 R3 ; [+11]
       10 GETIMPORT                        R3 K2 [error]
       12 LOADK                            R5 K3 ["%* instances found with tag \"%*\""]
       13 LENGTH                           R7 R2
       14 MOVE                             R8 R1
       15 NAMECALL                         R5 R5 K4 ["format"]
       17 CALL                             R5 3 1
       18 MOVE                             R4 R5
       19 CALL                             R3 1 0
       20 GETTABLEN                        R3 R2 1
       21 RETURN                           R3 1

PROTO_4:
        0 GETIMPORT                        R5 K1 [game]
        2 NAMECALL                         R3 R0 K2 ["IsDescendantOf"]
        4 CALL                             R3 2 1
        5 FASTCALL2K                       ASSERT R3 K3 ; [+4]
        7 LOADK                            R4 K3 ["Tag APIs require the instance be in the data model"]
        8 GETIMPORT                        R2 K5 [assert]
       10 CALL                             R2 2 0
       11 MOVE                             R2 R0
       12 JUMPIFEQKNIL                     R2 ; [+10]
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R2 K6 ["HasTag"]
       17 CALL                             R3 2 1
       18 JUMPIFNOT                        R3 ; [+1]
       19 RETURN                           R2 1
       20 GETTABLEKS                       R2 R2 K7 ["Parent"]
       22 JUMPBACK                         ; [-11]
       23 LOADNIL                          R3
       24 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CollectionService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R4 K11 ["filterList"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 4 0
       22 DUPCLOSURE                       R4 K12 [PROTO_1]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R4 R3 K13 ["queryAll"]
       27 DUPCLOSURE                       R4 K14 [PROTO_2]
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R4 R3 K15 ["get"]
       31 DUPCLOSURE                       R4 K16 [PROTO_3]
       32 CAPTURE                          VAL R3
       33 SETTABLEKS                       R4 R3 K17 ["query"]
       35 DUPCLOSURE                       R4 K18 [PROTO_4]
       36 SETTABLEKS                       R4 R3 K19 ["firstAncestorWithTag"]
       38 RETURN                           R3 1
