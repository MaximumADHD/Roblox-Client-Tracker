PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K6 [{["tag"] = "col auto-xy", ["LayoutOrder"]}]
       11 GETTABLEKS                       R5 R0 K7 ["layoutOrder"]
       13 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       15 DUPTABLE                         R5 K10 [{"Contents", "Divider"}]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K1 ["createElement"]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K2 ["View"]
       22 DUPTABLE                         R8 K13 [{["tag"] = "row align-y-center", ["LayoutOrder"], ["Size"]}]
       23 MOVE                             R9 R1
       24 CALL                             R9 0 1
       25 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       27 GETIMPORT                        R9 K16 [UDim2.new]
       29 LOADN                            R10 1
       30 LOADN                            R11 0
       31 LOADN                            R12 0
       32 LOADN                            R13 45
       33 CALL                             R9 4 1
       34 SETTABLEKS                       R9 R8 K12 ["Size"]
       36 DUPTABLE                         R9 K19 [{"Label", "Divider", "Child"}]
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K1 ["createElement"]
       40 GETUPVAL                         R11 2
       41 GETTABLEKS                       R11 R11 K2 ["View"]
       43 DUPTABLE                         R12 K21 [{["LayoutOrder"], ["tag"] = "padding-right-small auto-y fill"}]
       44 MOVE                             R13 R1
       45 CALL                             R13 0 1
       46 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       48 GETUPVAL                         R13 1
       49 GETTABLEKS                       R13 R13 K1 ["createElement"]
       51 GETUPVAL                         R14 2
       52 GETTABLEKS                       R14 R14 K22 ["Text"]
       54 DUPTABLE                         R15 K24 [{["Text"], ["tag"] = "text-body-small auto-xy"}]
       55 GETTABLEKS                       R16 R0 K25 ["text"]
       57 SETTABLEKS                       R16 R15 K22 ["Text"]
       59 CALL                             R13 2 -1
       60 CALL                             R10 -1 1
       61 SETTABLEKS                       R10 R9 K17 ["Label"]
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K1 ["createElement"]
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K9 ["Divider"]
       69 DUPTABLE                         R12 K27 [{"orientation", "LayoutOrder"}]
       70 GETUPVAL                         R13 2
       71 GETTABLEKS                       R13 R13 K28 ["Enums"]
       73 GETTABLEKS                       R13 R13 K29 ["Orientation"]
       75 GETTABLEKS                       R13 R13 K30 ["Vertical"]
       77 SETTABLEKS                       R13 R12 K26 ["orientation"]
       79 MOVE                             R13 R1
       80 CALL                             R13 0 1
       81 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       83 CALL                             R10 2 1
       84 SETTABLEKS                       R10 R9 K9 ["Divider"]
       86 GETUPVAL                         R10 1
       87 GETTABLEKS                       R10 R10 K1 ["createElement"]
       89 GETUPVAL                         R11 2
       90 GETTABLEKS                       R11 R11 K2 ["View"]
       92 DUPTABLE                         R12 K32 [{["tag"] = "auto-y padding-left-small fill", ["LayoutOrder"]}]
       93 MOVE                             R13 R1
       94 CALL                             R13 0 1
       95 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       97 GETTABLEKS                       R13 R0 K33 ["children"]
       99 CALL                             R10 3 1
      100 SETTABLEKS                       R10 R9 K18 ["Child"]
      102 CALL                             R6 3 1
      103 SETTABLEKS                       R6 R5 K8 ["Contents"]
      105 GETUPVAL                         R6 1
      106 GETTABLEKS                       R6 R6 K1 ["createElement"]
      108 GETUPVAL                         R7 2
      109 GETTABLEKS                       R7 R7 K9 ["Divider"]
      111 DUPTABLE                         R8 K27 [{"orientation", "LayoutOrder"}]
      112 GETUPVAL                         R9 2
      113 GETTABLEKS                       R9 R9 K28 ["Enums"]
      115 GETTABLEKS                       R9 R9 K29 ["Orientation"]
      117 GETTABLEKS                       R9 R9 K34 ["Horizontal"]
      119 SETTABLEKS                       R9 R8 K26 ["orientation"]
      121 MOVE                             R9 R1
      122 CALL                             R9 0 1
      123 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
      125 CALL                             R6 2 1
      126 SETTABLEKS                       R6 R5 K9 ["Divider"]
      128 CALL                             R2 3 -1
      129 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
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
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 RETURN                           R4 1
