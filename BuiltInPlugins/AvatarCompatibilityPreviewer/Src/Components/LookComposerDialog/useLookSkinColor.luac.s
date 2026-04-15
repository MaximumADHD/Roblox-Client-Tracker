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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKS                       R0 K0 ["AvatarLook"] ; [+3]
        6 GETUPVAL                         R0 2
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 3
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 GETTABLEKS                       R5 R4 K1 ["itemRowType"]
       14 JUMPIFNOTEQKS                    R5 K2 ["BodyColor"] ; [+12]
       16 GETTABLEKS                       R5 R4 K3 ["rowState"]
       18 JUMPIFNOTEQKS                    R5 K4 ["Selected"] ; [+4]
       20 GETTABLEKS                       R5 R4 K5 ["color"]
       22 RETURN                           R5 1
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R5 R6 K6 ["DEFAULT_SKIN_TONE"]
       26 RETURN                           R5 1
       27 FORGLOOP                         R0 2 ; [-16]
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R0 R1 K6 ["DEFAULT_SKIN_TONE"]
       32 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useMemo"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R5 0 1
        8 MOVE                             R6 R0
        9 SETLIST                          R5 R6 1 [1]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K1 ["useState"]
       15 MOVE                             R5 R3
       16 CALL                             R4 1 2
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R6 R7 K0 ["useMemo"]
       20 NEWCLOSURE                       R7 P1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U1
       26 NEWTABLE                         R8 0 3
       28 MOVE                             R9 R4
       29 MOVE                             R10 R1
       30 MOVE                             R11 R2
       31 SETLIST                          R8 R9 3 [1]
       33 CALL                             R6 2 1
       34 MOVE                             R7 R6
       35 MOVE                             R8 R5
       36 RETURN                           R7 2

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
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Flags"]
       36 GETTABLEKS                       R5 R6 K13 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_2]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 RETURN                           R5 1
