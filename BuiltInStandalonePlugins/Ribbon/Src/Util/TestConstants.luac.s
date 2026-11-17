PROTO_0:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["StudioUri"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Types"]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 8 0
       27 DUPTABLE                         R5 K15 [{"MezzanineControls", "TabControls", "Layout"}]
       28 DUPTABLE                         R6 K23 [{"BuiltIn_LeftMezzanineTestAndTestHere", "BuiltIn_LeftMezzanineRun", "BuiltIn_LeftMezzanineTeamTest", "BuiltIn_LeftMezzanineServerAndClients", "BuiltIn_LeftMezzanineDebugPlugin", "BuiltIn_RightMezzanine", "BuiltIn_RightMezzanineStartPage"}]
       29 DUPTABLE                         R7 K27 [{["Name"] = "LeftMezzanineTestAndTestHere", ["Controls"]}]
       30 NEWTABLE                         R8 0 1
       32 DUPTABLE                         R9 K32 [{["Id"] = "Separator1", ["Type"] = "Separator"}]
       33 SETLIST                          R8 R9 1 [1]
       35 SETTABLEKS                       R8 R7 K26 ["Controls"]
       37 SETTABLEKS                       R7 R6 K16 ["BuiltIn_LeftMezzanineTestAndTestHere"]
       39 DUPTABLE                         R7 K34 [{["Name"] = "LeftMezzanineRun", ["Controls"]}]
       40 NEWTABLE                         R8 0 1
       42 DUPTABLE                         R9 K36 [{["Id"] = "Separator2", ["Type"] = "Separator"}]
       43 SETLIST                          R8 R9 1 [1]
       45 SETTABLEKS                       R8 R7 K26 ["Controls"]
       47 SETTABLEKS                       R7 R6 K17 ["BuiltIn_LeftMezzanineRun"]
       49 DUPTABLE                         R7 K38 [{["Name"] = "LeftMezzanineTeamTest", ["Controls"]}]
       50 NEWTABLE                         R8 0 1
       52 DUPTABLE                         R9 K40 [{["Id"] = "Separator3", ["Type"] = "Separator"}]
       53 SETLIST                          R8 R9 1 [1]
       55 SETTABLEKS                       R8 R7 K26 ["Controls"]
       57 SETTABLEKS                       R7 R6 K18 ["BuiltIn_LeftMezzanineTeamTest"]
       59 DUPTABLE                         R7 K42 [{["Name"] = "LeftMezzanineServerAndClients", ["Controls"]}]
       60 NEWTABLE                         R8 0 1
       62 DUPTABLE                         R9 K44 [{["Id"] = "Separator4", ["Type"] = "Separator"}]
       63 SETLIST                          R8 R9 1 [1]
       65 SETTABLEKS                       R8 R7 K26 ["Controls"]
       67 SETTABLEKS                       R7 R6 K19 ["BuiltIn_LeftMezzanineServerAndClients"]
       69 DUPTABLE                         R7 K46 [{["Name"] = "LeftMezzanineDebugPlugin", ["Controls"]}]
       70 NEWTABLE                         R8 0 1
       72 DUPTABLE                         R9 K48 [{["Id"] = "Separator5", ["Type"] = "Separator"}]
       73 SETLIST                          R8 R9 1 [1]
       75 SETTABLEKS                       R8 R7 K26 ["Controls"]
       77 SETTABLEKS                       R7 R6 K20 ["BuiltIn_LeftMezzanineDebugPlugin"]
       79 DUPTABLE                         R7 K50 [{["Name"] = "RightMezzanine", ["Controls"]}]
       80 NEWTABLE                         R8 0 1
       82 DUPTABLE                         R9 K52 [{["Id"] = "Separator7", ["Type"] = "Separator"}]
       83 SETLIST                          R8 R9 1 [1]
       85 SETTABLEKS                       R8 R7 K26 ["Controls"]
       87 SETTABLEKS                       R7 R6 K21 ["BuiltIn_RightMezzanine"]
       89 DUPTABLE                         R7 K54 [{["Name"] = "RightMezzanineStartPage", ["Controls"]}]
       90 NEWTABLE                         R8 0 1
       92 DUPTABLE                         R9 K56 [{["Id"] = "Separator8", ["Type"] = "Separator"}]
       93 SETLIST                          R8 R9 1 [1]
       95 SETTABLEKS                       R8 R7 K26 ["Controls"]
       97 SETTABLEKS                       R7 R6 K22 ["BuiltIn_RightMezzanineStartPage"]
       99 SETTABLEKS                       R6 R5 K12 ["MezzanineControls"]
      101 DUPTABLE                         R6 K64 [{"BuiltIn_HomeTab", "BuiltIn_ModelTab", "BuiltIn_PluginsTab", "Custom_InvisibleTab", "Custom_InvisibleTab2", "Custom_MyFavoriteTab", "Custom_MyEmptyTab"}]
      102 DUPTABLE                         R7 K66 [{["Name"] = "Home", ["Controls"]}]
      103 NEWTABLE                         R8 0 1
      105 DUPTABLE                         R9 K69 [{["Id"] = "Option1", ["Type"] = "Option"}]
      106 SETLIST                          R8 R9 1 [1]
      108 SETTABLEKS                       R8 R7 K26 ["Controls"]
      110 SETTABLEKS                       R7 R6 K57 ["BuiltIn_HomeTab"]
      112 DUPTABLE                         R7 K71 [{["Name"] = "Model", ["Controls"]}]
      113 NEWTABLE                         R8 0 2
      115 DUPTABLE                         R9 K73 [{["Id"] = "Option2", ["Type"] = "Option"}]
      116 DUPTABLE                         R10 K75 [{["Id"] = "Option3", ["Type"] = "Option"}]
      117 SETLIST                          R8 R9 2 [1]
      119 SETTABLEKS                       R8 R7 K26 ["Controls"]
      121 SETTABLEKS                       R7 R6 K58 ["BuiltIn_ModelTab"]
      123 DUPTABLE                         R7 K77 [{["Name"] = "Plugins", ["Controls"]}]
      124 NEWTABLE                         R8 0 0
      126 SETTABLEKS                       R8 R7 K26 ["Controls"]
      128 SETTABLEKS                       R7 R6 K59 ["BuiltIn_PluginsTab"]
      130 DUPTABLE                         R7 K79 [{["Name"] = "Invisible", ["Controls"]}]
      131 NEWTABLE                         R8 0 0
      133 SETTABLEKS                       R8 R7 K26 ["Controls"]
      135 SETTABLEKS                       R7 R6 K60 ["Custom_InvisibleTab"]
      137 DUPTABLE                         R7 K81 [{["Name"] = "Invisible2", ["Controls"]}]
      138 NEWTABLE                         R8 0 0
      140 SETTABLEKS                       R8 R7 K26 ["Controls"]
      142 SETTABLEKS                       R7 R6 K61 ["Custom_InvisibleTab2"]
      144 DUPTABLE                         R7 K83 [{["Name"] = "My favorite!!!", ["Controls"]}]
      145 NEWTABLE                         R8 0 3
      147 DUPTABLE                         R9 K32 [{["Id"] = "Separator1", ["Type"] = "Separator"}]
      148 DUPTABLE                         R10 K36 [{["Id"] = "Separator2", ["Type"] = "Separator"}]
      149 DUPTABLE                         R11 K40 [{["Id"] = "Separator3", ["Type"] = "Separator"}]
      150 SETLIST                          R8 R9 3 [1]
      152 SETTABLEKS                       R8 R7 K26 ["Controls"]
      154 SETTABLEKS                       R7 R6 K62 ["Custom_MyFavoriteTab"]
      156 DUPTABLE                         R7 K85 [{["Name"] = "My Empty", ["Controls"]}]
      157 NEWTABLE                         R8 0 0
      159 SETTABLEKS                       R8 R7 K26 ["Controls"]
      161 SETTABLEKS                       R7 R6 K63 ["Custom_MyEmptyTab"]
      163 SETTABLEKS                       R6 R5 K13 ["TabControls"]
      165 DUPTABLE                         R6 K87 [{"TabLayout"}]
      166 NEWTABLE                         R7 0 6
      168 DUPTABLE                         R8 K91 [{["Identifier"], ["Visible"] = False}]
      169 DUPTABLE                         R9 K95 [{["Type"] = "Custom", ["Filename"] = "InvisibleTab"}]
      170 SETTABLEKS                       R9 R8 K88 ["Identifier"]
      172 DUPTABLE                         R9 K97 [{["Identifier"], ["Visible"] = True}]
      173 DUPTABLE                         R10 K100 [{["Type"] = "BuiltIn", ["Filename"] = "HomeTab"}]
      174 SETTABLEKS                       R10 R9 K88 ["Identifier"]
      176 DUPTABLE                         R10 K97 [{["Identifier"], ["Visible"] = True}]
      177 DUPTABLE                         R11 K102 [{["Type"] = "BuiltIn", ["Filename"] = "ModelTab"}]
      178 SETTABLEKS                       R11 R10 K88 ["Identifier"]
      180 DUPTABLE                         R11 K97 [{["Identifier"], ["Visible"] = True}]
      181 DUPTABLE                         R12 K104 [{["Type"] = "Custom", ["Filename"] = "MyFavoriteTab"}]
      182 SETTABLEKS                       R12 R11 K88 ["Identifier"]
      184 DUPTABLE                         R12 K97 [{["Identifier"], ["Visible"] = True}]
      185 DUPTABLE                         R13 K106 [{["Type"] = "BuiltIn", ["Filename"] = "PluginsTab"}]
      186 SETTABLEKS                       R13 R12 K88 ["Identifier"]
      188 DUPTABLE                         R13 K91 [{["Identifier"], ["Visible"] = False}]
      189 DUPTABLE                         R14 K108 [{["Type"] = "Custom", ["Filename"] = "InvisibleTab2"}]
      190 SETTABLEKS                       R14 R13 K88 ["Identifier"]
      192 SETLIST                          R7 R8 6 [1]
      194 SETTABLEKS                       R7 R6 K86 ["TabLayout"]
      196 SETTABLEKS                       R6 R5 K14 ["Layout"]
      198 GETIMPORT                        R6 K111 [table.freeze]
      200 MOVE                             R7 R5
      201 CALL                             R6 1 1
      202 SETTABLEKS                       R6 R4 K112 ["MOCK_RIBBON_DEFINITION"]
      204 NEWTABLE                         R6 0 5
      206 DUPTABLE                         R7 K117 [{["Label"] = "Tool1", ["Uri"], ["PreferredToolbarUri"], ["Controls"]}]
      207 GETTABLEKS                       R8 R2 K118 ["wrap"]
      209 DUPTABLE                         R9 K123 [{["PluginId"] = "456", ["ItemId"] = ""}]
      210 CALL                             R8 1 1
      211 SETTABLEKS                       R8 R7 K115 ["Uri"]
      213 GETTABLEKS                       R8 R2 K118 ["wrap"]
      215 DUPTABLE                         R9 K128 [{["PluginId"] = "Ribbon", ["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["ItemId"] = "Tabs/BuiltIn_HomeTab"}]
      216 CALL                             R8 1 1
      217 SETTABLEKS                       R8 R7 K116 ["PreferredToolbarUri"]
      219 NEWTABLE                         R8 0 1
      221 DUPTABLE                         R9 K131 [{["Type"] = "Button", ["Id"] = "Button1"}]
      222 SETLIST                          R8 R9 1 [1]
      224 SETTABLEKS                       R8 R7 K26 ["Controls"]
      226 DUPTABLE                         R8 K133 [{["Label"] = "Tool2", ["Uri"], ["PreferredToolbarUri"], ["Controls"]}]
      227 GETTABLEKS                       R9 R2 K118 ["wrap"]
      229 DUPTABLE                         R10 K135 [{["PluginId"] = "123", ["ItemId"] = "456"}]
      230 CALL                             R9 1 1
      231 SETTABLEKS                       R9 R8 K115 ["Uri"]
      233 GETTABLEKS                       R9 R2 K118 ["wrap"]
      235 DUPTABLE                         R10 K128 [{["PluginId"] = "Ribbon", ["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["ItemId"] = "Tabs/BuiltIn_HomeTab"}]
      236 CALL                             R9 1 1
      237 SETTABLEKS                       R9 R8 K116 ["PreferredToolbarUri"]
      239 NEWTABLE                         R9 0 2
      241 DUPTABLE                         R10 K137 [{["Type"] = "Button", ["Id"] = "Button2"}]
      242 DUPTABLE                         R11 K139 [{["Type"] = "Button", ["Id"] = "Button3"}]
      243 SETLIST                          R9 R10 2 [1]
      245 SETTABLEKS                       R9 R8 K26 ["Controls"]
      247 DUPTABLE                         R9 K141 [{["Label"] = "Tool3", ["Uri"], ["PreferredToolbarUri"], ["Controls"]}]
      248 GETTABLEKS                       R10 R2 K118 ["wrap"]
      250 DUPTABLE                         R11 K143 [{["PluginId"] = "789", ["ItemId"] = ""}]
      251 CALL                             R10 1 1
      252 SETTABLEKS                       R10 R9 K115 ["Uri"]
      254 GETTABLEKS                       R10 R2 K118 ["wrap"]
      256 DUPTABLE                         R11 K145 [{["PluginId"] = "Ribbon", ["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["ItemId"] = "Tabs/BuiltIn_ModelTab"}]
      257 CALL                             R10 1 1
      258 SETTABLEKS                       R10 R9 K116 ["PreferredToolbarUri"]
      260 NEWTABLE                         R10 0 1
      262 DUPTABLE                         R11 K147 [{["Type"] = "Button", ["Id"] = "Button4"}]
      263 SETLIST                          R10 R11 1 [1]
      265 SETTABLEKS                       R10 R9 K26 ["Controls"]
      267 DUPTABLE                         R10 K149 [{["Label"] = "Tool4", ["Uri"], ["PreferredToolbarUri"], ["Controls"]}]
      268 GETTABLEKS                       R11 R2 K118 ["wrap"]
      270 DUPTABLE                         R12 K150 [{["PluginId"] = "123", ["ItemId"] = "123"}]
      271 CALL                             R11 1 1
      272 SETTABLEKS                       R11 R10 K115 ["Uri"]
      274 GETTABLEKS                       R11 R2 K118 ["wrap"]
      276 DUPTABLE                         R12 K128 [{["PluginId"] = "Ribbon", ["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["ItemId"] = "Tabs/BuiltIn_HomeTab"}]
      277 CALL                             R11 1 1
      278 SETTABLEKS                       R11 R10 K116 ["PreferredToolbarUri"]
      280 NEWTABLE                         R11 0 1
      282 DUPTABLE                         R12 K152 [{["Type"] = "Button", ["Id"] = "Button5"}]
      283 SETLIST                          R11 R12 1 [1]
      285 SETTABLEKS                       R11 R10 K26 ["Controls"]
      287 DUPTABLE                         R11 K154 [{["Label"] = "Tool5", ["Uri"], ["PreferredToolbarUri"], ["Controls"]}]
      288 GETTABLEKS                       R12 R2 K118 ["wrap"]
      290 DUPTABLE                         R13 K156 [{["PluginId"] = "IHaveNoControls", ["ItemId"] = "IHaveNoControls"}]
      291 CALL                             R12 1 1
      292 SETTABLEKS                       R12 R11 K115 ["Uri"]
      294 GETTABLEKS                       R12 R2 K118 ["wrap"]
      296 DUPTABLE                         R13 K128 [{["PluginId"] = "Ribbon", ["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["ItemId"] = "Tabs/BuiltIn_HomeTab"}]
      297 CALL                             R12 1 1
      298 SETTABLEKS                       R12 R11 K116 ["PreferredToolbarUri"]
      300 NEWTABLE                         R12 0 0
      302 SETTABLEKS                       R12 R11 K26 ["Controls"]
      304 SETLIST                          R6 R7 5 [1]
      306 GETIMPORT                        R7 K111 [table.freeze]
      308 MOVE                             R8 R6
      309 CALL                             R7 1 1
      310 SETTABLEKS                       R7 R4 K157 ["MOCK_CUSTOM_TOOLS"]
      312 GETTABLEKS                       R7 R2 K118 ["wrap"]
      314 DUPTABLE                         R8 K158 [{["PluginId"] = "Ribbon", ["DataModel"] = "Standalone", ["PluginType"] = "Standalone"}]
      315 CALL                             R7 1 1
      316 SETTABLEKS                       R7 R4 K159 ["MOCK_PLUGIN_URI"]
      318 NEWTABLE                         R7 0 6
      320 DUPTABLE                         R8 K163 [{["Id"] = "AvatarThumbnailControl", ["Type"] = "AvatarThumbnail", ["Action"]}]
      321 DUPTABLE                         R9 K168 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "AvatarThumbnailControlAction", ["Category"] = "Actions"}]
      322 SETTABLEKS                       R9 R8 K162 ["Action"]
      324 DUPTABLE                         R9 K173 [{["Id"] = "RibbonToggleControl", ["Type"] = "RibbonToggle", ["Action"], ["ActionOnToggle"], ["Setting"]}]
      325 DUPTABLE                         R10 K175 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "RibbonToggleControlAction", ["Category"] = "Actions"}]
      326 SETTABLEKS                       R10 R9 K162 ["Action"]
      328 DUPTABLE                         R10 K177 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "RibbonToggleControlActionOnToggle", ["Category"] = "Actions"}]
      329 SETTABLEKS                       R10 R9 K171 ["ActionOnToggle"]
      331 DUPTABLE                         R10 K180 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "RibbonToggleControlSetting", ["Category"] = "Settings"}]
      332 SETTABLEKS                       R10 R9 K172 ["Setting"]
      334 DUPTABLE                         R10 K183 [{["Id"] = "OptionControl", ["Type"] = "Option", ["Action"], ["Setting"], ["Children"]}]
      335 DUPTABLE                         R11 K185 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "OptionControlAction", ["Category"] = "Actions"}]
      336 SETTABLEKS                       R11 R10 K162 ["Action"]
      338 DUPTABLE                         R11 K187 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "OptionControlSetting", ["Category"] = "Settings"}]
      339 SETTABLEKS                       R11 R10 K172 ["Setting"]
      341 NEWTABLE                         R11 0 2
      343 DUPTABLE                         R12 K191 [{["Id"] = "IconButtonControl", ["Type"] = "IconButton", ["Action"], ["ActionGroup"]}]
      344 DUPTABLE                         R13 K193 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "IconButtonControlAction", ["Category"] = "Actions"}]
      345 SETTABLEKS                       R13 R12 K162 ["Action"]
      347 NEWTABLE                         R13 0 2
      349 DUPTABLE                         R14 K195 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "IconButtonControlActionGroupAction1", ["Category"] = "Actions"}]
      350 DUPTABLE                         R15 K197 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "IconButtonControlActionGroupAction2", ["Category"] = "Actions"}]
      351 SETLIST                          R13 R14 2 [1]
      353 SETTABLEKS                       R13 R12 K190 ["ActionGroup"]
      355 DUPTABLE                         R13 K199 [{["Id"] = "ButtonControl", ["Type"] = "Button", ["Action"], ["ActionGroup"]}]
      356 DUPTABLE                         R14 K201 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "ButtonControlAction", ["Category"] = "Actions"}]
      357 SETTABLEKS                       R14 R13 K162 ["Action"]
      359 NEWTABLE                         R14 0 2
      361 DUPTABLE                         R15 K203 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "ButtonControlActionGroupAction1", ["Category"] = "Actions"}]
      362 DUPTABLE                         R16 K205 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "ButtonControlActionGroupAction2", ["Category"] = "Actions"}]
      363 SETLIST                          R14 R15 2 [1]
      365 SETTABLEKS                       R14 R13 K190 ["ActionGroup"]
      367 SETLIST                          R11 R12 2 [1]
      369 SETTABLEKS                       R11 R10 K182 ["Children"]
      371 DUPTABLE                         R11 K209 [{["Id"] = "SplitButtonControl", ["Type"] = "SplitButton", ["Action"], ["Setting"], ["ChildAction"], ["Children"]}]
      372 DUPTABLE                         R12 K211 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "SplitButtonControlAction", ["Category"] = "Actions"}]
      373 SETTABLEKS                       R12 R11 K162 ["Action"]
      375 DUPTABLE                         R12 K213 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "SplitButtonControlSetting", ["Category"] = "Settings"}]
      376 SETTABLEKS                       R12 R11 K172 ["Setting"]
      378 DUPTABLE                         R12 K215 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "SplitButtonControlChildAction", ["Category"] = "Actions"}]
      379 SETTABLEKS                       R12 R11 K208 ["ChildAction"]
      381 NEWTABLE                         R12 0 2
      383 DUPTABLE                         R13 K218 [{["Id"] = "CheckboxControl", ["Type"] = "Checkbox", ["Setting"]}]
      384 DUPTABLE                         R14 K220 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "CheckboxControlSetting", ["Category"] = "Settings"}]
      385 SETTABLEKS                       R14 R13 K172 ["Setting"]
      387 DUPTABLE                         R14 K223 [{["Id"] = "SegmentedButtonControl", ["Type"] = "SegmentedButton", ["Setting"]}]
      388 DUPTABLE                         R15 K225 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "SegmentedButtonControlSetting", ["Category"] = "Settings"}]
      389 SETTABLEKS                       R15 R14 K172 ["Setting"]
      391 SETLIST                          R12 R13 2 [1]
      393 SETTABLEKS                       R12 R11 K182 ["Children"]
      395 DUPTABLE                         R12 K228 [{["Id"] = "RowControl", ["Type"] = "Row", ["Children"]}]
      396 NEWTABLE                         R13 0 2
      398 DUPTABLE                         R14 K231 [{["Id"] = "SpinboxControl", ["Type"] = "Spinbox", ["Setting"]}]
      399 DUPTABLE                         R15 K233 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "SpinboxControlSetting", ["Category"] = "Settings"}]
      400 SETTABLEKS                       R15 R14 K172 ["Setting"]
      402 DUPTABLE                         R15 K236 [{["Id"] = "SelectInputControl", ["Type"] = "SelectInput", ["Setting"]}]
      403 DUPTABLE                         R16 K238 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "SelectInputControlSetting", ["Category"] = "Settings"}]
      404 SETTABLEKS                       R16 R15 K172 ["Setting"]
      406 SETLIST                          R13 R14 2 [1]
      408 SETTABLEKS                       R13 R12 K182 ["Children"]
      410 DUPTABLE                         R13 K241 [{["Id"] = "ColumnControl", ["Type"] = "Column", ["Children"]}]
      411 NEWTABLE                         R14 0 2
      413 DUPTABLE                         R15 K244 [{["Id"] = "SelectOptionControl", ["Type"] = "SelectOption", ["Setting"]}]
      414 DUPTABLE                         R16 K246 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "SelectOptionControlSetting", ["Category"] = "Settings"}]
      415 SETTABLEKS                       R16 R15 K172 ["Setting"]
      417 DUPTABLE                         R16 K249 [{["Id"] = "SliderControl", ["Type"] = "Slider", ["Setting"]}]
      418 DUPTABLE                         R17 K251 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "SliderControlSetting", ["Category"] = "Settings"}]
      419 SETTABLEKS                       R17 R16 K172 ["Setting"]
      421 SETLIST                          R14 R15 2 [1]
      423 SETTABLEKS                       R14 R13 K182 ["Children"]
      425 SETLIST                          R7 R8 6 [1]
      427 GETIMPORT                        R8 K111 [table.freeze]
      429 MOVE                             R9 R7
      430 CALL                             R8 1 1
      431 SETTABLEKS                       R8 R4 K252 ["VISITABLE_CONTROLS"]
      433 NEWTABLE                         R8 0 2
      435 DUPTABLE                         R9 K256 [{["Id"] = "FlagOnControl", ["Type"] = "Slider", ["FastFlag"] = "DebugVisitControlUris", ["Setting"]}]
      436 DUPTABLE                         R10 K258 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "FlagOnControlSetting", ["Category"] = "Settings"}]
      437 SETTABLEKS                       R10 R9 K172 ["Setting"]
      439 DUPTABLE                         R10 K261 [{["Id"] = "FlagOffControl", ["Type"] = "Slider", ["FastFlag"] = "!DebugVisitControlUris", ["Setting"]}]
      440 DUPTABLE                         R11 K263 [{["PluginId"] = "TestControls", ["DataModel"] = "Standalone", ["ItemId"] = "FlagOffControlSetting", ["Category"] = "Settings"}]
      441 SETTABLEKS                       R11 R10 K172 ["Setting"]
      443 SETLIST                          R8 R9 2 [1]
      445 GETIMPORT                        R9 K111 [table.freeze]
      447 MOVE                             R10 R8
      448 CALL                             R9 1 1
      449 SETTABLEKS                       R9 R4 K264 ["FLAGGED_CONTROLS"]
      451 NEWTABLE                         R9 0 5
      453 DUPTABLE                         R10 K267 [{["Id"] = "Foo", ["Action"] = 5}]
      454 DUPTABLE                         R11 K270 [{["Id"] = "Bar", ["ActionOnToggle"] = "i'm not a uri >:)"}]
      455 DUPTABLE                         R12 K272 [{["Id"] = "Baz", ["ActionGroup"]}]
      456 NEWTABLE                         R13 0 1
      458 GETIMPORT                        R14 K274 [newproxy]
      460 CALL                             R14 0 -1
      461 SETLIST                          R13 R14 -1 [1]
      463 SETTABLEKS                       R13 R12 K190 ["ActionGroup"]
      465 DUPTABLE                         R13 K275 [{"ChildAction"}]
      466 DUPCLOSURE                       R14 K276 [PROTO_0]
      467 SETTABLEKS                       R14 R13 K208 ["ChildAction"]
      469 DUPTABLE                         R14 K277 [{["Setting"] = True}]
      470 SETLIST                          R9 R10 5 [1]
      472 GETIMPORT                        R10 K111 [table.freeze]
      474 MOVE                             R11 R9
      475 CALL                             R10 1 1
      476 SETTABLEKS                       R10 R4 K278 ["INVALID_URI_CONTROLS"]
      478 RETURN                           R4 1
