PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.find]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETIMPORT                        R2 K4 [table.remove]
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 MOVE                             R6 R0
        6 MOVE                             R7 R5
        7 CALL                             R6 1 0
        8 FORGLOOP                         R1 2 [inext] ; [-4]
       10 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["sendToolListChanged"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 DUPCLOSURE                       R0 K0 [PROTO_3]
        1 GETIMPORT                        R1 K2 [ipairs]
        3 GETUPVAL                         R2 0
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 MOVE                             R6 R0
        7 MOVE                             R7 R5
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 [inext] ; [-4]
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [table.find]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETIMPORT                        R2 K4 [table.remove]
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 GETTABLEKS                       R1 R2 K1 ["onProtocolClose"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 NAMECALL                         R1 R1 K2 ["Connect"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 0
       11 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       13 MOVE                             R3 R0
       14 GETIMPORT                        R1 K5 [table.insert]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Server"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 0 0
       14 NEWTABLE                         R3 4 0
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          REF R2
       18 SETTABLEKS                       R4 R3 K7 ["clear"]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          REF R2
       22 NEWCLOSURE                       R5 P2
       23 CAPTURE                          REF R2
       24 NEWCLOSURE                       R6 P3
       25 CAPTURE                          REF R2
       26 SETTABLEKS                       R6 R3 K8 ["toolsChanged"]
       28 NEWCLOSURE                       R6 P4
       29 CAPTURE                          REF R2
       30 SETTABLEKS                       R6 R3 K9 ["registerServer"]
       32 CLOSEUPVALS                      R2
       33 RETURN                           R3 1
