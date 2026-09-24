PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+8]
        2 LOADK                            R1 K0 ["%* %*"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R4 R0 K1 ["slotIndex"]
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 3 1
        9 JUMP                             ; [+6]
       10 GETTABLEKS                       R2 R0 K1 ["slotIndex"]
       12 FASTCALL1                        TOSTRING R2 ; [+2]
       13 GETIMPORT                        R1 K4 [tostring]
       15 CALL                             R1 1 1
       16 LOADB                            R2 1
       17 GETTABLEKS                       R3 R0 K5 ["name"]
       19 NAMECALL                         R3 R3 K6 ["lower"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 1
       23 LOADN                            R6 1
       24 LOADB                            R7 1
       25 NAMECALL                         R3 R3 K7 ["find"]
       27 CALL                             R3 4 1
       28 JUMPIFNOTEQKNIL                  R3 ; [+32]
       30 LOADB                            R2 1
       31 GETTABLEKS                       R3 R0 K8 ["material"]
       33 GETTABLEKS                       R3 R3 K9 ["Name"]
       35 NAMECALL                         R3 R3 K6 ["lower"]
       37 CALL                             R3 1 1
       38 GETUPVAL                         R5 1
       39 LOADN                            R6 1
       40 LOADB                            R7 1
       41 NAMECALL                         R3 R3 K7 ["find"]
       43 CALL                             R3 4 1
       44 JUMPIFNOTEQKNIL                  R3 ; [+16]
       46 GETUPVAL                         R2 2
       47 JUMPIFNOT                        R2 ; [+13]
       48 NAMECALL                         R3 R1 K6 ["lower"]
       50 CALL                             R3 1 1
       51 GETUPVAL                         R5 1
       52 LOADN                            R6 1
       53 LOADB                            R7 1
       54 NAMECALL                         R3 R3 K7 ["find"]
       56 CALL                             R3 4 1
       57 JUMPIFNOTEQKNIL                  R3 ; [+2]
       59 LOADB                            R2 0 +1
       60 LOADB                            R2 1
       61 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        2 RETURN                           R1 1
        3 NAMECALL                         R3 R0 K1 ["lower"]
        5 CALL                             R3 1 1
        6 LOADK                            R7 K2 ["%d"]
        7 NAMECALL                         R5 R3 K3 ["find"]
        9 CALL                             R5 2 1
       10 JUMPIFNOTEQKNIL                  R5 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["List"]
       17 GETTABLEKS                       R5 R5 K5 ["filter"]
       19 MOVE                             R6 R1
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R4
       24 CALL                             R5 2 -1
       25 RETURN                           R5 -1

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
