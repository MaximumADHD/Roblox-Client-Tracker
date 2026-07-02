PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearRecentlyCreatedFolder"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearRecentlyCreatedFolder"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 GETIMPORT                        R0 K3 [task.cancel]
        9 GETUPVAL                         R1 2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K1 ["getRecentlyCreatedFolder"]
        8 CALL                             R0 1 1
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["Uid"]
       13 JUMPIFEQ                         R0 R1 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 3
       17 LOADB                            R2 1
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 1
       20 MOVE                             R3 R0
       21 NAMECALL                         R1 R1 K3 ["getFolderIndex"]
       23 CALL                             R1 2 1
       24 JUMPIFEQKNIL                     R1 ; [+6]
       26 GETUPVAL                         R2 4
       27 MOVE                             R4 R1
       28 NAMECALL                         R2 R2 K4 ["scrollToSidebarItem"]
       30 CALL                             R2 2 0
       31 GETIMPORT                        R2 K7 [task.delay]
       33 GETUPVAL                         R3 5
       34 GETTABLEKS                       R3 R3 K8 ["RecentlyCreatedFolderHighlightTime"]
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U3
       39 CALL                             R2 2 1
       40 NEWCLOSURE                       R3 P1
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R2
       44 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["useRef"]
       11 LOADNIL                          R4
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R0 K2 ["Item"]
       15 GETUPVAL                         R5 3
       16 CALL                             R5 0 1
       17 GETTABLEKS                       R7 R5 K3 ["Uid"]
       19 GETTABLEKS                       R8 R4 K3 ["Uid"]
       21 JUMPIFEQ                         R7 R8 ; [+2]
       23 LOADB                            R6 0 +1
       24 LOADB                            R6 1
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R8 R0 K4 ["Position"]
       28 GETTABLEKS                       R8 R8 K5 ["Y"]
       30 GETTABLEKS                       R8 R8 K6 ["Offset"]
       32 CALL                             R7 1 1
       33 GETUPVAL                         R8 5
       34 MOVE                             R9 R3
       35 MOVE                             R10 R4
       36 CALL                             R8 2 1
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R9 R9 K7 ["useState"]
       40 LOADB                            R10 0
       41 CALL                             R9 1 2
       42 GETUPVAL                         R11 2
       43 GETTABLEKS                       R11 R11 K8 ["useEffect"]
       45 NEWCLOSURE                       R12 P0
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R10
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U6
       52 NEWTABLE                         R13 0 2
       54 MOVE                             R14 R4
       55 GETTABLEKS                       R15 R4 K3 ["Uid"]
       57 SETLIST                          R13 R14 2 [1]
       59 CALL                             R11 2 0
       60 GETUPVAL                         R11 2
       61 GETTABLEKS                       R11 R11 K9 ["createElement"]
       63 GETUPVAL                         R12 7
       64 GETTABLEKS                       R12 R12 K10 ["View"]
       66 DUPTABLE                         R13 K15 [{"LayoutOrder", "Position", "ref", "tag", "testId"}]
       67 GETTABLEKS                       R14 R0 K16 ["Index"]
       69 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       71 GETTABLEKS                       R14 R0 K4 ["Position"]
       73 SETTABLEKS                       R14 R13 K4 ["Position"]
       75 SETTABLEKS                       R3 R13 K12 ["ref"]
       77 NEWTABLE                         R14 4 0
       79 LOADB                            R15 1
       80 SETTABLEKS                       R15 R14 K17 ["size-full-600 radius-small"]
       82 JUMPIFNOT                        R6 ; [+2]
       83 LOADK                            R15 K18 ["bg-action-selected"]
       84 JUMP                             ; [+4]
       85 JUMPIFNOT                        R7 ; [+2]
       86 LOADK                            R15 K19 ["am-bg-action-hover"]
       87 JUMP                             ; [+1]
       88 LOADK                            R15 K20 [""]
       89 LOADB                            R16 1
       90 SETTABLE                         R16 R14 R15
       91 OR                               R15 R8 R9
       92 SETTABLEKS                       R15 R14 K21 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
       94 SETTABLEKS                       R14 R13 K13 ["tag"]
       96 LOADK                            R15 K22 ["underlay-row%*"]
       97 JUMPIFNOT                        R9 ; [+2]
       98 LOADK                            R17 K23 ["-new"]
       99 JUMP                             ; [+1]
      100 LOADK                            R17 K20 [""]
      101 NAMECALL                         R15 R15 K24 ["format"]
      103 CALL                             R15 2 1
      104 MOVE                             R14 R15
      105 SETTABLEKS                       R14 R13 K14 ["testId"]
      107 CALL                             R11 2 -1
      108 RETURN                           R11 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETTABLEKS                       R1 R1 K1 ["Type"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["ScopeType"]
        7 GETTABLEKS                       R2 R2 K3 ["Header"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+3]
       11 LOADNIL                          R1
       12 RETURN                           R1 1
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["createElement"]
       16 GETUPVAL                         R2 2
       17 DUPTABLE                         R3 K7 [{"Index", "Item", "Position"}]
       18 GETTABLEKS                       R4 R0 K5 ["Index"]
       20 SETTABLEKS                       R4 R3 K5 ["Index"]
       22 GETTABLEKS                       R4 R0 K0 ["Item"]
       24 SETTABLEKS                       R4 R3 K0 ["Item"]
       26 GETTABLEKS                       R4 R0 K6 ["Position"]
       28 SETTABLEKS                       R4 R3 K6 ["Position"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Controllers"]
       43 GETTABLEKS                       R6 R6 K14 ["LayoutController"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       52 GETTABLEKS                       R7 R7 K15 ["ExplorerController"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Src"]
       59 GETTABLEKS                       R8 R8 K16 ["Hooks"]
       61 GETTABLEKS                       R8 R8 K17 ["useCurrentScope"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K9 ["Src"]
       68 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       70 GETTABLEKS                       R9 R9 K18 ["useSidebarScopeHovered"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K9 ["Src"]
       77 GETTABLEKS                       R10 R10 K16 ["Hooks"]
       79 GETTABLEKS                       R10 R10 K19 ["useSidebarScopeDragHovered"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETIMPORT                        R11 K1 [script]
       86 GETTABLEKS                       R11 R11 K20 ["Parent"]
       88 GETTABLEKS                       R11 R11 K21 ["Row"]
       90 CALL                             R10 1 1
       91 DUPCLOSURE                       R11 K22 [PROTO_3]
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R1
      100 DUPCLOSURE                       R12 K23 [PROTO_4]
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R11
      104 RETURN                           R12 1
