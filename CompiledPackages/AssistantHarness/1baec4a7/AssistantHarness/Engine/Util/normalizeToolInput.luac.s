PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+8]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["Types"]
       10 GETTABLEKS                       R1 R1 K4 ["emptyObject"]
       12 CALL                             R1 0 -1
       13 RETURN                           R1 -1
       14 GETIMPORT                        R1 K6 [next]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 JUMPIFNOTEQKNIL                  R1 ; [+8]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K3 ["Types"]
       23 GETTABLEKS                       R1 R1 K4 ["emptyObject"]
       25 CALL                             R1 0 -1
       26 RETURN                           R1 -1
       27 MOVE                             R1 R0
       28 LOADNIL                          R2
       29 LOADNIL                          R3
       30 FORGPREP                         R1
       31 FASTCALL1                        TYPEOF R4 ; [+3]
       32 MOVE                             R7 R4
       33 GETIMPORT                        R6 K1 [typeof]
       35 CALL                             R6 1 1
       36 JUMPIFEQKS                       R6 K7 ["string"] ; [+8]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K3 ["Types"]
       41 GETTABLEKS                       R6 R6 K4 ["emptyObject"]
       43 CALL                             R6 0 -1
       44 RETURN                           R6 -1
       45 FORGLOOP                         R1 1 ; [-15]
       47 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
