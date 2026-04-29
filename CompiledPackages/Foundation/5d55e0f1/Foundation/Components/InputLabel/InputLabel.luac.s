PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+6]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["None"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onHover"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Hover"]
        6 JUMPIFEQ                         R0 R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onHover"]
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
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["useMemo"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U3
       10 NEWTABLE                         R5 0 1
       12 GETTABLEKS                       R6 R2 K1 ["onHover"]
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K2 ["createElement"]
       20 GETUPVAL                         R5 4
       21 GETUPVAL                         R6 5
       22 MOVE                             R7 R2
       23 DUPTABLE                         R8 K12 [{"Text", "RichText", "selection", "onActivated", "onStateChanged", "stateLayer", "textStyle", "tag", "ref"}]
       24 GETTABLEKS                       R10 R2 K3 ["Text"]
       26 GETTABLEKS                       R11 R2 K13 ["isRequired"]
       28 JUMPIFEQKNIL                     R11 ; [+6]
       30 GETUPVAL                         R13 2
       31 GETTABLEKS                       R12 R13 K14 ["None"]
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
       63 GETUPVAL                         R11 7
       64 GETTABLEKS                       R10 R11 K22 ["FoundationInputFieldFixDisabled"]
       66 JUMPIFNOT                        R10 ; [+3]
       67 GETTABLEKS                       R10 R2 K23 ["isDisabled"]
       69 JUMPIF                           R10 ; [+3]
       70 GETTABLEKS                       R9 R2 K6 ["onActivated"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R9
       74 SETTABLEKS                       R9 R8 K6 ["onActivated"]
       76 GETUPVAL                         R11 7
       77 GETTABLEKS                       R10 R11 K22 ["FoundationInputFieldFixDisabled"]
       79 JUMPIFNOT                        R10 ; [+3]
       80 GETTABLEKS                       R10 R2 K23 ["isDisabled"]
       82 JUMPIF                           R10 ; [+2]
       83 MOVE                             R9 R3
       84 JUMP                             ; [+1]
       85 LOADNIL                          R9
       86 SETTABLEKS                       R9 R8 K7 ["onStateChanged"]
       88 DUPTABLE                         R9 K25 [{"affordance"}]
       89 GETUPVAL                         R11 8
       90 GETTABLEKS                       R10 R11 K14 ["None"]
       92 SETTABLEKS                       R10 R9 K24 ["affordance"]
       94 SETTABLEKS                       R9 R8 K8 ["stateLayer"]
       96 GETTABLEKS                       R9 R2 K9 ["textStyle"]
       98 SETTABLEKS                       R9 R8 K9 ["textStyle"]
      100 NEWTABLE                         R9 8 0
      102 LOADB                            R10 1
      103 SETTABLEKS                       R10 R9 K26 ["size-0 auto-xy text-wrap text-align-x-left text-align-y-top"]
      105 GETUPVAL                         R11 7
      106 GETTABLEKS                       R10 R11 K22 ["FoundationInputFieldFixDisabled"]
      108 JUMPIFNOT                        R10 ; [+2]
      109 GETTABLEKS                       R10 R2 K23 ["isDisabled"]
      111 SETTABLEKS                       R10 R9 K27 ["content-muted"]
      113 GETUPVAL                         R12 7
      114 GETTABLEKS                       R11 R12 K22 ["FoundationInputFieldFixDisabled"]
      116 NOT                              R10 R11
      117 JUMPIF                           R10 ; [+3]
      118 GETTABLEKS                       R11 R2 K23 ["isDisabled"]
      120 NOT                              R10 R11
      121 SETTABLEKS                       R10 R9 K28 ["content-default"]
      123 GETTABLEKS                       R11 R2 K29 ["size"]
      125 GETUPVAL                         R13 9
      126 GETTABLEKS                       R12 R13 K30 ["Small"]
      128 JUMPIFEQ                         R11 R12 ; [+2]
      130 LOADB                            R10 0 +1
      131 LOADB                            R10 1
      132 SETTABLEKS                       R10 R9 K31 ["text-title-small"]
      134 GETTABLEKS                       R11 R2 K29 ["size"]
      136 GETUPVAL                         R13 9
      137 GETTABLEKS                       R12 R13 K32 ["Medium"]
      139 JUMPIFEQ                         R11 R12 ; [+2]
      141 LOADB                            R10 0 +1
      142 LOADB                            R10 1
      143 SETTABLEKS                       R10 R9 K33 ["text-title-medium"]
      145 GETTABLEKS                       R11 R2 K29 ["size"]
      147 GETUPVAL                         R13 9
      148 GETTABLEKS                       R12 R13 K34 ["Large"]
      150 JUMPIFEQ                         R11 R12 ; [+2]
      152 LOADB                            R10 0 +1
      153 LOADB                            R10 1
      154 SETTABLEKS                       R10 R9 K35 ["text-title-large"]
      156 SETTABLEKS                       R9 R8 K10 ["tag"]
      158 SETTABLEKS                       R1 R8 K11 ["ref"]
      160 CALL                             R6 2 -1
      161 CALL                             R4 -1 -1
      162 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Text"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Utility"]
       25 GETTABLEKS                       R6 R7 K11 ["Localization"]
       27 GETTABLEKS                       R5 R6 K12 ["Translator"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Utility"]
       34 GETTABLEKS                       R6 R7 K13 ["Flags"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K14 ["Enums"]
       41 GETTABLEKS                       R7 R8 K15 ["StateLayerAffordance"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R9 R0 K7 ["Components"]
       48 GETTABLEKS                       R8 R9 K16 ["Types"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K10 ["Utility"]
       55 GETTABLEKS                       R9 R10 K17 ["withCommonProps"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R11 R0 K10 ["Utility"]
       62 GETTABLEKS                       R10 R11 K18 ["withDefaults"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K14 ["Enums"]
       69 GETTABLEKS                       R11 R12 K19 ["ControlState"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K14 ["Enums"]
       76 GETTABLEKS                       R12 R13 K20 ["InputLabelSize"]
       78 CALL                             R11 1 1
       79 DUPCLOSURE                       R12 K21 [PROTO_0]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R4
       82 DUPTABLE                         R13 K24 [{"size", "testId"}]
       83 GETTABLEKS                       R14 R11 K25 ["Medium"]
       85 SETTABLEKS                       R14 R13 K22 ["size"]
       87 LOADK                            R14 K26 ["--foundation-input-label"]
       88 SETTABLEKS                       R14 R13 K23 ["testId"]
       90 DUPCLOSURE                       R14 K27 [PROTO_3]
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R11
      101 GETTABLEKS                       R15 R3 K28 ["memo"]
      103 GETTABLEKS                       R16 R3 K29 ["forwardRef"]
      105 MOVE                             R17 R14
      106 CALL                             R16 1 -1
      107 CALL                             R15 -1 -1
      108 RETURN                           R15 -1
