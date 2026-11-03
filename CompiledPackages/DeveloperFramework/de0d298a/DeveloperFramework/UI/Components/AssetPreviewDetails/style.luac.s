MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K6 [require]
       16 GETTABLEKS                       R3 R0 K4 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["deepCopy"]
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Style"]
       27 GETTABLEKS                       R5 R5 K11 ["StyleKey"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K2 ["UI"]
       34 GETTABLEKS                       R6 R6 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K13 ["UIFolderData"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R5 K14 ["Votes"]
       43 GETTABLEKS                       R7 R7 K15 ["style"]
       45 CALL                             R6 1 1
       46 MOVE                             R7 R3
       47 MOVE                             R8 R6
       48 CALL                             R7 1 1
       49 DUPTABLE                         R8 K33 [{["BackgroundColor"], ["LeftWidthScale"] = 0.6, ["MinBreakpointWidth"] = 200, ["Padding"] = 15, ["Size"], ["VoteSpacingHorizontal"] = 10, ["VoteSpacingVertical"] = 3, ["InfoRow"], ["AssetHeader"], ["PackageIcon"], ["ScriptArea"], ["VoteCount"], ["Votes"]}]
       50 GETTABLEKS                       R9 R4 K34 ["SubBackground"]
       52 SETTABLEKS                       R9 R8 K16 ["BackgroundColor"]
       54 GETIMPORT                        R9 K37 [UDim2.new]
       56 LOADN                            R10 1
       57 LOADN                            R11 0
       58 LOADN                            R12 0
       59 LOADN                            R13 36
       60 CALL                             R9 4 1
       61 SETTABLEKS                       R9 R8 K23 ["Size"]
       63 DUPTABLE                         R9 K44 [{["DescriptionText"], ["DescriptionSpacing"] = 2, ["ElementPadding"] = 4, ["TitleText"]}]
       64 DUPTABLE                         R10 K49 [{["Font"], ["TextColor"], ["TextSize"] = 14}]
       65 GETIMPORT                        R11 K52 [Enum.Font.SourceSans]
       67 SETTABLEKS                       R11 R10 K45 ["Font"]
       69 GETTABLEKS                       R11 R4 K53 ["TextSecondary"]
       71 SETTABLEKS                       R11 R10 K46 ["TextColor"]
       73 SETTABLEKS                       R10 R9 K38 ["DescriptionText"]
       75 DUPTABLE                         R10 K56 [{["Font"], ["TextColor"], ["TextSize"] = 18, ["TextXAlignment"]}]
       76 GETIMPORT                        R11 K52 [Enum.Font.SourceSans]
       78 SETTABLEKS                       R11 R10 K45 ["Font"]
       80 GETTABLEKS                       R11 R4 K57 ["BrightText"]
       82 SETTABLEKS                       R11 R10 K46 ["TextColor"]
       84 GETIMPORT                        R11 K59 [Enum.TextXAlignment.Left]
       86 SETTABLEKS                       R11 R10 K55 ["TextXAlignment"]
       88 SETTABLEKS                       R10 R9 K43 ["TitleText"]
       90 SETTABLEKS                       R9 R8 K28 ["InfoRow"]
       92 DUPTABLE                         R9 K63 [{["Spacing"] = 5, ["VoteSpacing"] = 4}]
       93 SETTABLEKS                       R9 R8 K29 ["AssetHeader"]
       95 DUPTABLE                         R9 K67 [{["Image"] = "rbxasset://textures/DeveloperFramework/AssetPreview/package.png", ["Color"], ["Size"]}]
       96 GETTABLEKS                       R10 R4 K68 ["Icon"]
       98 SETTABLEKS                       R10 R9 K66 ["Color"]
      100 GETIMPORT                        R10 K70 [UDim2.fromOffset]
      102 LOADN                            R11 12
      103 LOADN                            R12 12
      104 CALL                             R10 2 1
      105 SETTABLEKS                       R10 R9 K23 ["Size"]
      107 SETTABLEKS                       R9 R8 K30 ["PackageIcon"]
      109 DUPTABLE                         R9 K73 [{"ScriptIcon", "ScriptInfoIcon"}]
      110 DUPTABLE                         R10 K75 [{["Image"] = "rbxasset://textures/StudioToolbox/script.png", ["Size"]}]
      111 GETIMPORT                        R11 K70 [UDim2.fromOffset]
      113 LOADN                            R12 12
      114 LOADN                            R13 12
      115 CALL                             R11 2 1
      116 SETTABLEKS                       R11 R10 K23 ["Size"]
      118 SETTABLEKS                       R10 R9 K71 ["ScriptIcon"]
      120 DUPTABLE                         R10 K77 [{["Image"] = "rbxasset://textures/StudioToolbox/AssetPreview/info.png", ["Size"]}]
      121 GETIMPORT                        R11 K70 [UDim2.fromOffset]
      123 LOADN                            R12 12
      124 LOADN                            R13 12
      125 CALL                             R11 2 1
      126 SETTABLEKS                       R11 R10 K23 ["Size"]
      128 SETTABLEKS                       R10 R9 K72 ["ScriptInfoIcon"]
      130 SETTABLEKS                       R9 R8 K31 ["ScriptArea"]
      132 DUPTABLE                         R9 K49 [{["Font"], ["TextColor"], ["TextSize"] = 14}]
      133 GETIMPORT                        R10 K52 [Enum.Font.SourceSans]
      135 SETTABLEKS                       R10 R9 K45 ["Font"]
      137 GETTABLEKS                       R10 R4 K78 ["MainText"]
      139 SETTABLEKS                       R10 R9 K46 ["TextColor"]
      141 SETTABLEKS                       R9 R8 K32 ["VoteCount"]
      143 GETTABLEKS                       R9 R2 K79 ["Dictionary"]
      145 GETTABLEKS                       R9 R9 K80 ["join"]
      147 MOVE                             R10 R7
      148 DUPTABLE                         R11 K82 [{"Text"}]
      149 GETTABLEKS                       R12 R2 K79 ["Dictionary"]
      151 GETTABLEKS                       R12 R12 K80 ["join"]
      153 GETTABLEKS                       R13 R7 K81 ["Text"]
      155 DUPTABLE                         R14 K83 [{["TextSize"] = 18}]
      156 CALL                             R12 2 1
      157 SETTABLEKS                       R12 R11 K81 ["Text"]
      159 CALL                             R9 2 1
      160 SETTABLEKS                       R9 R8 K14 ["Votes"]
      162 RETURN                           R8 1
