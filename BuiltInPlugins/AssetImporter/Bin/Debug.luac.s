PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["contextItems"]
        2 GETTABLEKS                       R1 R1 K1 ["FileController"]
        4 NEWTABLE                         R4 0 1
        6 LOADK                            R5 K2 ["/tmp/file.fbx"]
        7 SETLIST                          R4 R5 1 [1]
        9 NAMECALL                         R2 R1 K3 ["_onFilePicked"]
       11 CALL                             R2 2 0
       12 LOADK                            R4 K2 ["/tmp/file.fbx"]
       13 NAMECALL                         R2 R1 K4 ["requestPreview"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enabled"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Src"]
       11 GETTABLEKS                       R2 R2 K6 ["Controllers"]
       13 GETTABLEKS                       R2 R2 K7 ["Initialization"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 2 0
       18 LOADB                            R3 0
       19 SETTABLEKS                       R3 R2 K8 ["enabled"]
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 DUPCLOSURE                       R4 K10 [PROTO_1]
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R4 R2 K11 ["debug"]
       26 RETURN                           R2 1
