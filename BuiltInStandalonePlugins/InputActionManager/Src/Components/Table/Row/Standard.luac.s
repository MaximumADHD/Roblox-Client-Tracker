PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 2 0
        6 GETTABLEKS                       R5 R0 K1 ["nodeProps"]
        8 GETTABLEKS                       R5 R5 K2 ["action"]
       10 JUMPIFNOTEQKNIL                  R5 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       16 LOADK                            R5 K3 ["Action is required"]
       17 GETIMPORT                        R3 K5 [assert]
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K6 ["createElement"]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R5 R0 K1 ["nodeProps"]
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K7 ["Node"]
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R3 R3 K6 ["createElement"]
       32 GETUPVAL                         R4 3
       33 DUPTABLE                         R5 K11 [{"LayoutOrder", "orientation", "tag"}]
       34 MOVE                             R6 R1
       35 CALL                             R6 0 1
       36 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       38 GETUPVAL                         R6 4
       39 GETTABLEKS                       R6 R6 K12 ["Vertical"]
       41 SETTABLEKS                       R6 R5 K9 ["orientation"]
       43 LOADK                            R6 K13 ["auto-y"]
       44 SETTABLEKS                       R6 R5 K10 ["tag"]
       46 CALL                             R3 2 1
       47 SETTABLEKS                       R3 R2 K14 ["Divider"]
       49 GETUPVAL                         R3 5
       50 CALL                             R3 0 3
       51 FORGPREP                         R3
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R8 R8 K6 ["createElement"]
       55 GETUPVAL                         R9 6
       56 DUPTABLE                         R10 K19 [{"action", "binding", "LayoutOrder", "onCreated", "property", "schema"}]
       57 GETTABLEKS                       R11 R0 K1 ["nodeProps"]
       59 GETTABLEKS                       R11 R11 K2 ["action"]
       61 SETTABLEKS                       R11 R10 K2 ["action"]
       63 GETTABLEKS                       R12 R0 K20 ["bindings"]
       65 GETTABLE                         R11 R12 R7
       66 SETTABLEKS                       R11 R10 K15 ["binding"]
       68 MOVE                             R11 R1
       69 CALL                             R11 0 1
       70 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       72 GETTABLEKS                       R11 R0 K16 ["onCreated"]
       74 SETTABLEKS                       R11 R10 K16 ["onCreated"]
       76 GETTABLEKS                       R11 R0 K17 ["property"]
       78 SETTABLEKS                       R11 R10 K17 ["property"]
       80 SETTABLEKS                       R7 R10 K18 ["schema"]
       82 CALL                             R8 2 1
       83 SETTABLE                         R8 R2 R7
       84 FORGLOOP                         R3 2 ; [-33]
       86 GETUPVAL                         R3 1
       87 GETTABLEKS                       R3 R3 K6 ["createElement"]
       89 GETUPVAL                         R4 7
       90 DUPTABLE                         R5 K21 [{"tag", "LayoutOrder"}]
       91 LOADK                            R6 K22 ["tree-row row align-y-center"]
       92 SETTABLEKS                       R6 R5 K10 ["tag"]
       94 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       96 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       98 MOVE                             R6 R2
       99 CALL                             R3 3 -1
      100 RETURN                           R3 -1

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
       60 GETTABLEKS                       R10 R10 K19 ["Tree"]
       62 GETTABLEKS                       R10 R10 K20 ["Node"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K5 [require]
       67 GETTABLEKS                       R11 R0 K14 ["Src"]
       69 GETTABLEKS                       R11 R11 K21 ["Util"]
       71 GETTABLEKS                       R11 R11 K22 ["getSchemas"]
       73 CALL                             R10 1 1
       74 DUPCLOSURE                       R11 K23 [PROTO_0]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R4
       83 RETURN                           R11 1
