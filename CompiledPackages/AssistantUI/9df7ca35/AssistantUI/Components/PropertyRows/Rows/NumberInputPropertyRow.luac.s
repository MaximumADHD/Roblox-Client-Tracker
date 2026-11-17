PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+5]
        3 GETUPVAL                         R1 0
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 JUMP                             ; [+1]
        7 MOVE                             R1 R0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K0 ["setValue"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 2
       14 JUMPIFEQKNIL                     R2 ; [+10]
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K1 ["name"]
       20 MOVE                             R4 R1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K2 ["getRowValue"]
       24 CALL                             R2 3 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["definition"]
        2 GETTABLEKS                       R2 R1 K1 ["snapValue"]
        4 GETTABLEKS                       R3 R1 K2 ["onValueChanged"]
        6 GETUPVAL                         R4 0
        7 GETUPVAL                         R5 1
        8 DUPTABLE                         R6 K22 [{["value"], ["onChanged"], ["label"] = "", ["variant"], ["size"], ["hasControls"], ["controlsVariant"], ["width"], ["minimum"], ["maximum"], ["step"], ["precision"], ["prefix"], ["suffix"], ["formatAsString"], ["scrubBehavior"], ["isDisabled"], ["LayoutOrder"]}]
        9 GETTABLEKS                       R7 R0 K3 ["value"]
       11 SETTABLEKS                       R7 R6 K3 ["value"]
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R7 R6 K4 ["onChanged"]
       20 GETTABLEKS                       R7 R1 K7 ["variant"]
       22 JUMPIF                           R7 ; [+3]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K23 ["Contrast"]
       26 SETTABLEKS                       R7 R6 K7 ["variant"]
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R7 R7 K24 ["XSmall"]
       31 SETTABLEKS                       R7 R6 K8 ["size"]
       33 GETTABLEKS                       R7 R1 K9 ["hasControls"]
       35 SETTABLEKS                       R7 R6 K9 ["hasControls"]
       37 GETTABLEKS                       R8 R1 K9 ["hasControls"]
       39 JUMPIFNOT                        R8 ; [+4]
       40 GETUPVAL                         R7 4
       41 GETTABLEKS                       R7 R7 K25 ["Split"]
       43 JUMP                             ; [+3]
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R7 R7 K26 ["None"]
       47 SETTABLEKS                       R7 R6 K10 ["controlsVariant"]
       49 GETIMPORT                        R7 K29 [UDim.new]
       51 LOADN                            R8 1
       52 LOADN                            R9 0
       53 CALL                             R7 2 1
       54 SETTABLEKS                       R7 R6 K11 ["width"]
       56 GETTABLEKS                       R7 R1 K30 ["min"]
       58 SETTABLEKS                       R7 R6 K12 ["minimum"]
       60 GETTABLEKS                       R7 R1 K31 ["max"]
       62 SETTABLEKS                       R7 R6 K13 ["maximum"]
       64 GETTABLEKS                       R7 R1 K14 ["step"]
       66 SETTABLEKS                       R7 R6 K14 ["step"]
       68 GETTABLEKS                       R7 R1 K15 ["precision"]
       70 SETTABLEKS                       R7 R6 K15 ["precision"]
       72 GETTABLEKS                       R7 R1 K16 ["prefix"]
       74 SETTABLEKS                       R7 R6 K16 ["prefix"]
       76 GETTABLEKS                       R7 R1 K17 ["suffix"]
       78 SETTABLEKS                       R7 R6 K17 ["suffix"]
       80 GETTABLEKS                       R7 R1 K18 ["formatAsString"]
       82 SETTABLEKS                       R7 R6 K18 ["formatAsString"]
       84 GETTABLEKS                       R8 R1 K32 ["scrubbable"]
       86 JUMPIFNOT                        R8 ; [+4]
       87 GETUPVAL                         R7 5
       88 GETTABLEKS                       R7 R7 K33 ["On"]
       90 JUMP                             ; [+3]
       91 GETUPVAL                         R7 5
       92 GETTABLEKS                       R7 R7 K34 ["Off"]
       94 SETTABLEKS                       R7 R6 K19 ["scrubBehavior"]
       96 GETTABLEKS                       R8 R0 K35 ["interactable"]
       98 NOT                              R7 R8
       99 SETTABLEKS                       R7 R6 K20 ["isDisabled"]
      101 GETTABLEKS                       R7 R0 K21 ["LayoutOrder"]
      103 SETTABLEKS                       R7 R6 K21 ["LayoutOrder"]
      105 CALL                             R4 2 -1
      106 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K8 ["PropertyRowTypes"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K9 ["React"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R2 K10 ["NumberInput"]
       32 GETTABLEKS                       R6 R2 K11 ["Enums"]
       34 GETTABLEKS                       R6 R6 K12 ["ScrubBehavior"]
       36 GETTABLEKS                       R7 R2 K11 ["Enums"]
       38 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       40 GETTABLEKS                       R8 R2 K11 ["Enums"]
       42 GETTABLEKS                       R8 R8 K14 ["InputVariant"]
       44 GETTABLEKS                       R9 R2 K11 ["Enums"]
       46 GETTABLEKS                       R9 R9 K15 ["NumberInputControlsVariant"]
       48 GETTABLEKS                       R10 R4 K16 ["createElement"]
       50 DUPCLOSURE                       R11 K17 [PROTO_1]
       51 CAPTURE                          VAL R10
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R6
       57 RETURN                           R11 1
