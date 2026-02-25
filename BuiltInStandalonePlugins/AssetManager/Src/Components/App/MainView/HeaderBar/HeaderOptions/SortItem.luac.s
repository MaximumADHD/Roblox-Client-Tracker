PROTO_0:
        0 JUMPIFNOT                        R0 ; [+13]
        1 GETTABLEKS                       R2 R0 K0 ["Key"]
        3 JUMPIFNOTEQ                      R2 R1 ; [+10]
        5 GETTABLEKS                       R2 R0 K1 ["IsAscending"]
        7 JUMPIFNOT                        R2 ; [+3]
        8 LOADK                            R2 K2 ["Bold"]
        9 LOADK                            R3 K3 ["icon-arrow-up"]
       10 RETURN                           R2 2
       11 LOADK                            R2 K2 ["Bold"]
       12 LOADK                            R3 K4 ["icon-arrow-down"]
       13 RETURN                           R2 2
       14 LOADK                            R2 K5 [""]
       15 LOADK                            R3 K5 [""]
       16 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETTABLEN                        R6 R3 1
       11 GETTABLEKS                       R7 R0 K2 ["Item"]
       13 JUMPIFNOT                        R6 ; [+13]
       14 GETTABLEKS                       R8 R6 K3 ["Key"]
       16 JUMPIFNOTEQ                      R8 R7 ; [+10]
       18 GETTABLEKS                       R8 R6 K4 ["IsAscending"]
       20 JUMPIFNOT                        R8 ; [+3]
       21 LOADK                            R4 K5 ["Bold"]
       22 LOADK                            R5 K6 ["icon-arrow-up"]
       23 JUMP                             ; [+5]
       24 LOADK                            R4 K5 ["Bold"]
       25 LOADK                            R5 K7 ["icon-arrow-down"]
       26 JUMP                             ; [+2]
       27 LOADK                            R4 K8 [""]
       28 LOADK                            R5 K8 [""]
       29 LOADK                            R8 K9 ["AssetProperty"]
       30 GETTABLEKS                       R9 R0 K2 ["Item"]
       32 NAMECALL                         R6 R2 K10 ["getText"]
       34 CALL                             R6 3 1
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R7 R8 K11 ["createElement"]
       38 GETUPVAL                         R8 4
       39 NEWTABLE                         R9 4 0
       41 GETTABLEKS                       R10 R0 K12 ["LayoutOrder"]
       43 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       45 GETTABLEKS                       R10 R0 K13 ["Activated"]
       47 SETTABLEKS                       R10 R9 K14 ["OnClick"]
       49 GETUPVAL                         R10 5
       50 LOADK                            R12 K15 ["SortItemSize"]
       51 NAMECALL                         R10 R10 K16 ["GetAttribute"]
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R9 K17 ["Size"]
       56 GETUPVAL                         R11 3
       57 GETTABLEKS                       R10 R11 K18 ["Tag"]
       59 LOADK                            R11 K19 ["X-Fit Secondary X-Row X-Left X-Middle"]
       60 SETTABLE                         R11 R9 R10
       61 DUPTABLE                         R10 K22 [{"Label", "ArrowIcon"}]
       62 GETUPVAL                         R12 3
       63 GETTABLEKS                       R11 R12 K11 ["createElement"]
       65 GETUPVAL                         R12 6
       66 NEWTABLE                         R13 4 0
       68 NAMECALL                         R14 R1 K23 ["getNextOrder"]
       70 CALL                             R14 1 1
       71 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
       73 SETTABLEKS                       R6 R13 K24 ["Text"]
       75 GETIMPORT                        R14 K28 [Enum.TextTruncate.AtEnd]
       77 SETTABLEKS                       R14 R13 K26 ["TextTruncate"]
       79 GETUPVAL                         R15 3
       80 GETTABLEKS                       R14 R15 K18 ["Tag"]
       82 LOADK                            R16 K29 ["X-Fit Left X-Pad %*"]
       83 MOVE                             R18 R4
       84 NAMECALL                         R16 R16 K30 ["format"]
       86 CALL                             R16 2 1
       87 MOVE                             R15 R16
       88 SETTABLE                         R15 R13 R14
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K20 ["Label"]
       92 JUMPIFEQKS                       R4 K8 [""] ; [+24]
       94 GETUPVAL                         R12 3
       95 GETTABLEKS                       R11 R12 K11 ["createElement"]
       97 GETUPVAL                         R12 7
       98 NEWTABLE                         R13 2 0
      100 NAMECALL                         R14 R1 K23 ["getNextOrder"]
      102 CALL                             R14 1 1
      103 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
      105 GETUPVAL                         R15 3
      106 GETTABLEKS                       R14 R15 K18 ["Tag"]
      108 LOADK                            R16 K31 ["Icon16 %*"]
      109 MOVE                             R18 R5
      110 NAMECALL                         R16 R16 K30 ["format"]
      112 CALL                             R16 2 1
      113 MOVE                             R15 R16
      114 SETTABLE                         R15 R13 R14
      115 CALL                             R11 2 1
      116 JUMP                             ; [+1]
      117 LOADNIL                          R11
      118 SETTABLEKS                       R11 R10 K21 ["ArrowIcon"]
      120 CALL                             R7 3 -1
      121 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Image"]
       29 GETTABLEKS                       R7 R5 K13 ["Pane"]
       31 GETTABLEKS                       R8 R5 K14 ["TextLabel"]
       33 GETIMPORT                        R9 K5 [require]
       35 GETTABLEKS                       R12 R0 K15 ["Src"]
       37 GETTABLEKS                       R11 R12 K16 ["Hooks"]
       39 GETTABLEKS                       R10 R11 K17 ["useSortFilter"]
       41 CALL                             R9 1 1
       42 GETIMPORT                        R10 K5 [require]
       44 GETTABLEKS                       R12 R0 K15 ["Src"]
       46 GETTABLEKS                       R11 R12 K18 ["Types"]
       48 CALL                             R10 1 1
       49 GETIMPORT                        R11 K5 [require]
       51 GETTABLEKS                       R14 R0 K15 ["Src"]
       53 GETTABLEKS                       R13 R14 K19 ["Resources"]
       55 GETTABLEKS                       R12 R13 K20 ["PluginStyles"]
       57 CALL                             R11 1 1
       58 GETTABLEKS                       R13 R2 K21 ["Util"]
       60 GETTABLEKS                       R12 R13 K22 ["LayoutOrderIterator"]
       62 DUPCLOSURE                       R13 K23 [PROTO_0]
       63 DUPCLOSURE                       R14 K24 [PROTO_1]
       64 CAPTURE                          VAL R12
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R6
       72 RETURN                           R14 1
