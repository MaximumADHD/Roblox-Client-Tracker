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
       57 DUPTABLE                         R9 K21 [{"Selectable"}]
       58 LOADB                            R10 0
       59 SETTABLEKS                       R10 R9 K20 ["Selectable"]
       61 SETTABLEKS                       R9 R8 K5 ["selection"]
       63 GETTABLEKS                       R9 R2 K6 ["onActivated"]
       65 SETTABLEKS                       R9 R8 K6 ["onActivated"]
       67 SETTABLEKS                       R3 R8 K7 ["onStateChanged"]
       69 DUPTABLE                         R9 K23 [{"affordance"}]
       70 GETUPVAL                         R10 7
       71 GETTABLEKS                       R10 R10 K14 ["None"]
       73 SETTABLEKS                       R10 R9 K22 ["affordance"]
       75 SETTABLEKS                       R9 R8 K8 ["stateLayer"]
       77 GETTABLEKS                       R9 R2 K9 ["textStyle"]
       79 SETTABLEKS                       R9 R8 K9 ["textStyle"]
       81 NEWTABLE                         R9 4 0
       83 LOADB                            R10 1
       84 SETTABLEKS                       R10 R9 K24 ["size-0 auto-xy text-wrap text-align-x-left text-align-y-top content-default"]
       86 GETTABLEKS                       R11 R2 K25 ["size"]
       88 GETUPVAL                         R12 8
       89 GETTABLEKS                       R12 R12 K26 ["Small"]
       91 JUMPIFEQ                         R11 R12 ; [+2]
       93 LOADB                            R10 0 +1
       94 LOADB                            R10 1
       95 SETTABLEKS                       R10 R9 K27 ["text-title-small"]
       97 GETTABLEKS                       R11 R2 K25 ["size"]
       99 GETUPVAL                         R12 8
      100 GETTABLEKS                       R12 R12 K28 ["Medium"]
      102 JUMPIFEQ                         R11 R12 ; [+2]
      104 LOADB                            R10 0 +1
      105 LOADB                            R10 1
      106 SETTABLEKS                       R10 R9 K29 ["text-title-medium"]
      108 GETTABLEKS                       R11 R2 K25 ["size"]
      110 GETUPVAL                         R12 8
      111 GETTABLEKS                       R12 R12 K30 ["Large"]
      113 JUMPIFEQ                         R11 R12 ; [+2]
      115 LOADB                            R10 0 +1
      116 LOADB                            R10 1
      117 SETTABLEKS                       R10 R9 K31 ["text-title-large"]
      119 SETTABLEKS                       R9 R8 K10 ["tag"]
      121 SETTABLEKS                       R1 R8 K11 ["ref"]
      123 CALL                             R6 2 -1
      124 CALL                             R4 -1 -1
      125 RETURN                           R4 -1

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
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Utility"]
       25 GETTABLEKS                       R5 R5 K11 ["Localization"]
       27 GETTABLEKS                       R5 R5 K12 ["Translator"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Enums"]
       34 GETTABLEKS                       R6 R6 K14 ["StateLayerAffordance"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K7 ["Components"]
       41 GETTABLEKS                       R7 R7 K15 ["Types"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K10 ["Utility"]
       48 GETTABLEKS                       R8 R8 K16 ["withCommonProps"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K10 ["Utility"]
       55 GETTABLEKS                       R9 R9 K17 ["withDefaults"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K13 ["Enums"]
       62 GETTABLEKS                       R10 R10 K18 ["ControlState"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K13 ["Enums"]
       69 GETTABLEKS                       R11 R11 K19 ["InputLabelSize"]
       71 CALL                             R10 1 1
       72 DUPCLOSURE                       R11 K20 [PROTO_0]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R4
       75 DUPTABLE                         R12 K23 [{"size", "testId"}]
       76 GETTABLEKS                       R13 R10 K24 ["Medium"]
       78 SETTABLEKS                       R13 R12 K21 ["size"]
       80 LOADK                            R13 K25 ["--foundation-input-label"]
       81 SETTABLEKS                       R13 R12 K22 ["testId"]
       83 DUPCLOSURE                       R13 K26 [PROTO_3]
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R10
       93 GETTABLEKS                       R14 R3 K27 ["memo"]
       95 GETTABLEKS                       R15 R3 K28 ["forwardRef"]
       97 MOVE                             R16 R13
       98 CALL                             R15 1 -1
       99 CALL                             R14 -1 -1
      100 RETURN                           R14 -1
