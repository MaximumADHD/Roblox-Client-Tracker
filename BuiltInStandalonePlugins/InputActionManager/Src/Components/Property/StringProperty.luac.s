PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K11 [{["LayoutOrder"], ["label"] = "", ["onChanged"], ["onReturnPressed"], ["size"], ["testId"], ["text"], ["textBoxRef"], ["width"]}]
        7 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        9 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       11 GETTABLEKS                       R5 R0 K4 ["onChanged"]
       13 SETTABLEKS                       R5 R4 K4 ["onChanged"]
       15 GETTABLEKS                       R5 R0 K12 ["onCommit"]
       17 SETTABLEKS                       R5 R4 K5 ["onReturnPressed"]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K13 ["Small"]
       22 SETTABLEKS                       R5 R4 K6 ["size"]
       24 LOADK                            R5 K14 ["%*-text"]
       25 GETTABLEKS                       R7 R0 K15 ["menuOption"]
       27 NAMECALL                         R5 R5 K16 ["format"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K7 ["testId"]
       32 GETTABLEKS                       R5 R0 K17 ["value"]
       34 SETTABLEKS                       R5 R4 K8 ["text"]
       36 SETTABLEKS                       R1 R4 K9 ["textBoxRef"]
       38 GETIMPORT                        R5 K20 [UDim.new]
       40 LOADN                            R6 0
       41 LOADN                            R7 200
       42 CALL                             R5 2 1
       43 SETTABLEKS                       R5 R4 K10 ["width"]
       45 CALL                             R2 2 -1
       46 RETURN                           R2 -1

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
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       34 GETTABLEKS                       R5 R5 K12 ["Property"]
       36 GETTABLEKS                       R5 R5 K13 ["useAutofocus"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K14 ["Enums"]
       41 GETTABLEKS                       R5 R5 K15 ["InputSize"]
       43 GETTABLEKS                       R6 R1 K16 ["TextInput"]
       45 DUPCLOSURE                       R7 K17 [PROTO_0]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R5
       50 RETURN                           R7 1
