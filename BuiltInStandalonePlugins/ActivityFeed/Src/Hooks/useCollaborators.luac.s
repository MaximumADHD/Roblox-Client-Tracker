PROTO_0:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetCollaboratorsList"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pcall]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          REF R1
        6 CAPTURE                          VAL R0
        7 CALL                             R2 1 2
        8 JUMPIF                           R2 ; [0]
        9 NEWTABLE                         R4 0 0
       11 GETIMPORT                        R5 K3 [pairs]
       13 MOVE                             R6 R1
       14 CALL                             R5 1 3
       15 FORGPREP_NEXT                    R5
       16 GETTABLEKS                       R12 R9 K4 ["UserId"]
       18 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       20 MOVE                             R11 R4
       21 GETIMPORT                        R10 K7 [table.insert]
       23 CALL                             R10 2 0
       24 FORGLOOP                         R5 2 ; [-9]
       26 CLOSEUPVALS                      R1
       27 RETURN                           R4 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CollaboratorsService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["CollaboratorInstanceCreatedSignal"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 NAMECALL                         R0 R0 K1 ["Connect"]
       14 CALL                             R0 2 1
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K2 ["CollaboratorInstanceDestroyedSignal"]
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 NAMECALL                         R1 R1 K1 ["Connect"]
       24 CALL                             R1 2 1
       25 NEWCLOSURE                       R2 P2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useMemo"]
        3 DUPCLOSURE                       R1 K1 [PROTO_2]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R0 2 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["useState"]
       10 NEWTABLE                         R2 0 0
       12 CALL                             R1 1 2
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R5 0 0
       22 CALL                             R3 2 0
       23 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_1]
       17 DUPCLOSURE                       R3 K8 [PROTO_7]
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
