PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["createElement"]
        9 GETUPVAL                         R4 3
       10 DUPTABLE                         R5 K6 [{["LayoutOrder"], ["image"], ["tag"] = "row auto-xy gap-small"}]
       11 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       13 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       15 GETTABLEKS                       R6 R0 K7 ["value"]
       17 SETTABLEKS                       R6 R5 K3 ["image"]
       19 DUPTABLE                         R6 K10 [{"Image", "Name"}]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K1 ["createElement"]
       23 GETUPVAL                         R8 4
       24 DUPTABLE                         R9 K12 [{"Image", "LayoutOrder", "Size"}]
       25 GETTABLEKS                       R10 R0 K7 ["value"]
       27 SETTABLEKS                       R10 R9 K8 ["Image"]
       29 MOVE                             R10 R1
       30 CALL                             R10 0 1
       31 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       33 GETIMPORT                        R10 K15 [UDim2.fromOffset]
       35 LOADN                            R11 32
       36 LOADN                            R12 32
       37 CALL                             R10 2 1
       38 SETTABLEKS                       R10 R9 K11 ["Size"]
       40 CALL                             R7 2 1
       41 SETTABLEKS                       R7 R6 K8 ["Image"]
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K1 ["createElement"]
       46 GETUPVAL                         R8 5
       47 DUPTABLE                         R9 K25 [{["label"] = "", ["onChanged"], ["onReturnPressed"], ["LayoutOrder"], ["size"], ["testId"], ["text"], ["textBoxRef"], ["width"]}]
       48 GETTABLEKS                       R10 R0 K18 ["onChanged"]
       50 SETTABLEKS                       R10 R9 K18 ["onChanged"]
       52 GETTABLEKS                       R10 R0 K26 ["onCommit"]
       54 SETTABLEKS                       R10 R9 K19 ["onReturnPressed"]
       56 MOVE                             R10 R1
       57 CALL                             R10 0 1
       58 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       60 GETUPVAL                         R10 6
       61 GETTABLEKS                       R10 R10 K27 ["Small"]
       63 SETTABLEKS                       R10 R9 K20 ["size"]
       65 LOADK                            R10 K28 ["%*-text"]
       66 GETTABLEKS                       R12 R0 K29 ["menuOption"]
       68 NAMECALL                         R10 R10 K30 ["format"]
       70 CALL                             R10 2 1
       71 SETTABLEKS                       R10 R9 K21 ["testId"]
       73 GETTABLEKS                       R10 R0 K7 ["value"]
       75 SETTABLEKS                       R10 R9 K22 ["text"]
       77 SETTABLEKS                       R2 R9 K23 ["textBoxRef"]
       79 GETIMPORT                        R10 K33 [UDim.new]
       81 LOADN                            R11 0
       82 LOADN                            R12 200
       83 CALL                             R10 2 1
       84 SETTABLEKS                       R10 R9 K24 ["width"]
       86 CALL                             R7 2 1
       87 SETTABLEKS                       R7 R6 K9 ["Name"]
       89 CALL                             R3 3 -1
       90 RETURN                           R3 -1

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
       46 GETTABLEKS                       R6 R1 K15 ["Image"]
       48 GETTABLEKS                       R7 R1 K16 ["Enums"]
       50 GETTABLEKS                       R7 R7 K17 ["InputSize"]
       52 GETTABLEKS                       R8 R1 K18 ["TextInput"]
       54 GETTABLEKS                       R9 R1 K19 ["View"]
       56 DUPCLOSURE                       R10 K20 [PROTO_0]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R7
       64 RETURN                           R10 1
