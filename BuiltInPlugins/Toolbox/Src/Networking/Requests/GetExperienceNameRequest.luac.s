PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getState"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R1 R1 K1 ["assetConfigData"]
        6 GETTABLEKS                       R1 R1 K2 ["Creator"]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETTABLEKS                       R2 R1 K3 ["targetId"]
       11 GETUPVAL                         R3 1
       12 JUMPIFEQ                         R2 R3 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R4 R0 K4 ["responseBody"]
       18 NAMECALL                         R2 R2 K5 ["JSONDecode"]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 0
       22 GETUPVAL                         R5 3
       23 DUPTABLE                         R6 K6 [{"Creator"}]
       24 GETUPVAL                         R7 4
       25 GETTABLEKS                       R7 R7 K7 ["Dictionary"]
       27 GETTABLEKS                       R7 R7 K8 ["join"]
       29 MOVE                             R8 R1
       30 DUPTABLE                         R9 K10 [{"name"}]
       31 GETTABLEKS                       R10 R2 K9 ["name"]
       33 SETTABLEKS                       R10 R9 K9 ["name"]
       35 CALL                             R7 2 1
       36 SETTABLEKS                       R7 R6 K2 ["Creator"]
       38 CALL                             R5 1 -1
       39 NAMECALL                         R3 R3 K11 ["dispatch"]
       41 CALL                             R3 -1 0
       42 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shouldDebugWarnings"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+12]
        5 GETIMPORT                        R0 K2 [warn]
        7 LOADK                            R1 K3 ["Toolbox Asset Configuration could not load experience %s"]
        8 GETUPVAL                         R4 1
        9 FASTCALL1                        TOSTRING R4 ; [+2]
       10 GETIMPORT                        R3 K5 [tostring]
       12 CALL                             R3 1 1
       13 NAMECALL                         R1 R1 K6 ["format"]
       15 CALL                             R1 2 -1
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getUniverseInfo"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U1
       14 NAMECALL                         R1 R1 K1 ["andThen"]
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["HttpService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETTABLEKS                       R2 R0 K7 ["Packages"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Cryo"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R0 K11 ["Src"]
       28 GETTABLEKS                       R5 R5 K12 ["Util"]
       30 GETTABLEKS                       R5 R5 K13 ["DebugFlags"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K9 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Src"]
       37 GETTABLEKS                       R6 R6 K14 ["Actions"]
       39 GETTABLEKS                       R6 R6 K15 ["UpdateAssetConfigData"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K16 [PROTO_3]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 RETURN                           R6 1
