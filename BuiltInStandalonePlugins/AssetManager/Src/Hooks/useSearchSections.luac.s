PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getShowAllSearchFolders"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTLT                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ShowSearchOptions"]
        3 JUMPIFNOT                        R0 ; [+57]
        4 NEWTABLE                         R0 0 0
        6 GETUPVAL                         R1 1
        7 LOADN                            R2 0
        8 JUMPIFNOTLT                      R2 R1 ; [+21]
       10 DUPTABLE                         R3 K4 [{"Text", "CellCount", "IsCollapsed"}]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K5 ["AssetType"]
       14 GETTABLEKS                       R4 R4 K6 ["Folder"]
       16 SETTABLEKS                       R4 R3 K1 ["Text"]
       18 GETUPVAL                         R4 1
       19 SETTABLEKS                       R4 R3 K2 ["CellCount"]
       21 LOADB                            R4 0
       22 SETTABLEKS                       R4 R3 K3 ["IsCollapsed"]
       24 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       26 MOVE                             R2 R0
       27 GETIMPORT                        R1 K9 [table.insert]
       29 CALL                             R1 2 0
       30 GETUPVAL                         R3 3
       31 LENGTH                           R2 R3
       32 GETUPVAL                         R3 1
       33 SUB                              R1 R2 R3
       34 LOADN                            R2 0
       35 JUMPIFNOTLT                      R2 R1 ; [+24]
       37 DUPTABLE                         R3 K4 [{"Text", "CellCount", "IsCollapsed"}]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K10 ["SearchOptions"]
       41 GETTABLEKS                       R4 R4 K5 ["AssetType"]
       43 SETTABLEKS                       R4 R3 K1 ["Text"]
       45 GETUPVAL                         R6 3
       46 LENGTH                           R5 R6
       47 GETUPVAL                         R6 1
       48 SUB                              R4 R5 R6
       49 SETTABLEKS                       R4 R3 K2 ["CellCount"]
       51 LOADB                            R4 0
       52 SETTABLEKS                       R4 R3 K3 ["IsCollapsed"]
       54 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       56 MOVE                             R2 R0
       57 GETIMPORT                        R1 K9 [table.insert]
       59 CALL                             R1 2 0
       60 RETURN                           R0 1
       61 LOADNIL                          R0
       62 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getFolderLimit"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getSearchFolderCount"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["OnLayoutFolderLimitChanged"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R3 R3 K1 ["Connect"]
       11 CALL                             R3 2 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R1 K4 [table.insert]
       15 CALL                             R1 -1 0
       16 MOVE                             R2 R0
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K5 ["OnSearchFolderCountChanged"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U2
       23 NAMECALL                         R3 R3 K1 ["Connect"]
       25 CALL                             R3 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R1 K4 [table.insert]
       29 CALL                             R1 -1 0
       30 NEWCLOSURE                       R1 P2
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R0
       33 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["use"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 3
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 4
       13 GETTABLEKS                       R4 R4 K1 ["useState"]
       15 NAMECALL                         R5 R1 K2 ["getFolderLimit"]
       17 CALL                             R5 1 -1
       18 CALL                             R4 -1 2
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R8 0 1
       26 MOVE                             R9 R2
       27 SETLIST                          R8 R9 1 [1]
       29 CALL                             R6 2 1
       30 GETUPVAL                         R7 4
       31 GETTABLEKS                       R7 R7 K1 ["useState"]
       33 NAMECALL                         R8 R0 K4 ["getSearchFolderCount"]
       35 CALL                             R8 1 -1
       36 CALL                             R7 -1 2
       37 GETUPVAL                         R9 4
       38 GETTABLEKS                       R9 R9 K3 ["useMemo"]
       40 NEWCLOSURE                       R10 P1
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R6
       44 NEWTABLE                         R11 0 3
       46 MOVE                             R12 R7
       47 MOVE                             R13 R6
       48 MOVE                             R14 R4
       49 SETLIST                          R11 R12 3 [1]
       51 CALL                             R9 2 1
       52 GETUPVAL                         R10 4
       53 GETTABLEKS                       R10 R10 K3 ["useMemo"]
       55 NEWCLOSURE                       R11 P2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R7
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R2
       60 NEWTABLE                         R12 0 3
       62 MOVE                             R13 R3
       63 MOVE                             R14 R7
       64 MOVE                             R15 R2
       65 SETLIST                          R12 R13 3 [1]
       67 CALL                             R10 2 1
       68 GETUPVAL                         R11 4
       69 GETTABLEKS                       R11 R11 K5 ["useEffect"]
       71 NEWCLOSURE                       R12 P3
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R8
       76 CAPTURE                          UPVAL U6
       77 NEWTABLE                         R13 0 0
       79 CALL                             R11 2 0
       80 DUPTABLE                         R11 K8 [{"Groups", "SeeAllFolders"}]
       81 SETTABLEKS                       R10 R11 K6 ["Groups"]
       83 SETTABLEKS                       R9 R11 K7 ["SeeAllFolders"]
       85 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["cleanConnections"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K13 ["useItems"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K14 ["useSearchInfo"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K15 ["Controllers"]
       54 GETTABLEKS                       R7 R7 K16 ["ItemsController"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K8 ["Src"]
       61 GETTABLEKS                       R8 R8 K15 ["Controllers"]
       63 GETTABLEKS                       R8 R8 K17 ["LayoutController"]
       65 CALL                             R7 1 1
       66 DUPCLOSURE                       R8 K18 [PROTO_7]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R3
       74 RETURN                           R8 1
