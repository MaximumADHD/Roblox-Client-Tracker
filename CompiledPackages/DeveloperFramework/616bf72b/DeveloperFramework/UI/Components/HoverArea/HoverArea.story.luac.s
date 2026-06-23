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
       43 LOADN                            R11 44
       44 CALL                             R7 4 1
       45 SETTABLEKS                       R7 R6 K12 ["Size"]
       47 DUPTABLE                         R7 K19 [{"BottomLabel", "TopLabel"}]
       48 GETTABLEKS                       R8 R1 K11 ["createElement"]
       50 LOADK                            R9 K20 ["TextLabel"]
       51 DUPTABLE                         R10 K24 [{"Size", "Text", "Position", "AnchorPoint"}]
       52 GETIMPORT                        R11 K16 [UDim2.new]
       54 LOADN                            R12 0
       55 LOADN                            R13 100
       56 LOADN                            R14 0
       57 LOADN                            R15 60
       58 CALL                             R11 4 1
       59 SETTABLEKS                       R11 R10 K12 ["Size"]
       61 LOADK                            R11 K25 ["Priority 1\nPointingHand"]
       62 SETTABLEKS                       R11 R10 K21 ["Text"]
       64 GETIMPORT                        R11 K16 [UDim2.new]
       66 LOADK                            R12 K26 [0.5]
       67 LOADN                            R13 0
       68 LOADK                            R14 K26 [0.5]
       69 LOADN                            R15 231
       70 CALL                             R11 4 1
       71 SETTABLEKS                       R11 R10 K22 ["Position"]
       73 GETIMPORT                        R11 K28 [Vector2.new]
       75 LOADK                            R12 K26 [0.5]
       76 LOADK                            R13 K26 [0.5]
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K23 ["AnchorPoint"]
       80 DUPTABLE                         R11 K29 [{"HoverArea"}]
       81 GETTABLEKS                       R12 R1 K11 ["createElement"]
       83 MOVE                             R13 R3
       84 DUPTABLE                         R14 K31 [{"Cursor"}]
       85 LOADK                            R15 K32 ["PointingHand"]
       86 SETTABLEKS                       R15 R14 K30 ["Cursor"]
       88 CALL                             R12 2 1
       89 SETTABLEKS                       R12 R11 K10 ["HoverArea"]
       91 CALL                             R8 3 1
       92 SETTABLEKS                       R8 R7 K17 ["BottomLabel"]
       94 GETTABLEKS                       R8 R1 K11 ["createElement"]
       96 LOADK                            R9 K20 ["TextLabel"]
       97 DUPTABLE                         R10 K24 [{"Size", "Text", "Position", "AnchorPoint"}]
       98 GETIMPORT                        R11 K16 [UDim2.new]
      100 LOADN                            R12 0
      101 LOADN                            R13 100
      102 LOADN                            R14 0
      103 LOADN                            R15 60
      104 CALL                             R11 4 1
      105 SETTABLEKS                       R11 R10 K12 ["Size"]
      107 LOADK                            R11 K33 ["Priority 2\nOpenHand"]
      108 SETTABLEKS                       R11 R10 K21 ["Text"]
      110 GETIMPORT                        R11 K16 [UDim2.new]
      112 LOADK                            R12 K26 [0.5]
      113 LOADN                            R13 20
      114 LOADK                            R14 K26 [0.5]
      115 LOADN                            R15 25
      116 CALL                             R11 4 1
      117 SETTABLEKS                       R11 R10 K22 ["Position"]
      119 GETIMPORT                        R11 K28 [Vector2.new]
      121 LOADK                            R12 K26 [0.5]
      122 LOADK                            R13 K26 [0.5]
      123 CALL                             R11 2 1
      124 SETTABLEKS                       R11 R10 K23 ["AnchorPoint"]
      126 DUPTABLE                         R11 K29 [{"HoverArea"}]
      127 GETTABLEKS                       R12 R1 K11 ["createElement"]
      129 MOVE                             R13 R3
      130 DUPTABLE                         R14 K35 [{"Cursor", "Priority"}]
      131 LOADK                            R15 K36 ["OpenHand"]
      132 SETTABLEKS                       R15 R14 K30 ["Cursor"]
      134 LOADN                            R15 2
      135 SETTABLEKS                       R15 R14 K34 ["Priority"]
      137 CALL                             R12 2 1
      138 SETTABLEKS                       R12 R11 K10 ["HoverArea"]
      140 CALL                             R8 3 1
      141 SETTABLEKS                       R8 R7 K18 ["TopLabel"]
      143 CALL                             R4 3 -1
      144 RETURN                           R4 -1
