PROTO_0:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K4 [pairs]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 3
        8 FORGPREP_NEXT                    R3
        9 FASTCALL1                        TYPE R7 ; [+3]
       10 MOVE                             R9 R7
       11 GETIMPORT                        R8 K6 [type]
       13 CALL                             R8 1 1
       14 JUMPIFNOTEQKS                    R8 K0 ["table"] ; [+21]
       16 GETTABLE                         R9 R2 R6
       17 FASTCALL1                        TYPE R9 ; [+2]
       18 GETIMPORT                        R8 K6 [type]
       20 CALL                             R8 1 1
       21 JUMPIFNOTEQKS                    R8 K0 ["table"] ; [+14]
       23 GETIMPORT                        R8 K2 [table.clone]
       25 GETTABLE                         R9 R2 R6
       26 CALL                             R8 1 1
       27 MOVE                             R9 R7
       28 LOADNIL                          R10
       29 LOADNIL                          R11
       30 FORGPREP                         R9
       31 SETTABLE                         R13 R8 R12
       32 FORGLOOP                         R9 2 ; [-2]
       34 SETTABLE                         R8 R2 R6
       35 JUMP                             ; [+1]
       36 SETTABLE                         R7 R2 R6
       37 FORGLOOP                         R3 2 ; [-29]
       39 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 RETURN                           R2 1
