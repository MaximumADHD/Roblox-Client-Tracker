PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R2 K0 [PROTO_0]
        1 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+10]
        3 GETUPVAL                         R1 0
        4 NEWTABLE                         R3 0 0
        6 GETUPVAL                         R4 1
        7 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        9 GETIMPORT                        R2 K1 [setmetatable]
       11 CALL                             R2 2 1
       12 SETTABLE                         R2 R1 R0
       13 GETUPVAL                         R2 0
       14 GETTABLE                         R1 R2 R0
       15 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetService"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 GETTABLEKS                       R3 R1 K8 ["isCli"]
       18 CALL                             R3 0 1
       19 JUMPIFNOT                        R3 ; [+12]
       20 DUPTABLE                         R3 K10 [{"__index"}]
       21 DUPCLOSURE                       R4 K11 [PROTO_1]
       22 SETTABLEKS                       R4 R3 K9 ["__index"]
       24 NEWTABLE                         R4 0 0
       26 DUPCLOSURE                       R5 K12 [PROTO_2]
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R5 R2 K13 ["GetService"]
       31 RETURN                           R2 1
       32 DUPCLOSURE                       R3 K14 [PROTO_3]
       33 SETTABLEKS                       R3 R2 K13 ["GetService"]
       35 RETURN                           R2 1
