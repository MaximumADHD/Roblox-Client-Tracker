PROTO_0:
        0 JUMPIF                           R1 ; [+2]
        1 LOADB                            R2 0
        2 RETURN                           R2 1
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 LOADN                            R5 1
        7 CALL                             R2 3 -1
        8 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIF                           R2 ; [+2]
        4 LOADB                            R1 0
        5 JUMP                             ; [+6]
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R0
        8 MOVE                             R5 R2
        9 LOADN                            R6 1
       10 CALL                             R3 3 1
       11 MOVE                             R1 R3
       12 GETUPVAL                         R2 2
       13 MOVE                             R3 R1
       14 JUMPIFNOT                        R3 ; [+6]
       15 GETUPVAL                         R3 3
       16 GETUPVAL                         R5 4
       17 GETUPVAL                         R6 5
       18 NAMECALL                         R3 R3 K1 ["isValidDragForTarget"]
       20 CALL                             R3 3 1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getDragInfo"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+32]
        6 JUMPIFNOT                        R1 ; [+31]
        7 GETTABLEKS                       R2 R1 K1 ["SourceZone"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["UiZone"]
       12 GETTABLEKS                       R3 R3 K3 ["Sidebar"]
       14 JUMPIFNOTEQ                      R2 R3 ; [+17]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R4 R1 K4 ["DraggedItems"]
       19 GETTABLEKS                       R4 R4 K5 ["Parent"]
       21 NAMECALL                         R2 R2 K6 ["getScopeWithUid"]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 4
       25 MOVE                             R5 R1
       26 GETUPVAL                         R6 5
       27 MOVE                             R7 R2
       28 NAMECALL                         R3 R3 K7 ["requestMoveSelectionToItem"]
       30 CALL                             R3 4 0
       31 JUMP                             ; [+6]
       32 GETUPVAL                         R2 4
       33 MOVE                             R4 R1
       34 GETUPVAL                         R5 5
       35 NAMECALL                         R2 R2 K7 ["requestMoveSelectionToItem"]
       37 CALL                             R2 3 0
       38 GETUPVAL                         R2 6
       39 LOADB                            R3 0
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+24]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["OnDragMove"]
        9 GETUPVAL                         R5 2
       10 NAMECALL                         R3 R3 K1 ["Connect"]
       12 CALL                             R3 2 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R1 K4 [table.insert]
       16 CALL                             R1 -1 0
       17 MOVE                             R2 R0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["OnDrop"]
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

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["use"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["use"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K0 ["use"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K1 ["useState"]
       15 LOADB                            R6 0
       16 CALL                             R5 1 2
       17 GETTABLEKS                       R7 R1 K2 ["Path"]
       19 GETUPVAL                         R8 3
       20 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       22 NEWCLOSURE                       R9 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R6
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R7
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R10 0 2
       31 GETTABLEKS                       R11 R0 K4 ["current"]
       33 MOVE                             R12 R7
       34 SETLIST                          R10 R11 2 [1]
       36 CALL                             R8 2 1
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       40 NEWCLOSURE                       R10 P1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R6
       48 NEWTABLE                         R11 0 2
       50 MOVE                             R12 R5
       51 MOVE                             R13 R7
       52 SETLIST                          R11 R12 2 [1]
       54 CALL                             R9 2 1
       55 GETUPVAL                         R10 3
       56 GETTABLEKS                       R10 R10 K5 ["useEffect"]
       58 NEWCLOSURE                       R11 P2
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R9
       63 CAPTURE                          UPVAL U7
       64 NEWTABLE                         R12 0 2
       66 MOVE                             R13 R8
       67 MOVE                             R14 R9
       68 SETLIST                          R12 R13 2 [1]
       70 CALL                             R10 2 0
       71 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["cleanConnections"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Controllers"]
       36 GETTABLEKS                       R5 R5 K13 ["ExplorerController"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Controllers"]
       45 GETTABLEKS                       R6 R6 K14 ["ItemsController"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Src"]
       52 GETTABLEKS                       R7 R7 K12 ["Controllers"]
       54 GETTABLEKS                       R7 R7 K15 ["Input"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K6 ["Src"]
       61 GETTABLEKS                       R8 R8 K10 ["Util"]
       63 GETTABLEKS                       R8 R8 K16 ["isPositionInFrame"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K6 ["Src"]
       70 GETTABLEKS                       R9 R9 K17 ["Flags"]
       72 GETTABLEKS                       R9 R9 K18 ["getFFlagAmrOrganizationFoundation"]
       74 CALL                             R8 1 1
       75 DUPCLOSURE                       R9 K19 [PROTO_0]
       76 CAPTURE                          VAL R7
       77 DUPCLOSURE                       R10 K20 [PROTO_5]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R3
       86 RETURN                           R10 1
