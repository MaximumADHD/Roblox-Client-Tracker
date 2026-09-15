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
       11 JUMPIFNOTEQKS                    R7 K2 ["Vector3"] ; [+26]
       13 LOADK                            R7 K3 ["%*X"]
       14 MOVE                             R9 R5
       15 NAMECALL                         R7 R7 K4 ["format"]
       17 CALL                             R7 2 1
       18 GETTABLEKS                       R8 R6 K5 ["X"]
       20 SETTABLE                         R8 R1 R7
       21 LOADK                            R7 K6 ["%*Y"]
       22 MOVE                             R9 R5
       23 NAMECALL                         R7 R7 K4 ["format"]
       25 CALL                             R7 2 1
       26 GETTABLEKS                       R8 R6 K7 ["Y"]
       28 SETTABLE                         R8 R1 R7
       29 LOADK                            R7 K8 ["%*Z"]
       30 MOVE                             R9 R5
       31 NAMECALL                         R7 R7 K4 ["format"]
       33 CALL                             R7 2 1
       34 GETTABLEKS                       R8 R6 K9 ["Z"]
       36 SETTABLE                         R8 R1 R7
       37 JUMP                             ; [+12]
       38 FASTCALL1                        TYPEOF R6 ; [+3]
       39 MOVE                             R8 R6
       40 GETIMPORT                        R7 K1 [typeof]
       42 CALL                             R7 1 1
       43 JUMPIFNOTEQKS                    R7 K10 ["EnumItem"] ; [+5]
       45 GETTABLEKS                       R7 R6 K11 ["Name"]
       47 SETTABLE                         R7 R1 R5
       48 JUMP                             ; [+1]
       49 SETTABLE                         R6 R1 R5
       50 FORGLOOP                         R2 2 ; [-45]
       52 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
