PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["instanceRefType"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["fromInstanceRefType"]
        6 GETTABLEKS                       R2 R0 K2 ["readonly"]
        8 GETTABLEKS                       R3 R0 K0 ["instanceRefType"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 GETTABLEKS                       R1 R0 K3 ["enumName"]
       14 JUMPIFNOT                        R1 ; [+17]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K4 ["fromEnumType"]
       18 GETTABLEKS                       R2 R0 K2 ["readonly"]
       20 LOADK                            R3 K5 ["Static"]
       21 GETIMPORT                        R6 K7 [Enum]
       23 GETTABLEKS                       R7 R0 K3 ["enumName"]
       25 GETTABLE                         R5 R6 R7
       26 FASTCALL1                        TOSTRING R5 ; [+2]
       27 GETIMPORT                        R4 K9 [tostring]
       29 CALL                             R4 1 1
       30 CALL                             R1 3 -1
       31 RETURN                           R1 -1
       32 GETTABLEKS                       R1 R0 K10 ["assetType"]
       34 JUMPIFNOT                        R1 ; [+9]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R1 R2 K11 ["fromContentType"]
       38 GETTABLEKS                       R2 R0 K2 ["readonly"]
       40 GETTABLEKS                       R3 R0 K10 ["assetType"]
       42 CALL                             R1 2 -1
       43 RETURN                           R1 -1
       44 GETTABLEKS                       R1 R0 K12 ["type"]
       46 JUMPIFNOTEQKS                    R1 K13 ["DynamicEnum"] ; [+11]
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R1 R2 K4 ["fromEnumType"]
       51 GETTABLEKS                       R2 R0 K2 ["readonly"]
       53 LOADK                            R3 K14 ["Dynamic"]
       54 GETTABLEKS                       R4 R0 K15 ["name"]
       56 CALL                             R1 3 -1
       57 RETURN                           R1 -1
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R1 R2 K16 ["fromType"]
       61 GETTABLEKS                       R2 R0 K12 ["type"]
       63 GETTABLEKS                       R3 R0 K2 ["readonly"]
       65 CALL                             R1 2 -1
       66 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["className"]
        3 GETTABLE                         R2 R3 R4
        4 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["info"]
        2 MOVE                             R3 R1
        3 RETURN                           R2 2

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["GetClassHierarchy"]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R2
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 LOADB                            R9 1
       11 SETTABLE                         R9 R3 R8
       12 FORGLOOP                         R4 2 ; [-3]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K1 ["Dictionary"]
       17 GETTABLEKS                       R4 R5 K2 ["map"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K1 ["Dictionary"]
       22 GETTABLEKS                       R5 R6 K3 ["filter"]
       24 GETUPVAL                         R6 1
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R3
       27 CALL                             R5 2 1
       28 DUPCLOSURE                       R6 K4 [PROTO_2]
       29 CALL                             R4 2 -1
       30 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+7]
        6 GETIMPORT                        R3 K1 [error]
        8 LOADK                            R5 K2 ["Reflection interface is required to get readable properties for class: "]
        9 MOVE                             R6 R0
       10 CONCAT                           R4 R5 R6
       11 CALL                             R3 1 0
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 CALL                             R3 2 1
       16 GETTABLEKS                       R4 R1 K3 ["ListProperties"]
       18 MOVE                             R5 R0
       19 CALL                             R4 1 1
       20 JUMPIFNOT                        R4 ; [+19]
       21 MOVE                             R5 R4
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETUPVAL                         R10 2
       26 MOVE                             R11 R9
       27 CALL                             R10 1 1
       28 JUMPIFNOT                        R10 ; [+8]
       29 GETUPVAL                         R11 3
       30 GETTABLEKS                       R12 R9 K4 ["name"]
       32 GETTABLEKS                       R13 R9 K5 ["owner"]
       34 LOADK                            R14 K6 ["Property"]
       35 CALL                             R11 3 1
       36 SETTABLE                         R10 R3 R11
       37 FORGLOOP                         R5 2 ; [-13]
       39 JUMP                             ; [+6]
       40 GETIMPORT                        R5 K8 [warn]
       42 LOADK                            R7 K9 ["Missing info for type "]
       43 MOVE                             R8 R0
       44 CONCAT                           R6 R7 R8
       45 CALL                             R5 1 0
       46 GETUPVAL                         R5 0
       47 SETTABLE                         R3 R5 R0
       48 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R7 R0 K8 ["Util"]
       18 GETTABLEKS                       R6 R7 K9 ["PropertyInteraction"]
       20 GETTABLEKS                       R5 R6 K10 ["PropertyId"]
       22 GETTABLEKS                       R4 R5 K11 ["fromClass"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R7 R0 K8 ["Util"]
       29 GETTABLEKS                       R6 R7 K9 ["PropertyInteraction"]
       31 GETTABLEKS                       R5 R6 K12 ["PropertyInfo"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K13 ["PropertyTypes"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K14 ["RpcTypes"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R10 R0 K8 ["Util"]
       48 GETTABLEKS                       R9 R10 K9 ["PropertyInteraction"]
       50 GETTABLEKS                       R8 R9 K15 ["VirtualPropertyDefinitions"]
       52 CALL                             R7 1 1
       53 NEWTABLE                         R8 0 0
       55 DUPCLOSURE                       R9 K16 [PROTO_0]
       56 CAPTURE                          VAL R4
       57 DUPCLOSURE                       R10 K17 [PROTO_3]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R7
       60 DUPCLOSURE                       R11 K18 [PROTO_4]
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R3
       65 RETURN                           R11 1
