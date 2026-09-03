PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K1 [typeof]
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+16]
       12 GETIMPORT                        R1 K4 [print]
       14 LOADK                            R3 K5 ["[%*] %*"]
       15 GETUPVAL                         R5 1
       16 GETIMPORT                        R6 K7 [string.format]
       18 MOVE                             R7 R0
       19 GETVARARGS                       R8 -1
       20 CALL                             R6 -1 1
       21 NAMECALL                         R3 R3 K6 ["format"]
       23 CALL                             R3 3 1
       24 MOVE                             R2 R3
       25 CALL                             R1 1 0
       26 RETURN                           R0 0
       27 GETIMPORT                        R1 K4 [print]
       29 LOADK                            R3 K8 ["[%*]"]
       30 GETUPVAL                         R5 1
       31 NAMECALL                         R3 R3 K6 ["format"]
       33 CALL                             R3 2 1
       34 MOVE                             R2 R3
       35 MOVE                             R3 R0
       36 GETVARARGS                       R4 -1
       37 CALL                             R3 -1 -1
       38 CALL                             R1 -1 0
       39 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [script]
        2 LOADK                            R3 K2 ["Plugin"]
        3 NAMECALL                         R1 R1 K3 ["FindFirstAncestorWhichIsA"]
        5 CALL                             R1 2 1
        6 JUMPIFEQKNIL                     R1 ; [+11]
        8 LOADK                            R2 K4 ["%*.%*"]
        9 GETTABLEKS                       R4 R1 K5 ["HostDataModelType"]
       11 GETTABLEKS                       R4 R4 K6 ["Name"]
       13 MOVE                             R5 R0
       14 NAMECALL                         R2 R2 K7 ["format"]
       16 CALL                             R2 3 1
       17 MOVE                             R0 R2
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          REF R0
       21 CLOSEUPVALS                      R0
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagDebugNewPropertiesLogging"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
