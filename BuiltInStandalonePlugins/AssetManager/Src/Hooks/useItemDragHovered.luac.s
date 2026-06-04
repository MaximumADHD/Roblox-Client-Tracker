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
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K3 ["AssetInfoField"]
       17 GETTABLEKS                       R6 R6 K4 ["AssetType"]
       19 NAMECALL                         R2 R0 K5 ["getItemField"]
       21 CALL                             R2 4 -1
       22 RETURN                           R2 -1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

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
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+38]
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
       29 MOVE                             R2 R0
       30 GETUPVAL                         R3 4
       31 GETTABLEKS                       R3 R3 K6 ["OnContentScrollChanged"]
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U2
       36 NAMECALL                         R3 R3 K1 ["Connect"]
       38 CALL                             R3 2 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R1 K4 [table.insert]
       42 CALL                             R1 -1 0
       43 NEWCLOSURE                       R1 P1
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R0
       46 RETURN                           R1 1

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
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U6
       29 NEWTABLE                         R10 0 1
       31 MOVE                             R11 R1
       32 SETLIST                          R10 R11 1 [1]
       34 CALL                             R8 2 1
       35 GETUPVAL                         R9 3
       36 GETTABLEKS                       R9 R9 K4 ["useCallback"]
       38 NEWCLOSURE                       R10 P1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R8
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R6
       46 NEWTABLE                         R11 0 3
       48 MOVE                             R12 R0
       49 MOVE                             R13 R1
       50 MOVE                             R14 R7
       51 SETLIST                          R11 R12 3 [1]
       53 CALL                             R9 2 1
       54 GETUPVAL                         R10 3
       55 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       57 NEWCLOSURE                       R11 P2
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R6
       63 NEWTABLE                         R12 0 2
       65 MOVE                             R13 R1
       66 MOVE                             R14 R5
       67 SETLIST                          R12 R13 2 [1]
       69 CALL                             R10 2 1
       70 GETUPVAL                         R11 3
       71 GETTABLEKS                       R11 R11 K5 ["useEffect"]
       73 NEWCLOSURE                       R12 P3
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R4
       79 CAPTURE                          UPVAL U7
       80 NEWTABLE                         R13 0 2
       82 MOVE                             R14 R9
       83 MOVE                             R15 R10
       84 SETLIST                          R13 R14 2 [1]
       86 CALL                             R11 2 0
       87 RETURN                           R5 1

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
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K6 ["Src"]
       70 GETTABLEKS                       R9 R9 K18 ["Flags"]
       72 GETTABLEKS                       R9 R9 K19 ["getFFlagAmrOrganizationFoundation"]
       74 CALL                             R8 1 1
       75 DUPCLOSURE                       R9 K20 [PROTO_0]
       76 CAPTURE                          VAL R1
       77 DUPCLOSURE                       R10 K21 [PROTO_7]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R3
       86 RETURN                           R10 1
