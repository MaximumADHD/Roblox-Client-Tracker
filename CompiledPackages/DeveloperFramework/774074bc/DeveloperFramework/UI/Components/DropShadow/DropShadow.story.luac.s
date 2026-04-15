MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["Container"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["DropShadow"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["createElement"]
       36 LOADK                            R5 K12 ["Frame"]
       37 DUPTABLE                         R6 K16 [{"Size", "BackgroundTransparency", "BackgroundColor3"}]
       38 GETIMPORT                        R7 K19 [UDim2.new]
       40 LOADN                            R8 0
       41 LOADN                            R9 200
       42 LOADN                            R10 0
       43 LOADN                            R11 100
       44 CALL                             R7 4 1
       45 SETTABLEKS                       R7 R6 K13 ["Size"]
       47 LOADN                            R7 0
       48 SETTABLEKS                       R7 R6 K14 ["BackgroundTransparency"]
       50 GETIMPORT                        R7 K21 [Color3.new]
       52 LOADN                            R8 1
       53 LOADN                            R9 1
       54 LOADN                            R10 1
       55 CALL                             R7 3 1
       56 SETTABLEKS                       R7 R6 K15 ["BackgroundColor3"]
       58 NEWTABLE                         R7 0 1
       60 GETTABLEKS                       R8 R1 K11 ["createElement"]
       62 MOVE                             R9 R2
       63 DUPTABLE                         R10 K24 [{"Size", "AnchorPoint", "Position"}]
       64 GETIMPORT                        R11 K19 [UDim2.new]
       66 LOADK                            R12 K25 [0.5]
       67 LOADN                            R13 0
       68 LOADK                            R14 K25 [0.5]
       69 LOADN                            R15 0
       70 CALL                             R11 4 1
       71 SETTABLEKS                       R11 R10 K13 ["Size"]
       73 GETIMPORT                        R11 K27 [Vector2.new]
       75 LOADK                            R12 K25 [0.5]
       76 LOADK                            R13 K25 [0.5]
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K22 ["AnchorPoint"]
       80 GETIMPORT                        R11 K19 [UDim2.new]
       82 LOADK                            R12 K25 [0.5]
       83 LOADN                            R13 0
       84 LOADK                            R14 K25 [0.5]
       85 LOADN                            R15 0
       86 CALL                             R11 4 1
       87 SETTABLEKS                       R11 R10 K23 ["Position"]
       89 DUPTABLE                         R11 K28 [{"DropShadow"}]
       90 GETTABLEKS                       R12 R1 K11 ["createElement"]
       92 MOVE                             R13 R3
       93 NEWTABLE                         R14 0 0
       95 NEWTABLE                         R15 0 1
       97 GETTABLEKS                       R16 R1 K11 ["createElement"]
       99 LOADK                            R17 K29 ["TextLabel"]
      100 DUPTABLE                         R18 K31 [{"BackgroundTransparency", "Size", "Text"}]
      101 LOADN                            R19 1
      102 SETTABLEKS                       R19 R18 K14 ["BackgroundTransparency"]
      104 GETIMPORT                        R19 K19 [UDim2.new]
      106 LOADN                            R20 1
      107 LOADN                            R21 0
      108 LOADN                            R22 1
      109 LOADN                            R23 0
      110 CALL                             R19 4 1
      111 SETTABLEKS                       R19 R18 K13 ["Size"]
      113 LOADK                            R19 K32 ["Some text"]
      114 SETTABLEKS                       R19 R18 K30 ["Text"]
      116 CALL                             R16 2 -1
      117 SETLIST                          R15 R16 -1 [1]
      119 CALL                             R12 3 1
      120 SETTABLEKS                       R12 R11 K10 ["DropShadow"]
      122 CALL                             R8 3 -1
      123 SETLIST                          R7 R8 -1 [1]
      125 CALL                             R4 3 -1
      126 RETURN                           R4 -1
