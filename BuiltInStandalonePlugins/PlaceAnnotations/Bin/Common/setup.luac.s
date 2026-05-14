PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 GETIMPORT                        R2 K2 [game]
        7 LOADK                            R4 K3 ["RunService"]
        8 NAMECALL                         R2 R2 K4 ["GetService"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K5 ["get"]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K6 ["Standalone"]
       18 JUMPIFEQ                         R4 R5 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 NAMECALL                         R4 R2 K7 ["IsEdit"]
       24 CALL                             R4 1 1
       25 JUMPIF                           R3 ; [+1]
       26 JUMPIFNOT                        R4 ; [+3]
       27 MOVE                             R5 R1
       28 MOVE                             R6 R0
       29 CALL                             R5 1 0
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["pluginType"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 RETURN                           R2 1
