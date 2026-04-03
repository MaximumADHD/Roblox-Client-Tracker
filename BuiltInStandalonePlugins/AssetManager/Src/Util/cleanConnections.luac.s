PROTO_0:
        0 LENGTH                           R3 R0
        1 LOADN                            R1 1
        2 LOADN                            R2 255
        3 FORNPREP                         R1
        4 GETTABLE                         R4 R0 R3
        5 GETTABLEKS                       R6 R4 K0 ["Disconnect"]
        7 FASTCALL2K                       ASSERT R6 K1 ; [+4]
        9 LOADK                            R7 K1 ["Connection is not valid, it does not have a Disconnect method"]
       10 GETIMPORT                        R5 K3 [assert]
       12 CALL                             R5 2 0
       13 NAMECALL                         R5 R4 K0 ["Disconnect"]
       15 CALL                             R5 1 0
       16 LOADNIL                          R5
       17 SETTABLE                         R5 R0 R3
       18 FORNLOOP                         R1
       19 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R7 R5 K0 ["Disconnect"]
        6 FASTCALL2K                       ASSERT R7 K1 ; [+4]
        8 LOADK                            R8 K1 ["Connection is not valid, it does not have a Disconnect method"]
        9 GETIMPORT                        R6 K3 [assert]
       11 CALL                             R6 2 0
       12 NAMECALL                         R6 R5 K0 ["Disconnect"]
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 ; [-12]
       17 GETIMPORT                        R1 K6 [table.clear]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagAmrCleanConnectionsRefactor"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 DUPCLOSURE                       R3 K10 [PROTO_1]
       18 MOVE                             R5 R1
       19 CALL                             R5 0 1
       20 JUMPIFNOT                        R5 ; [+2]
       21 MOVE                             R4 R3
       22 RETURN                           R4 1
       23 MOVE                             R4 R2
       24 RETURN                           R4 1
