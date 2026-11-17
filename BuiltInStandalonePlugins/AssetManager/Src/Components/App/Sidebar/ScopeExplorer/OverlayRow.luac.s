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
        6 DUPTABLE                         R2 K6 [{["tag"] = "icon-notification size-300", ["testId"] = "scope-overlay-notification-icon"}]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

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
       44 DUPTABLE                         R8 K21 [{["icon"], ["size"], ["variant"], ["onActivated"], ["stateLayer"], ["testId"] = "scope-overlay-folder-not-ready-icon"}]
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R9 R9 K10 ["Enums"]
       48 GETTABLEKS                       R9 R9 K22 ["IconName"]
       50 GETTABLEKS                       R9 R9 K23 ["TriangleExclamation"]
       52 SETTABLEKS                       R9 R8 K14 ["icon"]
       54 GETUPVAL                         R9 3
       55 GETTABLEKS                       R9 R9 K10 ["Enums"]
       57 GETTABLEKS                       R9 R9 K24 ["InputSize"]
       59 GETTABLEKS                       R9 R9 K25 ["XSmall"]
       61 SETTABLEKS                       R9 R8 K15 ["size"]
       63 GETUPVAL                         R9 3
       64 GETTABLEKS                       R9 R9 K10 ["Enums"]
       66 GETTABLEKS                       R9 R9 K26 ["ButtonVariant"]
       68 GETTABLEKS                       R9 R9 K27 ["Utility"]
       70 SETTABLEKS                       R9 R8 K16 ["variant"]
       72 NEWCLOSURE                       R9 P0
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R9 R8 K17 ["onActivated"]
       77 DUPTABLE                         R9 K29 [{"affordance"}]
       78 GETUPVAL                         R10 3
       79 GETTABLEKS                       R10 R10 K10 ["Enums"]
       81 GETTABLEKS                       R10 R10 K30 ["StateLayerAffordance"]
       83 GETTABLEKS                       R10 R10 K31 ["None"]
       85 SETTABLEKS                       R10 R9 K28 ["affordance"]
       87 SETTABLEKS                       R9 R8 K18 ["stateLayer"]
       89 CALL                             R6 2 -1
       90 CALL                             R3 -1 -1
       91 RETURN                           R3 -1

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
       56 LOADK                            R6 K17 ["align-x-center align-y-center size-600 radius-small %*"]
       57 MOVE                             R8 R1
       58 NAMECALL                         R6 R6 K18 ["format"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K14 ["tag"]
       63 MOVE                             R6 R2
       64 CALL                             R3 3 -1
       65 RETURN                           R3 -1

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
       11 GETUPVAL                         R7 4
       12 GETUPVAL                         R8 5
       13 GETTABLEKS                       R8 R8 K1 ["IxpVariable"]
       15 GETTABLEKS                       R8 R8 K2 ["Omnisearch"]
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 5
       19 GETTABLEKS                       R8 R8 K3 ["IxpValue"]
       21 GETTABLEKS                       R8 R8 K4 ["Experiment"]
       23 JUMPIFEQ                         R7 R8 ; [+2]
       25 LOADB                            R6 0 +1
       26 LOADB                            R6 1
       27 GETTABLEKS                       R8 R1 K5 ["Uid"]
       29 GETTABLE                         R7 R3 R8
       30 GETTABLEKS                       R9 R2 K5 ["Uid"]
       32 GETTABLEKS                       R10 R1 K5 ["Uid"]
       34 JUMPIFEQ                         R9 R10 ; [+2]
       36 LOADB                            R8 0 +1
       37 LOADB                            R8 1
       38 GETUPVAL                         R9 6
       39 GETTABLEKS                       R10 R0 K6 ["Position"]
       41 GETTABLEKS                       R10 R10 K7 ["Y"]
       43 GETTABLEKS                       R10 R10 K8 ["Offset"]
       45 CALL                             R9 1 1
       46 GETTABLEKS                       R11 R1 K5 ["Uid"]
       48 GETTABLE                         R10 R4 R11
       49 JUMPIFEQKNIL                     R5 ; [+2]
       51 LOADB                            R11 0 +1
       52 LOADB                            R11 1
       53 GETUPVAL                         R13 5
       54 GETTABLEKS                       R13 R13 K9 ["InventoryFolderStatus"]
       56 GETTABLEKS                       R13 R13 K10 ["FoldersNotReady"]
       58 JUMPIFEQ                         R5 R13 ; [+2]
       60 LOADB                            R12 0 +1
       61 LOADB                            R12 1
       62 NOT                              R13 R6
       63 MOVE                             R14 R10
       64 JUMPIF                           R14 ; [+1]
       65 AND                              R14 R13 R11
       66 AND                              R15 R13 R12
       67 JUMPIF                           R14 ; [+4]
       68 JUMPIF                           R7 ; [+3]
       69 JUMPIF                           R15 ; [+2]
       70 LOADNIL                          R16
       71 RETURN                           R16 1
       72 JUMPIFNOT                        R14 ; [+2]
       73 LOADK                            R16 K11 ["Spinner"]
       74 JUMP                             ; [+4]
       75 JUMPIFNOT                        R7 ; [+2]
       76 LOADK                            R16 K12 ["Notification"]
       77 JUMP                             ; [+1]
       78 LOADK                            R16 K13 ["Warning"]
       79 GETUPVAL                         R17 7
       80 GETTABLEKS                       R17 R17 K14 ["createElement"]
       82 GETUPVAL                         R18 8
       83 DUPTABLE                         R19 K20 [{"Index", "Position", "IconType", "ScopeUid", "IsSelected", "IsHovered"}]
       84 GETTABLEKS                       R20 R0 K15 ["Index"]
       86 SETTABLEKS                       R20 R19 K15 ["Index"]
       88 GETTABLEKS                       R20 R0 K6 ["Position"]
       90 SETTABLEKS                       R20 R19 K6 ["Position"]
       92 SETTABLEKS                       R16 R19 K16 ["IconType"]
       94 GETTABLEKS                       R20 R1 K5 ["Uid"]
       96 SETTABLEKS                       R20 R19 K17 ["ScopeUid"]
       98 SETTABLEKS                       R8 R19 K18 ["IsSelected"]
      100 SETTABLEKS                       R9 R19 K19 ["IsHovered"]
      102 CALL                             R17 2 -1
      103 RETURN                           R17 -1

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
       99 GETTABLEKS                       R14 R14 K24 ["useIxpValue"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K10 ["Src"]
      106 GETTABLEKS                       R15 R15 K20 ["Hooks"]
      108 GETTABLEKS                       R15 R15 K25 ["useScopeNotifications"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K10 ["Src"]
      115 GETTABLEKS                       R16 R16 K20 ["Hooks"]
      117 GETTABLEKS                       R16 R16 K26 ["useSidebarScopeHovered"]
      119 CALL                             R15 1 1
      120 DUPCLOSURE                       R16 K27 [PROTO_0]
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R4
      124 DUPCLOSURE                       R17 K28 [PROTO_1]
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R1
      127 DUPCLOSURE                       R18 K29 [PROTO_3]
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R1
      132 DUPCLOSURE                       R19 K30 [PROTO_4]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R1
      138 DUPCLOSURE                       R20 K31 [PROTO_5]
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R19
      148 DUPCLOSURE                       R21 K32 [PROTO_6]
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R20
      152 RETURN                           R21 1
