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
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Resources"]
       24 GETTABLEKS                       R3 R3 K9 ["StyleConstants"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R1 K10 ["Styling"]
       29 GETTABLEKS                       R3 R3 K11 ["createStyleRule"]
       31 MOVE                             R4 R3
       32 LOADK                            R5 K12 [".Component-DeviceBlueprint"]
       33 DUPTABLE                         R6 K19 [{["BorderSizePixel"] = 0, ["BackgroundColor3"] = "$BlueprintBackgroundColor", ["Position"], ["AnchorPoint"]}]
       34 GETIMPORT                        R7 K22 [UDim2.new]
       36 LOADK                            R8 K23 [0.5]
       37 LOADN                            R9 0
       38 LOADN                            R10 0
       39 LOADN                            R11 0
       40 CALL                             R7 4 1
       41 SETTABLEKS                       R7 R6 K17 ["Position"]
       43 GETIMPORT                        R7 K25 [Vector2.new]
       45 LOADK                            R8 K23 [0.5]
       46 LOADN                            R9 0
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K18 ["AnchorPoint"]
       50 NEWTABLE                         R7 0 7
       52 MOVE                             R8 R3
       53 LOADK                            R9 K26 ["::UIAspectRatioConstraint"]
       54 DUPTABLE                         R10 K29 [{["AspectRatio"] = 1.5}]
       55 CALL                             R8 2 1
       56 MOVE                             R9 R3
       57 LOADK                            R10 K30 ["::UISizeConstraint"]
       58 DUPTABLE                         R11 K33 [{"MaxSize", "MinSize"}]
       59 GETIMPORT                        R12 K25 [Vector2.new]
       61 LOADN                            R13 10000
       62 LOADN                            R14 420
       63 CALL                             R12 2 1
       64 SETTABLEKS                       R12 R11 K31 ["MaxSize"]
       66 GETIMPORT                        R12 K25 [Vector2.new]
       68 LOADN                            R13 300
       69 LOADN                            R14 200
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K32 ["MinSize"]
       73 CALL                             R9 2 1
       74 MOVE                             R10 R3
       75 LOADK                            R11 K34 ["::UIListLayout"]
       76 DUPTABLE                         R12 K38 [{"SortOrder", "HorizontalAlignment", "FillDirection"}]
       77 GETIMPORT                        R13 K41 [Enum.SortOrder.LayoutOrder]
       79 SETTABLEKS                       R13 R12 K35 ["SortOrder"]
       81 GETIMPORT                        R13 K43 [Enum.HorizontalAlignment.Center]
       83 SETTABLEKS                       R13 R12 K36 ["HorizontalAlignment"]
       85 GETIMPORT                        R13 K45 [Enum.FillDirection.Vertical]
       87 SETTABLEKS                       R13 R12 K37 ["FillDirection"]
       89 CALL                             R10 2 1
       90 MOVE                             R11 R3
       91 LOADK                            R12 K46 ["> #ControllerLayout"]
       92 DUPTABLE                         R13 K47 [{["BackgroundColor3"] = "$BlueprintBackgroundColor"}]
       93 NEWTABLE                         R14 0 1
       95 MOVE                             R15 R3
       96 LOADK                            R16 K48 [".Mappings-Visible::UIPadding"]
       97 DUPTABLE                         R17 K54 [{["PaddingTop"], ["PaddingBottom"], ["PaddingLeft"] = "$BlueprintWithMappingsPadding", ["PaddingRight"] = "$BlueprintWithMappingsPadding"}]
       98 GETIMPORT                        R18 K56 [UDim.new]
      100 LOADN                            R19 0
      101 LOADN                            R20 0
      102 CALL                             R18 2 1
      103 SETTABLEKS                       R18 R17 K49 ["PaddingTop"]
      105 GETIMPORT                        R18 K56 [UDim.new]
      107 LOADN                            R19 0
      108 LOADN                            R20 0
      109 CALL                             R18 2 1
      110 SETTABLEKS                       R18 R17 K50 ["PaddingBottom"]
      112 CALL                             R15 2 -1
      113 SETLIST                          R14 R15 -1 [1]
      115 CALL                             R11 3 1
      116 MOVE                             R12 R3
      117 LOADK                            R13 K57 [">> #GamepadBlueprint"]
      118 DUPTABLE                         R14 K63 [{["AnchorPoint"], ["Position"], ["Size"], ["ZIndex"] = -1, ["BackgroundTransparency"] = 1}]
      119 GETIMPORT                        R15 K25 [Vector2.new]
      121 LOADK                            R16 K23 [0.5]
      122 LOADN                            R17 0
      123 CALL                             R15 2 1
      124 SETTABLEKS                       R15 R14 K18 ["AnchorPoint"]
      126 GETIMPORT                        R15 K22 [UDim2.new]
      128 LOADK                            R16 K23 [0.5]
      129 LOADN                            R17 0
      130 LOADN                            R18 0
      131 LOADN                            R19 0
      132 CALL                             R15 4 1
      133 SETTABLEKS                       R15 R14 K17 ["Position"]
      135 GETIMPORT                        R15 K22 [UDim2.new]
      137 LOADN                            R16 1
      138 LOADN                            R17 0
      139 LOADK                            R18 K64 [0.793]
      140 LOADN                            R19 0
      141 CALL                             R15 4 1
      142 SETTABLEKS                       R15 R14 K58 ["Size"]
      144 CALL                             R12 2 1
      145 MOVE                             R13 R3
      146 LOADK                            R14 K65 ["> TextLabel"]
      147 DUPTABLE                         R15 K72 [{["TextSize"], ["Font"], ["TextColor3"] = "$TextPrimary", ["Size"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"]}]
      148 GETTABLEKS                       R16 R2 K73 ["normalFontSize"]
      150 SETTABLEKS                       R16 R15 K66 ["TextSize"]
      152 GETTABLEKS                       R16 R2 K74 ["defaultFont"]
      154 SETTABLEKS                       R16 R15 K67 ["Font"]
      156 GETIMPORT                        R16 K22 [UDim2.new]
      158 LOADN                            R17 1
      159 LOADN                            R18 0
      160 LOADN                            R19 0
      161 LOADN                            R20 30
      162 CALL                             R16 4 1
      163 SETTABLEKS                       R16 R15 K58 ["Size"]
      165 GETIMPORT                        R16 K75 [Enum.TextXAlignment.Center]
      167 SETTABLEKS                       R16 R15 K70 ["TextXAlignment"]
      169 GETIMPORT                        R16 K76 [Enum.TextYAlignment.Center]
      171 SETTABLEKS                       R16 R15 K71 ["TextYAlignment"]
      173 CALL                             R13 2 1
      174 MOVE                             R14 R3
      175 LOADK                            R15 K77 ["> TextButton"]
      176 DUPTABLE                         R16 K72 [{["TextSize"], ["Font"], ["TextColor3"] = "$TextPrimary", ["Size"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"]}]
      177 GETTABLEKS                       R17 R2 K73 ["normalFontSize"]
      179 SETTABLEKS                       R17 R16 K66 ["TextSize"]
      181 GETTABLEKS                       R17 R2 K74 ["defaultFont"]
      183 SETTABLEKS                       R17 R16 K67 ["Font"]
      185 GETIMPORT                        R17 K22 [UDim2.new]
      187 LOADN                            R18 1
      188 LOADN                            R19 0
      189 LOADN                            R20 0
      190 LOADN                            R21 60
      191 CALL                             R17 4 1
      192 SETTABLEKS                       R17 R16 K58 ["Size"]
      194 GETIMPORT                        R17 K75 [Enum.TextXAlignment.Center]
      196 SETTABLEKS                       R17 R16 K70 ["TextXAlignment"]
      198 GETIMPORT                        R17 K76 [Enum.TextYAlignment.Center]
      200 SETTABLEKS                       R17 R16 K71 ["TextYAlignment"]
      202 CALL                             R14 2 -1
      203 SETLIST                          R7 R8 -1 [1]
      205 CALL                             R4 3 -1
      206 RETURN                           R4 -1
