PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+52]
        3 NEWTABLE                         R0 0 0
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 NEWTABLE                         R6 0 0
       11 MOVE                             R7 R5
       12 LOADNIL                          R8
       13 LOADNIL                          R9
       14 FORGPREP                         R7
       15 GETUPVAL                         R12 2
       16 MOVE                             R13 R11
       17 GETUPVAL                         R14 3
       18 GETUPVAL                         R15 4
       19 GETUPVAL                         R16 5
       20 CALL                             R12 4 1
       21 JUMPIFEQKNIL                     R12 ; [+8]
       23 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       25 MOVE                             R14 R6
       26 MOVE                             R15 R12
       27 GETIMPORT                        R13 K2 [table.insert]
       29 CALL                             R13 2 0
       30 FORGLOOP                         R7 2 ; [-16]
       32 LENGTH                           R7 R6
       33 LOADN                            R8 0
       34 JUMPIFNOTLT                      R8 R7 ; [+10]
       36 DUPTABLE                         R9 K4 [{"items"}]
       37 SETTABLEKS                       R6 R9 K3 ["items"]
       39 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       41 MOVE                             R8 R0
       42 GETIMPORT                        R7 K2 [table.insert]
       44 CALL                             R7 2 0
       45 FORGLOOP                         R1 2 ; [-37]
       47 GETUPVAL                         R2 4
       48 GETTABLEKS                       R1 R2 K5 ["PluginController"]
       50 MOVE                             R3 R0
       51 NAMECALL                         R1 R1 K6 ["setContextMenuItems"]
       53 CALL                             R1 2 0
       54 RETURN                           R0 0
       55 NEWTABLE                         R0 0 0
       57 GETUPVAL                         R1 1
       58 LOADNIL                          R2
       59 LOADNIL                          R3
       60 FORGPREP                         R1
       61 GETUPVAL                         R6 6
       62 MOVE                             R7 R0
       63 JUMPIFEQKN                       R4 K7 [0] ; [+2]
       65 LOADB                            R8 0 +1
       66 LOADB                            R8 1
       67 CALL                             R6 2 0
       68 MOVE                             R6 R5
       69 LOADNIL                          R7
       70 LOADNIL                          R8
       71 FORGPREP                         R6
       72 GETUPVAL                         R11 7
       73 MOVE                             R12 R10
       74 GETUPVAL                         R13 3
       75 GETUPVAL                         R14 4
       76 GETUPVAL                         R15 5
       77 CALL                             R11 4 1
       78 JUMPIFEQKNIL                     R11 ; [+8]
       80 FASTCALL2                        TABLE_INSERT R0 R11 ; [+5]
       82 MOVE                             R13 R0
       83 MOVE                             R14 R11
       84 GETIMPORT                        R12 K2 [table.insert]
       86 CALL                             R12 2 0
       87 FORGLOOP                         R6 2 ; [-16]
       89 LENGTH                           R7 R0
       90 GETTABLE                         R6 R0 R7
       91 JUMPIFNOT                        R6 ; [+10]
       92 LENGTH                           R8 R0
       93 GETTABLE                         R7 R0 R8
       94 GETTABLEKS                       R6 R7 K8 ["ShowSeparator"]
       96 JUMPIFNOT                        R6 ; [+5]
       97 GETIMPORT                        R6 K10 [table.remove]
       99 MOVE                             R7 R0
      100 LENGTH                           R8 R0
      101 CALL                             R6 2 0
      102 FORGLOOP                         R1 2 ; [-42]
      104 GETUPVAL                         R1 8
      105 CALL                             R1 0 1
      106 JUMPIF                           R1 ; [+9]
      107 GETUPVAL                         R1 9
      108 GETUPVAL                         R3 4
      109 GETTABLEKS                       R2 R3 K5 ["PluginController"]
      111 NAMECALL                         R2 R2 K11 ["getPlugin"]
      113 CALL                             R2 1 1
      114 MOVE                             R3 R0
      115 CALL                             R1 2 0
      116 RETURN                           R0 0

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
       49 CAPTURE                          UPVAL U10
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U11
       54 CAPTURE                          UPVAL U12
       55 CAPTURE                          UPVAL U13
       56 CAPTURE                          UPVAL U14
       57 NEWTABLE                         R5 0 2
       59 MOVE                             R6 R0
       60 MOVE                             R7 R1
       61 SETLIST                          R5 R6 2 [1]
       63 CALL                             R3 2 -1
       64 RETURN                           R3 -1

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
       55 GETTABLEKS                       R10 R11 K18 ["addSeparatorIfNeeded_DEPRECATED"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R14 R0 K9 ["Src"]
       62 GETTABLEKS                       R13 R14 K15 ["Util"]
       64 GETTABLEKS                       R12 R13 K16 ["ContextMenu"]
       66 GETTABLEKS                       R11 R12 K19 ["createDFMenuItemRecursive_DEPRECATED"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R15 R0 K9 ["Src"]
       73 GETTABLEKS                       R14 R15 K15 ["Util"]
       75 GETTABLEKS                       R13 R14 K16 ["ContextMenu"]
       77 GETTABLEKS                       R12 R13 K20 ["createFoundationMenuItemRecursive"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R15 R0 K9 ["Src"]
       84 GETTABLEKS                       R14 R15 K15 ["Util"]
       86 GETTABLEKS                       R13 R14 K21 ["isCli"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R16 R0 K9 ["Src"]
       93 GETTABLEKS                       R15 R16 K22 ["Controllers"]
       95 GETTABLEKS                       R14 R15 K23 ["ExplorerController"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R17 R0 K9 ["Src"]
      102 GETTABLEKS                       R16 R17 K22 ["Controllers"]
      104 GETTABLEKS                       R15 R16 K24 ["ItemsController"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R18 R0 K9 ["Src"]
      111 GETTABLEKS                       R17 R18 K22 ["Controllers"]
      113 GETTABLEKS                       R16 R17 K25 ["LayoutController"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R18 R0 K9 ["Src"]
      120 GETTABLEKS                       R17 R18 K26 ["Networking"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R20 R0 K9 ["Src"]
      127 GETTABLEKS                       R19 R20 K22 ["Controllers"]
      129 GETTABLEKS                       R18 R19 K27 ["PluginController"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R21 R0 K9 ["Src"]
      136 GETTABLEKS                       R20 R21 K22 ["Controllers"]
      138 GETTABLEKS                       R19 R20 K28 ["SearchController"]
      140 CALL                             R18 1 1
      141 GETIMPORT                        R19 K5 [require]
      143 GETTABLEKS                       R22 R0 K9 ["Src"]
      145 GETTABLEKS                       R21 R22 K29 ["Flags"]
      147 GETTABLEKS                       R20 R21 K30 ["getFFlagAmrFoundationifyContextMenu"]
      149 CALL                             R19 1 1
      150 DUPCLOSURE                       R20 K31 [PROTO_1]
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R19
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R7
      166 RETURN                           R20 1
