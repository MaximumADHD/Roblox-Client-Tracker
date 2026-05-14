PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["createElement"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["Provider"]
       13 DUPTABLE                         R6 K5 [{"value"}]
       14 DUPTABLE                         R7 K8 [{"value", "onValueChanged", "Selectable"}]
       15 SETTABLEKS                       R2 R7 K4 ["value"]
       17 SETTABLEKS                       R3 R7 K6 ["onValueChanged"]
       19 LOADB                            R8 1
       20 SETTABLEKS                       R8 R7 K7 ["Selectable"]
       22 SETTABLEKS                       R7 R6 K4 ["value"]
       24 NEWTABLE                         R7 0 1
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K2 ["createElement"]
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R9 R9 K9 ["Item"]
       32 DUPTABLE                         R10 K14 [{"value", "label", "isDisabled", "size", "placement"}]
       33 GETTABLEKS                       R11 R1 K4 ["value"]
       35 SETTABLEKS                       R11 R10 K4 ["value"]
       37 GETTABLEKS                       R13 R1 K10 ["label"]
       39 LENGTH                           R12 R13
       40 LOADN                            R13 0
       41 JUMPIFNOTLT                      R13 R12 ; [+11]
       43 LOADK                            R12 K15 ["%* %*"]
       44 GETTABLEKS                       R14 R1 K10 ["label"]
       46 GETTABLEKS                       R15 R1 K4 ["value"]
       48 NAMECALL                         R12 R12 K16 ["format"]
       50 CALL                             R12 3 1
       51 MOVE                             R11 R12
       52 JUMP                             ; [+1]
       53 LOADK                            R11 K17 [""]
       54 SETTABLEKS                       R11 R10 K10 ["label"]
       56 GETTABLEKS                       R11 R1 K11 ["isDisabled"]
       58 SETTABLEKS                       R11 R10 K11 ["isDisabled"]
       60 GETTABLEKS                       R11 R1 K12 ["size"]
       62 SETTABLEKS                       R11 R10 K12 ["size"]
       64 GETTABLEKS                       R11 R1 K13 ["placement"]
       66 SETTABLEKS                       R11 R10 K13 ["placement"]
       68 CALL                             R8 2 -1
       69 SETLIST                          R7 R8 -1 [1]
       71 CALL                             R4 3 -1
       72 RETURN                           R4 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["InputPlacement"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Enums"]
       30 GETTABLEKS                       R6 R6 K11 ["InputSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["RadioGroup"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETIMPORT                        R8 K1 [script]
       44 GETTABLEKS                       R8 R8 K4 ["Parent"]
       46 GETTABLEKS                       R8 R8 K4 ["Parent"]
       48 GETTABLEKS                       R8 R8 K14 ["RadioGroupContext"]
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K15 [PROTO_0]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 DUPTABLE                         R9 K19 [{"summary", "story", "controls"}]
       56 LOADK                            R10 K20 ["Checkbox component"]
       57 SETTABLEKS                       R10 R9 K16 ["summary"]
       59 SETTABLEKS                       R8 R9 K17 ["story"]
       61 DUPTABLE                         R10 K26 [{"isDisabled", "label", "value", "size", "placement"}]
       62 LOADB                            R11 0
       63 SETTABLEKS                       R11 R10 K21 ["isDisabled"]
       65 LOADK                            R11 K27 ["Label"]
       66 SETTABLEKS                       R11 R10 K22 ["label"]
       68 LOADK                            R11 K28 ["A"]
       69 SETTABLEKS                       R11 R10 K23 ["value"]
       71 GETTABLEKS                       R11 R2 K29 ["values"]
       73 MOVE                             R12 R5
       74 CALL                             R11 1 1
       75 SETTABLEKS                       R11 R10 K24 ["size"]
       77 GETTABLEKS                       R11 R2 K29 ["values"]
       79 MOVE                             R12 R4
       80 CALL                             R11 1 1
       81 SETTABLEKS                       R11 R10 K25 ["placement"]
       83 SETTABLEKS                       R10 R9 K18 ["controls"]
       85 RETURN                           R9 1
