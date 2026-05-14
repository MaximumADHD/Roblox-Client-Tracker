PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
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
       19 GETTABLEKS                       R8 R0 K1 ["uuid"]
       21 CALL                             R6 2 3
       22 GETUPVAL                         R9 4
       23 MOVE                             R10 R3
       24 CALL                             R9 1 1
       25 JUMPIF                           R3 ; [+2]
       26 LOADNIL                          R10
       27 RETURN                           R10 1
       28 GETUPVAL                         R10 5
       29 GETTABLEKS                       R10 R10 K4 ["createElement"]
       31 GETUPVAL                         R11 6
       32 DUPTABLE                         R12 K8 [{"LayoutOrder", "tag", "testId"}]
       33 GETTABLEKS                       R13 R0 K5 ["LayoutOrder"]
       35 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       37 LOADK                            R13 K9 ["size-full-0 auto-y col"]
       38 SETTABLEKS                       R13 R12 K6 ["tag"]
       40 JUMPIFNOT                        R3 ; [+8]
       41 LOADK                            R14 K10 ["context-%*"]
       42 GETTABLEKS                       R16 R3 K11 ["name"]
       44 NAMECALL                         R14 R14 K12 ["format"]
       46 CALL                             R14 2 1
       47 MOVE                             R13 R14
       48 JUMP                             ; [+1]
       49 LOADNIL                          R13
       50 SETTABLEKS                       R13 R12 K7 ["testId"]
       52 DUPTABLE                         R13 K16 [{"Row", "Actions", "Creating"}]
       53 GETUPVAL                         R14 5
       54 GETTABLEKS                       R14 R14 K4 ["createElement"]
       56 GETUPVAL                         R15 7
       57 DUPTABLE                         R16 K24 [{"bindings", "context", "depth", "expanded", "icon", "name", "LayoutOrder", "onCreate", "setExpanded"}]
       58 NEWTABLE                         R17 0 0
       60 SETTABLEKS                       R17 R16 K17 ["bindings"]
       62 SETTABLEKS                       R3 R16 K18 ["context"]
       64 LOADN                            R17 0
       65 SETTABLEKS                       R17 R16 K19 ["depth"]
       67 SETTABLEKS                       R4 R16 K20 ["expanded"]
       69 LOADK                            R17 K2 ["InputContext"]
       70 SETTABLEKS                       R17 R16 K21 ["icon"]
       72 JUMPIFNOT                        R3 ; [+3]
       73 GETTABLEKS                       R17 R3 K11 ["name"]
       75 JUMP                             ; [+1]
       76 LOADK                            R17 K2 ["InputContext"]
       77 SETTABLEKS                       R17 R16 K11 ["name"]
       79 SETTABLEKS                       R2 R16 K5 ["LayoutOrder"]
       81 SETTABLEKS                       R7 R16 K22 ["onCreate"]
       83 SETTABLEKS                       R5 R16 K23 ["setExpanded"]
       85 CALL                             R14 2 1
       86 SETTABLEKS                       R14 R13 K13 ["Row"]
       88 MOVE                             R14 R4
       89 JUMPIFNOT                        R14 ; [+14]
       90 GETUPVAL                         R14 5
       91 GETTABLEKS                       R14 R14 K4 ["createElement"]
       93 GETUPVAL                         R15 6
       94 DUPTABLE                         R16 K25 [{"LayoutOrder", "tag"}]
       95 MOVE                             R17 R1
       96 CALL                             R17 0 1
       97 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
       99 LOADK                            R17 K9 ["size-full-0 auto-y col"]
      100 SETTABLEKS                       R17 R16 K6 ["tag"]
      102 MOVE                             R17 R9
      103 CALL                             R14 3 1
      104 SETTABLEKS                       R14 R13 K14 ["Actions"]
      106 MOVE                             R14 R6
      107 JUMPIFNOT                        R14 ; [+25]
      108 GETUPVAL                         R14 5
      109 GETTABLEKS                       R14 R14 K4 ["createElement"]
      111 GETUPVAL                         R15 7
      112 DUPTABLE                         R16 K27 [{"bindings", "depth", "icon", "LayoutOrder", "name", "onCreated"}]
      113 NEWTABLE                         R17 0 0
      115 SETTABLEKS                       R17 R16 K17 ["bindings"]
      117 LOADN                            R17 1
      118 SETTABLEKS                       R17 R16 K19 ["depth"]
      120 LOADK                            R17 K3 ["InputAction"]
      121 SETTABLEKS                       R17 R16 K21 ["icon"]
      123 MOVE                             R17 R1
      124 CALL                             R17 0 1
      125 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
      127 LOADK                            R17 K3 ["InputAction"]
      128 SETTABLEKS                       R17 R16 K11 ["name"]
      130 SETTABLEKS                       R8 R16 K26 ["onCreated"]
      132 CALL                             R14 2 1
      133 SETTABLEKS                       R14 R13 K15 ["Creating"]
      135 CALL                             R10 3 -1
      136 RETURN                           R10 -1

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
       28 GETTABLEKS                       R4 R1 K10 ["View"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K13 ["Tree"]
       38 GETTABLEKS                       R6 R6 K14 ["EmptyRow"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Src"]
       45 GETTABLEKS                       R7 R7 K15 ["Types"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K11 ["Src"]
       52 GETTABLEKS                       R8 R8 K16 ["Hooks"]
       54 GETTABLEKS                       R8 R8 K17 ["useActions"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K11 ["Src"]
       61 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       63 GETTABLEKS                       R9 R9 K18 ["useCreating"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R10 R0 K11 ["Src"]
       70 GETTABLEKS                       R10 R10 K16 ["Hooks"]
       72 GETTABLEKS                       R10 R10 K19 ["useExpanded"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R11 R0 K11 ["Src"]
       79 GETTABLEKS                       R11 R11 K16 ["Hooks"]
       81 GETTABLEKS                       R11 R11 K20 ["useItem"]
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
