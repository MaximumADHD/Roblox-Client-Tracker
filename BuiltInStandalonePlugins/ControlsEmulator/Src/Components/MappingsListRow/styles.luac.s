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
       47 DUPTABLE                         R9 K20 [{["BorderSizePixel"] = 0}]
       48 CALL                             R7 2 1
       49 MOVE                             R8 R2
       50 LOADK                            R9 K21 [">> .DestKey"]
       51 DUPTABLE                         R10 K25 [{["TextColor3"] = "$TextSecondary", ["TextXAlignment"], ["Size"]}]
       52 GETIMPORT                        R11 K28 [Enum.TextXAlignment.Right]
       54 SETTABLEKS                       R11 R10 K24 ["TextXAlignment"]
       56 GETIMPORT                        R11 K15 [UDim2.new]
       58 LOADK                            R12 K29 [0.6]
       59 LOADN                            R13 0
       60 LOADN                            R14 1
       61 LOADN                            R15 0
       62 CALL                             R11 4 1
       63 SETTABLEKS                       R11 R10 K10 ["Size"]
       65 NEWTABLE                         R11 0 1
       67 MOVE                             R12 R2
       68 LOADK                            R13 K30 ["::UIPadding"]
       69 DUPTABLE                         R14 K32 [{"PaddingRight"}]
       70 GETIMPORT                        R15 K34 [UDim.new]
       72 LOADN                            R16 0
       73 LOADN                            R17 8
       74 CALL                             R15 2 1
       75 SETTABLEKS                       R15 R14 K31 ["PaddingRight"]
       77 CALL                             R12 2 -1
       78 SETLIST                          R11 R12 -1 [1]
       80 CALL                             R8 3 1
       81 MOVE                             R9 R2
       82 LOADK                            R10 K35 [">> .SrcKey"]
       83 DUPTABLE                         R11 K39 [{["TextColor3"] = "$TextPrimary", ["TextXAlignment"], ["BackgroundColor3"] = "$MappingLabel", ["Size"]}]
       84 GETIMPORT                        R12 K41 [Enum.TextXAlignment.Center]
       86 SETTABLEKS                       R12 R11 K24 ["TextXAlignment"]
       88 GETIMPORT                        R12 K15 [UDim2.new]
       90 LOADK                            R13 K42 [0.4]
       91 LOADN                            R14 0
       92 LOADN                            R15 1
       93 LOADN                            R16 0
       94 CALL                             R12 4 1
       95 SETTABLEKS                       R12 R11 K10 ["Size"]
       97 NEWTABLE                         R12 0 1
       99 MOVE                             R13 R2
      100 LOADK                            R14 K43 [":hover"]
      101 DUPTABLE                         R15 K45 [{["BackgroundColor3"] = "$MappingLabelHover"}]
      102 CALL                             R13 2 -1
      103 SETLIST                          R12 R13 -1 [1]
      105 CALL                             R9 3 -1
      106 SETLIST                          R6 R7 -1 [1]
      108 CALL                             R3 3 -1
      109 RETURN                           R3 -1
