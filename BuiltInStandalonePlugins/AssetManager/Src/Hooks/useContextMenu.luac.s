PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 NEWTABLE                         R6 0 0
        8 MOVE                             R7 R5
        9 LOADNIL                          R8
       10 LOADNIL                          R9
       11 FORGPREP                         R7
       12 GETUPVAL                         R12 1
       13 MOVE                             R13 R11
       14 GETUPVAL                         R14 2
       15 GETUPVAL                         R15 3
       16 GETUPVAL                         R16 4
       17 CALL                             R12 4 1
       18 JUMPIFEQKNIL                     R12 ; [+8]
       20 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       22 MOVE                             R14 R6
       23 MOVE                             R15 R12
       24 GETIMPORT                        R13 K2 [table.insert]
       26 CALL                             R13 2 0
       27 FORGLOOP                         R7 2 ; [-16]
       29 LENGTH                           R7 R6
       30 LOADN                            R8 0
       31 JUMPIFNOTLT                      R8 R7 ; [+10]
       33 DUPTABLE                         R9 K4 [{"items"}]
       34 SETTABLEKS                       R6 R9 K3 ["items"]
       36 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       38 MOVE                             R8 R0
       39 GETIMPORT                        R7 K2 [table.insert]
       41 CALL                             R7 2 0
       42 FORGLOOP                         R1 2 ; [-37]
       44 GETUPVAL                         R1 3
       45 GETTABLEKS                       R1 R1 K5 ["PluginController"]
       47 MOVE                             R3 R0
       48 NAMECALL                         R1 R1 K6 ["setContextMenuItems"]
       50 CALL                             R1 2 0
       51 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K7 [{"ItemsController", "SearchController", "ExplorerController", "PluginController", "LayoutController", "Networking", "Localization"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K8 ["use"]
        4 CALL                             R3 0 1
        5 SETTABLEKS                       R3 R2 K0 ["ItemsController"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K8 ["use"]
       10 CALL                             R3 0 1
       11 SETTABLEKS                       R3 R2 K1 ["SearchController"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K8 ["use"]
       16 CALL                             R3 0 1
       17 SETTABLEKS                       R3 R2 K2 ["ExplorerController"]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K8 ["use"]
       22 CALL                             R3 0 1
       23 SETTABLEKS                       R3 R2 K3 ["PluginController"]
       25 GETUPVAL                         R3 4
       26 GETTABLEKS                       R3 R3 K8 ["use"]
       28 CALL                             R3 0 1
       29 SETTABLEKS                       R3 R2 K4 ["LayoutController"]
       31 GETUPVAL                         R3 5
       32 GETTABLEKS                       R3 R3 K8 ["use"]
       34 CALL                             R3 0 1
       35 SETTABLEKS                       R3 R2 K5 ["Networking"]
       37 GETUPVAL                         R3 6
       38 GETTABLEKS                       R3 R3 K8 ["use"]
       40 CALL                             R3 0 1
       41 SETTABLEKS                       R3 R2 K6 ["Localization"]
       43 GETUPVAL                         R3 7
       44 GETTABLEKS                       R3 R3 K9 ["useCallback"]
       46 NEWCLOSURE                       R4 P0
       47 CAPTURE                          UPVAL U8
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R1
       52 NEWTABLE                         R5 0 2
       54 MOVE                             R6 R0
       55 MOVE                             R7 R1
       56 SETLIST                          R5 R6 2 [1]
       58 CALL                             R3 2 -1
       59 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K11 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K12 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Util"]
       38 GETTABLEKS                       R7 R7 K14 ["ContextMenu"]
       40 GETTABLEKS                       R7 R7 K15 ["Options"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K9 ["Src"]
       47 GETTABLEKS                       R8 R8 K13 ["Util"]
       49 GETTABLEKS                       R8 R8 K14 ["ContextMenu"]
       51 GETTABLEKS                       R8 R8 K16 ["createFoundationMenuItemRecursive"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K9 ["Src"]
       58 GETTABLEKS                       R9 R9 K17 ["Controllers"]
       60 GETTABLEKS                       R9 R9 K18 ["ExplorerController"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K9 ["Src"]
       67 GETTABLEKS                       R10 R10 K17 ["Controllers"]
       69 GETTABLEKS                       R10 R10 K19 ["ItemsController"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K9 ["Src"]
       76 GETTABLEKS                       R11 R11 K17 ["Controllers"]
       78 GETTABLEKS                       R11 R11 K20 ["LayoutController"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K9 ["Src"]
       85 GETTABLEKS                       R12 R12 K21 ["Networking"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K9 ["Src"]
       92 GETTABLEKS                       R13 R13 K17 ["Controllers"]
       94 GETTABLEKS                       R13 R13 K22 ["PluginController"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K9 ["Src"]
      101 GETTABLEKS                       R14 R14 K17 ["Controllers"]
      103 GETTABLEKS                       R14 R14 K23 ["SearchController"]
      105 CALL                             R13 1 1
      106 DUPCLOSURE                       R14 K24 [PROTO_1]
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R7
      117 RETURN                           R14 1
