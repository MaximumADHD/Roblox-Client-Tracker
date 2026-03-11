PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["DEFAULT_SKIN_TONE"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETTABLEKS                       R7 R5 K1 ["palette"]
        9 GETTABLEKS                       R6 R7 K2 ["Key"]
       11 JUMPIFNOTEQKS                    R6 K3 ["Skin"] ; [+15]
       13 GETTABLEKS                       R7 R5 K4 ["item"]
       15 GETTABLEKS                       R6 R7 K5 ["source"]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K6 ["SOURCE_BUILTIN"]
       20 JUMPIFNOTEQ                      R6 R7 ; [+6]
       22 GETTABLEKS                       R6 R5 K4 ["item"]
       24 GETTABLEKS                       R0 R6 K7 ["builtinItem"]
       26 RETURN                           R0 1
       27 FORGLOOP                         R1 2 ; [-21]
       29 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 1
        8 MOVE                             R4 R0
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K1 ["useState"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 2
       17 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
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
       27 GETTABLEKS                       R4 R5 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_1]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 RETURN                           R4 1
