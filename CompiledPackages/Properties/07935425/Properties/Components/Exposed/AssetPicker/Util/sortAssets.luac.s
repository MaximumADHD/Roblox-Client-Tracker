PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["assetItem"]
        2 GETTABLEKS                       R2 R2 K1 ["asset"]
        4 GETTABLEKS                       R3 R1 K0 ["assetItem"]
        6 GETTABLEKS                       R3 R3 K1 ["asset"]
        8 GETTABLEKS                       R4 R2 K2 ["updateTime"]
       10 GETTABLEKS                       R5 R3 K2 ["updateTime"]
       12 JUMPIFEQ                         R4 R5 ; [+10]
       14 GETTABLEKS                       R5 R2 K2 ["updateTime"]
       16 GETTABLEKS                       R6 R3 K2 ["updateTime"]
       18 JUMPIFLT                         R6 R5 ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 RETURN                           R4 1
       23 GETTABLEKS                       R4 R2 K3 ["displayName"]
       25 GETTABLEKS                       R5 R3 K3 ["displayName"]
       27 JUMPIFEQ                         R4 R5 ; [+10]
       29 GETTABLEKS                       R5 R2 K3 ["displayName"]
       31 GETTABLEKS                       R6 R3 K3 ["displayName"]
       33 JUMPIFLT                         R5 R6 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 RETURN                           R4 1
       38 GETTABLEKS                       R5 R2 K4 ["assetId"]
       40 GETTABLEKS                       R6 R3 K4 ["assetId"]
       42 JUMPIFLT                         R5 R6 ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["assetItem"]
        2 GETTABLEKS                       R2 R2 K1 ["asset"]
        4 GETTABLEKS                       R3 R1 K0 ["assetItem"]
        6 GETTABLEKS                       R3 R3 K1 ["asset"]
        8 GETTABLEKS                       R4 R2 K2 ["displayName"]
       10 GETTABLEKS                       R5 R3 K2 ["displayName"]
       12 JUMPIFEQ                         R4 R5 ; [+10]
       14 GETTABLEKS                       R5 R2 K2 ["displayName"]
       16 GETTABLEKS                       R6 R3 K2 ["displayName"]
       18 JUMPIFLT                         R5 R6 ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 RETURN                           R4 1
       23 GETTABLEKS                       R4 R2 K3 ["updateTime"]
       25 GETTABLEKS                       R5 R3 K3 ["updateTime"]
       27 JUMPIFEQ                         R4 R5 ; [+10]
       29 GETTABLEKS                       R5 R2 K3 ["updateTime"]
       31 GETTABLEKS                       R6 R3 K3 ["updateTime"]
       33 JUMPIFLT                         R6 R5 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 RETURN                           R4 1
       38 GETTABLEKS                       R5 R2 K4 ["assetId"]
       40 GETTABLEKS                       R6 R3 K4 ["assetId"]
       42 JUMPIFLT                         R5 R6 ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOTEQKNIL                  R2 ; [+10]
        4 GETIMPORT                        R3 K1 [error]
        6 LOADK                            R5 K2 ["Unsupported sort order: %*"]
        7 MOVE                             R7 R1
        8 NAMECALL                         R5 R5 K3 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 CALL                             R3 1 0
       13 GETIMPORT                        R3 K6 [table.sort]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 DUPTABLE                         R2 K9 [{"Recent", "Alphabetical"}]
       13 DUPCLOSURE                       R3 K10 [PROTO_0]
       14 SETTABLEKS                       R3 R2 K7 ["Recent"]
       16 DUPCLOSURE                       R3 K11 [PROTO_1]
       17 SETTABLEKS                       R3 R2 K8 ["Alphabetical"]
       19 DUPCLOSURE                       R3 K12 [PROTO_2]
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1
