PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 LOADK                            R4 K0 ["preloadAssets should only be used with valid FoundationCloudAssets; %* is an invalid name"]
        3 MOVE                             R6 R0
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 2 1
        7 MOVE                             R3 R4
        8 FASTCALL2                        ASSERT R2 R3 ; [+3]
       10 GETIMPORT                        R1 K3 [assert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+8]
        7 NEWTABLE                         R1 0 1
        9 MOVE                             R2 R0
       10 SETLIST                          R1 R2 1 [1]
       12 MOVE                             R0 R1
       13 JUMP                             ; [0]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K3 ["forEach"]
       17 MOVE                             R2 R0
       18 DUPCLOSURE                       R3 K4 [PROTO_0]
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["FoundationCloudAssets"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["Assets"]
       21 GETTABLEKS                       R5 R3 K10 ["preloadAsset"]
       23 DUPCLOSURE                       R6 K11 [PROTO_1]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R5
       27 RETURN                           R6 1
