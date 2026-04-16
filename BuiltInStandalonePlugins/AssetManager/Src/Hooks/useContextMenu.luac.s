PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 1
        7 MOVE                             R7 R0
        8 JUMPIFEQKN                       R4 K0 [0] ; [+2]
       10 LOADB                            R8 0 +1
       11 LOADB                            R8 1
       12 CALL                             R6 2 0
       13 MOVE                             R6 R5
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 GETTABLEKS                       R11 R10 K1 ["ShouldRender"]
       19 JUMPIFEQKNIL                     R11 ; [+8]
       21 GETTABLEKS                       R11 R10 K1 ["ShouldRender"]
       23 GETUPVAL                         R12 2
       24 GETUPVAL                         R13 3
       25 GETUPVAL                         R14 4
       26 CALL                             R11 3 1
       27 JUMPIFNOT                        R11 ; [+13]
       28 GETUPVAL                         R11 5
       29 MOVE                             R12 R10
       30 GETUPVAL                         R13 2
       31 GETUPVAL                         R14 3
       32 GETUPVAL                         R15 4
       33 CALL                             R11 4 1
       34 FASTCALL2                        TABLE_INSERT R0 R11 ; [+5]
       36 MOVE                             R13 R0
       37 MOVE                             R14 R11
       38 GETIMPORT                        R12 K4 [table.insert]
       40 CALL                             R12 2 0
       41 FORGLOOP                         R6 2 ; [-25]
       43 LENGTH                           R7 R0
       44 GETTABLE                         R6 R0 R7
       45 JUMPIFNOT                        R6 ; [+10]
       46 LENGTH                           R8 R0
       47 GETTABLE                         R7 R0 R8
       48 GETTABLEKS                       R6 R7 K5 ["ShowSeparator"]
       50 JUMPIFNOT                        R6 ; [+5]
       51 GETIMPORT                        R6 K7 [table.remove]
       53 MOVE                             R7 R0
       54 LENGTH                           R8 R0
       55 CALL                             R6 2 0
       56 FORGLOOP                         R1 2 ; [-51]
       58 GETUPVAL                         R1 6
       59 CALL                             R1 0 1
       60 JUMPIF                           R1 ; [+9]
       61 GETUPVAL                         R1 7
       62 GETUPVAL                         R3 3
       63 GETTABLEKS                       R2 R3 K8 ["PluginController"]
       65 NAMECALL                         R2 R2 K9 ["getPlugin"]
       67 CALL                             R2 1 1
       68 MOVE                             R3 R0
       69 CALL                             R1 2 0
       70 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K7 [{"ItemsController", "SearchController", "ExplorerController", "PluginController", "LayoutController", "Networking", "Localization"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K8 ["use"]
        4 CALL                             R3 0 1
        5 SETTABLEKS                       R3 R2 K0 ["ItemsController"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K8 ["use"]
       10 CALL                             R3 0 1
       11 SETTABLEKS                       R3 R2 K1 ["SearchController"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K8 ["use"]
       16 CALL                             R3 0 1
       17 SETTABLEKS                       R3 R2 K2 ["ExplorerController"]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R3 R4 K8 ["use"]
       22 CALL                             R3 0 1
       23 SETTABLEKS                       R3 R2 K3 ["PluginController"]
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R3 R4 K8 ["use"]
       28 CALL                             R3 0 1
       29 SETTABLEKS                       R3 R2 K4 ["LayoutController"]
       31 GETUPVAL                         R4 5
       32 GETTABLEKS                       R3 R4 K8 ["use"]
       34 CALL                             R3 0 1
       35 SETTABLEKS                       R3 R2 K5 ["Networking"]
       37 GETUPVAL                         R4 6
       38 GETTABLEKS                       R3 R4 K8 ["use"]
       40 CALL                             R3 0 1
       41 SETTABLEKS                       R3 R2 K6 ["Localization"]
       43 GETUPVAL                         R4 7
       44 GETTABLEKS                       R3 R4 K9 ["useCallback"]
       46 NEWCLOSURE                       R4 P0
       47 CAPTURE                          UPVAL U8
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U10
       53 CAPTURE                          UPVAL U11
       54 CAPTURE                          UPVAL U12
       55 NEWTABLE                         R5 0 2
       57 MOVE                             R6 R0
       58 MOVE                             R7 R1
       59 SETLIST                          R5 R6 2 [1]
       61 CALL                             R3 2 -1
       62 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K11 ["UI"]
       30 GETTABLEKS                       R5 R1 K12 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K13 ["Localization"]
       34 GETTABLEKS                       R7 R4 K14 ["showContextMenu"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R12 R0 K9 ["Src"]
       40 GETTABLEKS                       R11 R12 K15 ["Util"]
       42 GETTABLEKS                       R10 R11 K16 ["ContextMenu"]
       44 GETTABLEKS                       R9 R10 K17 ["Options"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R13 R0 K9 ["Src"]
       51 GETTABLEKS                       R12 R13 K15 ["Util"]
       53 GETTABLEKS                       R11 R12 K16 ["ContextMenu"]
       55 GETTABLEKS                       R10 R11 K18 ["addSeparatorIfNeeded"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R14 R0 K9 ["Src"]
       62 GETTABLEKS                       R13 R14 K15 ["Util"]
       64 GETTABLEKS                       R12 R13 K16 ["ContextMenu"]
       66 GETTABLEKS                       R11 R12 K19 ["createDFMenuItemRecursive"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R14 R0 K9 ["Src"]
       73 GETTABLEKS                       R13 R14 K15 ["Util"]
       75 GETTABLEKS                       R12 R13 K20 ["isCli"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R15 R0 K9 ["Src"]
       82 GETTABLEKS                       R14 R15 K21 ["Controllers"]
       84 GETTABLEKS                       R13 R14 K22 ["ExplorerController"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R16 R0 K9 ["Src"]
       91 GETTABLEKS                       R15 R16 K21 ["Controllers"]
       93 GETTABLEKS                       R14 R15 K23 ["ItemsController"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R17 R0 K9 ["Src"]
      100 GETTABLEKS                       R16 R17 K21 ["Controllers"]
      102 GETTABLEKS                       R15 R16 K24 ["LayoutController"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R17 R0 K9 ["Src"]
      109 GETTABLEKS                       R16 R17 K25 ["Networking"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R19 R0 K9 ["Src"]
      116 GETTABLEKS                       R18 R19 K21 ["Controllers"]
      118 GETTABLEKS                       R17 R18 K26 ["PluginController"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K5 [require]
      123 GETTABLEKS                       R20 R0 K9 ["Src"]
      125 GETTABLEKS                       R19 R20 K21 ["Controllers"]
      127 GETTABLEKS                       R18 R19 K27 ["SearchController"]
      129 CALL                             R17 1 1
      130 DUPCLOSURE                       R18 K28 [PROTO_1]
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R7
      144 RETURN                           R18 1
