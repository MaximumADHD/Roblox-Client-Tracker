PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Localization"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["createElement"]
        7 GETUPVAL                         R4 2
        8 NEWTABLE                         R5 4 0
       10 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       12 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       14 GETTABLEKS                       R6 R0 K3 ["OnActivated"]
       16 SETTABLEKS                       R6 R5 K4 ["OnPress"]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R6 R7 K5 ["Tag"]
       21 LOADK                            R7 K6 ["X-Pad DropdownItem"]
       22 SETTABLE                         R7 R5 R6
       23 DUPTABLE                         R6 K9 [{"Tooltip", "Content"}]
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R7 R8 K1 ["createElement"]
       27 GETUPVAL                         R8 3
       28 DUPTABLE                         R9 K12 [{"TokenInfo", "ErrorStyle"}]
       29 GETTABLEKS                       R10 R0 K10 ["TokenInfo"]
       31 SETTABLEKS                       R10 R9 K10 ["TokenInfo"]
       33 GETTABLEKS                       R10 R0 K11 ["ErrorStyle"]
       35 SETTABLEKS                       R10 R9 K11 ["ErrorStyle"]
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R6 K7 ["Tooltip"]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R7 R8 K1 ["createElement"]
       43 GETUPVAL                         R8 2
       44 NEWTABLE                         R9 1 0
       46 GETUPVAL                         R11 1
       47 GETTABLEKS                       R10 R11 K5 ["Tag"]
       49 LOADK                            R11 K13 ["X-Fill X-RowS X-Middle"]
       50 SETTABLE                         R11 R9 R10
       51 DUPTABLE                         R10 K16 [{"NameText", "SourceLink"}]
       52 GETUPVAL                         R12 1
       53 GETTABLEKS                       R11 R12 K1 ["createElement"]
       55 GETUPVAL                         R12 4
       56 NEWTABLE                         R13 4 0
       58 LOADN                            R14 1
       59 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       61 LOADK                            R16 K17 ["Label"]
       62 LOADK                            R17 K18 ["TokenIn"]
       63 DUPTABLE                         R18 K20 [{"token"}]
       64 GETTABLEKS                       R20 R0 K10 ["TokenInfo"]
       66 GETTABLEKS                       R19 R20 K21 ["Name"]
       68 SETTABLEKS                       R19 R18 K19 ["token"]
       70 NAMECALL                         R14 R2 K22 ["getText"]
       72 CALL                             R14 4 1
       73 SETTABLEKS                       R14 R13 K23 ["Text"]
       75 GETUPVAL                         R15 1
       76 GETTABLEKS                       R14 R15 K5 ["Tag"]
       78 LOADK                            R15 K24 ["TextXAlignLeft X-FitX"]
       79 SETTABLE                         R15 R13 R14
       80 CALL                             R11 2 1
       81 SETTABLEKS                       R11 R10 K14 ["NameText"]
       83 GETTABLEKS                       R12 R0 K10 ["TokenInfo"]
       85 GETTABLEKS                       R11 R12 K25 ["Source"]
       87 JUMPIFNOT                        R11 ; [+15]
       88 GETUPVAL                         R12 1
       89 GETTABLEKS                       R11 R12 K1 ["createElement"]
       91 GETUPVAL                         R12 5
       92 DUPTABLE                         R13 K26 [{"Source", "LayoutOrder"}]
       93 GETTABLEKS                       R15 R0 K10 ["TokenInfo"]
       95 GETTABLEKS                       R14 R15 K25 ["Source"]
       97 SETTABLEKS                       R14 R13 K25 ["Source"]
       99 LOADN                            R14 2
      100 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
      102 CALL                             R11 2 1
      103 SETTABLEKS                       R11 R10 K15 ["SourceLink"]
      105 CALL                             R7 3 1
      106 SETTABLEKS                       R7 R6 K8 ["Content"]
      108 CALL                             R3 3 -1
      109 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R4 R2 K8 ["UI"]
       27 GETTABLEKS                       R3 R4 K9 ["Pane"]
       29 GETTABLEKS                       R5 R2 K8 ["UI"]
       31 GETTABLEKS                       R4 R5 K10 ["TextLabel"]
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Src"]
       37 GETTABLEKS                       R7 R8 K12 ["Hooks"]
       39 GETTABLEKS                       R6 R7 K13 ["useFrameworkContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETIMPORT                        R9 K1 [script]
       46 GETTABLEKS                       R8 R9 K2 ["Parent"]
       48 GETTABLEKS                       R7 R8 K14 ["TokenTooltip"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETIMPORT                        R10 K1 [script]
       55 GETTABLEKS                       R9 R10 K2 ["Parent"]
       57 GETTABLEKS                       R8 R9 K15 ["TokenSourceLink"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K4 [require]
       62 GETIMPORT                        R11 K1 [script]
       64 GETTABLEKS                       R10 R11 K2 ["Parent"]
       66 GETTABLEKS                       R9 R10 K16 ["Types"]
       68 CALL                             R8 1 1
       69 DUPCLOSURE                       R9 K17 [PROTO_0]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R7
       76 RETURN                           R9 1
