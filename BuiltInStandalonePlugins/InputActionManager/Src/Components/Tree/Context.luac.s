PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 MOVE                             R2 R1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R4 R0 K1 ["uuid"]
        9 LOADK                            R5 K2 ["InputContext"]
       10 CALL                             R3 2 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R5 R0 K1 ["uuid"]
       14 MOVE                             R6 R3
       15 LOADK                            R7 K2 ["InputContext"]
       16 CALL                             R4 3 2
       17 GETUPVAL                         R6 3
       18 LOADK                            R7 K3 ["InputAction"]
       19 CALL                             R6 1 3
       20 GETUPVAL                         R9 4
       21 MOVE                             R10 R3
       22 CALL                             R9 1 1
       23 GETUPVAL                         R11 5
       24 GETTABLEKS                       R10 R11 K4 ["createElement"]
       26 GETUPVAL                         R11 6
       27 DUPTABLE                         R12 K7 [{"LayoutOrder", "tag"}]
       28 GETTABLEKS                       R13 R0 K5 ["LayoutOrder"]
       30 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       32 LOADK                            R13 K8 ["size-full-0 auto-y col"]
       33 SETTABLEKS                       R13 R12 K6 ["tag"]
       35 DUPTABLE                         R13 K12 [{"Row", "Actions", "Creating"}]
       36 GETUPVAL                         R15 5
       37 GETTABLEKS                       R14 R15 K4 ["createElement"]
       39 GETUPVAL                         R15 7
       40 DUPTABLE                         R16 K19 [{"depth", "expanded", "item", "itemType", "LayoutOrder", "onCreate", "setExpanded", "uuid"}]
       41 LOADN                            R17 0
       42 SETTABLEKS                       R17 R16 K13 ["depth"]
       44 SETTABLEKS                       R4 R16 K14 ["expanded"]
       46 SETTABLEKS                       R3 R16 K15 ["item"]
       48 LOADK                            R17 K2 ["InputContext"]
       49 SETTABLEKS                       R17 R16 K16 ["itemType"]
       51 SETTABLEKS                       R2 R16 K5 ["LayoutOrder"]
       53 SETTABLEKS                       R7 R16 K17 ["onCreate"]
       55 SETTABLEKS                       R5 R16 K18 ["setExpanded"]
       57 GETTABLEKS                       R17 R0 K1 ["uuid"]
       59 SETTABLEKS                       R17 R16 K1 ["uuid"]
       61 CALL                             R14 2 1
       62 SETTABLEKS                       R14 R13 K9 ["Row"]
       64 MOVE                             R14 R4
       65 JUMPIFNOT                        R14 ; [+14]
       66 GETUPVAL                         R15 5
       67 GETTABLEKS                       R14 R15 K4 ["createElement"]
       69 GETUPVAL                         R15 6
       70 DUPTABLE                         R16 K7 [{"LayoutOrder", "tag"}]
       71 MOVE                             R17 R1
       72 CALL                             R17 0 1
       73 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
       75 LOADK                            R17 K8 ["size-full-0 auto-y col"]
       76 SETTABLEKS                       R17 R16 K6 ["tag"]
       78 MOVE                             R17 R9
       79 CALL                             R14 3 1
       80 SETTABLEKS                       R14 R13 K10 ["Actions"]
       82 MOVE                             R14 R6
       83 JUMPIFNOT                        R14 ; [+22]
       84 GETUPVAL                         R15 5
       85 GETTABLEKS                       R14 R15 K4 ["createElement"]
       87 GETUPVAL                         R15 7
       88 DUPTABLE                         R16 K21 [{"depth", "itemType", "LayoutOrder", "onCreated", "uuid"}]
       89 LOADN                            R17 1
       90 SETTABLEKS                       R17 R16 K13 ["depth"]
       92 LOADK                            R17 K3 ["InputAction"]
       93 SETTABLEKS                       R17 R16 K16 ["itemType"]
       95 MOVE                             R17 R1
       96 CALL                             R17 0 1
       97 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
       99 SETTABLEKS                       R8 R16 K20 ["onCreated"]
      101 GETTABLEKS                       R17 R0 K1 ["uuid"]
      103 SETTABLEKS                       R17 R16 K1 ["uuid"]
      105 CALL                             R14 2 1
      106 SETTABLEKS                       R14 R13 K11 ["Creating"]
      108 CALL                             R10 3 -1
      109 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["View"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R9 R0 K11 ["Src"]
       34 GETTABLEKS                       R8 R9 K12 ["Components"]
       36 GETTABLEKS                       R7 R8 K13 ["Tree"]
       38 GETTABLEKS                       R6 R7 K14 ["Row"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R8 R0 K11 ["Src"]
       45 GETTABLEKS                       R7 R8 K15 ["Types"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R10 R0 K11 ["Src"]
       52 GETTABLEKS                       R9 R10 K16 ["Hooks"]
       54 GETTABLEKS                       R8 R9 K17 ["useActions"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R11 R0 K11 ["Src"]
       61 GETTABLEKS                       R10 R11 K16 ["Hooks"]
       63 GETTABLEKS                       R9 R10 K18 ["useCreating"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R12 R0 K11 ["Src"]
       70 GETTABLEKS                       R11 R12 K16 ["Hooks"]
       72 GETTABLEKS                       R10 R11 K19 ["useExpanded"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R13 R0 K11 ["Src"]
       79 GETTABLEKS                       R12 R13 K16 ["Hooks"]
       81 GETTABLEKS                       R11 R12 K20 ["useItem"]
       83 CALL                             R10 1 1
       84 DUPCLOSURE                       R11 K21 [PROTO_0]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R5
       93 RETURN                           R11 1
