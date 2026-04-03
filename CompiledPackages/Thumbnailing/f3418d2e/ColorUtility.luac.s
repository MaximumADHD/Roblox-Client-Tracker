PROTO_0:
        0 LOADK                            R4 K0 ["/"]
        1 NAMECALL                         R2 R0 K1 ["split"]
        3 CALL                             R2 2 -1
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R1 K3 [unpack]
        7 CALL                             R1 -1 3
        8 GETIMPORT                        R4 K6 [Color3.fromRGB]
       10 FASTCALL1                        TONUMBER R1 ; [+3]
       11 MOVE                             R6 R1
       12 GETIMPORT                        R5 K8 [tonumber]
       14 CALL                             R5 1 1
       15 FASTCALL1                        TONUMBER R2 ; [+3]
       16 MOVE                             R7 R2
       17 GETIMPORT                        R6 K8 [tonumber]
       19 CALL                             R6 1 1
       20 FASTCALL1                        TONUMBER R3 ; [+3]
       21 MOVE                             R8 R3
       22 GETIMPORT                        R7 K8 [tonumber]
       24 CALL                             R7 1 1
       25 CALL                             R4 3 1
       26 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["Color3FromString"]
        6 RETURN                           R0 1
