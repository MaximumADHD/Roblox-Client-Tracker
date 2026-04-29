PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R6 R5
        6 MOVE                             R7 R0
        7 CALL                             R6 1 0
        8 FORGLOOP                         R1 2 ; [-4]
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETIMPORT                        R1 K4 [table.remove]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Providers"]
       11 GETTABLEKS                       R3 R4 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["Tokens"]
       15 CALL                             R1 1 1
       16 LOADNIL                          R2
       17 NEWTABLE                         R3 0 0
       19 DUPTABLE                         R4 K12 [{"getTokenOverrides", "setTokenOverrides", "subscribe"}]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          REF R2
       22 SETTABLEKS                       R5 R4 K9 ["getTokenOverrides"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          REF R2
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R5 R4 K10 ["setTokenOverrides"]
       29 DUPCLOSURE                       R5 K13 [PROTO_3]
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R5 R4 K11 ["subscribe"]
       33 DUPCLOSURE                       R5 K14 [PROTO_4]
       34 CAPTURE                          VAL R4
       35 CLOSEUPVALS                      R2
       36 RETURN                           R5 1
