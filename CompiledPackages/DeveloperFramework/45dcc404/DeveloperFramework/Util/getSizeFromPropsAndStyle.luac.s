PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K0 ["Size"]
        8 GETTABLEKS                       R4 R1 K0 ["Size"]
       10 GETIMPORT                        R5 K3 [UDim2.new]
       12 LOADN                            R6 1
       13 LOADN                            R7 0
       14 LOADN                            R8 1
       15 LOADN                            R9 0
       16 CALL                             R5 4 -1
       17 CALL                             R2 -1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R4 R0 K4 ["Width"]
       21 GETTABLEKS                       R5 R1 K4 ["Width"]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R5 R0 K5 ["Height"]
       27 GETTABLEKS                       R6 R1 K5 ["Height"]
       29 CALL                             R4 2 1
       30 FASTCALL1                        TYPEOF R3 ; [+3]
       31 MOVE                             R6 R3
       32 GETIMPORT                        R5 K7 [typeof]
       34 CALL                             R5 1 1
       35 JUMPIFNOTEQKS                    R5 K8 ["number"] ; [+13]
       37 GETIMPORT                        R5 K3 [UDim2.new]
       39 GETIMPORT                        R6 K10 [UDim.new]
       41 LOADN                            R7 0
       42 MOVE                             R8 R3
       43 CALL                             R6 2 1
       44 GETTABLEKS                       R7 R2 K11 ["Y"]
       46 CALL                             R5 2 1
       47 MOVE                             R2 R5
       48 JUMP                             ; [+14]
       49 FASTCALL1                        TYPEOF R3 ; [+3]
       50 MOVE                             R6 R3
       51 GETIMPORT                        R5 K7 [typeof]
       53 CALL                             R5 1 1
       54 JUMPIFNOTEQKS                    R5 K9 ["UDim"] ; [+8]
       56 GETIMPORT                        R5 K3 [UDim2.new]
       58 MOVE                             R6 R3
       59 GETTABLEKS                       R7 R2 K11 ["Y"]
       61 CALL                             R5 2 1
       62 MOVE                             R2 R5
       63 FASTCALL1                        TYPEOF R4 ; [+3]
       64 MOVE                             R6 R4
       65 GETIMPORT                        R5 K7 [typeof]
       67 CALL                             R5 1 1
       68 JUMPIFNOTEQKS                    R5 K8 ["number"] ; [+13]
       70 GETIMPORT                        R5 K3 [UDim2.new]
       72 GETTABLEKS                       R6 R2 K12 ["X"]
       74 GETIMPORT                        R7 K10 [UDim.new]
       76 LOADN                            R8 0
       77 MOVE                             R9 R4
       78 CALL                             R7 2 -1
       79 CALL                             R5 -1 1
       80 MOVE                             R2 R5
       81 RETURN                           R2 1
       82 FASTCALL1                        TYPEOF R4 ; [+3]
       83 MOVE                             R6 R4
       84 GETIMPORT                        R5 K7 [typeof]
       86 CALL                             R5 1 1
       87 JUMPIFNOTEQKS                    R5 K9 ["UDim"] ; [+8]
       89 GETIMPORT                        R5 K3 [UDim2.new]
       91 GETTABLEKS                       R6 R2 K12 ["X"]
       93 MOVE                             R7 R4
       94 CALL                             R5 2 1
       95 MOVE                             R2 R5
       96 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R3 K6 ["prioritize"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
