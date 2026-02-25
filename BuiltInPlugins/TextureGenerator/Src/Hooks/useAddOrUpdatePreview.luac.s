PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["uuid"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 1
        6 GETIMPORT                        R1 K3 [table.clone]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["uuid"]
       13 GETTABLE                         R2 R1 R3
       14 JUMPIFNOTEQKNIL                  R2 ; [+7]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K0 ["uuid"]
       19 NEWTABLE                         R3 0 0
       21 SETTABLE                         R3 R1 R2
       22 GETUPVAL                         R2 1
       23 MOVE                             R3 R1
       24 GETUPVAL                         R4 0
       25 CALL                             R2 2 0
       26 GETUPVAL                         R2 2
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+5]
       29 GETIMPORT                        R2 K5 [print]
       31 LOADK                            R3 K6 ["add/update previewTable"]
       32 MOVE                             R4 R1
       33 CALL                             R2 2 0
       34 GETIMPORT                        R2 K8 [table.freeze]
       36 MOVE                             R3 R1
       37 CALL                             R2 1 -1
       38 RETURN                           R2 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["updatePreview"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Flags"]
       36 GETTABLEKS                       R5 R6 K13 ["getFFlagDebugTextureGeneratorLogging"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_2]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 RETURN                           R5 1
