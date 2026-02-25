PROTO_0:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 GETIMPORT                        R3 K1 [game]
        4 GETIMPORT                        R4 K4 [string.split]
        6 MOVE                             R5 R0
        7 LOADK                            R6 K5 ["."]
        8 CALL                             R4 2 1
        9 MOVE                             R5 R4
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 JUMPIFNOTEQKS                    R9 K6 [""] ; [+3]
       15 LOADNIL                          R10
       16 RETURN                           R10 1
       17 MOVE                             R12 R9
       18 NAMECALL                         R10 R3 K7 ["FindFirstChild"]
       20 CALL                             R10 2 1
       21 JUMPIFNOTEQKNIL                  R10 ; [+3]
       23 LOADNIL                          R11
       24 RETURN                           R11 1
       25 MOVE                             R3 R10
       26 FORGLOOP                         R5 2 ; [-14]
       28 JUMPIFNOT                        R1 ; [+7]
       29 MOVE                             R7 R1
       30 NAMECALL                         R5 R3 K8 ["IsA"]
       32 CALL                             R5 2 1
       33 JUMPIF                           R5 ; [+2]
       34 LOADNIL                          R5
       35 RETURN                           R5 1
       36 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
