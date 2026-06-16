PROTO_0:
        0 GETTABLEKS                       R4 R1 K0 ["instances"]
        2 JUMPIFNOTEQKNIL                  R4 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["instances required in validationContext for validateLayeredClothingAccessoryMeshPartAssetFormat"]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R2 R1 K0 ["instances"]
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 GETUPVAL                         R5 0
       17 MOVE                             R6 R1
       18 CALL                             R5 1 2
       19 MOVE                             R3 R5
       20 MOVE                             R4 R6
       21 JUMPIF                           R3 ; [+3]
       22 LOADB                            R5 0
       23 MOVE                             R6 R4
       24 RETURN                           R5 2
       25 GETTABLEN                        R5 R2 1
       26 GETUPVAL                         R6 1
       27 MOVE                             R7 R5
       28 MOVE                             R8 R0
       29 MOVE                             R9 R1
       30 CALL                             R6 3 2
       31 MOVE                             R3 R6
       32 MOVE                             R4 R7
       33 JUMPIF                           R3 ; [+3]
       34 LOADB                            R6 0
       35 MOVE                             R7 R4
       36 RETURN                           R6 2
       37 LOADB                            R6 1
       38 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["validation"]
       18 GETTABLEKS                       R3 R3 K8 ["validateLayeredClothingAccessory"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K7 ["validation"]
       25 GETTABLEKS                       R4 R4 K9 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 RETURN                           R4 1
