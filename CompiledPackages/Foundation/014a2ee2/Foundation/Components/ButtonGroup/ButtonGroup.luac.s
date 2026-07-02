PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R6 R2 K0 ["buttons"]
        6 LENGTH                           R5 R6
        7 LOADN                            R6 3
        8 JUMPIFLE                         R5 R6 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 LOADK                            R6 K1 ["ButtonGroup: a maximum of 3 buttons is supported, got %*."]
       13 GETTABLEKS                       R9 R2 K0 ["buttons"]
       15 LENGTH                           R8 R9
       16 NAMECALL                         R6 R6 K2 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 FASTCALL2                        ASSERT R4 R5 ; [+3]
       22 GETIMPORT                        R3 K4 [assert]
       24 CALL                             R3 2 0
       25 GETTABLEKS                       R4 R2 K5 ["orientation"]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K6 ["Vertical"]
       30 JUMPIFEQ                         R4 R5 ; [+2]
       32 LOADB                            R3 0 +1
       33 LOADB                            R3 1
       34 MOVE                             R4 R3
       35 JUMPIF                           R4 ; [+9]
       36 GETTABLEKS                       R5 R2 K7 ["fillBehavior"]
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K8 ["Fill"]
       41 JUMPIFEQ                         R5 R6 ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 JUMPIF                           R3 ; [+5]
       46 JUMPIFNOT                        R4 ; [+4]
       47 GETUPVAL                         R5 3
       48 GETTABLEKS                       R5 R5 K8 ["Fill"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R5
       52 NEWTABLE                         R6 0 0
       54 GETTABLEKS                       R7 R2 K0 ["buttons"]
       56 LOADNIL                          R8
       57 LOADNIL                          R9
       58 FORGPREP                         R7
       59 LOADK                            R13 K9 ["Button"]
       60 MOVE                             R14 R10
       61 CONCAT                           R12 R13 R14
       62 GETUPVAL                         R13 4
       63 GETTABLEKS                       R13 R13 K10 ["createElement"]
       65 GETUPVAL                         R14 5
       66 DUPTABLE                         R15 K22 [{"text", "onActivated", "variant", "isDisabled", "isLoading", "icon", "inputDelay", "ref", "size", "fillBehavior", "LayoutOrder", "testId"}]
       67 GETTABLEKS                       R16 R11 K11 ["text"]
       69 SETTABLEKS                       R16 R15 K11 ["text"]
       71 GETTABLEKS                       R16 R11 K12 ["onActivated"]
       73 SETTABLEKS                       R16 R15 K12 ["onActivated"]
       75 GETTABLEKS                       R16 R11 K13 ["variant"]
       77 SETTABLEKS                       R16 R15 K13 ["variant"]
       79 GETTABLEKS                       R16 R11 K14 ["isDisabled"]
       81 SETTABLEKS                       R16 R15 K14 ["isDisabled"]
       83 GETTABLEKS                       R16 R11 K15 ["isLoading"]
       85 SETTABLEKS                       R16 R15 K15 ["isLoading"]
       87 GETTABLEKS                       R16 R11 K16 ["icon"]
       89 SETTABLEKS                       R16 R15 K16 ["icon"]
       91 GETTABLEKS                       R16 R11 K17 ["inputDelay"]
       93 SETTABLEKS                       R16 R15 K17 ["inputDelay"]
       95 GETTABLEKS                       R16 R11 K18 ["ref"]
       97 SETTABLEKS                       R16 R15 K18 ["ref"]
       99 GETTABLEKS                       R16 R2 K19 ["size"]
      101 SETTABLEKS                       R16 R15 K19 ["size"]
      103 SETTABLEKS                       R5 R15 K7 ["fillBehavior"]
      105 SETTABLEKS                       R10 R15 K20 ["LayoutOrder"]
      107 LOADK                            R17 K23 ["%*--button-%*"]
      108 GETTABLEKS                       R19 R2 K21 ["testId"]
      110 MOVE                             R20 R10
      111 NAMECALL                         R17 R17 K2 ["format"]
      113 CALL                             R17 3 1
      114 MOVE                             R16 R17
      115 SETTABLEKS                       R16 R15 K21 ["testId"]
      117 CALL                             R13 2 1
      118 SETTABLE                         R13 R6 R12
      119 FORGLOOP                         R7 2 ; [-61]
      121 GETUPVAL                         R7 4
      122 GETTABLEKS                       R7 R7 K10 ["createElement"]
      124 GETUPVAL                         R8 6
      125 GETUPVAL                         R9 7
      126 MOVE                             R10 R2
      127 DUPTABLE                         R11 K25 [{"tag", "ref"}]
      128 NEWTABLE                         R12 8 0
      130 LOADB                            R13 1
      131 SETTABLEKS                       R13 R12 K26 ["gap-small"]
      133 SETTABLEKS                       R3 R12 K27 ["col flex-x-fill"]
      135 NOT                              R14 R3
      136 AND                              R13 R14 R4
      137 SETTABLEKS                       R13 R12 K28 ["row"]
      139 NOT                              R13 R3
      140 JUMPIFNOT                        R13 ; [+1]
      141 NOT                              R13 R4
      142 SETTABLEKS                       R13 R12 K29 ["row wrap"]
      144 SETTABLEKS                       R4 R12 K30 ["size-full-0 auto-y"]
      146 NOT                              R13 R4
      147 SETTABLEKS                       R13 R12 K31 ["auto-xy"]
      149 SETTABLEKS                       R12 R11 K24 ["tag"]
      151 SETTABLEKS                       R1 R11 K18 ["ref"]
      153 CALL                             R9 2 1
      154 MOVE                             R10 R6
      155 CALL                             R7 3 -1
      156 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Button"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["ButtonVariant"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["FillBehavior"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Enums"]
       39 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K10 ["Enums"]
       46 GETTABLEKS                       R8 R8 K14 ["Orientation"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R9 K15 ["Types"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Components"]
       60 GETTABLEKS                       R10 R10 K16 ["View"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K17 ["Utility"]
       67 GETTABLEKS                       R11 R11 K18 ["withCommonProps"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K17 ["Utility"]
       74 GETTABLEKS                       R12 R12 K19 ["withDefaults"]
       76 CALL                             R11 1 1
       77 DUPTABLE                         R12 K24 [{["orientation"], ["size"], ["testId"] = "--foundation-button-group"}]
       78 GETTABLEKS                       R13 R7 K25 ["Horizontal"]
       80 SETTABLEKS                       R13 R12 K20 ["orientation"]
       82 GETTABLEKS                       R13 R6 K26 ["Medium"]
       84 SETTABLEKS                       R13 R12 K21 ["size"]
       86 DUPCLOSURE                       R13 K27 [PROTO_0]
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R10
       95 GETTABLEKS                       R14 R2 K28 ["memo"]
       97 GETTABLEKS                       R15 R2 K29 ["forwardRef"]
       99 MOVE                             R16 R13
      100 CALL                             R15 1 -1
      101 CALL                             R14 -1 -1
      102 RETURN                           R14 -1
