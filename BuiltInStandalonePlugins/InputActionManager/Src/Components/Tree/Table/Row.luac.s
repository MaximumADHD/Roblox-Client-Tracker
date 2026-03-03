PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 0 4
        6 LOADK                            R3 K1 ["MouseKeyboard"]
        7 LOADK                            R4 K2 ["Touch"]
        8 LOADK                            R5 K3 ["Gamepad"]
        9 LOADK                            R6 K4 ["VR"]
       10 SETLIST                          R2 R3 4 [1]
       12 NEWTABLE                         R3 0 0
       14 GETTABLEKS                       R4 R0 K5 ["inputBindings"]
       16 JUMPIFNOT                        R4 ; [+30]
       17 GETTABLEKS                       R4 R0 K6 ["inputActionType"]
       19 JUMPIFNOT                        R4 ; [+27]
       20 MOVE                             R4 R2
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R9 R10 K7 ["createElement"]
       27 GETUPVAL                         R10 2
       28 DUPTABLE                         R11 K10 [{"LayoutOrder", "device", "inputBindings", "inputActionType"}]
       29 MOVE                             R12 R1
       30 CALL                             R12 0 1
       31 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       33 SETTABLEKS                       R8 R11 K9 ["device"]
       35 GETTABLEKS                       R12 R0 K5 ["inputBindings"]
       37 SETTABLEKS                       R12 R11 K5 ["inputBindings"]
       39 GETTABLEKS                       R12 R0 K6 ["inputActionType"]
       41 SETTABLEKS                       R12 R11 K6 ["inputActionType"]
       43 CALL                             R9 2 1
       44 SETTABLE                         R9 R3 R8
       45 FORGLOOP                         R4 2 ; [-22]
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R4 R5 K7 ["createElement"]
       50 GETUPVAL                         R5 3
       51 DUPTABLE                         R6 K12 [{"tag", "LayoutOrder"}]
       52 LOADK                            R7 K13 ["tree-row row align-y-center"]
       53 SETTABLEKS                       R7 R6 K11 ["tag"]
       55 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       57 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       59 DUPTABLE                         R7 K15 [{"Row"}]
       60 GETTABLEKS                       R8 R0 K5 ["inputBindings"]
       62 JUMPIFNOT                        R8 ; [+50]
       63 GETUPVAL                         R9 1
       64 GETTABLEKS                       R8 R9 K7 ["createElement"]
       66 GETUPVAL                         R9 3
       67 DUPTABLE                         R10 K16 [{"LayoutOrder", "tag"}]
       68 MOVE                             R11 R1
       69 CALL                             R11 0 1
       70 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       72 LOADK                            R11 K17 ["size-full-0 auto-y align-y-center col"]
       73 SETTABLEKS                       R11 R10 K11 ["tag"]
       75 DUPTABLE                         R11 K20 [{"Cells", "Divider"}]
       76 GETUPVAL                         R13 1
       77 GETTABLEKS                       R12 R13 K7 ["createElement"]
       79 GETUPVAL                         R13 3
       80 DUPTABLE                         R14 K16 [{"LayoutOrder", "tag"}]
       81 MOVE                             R15 R1
       82 CALL                             R15 0 1
       83 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
       85 LOADK                            R15 K21 ["size-full-full row columns-flex align-y-center"]
       86 SETTABLEKS                       R15 R14 K11 ["tag"]
       88 MOVE                             R15 R3
       89 CALL                             R12 3 1
       90 SETTABLEKS                       R12 R11 K18 ["Cells"]
       92 GETUPVAL                         R13 1
       93 GETTABLEKS                       R12 R13 K7 ["createElement"]
       95 GETUPVAL                         R13 4
       96 DUPTABLE                         R14 K23 [{"LayoutOrder", "orientation", "tag"}]
       97 MOVE                             R15 R1
       98 CALL                             R15 0 1
       99 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
      101 GETUPVAL                         R16 5
      102 GETTABLEKS                       R15 R16 K24 ["Horizontal"]
      104 SETTABLEKS                       R15 R14 K22 ["orientation"]
      106 LOADK                            R15 K25 ["auto-x"]
      107 SETTABLEKS                       R15 R14 K11 ["tag"]
      109 CALL                             R12 2 1
      110 SETTABLEKS                       R12 R11 K19 ["Divider"]
      112 CALL                             R8 3 1
      113 SETTABLEKS                       R8 R7 K14 ["Row"]
      115 CALL                             R4 3 -1
      116 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETTABLEKS                       R5 R3 K11 ["Divider"]
       32 GETTABLEKS                       R7 R3 K12 ["Enums"]
       34 GETTABLEKS                       R6 R7 K13 ["Orientation"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R9 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R9 K15 ["Types"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R13 R0 K14 ["Src"]
       47 GETTABLEKS                       R12 R13 K16 ["Components"]
       49 GETTABLEKS                       R11 R12 K17 ["Tree"]
       51 GETTABLEKS                       R10 R11 K18 ["Table"]
       53 GETTABLEKS                       R9 R10 K19 ["Cell"]
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K20 [PROTO_0]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 RETURN                           R9 1
