MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConnectionIndicator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-BasicExample"]
       20 DUPTABLE                         R5 K13 [{"BackgroundColor3", "BorderSizePixel"}]
       21 LOADK                            R6 K14 ["$ForegroundMain"]
       22 SETTABLEKS                       R6 R5 K11 ["BackgroundColor3"]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K12 ["BorderSizePixel"]
       27 NEWTABLE                         R6 0 6
       29 MOVE                             R7 R2
       30 LOADK                            R8 K15 ["> #InnerFrame"]
       31 DUPTABLE                         R9 K16 [{"BackgroundColor3"}]
       32 LOADK                            R10 K14 ["$ForegroundMain"]
       33 SETTABLEKS                       R10 R9 K11 ["BackgroundColor3"]
       35 CALL                             R7 2 1
       36 MOVE                             R8 R2
       37 LOADK                            R9 K17 ["::UIPadding"]
       38 DUPTABLE                         R10 K22 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       39 GETIMPORT                        R11 K25 [UDim.new]
       41 LOADK                            R12 K26 [0.05]
       42 LOADN                            R13 0
       43 CALL                             R11 2 1
       44 SETTABLEKS                       R11 R10 K18 ["PaddingLeft"]
       46 GETIMPORT                        R11 K25 [UDim.new]
       48 LOADK                            R12 K26 [0.05]
       49 LOADN                            R13 0
       50 CALL                             R11 2 1
       51 SETTABLEKS                       R11 R10 K19 ["PaddingRight"]
       53 GETIMPORT                        R11 K25 [UDim.new]
       55 LOADK                            R12 K26 [0.05]
       56 LOADN                            R13 0
       57 CALL                             R11 2 1
       58 SETTABLEKS                       R11 R10 K20 ["PaddingTop"]
       60 GETIMPORT                        R11 K25 [UDim.new]
       62 LOADK                            R12 K26 [0.05]
       63 LOADN                            R13 0
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K21 ["PaddingBottom"]
       67 CALL                             R8 2 1
       68 MOVE                             R9 R2
       69 LOADK                            R10 K27 [">> TextLabel"]
       70 DUPTABLE                         R11 K31 [{"TextColor3", "BackgroundTransparency", "TextSize"}]
       71 LOADK                            R12 K32 ["$TextPrimary"]
       72 SETTABLEKS                       R12 R11 K28 ["TextColor3"]
       74 LOADN                            R12 1
       75 SETTABLEKS                       R12 R11 K29 ["BackgroundTransparency"]
       77 LOADN                            R12 12
       78 SETTABLEKS                       R12 R11 K30 ["TextSize"]
       80 CALL                             R9 2 1
       81 MOVE                             R10 R2
       82 LOADK                            R11 K33 [">> #BodyFrame"]
       83 DUPTABLE                         R12 K16 [{"BackgroundColor3"}]
       84 LOADK                            R13 K34 ["$ForegroundContrast"]
       85 SETTABLEKS                       R13 R12 K11 ["BackgroundColor3"]
       87 CALL                             R10 2 1
       88 MOVE                             R11 R2
       89 LOADK                            R12 K35 [">> #BodyFrame ::UIPadding"]
       90 DUPTABLE                         R13 K22 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       91 GETIMPORT                        R14 K25 [UDim.new]
       93 LOADK                            R15 K26 [0.05]
       94 LOADN                            R16 0
       95 CALL                             R14 2 1
       96 SETTABLEKS                       R14 R13 K18 ["PaddingLeft"]
       98 GETIMPORT                        R14 K25 [UDim.new]
      100 LOADK                            R15 K26 [0.05]
      101 LOADN                            R16 0
      102 CALL                             R14 2 1
      103 SETTABLEKS                       R14 R13 K19 ["PaddingRight"]
      105 GETIMPORT                        R14 K25 [UDim.new]
      107 LOADK                            R15 K26 [0.05]
      108 LOADN                            R16 0
      109 CALL                             R14 2 1
      110 SETTABLEKS                       R14 R13 K20 ["PaddingTop"]
      112 GETIMPORT                        R14 K25 [UDim.new]
      114 LOADK                            R15 K26 [0.05]
      115 LOADN                            R16 0
      116 CALL                             R14 2 1
      117 SETTABLEKS                       R14 R13 K21 ["PaddingBottom"]
      119 CALL                             R11 2 1
      120 MOVE                             R12 R2
      121 LOADK                            R13 K36 [":hover"]
      122 DUPTABLE                         R14 K16 [{"BackgroundColor3"}]
      123 LOADK                            R15 K37 ["$BackgroundHover"]
      124 SETTABLEKS                       R15 R14 K11 ["BackgroundColor3"]
      126 CALL                             R12 2 -1
      127 SETLIST                          R6 R7 -1 [1]
      129 CALL                             R3 3 -1
      130 RETURN                           R3 -1
