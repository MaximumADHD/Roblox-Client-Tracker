PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onChanged"]
        3 GETIMPORT                        R2 K3 [Vector2.new]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K4 ["value"]
        9 GETTABLEKS                       R4 R4 K5 ["Y"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onChanged"]
        3 GETIMPORT                        R2 K3 [Vector2.new]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K4 ["value"]
        8 GETTABLEKS                       R3 R3 K5 ["X"]
       10 MOVE                             R4 R0
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 LOADB                            R4 0
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K1 ["useEventCallback"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R0
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K1 ["useEventCallback"]
       18 NEWCLOSURE                       R7 P1
       19 CAPTURE                          VAL R0
       20 CALL                             R6 1 1
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K2 ["createElement"]
       24 GETUPVAL                         R8 3
       25 DUPTABLE                         R9 K7 [{["LayoutOrder"], ["tag"] = "row auto-y gap-small", ["Size"]}]
       26 GETTABLEKS                       R10 R0 K3 ["LayoutOrder"]
       28 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       30 GETIMPORT                        R10 K10 [UDim2.fromOffset]
       32 LOADN                            R11 200
       33 LOADN                            R12 0
       34 CALL                             R10 2 1
       35 SETTABLEKS                       R10 R9 K6 ["Size"]
       37 DUPTABLE                         R10 K13 [{"X", "Y"}]
       38 GETUPVAL                         R11 2
       39 GETTABLEKS                       R11 R11 K2 ["createElement"]
       41 GETUPVAL                         R12 4
       42 DUPTABLE                         R13 K24 [{["label"] = "X", ["LayoutOrder"], ["onChanged"], ["onReturnPressed"], ["precision"] = 2, ["size"], ["testId"], ["textBoxRef"], ["value"], ["width"]}]
       43 MOVE                             R14 R1
       44 CALL                             R14 0 1
       45 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
       47 SETTABLEKS                       R5 R13 K15 ["onChanged"]
       49 SETTABLEKS                       R4 R13 K16 ["onReturnPressed"]
       51 GETUPVAL                         R14 5
       52 GETTABLEKS                       R14 R14 K25 ["Small"]
       54 SETTABLEKS                       R14 R13 K19 ["size"]
       56 LOADK                            R14 K26 ["%*-x"]
       57 GETTABLEKS                       R16 R0 K27 ["menuOption"]
       59 NAMECALL                         R14 R14 K28 ["format"]
       61 CALL                             R14 2 1
       62 SETTABLEKS                       R14 R13 K20 ["testId"]
       64 SETTABLEKS                       R2 R13 K21 ["textBoxRef"]
       66 GETTABLEKS                       R14 R0 K22 ["value"]
       68 GETTABLEKS                       R14 R14 K11 ["X"]
       70 SETTABLEKS                       R14 R13 K22 ["value"]
       72 GETIMPORT                        R14 K31 [UDim.new]
       74 LOADK                            R15 K32 [0.5]
       75 LOADN                            R16 0
       76 CALL                             R14 2 1
       77 SETTABLEKS                       R14 R13 K23 ["width"]
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K11 ["X"]
       82 GETUPVAL                         R11 2
       83 GETTABLEKS                       R11 R11 K2 ["createElement"]
       85 GETUPVAL                         R12 4
       86 DUPTABLE                         R13 K33 [{["label"] = "Y", ["LayoutOrder"], ["onChanged"], ["onReturnPressed"], ["precision"] = 2, ["size"], ["testId"], ["textBoxRef"], ["value"], ["width"]}]
       87 MOVE                             R14 R1
       88 CALL                             R14 0 1
       89 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
       91 SETTABLEKS                       R6 R13 K15 ["onChanged"]
       93 GETTABLEKS                       R14 R0 K34 ["onCommit"]
       95 SETTABLEKS                       R14 R13 K16 ["onReturnPressed"]
       97 GETUPVAL                         R14 5
       98 GETTABLEKS                       R14 R14 K25 ["Small"]
      100 SETTABLEKS                       R14 R13 K19 ["size"]
      102 LOADK                            R14 K35 ["%*-y"]
      103 GETTABLEKS                       R16 R0 K27 ["menuOption"]
      105 NAMECALL                         R14 R14 K28 ["format"]
      107 CALL                             R14 2 1
      108 SETTABLEKS                       R14 R13 K20 ["testId"]
      110 SETTABLEKS                       R3 R13 K21 ["textBoxRef"]
      112 GETTABLEKS                       R14 R0 K22 ["value"]
      114 GETTABLEKS                       R14 R14 K12 ["Y"]
      116 SETTABLEKS                       R14 R13 K22 ["value"]
      118 GETIMPORT                        R14 K31 [UDim.new]
      120 LOADK                            R15 K32 [0.5]
      121 LOADN                            R16 0
      122 CALL                             R14 2 1
      123 SETTABLEKS                       R14 R13 K23 ["width"]
      125 CALL                             R11 2 1
      126 SETTABLEKS                       R11 R10 K12 ["Y"]
      128 CALL                             R7 3 -1
      129 RETURN                           R7 -1

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
       52 GETTABLEKS                       R8 R1 K18 ["View"]
       54 DUPCLOSURE                       R9 K19 [PROTO_2]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R6
       61 RETURN                           R9 1
