PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        5 GETTABLEKS                       R2 R3 K1 ["isItemTagsFeatureEnabled"]
        7 JUMPIFEQKB                       R2 TRUE ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETTABLEKS                       R3 R0 K0 ["responseBody"]
       13 JUMPIFNOT                        R3 ; [+5]
       14 GETTABLEKS                       R3 R0 K0 ["responseBody"]
       16 GETTABLEKS                       R2 R3 K2 ["enabledAssetTypes"]
       18 JUMPIF                           R2 ; [+2]
       19 NEWTABLE                         R2 0 0
       21 GETTABLEKS                       R4 R0 K0 ["responseBody"]
       23 JUMPIFNOT                        R4 ; [+5]
       24 GETTABLEKS                       R4 R0 K0 ["responseBody"]
       26 GETTABLEKS                       R3 R4 K3 ["maximumItemTagsPerItem"]
       28 JUMPIF                           R3 ; [+1]
       29 LOADN                            R3 0
       30 GETUPVAL                         R4 0
       31 GETUPVAL                         R6 1
       32 MOVE                             R7 R1
       33 MOVE                             R8 R2
       34 MOVE                             R9 R3
       35 CALL                             R6 3 -1
       36 NAMECALL                         R4 R4 K4 ["dispatch"]
       38 CALL                             R4 -1 0
       39 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Lua toolbox: Could not get tags metadata"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 DUPCLOSURE                       R2 K0 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 GETUPVAL                         R3 2
        6 NAMECALL                         R3 R3 K1 ["getTagsMetadata"]
        8 CALL                             R3 1 1
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 NAMECALL                         R3 R3 K2 ["andThen"]
       13 CALL                             R3 3 -1
       14 RETURN                           R3 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Util"]
       17 GETTABLEKS                       R2 R3 K7 ["DebugFlags"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Flags"]
       26 GETTABLEKS                       R3 R4 K9 ["getFFlagRemoveItemTags"]
       28 CALL                             R2 1 1
       29 MOVE                             R4 R2
       30 CALL                             R4 0 1
       31 JUMPIFNOT                        R4 ; [+2]
       32 LOADNIL                          R3
       33 JUMP                             ; [+9]
       34 GETIMPORT                        R3 K4 [require]
       36 GETTABLEKS                       R6 R0 K5 ["Src"]
       38 GETTABLEKS                       R5 R6 K10 ["Actions"]
       40 GETTABLEKS                       R4 R5 K11 ["SetTagsMetadata"]
       42 CALL                             R3 1 1
       43 MOVE                             R4 R2
       44 CALL                             R4 0 1
       45 JUMPIF                           R4 ; [+4]
       46 DUPCLOSURE                       R4 K12 [PROTO_3]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R1
       49 RETURN                           R4 1
       50 RETURN                           R0 0
