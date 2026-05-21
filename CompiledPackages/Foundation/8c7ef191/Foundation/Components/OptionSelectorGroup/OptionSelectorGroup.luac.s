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
       44 NEWTABLE                         R11 4 0
       46 GETTABLEKS                       R13 R2 K9 ["orientation"]
       48 GETUPVAL                         R14 5
       49 GETTABLEKS                       R14 R14 K10 ["Vertical"]
       51 JUMPIFEQ                         R13 R14 ; [+2]
       53 LOADB                            R12 0 +1
       54 LOADB                            R12 1
       55 SETTABLEKS                       R12 R11 K11 ["auto-xy col"]
       57 GETTABLEKS                       R13 R2 K9 ["orientation"]
       59 GETUPVAL                         R14 5
       60 GETTABLEKS                       R14 R14 K12 ["Horizontal"]
       62 JUMPIFEQ                         R13 R14 ; [+2]
       64 LOADB                            R12 0 +1
       65 LOADB                            R12 1
       66 SETTABLEKS                       R12 R11 K13 ["auto-x row"]
       68 LOADB                            R12 1
       69 SETTABLEKS                       R12 R11 K14 ["gap-small"]
       71 SETTABLEKS                       R11 R10 K6 ["tag"]
       73 SETTABLEKS                       R1 R10 K7 ["ref"]
       75 CALL                             R8 2 1
       76 DUPTABLE                         R9 K16 [{"OptionSelectorGroupContext"}]
       77 GETUPVAL                         R10 2
       78 GETTABLEKS                       R10 R10 K5 ["createElement"]
       80 GETUPVAL                         R11 6
       81 GETTABLEKS                       R11 R11 K17 ["Provider"]
       83 DUPTABLE                         R12 K18 [{"value"}]
       84 DUPTABLE                         R13 K21 [{"value", "onValueChanged", "orientation", "Selectable", "testId"}]
       85 SETTABLEKS                       R3 R13 K1 ["value"]
       87 SETTABLEKS                       R5 R13 K4 ["onValueChanged"]
       89 GETTABLEKS                       R14 R2 K9 ["orientation"]
       91 SETTABLEKS                       R14 R13 K9 ["orientation"]
       93 GETTABLEKS                       R14 R2 K19 ["Selectable"]
       95 SETTABLEKS                       R14 R13 K19 ["Selectable"]
       97 GETTABLEKS                       R14 R2 K20 ["testId"]
       99 SETTABLEKS                       R14 R13 K20 ["testId"]
      101 SETTABLEKS                       R13 R12 K1 ["value"]
      103 GETTABLEKS                       R13 R2 K22 ["children"]
      105 CALL                             R10 3 1
      106 SETTABLEKS                       R10 R9 K15 ["OptionSelectorGroupContext"]
      108 CALL                             R6 3 -1
      109 RETURN                           R6 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["Orientation"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["View"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Utility"]
       39 GETTABLEKS                       R7 R7 K14 ["withDefaults"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K13 ["Utility"]
       46 GETTABLEKS                       R8 R8 K15 ["withCommonProps"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETIMPORT                        R9 K1 [script]
       53 GETTABLEKS                       R9 R9 K4 ["Parent"]
       55 GETTABLEKS                       R9 R9 K16 ["OptionSelectorGroupContext"]
       57 CALL                             R8 1 1
       58 DUPTABLE                         R9 K20 [{"orientation", "Selectable", "testId"}]
       59 GETTABLEKS                       R10 R3 K21 ["Vertical"]
       61 SETTABLEKS                       R10 R9 K17 ["orientation"]
       63 LOADB                            R10 1
       64 SETTABLEKS                       R10 R9 K18 ["Selectable"]
       66 LOADK                            R10 K22 ["--foundation-option-selector-group"]
       67 SETTABLEKS                       R10 R9 K19 ["testId"]
       69 DUPCLOSURE                       R10 K23 [PROTO_2]
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R8
       77 GETTABLEKS                       R11 R2 K24 ["memo"]
       79 GETTABLEKS                       R12 R2 K25 ["forwardRef"]
       81 MOVE                             R13 R10
       82 CALL                             R12 1 -1
       83 CALL                             R11 -1 -1
       84 RETURN                           R11 -1
