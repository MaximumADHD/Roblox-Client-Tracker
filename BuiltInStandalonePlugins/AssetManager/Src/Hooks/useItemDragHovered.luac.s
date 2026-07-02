PROTO_0:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R1 ; [+10]
        3 LOADB                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["AssetType"]
        7 GETTABLEKS                       R3 R3 K1 ["Folder"]
        9 JUMPIFNOTEQ                      R1 R3 ; [+2]
       11 NOT                              R2 R0
       12 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getItemsCache"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 NAMECALL                         R1 R1 K1 ["getCurrentShownScope"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R4 R1 K2 ["Uid"]
       10 GETUPVAL                         R5 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K3 ["AssetInfoField"]
       14 GETTABLEKS                       R6 R6 K4 ["AssetType"]
       16 NAMECALL                         R2 R0 K5 ["getItemField"]
       18 CALL                             R2 4 -1
       19 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["getLastZoneClicked"]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 3
       12 LOADB                            R2 0
       13 JUMPIFEQKNIL                     R4 ; [+10]
       15 LOADB                            R2 0
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K1 ["AssetType"]
       19 GETTABLEKS                       R5 R5 K2 ["Folder"]
       21 JUMPIFNOTEQ                      R4 R5 ; [+2]
       23 NOT                              R2 R3
       24 JUMPIFNOT                        R2 ; [+5]
       25 GETUPVAL                         R2 1
       26 GETUPVAL                         R4 5
       27 NAMECALL                         R2 R2 K3 ["isValidDragForTarget"]
       29 CALL                             R2 2 1
       30 GETUPVAL                         R3 6
       31 AND                              R4 R1 R2
       32 CALL                             R3 1 0
       33 JUMPIFNOT                        R1 ; [+6]
       34 JUMPIF                           R2 ; [+5]
       35 GETUPVAL                         R3 1
       36 MOVE                             R5 R0
       37 NAMECALL                         R3 R3 K4 ["setInvalidDragHoverPosition"]
       39 CALL                             R3 2 0
       40 RETURN                           R0 0

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
        1 NAMECALL                         R0 R0 K0 ["isDragging"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["getMousePosition"]
        9 CALL                             R1 1 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
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
       28 GETTABLEKS                       R3 R3 K6 ["OnContentScrollChanged"]
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

PROTO_7:
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
       17 GETUPVAL                         R7 4
       18 CALL                             R7 0 1
       19 GETTABLEKS                       R7 R7 K2 ["ShowSearchOptions"]
       21 GETUPVAL                         R8 3
       22 GETTABLEKS                       R8 R8 K3 ["useMemo"]
       24 NEWCLOSURE                       R9 P0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U5
       28 NEWTABLE                         R10 0 1
       30 MOVE                             R11 R1
       31 SETLIST                          R10 R11 1 [1]
       33 CALL                             R8 2 1
       34 GETUPVAL                         R9 3
       35 GETTABLEKS                       R9 R9 K4 ["useCallback"]
       37 NEWCLOSURE                       R10 P1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R8
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R6
       45 NEWTABLE                         R11 0 3
       47 MOVE                             R12 R0
       48 MOVE                             R13 R1
       49 MOVE                             R14 R7
       50 SETLIST                          R11 R12 3 [1]
       52 CALL                             R9 2 1
       53 GETUPVAL                         R10 3
       54 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       56 NEWCLOSURE                       R11 P2
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R6
       62 NEWTABLE                         R12 0 2
       64 MOVE                             R13 R1
       65 MOVE                             R14 R5
       66 SETLIST                          R12 R13 2 [1]
       68 CALL                             R10 2 1
       69 GETUPVAL                         R11 3
       70 GETTABLEKS                       R11 R11 K5 ["useEffect"]
       72 NEWCLOSURE                       R12 P3
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R4
       77 CAPTURE                          UPVAL U6
       78 NEWTABLE                         R13 0 2
       80 MOVE                             R14 R9
       81 MOVE                             R15 R10
       82 SETLIST                          R13 R14 2 [1]
       84 CALL                             R11 2 0
       85 RETURN                           R5 1

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
       36 GETTABLEKS                       R5 R5 K13 ["Input"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Controllers"]
       45 GETTABLEKS                       R6 R6 K14 ["ItemsController"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Src"]
       52 GETTABLEKS                       R7 R7 K12 ["Controllers"]
       54 GETTABLEKS                       R7 R7 K15 ["LayoutController"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K6 ["Src"]
       61 GETTABLEKS                       R8 R8 K16 ["Hooks"]
       63 GETTABLEKS                       R8 R8 K17 ["useSearchInfo"]
       65 CALL                             R7 1 1
       66 DUPCLOSURE                       R8 K18 [PROTO_0]
       67 CAPTURE                          VAL R1
       68 DUPCLOSURE                       R9 K19 [PROTO_7]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R3
       76 RETURN                           R9 1
