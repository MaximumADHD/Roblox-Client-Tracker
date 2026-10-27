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
       13 GETTABLEKS                       R4 R0 K3 ["nodeProps"]
       15 GETTABLEKS                       R4 R4 K4 ["disabled"]
       17 GETTABLEKS                       R7 R0 K3 ["nodeProps"]
       19 GETTABLEKS                       R7 R7 K5 ["action"]
       21 JUMPIFNOTEQKNIL                  R7 ; [+2]
       23 LOADB                            R6 0 +1
       24 LOADB                            R6 1
       25 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       27 LOADK                            R7 K6 ["Action is required"]
       28 GETIMPORT                        R5 K8 [assert]
       30 CALL                             R5 2 0
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K9 ["createElement"]
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R7 R0 K3 ["nodeProps"]
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R3 K10 ["Node"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K9 ["createElement"]
       43 GETUPVAL                         R6 4
       44 DUPTABLE                         R7 K15 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
       45 MOVE                             R8 R2
       46 CALL                             R8 0 1
       47 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       49 GETUPVAL                         R8 5
       50 GETTABLEKS                       R8 R8 K16 ["Vertical"]
       52 SETTABLEKS                       R8 R7 K12 ["orientation"]
       54 CALL                             R5 2 1
       55 SETTABLEKS                       R5 R3 K17 ["Divider"]
       57 GETUPVAL                         R5 6
       58 CALL                             R5 0 3
       59 FORGPREP                         R5
       60 GETTABLEKS                       R11 R1 K18 ["schemas"]
       62 GETTABLE                         R10 R11 R9
       63 JUMPIFEQKB                       R10 FALSE ; [+70]
       65 GETTABLEKS                       R10 R0 K19 ["previousBindings"]
       67 JUMPIFNOT                        R10 ; [+18]
       68 GETTABLEKS                       R11 R0 K19 ["previousBindings"]
       70 GETTABLE                         R10 R11 R9
       71 JUMPIF                           R10 ; [+14]
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R10 R10 K9 ["createElement"]
       75 GETUPVAL                         R11 7
       76 DUPTABLE                         R12 K20 [{"disabled", "LayoutOrder"}]
       77 SETTABLEKS                       R4 R12 K4 ["disabled"]
       79 MOVE                             R13 R2
       80 CALL                             R13 0 1
       81 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
       83 CALL                             R10 2 1
       84 SETTABLE                         R10 R3 R9
       85 JUMP                             ; [+48]
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R10 R10 K9 ["createElement"]
       89 GETUPVAL                         R11 8
       90 DUPTABLE                         R12 K27 [{"action", "binding", "disabled", "index", "LayoutOrder", "onCreated", "property", "schema", "validBinding"}]
       91 GETTABLEKS                       R13 R0 K3 ["nodeProps"]
       93 GETTABLEKS                       R13 R13 K5 ["action"]
       95 SETTABLEKS                       R13 R12 K5 ["action"]
       97 GETTABLEKS                       R14 R0 K28 ["bindings"]
       99 GETTABLE                         R13 R14 R9
      100 SETTABLEKS                       R13 R12 K21 ["binding"]
      102 SETTABLEKS                       R4 R12 K4 ["disabled"]
      104 GETTABLEKS                       R13 R0 K22 ["index"]
      106 SETTABLEKS                       R13 R12 K22 ["index"]
      108 MOVE                             R13 R2
      109 CALL                             R13 0 1
      110 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
      112 GETTABLEKS                       R13 R0 K23 ["onCreated"]
      114 SETTABLEKS                       R13 R12 K23 ["onCreated"]
      116 GETTABLEKS                       R13 R0 K24 ["property"]
      118 SETTABLEKS                       R13 R12 K24 ["property"]
      120 SETTABLEKS                       R9 R12 K25 ["schema"]
      122 GETTABLEKS                       R14 R0 K29 ["validBindingsBySchema"]
      124 JUMPIFNOT                        R14 ; [+4]
      125 GETTABLEKS                       R14 R0 K29 ["validBindingsBySchema"]
      127 GETTABLE                         R13 R14 R9
      128 JUMP                             ; [+1]
      129 LOADNIL                          R13
      130 SETTABLEKS                       R13 R12 K26 ["validBinding"]
      132 CALL                             R10 2 1
      133 SETTABLE                         R10 R3 R9
      134 FORGLOOP                         R5 2 ; [-75]
      136 GETUPVAL                         R5 0
      137 GETTABLEKS                       R5 R5 K9 ["createElement"]
      139 GETUPVAL                         R6 9
      140 DUPTABLE                         R7 K31 [{["tag"] = "tree-row row align-y-center auto-x", ["LayoutOrder"]}]
      141 GETTABLEKS                       R8 R0 K11 ["LayoutOrder"]
      143 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
      145 MOVE                             R8 R3
      146 CALL                             R5 3 -1
      147 RETURN                           R5 -1

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
