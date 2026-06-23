PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["createNextOrder"]
       10 CALL                             R2 0 1
       11 NEWTABLE                         R3 2 0
       13 GETTABLEKS                       R6 R0 K3 ["nodeProps"]
       15 GETTABLEKS                       R6 R6 K4 ["action"]
       17 JUMPIFNOTEQKNIL                  R6 ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       23 LOADK                            R6 K5 ["Action is required"]
       24 GETIMPORT                        R4 K7 [assert]
       26 CALL                             R4 2 0
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K8 ["createElement"]
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R6 R0 K3 ["nodeProps"]
       33 CALL                             R4 2 1
       34 SETTABLEKS                       R4 R3 K9 ["Node"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K8 ["createElement"]
       39 GETUPVAL                         R5 4
       40 DUPTABLE                         R6 K13 [{"LayoutOrder", "orientation", "tag"}]
       41 MOVE                             R7 R2
       42 CALL                             R7 0 1
       43 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       45 GETUPVAL                         R7 5
       46 GETTABLEKS                       R7 R7 K14 ["Vertical"]
       48 SETTABLEKS                       R7 R6 K11 ["orientation"]
       50 LOADK                            R7 K15 ["auto-y"]
       51 SETTABLEKS                       R7 R6 K12 ["tag"]
       53 CALL                             R4 2 1
       54 SETTABLEKS                       R4 R3 K16 ["Divider"]
       56 GETUPVAL                         R4 6
       57 CALL                             R4 0 3
       58 FORGPREP                         R4
       59 GETTABLEKS                       R10 R1 K17 ["schemas"]
       61 GETTABLE                         R9 R10 R8
       62 JUMPIFEQKB                       R9 FALSE ; [+56]
       64 GETTABLEKS                       R9 R0 K18 ["previousBindings"]
       66 JUMPIFNOT                        R9 ; [+16]
       67 GETTABLEKS                       R10 R0 K18 ["previousBindings"]
       69 GETTABLE                         R9 R10 R8
       70 JUMPIF                           R9 ; [+12]
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K8 ["createElement"]
       74 GETUPVAL                         R10 7
       75 DUPTABLE                         R11 K19 [{"LayoutOrder"}]
       76 MOVE                             R12 R2
       77 CALL                             R12 0 1
       78 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       80 CALL                             R9 2 1
       81 SETTABLE                         R9 R3 R8
       82 JUMP                             ; [+36]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K8 ["createElement"]
       86 GETUPVAL                         R10 8
       87 DUPTABLE                         R11 K25 [{"action", "binding", "index", "LayoutOrder", "onCreated", "property", "schema"}]
       88 GETTABLEKS                       R12 R0 K3 ["nodeProps"]
       90 GETTABLEKS                       R12 R12 K4 ["action"]
       92 SETTABLEKS                       R12 R11 K4 ["action"]
       94 GETTABLEKS                       R13 R0 K26 ["bindings"]
       96 GETTABLE                         R12 R13 R8
       97 SETTABLEKS                       R12 R11 K20 ["binding"]
       99 GETTABLEKS                       R12 R0 K21 ["index"]
      101 SETTABLEKS                       R12 R11 K21 ["index"]
      103 MOVE                             R12 R2
      104 CALL                             R12 0 1
      105 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      107 GETTABLEKS                       R12 R0 K22 ["onCreated"]
      109 SETTABLEKS                       R12 R11 K22 ["onCreated"]
      111 GETTABLEKS                       R12 R0 K23 ["property"]
      113 SETTABLEKS                       R12 R11 K23 ["property"]
      115 SETTABLEKS                       R8 R11 K24 ["schema"]
      117 CALL                             R9 2 1
      118 SETTABLE                         R9 R3 R8
      119 FORGLOOP                         R4 2 ; [-61]
      121 GETUPVAL                         R4 0
      122 GETTABLEKS                       R4 R4 K8 ["createElement"]
      124 GETUPVAL                         R5 9
      125 DUPTABLE                         R6 K27 [{"tag", "LayoutOrder"}]
      126 LOADK                            R7 K28 ["tree-row row align-y-center auto-x"]
      127 SETTABLEKS                       R7 R6 K12 ["tag"]
      129 GETTABLEKS                       R7 R0 K10 ["LayoutOrder"]
      131 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
      133 MOVE                             R7 R3
      134 CALL                             R4 3 -1
      135 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETTABLEKS                       R5 R3 K11 ["Divider"]
       32 GETTABLEKS                       R6 R3 K12 ["Enums"]
       34 GETTABLEKS                       R6 R6 K13 ["Orientation"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R8 K15 ["Types"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K14 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Components"]
       49 GETTABLEKS                       R9 R9 K17 ["Table"]
       51 GETTABLEKS                       R9 R9 K18 ["Cell"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R0 K14 ["Src"]
       58 GETTABLEKS                       R10 R10 K16 ["Components"]
       60 GETTABLEKS                       R10 R10 K17 ["Table"]
       62 GETTABLEKS                       R10 R10 K19 ["EmptyCell"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K5 [require]
       67 GETTABLEKS                       R11 R0 K14 ["Src"]
       69 GETTABLEKS                       R11 R11 K16 ["Components"]
       71 GETTABLEKS                       R11 R11 K20 ["Tree"]
       73 GETTABLEKS                       R11 R11 K21 ["Node"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K5 [require]
       78 GETTABLEKS                       R12 R0 K14 ["Src"]
       80 GETTABLEKS                       R12 R12 K22 ["Contexts"]
       82 GETTABLEKS                       R12 R12 K23 ["FilterConfiguration"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K5 [require]
       87 GETTABLEKS                       R13 R0 K14 ["Src"]
       89 GETTABLEKS                       R13 R13 K24 ["Util"]
       91 GETTABLEKS                       R13 R13 K25 ["getSchemas"]
       93 CALL                             R12 1 1
       94 DUPCLOSURE                       R13 K26 [PROTO_0]
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R4
      105 RETURN                           R13 1
