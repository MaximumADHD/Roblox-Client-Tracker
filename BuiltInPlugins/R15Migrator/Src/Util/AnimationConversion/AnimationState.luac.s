PROTO_0:
        0 GETTABLEKS                       R6 R0 K0 ["id"]
        2 JUMPIFNOT                        R6 ; [+5]
        3 GETTABLEKS                       R6 R0 K1 ["url"]
        5 JUMPIFNOT                        R6 ; [+2]
        6 GETTABLEKS                       R6 R0 K2 ["_type"]
        8 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       10 LOADK                            R7 K3 ["invalid animation asset info"]
       11 GETIMPORT                        R5 K5 [assert]
       13 CALL                             R5 2 0
       14 FASTCALL1                        TYPE R1 ; [+3]
       15 MOVE                             R8 R1
       16 GETIMPORT                        R7 K7 [type]
       18 CALL                             R7 1 1
       19 JUMPIFEQKS                       R7 K8 ["string"] ; [+2]
       21 LOADB                            R6 0 +1
       22 LOADB                            R6 1
       23 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       25 LOADK                            R7 K9 ["invalid animation name"]
       26 GETIMPORT                        R5 K5 [assert]
       28 CALL                             R5 2 0
       29 FASTCALL1                        TYPE R2 ; [+3]
       30 MOVE                             R8 R2
       31 GETIMPORT                        R7 K7 [type]
       33 CALL                             R7 1 1
       34 JUMPIFEQKS                       R7 K10 ["number"] ; [+2]
       36 LOADB                            R6 0 +1
       37 LOADB                            R6 1
       38 FASTCALL2K                       ASSERT R6 K11 ; [+4]
       40 LOADK                            R7 K11 ["invalid animation index"]
       41 GETIMPORT                        R5 K5 [assert]
       43 CALL                             R5 2 0
       44 DUPTABLE                         R6 K19 [{"animationAssetInfo", "refs", "oldRefs", "name", "index", "status", "converted"}]
       45 SETTABLEKS                       R0 R6 K12 ["animationAssetInfo"]
       47 NEWTABLE                         R7 0 0
       49 SETTABLEKS                       R7 R6 K13 ["refs"]
       51 NEWTABLE                         R7 0 0
       53 SETTABLEKS                       R7 R6 K14 ["oldRefs"]
       55 SETTABLEKS                       R1 R6 K15 ["name"]
       57 SETTABLEKS                       R2 R6 K16 ["index"]
       59 SETTABLEKS                       R3 R6 K17 ["status"]
       61 SETTABLEKS                       R4 R6 K18 ["converted"]
       63 GETUPVAL                         R7 0
       64 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       66 GETIMPORT                        R5 K21 [setmetatable]
       68 CALL                             R5 2 1
       69 RETURN                           R5 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["refs"]
        2 SETTABLEKS                       R1 R0 K1 ["oldRefs"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K0 ["refs"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["Done"]
       11 SETTABLEKS                       R1 R0 K3 ["status"]
       13 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R9 R0 K0 ["refs"]
        6 GETTABLE                         R8 R9 R6
        7 FASTCALL2K                       ASSERT R8 K1 ; [+4]
        9 LOADK                            R9 K1 ["ref not found"]
       10 GETIMPORT                        R7 K3 [assert]
       12 CALL                             R7 2 0
       13 GETTABLEKS                       R7 R0 K4 ["oldRefs"]
       15 GETTABLEKS                       R9 R0 K0 ["refs"]
       17 GETTABLE                         R8 R9 R6
       18 SETTABLE                         R8 R7 R6
       19 GETTABLEKS                       R7 R0 K0 ["refs"]
       21 LOADNIL                          R8
       22 SETTABLE                         R8 R7 R6
       23 FORGLOOP                         R2 2 ; [-20]
       25 GETIMPORT                        R2 K6 [next]
       27 GETTABLEKS                       R3 R0 K0 ["refs"]
       29 CALL                             R2 1 1
       30 JUMPIF                           R2 ; [+5]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K7 ["Done"]
       34 SETTABLEKS                       R2 R0 K8 ["status"]
       36 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R9 R0 K0 ["oldRefs"]
        6 GETTABLE                         R8 R9 R6
        7 FASTCALL2K                       ASSERT R8 K1 ; [+4]
        9 LOADK                            R9 K1 ["ref not found"]
       10 GETIMPORT                        R7 K3 [assert]
       12 CALL                             R7 2 0
       13 GETTABLEKS                       R7 R0 K4 ["refs"]
       15 GETTABLEKS                       R9 R0 K0 ["oldRefs"]
       17 GETTABLE                         R8 R9 R6
       18 SETTABLE                         R8 R7 R6
       19 GETTABLEKS                       R7 R0 K0 ["oldRefs"]
       21 LOADNIL                          R8
       22 SETTABLE                         R8 R7 R6
       23 FORGLOOP                         R2 2 ; [-20]
       25 GETIMPORT                        R2 K6 [next]
       27 GETTABLEKS                       R3 R0 K0 ["oldRefs"]
       29 CALL                             R2 1 1
       30 JUMPIF                           R2 ; [+3]
       31 LOADNIL                          R2
       32 SETTABLEKS                       R2 R0 K7 ["status"]
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETTABLEKS                       R1 R1 K6 ["AnimationConversion"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["constants"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R2 R2 K10 ["AnimationStatus"]
       20 NEWTABLE                         R3 8 0
       22 SETTABLEKS                       R3 R3 K11 ["__index"]
       24 DUPCLOSURE                       R4 K12 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 SETTABLEKS                       R4 R3 K13 ["new"]
       28 DUPCLOSURE                       R4 K14 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R4 R3 K15 ["complete"]
       32 DUPCLOSURE                       R4 K16 [PROTO_2]
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R4 R3 K17 ["removeRefs"]
       36 DUPCLOSURE                       R4 K18 [PROTO_3]
       37 SETTABLEKS                       R4 R3 K19 ["addRefs"]
       39 RETURN                           R3 1
