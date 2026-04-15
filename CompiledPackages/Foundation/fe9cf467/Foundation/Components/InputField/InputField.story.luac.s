PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{"ref", "text", "hasError", "isDisabled", "size", "onChanged", "placeholder"}]
        5 SETTABLEKS                       R0 R3 K1 ["ref"]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K2 ["text"]
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K3 ["hasError"]
       13 SETTABLEKS                       R4 R3 K3 ["hasError"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K4 ["isDisabled"]
       18 SETTABLEKS                       R4 R3 K4 ["isDisabled"]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R4 R5 K5 ["size"]
       23 SETTABLEKS                       R4 R3 K5 ["size"]
       25 GETUPVAL                         R4 4
       26 SETTABLEKS                       R4 R3 K6 ["onChanged"]
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R4 R5 K7 ["placeholder"]
       31 SETTABLEKS                       R4 R3 K7 ["placeholder"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADK                            R3 K2 [""]
        6 CALL                             R2 1 2
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R3
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K3 ["createElement"]
       12 GETUPVAL                         R6 1
       13 DUPTABLE                         R7 K5 [{"tag"}]
       14 LOADK                            R8 K6 ["gap-large auto-xy padding-xlarge"]
       15 SETTABLEKS                       R8 R7 K4 ["tag"]
       17 NEWTABLE                         R8 0 1
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R9 R10 K3 ["createElement"]
       22 GETUPVAL                         R10 2
       23 DUPTABLE                         R11 K11 [{"label", "size", "hint", "input"}]
       24 GETTABLEKS                       R12 R1 K7 ["label"]
       26 SETTABLEKS                       R12 R11 K7 ["label"]
       28 GETTABLEKS                       R12 R1 K12 ["labelSize"]
       30 SETTABLEKS                       R12 R11 K8 ["size"]
       32 GETTABLEKS                       R12 R1 K9 ["hint"]
       34 SETTABLEKS                       R12 R11 K9 ["hint"]
       36 NEWCLOSURE                       R12 P1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 SETTABLEKS                       R12 R11 K10 ["input"]
       44 CALL                             R9 2 -1
       45 SETLIST                          R8 R9 -1 [1]
       47 CALL                             R5 3 -1
       48 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R6 K10 ["InputLabelSize"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Enums"]
       30 GETTABLEKS                       R6 R7 K11 ["InputSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["InternalTextInput"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K12 ["Components"]
       44 GETTABLEKS                       R8 R9 K14 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K12 ["Components"]
       51 GETTABLEKS                       R9 R10 K15 ["InputField"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K16 [PROTO_2]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R6
       59 DUPTABLE                         R10 K20 [{"summary", "story", "controls"}]
       60 LOADK                            R11 K21 ["Input field"]
       61 SETTABLEKS                       R11 R10 K17 ["summary"]
       63 SETTABLEKS                       R9 R10 K18 ["story"]
       65 DUPTABLE                         R11 K29 [{"label", "hint", "hasError", "isDisabled", "size", "labelSize", "placeholder"}]
       66 LOADK                            R12 K30 ["Field label"]
       67 SETTABLEKS                       R12 R11 K22 ["label"]
       69 LOADK                            R12 K31 ["Hint"]
       70 SETTABLEKS                       R12 R11 K23 ["hint"]
       72 LOADB                            R12 0
       73 SETTABLEKS                       R12 R11 K24 ["hasError"]
       75 LOADB                            R12 0
       76 SETTABLEKS                       R12 R11 K25 ["isDisabled"]
       78 GETTABLEKS                       R12 R2 K32 ["values"]
       80 MOVE                             R13 R5
       81 CALL                             R12 1 1
       82 SETTABLEKS                       R12 R11 K26 ["size"]
       84 GETTABLEKS                       R12 R2 K32 ["values"]
       86 MOVE                             R13 R4
       87 CALL                             R12 1 1
       88 SETTABLEKS                       R12 R11 K27 ["labelSize"]
       90 LOADK                            R12 K33 ["Placeholder text"]
       91 SETTABLEKS                       R12 R11 K28 ["placeholder"]
       93 SETTABLEKS                       R11 R10 K19 ["controls"]
       95 RETURN                           R10 1
