PROTO_0:
        0 DUPTABLE                         R1 K4 [{"AuthorId", "Contents", "CreationTimeUnix", "TaggedUsers"}]
        1 GETTABLEKS                       R2 R0 K0 ["AuthorId"]
        3 SETTABLEKS                       R2 R1 K0 ["AuthorId"]
        5 GETTABLEKS                       R2 R0 K1 ["Contents"]
        7 SETTABLEKS                       R2 R1 K1 ["Contents"]
        9 GETTABLEKS                       R2 R0 K2 ["CreationTimeUnix"]
       11 SETTABLEKS                       R2 R1 K2 ["CreationTimeUnix"]
       13 GETTABLEKS                       R2 R0 K3 ["TaggedUsers"]
       15 SETTABLEKS                       R2 R1 K3 ["TaggedUsers"]
       17 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+19]
        2 GETUPVAL                         R1 0
        3 DUPTABLE                         R0 K4 [{"AuthorId", "Contents", "CreationTimeUnix", "TaggedUsers"}]
        4 GETTABLEKS                       R2 R1 K0 ["AuthorId"]
        6 SETTABLEKS                       R2 R0 K0 ["AuthorId"]
        8 GETTABLEKS                       R2 R1 K1 ["Contents"]
       10 SETTABLEKS                       R2 R0 K1 ["Contents"]
       12 GETTABLEKS                       R2 R1 K2 ["CreationTimeUnix"]
       14 SETTABLEKS                       R2 R0 K2 ["CreationTimeUnix"]
       16 GETTABLEKS                       R2 R1 K3 ["TaggedUsers"]
       18 SETTABLEKS                       R2 R0 K3 ["TaggedUsers"]
       20 RETURN                           R0 1
       21 LOADNIL                          R0
       22 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 JUMPIFEQ                         R0 R1 ; [+29]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 0
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R2 0
       12 JUMPIFNOT                        R2 ; [+19]
       13 GETUPVAL                         R2 0
       14 DUPTABLE                         R1 K5 [{"AuthorId", "Contents", "CreationTimeUnix", "TaggedUsers"}]
       15 GETTABLEKS                       R3 R2 K1 ["AuthorId"]
       17 SETTABLEKS                       R3 R1 K1 ["AuthorId"]
       19 GETTABLEKS                       R3 R2 K2 ["Contents"]
       21 SETTABLEKS                       R3 R1 K2 ["Contents"]
       23 GETTABLEKS                       R3 R2 K3 ["CreationTimeUnix"]
       25 SETTABLEKS                       R3 R1 K3 ["CreationTimeUnix"]
       27 GETTABLEKS                       R3 R2 K4 ["TaggedUsers"]
       29 SETTABLEKS                       R3 R1 K4 ["TaggedUsers"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R1
       33 CALL                             R0 1 0
       34 GETUPVAL                         R0 3
       35 GETUPVAL                         R1 0
       36 CALL                             R0 1 0
       37 GETUPVAL                         R0 4
       38 LOADNIL                          R1
       39 CALL                             R0 1 0
       40 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["CommentEdited"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["IsDescendantOf"]
        4 CALL                             R0 2 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K1 ["CommentDeleted"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R2 3
        6 GETTABLEKS                       R2 R2 K0 ["Category"]
        8 JUMPIFEQ                         R1 R2 ; [+8]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K1 ["Details"]
       14 JUMPIFEQ                         R1 R2 ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R3 4
       19 NAMECALL                         R1 R1 K2 ["IsDescendantOf"]
       21 CALL                             R1 2 1
       22 JUMPIF                           R1 ; [+4]
       23 GETUPVAL                         R1 5
       24 LOADK                            R2 K3 ["CommentDeleted"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K4 ["Contents"]
       30 GETTABLEKS                       R2 R0 K4 ["Contents"]
       32 JUMPIFNOTEQ                      R1 R2 ; [+8]
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K5 ["TaggedUsers"]
       37 GETTABLEKS                       R2 R0 K5 ["TaggedUsers"]
       39 JUMPIFEQ                         R1 R2 ; [+5]
       41 GETUPVAL                         R1 5
       42 LOADK                            R2 K6 ["CommentEdited"]
       43 CALL                             R1 1 0
       44 RETURN                           R0 0
       45 NEWCLOSURE                       R1 P0
       46 CAPTURE                          UPVAL U5
       47 NEWTABLE                         R2 0 3
       49 GETUPVAL                         R3 1
       50 LOADK                            R5 K4 ["Contents"]
       51 NAMECALL                         R3 R3 K7 ["GetPropertyChangedSignal"]
       53 CALL                             R3 2 1
       54 MOVE                             R5 R1
       55 NAMECALL                         R3 R3 K8 ["Connect"]
       57 CALL                             R3 2 1
       58 GETUPVAL                         R4 1
       59 LOADK                            R6 K5 ["TaggedUsers"]
       60 NAMECALL                         R4 R4 K7 ["GetPropertyChangedSignal"]
       62 CALL                             R4 2 1
       63 MOVE                             R6 R1
       64 NAMECALL                         R4 R4 K8 ["Connect"]
       66 CALL                             R4 2 1
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K9 ["AncestryChanged"]
       70 NEWCLOSURE                       R7 P1
       71 CAPTURE                          UPVAL U1
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          UPVAL U5
       74 NAMECALL                         R5 R5 K8 ["Connect"]
       76 CALL                             R5 2 -1
       77 SETLIST                          R2 R3 -1 [1]
       79 NEWCLOSURE                       R3 P2
       80 CAPTURE                          VAL R2
       81 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K5 [{"AuthorId", "Contents", "CreationTimeUnix", "TaggedUsers"}]
        5 GETTABLEKS                       R3 R0 K1 ["AuthorId"]
        7 SETTABLEKS                       R3 R2 K1 ["AuthorId"]
        9 GETTABLEKS                       R3 R0 K2 ["Contents"]
       11 SETTABLEKS                       R3 R2 K2 ["Contents"]
       13 GETTABLEKS                       R3 R0 K3 ["CreationTimeUnix"]
       15 SETTABLEKS                       R3 R2 K3 ["CreationTimeUnix"]
       17 GETTABLEKS                       R3 R0 K4 ["TaggedUsers"]
       19 SETTABLEKS                       R3 R2 K4 ["TaggedUsers"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 2
       23 LOADNIL                          R2
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R2 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["useRef"]
        9 MOVE                             R5 R0
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K0 ["useState"]
       14 MOVE                             R6 R0
       15 CALL                             R5 1 2
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K0 ["useState"]
       19 LOADNIL                          R8
       20 CALL                             R7 1 2
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K2 ["useEffect"]
       24 NEWCLOSURE                       R10 P1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R6
       29 CAPTURE                          VAL R8
       30 NEWTABLE                         R11 0 1
       32 MOVE                             R12 R0
       33 SETLIST                          R11 R12 1 [1]
       35 CALL                             R9 2 0
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R9 R9 K2 ["useEffect"]
       39 NEWCLOSURE                       R10 P2
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R8
       46 NEWTABLE                         R11 0 3
       48 MOVE                             R12 R1
       49 MOVE                             R13 R0
       50 MOVE                             R14 R2
       51 SETLIST                          R11 R12 3 [1]
       53 CALL                             R9 2 0
       54 NEWCLOSURE                       R9 P3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R8
       58 DUPTABLE                         R10 K9 [{"CommitSelectedComment", "InvalidTargetReason", "SelectedComment", "SetInvalidTargetReason", "SetSelectedComment", "TargetCommentPreview"}]
       59 SETTABLEKS                       R9 R10 K3 ["CommitSelectedComment"]
       61 SETTABLEKS                       R7 R10 K4 ["InvalidTargetReason"]
       63 SETTABLEKS                       R5 R10 K5 ["SelectedComment"]
       65 SETTABLEKS                       R8 R10 K6 ["SetInvalidTargetReason"]
       67 SETTABLEKS                       R6 R10 K7 ["SetSelectedComment"]
       69 SETTABLEKS                       R2 R10 K8 ["TargetCommentPreview"]
       71 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Enums"]
       20 GETTABLEKS                       R3 R3 K10 ["ReportStep"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K13 [game]
       32 LOADK                            R6 K14 ["AnnotationsService"]
       33 NAMECALL                         R4 R4 K15 ["GetService"]
       35 CALL                             R4 2 1
       36 DUPCLOSURE                       R5 K16 [PROTO_0]
       37 DUPCLOSURE                       R6 K17 [PROTO_8]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 RETURN                           R6 1
