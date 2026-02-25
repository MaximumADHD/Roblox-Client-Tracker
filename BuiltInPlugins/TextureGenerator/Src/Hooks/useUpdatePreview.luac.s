PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["uuid"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["uuid"]
        9 GETTABLE                         R1 R0 R2
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 RETURN                           R0 1
       13 GETIMPORT                        R1 K3 [table.clone]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 1
       18 MOVE                             R3 R1
       19 GETUPVAL                         R4 0
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 2
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+5]
       24 GETIMPORT                        R2 K5 [print]
       26 LOADK                            R3 K6 ["update previewTable"]
       27 MOVE                             R4 R1
       28 CALL                             R2 2 0
       29 GETIMPORT                        R2 K8 [table.freeze]
       31 MOVE                             R3 R1
       32 CALL                             R2 1 -1
       33 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R3 0 1
        9 MOVE                             R4 R0
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

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
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["updatePreview"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Flags"]
       29 GETTABLEKS                       R4 R5 K12 ["getFFlagDebugTextureGeneratorLogging"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_2]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
