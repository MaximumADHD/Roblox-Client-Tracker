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
       31 GETTABLEKS                       R4 R4 K10 ["DropShadow"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["createElement"]
       36 LOADK                            R5 K12 ["Frame"]
       37 DUPTABLE                         R6 K17 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"]}]
       38 GETIMPORT                        R7 K20 [UDim2.new]
       40 LOADN                            R8 0
       41 LOADN                            R9 200
       42 LOADN                            R10 0
       43 LOADN                            R11 100
       44 CALL                             R7 4 1
       45 SETTABLEKS                       R7 R6 K13 ["Size"]
       47 GETIMPORT                        R7 K22 [Color3.new]
       49 LOADN                            R8 1
       50 LOADN                            R9 1
       51 LOADN                            R10 1
       52 CALL                             R7 3 1
       53 SETTABLEKS                       R7 R6 K16 ["BackgroundColor3"]
       55 NEWTABLE                         R7 0 1
       57 GETTABLEKS                       R8 R1 K11 ["createElement"]
       59 MOVE                             R9 R2
       60 DUPTABLE                         R10 K25 [{"Size", "AnchorPoint", "Position"}]
       61 GETIMPORT                        R11 K20 [UDim2.new]
       63 LOADK                            R12 K26 [0.5]
       64 LOADN                            R13 0
       65 LOADK                            R14 K26 [0.5]
       66 LOADN                            R15 0
       67 CALL                             R11 4 1
       68 SETTABLEKS                       R11 R10 K13 ["Size"]
       70 GETIMPORT                        R11 K28 [Vector2.new]
       72 LOADK                            R12 K26 [0.5]
       73 LOADK                            R13 K26 [0.5]
       74 CALL                             R11 2 1
       75 SETTABLEKS                       R11 R10 K23 ["AnchorPoint"]
       77 GETIMPORT                        R11 K20 [UDim2.new]
       79 LOADK                            R12 K26 [0.5]
       80 LOADN                            R13 0
       81 LOADK                            R14 K26 [0.5]
       82 LOADN                            R15 0
       83 CALL                             R11 4 1
       84 SETTABLEKS                       R11 R10 K24 ["Position"]
       86 DUPTABLE                         R11 K29 [{"DropShadow"}]
       87 GETTABLEKS                       R12 R1 K11 ["createElement"]
       89 MOVE                             R13 R3
       90 NEWTABLE                         R14 0 0
       92 NEWTABLE                         R15 0 1
       94 GETTABLEKS                       R16 R1 K11 ["createElement"]
       96 LOADK                            R17 K30 ["TextLabel"]
       97 DUPTABLE                         R18 K34 [{["BackgroundTransparency"] = 1, ["Size"], ["Text"] = "Some text"}]
       98 GETIMPORT                        R19 K20 [UDim2.new]
      100 LOADN                            R20 1
      101 LOADN                            R21 0
      102 LOADN                            R22 1
      103 LOADN                            R23 0
      104 CALL                             R19 4 1
      105 SETTABLEKS                       R19 R18 K13 ["Size"]
      107 CALL                             R16 2 -1
      108 SETLIST                          R15 R16 -1 [1]
      110 CALL                             R12 3 1
      111 SETTABLEKS                       R12 R11 K10 ["DropShadow"]
      113 CALL                             R8 3 -1
      114 SETLIST                          R7 R8 -1 [1]
      116 CALL                             R4 3 -1
      117 RETURN                           R4 -1
