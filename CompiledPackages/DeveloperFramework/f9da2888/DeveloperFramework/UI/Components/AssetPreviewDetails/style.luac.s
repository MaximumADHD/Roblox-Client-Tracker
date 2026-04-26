MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K6 [require]
       16 GETTABLEKS                       R4 R0 K4 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["deepCopy"]
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K10 ["Style"]
       27 GETTABLEKS                       R5 R6 K11 ["StyleKey"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R8 R0 K2 ["UI"]
       34 GETTABLEKS                       R7 R8 K12 ["Components"]
       36 GETTABLEKS                       R6 R7 K13 ["UIFolderData"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R8 R5 K14 ["Votes"]
       43 GETTABLEKS                       R7 R8 K15 ["style"]
       45 CALL                             R6 1 1
       46 MOVE                             R7 R3
       47 MOVE                             R8 R6
       48 CALL                             R7 1 1
       49 DUPTABLE                         R8 K28 [{"BackgroundColor", "LeftWidthScale", "MinBreakpointWidth", "Padding", "Size", "VoteSpacingHorizontal", "VoteSpacingVertical", "InfoRow", "AssetHeader", "PackageIcon", "ScriptArea", "VoteCount", "Votes"}]
       50 GETTABLEKS                       R9 R4 K29 ["SubBackground"]
       52 SETTABLEKS                       R9 R8 K16 ["BackgroundColor"]
       54 LOADK                            R9 K30 [0.6]
       55 SETTABLEKS                       R9 R8 K17 ["LeftWidthScale"]
       57 LOADN                            R9 200
       58 SETTABLEKS                       R9 R8 K18 ["MinBreakpointWidth"]
       60 LOADN                            R9 15
       61 SETTABLEKS                       R9 R8 K19 ["Padding"]
       63 GETIMPORT                        R9 K33 [UDim2.new]
       65 LOADN                            R10 1
       66 LOADN                            R11 0
       67 LOADN                            R12 0
       68 LOADN                            R13 36
       69 CALL                             R9 4 1
       70 SETTABLEKS                       R9 R8 K20 ["Size"]
       72 LOADN                            R9 10
       73 SETTABLEKS                       R9 R8 K21 ["VoteSpacingHorizontal"]
       75 LOADN                            R9 3
       76 SETTABLEKS                       R9 R8 K22 ["VoteSpacingVertical"]
       78 DUPTABLE                         R9 K38 [{"DescriptionText", "DescriptionSpacing", "ElementPadding", "TitleText"}]
       79 DUPTABLE                         R10 K42 [{"Font", "TextColor", "TextSize"}]
       80 GETIMPORT                        R11 K45 [Enum.Font.SourceSans]
       82 SETTABLEKS                       R11 R10 K39 ["Font"]
       84 GETTABLEKS                       R11 R4 K46 ["TextSecondary"]
       86 SETTABLEKS                       R11 R10 K40 ["TextColor"]
       88 LOADN                            R11 14
       89 SETTABLEKS                       R11 R10 K41 ["TextSize"]
       91 SETTABLEKS                       R10 R9 K34 ["DescriptionText"]
       93 LOADN                            R10 2
       94 SETTABLEKS                       R10 R9 K35 ["DescriptionSpacing"]
       96 LOADN                            R10 4
       97 SETTABLEKS                       R10 R9 K36 ["ElementPadding"]
       99 DUPTABLE                         R10 K48 [{"Font", "TextColor", "TextSize", "TextXAlignment"}]
      100 GETIMPORT                        R11 K45 [Enum.Font.SourceSans]
      102 SETTABLEKS                       R11 R10 K39 ["Font"]
      104 GETTABLEKS                       R11 R4 K49 ["BrightText"]
      106 SETTABLEKS                       R11 R10 K40 ["TextColor"]
      108 LOADN                            R11 18
      109 SETTABLEKS                       R11 R10 K41 ["TextSize"]
      111 GETIMPORT                        R11 K51 [Enum.TextXAlignment.Left]
      113 SETTABLEKS                       R11 R10 K47 ["TextXAlignment"]
      115 SETTABLEKS                       R10 R9 K37 ["TitleText"]
      117 SETTABLEKS                       R9 R8 K23 ["InfoRow"]
      119 DUPTABLE                         R9 K54 [{"Spacing", "VoteSpacing"}]
      120 LOADN                            R10 5
      121 SETTABLEKS                       R10 R9 K52 ["Spacing"]
      123 LOADN                            R10 4
      124 SETTABLEKS                       R10 R9 K53 ["VoteSpacing"]
      126 SETTABLEKS                       R9 R8 K24 ["AssetHeader"]
      128 DUPTABLE                         R9 K57 [{"Image", "Color", "Size"}]
      129 LOADK                            R10 K58 ["rbxasset://textures/DeveloperFramework/AssetPreview/package.png"]
      130 SETTABLEKS                       R10 R9 K55 ["Image"]
      132 GETTABLEKS                       R10 R4 K59 ["Icon"]
      134 SETTABLEKS                       R10 R9 K56 ["Color"]
      136 GETIMPORT                        R10 K61 [UDim2.fromOffset]
      138 LOADN                            R11 12
      139 LOADN                            R12 12
      140 CALL                             R10 2 1
      141 SETTABLEKS                       R10 R9 K20 ["Size"]
      143 SETTABLEKS                       R9 R8 K25 ["PackageIcon"]
      145 DUPTABLE                         R9 K64 [{"ScriptIcon", "ScriptInfoIcon"}]
      146 DUPTABLE                         R10 K65 [{"Image", "Size"}]
      147 LOADK                            R11 K66 ["rbxasset://textures/StudioToolbox/script.png"]
      148 SETTABLEKS                       R11 R10 K55 ["Image"]
      150 GETIMPORT                        R11 K61 [UDim2.fromOffset]
      152 LOADN                            R12 12
      153 LOADN                            R13 12
      154 CALL                             R11 2 1
      155 SETTABLEKS                       R11 R10 K20 ["Size"]
      157 SETTABLEKS                       R10 R9 K62 ["ScriptIcon"]
      159 DUPTABLE                         R10 K65 [{"Image", "Size"}]
      160 LOADK                            R11 K67 ["rbxasset://textures/StudioToolbox/AssetPreview/info.png"]
      161 SETTABLEKS                       R11 R10 K55 ["Image"]
      163 GETIMPORT                        R11 K61 [UDim2.fromOffset]
      165 LOADN                            R12 12
      166 LOADN                            R13 12
      167 CALL                             R11 2 1
      168 SETTABLEKS                       R11 R10 K20 ["Size"]
      170 SETTABLEKS                       R10 R9 K63 ["ScriptInfoIcon"]
      172 SETTABLEKS                       R9 R8 K26 ["ScriptArea"]
      174 DUPTABLE                         R9 K42 [{"Font", "TextColor", "TextSize"}]
      175 GETIMPORT                        R10 K45 [Enum.Font.SourceSans]
      177 SETTABLEKS                       R10 R9 K39 ["Font"]
      179 GETTABLEKS                       R10 R4 K68 ["MainText"]
      181 SETTABLEKS                       R10 R9 K40 ["TextColor"]
      183 LOADN                            R10 14
      184 SETTABLEKS                       R10 R9 K41 ["TextSize"]
      186 SETTABLEKS                       R9 R8 K27 ["VoteCount"]
      188 GETTABLEKS                       R10 R2 K69 ["Dictionary"]
      190 GETTABLEKS                       R9 R10 K70 ["join"]
      192 MOVE                             R10 R7
      193 DUPTABLE                         R11 K72 [{"Text"}]
      194 GETTABLEKS                       R13 R2 K69 ["Dictionary"]
      196 GETTABLEKS                       R12 R13 K70 ["join"]
      198 GETTABLEKS                       R13 R7 K71 ["Text"]
      200 DUPTABLE                         R14 K73 [{"TextSize"}]
      201 LOADN                            R15 18
      202 SETTABLEKS                       R15 R14 K41 ["TextSize"]
      204 CALL                             R12 2 1
      205 SETTABLEKS                       R12 R11 K71 ["Text"]
      207 CALL                             R9 2 1
      208 SETTABLEKS                       R9 R8 K14 ["Votes"]
      210 RETURN                           R8 1
