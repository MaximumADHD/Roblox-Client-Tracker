PROTO_0:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 JUMPIFEQKNIL                     R2 ; [+17]
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["current"]
       11 LOADN                            R4 1
       12 CALL                             R1 3 1
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETUPVAL                         R2 2
       15 NAMECALL                         R2 R2 K1 ["getLastZoneClicked"]
       17 CALL                             R2 1 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 GETUPVAL                         R2 2
       23 GETUPVAL                         R4 3
       24 GETUPVAL                         R5 4
       25 NAMECALL                         R2 R2 K2 ["isValidDragForTarget"]
       27 CALL                             R2 3 1
       28 GETUPVAL                         R3 5
       29 AND                              R4 R1 R2
       30 CALL                             R3 1 0
       31 JUMPIFNOT                        R1 ; [+6]
       32 JUMPIF                           R2 ; [+5]
       33 GETUPVAL                         R3 2
       34 MOVE                             R5 R0
       35 NAMECALL                         R3 R3 K3 ["setInvalidDragHoverPosition"]
       37 CALL                             R3 2 0
       38 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isDragging"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["getMousePosition"]
        9 CALL                             R1 1 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["OnDragMove"]
        6 GETUPVAL                         R5 1
        7 NAMECALL                         R3 R3 K1 ["Connect"]
        9 CALL                             R3 2 -1
       10 FASTCALL                         TABLE_INSERT ; [+2]
       11 GETIMPORT                        R1 K4 [table.insert]
       13 CALL                             R1 -1 0
       14 MOVE                             R2 R0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["OnDrop"]
       18 GETUPVAL                         R5 2
       19 NAMECALL                         R3 R3 K1 ["Connect"]
       21 CALL                             R3 2 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R1 K4 [table.insert]
       25 CALL                             R1 -1 0
       26 MOVE                             R2 R0
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K6 ["OnSidebarScrollChanged"]
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U1
       33 NAMECALL                         R3 R3 K1 ["Connect"]
       35 CALL                             R3 2 -1
       36 FASTCALL                         TABLE_INSERT ; [+2]
       37 GETIMPORT                        R1 K4 [table.insert]
       39 CALL                             R1 -1 0
       40 NEWCLOSURE                       R1 P1
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R0
       43 RETURN                           R1 1

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
       13 GETTABLEKS                       R5 R5 K0 ["use"]
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R6 R6 K1 ["useState"]
       19 LOADB                            R7 0
       20 CALL                             R6 1 2
       21 GETTABLEKS                       R8 R1 K2 ["Path"]
       23 GETUPVAL                         R9 4
       24 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       26 NEWCLOSURE                       R10 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R8
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R7
       33 NEWTABLE                         R11 0 3
       35 GETTABLEKS                       R12 R0 K4 ["current"]
       37 MOVE                             R13 R1
       38 MOVE                             R14 R8
       39 SETLIST                          R11 R12 3 [1]
       41 CALL                             R9 2 1
       42 GETUPVAL                         R10 4
       43 GETTABLEKS                       R10 R10 K3 ["useCallback"]
       45 NEWCLOSURE                       R11 P1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R6
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R7
       53 NEWTABLE                         R12 0 3
       55 MOVE                             R13 R6
       56 MOVE                             R14 R1
       57 MOVE                             R15 R8
       58 SETLIST                          R12 R13 3 [1]
       60 CALL                             R10 2 1
       61 GETUPVAL                         R11 4
       62 GETTABLEKS                       R11 R11 K5 ["useEffect"]
       64 NEWCLOSURE                       R12 P2
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R5
       69 CAPTURE                          UPVAL U7
       70 NEWTABLE                         R13 0 2
       72 MOVE                             R14 R9
       73 MOVE                             R15 R10
       74 SETLIST                          R13 R14 2 [1]
       76 CALL                             R11 2 0
       77 RETURN                           R6 1

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
       61 GETTABLEKS                       R8 R8 K12 ["Controllers"]
       63 GETTABLEKS                       R8 R8 K16 ["LayoutController"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K6 ["Src"]
       70 GETTABLEKS                       R9 R9 K10 ["Util"]
       72 GETTABLEKS                       R9 R9 K17 ["isPositionInFrame"]
       74 CALL                             R8 1 1
       75 DUPCLOSURE                       R9 K18 [PROTO_5]
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R3
       84 RETURN                           R9 1
