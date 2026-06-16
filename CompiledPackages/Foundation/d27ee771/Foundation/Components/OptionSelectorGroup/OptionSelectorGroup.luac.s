PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["value"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onValueChanged"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useState"]
        7 GETTABLEKS                       R4 R2 K1 ["value"]
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R4
       16 NEWTABLE                         R7 0 1
       18 GETTABLEKS                       R8 R2 K1 ["value"]
       20 SETLIST                          R7 R8 1 [1]
       22 CALL                             R5 2 0
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R7 0 2
       31 MOVE                             R8 R4
       32 GETTABLEKS                       R9 R2 K4 ["onValueChanged"]
       34 SETLIST                          R7 R8 2 [1]
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K5 ["createElement"]
       40 GETUPVAL                         R7 3
       41 GETUPVAL                         R8 4
       42 MOVE                             R9 R2
       43 DUPTABLE                         R10 K8 [{"tag", "ref"}]
       44 GETUPVAL                         R12 5
       45 GETTABLEKS                       R12 R12 K9 ["FoundationFixOptionSelectorGroupItemSize"]
       47 JUMPIFNOT                        R12 ; [+28]
       48 NEWTABLE                         R11 4 0
       50 GETTABLEKS                       R13 R2 K10 ["orientation"]
       52 GETUPVAL                         R14 6
       53 GETTABLEKS                       R14 R14 K11 ["Vertical"]
       55 JUMPIFEQ                         R13 R14 ; [+2]
       57 LOADB                            R12 0 +1
       58 LOADB                            R12 1
       59 SETTABLEKS                       R12 R11 K12 ["size-full-0 auto-y col"]
       61 GETTABLEKS                       R13 R2 K10 ["orientation"]
       63 GETUPVAL                         R14 6
       64 GETTABLEKS                       R14 R14 K13 ["Horizontal"]
       66 JUMPIFEQ                         R13 R14 ; [+2]
       68 LOADB                            R12 0 +1
       69 LOADB                            R12 1
       70 SETTABLEKS                       R12 R11 K14 ["auto-x row"]
       72 LOADB                            R12 1
       73 SETTABLEKS                       R12 R11 K15 ["gap-small"]
       75 JUMP                             ; [+27]
       76 NEWTABLE                         R11 4 0
       78 GETTABLEKS                       R13 R2 K10 ["orientation"]
       80 GETUPVAL                         R14 6
       81 GETTABLEKS                       R14 R14 K11 ["Vertical"]
       83 JUMPIFEQ                         R13 R14 ; [+2]
       85 LOADB                            R12 0 +1
       86 LOADB                            R12 1
       87 SETTABLEKS                       R12 R11 K16 ["auto-xy col"]
       89 GETTABLEKS                       R13 R2 K10 ["orientation"]
       91 GETUPVAL                         R14 6
       92 GETTABLEKS                       R14 R14 K13 ["Horizontal"]
       94 JUMPIFEQ                         R13 R14 ; [+2]
       96 LOADB                            R12 0 +1
       97 LOADB                            R12 1
       98 SETTABLEKS                       R12 R11 K14 ["auto-x row"]
      100 LOADB                            R12 1
      101 SETTABLEKS                       R12 R11 K15 ["gap-small"]
      103 SETTABLEKS                       R11 R10 K6 ["tag"]
      105 SETTABLEKS                       R1 R10 K7 ["ref"]
      107 CALL                             R8 2 1
      108 DUPTABLE                         R9 K18 [{"OptionSelectorGroupContext"}]
      109 GETUPVAL                         R10 2
      110 GETTABLEKS                       R10 R10 K5 ["createElement"]
      112 GETUPVAL                         R11 7
      113 GETTABLEKS                       R11 R11 K19 ["Provider"]
      115 DUPTABLE                         R12 K20 [{"value"}]
      116 DUPTABLE                         R13 K23 [{"value", "onValueChanged", "orientation", "Selectable", "testId"}]
      117 SETTABLEKS                       R3 R13 K1 ["value"]
      119 SETTABLEKS                       R5 R13 K4 ["onValueChanged"]
      121 GETTABLEKS                       R14 R2 K10 ["orientation"]
      123 SETTABLEKS                       R14 R13 K10 ["orientation"]
      125 GETTABLEKS                       R14 R2 K21 ["Selectable"]
      127 SETTABLEKS                       R14 R13 K21 ["Selectable"]
      129 GETTABLEKS                       R14 R2 K22 ["testId"]
      131 SETTABLEKS                       R14 R13 K22 ["testId"]
      133 SETTABLEKS                       R13 R12 K1 ["value"]
      135 GETTABLEKS                       R13 R2 K24 ["children"]
      137 CALL                             R10 3 1
      138 SETTABLEKS                       R10 R9 K17 ["OptionSelectorGroupContext"]
      140 CALL                             R6 3 -1
      141 RETURN                           R6 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["Flags"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["Orientation"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Components"]
       32 GETTABLEKS                       R6 R6 K13 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R7 K14 ["View"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Utility"]
       46 GETTABLEKS                       R8 R8 K15 ["withDefaults"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Utility"]
       53 GETTABLEKS                       R9 R9 K16 ["withCommonProps"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETIMPORT                        R10 K1 [script]
       60 GETTABLEKS                       R10 R10 K4 ["Parent"]
       62 GETTABLEKS                       R10 R10 K17 ["OptionSelectorGroupContext"]
       64 CALL                             R9 1 1
       65 DUPTABLE                         R10 K21 [{"orientation", "Selectable", "testId"}]
       66 GETTABLEKS                       R11 R4 K22 ["Vertical"]
       68 SETTABLEKS                       R11 R10 K18 ["orientation"]
       70 LOADB                            R11 1
       71 SETTABLEKS                       R11 R10 K19 ["Selectable"]
       73 LOADK                            R11 K23 ["--foundation-option-selector-group"]
       74 SETTABLEKS                       R11 R10 K20 ["testId"]
       76 DUPCLOSURE                       R11 K24 [PROTO_2]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R9
       85 GETTABLEKS                       R12 R2 K25 ["memo"]
       87 GETTABLEKS                       R13 R2 K26 ["forwardRef"]
       89 MOVE                             R14 R11
       90 CALL                             R13 1 -1
       91 CALL                             R12 -1 -1
       92 RETURN                           R12 -1
