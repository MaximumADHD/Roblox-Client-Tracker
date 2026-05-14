MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       22 MOVE                             R3 R2
       23 LOADK                            R4 K9 [".Component-MappingsListRow"]
       24 DUPTABLE                         R5 K12 [{"Size", "Position"}]
       25 GETIMPORT                        R6 K15 [UDim2.new]
       27 LOADN                            R7 1
       28 LOADN                            R8 0
       29 LOADN                            R9 0
       30 LOADN                            R10 20
       31 CALL                             R6 4 1
       32 SETTABLEKS                       R6 R5 K10 ["Size"]
       34 GETIMPORT                        R6 K15 [UDim2.new]
       36 LOADK                            R7 K16 [0.5]
       37 LOADN                            R8 0
       38 LOADN                            R9 0
       39 LOADN                            R10 0
       40 CALL                             R6 4 1
       41 SETTABLEKS                       R6 R5 K11 ["Position"]
       43 NEWTABLE                         R6 0 3
       45 MOVE                             R7 R2
       46 LOADK                            R8 K17 ["> TextButton"]
       47 DUPTABLE                         R9 K19 [{"BorderSizePixel"}]
       48 LOADN                            R10 0
       49 SETTABLEKS                       R10 R9 K18 ["BorderSizePixel"]
       51 CALL                             R7 2 1
       52 MOVE                             R8 R2
       53 LOADK                            R9 K20 [">> .DestKey"]
       54 DUPTABLE                         R10 K23 [{"TextColor3", "TextXAlignment", "Size"}]
       55 LOADK                            R11 K24 ["$TextSecondary"]
       56 SETTABLEKS                       R11 R10 K21 ["TextColor3"]
       58 GETIMPORT                        R11 K27 [Enum.TextXAlignment.Right]
       60 SETTABLEKS                       R11 R10 K22 ["TextXAlignment"]
       62 GETIMPORT                        R11 K15 [UDim2.new]
       64 LOADK                            R12 K28 [0.6]
       65 LOADN                            R13 0
       66 LOADN                            R14 1
       67 LOADN                            R15 0
       68 CALL                             R11 4 1
       69 SETTABLEKS                       R11 R10 K10 ["Size"]
       71 NEWTABLE                         R11 0 1
       73 MOVE                             R12 R2
       74 LOADK                            R13 K29 ["::UIPadding"]
       75 DUPTABLE                         R14 K31 [{"PaddingRight"}]
       76 GETIMPORT                        R15 K33 [UDim.new]
       78 LOADN                            R16 0
       79 LOADN                            R17 8
       80 CALL                             R15 2 1
       81 SETTABLEKS                       R15 R14 K30 ["PaddingRight"]
       83 CALL                             R12 2 -1
       84 SETLIST                          R11 R12 -1 [1]
       86 CALL                             R8 3 1
       87 MOVE                             R9 R2
       88 LOADK                            R10 K34 [">> .SrcKey"]
       89 DUPTABLE                         R11 K36 [{"TextColor3", "TextXAlignment", "BackgroundColor3", "Size"}]
       90 LOADK                            R12 K37 ["$TextPrimary"]
       91 SETTABLEKS                       R12 R11 K21 ["TextColor3"]
       93 GETIMPORT                        R12 K39 [Enum.TextXAlignment.Center]
       95 SETTABLEKS                       R12 R11 K22 ["TextXAlignment"]
       97 LOADK                            R12 K40 ["$MappingLabel"]
       98 SETTABLEKS                       R12 R11 K35 ["BackgroundColor3"]
      100 GETIMPORT                        R12 K15 [UDim2.new]
      102 LOADK                            R13 K41 [0.4]
      103 LOADN                            R14 0
      104 LOADN                            R15 1
      105 LOADN                            R16 0
      106 CALL                             R12 4 1
      107 SETTABLEKS                       R12 R11 K10 ["Size"]
      109 NEWTABLE                         R12 0 1
      111 MOVE                             R13 R2
      112 LOADK                            R14 K42 [":hover"]
      113 DUPTABLE                         R15 K43 [{"BackgroundColor3"}]
      114 LOADK                            R16 K44 ["$MappingLabelHover"]
      115 SETTABLEKS                       R16 R15 K35 ["BackgroundColor3"]
      117 CALL                             R13 2 -1
      118 SETLIST                          R12 R13 -1 [1]
      120 CALL                             R9 3 -1
      121 SETLIST                          R6 R7 -1 [1]
      123 CALL                             R3 3 -1
      124 RETURN                           R3 -1
