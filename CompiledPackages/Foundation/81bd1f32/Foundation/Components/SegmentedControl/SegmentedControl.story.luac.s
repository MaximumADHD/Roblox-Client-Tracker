PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETUPVAL                         R4 1
        4 GETTABLEN                        R3 R4 1
        5 GETTABLEKS                       R2 R3 K1 ["id"]
        7 CALL                             R1 1 2
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["createElement"]
       11 GETUPVAL                         R4 2
       12 DUPTABLE                         R5 K4 [{"tag"}]
       13 LOADK                            R6 K5 ["col auto-xy"]
       14 SETTABLEKS                       R6 R5 K3 ["tag"]
       16 DUPTABLE                         R6 K7 [{"SegmentedControl"}]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K2 ["createElement"]
       20 GETUPVAL                         R8 3
       21 DUPTABLE                         R9 K12 [{"size", "segments", "value", "onActivated"}]
       22 GETTABLEKS                       R11 R0 K13 ["controls"]
       24 GETTABLEKS                       R10 R11 K8 ["size"]
       26 SETTABLEKS                       R10 R9 K8 ["size"]
       28 GETUPVAL                         R10 1
       29 SETTABLEKS                       R10 R9 K9 ["segments"]
       31 SETTABLEKS                       R1 R9 K10 ["value"]
       33 SETTABLEKS                       R2 R9 K11 ["onActivated"]
       35 CALL                             R7 2 1
       36 SETTABLEKS                       R7 R6 K6 ["SegmentedControl"]
       38 CALL                             R3 3 -1
       39 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R6 K10 ["InputSize"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R7 K12 ["SegmentedControl"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["Types"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K11 ["Components"]
       44 GETTABLEKS                       R8 R9 K14 ["View"]
       46 CALL                             R7 1 1
       47 NEWTABLE                         R8 0 5
       49 DUPTABLE                         R9 K17 [{"id", "text"}]
       50 LOADK                            R10 K18 ["1"]
       51 SETTABLEKS                       R10 R9 K15 ["id"]
       53 LOADK                            R10 K19 ["Lorem Ipsum"]
       54 SETTABLEKS                       R10 R9 K16 ["text"]
       56 DUPTABLE                         R10 K17 [{"id", "text"}]
       57 LOADK                            R11 K20 ["2"]
       58 SETTABLEKS                       R11 R10 K15 ["id"]
       60 LOADK                            R11 K19 ["Lorem Ipsum"]
       61 SETTABLEKS                       R11 R10 K16 ["text"]
       63 DUPTABLE                         R11 K17 [{"id", "text"}]
       64 LOADK                            R12 K21 ["3"]
       65 SETTABLEKS                       R12 R11 K15 ["id"]
       67 LOADK                            R12 K19 ["Lorem Ipsum"]
       68 SETTABLEKS                       R12 R11 K16 ["text"]
       70 DUPTABLE                         R12 K17 [{"id", "text"}]
       71 LOADK                            R13 K22 ["4"]
       72 SETTABLEKS                       R13 R12 K15 ["id"]
       74 LOADK                            R13 K19 ["Lorem Ipsum"]
       75 SETTABLEKS                       R13 R12 K16 ["text"]
       77 DUPTABLE                         R13 K17 [{"id", "text"}]
       78 LOADK                            R14 K23 ["5"]
       79 SETTABLEKS                       R14 R13 K15 ["id"]
       81 LOADK                            R14 K24 ["Lorem Ipsum Long"]
       82 SETTABLEKS                       R14 R13 K16 ["text"]
       84 SETLIST                          R8 R9 5 [1]
       86 DUPCLOSURE                       R9 K25 [PROTO_0]
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R5
       91 DUPTABLE                         R10 K29 [{"summary", "story", "controls"}]
       92 LOADK                            R11 K12 ["SegmentedControl"]
       93 SETTABLEKS                       R11 R10 K26 ["summary"]
       95 SETTABLEKS                       R9 R10 K27 ["story"]
       97 DUPTABLE                         R11 K31 [{"size"}]
       98 GETTABLEKS                       R12 R2 K32 ["values"]
      100 MOVE                             R13 R4
      101 CALL                             R12 1 1
      102 SETTABLEKS                       R12 R11 K30 ["size"]
      104 SETTABLEKS                       R11 R10 K28 ["controls"]
      106 RETURN                           R10 1
