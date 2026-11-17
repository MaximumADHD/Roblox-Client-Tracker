MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-TextInfo"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 6
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["::UIListLayout"]
       26 DUPTABLE                         R9 K13 [{"Padding"}]
       27 GETIMPORT                        R10 K16 [UDim.new]
       29 LOADN                            R11 0
       30 LOADN                            R12 8
       31 CALL                             R10 2 1
       32 SETTABLEKS                       R10 R9 K12 ["Padding"]
       34 CALL                             R7 2 1
       35 MOVE                             R8 R2
       36 LOADK                            R9 K17 [">> .TitleText"]
       37 DUPTABLE                         R10 K21 [{["TextColor3"] = "$TextPrimary", ["Font"]}]
       38 GETIMPORT                        R11 K24 [Enum.Font.SourceSansSemibold]
       40 SETTABLEKS                       R11 R10 K20 ["Font"]
       42 CALL                             R8 2 1
       43 MOVE                             R9 R2
       44 LOADK                            R10 K25 [">> .SubtitleText"]
       45 DUPTABLE                         R11 K27 [{["TextColor3"] = "$TextSecondary", ["Font"]}]
       46 GETIMPORT                        R12 K24 [Enum.Font.SourceSansSemibold]
       48 SETTABLEKS                       R12 R11 K20 ["Font"]
       50 CALL                             R9 2 1
       51 MOVE                             R10 R2
       52 LOADK                            R11 K28 [">> .LoadingIconContainer"]
       53 DUPTABLE                         R12 K31 [{["Size"] = "$IconSize"}]
       54 CALL                             R10 2 1
       55 MOVE                             R11 R2
       56 LOADK                            R12 K32 [">> .LoadingIcon"]
       57 DUPTABLE                         R13 K39 [{["Size"] = "$IconSize", ["Image"] = "$LoadingSpinnerImage", ["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Position"]}]
       58 GETIMPORT                        R14 K41 [Vector2.new]
       60 LOADK                            R15 K42 [0.5]
       61 LOADK                            R16 K42 [0.5]
       62 CALL                             R14 2 1
       63 SETTABLEKS                       R14 R13 K37 ["AnchorPoint"]
       65 GETIMPORT                        R14 K44 [UDim2.new]
       67 LOADK                            R15 K42 [0.5]
       68 LOADN                            R16 0
       69 LOADK                            R17 K42 [0.5]
       70 LOADN                            R18 0
       71 CALL                             R14 4 1
       72 SETTABLEKS                       R14 R13 K38 ["Position"]
       74 CALL                             R11 2 1
       75 MOVE                             R12 R2
       76 LOADK                            R13 K45 [">> .StatusTextFrame"]
       77 DUPTABLE                         R14 K46 [{"Size"}]
       78 GETIMPORT                        R15 K44 [UDim2.new]
       80 LOADN                            R16 1
       81 LOADN                            R17 0
       82 LOADN                            R18 0
       83 LOADN                            R19 20
       84 CALL                             R15 4 1
       85 SETTABLEKS                       R15 R14 K29 ["Size"]
       87 NEWTABLE                         R15 0 2
       89 MOVE                             R16 R2
       90 LOADK                            R17 K11 ["::UIListLayout"]
       91 DUPTABLE                         R18 K48 [{"Padding", "VerticalAlignment"}]
       92 GETIMPORT                        R19 K16 [UDim.new]
       94 LOADN                            R20 0
       95 LOADN                            R21 4
       96 CALL                             R19 2 1
       97 SETTABLEKS                       R19 R18 K12 ["Padding"]
       99 GETIMPORT                        R19 K50 [Enum.VerticalAlignment.Center]
      101 SETTABLEKS                       R19 R18 K47 ["VerticalAlignment"]
      103 CALL                             R16 2 1
      104 MOVE                             R17 R2
      105 LOADK                            R18 K51 [">> .StatusText"]
      106 DUPTABLE                         R19 K53 [{["TextColor3"] = "$TextPrimary", ["TextYAlignment"]}]
      107 GETIMPORT                        R20 K54 [Enum.TextYAlignment.Center]
      109 SETTABLEKS                       R20 R19 K52 ["TextYAlignment"]
      111 CALL                             R17 2 -1
      112 SETLIST                          R15 R16 -1 [1]
      114 CALL                             R12 3 -1
      115 SETLIST                          R6 R7 -1 [1]
      117 DUPTABLE                         R7 K57 [{"IconSize", "IconToContentPadding"}]
      118 GETIMPORT                        R8 K59 [UDim2.fromOffset]
      120 LOADN                            R9 16
      121 LOADN                            R10 16
      122 CALL                             R8 2 1
      123 SETTABLEKS                       R8 R7 K55 ["IconSize"]
      125 GETIMPORT                        R8 K16 [UDim.new]
      127 LOADN                            R9 0
      128 LOADN                            R10 8
      129 CALL                             R8 2 1
      130 SETTABLEKS                       R8 R7 K56 ["IconToContentPadding"]
      132 CALL                             R3 4 -1
      133 RETURN                           R3 -1
