PROTO_0:
        0 DUPTABLE                         R5 K4 [{"id", "url", "_type", "instance"}]
        1 SETTABLEKS                       R0 R5 K0 ["id"]
        3 SETTABLEKS                       R1 R5 K1 ["url"]
        5 SETTABLEKS                       R2 R5 K2 ["_type"]
        7 SETTABLEKS                       R3 R5 K3 ["instance"]
        9 GETUPVAL                         R6 0
       10 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       12 GETIMPORT                        R4 K6 [setmetatable]
       14 CALL                             R4 2 1
       15 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["RobloxAsset"]
        3 JUMPIFNOTEQ                      R1 R2 ; [+27]
        5 LOADB                            R2 1
        6 GETTABLEKS                       R3 R0 K1 ["_type"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K0 ["RobloxAsset"]
       11 JUMPIFEQ                         R3 R4 ; [+18]
       13 LOADB                            R2 1
       14 GETTABLEKS                       R3 R0 K1 ["_type"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K2 ["AnimationInstance"]
       19 JUMPIFEQ                         R3 R4 ; [+10]
       21 GETTABLEKS                       R3 R0 K1 ["_type"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K3 ["AssetIdString"]
       26 JUMPIFEQ                         R3 R4 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 RETURN                           R2 1
       31 GETTABLEKS                       R3 R0 K1 ["_type"]
       33 JUMPIFEQ                         R3 R1 ; [+2]
       35 LOADB                            R2 0 +1
       36 LOADB                            R2 1
       37 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K5 ["constants"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R0 R1 K6 ["AssetType"]
       12 NEWTABLE                         R1 4 0
       14 SETTABLEKS                       R1 R1 K7 ["__index"]
       16 DUPCLOSURE                       R2 K8 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R2 R1 K9 ["new"]
       20 DUPCLOSURE                       R2 K10 [PROTO_1]
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R1 K11 ["IsA"]
       24 RETURN                           R1 1
