PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+8]
        7 LOADK                            R2 K3 ["col-%*"]
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R2 K4 ["format"]
       11 CALL                             R2 2 1
       12 MOVE                             R1 R2
       13 RETURN                           R1 1
       14 NEWTABLE                         R1 0 0
       16 MOVE                             R2 R0
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 FASTCALL1                        TYPEOF R6 ; [+3]
       21 MOVE                             R8 R6
       22 GETIMPORT                        R7 K1 [typeof]
       24 CALL                             R7 1 1
       25 JUMPIFNOTEQKS                    R7 K2 ["number"] ; [+14]
       27 LOADK                            R10 K5 ["%*-col-%*"]
       28 MOVE                             R12 R5
       29 MOVE                             R13 R6
       30 NAMECALL                         R10 R10 K4 ["format"]
       32 CALL                             R10 3 1
       33 MOVE                             R9 R10
       34 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       36 MOVE                             R8 R1
       37 GETIMPORT                        R7 K8 [table.insert]
       39 CALL                             R7 2 0
       40 FORGLOOP                         R2 2 ; [-21]
       42 GETIMPORT                        R2 K10 [table.concat]
       44 MOVE                             R3 R1
       45 LOADK                            R4 K11 [" "]
       46 CALL                             R2 2 -1
       47 RETURN                           R2 -1

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
