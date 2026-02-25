PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K3 ["uuid"]
        7 JUMPIFNOT                        R2 ; [+11]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K4 ["hash"]
       11 JUMPIFNOT                        R2 ; [+7]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K4 ["hash"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K3 ["uuid"]
       18 SETTABLE                         R3 R1 R2
       19 GETUPVAL                         R2 1
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+5]
       22 GETIMPORT                        R2 K6 [print]
       24 LOADK                            R3 K7 ["add/update modelToPreview"]
       25 MOVE                             R4 R1
       26 CALL                             R2 2 0
       27 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 1
        8 MOVE                             R4 R0
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Flags"]
       20 GETTABLEKS                       R3 R4 K10 ["getFFlagDebugTextureGeneratorLogging"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_2]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
