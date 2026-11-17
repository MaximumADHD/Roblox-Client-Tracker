PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnSizeChanged"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["OnSizeChanged"]
        7 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Localization"]
        4 GETUPVAL                         R3 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R5 0 1
        9 GETTABLEKS                       R6 R0 K1 ["OnSizeChanged"]
       11 SETLIST                          R5 R6 1 [1]
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K2 ["createElement"]
       17 GETUPVAL                         R5 3
       18 NEWTABLE                         R6 4 0
       20 GETTABLEKS                       R7 R0 K3 ["LayoutOrder"]
       22 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       24 GETTABLEKS                       R7 R0 K4 ["OnActivated"]
       26 SETTABLEKS                       R7 R6 K5 ["OnPress"]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K6 ["Tag"]
       31 LOADK                            R8 K7 ["DropdownItem data-testid=TokenAutocompleteItem"]
       32 SETTABLE                         R8 R6 R7
       33 DUPTABLE                         R7 K10 [{"Tooltip", "Content"}]
       34 GETUPVAL                         R8 2
       35 GETTABLEKS                       R8 R8 K2 ["createElement"]
       37 GETUPVAL                         R9 4
       38 DUPTABLE                         R10 K13 [{"TokenInfo", "ErrorStyle"}]
       39 GETTABLEKS                       R11 R0 K11 ["TokenInfo"]
       41 SETTABLEKS                       R11 R10 K11 ["TokenInfo"]
       43 GETTABLEKS                       R11 R0 K12 ["ErrorStyle"]
       45 SETTABLEKS                       R11 R10 K12 ["ErrorStyle"]
       47 CALL                             R8 2 1
       48 SETTABLEKS                       R8 R7 K8 ["Tooltip"]
       50 GETUPVAL                         R8 2
       51 GETTABLEKS                       R8 R8 K2 ["createElement"]
       53 GETUPVAL                         R9 3
       54 NEWTABLE                         R10 2 0
       56 GETUPVAL                         R11 2
       57 GETTABLEKS                       R11 R11 K6 ["Tag"]
       59 LOADK                            R12 K14 ["X-FitX X-Pad X-RowS X-Middle"]
       60 SETTABLE                         R12 R10 R11
       61 GETUPVAL                         R11 2
       62 GETTABLEKS                       R11 R11 K15 ["Change"]
       64 GETTABLEKS                       R11 R11 K16 ["AbsoluteSize"]
       66 SETTABLE                         R3 R10 R11
       67 DUPTABLE                         R11 K19 [{"NameText", "SourceLink"}]
       68 GETUPVAL                         R12 2
       69 GETTABLEKS                       R12 R12 K2 ["createElement"]
       71 GETUPVAL                         R13 5
       72 NEWTABLE                         R14 4 0
       74 LOADN                            R15 1
       75 SETTABLEKS                       R15 R14 K3 ["LayoutOrder"]
       77 LOADK                            R17 K20 ["Label"]
       78 LOADK                            R18 K21 ["TokenIn"]
       79 DUPTABLE                         R19 K23 [{"token"}]
       80 GETTABLEKS                       R20 R0 K11 ["TokenInfo"]
       82 GETTABLEKS                       R20 R20 K24 ["Name"]
       84 SETTABLEKS                       R20 R19 K22 ["token"]
       86 NAMECALL                         R15 R2 K25 ["getText"]
       88 CALL                             R15 4 1
       89 SETTABLEKS                       R15 R14 K26 ["Text"]
       91 GETUPVAL                         R15 2
       92 GETTABLEKS                       R15 R15 K6 ["Tag"]
       94 LOADK                            R16 K27 ["TextXAlignLeft X-FitX TokenNameText"]
       95 SETTABLE                         R16 R14 R15
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K17 ["NameText"]
       99 GETTABLEKS                       R12 R0 K11 ["TokenInfo"]
      101 GETTABLEKS                       R12 R12 K28 ["Source"]
      103 JUMPIFNOT                        R12 ; [+12]
      104 GETUPVAL                         R12 2
      105 GETTABLEKS                       R12 R12 K2 ["createElement"]
      107 GETUPVAL                         R13 6
      108 DUPTABLE                         R14 K30 [{["Source"], ["LayoutOrder"] = 2}]
      109 GETTABLEKS                       R15 R0 K11 ["TokenInfo"]
      111 GETTABLEKS                       R15 R15 K28 ["Source"]
      113 SETTABLEKS                       R15 R14 K28 ["Source"]
      115 CALL                             R12 2 1
      116 SETTABLEKS                       R12 R11 K18 ["SourceLink"]
      118 CALL                             R8 3 1
      119 SETTABLEKS                       R8 R7 K9 ["Content"]
      121 CALL                             R4 3 -1
      122 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["useCallback"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R0 K5 ["Packages"]
       24 GETTABLEKS                       R4 R4 K8 ["Framework"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K9 ["UI"]
       29 GETTABLEKS                       R4 R4 K10 ["Pane"]
       31 GETTABLEKS                       R5 R3 K9 ["UI"]
       33 GETTABLEKS                       R5 R5 K11 ["TextLabel"]
       35 GETIMPORT                        R6 K4 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Src"]
       39 GETTABLEKS                       R7 R7 K13 ["Hooks"]
       41 GETTABLEKS                       R7 R7 K14 ["useFrameworkContext"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K4 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K2 ["Parent"]
       50 GETTABLEKS                       R8 R8 K15 ["TokenTooltip"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K4 [require]
       55 GETIMPORT                        R9 K1 [script]
       57 GETTABLEKS                       R9 R9 K2 ["Parent"]
       59 GETTABLEKS                       R9 R9 K16 ["TokenSourceLink"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K4 [require]
       64 GETIMPORT                        R10 K1 [script]
       66 GETTABLEKS                       R10 R10 K2 ["Parent"]
       68 GETTABLEKS                       R10 R10 K17 ["Types"]
       70 CALL                             R9 1 1
       71 DUPCLOSURE                       R10 K18 [PROTO_1]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R8
       79 RETURN                           R10 1
