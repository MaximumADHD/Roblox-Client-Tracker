PROTO_0:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["name"]
        3 NAMECALL                         R2 R2 K1 ["lower"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R4 0
        7 LOADN                            R5 1
        8 LOADB                            R6 1
        9 NAMECALL                         R2 R2 K2 ["find"]
       11 CALL                             R2 4 1
       12 JUMPIFNOTEQKNIL                  R2 ; [+18]
       14 GETTABLEKS                       R2 R0 K3 ["material"]
       16 GETTABLEKS                       R2 R2 K4 ["Name"]
       18 NAMECALL                         R2 R2 K1 ["lower"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R4 0
       22 LOADN                            R5 1
       23 LOADB                            R6 1
       24 NAMECALL                         R2 R2 K2 ["find"]
       26 CALL                             R2 4 1
       27 JUMPIFNOTEQKNIL                  R2 ; [+2]
       29 LOADB                            R1 0 +1
       30 LOADB                            R1 1
       31 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        2 RETURN                           R1 1
        3 NAMECALL                         R2 R0 K1 ["lower"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["List"]
        9 GETTABLEKS                       R3 R3 K3 ["filter"]
       11 MOVE                             R4 R1
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R2
       14 CALL                             R3 2 -1
       15 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Domain"]
       18 GETTABLEKS                       R3 R3 K9 ["TerrainMaterialTypes"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_1]
       22 CAPTURE                          VAL R1
       23 RETURN                           R3 1
