PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["definition"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K20 [{["value"], ["onChanged"], ["label"] = "", ["variant"], ["size"], ["hasControls"], ["controlsVariant"], ["width"], ["minimum"], ["maximum"], ["step"], ["precision"], ["prefix"], ["suffix"], ["formatAsString"], ["scrubBehavior"], ["isDisabled"], ["LayoutOrder"]}]
        5 GETTABLEKS                       R5 R0 K1 ["value"]
        7 SETTABLEKS                       R5 R4 K1 ["value"]
        9 GETTABLEKS                       R5 R0 K21 ["setValue"]
       11 SETTABLEKS                       R5 R4 K2 ["onChanged"]
       13 GETTABLEKS                       R5 R1 K5 ["variant"]
       15 JUMPIF                           R5 ; [+3]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K22 ["Contrast"]
       19 SETTABLEKS                       R5 R4 K5 ["variant"]
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K23 ["XSmall"]
       24 SETTABLEKS                       R5 R4 K6 ["size"]
       26 GETTABLEKS                       R5 R1 K7 ["hasControls"]
       28 SETTABLEKS                       R5 R4 K7 ["hasControls"]
       30 GETTABLEKS                       R6 R1 K7 ["hasControls"]
       32 JUMPIFNOT                        R6 ; [+4]
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R5 R5 K24 ["Split"]
       36 JUMP                             ; [+3]
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R5 R5 K25 ["None"]
       40 SETTABLEKS                       R5 R4 K8 ["controlsVariant"]
       42 GETIMPORT                        R5 K28 [UDim.new]
       44 LOADN                            R6 1
       45 LOADN                            R7 0
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K9 ["width"]
       49 GETTABLEKS                       R5 R1 K29 ["min"]
       51 SETTABLEKS                       R5 R4 K10 ["minimum"]
       53 GETTABLEKS                       R5 R1 K30 ["max"]
       55 SETTABLEKS                       R5 R4 K11 ["maximum"]
       57 GETTABLEKS                       R5 R1 K12 ["step"]
       59 SETTABLEKS                       R5 R4 K12 ["step"]
       61 GETTABLEKS                       R5 R1 K13 ["precision"]
       63 SETTABLEKS                       R5 R4 K13 ["precision"]
       65 GETTABLEKS                       R5 R1 K14 ["prefix"]
       67 SETTABLEKS                       R5 R4 K14 ["prefix"]
       69 GETTABLEKS                       R5 R1 K15 ["suffix"]
       71 SETTABLEKS                       R5 R4 K15 ["suffix"]
       73 GETTABLEKS                       R5 R1 K16 ["formatAsString"]
       75 SETTABLEKS                       R5 R4 K16 ["formatAsString"]
       77 GETTABLEKS                       R6 R1 K31 ["scrubbable"]
       79 JUMPIFNOT                        R6 ; [+4]
       80 GETUPVAL                         R5 5
       81 GETTABLEKS                       R5 R5 K32 ["On"]
       83 JUMP                             ; [+3]
       84 GETUPVAL                         R5 5
       85 GETTABLEKS                       R5 R5 K33 ["Off"]
       87 SETTABLEKS                       R5 R4 K17 ["scrubBehavior"]
       89 GETTABLEKS                       R6 R0 K34 ["interactable"]
       91 NOT                              R5 R6
       92 SETTABLEKS                       R5 R4 K18 ["isDisabled"]
       94 GETTABLEKS                       R5 R0 K19 ["LayoutOrder"]
       96 SETTABLEKS                       R5 R4 K19 ["LayoutOrder"]
       98 CALL                             R2 2 -1
       99 RETURN                           R2 -1

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
       50 DUPCLOSURE                       R11 K17 [PROTO_0]
       51 CAPTURE                          VAL R10
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R6
       57 RETURN                           R11 1
