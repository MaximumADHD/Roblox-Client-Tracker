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
       13 GETUPVAL                         R5 3
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+5]
       16 GETTABLEKS                       R4 R0 K3 ["nodeProps"]
       18 GETTABLEKS                       R4 R4 K4 ["disabled"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 GETTABLEKS                       R7 R0 K3 ["nodeProps"]
       24 GETTABLEKS                       R7 R7 K5 ["action"]
       26 JUMPIFNOTEQKNIL                  R7 ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       32 LOADK                            R7 K6 ["Action is required"]
       33 GETIMPORT                        R5 K8 [assert]
       35 CALL                             R5 2 0
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K9 ["createElement"]
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R7 R0 K3 ["nodeProps"]
       42 CALL                             R5 2 1
       43 SETTABLEKS                       R5 R3 K10 ["Node"]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K9 ["createElement"]
       48 GETUPVAL                         R6 5
       49 DUPTABLE                         R7 K15 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
       50 MOVE                             R8 R2
       51 CALL                             R8 0 1
       52 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       54 GETUPVAL                         R8 6
       55 GETTABLEKS                       R8 R8 K16 ["Vertical"]
       57 SETTABLEKS                       R8 R7 K12 ["orientation"]
       59 CALL                             R5 2 1
       60 SETTABLEKS                       R5 R3 K17 ["Divider"]
       62 GETUPVAL                         R5 7
       63 CALL                             R5 0 3
       64 FORGPREP                         R5
       65 GETTABLEKS                       R11 R1 K18 ["schemas"]
       67 GETTABLE                         R10 R11 R9
       68 JUMPIFEQKB                       R10 FALSE ; [+70]
       70 GETTABLEKS                       R10 R0 K19 ["previousBindings"]
       72 JUMPIFNOT                        R10 ; [+18]
       73 GETTABLEKS                       R11 R0 K19 ["previousBindings"]
       75 GETTABLE                         R10 R11 R9
       76 JUMPIF                           R10 ; [+14]
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R10 R10 K9 ["createElement"]
       80 GETUPVAL                         R11 8
       81 DUPTABLE                         R12 K20 [{"disabled", "LayoutOrder"}]
       82 SETTABLEKS                       R4 R12 K4 ["disabled"]
       84 MOVE                             R13 R2
       85 CALL                             R13 0 1
       86 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
       88 CALL                             R10 2 1
       89 SETTABLE                         R10 R3 R9
       90 JUMP                             ; [+48]
       91 GETUPVAL                         R10 0
       92 GETTABLEKS                       R10 R10 K9 ["createElement"]
       94 GETUPVAL                         R11 9
       95 DUPTABLE                         R12 K27 [{"action", "binding", "disabled", "index", "LayoutOrder", "onCreated", "property", "schema", "validBinding"}]
       96 GETTABLEKS                       R13 R0 K3 ["nodeProps"]
       98 GETTABLEKS                       R13 R13 K5 ["action"]
      100 SETTABLEKS                       R13 R12 K5 ["action"]
      102 GETTABLEKS                       R14 R0 K28 ["bindings"]
      104 GETTABLE                         R13 R14 R9
      105 SETTABLEKS                       R13 R12 K21 ["binding"]
      107 SETTABLEKS                       R4 R12 K4 ["disabled"]
      109 GETTABLEKS                       R13 R0 K22 ["index"]
      111 SETTABLEKS                       R13 R12 K22 ["index"]
      113 MOVE                             R13 R2
      114 CALL                             R13 0 1
      115 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
      117 GETTABLEKS                       R13 R0 K23 ["onCreated"]
      119 SETTABLEKS                       R13 R12 K23 ["onCreated"]
      121 GETTABLEKS                       R13 R0 K24 ["property"]
      123 SETTABLEKS                       R13 R12 K24 ["property"]
      125 SETTABLEKS                       R9 R12 K25 ["schema"]
      127 GETTABLEKS                       R14 R0 K29 ["validBindingsBySchema"]
      129 JUMPIFNOT                        R14 ; [+4]
      130 GETTABLEKS                       R14 R0 K29 ["validBindingsBySchema"]
      132 GETTABLE                         R13 R14 R9
      133 JUMP                             ; [+1]
      134 LOADNIL                          R13
      135 SETTABLEKS                       R13 R12 K26 ["validBinding"]
      137 CALL                             R10 2 1
      138 SETTABLE                         R10 R3 R9
      139 FORGLOOP                         R5 2 ; [-75]
      141 GETUPVAL                         R5 0
      142 GETTABLEKS                       R5 R5 K9 ["createElement"]
      144 GETUPVAL                         R6 10
      145 DUPTABLE                         R7 K31 [{["tag"] = "tree-row row align-y-center auto-x", ["LayoutOrder"]}]
      146 GETTABLEKS                       R8 R0 K11 ["LayoutOrder"]
      148 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
      150 MOVE                             R8 R3
      151 CALL                             R5 3 -1
      152 RETURN                           R5 -1

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
       94 GETIMPORT                        R13 K5 [require]
       96 GETTABLEKS                       R14 R0 K14 ["Src"]
       98 GETTABLEKS                       R14 R14 K26 ["Flags"]
      100 GETTABLEKS                       R14 R14 K27 ["getFFlagIAMBooleanProperties"]
      102 CALL                             R13 1 1
      103 DUPCLOSURE                       R14 K28 [PROTO_0]
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R4
      115 RETURN                           R14 1
