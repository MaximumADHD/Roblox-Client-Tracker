MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleSheet"]
       22 NEWTABLE                         R4 0 15
       24 MOVE                             R5 R2
       25 LOADK                            R6 K11 ["Frame"]
       26 DUPTABLE                         R7 K14 [{["BorderSizePixel"] = 0}]
       27 CALL                             R5 2 1
       28 MOVE                             R6 R2
       29 LOADK                            R7 K15 ["GuiButton"]
       30 DUPTABLE                         R8 K18 [{["AutoButtonColor"] = False}]
       31 CALL                             R6 2 1
       32 MOVE                             R7 R2
       33 LOADK                            R8 K19 ["TextLabel"]
       34 DUPTABLE                         R9 K27 [{["TextColor3"] = "$TextPrimary", ["Font"] = "$Font", ["TextSize"] = "$FontSizeM", ["AutomaticSize"]}]
       35 GETIMPORT                        R10 K30 [Enum.AutomaticSize.XY]
       37 SETTABLEKS                       R10 R9 K26 ["AutomaticSize"]
       39 NEWTABLE                         R10 0 1
       41 MOVE                             R11 R2
       42 LOADK                            R12 K31 [".Disabled"]
       43 DUPTABLE                         R13 K34 [{["TextTransparency"] = 0.4}]
       44 CALL                             R11 2 -1
       45 SETLIST                          R10 R11 -1 [1]
       47 CALL                             R7 3 1
       48 MOVE                             R8 R2
       49 LOADK                            R9 K35 ["TextButton"]
       50 DUPTABLE                         R10 K36 [{["TextColor3"] = "$TextPrimary", ["Font"] = "$Font", ["TextSize"] = "$FontSizeM"}]
       51 CALL                             R8 2 1
       52 MOVE                             R9 R2
       53 LOADK                            R10 K37 [".Component-Avatar"]
       54 DUPTABLE                         R11 K39 [{"Size"}]
       55 GETIMPORT                        R12 K42 [UDim2.fromOffset]
       57 LOADN                            R13 32
       58 LOADN                            R14 32
       59 CALL                             R12 2 1
       60 SETTABLEKS                       R12 R11 K38 ["Size"]
       62 NEWTABLE                         R12 0 1
       64 MOVE                             R13 R2
       65 LOADK                            R14 K43 ["::UICorner"]
       66 DUPTABLE                         R15 K45 [{"CornerRadius"}]
       67 GETIMPORT                        R16 K48 [UDim.new]
       69 LOADN                            R17 1
       70 LOADN                            R18 0
       71 CALL                             R16 2 1
       72 SETTABLEKS                       R16 R15 K44 ["CornerRadius"]
       74 CALL                             R13 2 -1
       75 SETLIST                          R12 R13 -1 [1]
       77 CALL                             R9 3 1
       78 MOVE                             R10 R2
       79 LOADK                            R11 K49 [".Component-Dropdown"]
       80 DUPTABLE                         R12 K52 [{["BackgroundColor3"] = "$ForegroundContrast"}]
       81 NEWTABLE                         R13 0 3
       83 MOVE                             R14 R2
       84 LOADK                            R15 K53 ["::UIStroke"]
       85 DUPTABLE                         R16 K58 [{["Thickness"] = 1, ["Color"] = "$ForegroundMain"}]
       86 CALL                             R14 2 1
       87 MOVE                             R15 R2
       88 LOADK                            R16 K59 ["::UIPadding"]
       89 DUPTABLE                         R17 K62 [{"PaddingTop", "PaddingBottom"}]
       90 GETIMPORT                        R18 K48 [UDim.new]
       92 LOADN                            R19 0
       93 LOADN                            R20 4
       94 CALL                             R18 2 1
       95 SETTABLEKS                       R18 R17 K60 ["PaddingTop"]
       97 GETIMPORT                        R18 K48 [UDim.new]
       99 LOADN                            R19 0
      100 LOADN                            R20 4
      101 CALL                             R18 2 1
      102 SETTABLEKS                       R18 R17 K61 ["PaddingBottom"]
      104 CALL                             R15 2 1
      105 MOVE                             R16 R2
      106 LOADK                            R17 K43 ["::UICorner"]
      107 DUPTABLE                         R18 K45 [{"CornerRadius"}]
      108 GETIMPORT                        R19 K48 [UDim.new]
      110 LOADN                            R20 0
      111 LOADN                            R21 4
      112 CALL                             R19 2 1
      113 SETTABLEKS                       R19 R18 K44 ["CornerRadius"]
      115 CALL                             R16 2 -1
      116 SETLIST                          R13 R14 -1 [1]
      118 CALL                             R10 3 1
      119 MOVE                             R11 R2
      120 LOADK                            R12 K63 [".Component-DropdownItem"]
      121 DUPTABLE                         R13 K65 [{["BorderSizePixel"] = 0, ["BackgroundColor3"] = "$ForegroundContrast", ["TextColor3"] = "$TextPrimary", ["Size"], ["AutomaticSize"], ["TextXAlignment"]}]
      122 GETIMPORT                        R14 K67 [UDim2.fromScale]
      124 LOADN                            R15 1
      125 LOADN                            R16 0
      126 CALL                             R14 2 1
      127 SETTABLEKS                       R14 R13 K38 ["Size"]
      129 GETIMPORT                        R14 K30 [Enum.AutomaticSize.XY]
      131 SETTABLEKS                       R14 R13 K26 ["AutomaticSize"]
      133 GETIMPORT                        R14 K69 [Enum.TextXAlignment.Left]
      135 SETTABLEKS                       R14 R13 K64 ["TextXAlignment"]
      137 NEWTABLE                         R14 0 5
      139 MOVE                             R15 R2
      140 LOADK                            R16 K59 ["::UIPadding"]
      141 DUPTABLE                         R17 K72 [{"PaddingRight", "PaddingLeft", "PaddingTop", "PaddingBottom"}]
      142 GETIMPORT                        R18 K48 [UDim.new]
      144 LOADN                            R19 0
      145 LOADN                            R20 10
      146 CALL                             R18 2 1
      147 SETTABLEKS                       R18 R17 K70 ["PaddingRight"]
      149 GETIMPORT                        R18 K48 [UDim.new]
      151 LOADN                            R19 0
      152 LOADN                            R20 10
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K71 ["PaddingLeft"]
      156 GETIMPORT                        R18 K48 [UDim.new]
      158 LOADN                            R19 0
      159 LOADN                            R20 5
      160 CALL                             R18 2 1
      161 SETTABLEKS                       R18 R17 K60 ["PaddingTop"]
      163 GETIMPORT                        R18 K48 [UDim.new]
      165 LOADN                            R19 0
      166 LOADN                            R20 5
      167 CALL                             R18 2 1
      168 SETTABLEKS                       R18 R17 K61 ["PaddingBottom"]
      170 CALL                             R15 2 1
      171 MOVE                             R16 R2
      172 LOADK                            R17 K73 [":hover"]
      173 DUPTABLE                         R18 K75 [{["BackgroundColor3"] = "$SecondaryHoverBackground"}]
      174 CALL                             R16 2 1
      175 MOVE                             R17 R2
      176 LOADK                            R18 K76 [":press"]
      177 DUPTABLE                         R19 K78 [{["BackgroundColor3"] = "$ActionActivated"}]
      178 CALL                             R17 2 1
      179 MOVE                             R18 R2
      180 LOADK                            R19 K79 [".Delete"]
      181 DUPTABLE                         R20 K81 [{["TextColor3"] = "$ErrorMain"}]
      182 CALL                             R18 2 1
      183 MOVE                             R19 R2
      184 LOADK                            R20 K82 [".SectionTitle"]
      185 DUPTABLE                         R21 K87 [{["Size"], ["FontSize"] = "$FontSizeS", ["TextColor3"] = "$TextSecondary", ["Font"] = "$FontBold"}]
      186 GETIMPORT                        R22 K88 [UDim2.new]
      188 LOADN                            R23 0
      189 LOADN                            R24 200
      190 LOADN                            R25 0
      191 LOADN                            R26 0
      192 CALL                             R22 4 1
      193 SETTABLEKS                       R22 R21 K38 ["Size"]
      195 NEWTABLE                         R22 0 1
      197 MOVE                             R23 R2
      198 LOADK                            R24 K59 ["::UIPadding"]
      199 DUPTABLE                         R25 K89 [{"PaddingLeft", "PaddingTop"}]
      200 GETIMPORT                        R26 K48 [UDim.new]
      202 LOADN                            R27 0
      203 LOADN                            R28 12
      204 CALL                             R26 2 1
      205 SETTABLEKS                       R26 R25 K71 ["PaddingLeft"]
      207 GETIMPORT                        R26 K48 [UDim.new]
      209 LOADN                            R27 0
      210 LOADN                            R28 8
      211 CALL                             R26 2 1
      212 SETTABLEKS                       R26 R25 K60 ["PaddingTop"]
      214 CALL                             R23 2 -1
      215 SETLIST                          R22 R23 -1 [1]
      217 CALL                             R19 3 -1
      218 SETLIST                          R14 R15 -1 [1]
      220 CALL                             R11 3 1
      221 MOVE                             R12 R2
      222 LOADK                            R13 K90 [".Component-Divider"]
      223 DUPTABLE                         R14 K94 [{["Size"], ["BackgroundColor3"] = "$SemanticColorDivider", ["BackgroundTransparency"] = "$SemanticColorDividerTransparency"}]
      224 GETIMPORT                        R15 K88 [UDim2.new]
      226 LOADN                            R16 1
      227 LOADN                            R17 0
      228 LOADN                            R18 0
      229 LOADN                            R19 1
      230 CALL                             R15 4 1
      231 SETTABLEKS                       R15 R14 K38 ["Size"]
      233 CALL                             R12 2 1
      234 MOVE                             R13 R2
      235 LOADK                            R14 K95 [".MoreIcon"]
      236 DUPTABLE                         R15 K98 [{["Image"] = "$MoreIcon", ["Size"]}]
      237 GETIMPORT                        R16 K42 [UDim2.fromOffset]
      239 LOADN                            R17 16
      240 LOADN                            R18 16
      241 CALL                             R16 2 1
      242 SETTABLEKS                       R16 R15 K38 ["Size"]
      244 CALL                             R13 2 1
      245 MOVE                             R14 R2
      246 LOADK                            R15 K99 [".CheckboxOnIcon"]
      247 DUPTABLE                         R16 K101 [{["Image"] = "$CheckboxOn", ["Size"]}]
      248 GETIMPORT                        R17 K42 [UDim2.fromOffset]
      250 LOADN                            R18 16
      251 LOADN                            R19 16
      252 CALL                             R17 2 1
      253 SETTABLEKS                       R17 R16 K38 ["Size"]
      255 CALL                             R14 2 1
      256 MOVE                             R15 R2
      257 LOADK                            R16 K102 [".CheckboxOffIcon"]
      258 DUPTABLE                         R17 K104 [{["Image"] = "$CheckboxOff", ["Size"]}]
      259 GETIMPORT                        R18 K42 [UDim2.fromOffset]
      261 LOADN                            R19 16
      262 LOADN                            R20 16
      263 CALL                             R18 2 1
      264 SETTABLEKS                       R18 R17 K38 ["Size"]
      266 CALL                             R15 2 1
      267 MOVE                             R16 R2
      268 LOADK                            R17 K105 [".ErrorIcon"]
      269 DUPTABLE                         R18 K107 [{["Image"] = "$Error", ["Size"]}]
      270 GETIMPORT                        R19 K42 [UDim2.fromOffset]
      272 LOADN                            R20 16
      273 LOADN                            R21 16
      274 CALL                             R19 2 1
      275 SETTABLEKS                       R19 R18 K38 ["Size"]
      277 CALL                             R16 2 1
      278 MOVE                             R17 R2
      279 LOADK                            R18 K108 [".CloseIcon"]
      280 DUPTABLE                         R19 K110 [{["Image"] = "$Close", ["Size"]}]
      281 GETIMPORT                        R20 K42 [UDim2.fromOffset]
      283 LOADN                            R21 16
      284 LOADN                            R22 16
      285 CALL                             R20 2 1
      286 SETTABLEKS                       R20 R19 K38 ["Size"]
      288 CALL                             R17 2 1
      289 MOVE                             R18 R2
      290 LOADK                            R19 K111 [".SettingsIcon"]
      291 DUPTABLE                         R20 K113 [{["Image"] = "$Settings", ["Size"]}]
      292 GETIMPORT                        R21 K42 [UDim2.fromOffset]
      294 LOADN                            R22 16
      295 LOADN                            R23 16
      296 CALL                             R21 2 1
      297 SETTABLEKS                       R21 R20 K38 ["Size"]
      299 CALL                             R18 2 1
      300 MOVE                             R19 R2
      301 LOADK                            R20 K114 [".AddAnnotationIcon"]
      302 DUPTABLE                         R21 K116 [{["Image"] = "$AddAnnotation", ["Size"]}]
      303 GETIMPORT                        R22 K42 [UDim2.fromOffset]
      305 LOADN                            R23 16
      306 LOADN                            R24 16
      307 CALL                             R22 2 1
      308 SETTABLEKS                       R22 R21 K38 ["Size"]
      310 CALL                             R19 2 -1
      311 SETLIST                          R4 R5 -1 [1]
      313 DUPTABLE                         R5 K128 [{["Font"], ["FontBold"], ["FontSizeS"] = 14, ["FontSizeM"] = 16, ["FontSizeL"] = 18, ["Shift100Transparency"] = 0.96, ["Shift200Transparency"] = 0.92}]
      314 GETIMPORT                        R6 K130 [Enum.Font.BuilderSans]
      316 SETTABLEKS                       R6 R5 K22 ["Font"]
      318 GETIMPORT                        R6 K132 [Enum.Font.BuilderSansBold]
      320 SETTABLEKS                       R6 R5 K117 ["FontBold"]
      322 MOVE                             R6 R3
      323 LOADK                            R7 K2 ["PlaceAnnotations"]
      324 MOVE                             R8 R4
      325 MOVE                             R9 R5
      326 CALL                             R6 3 -1
      327 RETURN                           R6 -1
