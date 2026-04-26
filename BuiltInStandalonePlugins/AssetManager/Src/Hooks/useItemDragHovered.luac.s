PROTO_0:
        0 JUMPIFNOT                        R2 ; [+2]
        1 JUMPIFNOT                        R3 ; [+1]
        2 JUMPIF                           R4 ; [+2]
        3 LOADB                            R5 0
        4 RETURN                           R5 1
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K0 ["AssetType"]
        8 GETTABLEKS                       R5 R6 K1 ["Folder"]
       10 JUMPIFNOTEQ                      R4 R5 ; [+2]
       12 JUMPIFNOT                        R1 ; [+2]
       13 LOADB                            R5 0
       14 RETURN                           R5 1
       15 GETUPVAL                         R5 1
       16 MOVE                             R6 R0
       17 MOVE                             R7 R2
       18 CALL                             R5 2 -1
       19 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+20]
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K0 ["getItemsCache"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 1
        8 NAMECALL                         R1 R1 K1 ["getCurrentShownScope"]
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R4 R1 K2 ["Uid"]
       13 GETUPVAL                         R5 2
       14 GETUPVAL                         R8 3
       15 GETTABLEKS                       R7 R8 K3 ["AssetInfoField"]
       17 GETTABLEKS                       R6 R7 K4 ["AssetType"]
       19 NAMECALL                         R2 R0 K5 ["getItemField"]
       21 CALL                             R2 4 -1
       22 RETURN                           R2 -1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["current"]
        4 GETUPVAL                         R4 2
        5 NAMECALL                         R4 R4 K1 ["getLastZoneClicked"]
        7 CALL                             R4 1 1
        8 GETUPVAL                         R5 3
        9 JUMPIFNOT                        R3 ; [+2]
       10 JUMPIFNOT                        R4 ; [+1]
       11 JUMPIF                           R5 ; [+2]
       12 LOADB                            R1 0
       13 JUMP                             ; [+15]
       14 GETUPVAL                         R8 4
       15 GETTABLEKS                       R7 R8 K2 ["AssetType"]
       17 GETTABLEKS                       R6 R7 K3 ["Folder"]
       19 JUMPIFNOTEQ                      R5 R6 ; [+2]
       21 JUMPIFNOT                        R2 ; [+2]
       22 LOADB                            R1 0
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R6 5
       25 MOVE                             R7 R0
       26 MOVE                             R8 R3
       27 CALL                             R6 2 1
       28 MOVE                             R1 R6
       29 GETUPVAL                         R2 6
       30 MOVE                             R3 R1
       31 JUMPIFNOT                        R3 ; [+5]
       32 GETUPVAL                         R3 2
       33 GETUPVAL                         R5 7
       34 NAMECALL                         R3 R3 K4 ["isValidDragForTarget"]
       36 CALL                             R3 2 1
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getDragInfo"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R2 2
        8 MOVE                             R4 R1
        9 GETUPVAL                         R5 3
       10 NAMECALL                         R2 R2 K1 ["requestMoveSelectionToItem"]
       12 CALL                             R2 3 0
       13 GETUPVAL                         R2 4
       14 LOADB                            R3 0
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+24]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K0 ["OnDragMove"]
        9 GETUPVAL                         R5 2
       10 NAMECALL                         R3 R3 K1 ["Connect"]
       12 CALL                             R3 2 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R1 K4 [table.insert]
       16 CALL                             R1 -1 0
       17 MOVE                             R2 R0
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K5 ["OnDrop"]
       21 GETUPVAL                         R5 3
       22 NAMECALL                         R3 R3 K1 ["Connect"]
       24 CALL                             R3 2 -1
       25 FASTCALL                         TABLE_INSERT ; [+2]
       26 GETIMPORT                        R1 K4 [table.insert]
       28 CALL                             R1 -1 0
       29 NEWCLOSURE                       R1 P0
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R0
       32 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["use"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["use"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K1 ["useState"]
       11 LOADB                            R5 0
       12 CALL                             R4 1 2
       13 GETUPVAL                         R7 3
       14 CALL                             R7 0 1
       15 GETTABLEKS                       R6 R7 K2 ["ShowSearchOptions"]
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R7 R8 K3 ["useMemo"]
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U5
       25 NEWTABLE                         R9 0 1
       27 MOVE                             R10 R1
       28 SETLIST                          R9 R10 1 [1]
       30 CALL                             R7 2 1
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R8 R9 K4 ["useCallback"]
       34 NEWCLOSURE                       R9 P1
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R7
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R1
       43 NEWTABLE                         R10 0 3
       45 GETTABLEKS                       R11 R0 K5 ["current"]
       47 MOVE                             R12 R1
       48 MOVE                             R13 R6
       49 SETLIST                          R10 R11 3 [1]
       51 CALL                             R8 2 1
       52 GETUPVAL                         R10 2
       53 GETTABLEKS                       R9 R10 K4 ["useCallback"]
       55 NEWCLOSURE                       R10 P2
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R5
       61 NEWTABLE                         R11 0 2
       63 MOVE                             R12 R1
       64 MOVE                             R13 R4
       65 SETLIST                          R11 R12 2 [1]
       67 CALL                             R9 2 1
       68 GETUPVAL                         R11 2
       69 GETTABLEKS                       R10 R11 K6 ["useEffect"]
       71 NEWCLOSURE                       R11 P3
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R9
       76 CAPTURE                          UPVAL U7
       77 NEWTABLE                         R12 0 2
       79 MOVE                             R13 R8
       80 MOVE                             R14 R9
       81 SETLIST                          R12 R13 2 [1]
       83 CALL                             R10 2 0
       84 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K6 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["cleanConnections"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Util"]
       36 GETTABLEKS                       R5 R6 K12 ["isPositionInFrame"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K6 ["Src"]
       43 GETTABLEKS                       R7 R8 K13 ["Controllers"]
       45 GETTABLEKS                       R6 R7 K14 ["Input"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K6 ["Src"]
       52 GETTABLEKS                       R8 R9 K13 ["Controllers"]
       54 GETTABLEKS                       R7 R8 K15 ["ItemsController"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R10 R0 K6 ["Src"]
       61 GETTABLEKS                       R9 R10 K16 ["Hooks"]
       63 GETTABLEKS                       R8 R9 K17 ["useSearchInfo"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K6 ["Src"]
       70 GETTABLEKS                       R10 R11 K18 ["Flags"]
       72 GETTABLEKS                       R9 R10 K19 ["getFFlagAmrOrganizationFoundation"]
       74 CALL                             R8 1 1
       75 DUPCLOSURE                       R9 K20 [PROTO_0]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R4
       78 DUPCLOSURE                       R10 K21 [PROTO_6]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R3
       87 RETURN                           R10 1
