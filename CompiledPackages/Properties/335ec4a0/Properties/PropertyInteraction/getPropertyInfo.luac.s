PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fromInstanceRefType"]
        3 LOADB                            R2 0
        4 LOADK                            R3 K1 ["Instance"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fromEnumType"]
        3 LOADB                            R2 0
        4 LOADK                            R3 K1 ["Static"]
        5 GETTABLEKS                       R5 R0 K2 ["EnumType"]
        7 FASTCALL1                        TOSTRING R5 ; [+2]
        8 GETIMPORT                        R4 K4 [tostring]
       10 CALL                             R4 1 1
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["metaType"]
        2 JUMPIFNOTEQKS                    R3 K1 ["Attribute"] ; [+32]
        4 JUMPIF                           R1 ; [+4]
        5 GETIMPORT                        R3 K3 [error]
        7 LOADK                            R4 K4 ["must provide instance to get attribute info"]
        8 CALL                             R3 1 0
        9 GETTABLEKS                       R5 R0 K5 ["name"]
       11 NAMECALL                         R3 R1 K6 ["GetAttribute"]
       13 CALL                             R3 2 1
       14 FASTCALL1                        TYPEOF R3 ; [+3]
       15 MOVE                             R5 R3
       16 GETIMPORT                        R4 K8 [typeof]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R6 0
       20 GETTABLE                         R5 R6 R4
       21 JUMPIFEQKNIL                     R5 ; [+6]
       23 GETUPVAL                         R7 0
       24 GETTABLE                         R6 R7 R4
       25 MOVE                             R7 R3
       26 CALL                             R6 1 -1
       27 RETURN                           R6 -1
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K9 ["fromType"]
       31 MOVE                             R7 R4
       32 LOADB                            R8 0
       33 CALL                             R6 2 -1
       34 RETURN                           R6 -1
       35 GETTABLEKS                       R3 R0 K0 ["metaType"]
       37 JUMPIFNOTEQKS                    R3 K10 ["Tag"] ; [+8]
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R3 R3 K9 ["fromType"]
       42 LOADK                            R4 K10 ["Tag"]
       43 LOADB                            R5 0
       44 CALL                             R3 2 -1
       45 RETURN                           R3 -1
       46 GETTABLEKS                       R3 R0 K11 ["className"]
       48 GETUPVAL                         R4 2
       49 MOVE                             R5 R3
       50 MOVE                             R6 R2
       51 CALL                             R4 2 3
       52 FORGPREP                         R4
       53 GETUPVAL                         R9 3
       54 MOVE                             R10 R0
       55 MOVE                             R11 R7
       56 CALL                             R9 2 1
       57 JUMPIFNOT                        R9 ; [+1]
       58 RETURN                           R8 1
       59 FORGLOOP                         R4 2 ; [-7]
       61 GETIMPORT                        R4 K3 [error]
       63 LOADK                            R5 K12 ["Instance did not have property!"]
       64 CALL                             R4 1 0
       65 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["PropertyInteraction"]
       16 GETTABLEKS                       R3 R3 K8 ["PropertyInfo"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["PropertyTypes"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K7 ["PropertyInteraction"]
       28 GETTABLEKS                       R5 R5 K10 ["getReadablePropertiesForClass"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K7 ["PropertyInteraction"]
       35 GETTABLEKS                       R6 R6 K11 ["samePropertyId"]
       37 CALL                             R5 1 1
       38 DUPTABLE                         R6 K14 [{"Instance", "EnumItem"}]
       39 DUPCLOSURE                       R7 K15 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R7 R6 K12 ["Instance"]
       43 DUPCLOSURE                       R7 K16 [PROTO_1]
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R7 R6 K13 ["EnumItem"]
       47 DUPCLOSURE                       R7 K17 [PROTO_2]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R5
       52 RETURN                           R7 1
