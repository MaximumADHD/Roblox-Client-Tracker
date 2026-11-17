PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+9]
        7 GETTABLEKS                       R2 R0 K3 ["placeVersions"]
        9 FASTCALL1                        TYPE R2 ; [+2]
       10 GETIMPORT                        R1 K1 [type]
       12 CALL                             R1 1 1
       13 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
       15 LOADB                            R1 0
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K3 ["placeVersions"]
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 FORGPREP                         R1
       22 FASTCALL1                        TYPE R5 ; [+3]
       23 MOVE                             R7 R5
       24 GETIMPORT                        R6 K1 [type]
       26 CALL                             R6 1 1
       27 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+7]
       29 GETTABLEKS                       R6 R5 K4 ["isPublished"]
       31 JUMPIFNOTEQKB                    R6 TRUE ; [+3]
       33 LOADB                            R6 1
       34 RETURN                           R6 1
       35 FORGLOOP                         R1 2 ; [-14]
       37 LOADB                            R1 0
       38 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["hasPublishedVersion"]
        6 RETURN                           R0 1
