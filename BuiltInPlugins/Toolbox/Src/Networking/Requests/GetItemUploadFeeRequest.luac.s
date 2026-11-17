PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R1 K1 ["price"]
        4 JUMPIFEQKNIL                     R2 ; [+17]
        6 GETTABLEKS                       R2 R1 K2 ["canAfford"]
        8 JUMPIFEQKNIL                     R2 ; [+13]
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R4 1
       12 LOADB                            R5 1
       13 GETTABLEKS                       R6 R1 K1 ["price"]
       15 GETTABLEKS                       R7 R1 K2 ["canAfford"]
       17 CALL                             R4 3 -1
       18 NAMECALL                         R2 R2 K3 ["dispatch"]
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K4 ["shouldDebugWarnings"]
       25 CALL                             R2 0 1
       26 JUMPIFNOT                        R2 ; [+5]
       27 GETIMPORT                        R2 K6 [warn]
       29 LOADK                            R3 K7 ["Unexpected getItemUploadFee response body:"]
       30 MOVE                             R4 R1
       31 CALL                             R2 2 0
       32 GETUPVAL                         R2 3
       33 CALL                             R2 0 1
       34 JUMPIFNOT                        R2 ; [+15]
       35 GETUPVAL                         R2 0
       36 GETUPVAL                         R4 4
       37 LOADK                            R5 K8 ["Unexpected getItemUploadFee response"]
       38 CALL                             R4 1 -1
       39 NAMECALL                         R2 R2 K3 ["dispatch"]
       41 CALL                             R2 -1 0
       42 GETUPVAL                         R2 0
       43 GETUPVAL                         R4 5
       44 LOADB                            R5 0
       45 CALL                             R4 1 -1
       46 NAMECALL                         R2 R2 K3 ["dispatch"]
       48 CALL                             R2 -1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R2 0
       51 GETUPVAL                         R4 1
       52 LOADB                            R5 0
       53 CALL                             R4 1 -1
       54 NAMECALL                         R2 R2 K3 ["dispatch"]
       56 CALL                             R2 -1 0
       57 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R0 K0 ["Body"]
        4 CALL                             R3 1 -1
        5 NAMECALL                         R1 R1 K1 ["dispatch"]
        7 CALL                             R1 -1 0
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R3 2
       10 LOADB                            R4 0
       11 CALL                             R3 1 -1
       12 NAMECALL                         R1 R1 K1 ["dispatch"]
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 GETUPVAL                         R3 5
       12 GETUPVAL                         R5 6
       13 GETTABLEKS                       R5 R5 K0 ["Name"]
       15 GETUPVAL                         R6 7
       16 GETUPVAL                         R7 8
       17 NAMECALL                         R3 R3 K1 ["getItemUploadFee"]
       19 CALL                             R3 4 1
       20 MOVE                             R5 R1
       21 MOVE                             R6 R2
       22 NAMECALL                         R3 R3 K2 ["andThen"]
       24 CALL                             R3 3 0
       25 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["SetUploadFee"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["NetworkError"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Actions"]
       31 GETTABLEKS                       R4 R4 K10 ["UploadResult"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R0 K6 ["Src"]
       36 GETTABLEKS                       R4 R4 K11 ["Util"]
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R6 R4 K12 ["DebugFlags"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R4 K13 ["AssetConfigConstants"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K6 ["Src"]
       52 GETTABLEKS                       R8 R8 K14 ["Flags"]
       54 GETTABLEKS                       R8 R8 K15 ["getFFlagToolboxRemoveLegacyCatalogUpload"]
       56 CALL                             R7 1 1
       57 DUPCLOSURE                       R8 K16 [PROTO_3]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 RETURN                           R8 1
