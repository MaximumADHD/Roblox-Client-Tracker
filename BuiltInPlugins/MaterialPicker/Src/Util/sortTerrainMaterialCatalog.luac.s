PROTO_0:
        0 GETIMPORT                        R2 K2 [string.lower]
        2 GETTABLEKS                       R3 R0 K3 ["displayName"]
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K2 [string.lower]
        7 GETTABLEKS                       R4 R1 K3 ["displayName"]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQ                      R2 R3 ; [+10]
       12 GETTABLEKS                       R5 R0 K4 ["slotIndex"]
       14 GETTABLEKS                       R6 R1 K4 ["slotIndex"]
       16 JUMPIFLT                         R5 R6 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 RETURN                           R4 1
       21 JUMPIFLT                         R2 R3 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["slotIndex"]
        2 GETTABLEKS                       R4 R1 K0 ["slotIndex"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFNOTEQKS                    R1 K3 ["name"] ; [+7]
        6 GETIMPORT                        R3 K5 [table.sort]
        8 MOVE                             R4 R2
        9 DUPCLOSURE                       R5 K6 [PROTO_0]
       10 CALL                             R3 2 0
       11 RETURN                           R2 1
       12 GETIMPORT                        R3 K5 [table.sort]
       14 MOVE                             R4 R2
       15 DUPCLOSURE                       R5 K7 [PROTO_1]
       16 CALL                             R3 2 0
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TerrainPalette"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_2]
       22 RETURN                           R3 1
