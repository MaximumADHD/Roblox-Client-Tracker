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
        9 GETTABLEKS                       R5 R0 K2 ["value"]
       11 JUMPIFNOTEQKS                    R5 K3 [""] ; [+3]
       13 LOADK                            R4 K4 ["rbxassetid://"]
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R4 R0 K2 ["value"]
       17 NEWTABLE                         R5 0 1
       19 GETTABLEKS                       R6 R0 K5 ["menuOption"]
       21 SETLIST                          R5 R6 1 [1]
       23 CALL                             R3 2 2
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K6 ["useEventCallback"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R4
       30 CALL                             R5 1 1
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K7 ["createElement"]
       34 GETUPVAL                         R7 3
       35 DUPTABLE                         R8 K12 [{["LayoutOrder"], ["image"], ["tag"] = "row auto-xy gap-small"}]
       36 GETTABLEKS                       R9 R0 K8 ["LayoutOrder"]
       38 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       40 GETTABLEKS                       R9 R0 K2 ["value"]
       42 SETTABLEKS                       R9 R8 K9 ["image"]
       44 DUPTABLE                         R9 K15 [{"Image", "Name"}]
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R10 R10 K7 ["createElement"]
       48 GETUPVAL                         R11 4
       49 DUPTABLE                         R12 K17 [{"Image", "LayoutOrder", "Size"}]
       50 GETTABLEKS                       R13 R0 K2 ["value"]
       52 SETTABLEKS                       R13 R12 K13 ["Image"]
       54 MOVE                             R13 R1
       55 CALL                             R13 0 1
       56 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       58 GETIMPORT                        R13 K20 [UDim2.fromOffset]
       60 LOADN                            R14 32
       61 LOADN                            R15 32
       62 CALL                             R13 2 1
       63 SETTABLEKS                       R13 R12 K16 ["Size"]
       65 CALL                             R10 2 1
       66 SETTABLEKS                       R10 R9 K13 ["Image"]
       68 GETUPVAL                         R10 2
       69 GETTABLEKS                       R10 R10 K7 ["createElement"]
       71 GETUPVAL                         R11 5
       72 DUPTABLE                         R12 K29 [{["label"] = "", ["onChanged"], ["onReturnPressed"], ["LayoutOrder"], ["size"], ["testId"], ["text"], ["textBoxRef"], ["width"]}]
       73 SETTABLEKS                       R5 R12 K22 ["onChanged"]
       75 GETTABLEKS                       R13 R0 K30 ["onCommit"]
       77 SETTABLEKS                       R13 R12 K23 ["onReturnPressed"]
       79 MOVE                             R13 R1
       80 CALL                             R13 0 1
       81 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       83 GETUPVAL                         R13 6
       84 GETTABLEKS                       R13 R13 K31 ["Small"]
       86 SETTABLEKS                       R13 R12 K24 ["size"]
       88 LOADK                            R13 K32 ["%*-text"]
       89 GETTABLEKS                       R15 R0 K5 ["menuOption"]
       91 NAMECALL                         R13 R13 K33 ["format"]
       93 CALL                             R13 2 1
       94 SETTABLEKS                       R13 R12 K25 ["testId"]
       96 SETTABLEKS                       R3 R12 K26 ["text"]
       98 SETTABLEKS                       R2 R12 K27 ["textBoxRef"]
      100 GETIMPORT                        R13 K36 [UDim.new]
      102 LOADN                            R14 0
      103 LOADN                            R15 200
      104 CALL                             R13 2 1
      105 SETTABLEKS                       R13 R12 K28 ["width"]
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K14 ["Name"]
      110 CALL                             R6 3 -1
      111 RETURN                           R6 -1

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
       56 DUPCLOSURE                       R10 K20 [PROTO_1]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R7
       64 RETURN                           R10 1
