PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+4]
        3 NEWTABLE                         R2 0 0
        5 GETUPVAL                         R3 0
        6 SETTABLE                         R2 R3 R0
        7 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
        9 MOVE                             R4 R2
       10 MOVE                             R5 R1
       11 GETIMPORT                        R3 K2 [table.insert]
       13 CALL                             R3 2 0
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          REF R2
       16 CAPTURE                          VAL R1
       17 CLOSEUPVALS                      R2
       18 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["type"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+11]
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 MOVE                             R7 R6
       10 GETTABLEKS                       R8 R0 K1 ["contentId"]
       12 MOVE                             R9 R0
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-6]
       16 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 0 0
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          REF R2
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          REF R2
       18 NEWCLOSURE                       R5 P2
       19 CAPTURE                          REF R2
       20 NEWCLOSURE                       R6 P3
       21 CAPTURE                          REF R2
       22 DUPTABLE                         R7 K11 [{"registerHydrator", "getHydrators", "hydrate", "clear"}]
       23 SETTABLEKS                       R3 R7 K7 ["registerHydrator"]
       25 SETTABLEKS                       R4 R7 K8 ["getHydrators"]
       27 SETTABLEKS                       R5 R7 K9 ["hydrate"]
       29 SETTABLEKS                       R6 R7 K10 ["clear"]
       31 CLOSEUPVALS                      R2
       32 RETURN                           R7 1
