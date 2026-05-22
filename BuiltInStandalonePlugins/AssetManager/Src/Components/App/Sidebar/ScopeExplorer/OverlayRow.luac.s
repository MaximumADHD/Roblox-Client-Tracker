PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Loading"]
        6 DUPTABLE                         R2 K5 [{"size", "AnchorPoint", "Position"}]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K6 ["Enums"]
       10 GETTABLEKS                       R3 R3 K7 ["IconSize"]
       12 GETTABLEKS                       R3 R3 K8 ["XSmall"]
       14 SETTABLEKS                       R3 R2 K2 ["size"]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K9 ["AnchorCenter"]
       19 SETTABLEKS                       R3 R2 K3 ["AnchorPoint"]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K10 ["PositionCenter"]
       24 SETTABLEKS                       R3 R2 K4 ["Position"]
       26 CALL                             R0 2 -1
       27 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Image"]
        6 DUPTABLE                         R2 K4 [{"tag", "testId"}]
        7 LOADK                            R3 K5 ["icon-notification size-300"]
        8 SETTABLEKS                       R3 R2 K2 ["tag"]
       10 LOADK                            R3 K6 ["scope-overlay-notification-icon"]
       11 SETTABLEKS                       R3 R2 K3 ["testId"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["ScopeUid"]
        6 SETLIST                          R2 R3 1 [1]
        8 NAMECALL                         R0 R0 K1 ["requestFolderReadiness"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["createElement"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K2 ["Tooltip"]
       14 DUPTABLE                         R5 K6 [{"title", "body", "side"}]
       15 LOADK                            R8 K2 ["Tooltip"]
       16 LOADK                            R9 K7 ["FoldersNotReady"]
       17 NAMECALL                         R6 R2 K8 ["getText"]
       19 CALL                             R6 3 1
       20 SETTABLEKS                       R6 R5 K3 ["title"]
       22 LOADK                            R8 K2 ["Tooltip"]
       23 LOADK                            R9 K9 ["FoldersNotReadyBody"]
       24 NAMECALL                         R6 R2 K8 ["getText"]
       26 CALL                             R6 3 1
       27 SETTABLEKS                       R6 R5 K4 ["body"]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K10 ["Enums"]
       32 GETTABLEKS                       R6 R6 K11 ["PopoverSide"]
       34 GETTABLEKS                       R6 R6 K12 ["Bottom"]
       36 SETTABLEKS                       R6 R5 K5 ["side"]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K1 ["createElement"]
       41 GETUPVAL                         R7 3
       42 GETTABLEKS                       R7 R7 K13 ["IconButton"]
       44 DUPTABLE                         R8 K20 [{"icon", "size", "variant", "onActivated", "stateLayer", "testId"}]
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R9 R9 K10 ["Enums"]
       48 GETTABLEKS                       R9 R9 K21 ["IconName"]
       50 GETTABLEKS                       R9 R9 K22 ["TriangleExclamation"]
       52 SETTABLEKS                       R9 R8 K14 ["icon"]
       54 GETUPVAL                         R9 3
       55 GETTABLEKS                       R9 R9 K10 ["Enums"]
       57 GETTABLEKS                       R9 R9 K23 ["InputSize"]
       59 GETTABLEKS                       R9 R9 K24 ["XSmall"]
       61 SETTABLEKS                       R9 R8 K15 ["size"]
       63 GETUPVAL                         R9 3
       64 GETTABLEKS                       R9 R9 K10 ["Enums"]
       66 GETTABLEKS                       R9 R9 K25 ["ButtonVariant"]
       68 GETTABLEKS                       R9 R9 K26 ["Utility"]
       70 SETTABLEKS                       R9 R8 K16 ["variant"]
       72 NEWCLOSURE                       R9 P0
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R9 R8 K17 ["onActivated"]
       77 DUPTABLE                         R9 K28 [{"affordance"}]
       78 GETUPVAL                         R10 3
       79 GETTABLEKS                       R10 R10 K10 ["Enums"]
       81 GETTABLEKS                       R10 R10 K29 ["StateLayerAffordance"]
       83 GETTABLEKS                       R10 R10 K30 ["None"]
       85 SETTABLEKS                       R10 R9 K27 ["affordance"]
       87 SETTABLEKS                       R9 R8 K18 ["stateLayer"]
       89 LOADK                            R9 K31 ["scope-overlay-folder-not-ready-icon"]
       90 SETTABLEKS                       R9 R8 K19 ["testId"]
       92 CALL                             R6 2 -1
       93 CALL                             R3 -1 -1
       94 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["IsSelected"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADK                            R1 K1 ["bg-action-selected"]
        4 JUMP                             ; [+6]
        5 GETTABLEKS                       R2 R0 K2 ["IsHovered"]
        7 JUMPIFNOT                        R2 ; [+2]
        8 LOADK                            R1 K3 ["am-bg-action-hover"]
        9 JUMP                             ; [+1]
       10 LOADK                            R1 K4 ["bg-surface-100"]
       11 GETTABLEKS                       R3 R0 K5 ["IconType"]
       13 JUMPIFNOTEQKS                    R3 K6 ["Spinner"] ; [+7]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K7 ["createElement"]
       18 GETUPVAL                         R3 1
       19 CALL                             R2 1 1
       20 JUMP                             ; [+20]
       21 GETTABLEKS                       R3 R0 K5 ["IconType"]
       23 JUMPIFNOTEQKS                    R3 K8 ["Notification"] ; [+7]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K7 ["createElement"]
       28 GETUPVAL                         R3 2
       29 CALL                             R2 1 1
       30 JUMP                             ; [+10]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K7 ["createElement"]
       34 GETUPVAL                         R3 3
       35 DUPTABLE                         R4 K10 [{"ScopeUid"}]
       36 GETTABLEKS                       R5 R0 K9 ["ScopeUid"]
       38 SETTABLEKS                       R5 R4 K9 ["ScopeUid"]
       40 CALL                             R2 2 1
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K7 ["createElement"]
       44 GETUPVAL                         R4 4
       45 GETTABLEKS                       R4 R4 K11 ["View"]
       47 DUPTABLE                         R5 K15 [{"LayoutOrder", "Position", "tag"}]
       48 GETTABLEKS                       R6 R0 K16 ["Index"]
       50 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
       52 GETTABLEKS                       R6 R0 K13 ["Position"]
       54 SETTABLEKS                       R6 R5 K13 ["Position"]
       56 LOADK                            R7 K17 ["radius-small size-600 align-x-center align-y-center %*"]
       57 MOVE                             R9 R1
       58 NAMECALL                         R7 R7 K18 ["format"]
       60 CALL                             R7 2 1
       61 MOVE                             R6 R7
       62 SETTABLEKS                       R6 R5 K14 ["tag"]
       64 MOVE                             R6 R2
       65 CALL                             R3 3 -1
       66 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 2
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 3
        9 MOVE                             R6 R1
       10 CALL                             R5 1 1
       11 GETTABLEKS                       R7 R1 K1 ["Uid"]
       13 GETTABLE                         R6 R3 R7
       14 GETTABLEKS                       R8 R2 K1 ["Uid"]
       16 GETTABLEKS                       R9 R1 K1 ["Uid"]
       18 JUMPIFEQ                         R8 R9 ; [+2]
       20 LOADB                            R7 0 +1
       21 LOADB                            R7 1
       22 GETUPVAL                         R8 4
       23 GETTABLEKS                       R9 R0 K2 ["Position"]
       25 GETTABLEKS                       R9 R9 K3 ["Y"]
       27 GETTABLEKS                       R9 R9 K4 ["Offset"]
       29 CALL                             R8 1 1
       30 GETTABLEKS                       R10 R1 K1 ["Uid"]
       32 GETTABLE                         R9 R4 R10
       33 JUMPIF                           R9 ; [+4]
       34 JUMPIFEQKNIL                     R5 ; [+2]
       36 LOADB                            R9 0 +1
       37 LOADB                            R9 1
       38 JUMPIF                           R9 ; [+10]
       39 JUMPIF                           R6 ; [+9]
       40 GETUPVAL                         R10 5
       41 GETTABLEKS                       R10 R10 K5 ["InventoryFolderStatus"]
       43 GETTABLEKS                       R10 R10 K6 ["FoldersReady"]
       45 JUMPIFNOTEQ                      R5 R10 ; [+3]
       47 LOADNIL                          R10
       48 RETURN                           R10 1
       49 JUMPIFNOT                        R9 ; [+2]
       50 LOADK                            R10 K7 ["Spinner"]
       51 JUMP                             ; [+4]
       52 JUMPIFNOT                        R6 ; [+2]
       53 LOADK                            R10 K8 ["Notification"]
       54 JUMP                             ; [+1]
       55 LOADK                            R10 K9 ["Warning"]
       56 GETUPVAL                         R11 6
       57 GETTABLEKS                       R11 R11 K10 ["createElement"]
       59 GETUPVAL                         R12 7
       60 DUPTABLE                         R13 K16 [{"Index", "Position", "IconType", "ScopeUid", "IsSelected", "IsHovered"}]
       61 GETTABLEKS                       R14 R0 K11 ["Index"]
       63 SETTABLEKS                       R14 R13 K11 ["Index"]
       65 GETTABLEKS                       R14 R0 K2 ["Position"]
       67 SETTABLEKS                       R14 R13 K2 ["Position"]
       69 SETTABLEKS                       R10 R13 K12 ["IconType"]
       71 GETTABLEKS                       R14 R1 K1 ["Uid"]
       73 SETTABLEKS                       R14 R13 K13 ["ScopeUid"]
       75 SETTABLEKS                       R7 R13 K14 ["IsSelected"]
       77 SETTABLEKS                       R8 R13 K15 ["IsHovered"]
       79 CALL                             R11 2 -1
       80 RETURN                           R11 -1

PROTO_6:
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
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["StyleConstants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R2 K14 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K15 ["Localization"]
       48 GETIMPORT                        R8 K5 [require]
       50 GETIMPORT                        R9 K1 [script]
       52 GETTABLEKS                       R9 R9 K16 ["Parent"]
       54 GETTABLEKS                       R9 R9 K17 ["Row"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K10 ["Src"]
       61 GETTABLEKS                       R10 R10 K18 ["Controllers"]
       63 GETTABLEKS                       R10 R10 K19 ["ExplorerController"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K10 ["Src"]
       70 GETTABLEKS                       R11 R11 K20 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K21 ["useCurrentScope"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K10 ["Src"]
       79 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K22 ["useIsFetchingFolders"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K10 ["Src"]
       88 GETTABLEKS                       R13 R13 K20 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K23 ["useIsFolderReady"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K10 ["Src"]
       97 GETTABLEKS                       R14 R14 K20 ["Hooks"]
       99 GETTABLEKS                       R14 R14 K24 ["useScopeNotifications"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K10 ["Src"]
      106 GETTABLEKS                       R15 R15 K20 ["Hooks"]
      108 GETTABLEKS                       R15 R15 K25 ["useSidebarScopeHovered"]
      110 CALL                             R14 1 1
      111 DUPCLOSURE                       R15 K26 [PROTO_0]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R4
      115 DUPCLOSURE                       R16 K27 [PROTO_1]
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R1
      118 DUPCLOSURE                       R17 K28 [PROTO_3]
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R1
      123 DUPCLOSURE                       R18 K29 [PROTO_4]
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R1
      129 DUPCLOSURE                       R19 K30 [PROTO_5]
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R18
      138 DUPCLOSURE                       R20 K31 [PROTO_6]
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R19
      142 RETURN                           R20 1
