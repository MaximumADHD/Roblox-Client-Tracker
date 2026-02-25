PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fromInstanceRefType"]
        3 LOADB                            R2 0
        4 LOADK                            R3 K1 ["Instance"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fromEnumType"]
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
        2 JUMPIFNOTEQKS                    R3 K1 ["Attribute"] ; [+30]
        4 JUMPIF                           R1 ; [+4]
        5 GETIMPORT                        R3 K3 [error]
        7 LOADK                            R4 K4 ["must provide instance to get attribute info"]
        8 CALL                             R3 1 0
        9 GETTABLEKS                       R6 R0 K5 ["name"]
       11 NAMECALL                         R4 R1 K6 ["GetAttribute"]
       13 CALL                             R4 2 -1
       14 FASTCALL                         TYPEOF ; [+2]
       15 GETIMPORT                        R3 K8 [typeof]
       17 CALL                             R3 -1 1
       18 GETUPVAL                         R5 0
       19 GETTABLE                         R4 R5 R3
       20 JUMPIFEQKNIL                     R4 ; [+5]
       22 GETUPVAL                         R6 0
       23 GETTABLE                         R5 R6 R3
       24 CALL                             R5 0 -1
       25 RETURN                           R5 -1
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K9 ["fromType"]
       29 MOVE                             R6 R3
       30 LOADB                            R7 0
       31 CALL                             R5 2 -1
       32 RETURN                           R5 -1
       33 GETTABLEKS                       R3 R0 K0 ["metaType"]
       35 JUMPIFNOTEQKS                    R3 K10 ["Tag"] ; [+8]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R3 R4 K9 ["fromType"]
       40 LOADK                            R4 K10 ["Tag"]
       41 LOADB                            R5 0
       42 CALL                             R3 2 -1
       43 RETURN                           R3 -1
       44 GETTABLEKS                       R3 R0 K11 ["className"]
       46 GETUPVAL                         R4 2
       47 MOVE                             R5 R3
       48 MOVE                             R6 R2
       49 CALL                             R4 2 3
       50 FORGPREP                         R4
       51 GETUPVAL                         R9 3
       52 MOVE                             R10 R0
       53 MOVE                             R11 R7
       54 CALL                             R9 2 1
       55 JUMPIFNOT                        R9 ; [+1]
       56 RETURN                           R8 1
       57 FORGLOOP                         R4 2 ; [-7]
       59 GETIMPORT                        R4 K3 [error]
       61 LOADK                            R5 K12 ["Instance did not have property!"]
       62 CALL                             R4 1 0
       63 RETURN                           R0 0

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
       14 GETTABLEKS                       R5 R0 K7 ["Util"]
       16 GETTABLEKS                       R4 R5 K8 ["PropertyInteraction"]
       18 GETTABLEKS                       R3 R4 K9 ["PropertyInfo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["PropertyTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K7 ["Util"]
       30 GETTABLEKS                       R5 R6 K11 ["getReadablePropertiesForClass"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K7 ["Util"]
       37 GETTABLEKS                       R6 R7 K12 ["samePropertyId"]
       39 CALL                             R5 1 1
       40 DUPTABLE                         R6 K15 [{"Instance", "EnumItem"}]
       41 DUPCLOSURE                       R7 K16 [PROTO_0]
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R7 R6 K13 ["Instance"]
       45 DUPCLOSURE                       R7 K17 [PROTO_1]
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R7 R6 K14 ["EnumItem"]
       49 DUPCLOSURE                       R7 K18 [PROTO_2]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 RETURN                           R7 1
