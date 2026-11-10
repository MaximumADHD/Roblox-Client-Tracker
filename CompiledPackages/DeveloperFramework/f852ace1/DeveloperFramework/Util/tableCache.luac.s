PROTO_0:
        0 LOADK                            R1 K0 ["%s(%s)"]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R4 R0 K1 ["name"]
        4 NAMECALL                         R1 R1 K2 ["format"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 LOADK                            R4 K3 ["%s must be created using a string name!"]
       10 GETUPVAL                         R6 0
       11 NAMECALL                         R4 R4 K4 ["format"]
       13 CALL                             R4 2 -1
       14 FASTCALL                         ASSERT ; [+2]
       15 GETIMPORT                        R2 K6 [assert]
       17 CALL                             R2 -1 0
       18 GETUPVAL                         R3 1
       19 FASTCALL2                        RAWGET R3 R1 ; [+4]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R2 K8 [rawget]
       24 CALL                             R2 2 1
       25 JUMPIFNOT                        R2 ; [+8]
       26 GETUPVAL                         R3 1
       27 FASTCALL2                        RAWGET R3 R1 ; [+4]
       29 MOVE                             R4 R1
       30 GETIMPORT                        R2 K8 [rawget]
       32 CALL                             R2 2 1
       33 RETURN                           R2 1
       34 DUPTABLE                         R3 K10 [{"name"}]
       35 SETTABLEKS                       R1 R3 K9 ["name"]
       37 GETUPVAL                         R4 1
       38 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       40 GETIMPORT                        R2 K12 [setmetatable]
       42 CALL                             R2 2 1
       43 GETUPVAL                         R3 1
       44 SETTABLE                         R2 R3 R1
       45 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R1 2 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R2 R1 K0 ["__tostring"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 SETTABLEKS                       R2 R1 K1 ["add"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
