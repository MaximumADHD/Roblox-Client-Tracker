PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useStagnatingState"]
        9 GETUPVAL                         R5 2
       10 CALL                             R5 0 1
       11 JUMPIFNOT                        R5 ; [+6]
       12 GETTABLEKS                       R5 R0 K2 ["value"]
       14 JUMPIFNOTEQKS                    R5 K3 [""] ; [+3]
       16 LOADK                            R4 K4 ["rbxassetid://"]
       17 JUMP                             ; [+2]
       18 GETTABLEKS                       R4 R0 K2 ["value"]
       20 NEWTABLE                         R5 0 1
       22 GETTABLEKS                       R6 R0 K5 ["menuOption"]
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 2
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K6 ["useEventCallback"]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R4
       33 CALL                             R5 1 1
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R6 R6 K7 ["createElement"]
       37 GETUPVAL                         R7 4
       38 DUPTABLE                         R8 K12 [{["LayoutOrder"], ["image"], ["tag"] = "row auto-xy gap-small"}]
       39 GETTABLEKS                       R9 R0 K8 ["LayoutOrder"]
       41 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       43 GETTABLEKS                       R9 R0 K2 ["value"]
       45 SETTABLEKS                       R9 R8 K9 ["image"]
       47 DUPTABLE                         R9 K15 [{"Image", "Name"}]
       48 GETUPVAL                         R10 3
       49 GETTABLEKS                       R10 R10 K7 ["createElement"]
       51 GETUPVAL                         R11 5
       52 DUPTABLE                         R12 K17 [{"Image", "LayoutOrder", "Size"}]
       53 GETTABLEKS                       R13 R0 K2 ["value"]
       55 SETTABLEKS                       R13 R12 K13 ["Image"]
       57 MOVE                             R13 R1
       58 CALL                             R13 0 1
       59 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       61 GETIMPORT                        R13 K20 [UDim2.fromOffset]
       63 LOADN                            R14 32
       64 LOADN                            R15 32
       65 CALL                             R13 2 1
       66 SETTABLEKS                       R13 R12 K16 ["Size"]
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R9 K13 ["Image"]
       71 GETUPVAL                         R10 3
       72 GETTABLEKS                       R10 R10 K7 ["createElement"]
       74 GETUPVAL                         R11 6
       75 DUPTABLE                         R12 K29 [{["label"] = "", ["onChanged"], ["onReturnPressed"], ["LayoutOrder"], ["size"], ["testId"], ["text"], ["textBoxRef"], ["width"]}]
       76 GETUPVAL                         R14 2
       77 CALL                             R14 0 1
       78 JUMPIFNOT                        R14 ; [+2]
       79 MOVE                             R13 R5
       80 JUMP                             ; [+2]
       81 GETTABLEKS                       R13 R0 K22 ["onChanged"]
       83 SETTABLEKS                       R13 R12 K22 ["onChanged"]
       85 GETTABLEKS                       R13 R0 K30 ["onCommit"]
       87 SETTABLEKS                       R13 R12 K23 ["onReturnPressed"]
       89 MOVE                             R13 R1
       90 CALL                             R13 0 1
       91 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       93 GETUPVAL                         R13 7
       94 GETTABLEKS                       R13 R13 K31 ["Small"]
       96 SETTABLEKS                       R13 R12 K24 ["size"]
       98 LOADK                            R13 K32 ["%*-text"]
       99 GETTABLEKS                       R15 R0 K5 ["menuOption"]
      101 NAMECALL                         R13 R13 K33 ["format"]
      103 CALL                             R13 2 1
      104 SETTABLEKS                       R13 R12 K25 ["testId"]
      106 GETUPVAL                         R14 2
      107 CALL                             R14 0 1
      108 JUMPIFNOT                        R14 ; [+2]
      109 MOVE                             R13 R3
      110 JUMP                             ; [+2]
      111 GETTABLEKS                       R13 R0 K2 ["value"]
      113 SETTABLEKS                       R13 R12 K26 ["text"]
      115 SETTABLEKS                       R2 R12 K27 ["textBoxRef"]
      117 GETIMPORT                        R13 K36 [UDim.new]
      119 LOADN                            R14 0
      120 LOADN                            R15 200
      121 CALL                             R13 2 1
      122 SETTABLEKS                       R13 R12 K28 ["width"]
      124 CALL                             R10 2 1
      125 SETTABLEKS                       R10 R9 K14 ["Name"]
      127 CALL                             R6 3 -1
      128 RETURN                           R6 -1

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
       56 GETTABLEKS                       R10 R0 K10 ["Src"]
       58 GETTABLEKS                       R10 R10 K20 ["Flags"]
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R10 K21 ["getFFlagIAMUseDisplayImageName"]
       64 CALL                             R11 1 1
       65 DUPCLOSURE                       R12 K22 [PROTO_1]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R7
       74 RETURN                           R12 1
