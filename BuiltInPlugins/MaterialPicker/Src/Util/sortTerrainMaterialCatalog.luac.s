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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["slotIndex"]
        3 GETTABLE                         R2 R3 R4
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R5 R1 K0 ["slotIndex"]
        7 GETTABLE                         R3 R4 R5
        8 JUMPIFEQKNIL                     R2 ; [+8]
       10 JUMPIFEQKNIL                     R3 ; [+6]
       12 JUMPIFLT                         R3 R2 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 RETURN                           R4 1
       17 JUMPIFEQKNIL                     R2 ; [+3]
       19 LOADB                            R4 1
       20 RETURN                           R4 1
       21 JUMPIFEQKNIL                     R3 ; [+3]
       23 LOADB                            R4 0
       24 RETURN                           R4 1
       25 GETTABLEKS                       R5 R0 K0 ["slotIndex"]
       27 GETTABLEKS                       R6 R1 K0 ["slotIndex"]
       29 JUMPIFLT                         R5 R6 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["slotIndex"]
        2 GETTABLEKS                       R4 R1 K0 ["slotIndex"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R3 K2 [table.clone]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 JUMPIFNOTEQKS                    R1 K3 ["name"] ; [+7]
        6 GETIMPORT                        R4 K5 [table.sort]
        8 MOVE                             R5 R3
        9 DUPCLOSURE                       R6 K6 [PROTO_0]
       10 CALL                             R4 2 0
       11 RETURN                           R3 1
       12 JUMPIFNOTEQKS                    R1 K7 ["recentlyUsed"] ; [+21]
       14 NEWTABLE                         R4 0 0
       16 MOVE                             R5 R2
       17 JUMPIF                           R5 ; [+2]
       18 NEWTABLE                         R5 0 0
       20 MOVE                             R6 R5
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 FORGPREP                         R6
       24 SETTABLE                         R9 R4 R10
       25 FORGLOOP                         R6 2 ; [-2]
       27 GETIMPORT                        R6 K5 [table.sort]
       29 MOVE                             R7 R3
       30 NEWCLOSURE                       R8 P1
       31 CAPTURE                          VAL R4
       32 CALL                             R6 2 0
       33 RETURN                           R3 1
       34 GETIMPORT                        R4 K5 [table.sort]
       36 MOVE                             R5 R3
       37 DUPCLOSURE                       R6 K8 [PROTO_2]
       38 CALL                             R4 2 0
       39 RETURN                           R3 1

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
       21 DUPCLOSURE                       R3 K10 [PROTO_3]
       22 RETURN                           R3 1
