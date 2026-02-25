PROTO_0:
        0 JUMPIFNOT                        R0 ; [+29]
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R2 R0
        3 GETIMPORT                        R1 K1 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K2 ["Instance"] ; [+23]
        8 LOADK                            R3 K3 ["Accessory"]
        9 NAMECALL                         R1 R0 K4 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+17]
       13 LOADK                            R3 K5 ["Handle"]
       14 NAMECALL                         R1 R0 K6 ["FindFirstChild"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+12]
       18 LOADK                            R4 K7 ["MeshPart"]
       19 NAMECALL                         R2 R1 K4 ["IsA"]
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+7]
       23 LOADK                            R4 K8 ["WrapLayer"]
       24 NAMECALL                         R2 R1 K9 ["FindFirstChildOfClass"]
       26 CALL                             R2 2 1
       27 JUMPIFNOT                        R2 ; [+2]
       28 LOADB                            R3 1
       29 RETURN                           R3 1
       30 LOADB                            R1 0
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
