PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["pluginList"]
        5 JUMPIFNOT                        R0 ; [+26]
        6 GETIMPORT                        R0 K3 [pairs]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["props"]
       11 GETTABLEKS                       R1 R1 K1 ["pluginList"]
       13 CALL                             R0 1 3
       14 FORGPREP_NEXT                    R0
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["props"]
       18 GETTABLEKS                       R5 R5 K4 ["PluginManagementApi"]
       20 GETTABLEKS                       R7 R4 K5 ["assetId"]
       22 GETTABLEKS                       R8 R4 K6 ["latestVersion"]
       24 NAMECALL                         R5 R5 K7 ["IsPluginUpToDate"]
       26 CALL                             R5 3 1
       27 JUMPIF                           R5 ; [+2]
       28 LOADB                            R5 1
       29 RETURN                           R5 1
       30 FORGLOOP                         R0 2 ; [-16]
       32 LOADB                            R0 0
       33 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginManagementApi"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["API"]
       10 NAMECALL                         R1 R1 K3 ["get"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["props"]
       16 GETTABLEKS                       R2 R2 K4 ["dispatchRefreshPlugins"]
       18 MOVE                             R3 R2
       19 MOVE                             R4 R0
       20 MOVE                             R5 R1
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mounted"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["refreshPlugins"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 0
        9 DUPTABLE                         R2 K4 [{["updating"] = False}]
       10 NAMECALL                         R0 R0 K5 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["props"]
        8 GETTABLEKS                       R1 R0 K5 ["PluginManagementApi"]
       10 GETTABLEKS                       R2 R0 K6 ["Analytics"]
       12 LOADK                            R4 K7 ["TryUpdateAllPlugins"]
       13 NAMECALL                         R2 R2 K8 ["report"]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R2 R0 K9 ["UpdateAllPlugins"]
       18 MOVE                             R3 R1
       19 GETTABLEKS                       R4 R0 K6 ["Analytics"]
       21 CALL                             R2 2 0
       22 GETIMPORT                        R2 K11 [spawn]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U0
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isPlaceOpen"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+8]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
        9 NAMECALL                         R0 R0 K2 ["Fire"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0
       13 GETIMPORT                        R0 K4 [warn]
       15 LOADK                            R1 K5 ["findPlugins not supported when no place is open"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["tokens"]
        4 DUPTABLE                         R1 K3 [{["updating"] = False}]
        5 SETTABLEKS                       R1 R0 K4 ["state"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["anyUpdateNeeded"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K6 ["refreshPlugins"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K7 ["updateAllPlugins"]
       19 NEWCLOSURE                       R1 P3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 SETTABLEKS                       R1 R0 K8 ["findPlugins"]
       25 GETTABLEKS                       R1 R0 K9 ["props"]
       27 GETTABLEKS                       R1 R1 K10 ["PluginManagementApi"]
       29 GETTABLEKS                       R1 R1 K11 ["OnPluginInstalledFromToolbox"]
       31 GETTABLEKS                       R3 R0 K6 ["refreshPlugins"]
       33 NAMECALL                         R1 R1 K12 ["Connect"]
       35 CALL                             R1 2 1
       36 GETTABLEKS                       R3 R0 K0 ["tokens"]
       38 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       40 MOVE                             R4 R1
       41 GETIMPORT                        R2 K15 [table.insert]
       43 CALL                             R2 2 0
       44 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K3 ["MultipleDocumentInterfaceInstance"]
        9 GETTABLEKS                       R1 R1 K4 ["FocusedDataModelSession"]
       11 RETURN                           R1 1

PROTO_7:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["mounted"]
        3 GETTABLEKS                       R1 R0 K1 ["refreshPlugins"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["mounted"]
        3 GETIMPORT                        R1 K2 [ipairs]
        5 GETTABLEKS                       R2 R0 K3 ["tokens"]
        7 CALL                             R1 1 3
        8 FORGPREP_INEXT                   R1
        9 NAMECALL                         R6 R5 K4 ["Disconnect"]
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 [inext] ; [-4]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K3 ["tokens"]
       18 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["pluginList"]
        6 GETTABLEKS                       R4 R2 K3 ["updating"]
        8 GETTABLEKS                       R5 R1 K4 ["Localization"]
       10 GETTABLEKS                       R6 R0 K0 ["props"]
       12 GETTABLEKS                       R6 R6 K5 ["Stylizer"]
       14 GETTABLEKS                       R7 R0 K6 ["anyUpdateNeeded"]
       16 CALL                             R7 0 1
       17 NOT                              R9 R7
       18 OR                               R8 R9 R4
       19 JUMPIFEQKNIL                     R3 ; [+2]
       21 LOADB                            R9 0 +1
       22 LOADB                            R9 1
       23 NOT                              R10 R9
       24 JUMPIFNOT                        R10 ; [+8]
       25 GETIMPORT                        R11 K8 [next]
       27 MOVE                             R12 R3
       28 CALL                             R11 1 1
       29 JUMPIFNOTEQKNIL                  R11 ; [+2]
       31 LOADB                            R10 0 +1
       32 LOADB                            R10 1
       33 NOT                              R11 R10
       34 JUMPIFNOT                        R11 ; [+1]
       35 NOT                              R11 R9
       36 LOADNIL                          R12
       37 NAMECALL                         R13 R0 K9 ["isPlaceOpen"]
       39 CALL                             R13 1 1
       40 JUMPIFNOT                        R13 ; [+7]
       41 LOADK                            R16 K10 ["Main"]
       42 LOADK                            R17 K11 ["FindPluginsWithButtonMessage"]
       43 NAMECALL                         R14 R5 K12 ["getText"]
       45 CALL                             R14 3 1
       46 MOVE                             R12 R14
       47 JUMP                             ; [+6]
       48 LOADK                            R16 K10 ["Main"]
       49 LOADK                            R17 K13 ["FindPluginsMessage"]
       50 NAMECALL                         R14 R5 K12 ["getText"]
       52 CALL                             R14 3 1
       53 MOVE                             R12 R14
       54 GETUPVAL                         R14 0
       55 GETTABLEKS                       R14 R14 K14 ["createElement"]
       57 LOADK                            R15 K15 ["Frame"]
       58 DUPTABLE                         R16 K18 [{"Size", "BackgroundColor3"}]
       59 GETIMPORT                        R17 K21 [UDim2.new]
       61 LOADN                            R18 1
       62 LOADN                            R19 0
       63 LOADN                            R20 1
       64 LOADN                            R21 0
       65 CALL                             R17 4 1
       66 SETTABLEKS                       R17 R16 K16 ["Size"]
       68 GETTABLEKS                       R17 R6 K22 ["BackgroundColor"]
       70 SETTABLEKS                       R17 R16 K17 ["BackgroundColor3"]
       72 DUPTABLE                         R17 K29 [{"PluginLabel", "UpdateAllButton", "FindPluginsButton", "NoPluginsMessage", "FindPluginsMessage", "ScrollablePluginList", "Indicator"}]
       73 GETUPVAL                         R18 0
       74 GETTABLEKS                       R18 R18 K14 ["createElement"]
       76 LOADK                            R19 K30 ["TextLabel"]
       77 DUPTABLE                         R20 K40 [{["Size"], ["Position"], ["Text"], ["TextSize"] = 24, ["TextColor3"], ["Font"], ["BackgroundTransparency"] = 1, ["TextXAlignment"]}]
       78 GETIMPORT                        R21 K21 [UDim2.new]
       80 LOADN                            R22 0
       81 GETUPVAL                         R23 1
       82 GETTABLEKS                       R23 R23 K41 ["HEADER_TITLE_WIDTH"]
       84 LOADN                            R24 0
       85 GETUPVAL                         R25 1
       86 GETTABLEKS                       R25 R25 K42 ["HEADER_BUTTON_SIZE"]
       88 CALL                             R21 4 1
       89 SETTABLEKS                       R21 R20 K16 ["Size"]
       91 GETIMPORT                        R21 K21 [UDim2.new]
       93 LOADN                            R22 0
       94 GETUPVAL                         R23 1
       95 GETTABLEKS                       R23 R23 K43 ["HEADER_LEFT_PADDING"]
       97 LOADN                            R24 0
       98 GETUPVAL                         R25 1
       99 GETTABLEKS                       R25 R25 K44 ["HEADER_TOP_PADDING"]
      101 CALL                             R21 4 1
      102 SETTABLEKS                       R21 R20 K31 ["Position"]
      104 LOADK                            R23 K10 ["Main"]
      105 LOADK                            R24 K45 ["Title"]
      106 NAMECALL                         R21 R5 K12 ["getText"]
      108 CALL                             R21 3 1
      109 SETTABLEKS                       R21 R20 K32 ["Text"]
      111 GETTABLEKS                       R21 R6 K46 ["TextColor"]
      113 SETTABLEKS                       R21 R20 K35 ["TextColor3"]
      115 GETIMPORT                        R21 K49 [Enum.Font.SourceSansSemibold]
      117 SETTABLEKS                       R21 R20 K36 ["Font"]
      119 GETIMPORT                        R21 K51 [Enum.TextXAlignment.Left]
      121 GETTABLEKS                       R21 R21 K52 ["Value"]
      123 SETTABLEKS                       R21 R20 K39 ["TextXAlignment"]
      125 CALL                             R18 2 1
      126 SETTABLEKS                       R18 R17 K23 ["PluginLabel"]
      128 MOVE                             R18 R7
      129 JUMPIFNOT                        R18 ; [+93]
      130 GETUPVAL                         R18 0
      131 GETTABLEKS                       R18 R18 K14 ["createElement"]
      133 GETUPVAL                         R19 2
      134 DUPTABLE                         R20 K57 [{["Size"], ["Position"], ["Style"] = "Round", ["StyleModifier"], ["OnClick"]}]
      135 GETIMPORT                        R21 K21 [UDim2.new]
      137 LOADN                            R22 0
      138 GETUPVAL                         R23 1
      139 GETTABLEKS                       R23 R23 K58 ["HEADER_UPDATE_WIDTH"]
      141 LOADN                            R24 0
      142 GETUPVAL                         R25 1
      143 GETTABLEKS                       R25 R25 K42 ["HEADER_BUTTON_SIZE"]
      145 CALL                             R21 4 1
      146 SETTABLEKS                       R21 R20 K16 ["Size"]
      148 GETIMPORT                        R21 K21 [UDim2.new]
      150 LOADN                            R22 1
      151 GETUPVAL                         R26 1
      152 GETTABLEKS                       R26 R26 K60 ["HEADER_RIGHT_PADDING"]
      154 MULK                             R25 R26 K59 [2]
      155 GETUPVAL                         R26 1
      156 GETTABLEKS                       R26 R26 K58 ["HEADER_UPDATE_WIDTH"]
      158 SUB                              R24 R25 R26
      159 GETUPVAL                         R25 1
      160 GETTABLEKS                       R25 R25 K42 ["HEADER_BUTTON_SIZE"]
      162 SUB                              R23 R24 R25
      163 LOADN                            R24 0
      164 GETUPVAL                         R25 1
      165 GETTABLEKS                       R25 R25 K44 ["HEADER_TOP_PADDING"]
      167 CALL                             R21 4 1
      168 SETTABLEKS                       R21 R20 K31 ["Position"]
      170 JUMPIFNOT                        R8 ; [+4]
      171 GETUPVAL                         R21 3
      172 GETTABLEKS                       R21 R21 K61 ["Disabled"]
      174 JUMPIF                           R21 ; [+1]
      175 LOADNIL                          R21
      176 SETTABLEKS                       R21 R20 K55 ["StyleModifier"]
      178 JUMPIF                           R8 ; [+3]
      179 GETTABLEKS                       R21 R0 K62 ["updateAllPlugins"]
      181 JUMPIF                           R21 ; [+1]
      182 DUPCLOSURE                       R21 K63 [PROTO_9]
      183 SETTABLEKS                       R21 R20 K56 ["OnClick"]
      185 DUPTABLE                         R21 K65 [{"Label"}]
      186 GETUPVAL                         R22 0
      187 GETTABLEKS                       R22 R22 K14 ["createElement"]
      189 LOADK                            R23 K30 ["TextLabel"]
      190 DUPTABLE                         R24 K67 [{["Size"], ["Text"], ["TextColor3"], ["Font"], ["TextSize"] = 18, ["BackgroundTransparency"] = 1}]
      191 GETIMPORT                        R25 K21 [UDim2.new]
      193 LOADN                            R26 1
      194 LOADN                            R27 0
      195 LOADN                            R28 1
      196 LOADN                            R29 0
      197 CALL                             R25 4 1
      198 SETTABLEKS                       R25 R24 K16 ["Size"]
      200 LOADK                            R27 K10 ["Main"]
      201 LOADK                            R28 K24 ["UpdateAllButton"]
      202 NAMECALL                         R25 R5 K12 ["getText"]
      204 CALL                             R25 3 1
      205 SETTABLEKS                       R25 R24 K32 ["Text"]
      207 JUMPIFNOT                        R8 ; [+3]
      208 GETTABLEKS                       R25 R6 K68 ["DisabledColor"]
      210 JUMPIF                           R25 ; [+2]
      211 GETTABLEKS                       R25 R6 K46 ["TextColor"]
      213 SETTABLEKS                       R25 R24 K35 ["TextColor3"]
      215 GETIMPORT                        R25 K70 [Enum.Font.SourceSans]
      217 SETTABLEKS                       R25 R24 K36 ["Font"]
      219 CALL                             R22 2 1
      220 SETTABLEKS                       R22 R21 K64 ["Label"]
      222 CALL                             R18 3 1
      223 SETTABLEKS                       R18 R17 K24 ["UpdateAllButton"]
      225 JUMPIFNOT                        R13 ; [+79]
      226 GETUPVAL                         R18 0
      227 GETTABLEKS                       R18 R18 K14 ["createElement"]
      229 GETUPVAL                         R19 2
      230 DUPTABLE                         R20 K73 [{["Size"], ["Position"], ["AnchorPoint"], ["Style"] = "RoundPrimary", ["BackgroundTransparency"] = 1, ["OnClick"]}]
      231 GETIMPORT                        R21 K21 [UDim2.new]
      233 LOADN                            R22 0
      234 GETUPVAL                         R23 1
      235 GETTABLEKS                       R23 R23 K42 ["HEADER_BUTTON_SIZE"]
      237 LOADN                            R24 0
      238 GETUPVAL                         R25 1
      239 GETTABLEKS                       R25 R25 K42 ["HEADER_BUTTON_SIZE"]
      241 CALL                             R21 4 1
      242 SETTABLEKS                       R21 R20 K16 ["Size"]
      244 GETIMPORT                        R21 K21 [UDim2.new]
      246 LOADN                            R22 1
      247 GETUPVAL                         R23 1
      248 GETTABLEKS                       R23 R23 K60 ["HEADER_RIGHT_PADDING"]
      250 LOADN                            R24 0
      251 GETUPVAL                         R25 1
      252 GETTABLEKS                       R25 R25 K44 ["HEADER_TOP_PADDING"]
      254 CALL                             R21 4 1
      255 SETTABLEKS                       R21 R20 K31 ["Position"]
      257 GETIMPORT                        R21 K75 [Vector2.new]
      259 LOADN                            R22 1
      260 LOADN                            R23 0
      261 CALL                             R21 2 1
      262 SETTABLEKS                       R21 R20 K71 ["AnchorPoint"]
      264 GETTABLEKS                       R21 R0 K76 ["findPlugins"]
      266 SETTABLEKS                       R21 R20 K56 ["OnClick"]
      268 DUPTABLE                         R21 K78 [{"Dots"}]
      269 GETUPVAL                         R22 0
      270 GETTABLEKS                       R22 R22 K14 ["createElement"]
      272 LOADK                            R23 K30 ["TextLabel"]
      273 DUPTABLE                         R24 K80 [{["Position"], ["Size"], ["Text"] = "+", ["TextColor3"], ["Font"], ["TextSize"] = 24, ["BackgroundTransparency"] = 1}]
      274 GETIMPORT                        R25 K21 [UDim2.new]
      276 LOADN                            R26 0
      277 LOADN                            R27 0
      278 LOADN                            R28 0
      279 LOADN                            R29 0
      280 CALL                             R25 4 1
      281 SETTABLEKS                       R25 R24 K31 ["Position"]
      283 GETIMPORT                        R25 K21 [UDim2.new]
      285 LOADN                            R26 1
      286 LOADN                            R27 0
      287 LOADN                            R28 1
      288 LOADN                            R29 0
      289 CALL                             R25 4 1
      290 SETTABLEKS                       R25 R24 K16 ["Size"]
      292 GETTABLEKS                       R25 R6 K81 ["White"]
      294 SETTABLEKS                       R25 R24 K35 ["TextColor3"]
      296 GETIMPORT                        R25 K83 [Enum.Font.SourceSansBold]
      298 SETTABLEKS                       R25 R24 K36 ["Font"]
      300 CALL                             R22 2 1
      301 SETTABLEKS                       R22 R21 K77 ["Dots"]
      303 CALL                             R18 3 1
      304 JUMPIF                           R18 ; [+1]
      305 LOADNIL                          R18
      306 SETTABLEKS                       R18 R17 K25 ["FindPluginsButton"]
      308 MOVE                             R18 R11
      309 JUMPIFNOT                        R18 ; [+60]
      310 GETUPVAL                         R18 0
      311 GETTABLEKS                       R18 R18 K14 ["createElement"]
      313 LOADK                            R19 K30 ["TextLabel"]
      314 DUPTABLE                         R20 K86 [{["Position"], ["Size"], ["Text"], ["TextSize"] = 17, ["TextColor3"], ["Font"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"]}]
      315 GETIMPORT                        R21 K21 [UDim2.new]
      317 LOADN                            R22 0
      318 GETUPVAL                         R23 1
      319 GETTABLEKS                       R23 R23 K43 ["HEADER_LEFT_PADDING"]
      321 LOADN                            R24 0
      322 GETUPVAL                         R25 1
      323 GETTABLEKS                       R25 R25 K87 ["HEADER_HEIGHT"]
      325 CALL                             R21 4 1
      326 SETTABLEKS                       R21 R20 K31 ["Position"]
      328 GETIMPORT                        R21 K21 [UDim2.new]
      330 LOADN                            R22 1
      331 GETUPVAL                         R24 1
      332 GETTABLEKS                       R24 R24 K43 ["HEADER_LEFT_PADDING"]
      334 MINUS                            R23 R24
      335 LOADN                            R24 0
      336 GETUPVAL                         R25 1
      337 GETTABLEKS                       R25 R25 K88 ["HEADER_MESSAGE_LINE_HEIGHT"]
      339 CALL                             R21 4 1
      340 SETTABLEKS                       R21 R20 K16 ["Size"]
      342 LOADK                            R23 K10 ["Main"]
      343 LOADK                            R24 K26 ["NoPluginsMessage"]
      344 NAMECALL                         R21 R5 K12 ["getText"]
      346 CALL                             R21 3 1
      347 SETTABLEKS                       R21 R20 K32 ["Text"]
      349 GETTABLEKS                       R21 R6 K46 ["TextColor"]
      351 SETTABLEKS                       R21 R20 K35 ["TextColor3"]
      353 GETIMPORT                        R21 K70 [Enum.Font.SourceSans]
      355 SETTABLEKS                       R21 R20 K36 ["Font"]
      357 GETIMPORT                        R21 K51 [Enum.TextXAlignment.Left]
      359 GETTABLEKS                       R21 R21 K52 ["Value"]
      361 SETTABLEKS                       R21 R20 K39 ["TextXAlignment"]
      363 GETIMPORT                        R21 K90 [Enum.TextYAlignment.Top]
      365 GETTABLEKS                       R21 R21 K52 ["Value"]
      367 SETTABLEKS                       R21 R20 K85 ["TextYAlignment"]
      369 CALL                             R18 2 1
      370 SETTABLEKS                       R18 R17 K26 ["NoPluginsMessage"]
      372 MOVE                             R18 R11
      373 JUMPIFNOT                        R18 ; [+59]
      374 GETUPVAL                         R18 0
      375 GETTABLEKS                       R18 R18 K14 ["createElement"]
      377 LOADK                            R19 K30 ["TextLabel"]
      378 DUPTABLE                         R20 K86 [{["Position"], ["Size"], ["Text"], ["TextSize"] = 17, ["TextColor3"], ["Font"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"]}]
      379 GETIMPORT                        R21 K21 [UDim2.new]
      381 LOADN                            R22 0
      382 GETUPVAL                         R23 1
      383 GETTABLEKS                       R23 R23 K43 ["HEADER_LEFT_PADDING"]
      385 LOADN                            R24 0
      386 GETUPVAL                         R26 1
      387 GETTABLEKS                       R26 R26 K87 ["HEADER_HEIGHT"]
      389 GETUPVAL                         R27 1
      390 GETTABLEKS                       R27 R27 K88 ["HEADER_MESSAGE_LINE_HEIGHT"]
      392 ADD                              R25 R26 R27
      393 CALL                             R21 4 1
      394 SETTABLEKS                       R21 R20 K31 ["Position"]
      396 GETIMPORT                        R21 K21 [UDim2.new]
      398 LOADN                            R22 1
      399 GETUPVAL                         R24 1
      400 GETTABLEKS                       R24 R24 K43 ["HEADER_LEFT_PADDING"]
      402 MINUS                            R23 R24
      403 LOADN                            R24 0
      404 GETUPVAL                         R25 1
      405 GETTABLEKS                       R25 R25 K88 ["HEADER_MESSAGE_LINE_HEIGHT"]
      407 CALL                             R21 4 1
      408 SETTABLEKS                       R21 R20 K16 ["Size"]
      410 SETTABLEKS                       R12 R20 K32 ["Text"]
      412 GETTABLEKS                       R21 R6 K46 ["TextColor"]
      414 SETTABLEKS                       R21 R20 K35 ["TextColor3"]
      416 GETIMPORT                        R21 K70 [Enum.Font.SourceSans]
      418 SETTABLEKS                       R21 R20 K36 ["Font"]
      420 GETIMPORT                        R21 K51 [Enum.TextXAlignment.Left]
      422 GETTABLEKS                       R21 R21 K52 ["Value"]
      424 SETTABLEKS                       R21 R20 K39 ["TextXAlignment"]
      426 GETIMPORT                        R21 K90 [Enum.TextYAlignment.Top]
      428 GETTABLEKS                       R21 R21 K52 ["Value"]
      430 SETTABLEKS                       R21 R20 K85 ["TextYAlignment"]
      432 CALL                             R18 2 1
      433 SETTABLEKS                       R18 R17 K13 ["FindPluginsMessage"]
      435 MOVE                             R18 R10
      436 JUMPIFNOT                        R18 ; [+41]
      437 GETUPVAL                         R18 0
      438 GETTABLEKS                       R18 R18 K14 ["createElement"]
      440 GETUPVAL                         R19 4
      441 DUPTABLE                         R20 K95 [{"position", "size", "anchorPoint", "pluginList", "onPluginUninstalled"}]
      442 GETIMPORT                        R21 K21 [UDim2.new]
      444 LOADN                            R22 0
      445 LOADN                            R23 0
      446 LOADN                            R24 1
      447 LOADN                            R25 0
      448 CALL                             R21 4 1
      449 SETTABLEKS                       R21 R20 K91 ["position"]
      451 GETIMPORT                        R21 K21 [UDim2.new]
      453 LOADN                            R22 1
      454 LOADN                            R23 0
      455 LOADN                            R24 1
      456 LOADN                            R26 -1
      457 GETUPVAL                         R27 1
      458 GETTABLEKS                       R27 R27 K87 ["HEADER_HEIGHT"]
      460 MUL                              R25 R26 R27
      461 CALL                             R21 4 1
      462 SETTABLEKS                       R21 R20 K92 ["size"]
      464 GETIMPORT                        R21 K75 [Vector2.new]
      466 LOADN                            R22 0
      467 LOADN                            R23 1
      468 CALL                             R21 2 1
      469 SETTABLEKS                       R21 R20 K93 ["anchorPoint"]
      471 SETTABLEKS                       R3 R20 K2 ["pluginList"]
      473 GETTABLEKS                       R21 R0 K96 ["refreshPlugins"]
      475 SETTABLEKS                       R21 R20 K94 ["onPluginUninstalled"]
      477 CALL                             R18 2 1
      478 SETTABLEKS                       R18 R17 K27 ["ScrollablePluginList"]
      480 MOVE                             R18 R9
      481 JUMPIFNOT                        R18 ; [+29]
      482 GETUPVAL                         R18 0
      483 GETTABLEKS                       R18 R18 K14 ["createElement"]
      485 GETUPVAL                         R19 5
      486 DUPTABLE                         R20 K97 [{"AnchorPoint", "Position", "Size"}]
      487 GETIMPORT                        R21 K75 [Vector2.new]
      489 LOADK                            R22 K98 [0.5]
      490 LOADK                            R23 K98 [0.5]
      491 CALL                             R21 2 1
      492 SETTABLEKS                       R21 R20 K71 ["AnchorPoint"]
      494 GETIMPORT                        R21 K100 [UDim2.fromScale]
      496 LOADK                            R22 K98 [0.5]
      497 LOADK                            R23 K98 [0.5]
      498 CALL                             R21 2 1
      499 SETTABLEKS                       R21 R20 K31 ["Position"]
      501 GETIMPORT                        R21 K21 [UDim2.new]
      503 LOADN                            R22 0
      504 LOADN                            R23 92
      505 LOADN                            R24 0
      506 LOADN                            R25 24
      507 CALL                             R21 4 1
      508 SETTABLEKS                       R21 R20 K16 ["Size"]
      510 CALL                             R18 2 1
      511 SETTABLEKS                       R18 R17 K28 ["Indicator"]
      513 CALL                             R14 3 -1
      514 RETURN                           R14 -1

PROTO_11:
        0 DUPTABLE                         R2 K1 [{"pluginList"}]
        1 GETTABLEKS                       R3 R0 K2 ["Management"]
        3 GETTABLEKS                       R3 R3 K3 ["plugins"]
        5 SETTABLEKS                       R3 R2 K0 ["pluginList"]
        7 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K2 [{"UpdateAllPlugins", "dispatchRefreshPlugins"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["UpdateAllPlugins"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchRefreshPlugins"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["MemStorageService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R0 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R0 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R0 K12 ["Src"]
       33 GETTABLEKS                       R5 R5 K13 ["Components"]
       35 GETTABLEKS                       R5 R5 K14 ["PluginHolder"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K8 [require]
       40 GETTABLEKS                       R6 R0 K12 ["Src"]
       42 GETTABLEKS                       R6 R6 K15 ["Util"]
       44 GETTABLEKS                       R6 R6 K16 ["Constants"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K8 [require]
       49 GETTABLEKS                       R7 R0 K9 ["Packages"]
       51 GETTABLEKS                       R7 R7 K17 ["Framework"]
       53 CALL                             R6 1 1
       54 GETTABLEKS                       R6 R6 K18 ["ContextServices"]
       56 GETTABLEKS                       R7 R6 K19 ["withContext"]
       58 GETIMPORT                        R8 K8 [require]
       60 GETTABLEKS                       R9 R0 K9 ["Packages"]
       62 GETTABLEKS                       R9 R9 K17 ["Framework"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R8 R8 K20 ["UI"]
       67 GETIMPORT                        R9 K8 [require]
       69 GETTABLEKS                       R10 R0 K9 ["Packages"]
       71 GETTABLEKS                       R10 R10 K17 ["Framework"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R9 R9 K15 ["Util"]
       76 GETIMPORT                        R10 K8 [require]
       78 GETTABLEKS                       R11 R0 K12 ["Src"]
       80 GETTABLEKS                       R11 R11 K21 ["Thunks"]
       82 GETTABLEKS                       R11 R11 K22 ["UpdateAllPlugins"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K8 [require]
       87 GETTABLEKS                       R12 R0 K12 ["Src"]
       89 GETTABLEKS                       R12 R12 K21 ["Thunks"]
       91 GETTABLEKS                       R12 R12 K23 ["RefreshPlugins"]
       93 CALL                             R11 1 1
       94 GETTABLEKS                       R12 R8 K24 ["Button"]
       96 GETTABLEKS                       R13 R9 K25 ["StyleModifier"]
       98 GETTABLEKS                       R14 R8 K26 ["LoadingIndicator"]
      100 GETIMPORT                        R15 K8 [require]
      102 GETTABLEKS                       R16 R0 K12 ["Src"]
      104 GETTABLEKS                       R16 R16 K15 ["Util"]
      106 GETTABLEKS                       R16 R16 K27 ["PluginManagementApi"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K8 [require]
      111 GETTABLEKS                       R17 R0 K9 ["Packages"]
      113 GETTABLEKS                       R17 R17 K28 ["SharedPluginConstants"]
      115 CALL                             R16 1 1
      116 GETTABLEKS                       R17 R2 K29 ["Component"]
      118 LOADK                            R19 K30 ["ManagementMainView"]
      119 NAMECALL                         R17 R17 K31 ["extend"]
      121 CALL                             R17 2 1
      122 DUPCLOSURE                       R18 K32 [PROTO_5]
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R16
      125 SETTABLEKS                       R18 R17 K33 ["init"]
      127 DUPCLOSURE                       R18 K34 [PROTO_6]
      128 SETTABLEKS                       R18 R17 K35 ["isPlaceOpen"]
      130 DUPCLOSURE                       R18 K36 [PROTO_7]
      131 SETTABLEKS                       R18 R17 K37 ["didMount"]
      133 DUPCLOSURE                       R18 K38 [PROTO_8]
      134 SETTABLEKS                       R18 R17 K39 ["willUnmount"]
      136 DUPCLOSURE                       R18 K40 [PROTO_10]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R14
      143 SETTABLEKS                       R18 R17 K41 ["render"]
      145 MOVE                             R18 R7
      146 DUPTABLE                         R19 K47 [{"Plugin", "Localization", "Stylizer", "API", "Analytics", "PluginManagementApi"}]
      147 GETTABLEKS                       R20 R6 K42 ["Plugin"]
      149 SETTABLEKS                       R20 R19 K42 ["Plugin"]
      151 GETTABLEKS                       R20 R6 K43 ["Localization"]
      153 SETTABLEKS                       R20 R19 K43 ["Localization"]
      155 GETTABLEKS                       R20 R6 K44 ["Stylizer"]
      157 SETTABLEKS                       R20 R19 K44 ["Stylizer"]
      159 GETTABLEKS                       R20 R6 K45 ["API"]
      161 SETTABLEKS                       R20 R19 K45 ["API"]
      163 GETTABLEKS                       R20 R6 K46 ["Analytics"]
      165 SETTABLEKS                       R20 R19 K46 ["Analytics"]
      167 SETTABLEKS                       R15 R19 K27 ["PluginManagementApi"]
      169 CALL                             R18 1 1
      170 MOVE                             R19 R17
      171 CALL                             R18 1 1
      172 MOVE                             R17 R18
      173 DUPCLOSURE                       R18 K48 [PROTO_11]
      174 DUPCLOSURE                       R19 K49 [PROTO_14]
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R11
      177 GETTABLEKS                       R20 R3 K50 ["connect"]
      179 MOVE                             R21 R18
      180 MOVE                             R22 R19
      181 CALL                             R20 2 1
      182 MOVE                             R21 R17
      183 CALL                             R20 1 -1
      184 RETURN                           R20 -1
