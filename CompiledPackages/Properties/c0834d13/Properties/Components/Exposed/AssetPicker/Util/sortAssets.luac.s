PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["updateTime"]
        2 GETTABLEKS                       R3 R1 K0 ["updateTime"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K0 ["updateTime"]
        8 GETTABLEKS                       R4 R1 K0 ["updateTime"]
       10 JUMPIFLT                         R4 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R0 K1 ["displayName"]
       17 GETTABLEKS                       R3 R1 K1 ["displayName"]
       19 JUMPIFEQ                         R2 R3 ; [+10]
       21 GETTABLEKS                       R3 R0 K1 ["displayName"]
       23 GETTABLEKS                       R4 R1 K1 ["displayName"]
       25 JUMPIFLT                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1
       30 GETTABLEKS                       R3 R0 K2 ["assetId"]
       32 GETTABLEKS                       R4 R1 K2 ["assetId"]
       34 JUMPIFLT                         R3 R4 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["displayName"]
        2 GETTABLEKS                       R3 R1 K0 ["displayName"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K0 ["displayName"]
        8 GETTABLEKS                       R4 R1 K0 ["displayName"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R0 K1 ["updateTime"]
       17 GETTABLEKS                       R3 R1 K1 ["updateTime"]
       19 JUMPIFEQ                         R2 R3 ; [+10]
       21 GETTABLEKS                       R3 R0 K1 ["updateTime"]
       23 GETTABLEKS                       R4 R1 K1 ["updateTime"]
       25 JUMPIFLT                         R4 R3 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1
       30 GETTABLEKS                       R3 R0 K2 ["assetId"]
       32 GETTABLEKS                       R4 R1 K2 ["assetId"]
       34 JUMPIFLT                         R3 R4 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 RETURN                           R2 1

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
