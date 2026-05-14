PROTO_0:
        0 GETIMPORT                        R1 K2 [table.find]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETIMPORT                        R2 K4 [table.remove]
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K2 [table.insert]
        6 CALL                             R2 2 0
        7 DUPTABLE                         R2 K4 [{"Disconnect"}]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K3 ["Disconnect"]
       13 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+12]
        3 SETUPVAL                         R0 0
        4 GETIMPORT                        R1 K2 [table.clone]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 3
        8 FORGPREP                         R1
        9 MOVE                             R6 R5
       10 MOVE                             R7 R0
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 ; [-4]
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 LOADK                            R3 K8 ["mapping"]
       17 NEWTABLE                         R4 0 0
       19 DUPTABLE                         R5 K10 [{"Connect"}]
       20 DUPCLOSURE                       R6 K11 [PROTO_1]
       21 CAPTURE                          VAL R4
       22 SETTABLEKS                       R6 R5 K9 ["Connect"]
       24 SETTABLEKS                       R5 R2 K12 ["Changed"]
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          REF R3
       28 SETTABLEKS                       R5 R2 K13 ["get"]
       30 NEWCLOSURE                       R5 P2
       31 CAPTURE                          REF R3
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R5 R2 K14 ["set"]
       35 CLOSEUPVALS                      R3
       36 RETURN                           R2 1
