PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K8 [{"ref", "text", "hasError", "isDisabled", "size", "onChanged", "placeholder"}]
        5 SETTABLEKS                       R0 R3 K1 ["ref"]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K2 ["text"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K3 ["hasError"]
       13 SETTABLEKS                       R4 R3 K3 ["hasError"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K4 ["isDisabled"]
       18 SETTABLEKS                       R4 R3 K4 ["isDisabled"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K5 ["size"]
       23 SETTABLEKS                       R4 R3 K5 ["size"]
       25 GETUPVAL                         R4 4
       26 SETTABLEKS                       R4 R3 K6 ["onChanged"]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K7 ["placeholder"]
       31 SETTABLEKS                       R4 R3 K7 ["placeholder"]
       33 CALL                             R1 2 -1
       34 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADK                            R3 K2 [""]
        6 CALL                             R2 1 2
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R3
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K3 ["createElement"]
       12 GETUPVAL                         R6 1
       13 DUPTABLE                         R7 K6 [{["tag"] = "gap-large auto-xy padding-xlarge"}]
       14 NEWTABLE                         R8 0 1
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K3 ["createElement"]
       19 GETUPVAL                         R10 2
       20 DUPTABLE                         R11 K11 [{"label", "size", "hint", "input"}]
       21 GETTABLEKS                       R12 R1 K7 ["label"]
       23 SETTABLEKS                       R12 R11 K7 ["label"]
       25 GETTABLEKS                       R12 R1 K12 ["labelSize"]
       27 SETTABLEKS                       R12 R11 K8 ["size"]
       29 GETTABLEKS                       R12 R1 K9 ["hint"]
       31 SETTABLEKS                       R12 R11 K9 ["hint"]
       33 NEWCLOSURE                       R12 P1
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R12 R11 K10 ["input"]
       41 CALL                             R9 2 -1
       42 SETLIST                          R8 R9 -1 [1]
       44 CALL                             R5 3 -1
       45 RETURN                           R5 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["InputSize"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Enums"]
       30 GETTABLEKS                       R6 R6 K11 ["InputLabelSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["InternalTextInput"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K12 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["InputField"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K16 [PROTO_2]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R6
       59 DUPTABLE                         R10 K21 [{["summary"] = "Input field", ["story"], ["controls"]}]
       60 SETTABLEKS                       R9 R10 K19 ["story"]
       62 DUPTABLE                         R11 K33 [{["label"] = "Field label", ["hint"] = "Hint", ["hasError"] = False, ["isDisabled"] = False, ["size"], ["labelSize"], ["placeholder"] = "Placeholder text"}]
       63 GETTABLEKS                       R12 R3 K34 ["values"]
       65 MOVE                             R13 R4
       66 CALL                             R12 1 1
       67 SETTABLEKS                       R12 R11 K29 ["size"]
       69 GETTABLEKS                       R12 R3 K34 ["values"]
       71 MOVE                             R13 R5
       72 CALL                             R12 1 1
       73 SETTABLEKS                       R12 R11 K30 ["labelSize"]
       75 SETTABLEKS                       R11 R10 K20 ["controls"]
       77 RETURN                           R10 1
