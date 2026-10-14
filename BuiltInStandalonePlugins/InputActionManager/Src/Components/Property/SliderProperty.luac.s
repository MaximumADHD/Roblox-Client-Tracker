PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["createElement"]
        9 GETUPVAL                         R4 3
       10 DUPTABLE                         R5 K5 [{["LayoutOrder"], ["tag"] = "auto-xy row gap-small align-y-center"}]
       11 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       13 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       15 DUPTABLE                         R6 K8 [{"Number", "Slider"}]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K1 ["createElement"]
       19 GETUPVAL                         R8 4
       20 DUPTABLE                         R9 K23 [{["label"] = "", ["LayoutOrder"], ["onChanged"], ["onReturnPressed"], ["precision"] = 2, ["range"], ["size"], ["step"] = 0.01, ["testId"], ["textBoxRef"], ["value"], ["width"]}]
       21 MOVE                             R10 R1
       22 CALL                             R10 0 1
       23 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       25 GETTABLEKS                       R10 R0 K11 ["onChanged"]
       27 SETTABLEKS                       R10 R9 K11 ["onChanged"]
       29 GETTABLEKS                       R10 R0 K24 ["onCommit"]
       31 SETTABLEKS                       R10 R9 K12 ["onReturnPressed"]
       33 GETIMPORT                        R10 K27 [NumberRange.new]
       35 LOADN                            R11 0
       36 LOADN                            R12 1
       37 CALL                             R10 2 1
       38 SETTABLEKS                       R10 R9 K15 ["range"]
       40 GETUPVAL                         R10 5
       41 GETTABLEKS                       R10 R10 K28 ["Small"]
       43 SETTABLEKS                       R10 R9 K16 ["size"]
       45 LOADK                            R10 K29 ["%*-number"]
       46 GETTABLEKS                       R12 R0 K30 ["menuOption"]
       48 NAMECALL                         R10 R10 K31 ["format"]
       50 CALL                             R10 2 1
       51 SETTABLEKS                       R10 R9 K19 ["testId"]
       53 SETTABLEKS                       R2 R9 K20 ["textBoxRef"]
       55 GETTABLEKS                       R10 R0 K21 ["value"]
       57 SETTABLEKS                       R10 R9 K21 ["value"]
       59 GETIMPORT                        R10 K33 [UDim.new]
       61 LOADN                            R11 0
       62 LOADN                            R12 80
       63 CALL                             R10 2 1
       64 SETTABLEKS                       R10 R9 K22 ["width"]
       66 CALL                             R7 2 1
       67 SETTABLEKS                       R7 R6 K6 ["Number"]
       69 GETUPVAL                         R7 2
       70 GETTABLEKS                       R7 R7 K1 ["createElement"]
       72 GETUPVAL                         R8 6
       73 DUPTABLE                         R9 K35 [{"LayoutOrder", "onValueChanged", "range", "testId", "value", "width"}]
       74 MOVE                             R10 R1
       75 CALL                             R10 0 1
       76 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       78 GETTABLEKS                       R10 R0 K11 ["onChanged"]
       80 SETTABLEKS                       R10 R9 K34 ["onValueChanged"]
       82 GETIMPORT                        R10 K27 [NumberRange.new]
       84 LOADN                            R11 0
       85 LOADN                            R12 1
       86 CALL                             R10 2 1
       87 SETTABLEKS                       R10 R9 K15 ["range"]
       89 LOADK                            R10 K36 ["%*-slider"]
       90 GETTABLEKS                       R12 R0 K30 ["menuOption"]
       92 NAMECALL                         R10 R10 K31 ["format"]
       94 CALL                             R10 2 1
       95 SETTABLEKS                       R10 R9 K19 ["testId"]
       97 GETTABLEKS                       R10 R0 K21 ["value"]
       99 SETTABLEKS                       R10 R9 K21 ["value"]
      101 GETIMPORT                        R10 K33 [UDim.new]
      103 LOADN                            R11 0
      104 LOADN                            R12 200
      105 CALL                             R10 2 1
      106 SETTABLEKS                       R10 R9 K22 ["width"]
      108 CALL                             R7 2 1
      109 SETTABLEKS                       R7 R6 K7 ["Slider"]
      111 CALL                             R3 3 -1
      112 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K13 ["Property"]
       43 GETTABLEKS                       R6 R6 K14 ["useAutofocus"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K15 ["Enums"]
       48 GETTABLEKS                       R6 R6 K16 ["InputSize"]
       50 GETTABLEKS                       R7 R1 K17 ["NumberInput"]
       52 GETTABLEKS                       R8 R1 K18 ["Slider"]
       54 GETTABLEKS                       R9 R1 K19 ["View"]
       56 DUPCLOSURE                       R10 K20 [PROTO_0]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R8
       64 RETURN                           R10 1
