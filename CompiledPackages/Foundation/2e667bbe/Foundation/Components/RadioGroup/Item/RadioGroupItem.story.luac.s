PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["createElement"]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K3 ["Provider"]
       13 DUPTABLE                         R6 K5 [{"value"}]
       14 DUPTABLE                         R7 K8 [{"value", "onValueChanged", "Selectable"}]
       15 SETTABLEKS                       R2 R7 K4 ["value"]
       17 SETTABLEKS                       R3 R7 K6 ["onValueChanged"]
       19 LOADB                            R8 1
       20 SETTABLEKS                       R8 R7 K7 ["Selectable"]
       22 SETTABLEKS                       R7 R6 K4 ["value"]
       24 NEWTABLE                         R7 0 1
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R8 R9 K2 ["createElement"]
       29 GETUPVAL                         R10 2
       30 GETTABLEKS                       R9 R10 K9 ["Item"]
       32 DUPTABLE                         R10 K13 [{"value", "label", "isDisabled", "size"}]
       33 GETTABLEKS                       R11 R1 K4 ["value"]
       35 SETTABLEKS                       R11 R10 K4 ["value"]
       37 GETTABLEKS                       R13 R1 K10 ["label"]
       39 LENGTH                           R12 R13
       40 LOADN                            R13 0
       41 JUMPIFNOTLT                      R13 R12 ; [+11]
       43 LOADK                            R12 K14 ["%* %*"]
       44 GETTABLEKS                       R14 R1 K10 ["label"]
       46 GETTABLEKS                       R15 R1 K4 ["value"]
       48 NAMECALL                         R12 R12 K15 ["format"]
       50 CALL                             R12 3 1
       51 MOVE                             R11 R12
       52 JUMP                             ; [+1]
       53 LOADK                            R11 K16 [""]
       54 SETTABLEKS                       R11 R10 K10 ["label"]
       56 GETTABLEKS                       R11 R1 K11 ["isDisabled"]
       58 SETTABLEKS                       R11 R10 K11 ["isDisabled"]
       60 GETTABLEKS                       R11 R1 K12 ["size"]
       62 SETTABLEKS                       R11 R10 K12 ["size"]
       64 CALL                             R8 2 -1
       65 SETLIST                          R7 R8 -1 [1]
       67 CALL                             R4 3 -1
       68 RETURN                           R4 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETIMPORT                        R8 K1 [script]
       23 GETTABLEKS                       R7 R8 K4 ["Parent"]
       25 GETTABLEKS                       R6 R7 K4 ["Parent"]
       27 GETTABLEKS                       R5 R6 K9 ["RadioGroupContext"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Components"]
       34 GETTABLEKS                       R6 R7 K11 ["RadioGroup"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K12 ["Enums"]
       41 GETTABLEKS                       R7 R8 K13 ["InputSize"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K14 [PROTO_0]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 DUPTABLE                         R8 K18 [{"summary", "story", "controls"}]
       49 LOADK                            R9 K19 ["Checkbox component"]
       50 SETTABLEKS                       R9 R8 K15 ["summary"]
       52 SETTABLEKS                       R7 R8 K16 ["story"]
       54 DUPTABLE                         R9 K24 [{"isDisabled", "label", "value", "size"}]
       55 LOADB                            R10 0
       56 SETTABLEKS                       R10 R9 K20 ["isDisabled"]
       58 LOADK                            R10 K25 ["Label"]
       59 SETTABLEKS                       R10 R9 K21 ["label"]
       61 LOADK                            R10 K26 ["A"]
       62 SETTABLEKS                       R10 R9 K22 ["value"]
       64 GETTABLEKS                       R10 R3 K27 ["values"]
       66 MOVE                             R11 R6
       67 CALL                             R10 1 1
       68 SETTABLEKS                       R10 R9 K23 ["size"]
       70 SETTABLEKS                       R9 R8 K17 ["controls"]
       72 RETURN                           R8 1
