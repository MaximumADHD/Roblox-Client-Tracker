MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Style"]
       25 GETTABLEKS                       R4 R3 K9 ["Colors"]
       27 GETTABLEKS                       R5 R3 K10 ["StyleKey"]
       29 GETTABLEKS                       R6 R2 K11 ["Util"]
       31 GETTABLEKS                       R6 R6 K12 ["StyleModifier"]
       33 GETTABLEKS                       R7 R3 K13 ["ComponentSymbols"]
       35 GETTABLEKS                       R8 R2 K14 ["UI"]
       37 GETTABLEKS                       R8 R8 K15 ["Image"]
       39 GETTABLEKS                       R9 R2 K16 ["UIData"]
       41 GETIMPORT                        R10 K4 [require]
       43 GETTABLEKS                       R11 R9 K17 ["Alert"]
       45 GETTABLEKS                       R11 R11 K18 ["style"]
       47 CALL                             R10 1 1
       48 GETIMPORT                        R11 K4 [require]
       50 GETTABLEKS                       R12 R9 K19 ["Button"]
       52 GETTABLEKS                       R12 R12 K18 ["style"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K4 [require]
       57 GETTABLEKS                       R13 R0 K20 ["Src"]
       59 GETTABLEKS                       R13 R13 K11 ["Util"]
       61 GETTABLEKS                       R13 R13 K21 ["Constants"]
       63 CALL                             R12 1 1
       64 GETTABLEKS                       R13 R12 K22 ["PROMPT_HEIGHT"]
       66 GETTABLEKS                       R14 R12 K23 ["TOOLBAR_HEIGHT"]
       68 NEWTABLE                         R15 0 0
       70 LOADK                            R18 K24 ["LoadingButton"]
       71 NAMECALL                         R16 R7 K25 ["add"]
       73 CALL                             R16 2 0
       74 GETTABLEKS                       R16 R7 K24 ["LoadingButton"]
       76 DUPTABLE                         R17 K27 [{"LoadingIndicatorSize"}]
       77 GETIMPORT                        R18 K30 [UDim2.fromOffset]
       79 LOADN                            R19 24
       80 LOADN                            R20 16
       81 CALL                             R18 2 1
       82 SETTABLEKS                       R18 R17 K26 ["LoadingIndicatorSize"]
       84 SETTABLE                         R17 R15 R16
       85 LOADK                            R18 K31 ["App"]
       86 NAMECALL                         R16 R7 K25 ["add"]
       88 CALL                             R16 2 0
       89 GETTABLEKS                       R16 R7 K31 ["App"]
       91 DUPTABLE                         R17 K35 [{"BrowserSize", "BrowserHiddenSize", "PromptSize"}]
       92 GETIMPORT                        R18 K37 [UDim2.new]
       94 LOADN                            R19 1
       95 LOADN                            R20 0
       96 LOADN                            R21 1
       97 MINUS                            R22 R13
       98 CALL                             R18 4 1
       99 SETTABLEKS                       R18 R17 K32 ["BrowserSize"]
      101 GETIMPORT                        R18 K37 [UDim2.new]
      103 LOADN                            R19 1
      104 LOADN                            R20 0
      105 LOADN                            R21 1
      106 MINUS                            R23 R13
      107 ADDK                             R22 R23 K38 [10]
      108 CALL                             R18 4 1
      109 SETTABLEKS                       R18 R17 K33 ["BrowserHiddenSize"]
      111 GETIMPORT                        R18 K37 [UDim2.new]
      113 LOADN                            R19 1
      114 LOADN                            R20 0
      115 LOADN                            R21 0
      116 MOVE                             R22 R13
      117 CALL                             R18 4 1
      118 SETTABLEKS                       R18 R17 K34 ["PromptSize"]
      120 SETTABLE                         R17 R15 R16
      121 LOADK                            R18 K39 ["Prompt"]
      122 NAMECALL                         R16 R7 K25 ["add"]
      124 CALL                             R16 2 0
      125 GETTABLEKS                       R16 R7 K39 ["Prompt"]
      127 DUPTABLE                         R17 K46 [{["BackgroundColor"], ["MultiLine"] = True, ["Padding"] = 8, ["PromptToolbarSize"]}]
      128 GETTABLEKS                       R18 R5 K47 ["Titlebar"]
      130 SETTABLEKS                       R18 R17 K40 ["BackgroundColor"]
      132 GETIMPORT                        R18 K37 [UDim2.new]
      134 LOADN                            R19 1
      135 LOADN                            R20 0
      136 LOADN                            R21 0
      137 MOVE                             R22 R14
      138 CALL                             R18 4 1
      139 SETTABLEKS                       R18 R17 K45 ["PromptToolbarSize"]
      141 SETTABLE                         R17 R15 R16
      142 LOADK                            R18 K48 ["PromptToolbar"]
      143 NAMECALL                         R16 R7 K25 ["add"]
      145 CALL                             R16 2 0
      146 GETTABLEKS                       R16 R7 K48 ["PromptToolbar"]
      148 DUPTABLE                         R17 K50 [{"GenerateButtonSize"}]
      149 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      151 LOADN                            R19 80
      152 LOADN                            R20 32
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K49 ["GenerateButtonSize"]
      156 SETTABLE                         R17 R15 R16
      157 LOADK                            R18 K51 ["Browser"]
      158 NAMECALL                         R16 R7 K25 ["add"]
      160 CALL                             R16 2 0
      161 GETTABLEKS                       R16 R7 K51 ["Browser"]
      163 DUPTABLE                         R17 K57 [{["CellGroupHeader"], ["Padding"] = 4, ["StatusIconImageColor"], ["StatusIconPosition"], ["StatusIconSize"]}]
      164 DUPTABLE                         R18 K62 [{["AfterContent"] = True, ["Collapsible"] = False, ["Size"]}]
      165 GETIMPORT                        R19 K37 [UDim2.new]
      167 LOADN                            R20 1
      168 LOADN                            R21 0
      169 LOADN                            R22 0
      170 MOVE                             R23 R14
      171 CALL                             R19 4 1
      172 SETTABLEKS                       R19 R18 K61 ["Size"]
      174 SETTABLEKS                       R18 R17 K52 ["CellGroupHeader"]
      176 GETTABLEKS                       R18 R4 K63 ["Gray_Light"]
      178 SETTABLEKS                       R18 R17 K54 ["StatusIconImageColor"]
      180 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      182 LOADN                            R19 6
      183 LOADN                            R20 6
      184 CALL                             R18 2 1
      185 SETTABLEKS                       R18 R17 K55 ["StatusIconPosition"]
      187 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      189 LOADN                            R19 16
      190 LOADN                            R20 16
      191 CALL                             R18 2 1
      192 SETTABLEKS                       R18 R17 K56 ["StatusIconSize"]
      194 SETTABLE                         R17 R15 R16
      195 LOADK                            R18 K64 ["PromptGroupFooter"]
      196 NAMECALL                         R16 R7 K25 ["add"]
      198 CALL                             R16 2 0
      199 GETTABLEKS                       R16 R7 K64 ["PromptGroupFooter"]
      201 DUPTABLE                         R17 K74 [{["BackgroundColor"], ["ButtonColor"], ["ButtonImageSize"], ["ButtonSize"], ["ButtonSpacing"] = 4, ["CopyPromptButtonImage"] = "rbxasset://textures/MaterialGenerator/Copy_16x16.png", ["CornerRadius"], ["Padding"], ["Style"] = "RoundBox", ["TextColor"]}]
      202 GETTABLEKS                       R18 R5 K75 ["ForegroundContrast"]
      204 SETTABLEKS                       R18 R17 K40 ["BackgroundColor"]
      206 GETTABLEKS                       R18 R5 K76 ["TextSecondary"]
      208 SETTABLEKS                       R18 R17 K65 ["ButtonColor"]
      210 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      212 LOADN                            R19 16
      213 LOADN                            R20 16
      214 CALL                             R18 2 1
      215 SETTABLEKS                       R18 R17 K66 ["ButtonImageSize"]
      217 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      219 LOADN                            R19 24
      220 LOADN                            R20 24
      221 CALL                             R18 2 1
      222 SETTABLEKS                       R18 R17 K67 ["ButtonSize"]
      224 GETIMPORT                        R18 K78 [UDim.new]
      226 LOADN                            R19 0
      227 LOADN                            R20 4
      228 CALL                             R18 2 1
      229 SETTABLEKS                       R18 R17 K71 ["CornerRadius"]
      231 DUPTABLE                         R18 K82 [{["Left"] = 6, ["Right"] = 4}]
      232 SETTABLEKS                       R18 R17 K43 ["Padding"]
      234 GETTABLEKS                       R18 R5 K76 ["TextSecondary"]
      236 SETTABLEKS                       R18 R17 K73 ["TextColor"]
      238 SETTABLE                         R17 R15 R16
      239 LOADK                            R18 K83 ["Editor"]
      240 NAMECALL                         R16 R7 K25 ["add"]
      242 CALL                             R16 2 0
      243 GETTABLEKS                       R16 R7 K83 ["Editor"]
      245 DUPTABLE                         R17 K101 [{["ApplyButtonBackgroundColor"], ["ApplyButtonIcon"] = "rbxasset://textures/MaterialManager/Apply_to_Selection.png", ["ApplyButtonSize"], ["CloseButtonSize"], ["LabelWidth"] = 100, ["Padding"] = 8, ["PreviewBackgroundColor"], ["PreviewHeight"] = 300, ["PreviewTileSize"], ["SettingsPadding"], ["SettingSpacing"] = 8, ["StudsPerTileSettingSize"], ["UploadAndApplyButtonIcon"] = "rbxasset://textures/MaterialGenerator/Submit_16x16.png", ["UploadAndApplyButtonSize"]}]
      246 GETTABLEKS                       R18 R5 K19 ["Button"]
      248 SETTABLEKS                       R18 R17 K84 ["ApplyButtonBackgroundColor"]
      250 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      252 LOADN                            R19 0
      253 LOADN                            R20 32
      254 CALL                             R18 2 1
      255 SETTABLEKS                       R18 R17 K87 ["ApplyButtonSize"]
      257 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      259 LOADN                            R19 24
      260 LOADN                            R20 24
      261 CALL                             R18 2 1
      262 SETTABLEKS                       R18 R17 K88 ["CloseButtonSize"]
      264 GETTABLEKS                       R18 R5 K102 ["ScrollBarBackground"]
      266 SETTABLEKS                       R18 R17 K91 ["PreviewBackgroundColor"]
      268 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      270 LOADN                            R19 192
      271 LOADN                            R20 192
      272 CALL                             R18 2 1
      273 SETTABLEKS                       R18 R17 K94 ["PreviewTileSize"]
      275 DUPTABLE                         R18 K106 [{["Left"] = 10, ["Right"] = 10, ["Top"] = 10, ["Bottom"] = 30}]
      276 SETTABLEKS                       R18 R17 K95 ["SettingsPadding"]
      278 GETIMPORT                        R18 K37 [UDim2.new]
      280 LOADN                            R19 1
      281 LOADN                            R20 0
      282 LOADN                            R21 0
      283 LOADN                            R22 30
      284 CALL                             R18 4 1
      285 SETTABLEKS                       R18 R17 K97 ["StudsPerTileSettingSize"]
      287 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      289 LOADN                            R19 180
      290 LOADN                            R20 32
      291 CALL                             R18 2 1
      292 SETTABLEKS                       R18 R17 K100 ["UploadAndApplyButtonSize"]
      294 SETTABLE                         R17 R15 R16
      295 LOADK                            R18 K107 ["Setting"]
      296 NAMECALL                         R16 R7 K25 ["add"]
      298 CALL                             R16 2 0
      299 GETTABLEKS                       R16 R7 K107 ["Setting"]
      301 DUPTABLE                         R17 K111 [{["HorizontalSpacing"] = 16, ["Size"], ["ValueLabelWidth"] = 30}]
      302 GETIMPORT                        R18 K37 [UDim2.new]
      304 LOADN                            R19 1
      305 LOADN                            R20 0
      306 LOADN                            R21 0
      307 LOADN                            R22 30
      308 CALL                             R18 4 1
      309 SETTABLEKS                       R18 R17 K61 ["Size"]
      311 SETTABLE                         R17 R15 R16
      312 GETTABLEKS                       R16 R7 K17 ["Alert"]
      314 GETTABLEKS                       R17 R1 K112 ["join"]
      316 MOVE                             R18 R10
      317 NEWTABLE                         R19 1 0
      319 GETTABLEKS                       R20 R1 K112 ["join"]
      321 GETTABLEKS                       R21 R10 K113 ["&Error"]
      323 DUPTABLE                         R22 K117 [{["HorizontalPadding"], ["MaxWidth"] = ∞}]
      324 GETIMPORT                        R23 K78 [UDim.new]
      326 LOADN                            R24 0
      327 LOADN                            R25 16
      328 CALL                             R23 2 1
      329 SETTABLEKS                       R23 R22 K114 ["HorizontalPadding"]
      331 CALL                             R20 2 1
      332 SETTABLEKS                       R20 R19 K118 ["&AppError"]
      334 CALL                             R17 2 1
      335 SETTABLE                         R17 R15 R16
      336 DUPTABLE                         R16 K121 [{["Color"], ["Image"] = "rbxasset://textures/DevConsole/Close.png", ["Size"]}]
      337 GETTABLEKS                       R17 R5 K122 ["ErrorText"]
      339 SETTABLEKS                       R17 R16 K119 ["Color"]
      341 GETIMPORT                        R17 K124 [UDim2.fromScale]
      343 LOADN                            R18 1
      344 LOADN                            R19 1
      345 CALL                             R17 2 1
      346 SETTABLEKS                       R17 R16 K61 ["Size"]
      348 GETTABLEKS                       R17 R7 K19 ["Button"]
      350 GETTABLEKS                       R18 R1 K112 ["join"]
      352 MOVE                             R19 R11
      353 NEWTABLE                         R20 2 0
      355 NEWTABLE                         R21 4 0
      357 SETTABLEKS                       R8 R21 K125 ["Background"]
      359 DUPTABLE                         R22 K129 [{["AnchorPoint"], ["Image"] = "rbxasset://textures/ui/TopBar/close.png", ["Color"], ["Position"], ["Size"]}]
      360 GETIMPORT                        R23 K131 [Vector2.new]
      362 LOADK                            R24 K132 [0.5]
      363 LOADK                            R25 K132 [0.5]
      364 CALL                             R23 2 1
      365 SETTABLEKS                       R23 R22 K126 ["AnchorPoint"]
      367 GETTABLEKS                       R23 R5 K133 ["ButtonText"]
      369 SETTABLEKS                       R23 R22 K119 ["Color"]
      371 GETIMPORT                        R23 K124 [UDim2.fromScale]
      373 LOADK                            R24 K132 [0.5]
      374 LOADK                            R25 K132 [0.5]
      375 CALL                             R23 2 1
      376 SETTABLEKS                       R23 R22 K128 ["Position"]
      378 GETIMPORT                        R23 K30 [UDim2.fromOffset]
      380 LOADN                            R24 18
      381 LOADN                            R25 18
      382 CALL                             R23 2 1
      383 SETTABLEKS                       R23 R22 K61 ["Size"]
      385 SETTABLEKS                       R22 R21 K134 ["BackgroundStyle"]
      387 GETTABLEKS                       R22 R6 K135 ["Hover"]
      389 DUPTABLE                         R23 K136 [{"BackgroundStyle"}]
      390 DUPTABLE                         R24 K129 [{["AnchorPoint"], ["Image"] = "rbxasset://textures/ui/TopBar/close.png", ["Color"], ["Position"], ["Size"]}]
      391 GETIMPORT                        R25 K131 [Vector2.new]
      393 LOADK                            R26 K132 [0.5]
      394 LOADK                            R27 K132 [0.5]
      395 CALL                             R25 2 1
      396 SETTABLEKS                       R25 R24 K126 ["AnchorPoint"]
      398 GETTABLEKS                       R25 R5 K137 ["BrightText"]
      400 SETTABLEKS                       R25 R24 K119 ["Color"]
      402 GETIMPORT                        R25 K124 [UDim2.fromScale]
      404 LOADK                            R26 K132 [0.5]
      405 LOADK                            R27 K132 [0.5]
      406 CALL                             R25 2 1
      407 SETTABLEKS                       R25 R24 K128 ["Position"]
      409 GETIMPORT                        R25 K30 [UDim2.fromOffset]
      411 LOADN                            R26 18
      412 LOADN                            R27 18
      413 CALL                             R25 2 1
      414 SETTABLEKS                       R25 R24 K61 ["Size"]
      416 SETTABLEKS                       R24 R23 K134 ["BackgroundStyle"]
      418 SETTABLE                         R23 R21 R22
      419 SETTABLEKS                       R21 R20 K138 ["&Close"]
      421 NEWTABLE                         R21 4 0
      423 SETTABLEKS                       R8 R21 K125 ["Background"]
      425 SETTABLEKS                       R16 R21 K134 ["BackgroundStyle"]
      427 GETTABLEKS                       R22 R6 K135 ["Hover"]
      429 DUPTABLE                         R23 K136 [{"BackgroundStyle"}]
      430 SETTABLEKS                       R16 R23 K134 ["BackgroundStyle"]
      432 SETTABLE                         R23 R21 R22
      433 SETTABLEKS                       R21 R20 K139 ["&ErrorClose"]
      435 CALL                             R18 2 1
      436 SETTABLE                         R18 R15 R17
      437 RETURN                           R15 1
