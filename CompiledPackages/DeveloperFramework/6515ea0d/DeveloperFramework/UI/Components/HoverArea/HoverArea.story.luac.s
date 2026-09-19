MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Container"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["HoverArea"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["createElement"]
       36 MOVE                             R5 R2
       37 DUPTABLE                         R6 K13 [{"Size"}]
       38 GETIMPORT                        R7 K16 [UDim2.new]
       40 LOADN                            R8 1
       41 LOADN                            R9 0
       42 LOADN                            R10 0
       43 LOADN                            R11 300
       44 CALL                             R7 4 1
       45 SETTABLEKS                       R7 R6 K12 ["Size"]
       47 DUPTABLE                         R7 K19 [{"BottomLabel", "TopLabel"}]
       48 GETTABLEKS                       R8 R1 K11 ["createElement"]
       50 LOADK                            R9 K20 ["TextLabel"]
       51 DUPTABLE                         R10 K25 [{["Size"], ["Text"] = "Priority 1\nPointingHand", ["Position"], ["AnchorPoint"]}]
       52 GETIMPORT                        R11 K16 [UDim2.new]
       54 LOADN                            R12 0
       55 LOADN                            R13 100
       56 LOADN                            R14 0
       57 LOADN                            R15 60
       58 CALL                             R11 4 1
       59 SETTABLEKS                       R11 R10 K12 ["Size"]
       61 GETIMPORT                        R11 K16 [UDim2.new]
       63 LOADK                            R12 K26 [0.5]
       64 LOADN                            R13 0
       65 LOADK                            R14 K26 [0.5]
       66 LOADN                            R15 -25
       67 CALL                             R11 4 1
       68 SETTABLEKS                       R11 R10 K23 ["Position"]
       70 GETIMPORT                        R11 K28 [Vector2.new]
       72 LOADK                            R12 K26 [0.5]
       73 LOADK                            R13 K26 [0.5]
       74 CALL                             R11 2 1
       75 SETTABLEKS                       R11 R10 K24 ["AnchorPoint"]
       77 DUPTABLE                         R11 K29 [{"HoverArea"}]
       78 GETTABLEKS                       R12 R1 K11 ["createElement"]
       80 MOVE                             R13 R3
       81 DUPTABLE                         R14 K32 [{["Cursor"] = "PointingHand"}]
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K10 ["HoverArea"]
       85 CALL                             R8 3 1
       86 SETTABLEKS                       R8 R7 K17 ["BottomLabel"]
       88 GETTABLEKS                       R8 R1 K11 ["createElement"]
       90 LOADK                            R9 K20 ["TextLabel"]
       91 DUPTABLE                         R10 K34 [{["Size"], ["Text"] = "Priority 2\nOpenHand", ["Position"], ["AnchorPoint"]}]
       92 GETIMPORT                        R11 K16 [UDim2.new]
       94 LOADN                            R12 0
       95 LOADN                            R13 100
       96 LOADN                            R14 0
       97 LOADN                            R15 60
       98 CALL                             R11 4 1
       99 SETTABLEKS                       R11 R10 K12 ["Size"]
      101 GETIMPORT                        R11 K16 [UDim2.new]
      103 LOADK                            R12 K26 [0.5]
      104 LOADN                            R13 20
      105 LOADK                            R14 K26 [0.5]
      106 LOADN                            R15 25
      107 CALL                             R11 4 1
      108 SETTABLEKS                       R11 R10 K23 ["Position"]
      110 GETIMPORT                        R11 K28 [Vector2.new]
      112 LOADK                            R12 K26 [0.5]
      113 LOADK                            R13 K26 [0.5]
      114 CALL                             R11 2 1
      115 SETTABLEKS                       R11 R10 K24 ["AnchorPoint"]
      117 DUPTABLE                         R11 K29 [{"HoverArea"}]
      118 GETTABLEKS                       R12 R1 K11 ["createElement"]
      120 MOVE                             R13 R3
      121 DUPTABLE                         R14 K38 [{["Cursor"] = "OpenHand", ["Priority"] = 2}]
      122 CALL                             R12 2 1
      123 SETTABLEKS                       R12 R11 K10 ["HoverArea"]
      125 CALL                             R8 3 1
      126 SETTABLEKS                       R8 R7 K18 ["TopLabel"]
      128 CALL                             R4 3 -1
      129 RETURN                           R4 -1
