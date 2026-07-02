PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["None"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+2]
        7 RETURN                           R0 1
        8 JUMPIFNOT                        R1 ; [+4]
        9 MOVE                             R3 R0
       10 LOADK                            R4 K1 ["*"]
       11 CONCAT                           R2 R3 R4
       12 RETURN                           R2 1
       13 GETUPVAL                         R2 1
       14 LOADK                            R4 K2 ["CommonUI.Controls.Input.Optional"]
       15 DUPTABLE                         R5 K4 [{"inputLabel"}]
       16 SETTABLEKS                       R0 R5 K3 ["inputLabel"]
       18 NAMECALL                         R2 R2 K5 ["FormatByKey"]
       20 CALL                             R2 3 1
       21 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onHover"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Hover"]
        6 JUMPIFEQ                         R0 R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onHover"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 NEWCLOSURE                       R0 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 RETURN                           R0 1
        9 LOADNIL                          R0
       10 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useMemo"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U3
       10 NEWTABLE                         R5 0 1
       12 GETTABLEKS                       R6 R2 K1 ["onHover"]
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K2 ["createElement"]
       20 GETUPVAL                         R5 4
       21 GETUPVAL                         R6 5
       22 MOVE                             R7 R2
       23 DUPTABLE                         R8 K12 [{"Text", "RichText", "selection", "onActivated", "onStateChanged", "stateLayer", "textStyle", "tag", "ref"}]
       24 GETTABLEKS                       R10 R2 K3 ["Text"]
       26 GETTABLEKS                       R11 R2 K13 ["isRequired"]
       28 JUMPIFEQKNIL                     R11 ; [+6]
       30 GETUPVAL                         R12 2
       31 GETTABLEKS                       R12 R12 K14 ["None"]
       33 JUMPIFNOTEQ                      R11 R12 ; [+3]
       35 MOVE                             R9 R10
       36 JUMP                             ; [+14]
       37 JUMPIFNOT                        R11 ; [+4]
       38 MOVE                             R12 R10
       39 LOADK                            R13 K15 ["*"]
       40 CONCAT                           R9 R12 R13
       41 JUMP                             ; [+9]
       42 GETUPVAL                         R12 6
       43 LOADK                            R14 K16 ["CommonUI.Controls.Input.Optional"]
       44 DUPTABLE                         R15 K18 [{"inputLabel"}]
       45 SETTABLEKS                       R10 R15 K17 ["inputLabel"]
       47 NAMECALL                         R12 R12 K19 ["FormatByKey"]
       49 CALL                             R12 3 1
       50 MOVE                             R9 R12
       51 SETTABLEKS                       R9 R8 K3 ["Text"]
       53 GETTABLEKS                       R9 R2 K4 ["RichText"]
       55 SETTABLEKS                       R9 R8 K4 ["RichText"]
       57 DUPTABLE                         R9 K22 [{["Selectable"] = False}]
       58 SETTABLEKS                       R9 R8 K5 ["selection"]
       60 GETTABLEKS                       R9 R2 K6 ["onActivated"]
       62 SETTABLEKS                       R9 R8 K6 ["onActivated"]
       64 SETTABLEKS                       R3 R8 K7 ["onStateChanged"]
       66 DUPTABLE                         R9 K24 [{"affordance"}]
       67 GETUPVAL                         R10 7
       68 GETTABLEKS                       R10 R10 K14 ["None"]
       70 SETTABLEKS                       R10 R9 K23 ["affordance"]
       72 SETTABLEKS                       R9 R8 K8 ["stateLayer"]
       74 GETTABLEKS                       R9 R2 K9 ["textStyle"]
       76 SETTABLEKS                       R9 R8 K9 ["textStyle"]
       78 NEWTABLE                         R9 4 0
       80 LOADB                            R10 1
       81 SETTABLEKS                       R10 R9 K25 ["size-0 auto-xy content-default text-align-x-left text-align-y-top text-wrap"]
       83 GETTABLEKS                       R11 R2 K26 ["size"]
       85 GETUPVAL                         R12 8
       86 GETTABLEKS                       R12 R12 K27 ["Small"]
       88 JUMPIFEQ                         R11 R12 ; [+2]
       90 LOADB                            R10 0 +1
       91 LOADB                            R10 1
       92 SETTABLEKS                       R10 R9 K28 ["text-title-small"]
       94 GETTABLEKS                       R11 R2 K26 ["size"]
       96 GETUPVAL                         R12 8
       97 GETTABLEKS                       R12 R12 K29 ["Medium"]
       99 JUMPIFEQ                         R11 R12 ; [+2]
      101 LOADB                            R10 0 +1
      102 LOADB                            R10 1
      103 SETTABLEKS                       R10 R9 K30 ["text-title-medium"]
      105 GETTABLEKS                       R11 R2 K26 ["size"]
      107 GETUPVAL                         R12 8
      108 GETTABLEKS                       R12 R12 K31 ["Large"]
      110 JUMPIFEQ                         R11 R12 ; [+2]
      112 LOADB                            R10 0 +1
      113 LOADB                            R10 1
      114 SETTABLEKS                       R10 R9 K32 ["text-title-large"]
      116 SETTABLEKS                       R9 R8 K10 ["tag"]
      118 SETTABLEKS                       R1 R8 K11 ["ref"]
      120 CALL                             R6 2 -1
      121 CALL                             R4 -1 -1
      122 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Text"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Utility"]
       20 GETTABLEKS                       R4 R4 K10 ["Localization"]
       22 GETTABLEKS                       R4 R4 K11 ["Translator"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K12 ["React"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K7 ["Components"]
       34 GETTABLEKS                       R6 R6 K13 ["Types"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Enums"]
       41 GETTABLEKS                       R7 R7 K15 ["StateLayerAffordance"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K9 ["Utility"]
       48 GETTABLEKS                       R8 R8 K16 ["withCommonProps"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K9 ["Utility"]
       55 GETTABLEKS                       R9 R9 K17 ["withDefaults"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K14 ["Enums"]
       62 GETTABLEKS                       R10 R10 K18 ["ControlState"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K14 ["Enums"]
       69 GETTABLEKS                       R11 R11 K19 ["InputLabelSize"]
       71 CALL                             R10 1 1
       72 DUPCLOSURE                       R11 K20 [PROTO_0]
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R3
       75 DUPTABLE                         R12 K23 [{["testId"] = "--foundation-input-label"}]
       76 DUPCLOSURE                       R13 K24 [PROTO_3]
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R10
       86 GETTABLEKS                       R14 R4 K25 ["memo"]
       88 GETTABLEKS                       R15 R4 K26 ["forwardRef"]
       90 MOVE                             R16 R13
       91 CALL                             R15 1 -1
       92 CALL                             R14 -1 -1
       93 RETURN                           R14 -1
