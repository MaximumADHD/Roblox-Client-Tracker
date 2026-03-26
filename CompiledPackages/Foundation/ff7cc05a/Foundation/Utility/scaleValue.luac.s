PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 RETURN                           R0 1
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K1 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+3]
       10 MUL                              R2 R0 R1
       11 RETURN                           R2 1
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R3 R0
       14 GETIMPORT                        R2 K1 [typeof]
       16 CALL                             R2 1 1
       17 JUMPIFNOTEQKS                    R2 K3 ["UDim"] ; [+10]
       19 GETIMPORT                        R2 K5 [UDim.new]
       21 GETTABLEKS                       R3 R0 K6 ["Scale"]
       23 GETTABLEKS                       R5 R0 K7 ["Offset"]
       25 MUL                              R4 R5 R1
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1
       28 FASTCALL1                        TYPEOF R0 ; [+3]
       29 MOVE                             R3 R0
       30 GETIMPORT                        R2 K1 [typeof]
       32 CALL                             R2 1 1
       33 JUMPIFNOTEQKS                    R2 K8 ["UDim2"] ; [+23]
       35 GETIMPORT                        R2 K9 [UDim2.new]
       37 GETTABLEKS                       R4 R0 K10 ["X"]
       39 GETTABLEKS                       R3 R4 K6 ["Scale"]
       41 GETTABLEKS                       R6 R0 K10 ["X"]
       43 GETTABLEKS                       R5 R6 K7 ["Offset"]
       45 MUL                              R4 R5 R1
       46 GETTABLEKS                       R6 R0 K11 ["Y"]
       48 GETTABLEKS                       R5 R6 K6 ["Scale"]
       50 GETTABLEKS                       R8 R0 K11 ["Y"]
       52 GETTABLEKS                       R7 R8 K7 ["Offset"]
       54 MUL                              R6 R7 R1
       55 CALL                             R2 4 -1
       56 RETURN                           R2 -1
       57 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
