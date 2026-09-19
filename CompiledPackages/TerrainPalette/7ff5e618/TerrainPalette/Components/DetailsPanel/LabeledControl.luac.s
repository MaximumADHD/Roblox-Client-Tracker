PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["isWide"]
        4 JUMPIFNOT                        R2 ; [+65]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K7 [{["tag"] = "row align-y-center gap-small size-full-800", ["LayoutOrder"], ["testId"] = "LabeledControl"}]
       10 GETTABLEKS                       R5 R0 K8 ["layoutOrder"]
       12 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       14 DUPTABLE                         R5 K11 [{"Label", "ControlContainer"}]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K1 ["createElement"]
       18 GETUPVAL                         R7 3
       19 DUPTABLE                         R8 K15 [{["tag"] = "text-body-small text-align-x-left content-muted", ["LayoutOrder"], ["Size"], ["Text"]}]
       20 MOVE                             R9 R1
       21 CALL                             R9 0 1
       22 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       24 GETIMPORT                        R9 K18 [UDim2.new]
       26 LOADN                            R10 1
       27 GETTABLEKS                       R13 R0 K20 ["controlWidth"]
       29 ADDK                             R12 R13 K19 [8]
       30 MINUS                            R11 R12
       31 LOADN                            R12 0
       32 LOADN                            R13 32
       33 CALL                             R9 4 1
       34 SETTABLEKS                       R9 R8 K13 ["Size"]
       36 GETTABLEKS                       R9 R0 K21 ["label"]
       38 SETTABLEKS                       R9 R8 K14 ["Text"]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K9 ["Label"]
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R6 R6 K1 ["createElement"]
       46 GETUPVAL                         R7 2
       47 DUPTABLE                         R8 K23 [{["LayoutOrder"], ["Size"], ["tag"] = "no-flex"}]
       48 MOVE                             R9 R1
       49 CALL                             R9 0 1
       50 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       52 GETIMPORT                        R9 K25 [UDim2.fromOffset]
       54 GETTABLEKS                       R10 R0 K20 ["controlWidth"]
       56 LOADN                            R11 32
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K13 ["Size"]
       60 DUPTABLE                         R9 K27 [{"Control"}]
       61 GETTABLEKS                       R10 R0 K28 ["control"]
       63 SETTABLEKS                       R10 R9 K26 ["Control"]
       65 CALL                             R6 3 1
       66 SETTABLEKS                       R6 R5 K10 ["ControlContainer"]
       68 CALL                             R2 3 -1
       69 RETURN                           R2 -1
       70 GETUPVAL                         R2 1
       71 GETTABLEKS                       R2 R2 K1 ["createElement"]
       73 GETUPVAL                         R3 2
       74 DUPTABLE                         R4 K30 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["LayoutOrder"], ["testId"] = "LabeledControl"}]
       75 GETTABLEKS                       R5 R0 K8 ["layoutOrder"]
       77 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       79 DUPTABLE                         R5 K11 [{"Label", "ControlContainer"}]
       80 GETUPVAL                         R6 1
       81 GETTABLEKS                       R6 R6 K1 ["createElement"]
       83 GETUPVAL                         R7 3
       84 DUPTABLE                         R8 K32 [{["tag"] = "size-full-350 text-body-small text-align-x-left content-muted", ["LayoutOrder"], ["Text"]}]
       85 MOVE                             R9 R1
       86 CALL                             R9 0 1
       87 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       89 GETTABLEKS                       R9 R0 K21 ["label"]
       91 SETTABLEKS                       R9 R8 K14 ["Text"]
       93 CALL                             R6 2 1
       94 SETTABLEKS                       R6 R5 K9 ["Label"]
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R6 R6 K1 ["createElement"]
       99 GETUPVAL                         R7 2
      100 DUPTABLE                         R8 K34 [{["tag"] = "size-full-800", ["LayoutOrder"]}]
      101 MOVE                             R9 R1
      102 CALL                             R9 0 1
      103 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      105 DUPTABLE                         R9 K27 [{"Control"}]
      106 GETTABLEKS                       R10 R0 K28 ["control"]
      108 SETTABLEKS                       R10 R9 K26 ["Control"]
      110 CALL                             R6 3 1
      111 SETTABLEKS                       R6 R5 K10 ["ControlContainer"]
      113 CALL                             R2 3 -1
      114 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R3 R3 K10 ["createNextOrder"]
       30 GETTABLEKS                       R4 R1 K11 ["Text"]
       32 GETTABLEKS                       R5 R1 K12 ["View"]
       34 DUPCLOSURE                       R6 K13 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R4
       39 RETURN                           R6 1
