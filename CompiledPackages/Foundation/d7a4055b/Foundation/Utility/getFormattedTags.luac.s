PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+51]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [typeof]
        6 CALL                             R1 1 1
        7 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+23]
        9 NEWTABLE                         R1 0 0
       11 MOVE                             R2 R0
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 JUMPIFNOT                        R6 ; [+7]
       16 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       18 MOVE                             R8 R1
       19 MOVE                             R9 R5
       20 GETIMPORT                        R7 K4 [table.insert]
       22 CALL                             R7 2 0
       23 FORGLOOP                         R2 2 ; [-9]
       25 GETIMPORT                        R2 K6 [table.concat]
       27 MOVE                             R3 R1
       28 LOADK                            R4 K7 [" "]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1
       31 FASTCALL1                        TYPEOF R0 ; [+3]
       32 MOVE                             R2 R0
       33 GETIMPORT                        R1 K1 [typeof]
       35 CALL                             R1 1 1
       36 JUMPIFNOTEQKS                    R1 K8 ["string"] ; [+2]
       38 RETURN                           R0 1
       39 LOADB                            R2 0
       40 LOADK                            R4 K9 ["Invalid argument to useStyleTags. Expected a table or string, got "]
       41 FASTCALL1                        TYPEOF R0 ; [+3]
       42 MOVE                             R6 R0
       43 GETIMPORT                        R5 K1 [typeof]
       45 CALL                             R5 1 1
       46 CONCAT                           R3 R4 R5
       47 FASTCALL2                        ASSERT R2 R3 ; [+3]
       49 GETIMPORT                        R1 K11 [assert]
       51 CALL                             R1 2 0
       52 LOADNIL                          R1
       53 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
