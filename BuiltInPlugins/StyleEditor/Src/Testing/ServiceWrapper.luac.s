PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 RETURN                           R1 1
        6 DUPTABLE                         R1 K1 [{"_instance"}]
        7 GETIMPORT                        R3 K3 [game]
        9 MOVE                             R5 R0
       10 NAMECALL                         R3 R3 K4 ["GetService"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+7]
       14 GETIMPORT                        R2 K3 [game]
       16 MOVE                             R4 R0
       17 NAMECALL                         R2 R2 K4 ["GetService"]
       19 CALL                             R2 2 1
       20 JUMP                             ; [+4]
       21 GETIMPORT                        R2 K7 [Instance.new]
       23 LOADK                            R3 K8 ["Folder"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K0 ["_instance"]
       27 GETUPVAL                         R4 1
       28 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       30 MOVE                             R3 R1
       31 GETIMPORT                        R2 K10 [setmetatable]
       33 CALL                             R2 2 1
       34 GETUPVAL                         R3 0
       35 SETTABLE                         R2 R3 R0
       36 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_instance"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 NEWTABLE                         R1 0 0
        7 DUPCLOSURE                       R2 K1 [PROTO_0]
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R0 K2 ["new"]
       12 DUPCLOSURE                       R2 K3 [PROTO_1]
       13 SETTABLEKS                       R2 R0 K4 ["getInstance"]
       15 RETURN                           R0 1
