PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TYPEOF R6 ; [+3]
        7 MOVE                             R8 R6
        8 GETIMPORT                        R7 K1 [typeof]
       10 CALL                             R7 1 1
       11 JUMPIFNOTEQKS                    R7 K2 ["Vector3"] ; [+29]
       13 LOADK                            R8 K3 ["%*X"]
       14 MOVE                             R10 R5
       15 NAMECALL                         R8 R8 K4 ["format"]
       17 CALL                             R8 2 1
       18 MOVE                             R7 R8
       19 GETTABLEKS                       R8 R6 K5 ["X"]
       21 SETTABLE                         R8 R1 R7
       22 LOADK                            R8 K6 ["%*Y"]
       23 MOVE                             R10 R5
       24 NAMECALL                         R8 R8 K4 ["format"]
       26 CALL                             R8 2 1
       27 MOVE                             R7 R8
       28 GETTABLEKS                       R8 R6 K7 ["Y"]
       30 SETTABLE                         R8 R1 R7
       31 LOADK                            R8 K8 ["%*Z"]
       32 MOVE                             R10 R5
       33 NAMECALL                         R8 R8 K4 ["format"]
       35 CALL                             R8 2 1
       36 MOVE                             R7 R8
       37 GETTABLEKS                       R8 R6 K9 ["Z"]
       39 SETTABLE                         R8 R1 R7
       40 JUMP                             ; [+12]
       41 FASTCALL1                        TYPEOF R6 ; [+3]
       42 MOVE                             R8 R6
       43 GETIMPORT                        R7 K1 [typeof]
       45 CALL                             R7 1 1
       46 JUMPIFNOTEQKS                    R7 K10 ["EnumItem"] ; [+5]
       48 GETTABLEKS                       R7 R6 K11 ["Name"]
       50 SETTABLE                         R7 R1 R5
       51 JUMP                             ; [+1]
       52 SETTABLE                         R6 R1 R5
       53 FORGLOOP                         R2 2 ; [-48]
       55 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
