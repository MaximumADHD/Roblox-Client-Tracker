PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnSizeChanged"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["OnSizeChanged"]
        7 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Localization"]
        4 GETUPVAL                         R4 1
        5 JUMPIFNOT                        R4 ; [+11]
        6 GETUPVAL                         R3 2
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R5 0 1
       11 GETTABLEKS                       R6 R0 K1 ["OnSizeChanged"]
       13 SETLIST                          R5 R6 1 [1]
       15 CALL                             R3 2 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K2 ["createElement"]
       21 GETUPVAL                         R5 4
       22 NEWTABLE                         R6 4 0
       24 GETTABLEKS                       R7 R0 K3 ["LayoutOrder"]
       26 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       28 GETTABLEKS                       R7 R0 K4 ["OnActivated"]
       30 SETTABLEKS                       R7 R6 K5 ["OnPress"]
       32 GETUPVAL                         R8 3
       33 GETTABLEKS                       R7 R8 K6 ["Tag"]
       35 GETUPVAL                         R9 1
       36 JUMPIFNOT                        R9 ; [+2]
       37 LOADK                            R8 K7 ["DropdownItem data-testid=TokenAutocompleteItem"]
       38 JUMP                             ; [+1]
       39 LOADK                            R8 K8 ["X-Pad DropdownItem"]
       40 SETTABLE                         R8 R6 R7
       41 DUPTABLE                         R7 K11 [{"Tooltip", "Content"}]
       42 GETUPVAL                         R9 3
       43 GETTABLEKS                       R8 R9 K2 ["createElement"]
       45 GETUPVAL                         R9 5
       46 DUPTABLE                         R10 K14 [{"TokenInfo", "ErrorStyle"}]
       47 GETTABLEKS                       R11 R0 K12 ["TokenInfo"]
       49 SETTABLEKS                       R11 R10 K12 ["TokenInfo"]
       51 GETTABLEKS                       R11 R0 K13 ["ErrorStyle"]
       53 SETTABLEKS                       R11 R10 K13 ["ErrorStyle"]
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K9 ["Tooltip"]
       58 GETUPVAL                         R9 3
       59 GETTABLEKS                       R8 R9 K2 ["createElement"]
       61 GETUPVAL                         R9 4
       62 NEWTABLE                         R10 2 0
       64 GETUPVAL                         R12 3
       65 GETTABLEKS                       R11 R12 K6 ["Tag"]
       67 GETUPVAL                         R13 1
       68 JUMPIFNOT                        R13 ; [+2]
       69 LOADK                            R12 K15 ["X-FitX X-Pad X-RowS X-Middle"]
       70 JUMP                             ; [+1]
       71 LOADK                            R12 K16 ["X-Fill X-RowS X-Middle"]
       72 SETTABLE                         R12 R10 R11
       73 GETUPVAL                         R13 3
       74 GETTABLEKS                       R12 R13 K17 ["Change"]
       76 GETTABLEKS                       R11 R12 K18 ["AbsoluteSize"]
       78 SETTABLE                         R3 R10 R11
       79 DUPTABLE                         R11 K21 [{"NameText", "SourceLink"}]
       80 GETUPVAL                         R13 3
       81 GETTABLEKS                       R12 R13 K2 ["createElement"]
       83 GETUPVAL                         R13 6
       84 NEWTABLE                         R14 4 0
       86 LOADN                            R15 1
       87 SETTABLEKS                       R15 R14 K3 ["LayoutOrder"]
       89 LOADK                            R17 K22 ["Label"]
       90 LOADK                            R18 K23 ["TokenIn"]
       91 DUPTABLE                         R19 K25 [{"token"}]
       92 GETTABLEKS                       R21 R0 K12 ["TokenInfo"]
       94 GETTABLEKS                       R20 R21 K26 ["Name"]
       96 SETTABLEKS                       R20 R19 K24 ["token"]
       98 NAMECALL                         R15 R2 K27 ["getText"]
      100 CALL                             R15 4 1
      101 SETTABLEKS                       R15 R14 K28 ["Text"]
      103 GETUPVAL                         R16 3
      104 GETTABLEKS                       R15 R16 K6 ["Tag"]
      106 GETUPVAL                         R17 1
      107 JUMPIFNOT                        R17 ; [+2]
      108 LOADK                            R16 K29 ["TextXAlignLeft X-FitX TokenNameText"]
      109 JUMP                             ; [+1]
      110 LOADK                            R16 K30 ["TextXAlignLeft X-FitX"]
      111 SETTABLE                         R16 R14 R15
      112 CALL                             R12 2 1
      113 SETTABLEKS                       R12 R11 K19 ["NameText"]
      115 GETTABLEKS                       R13 R0 K12 ["TokenInfo"]
      117 GETTABLEKS                       R12 R13 K31 ["Source"]
      119 JUMPIFNOT                        R12 ; [+15]
      120 GETUPVAL                         R13 3
      121 GETTABLEKS                       R12 R13 K2 ["createElement"]
      123 GETUPVAL                         R13 7
      124 DUPTABLE                         R14 K32 [{"Source", "LayoutOrder"}]
      125 GETTABLEKS                       R16 R0 K12 ["TokenInfo"]
      127 GETTABLEKS                       R15 R16 K31 ["Source"]
      129 SETTABLEKS                       R15 R14 K31 ["Source"]
      131 LOADN                            R15 2
      132 SETTABLEKS                       R15 R14 K3 ["LayoutOrder"]
      134 CALL                             R12 2 1
      135 SETTABLEKS                       R12 R11 K20 ["SourceLink"]
      137 CALL                             R8 3 1
      138 SETTABLEKS                       R8 R7 K10 ["Content"]
      140 CALL                             R4 3 -1
      141 RETURN                           R4 -1

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
       18 GETTABLEKS                       R2 R1 K7 ["useCallback"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Packages"]
       24 GETTABLEKS                       R4 R5 K8 ["Framework"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R5 R3 K9 ["UI"]
       29 GETTABLEKS                       R4 R5 K10 ["Pane"]
       31 GETTABLEKS                       R6 R3 K9 ["UI"]
       33 GETTABLEKS                       R5 R6 K11 ["TextLabel"]
       35 GETIMPORT                        R6 K4 [require]
       37 GETTABLEKS                       R9 R0 K12 ["Src"]
       39 GETTABLEKS                       R8 R9 K13 ["Hooks"]
       41 GETTABLEKS                       R7 R8 K14 ["useFrameworkContext"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K4 [require]
       46 GETIMPORT                        R10 K1 [script]
       48 GETTABLEKS                       R9 R10 K2 ["Parent"]
       50 GETTABLEKS                       R8 R9 K15 ["TokenTooltip"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K4 [require]
       55 GETIMPORT                        R11 K1 [script]
       57 GETTABLEKS                       R10 R11 K2 ["Parent"]
       59 GETTABLEKS                       R9 R10 K16 ["TokenSourceLink"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K4 [require]
       64 GETIMPORT                        R12 K1 [script]
       66 GETTABLEKS                       R11 R12 K2 ["Parent"]
       68 GETTABLEKS                       R10 R11 K17 ["Types"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K4 [require]
       73 GETTABLEKS                       R13 R0 K12 ["Src"]
       75 GETTABLEKS                       R12 R13 K18 ["Flags"]
       77 GETTABLEKS                       R11 R12 K19 ["getFFlagStyleEditorFixTokenMenuGrow"]
       79 CALL                             R10 1 1
       80 CALL                             R10 0 1
       81 DUPCLOSURE                       R11 K20 [PROTO_1]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R8
       90 RETURN                           R11 1
