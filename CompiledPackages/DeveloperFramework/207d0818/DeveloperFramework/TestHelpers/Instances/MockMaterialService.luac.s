PROTO_0:
        0 LOADK                            R3 K0 ["MaterialVariant"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+34]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["_materialVariants"]
        8 GETTABLEKS                       R3 R0 K3 ["Name"]
       10 GETTABLE                         R1 R2 R3
       11 JUMPIFNOT                        R1 ; [+10]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["_materialVariants"]
       15 GETTABLEKS                       R3 R0 K3 ["Name"]
       17 GETTABLE                         R1 R2 R3
       18 GETTABLEKS                       R2 R0 K4 ["BaseMaterial"]
       20 SETTABLE                         R0 R1 R2
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K2 ["_materialVariants"]
       25 GETTABLEKS                       R2 R0 K3 ["Name"]
       27 NEWTABLE                         R3 0 0
       29 SETTABLE                         R3 R1 R2
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K2 ["_materialVariants"]
       33 GETTABLEKS                       R3 R0 K3 ["Name"]
       35 GETTABLE                         R1 R2 R3
       36 GETTABLEKS                       R2 R0 K4 ["BaseMaterial"]
       38 SETTABLE                         R0 R1 R2
       39 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R3 K0 ["MaterialVariant"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+17]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["_materialVariants"]
        8 GETTABLEKS                       R3 R0 K3 ["Name"]
       10 GETTABLE                         R1 R2 R3
       11 JUMPIFNOT                        R1 ; [+10]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["_materialVariants"]
       15 GETTABLEKS                       R3 R0 K3 ["Name"]
       17 GETTABLE                         R1 R2 R3
       18 GETTABLEKS                       R2 R0 K4 ["BaseMaterial"]
       20 LOADNIL                          R3
       21 SETTABLE                         R3 R1 R2
       22 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["getDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["MaterialVariant"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+11]
       11 GETTABLEKS                       R7 R6 K3 ["Name"]
       13 NEWTABLE                         R8 0 0
       15 SETTABLE                         R8 R1 R7
       16 GETTABLEKS                       R8 R6 K3 ["Name"]
       18 GETTABLE                         R7 R1 R8
       19 GETTABLEKS                       R8 R6 K4 ["BaseMaterial"]
       21 SETTABLE                         R6 R7 R8
       22 FORGLOOP                         R2 2 ; [-17]
       24 DUPTABLE                         R3 K12 [{["_materialOverrideChangedSignals"], ["_materialOverrides"], ["_materialVariants"], ["OverrideStatusChanged"], ["_serviceInstance"], ["Use2022Materials"] = False}]
       25 NEWTABLE                         R4 0 0
       27 SETTABLEKS                       R4 R3 K5 ["_materialOverrideChangedSignals"]
       29 NEWTABLE                         R4 0 0
       31 SETTABLEKS                       R4 R3 K6 ["_materialOverrides"]
       33 NEWTABLE                         R4 0 0
       35 SETTABLEKS                       R4 R3 K7 ["_materialVariants"]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K13 ["new"]
       40 CALL                             R4 0 1
       41 SETTABLEKS                       R4 R3 K8 ["OverrideStatusChanged"]
       43 SETTABLEKS                       R0 R3 K9 ["_serviceInstance"]
       45 GETUPVAL                         R4 1
       46 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       48 GETIMPORT                        R2 K15 [setmetatable]
       50 CALL                             R2 2 1
       51 GETTABLEKS                       R3 R0 K16 ["DescendantAdded"]
       53 NEWCLOSURE                       R5 P0
       54 CAPTURE                          VAL R2
       55 NAMECALL                         R3 R3 K17 ["Connect"]
       57 CALL                             R3 2 1
       58 SETTABLEKS                       R3 R2 K18 ["_descendantAddedConnection"]
       60 GETTABLEKS                       R3 R0 K19 ["DescendantRemoving"]
       62 NEWCLOSURE                       R5 P1
       63 CAPTURE                          VAL R2
       64 NAMECALL                         R3 R3 K17 ["Connect"]
       66 CALL                             R3 2 1
       67 SETTABLEKS                       R3 R2 K20 ["_descendantRemovingConnection"]
       69 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_descendantAddedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["_descendantRemovingConnection"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_materialOverrideChangedSignals"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+7]
        4 GETTABLEKS                       R2 R0 K0 ["_materialOverrideChangedSignals"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["new"]
        9 CALL                             R3 0 1
       10 SETTABLE                         R3 R2 R1
       11 GETTABLEKS                       R3 R0 K0 ["_materialOverrideChangedSignals"]
       13 GETTABLE                         R2 R3 R1
       14 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["_materialVariants"]
        2 GETTABLE                         R3 R4 R2
        3 JUMPIFNOT                        R3 ; [+5]
        4 GETTABLEKS                       R5 R0 K0 ["_materialVariants"]
        6 GETTABLE                         R4 R5 R2
        7 GETTABLE                         R3 R4 R1
        8 RETURN                           R3 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

PROTO_6:
        0 GETIMPORT                        R2 K3 [Enum.PropertyStatus.Ok]
        2 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R4 R0 K1 ["_materialOverrides"]
        2 GETTABLE                         R3 R4 R1
        3 ORK                              R2 R3 K0 [""]
        4 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R4 R0 K0 ["_materialOverrides"]
        2 GETTABLE                         R3 R4 R1
        3 GETTABLEKS                       R4 R0 K0 ["_materialOverrides"]
        5 SETTABLE                         R2 R4 R1
        6 JUMPIFEQ                         R3 R2 ; [+14]
        8 GETTABLEKS                       R4 R0 K0 ["_materialOverrides"]
       10 SETTABLE                         R2 R4 R1
       11 GETTABLEKS                       R5 R0 K1 ["_materialOverrideChangedSignals"]
       13 GETTABLE                         R4 R5 R1
       14 JUMPIFNOT                        R4 ; [+6]
       15 GETTABLEKS                       R5 R0 K1 ["_materialOverrideChangedSignals"]
       17 GETTABLE                         R4 R5 R1
       18 NAMECALL                         R4 R4 K2 ["Fire"]
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TestHelpers"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Signal"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 8 0
       18 SETTABLEKS                       R2 R2 K9 ["__index"]
       20 DUPCLOSURE                       R3 K10 [PROTO_2]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R3 R2 K11 ["new"]
       25 DUPCLOSURE                       R3 K12 [PROTO_3]
       26 SETTABLEKS                       R3 R2 K13 ["Destroy"]
       28 DUPCLOSURE                       R3 K14 [PROTO_4]
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R3 R2 K15 ["GetMaterialOverrideChanged"]
       32 DUPCLOSURE                       R3 K16 [PROTO_5]
       33 SETTABLEKS                       R3 R2 K17 ["GetMaterialVariant"]
       35 DUPCLOSURE                       R3 K18 [PROTO_6]
       36 SETTABLEKS                       R3 R2 K19 ["GetOverrideStatus"]
       38 DUPCLOSURE                       R3 K20 [PROTO_7]
       39 SETTABLEKS                       R3 R2 K21 ["GetBaseMaterialOverride"]
       41 DUPCLOSURE                       R3 K22 [PROTO_8]
       42 SETTABLEKS                       R3 R2 K23 ["SetBaseMaterialOverride"]
       44 RETURN                           R2 1
