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
       22 GETUPVAL                         R3 1
       23 CALL                             R3 0 1
       24 JUMPIF                           R3 ; [+4]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K5 ["DEPRECATED_getAllPluginPermissions"]
       28 CALL                             R3 0 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NOT                              R1 R2
        3 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        5 LOADK                            R2 K0 ["ManagementMainView.DEPRECATED_getAllPluginPermissions is deprecated with FFlagStudioRefreshPluginPermissions"]
        6 GETIMPORT                        R0 K2 [assert]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K3 ["props"]
       12 GETTABLEKS                       R0 R0 K4 ["PluginManagementApi"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["props"]
       17 GETTABLEKS                       R1 R1 K5 ["API"]
       19 NAMECALL                         R1 R1 K6 ["get"]
       21 CALL                             R1 1 1
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K3 ["props"]
       25 GETTABLEKS                       R2 R2 K7 ["DEPRECATED_getAllPluginPermissions"]
       27 MOVE                             R3 R0
       28 MOVE                             R4 R1
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mounted"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["refreshPlugins"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 0
        9 DUPTABLE                         R2 K3 [{"updating"}]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K2 ["updating"]
       13 NAMECALL                         R0 R0 K4 ["setState"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"updating"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["updating"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["props"]
       11 GETTABLEKS                       R1 R0 K4 ["PluginManagementApi"]
       13 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       15 LOADK                            R4 K6 ["TryUpdateAllPlugins"]
       16 NAMECALL                         R2 R2 K7 ["report"]
       18 CALL                             R2 2 0
       19 GETTABLEKS                       R2 R0 K8 ["UpdateAllPlugins"]
       21 MOVE                             R3 R1
       22 GETTABLEKS                       R4 R0 K5 ["Analytics"]
       24 CALL                             R2 2 0
       25 GETIMPORT                        R2 K10 [spawn]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U0
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["tokens"]
        4 DUPTABLE                         R1 K2 [{"updating"}]
        5 LOADB                            R2 0
        6 SETTABLEKS                       R2 R1 K1 ["updating"]
        8 SETTABLEKS                       R1 R0 K3 ["state"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["anyUpdateNeeded"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R1 R0 K5 ["refreshPlugins"]
       19 NEWCLOSURE                       R1 P2
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K6 ["DEPRECATED_getAllPluginPermissions"]
       24 NEWCLOSURE                       R1 P3
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K7 ["updateAllPlugins"]
       28 NEWCLOSURE                       R1 P4
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U2
       32 SETTABLEKS                       R1 R0 K8 ["findPlugins"]
       34 GETTABLEKS                       R1 R0 K9 ["props"]
       36 GETTABLEKS                       R1 R1 K10 ["PluginManagementApi"]
       38 GETTABLEKS                       R1 R1 K11 ["OnPluginInstalledFromToolbox"]
       40 GETTABLEKS                       R3 R0 K5 ["refreshPlugins"]
       42 NAMECALL                         R1 R1 K12 ["Connect"]
       44 CALL                             R1 2 1
       45 GETTABLEKS                       R3 R0 K0 ["tokens"]
       47 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R2 K15 [table.insert]
       52 CALL                             R2 2 0
       53 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K3 ["MultipleDocumentInterfaceInstance"]
        9 GETTABLEKS                       R1 R1 K4 ["FocusedDataModelSession"]
       11 RETURN                           R1 1

PROTO_8:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["mounted"]
        3 GETTABLEKS                       R1 R0 K1 ["refreshPlugins"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 NAMECALL                         R3 R3 K3 ["get"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R1 K4 ["pluginList"]
       11 GETTABLEKS                       R5 R2 K5 ["updating"]
       13 GETTABLEKS                       R6 R1 K6 ["Localization"]
       15 GETTABLEKS                       R7 R0 K0 ["props"]
       17 GETTABLEKS                       R7 R7 K7 ["Stylizer"]
       19 GETTABLEKS                       R8 R0 K8 ["anyUpdateNeeded"]
       21 CALL                             R8 0 1
       22 NOT                              R10 R8
       23 OR                               R9 R10 R5
       24 JUMPIFEQKNIL                     R4 ; [+2]
       26 LOADB                            R10 0 +1
       27 LOADB                            R10 1
       28 NOT                              R11 R10
       29 JUMPIFNOT                        R11 ; [+8]
       30 GETIMPORT                        R12 K10 [next]
       32 MOVE                             R13 R4
       33 CALL                             R12 1 1
       34 JUMPIFNOTEQKNIL                  R12 ; [+2]
       36 LOADB                            R11 0 +1
       37 LOADB                            R11 1
       38 NOT                              R12 R11
       39 JUMPIFNOT                        R12 ; [+1]
       40 NOT                              R12 R10
       41 LOADNIL                          R13
       42 NAMECALL                         R14 R0 K11 ["isPlaceOpen"]
       44 CALL                             R14 1 1
       45 JUMPIFNOT                        R14 ; [+7]
       46 LOADK                            R17 K12 ["Main"]
       47 LOADK                            R18 K13 ["FindPluginsWithButtonMessage"]
       48 NAMECALL                         R15 R6 K14 ["getText"]
       50 CALL                             R15 3 1
       51 MOVE                             R13 R15
       52 JUMP                             ; [+6]
       53 LOADK                            R17 K12 ["Main"]
       54 LOADK                            R18 K15 ["FindPluginsMessage"]
       55 NAMECALL                         R15 R6 K14 ["getText"]
       57 CALL                             R15 3 1
       58 MOVE                             R13 R15
       59 GETUPVAL                         R15 0
       60 GETTABLEKS                       R15 R15 K16 ["createElement"]
       62 LOADK                            R16 K17 ["Frame"]
       63 DUPTABLE                         R17 K20 [{"Size", "BackgroundColor3"}]
       64 GETIMPORT                        R18 K23 [UDim2.new]
       66 LOADN                            R19 1
       67 LOADN                            R20 0
       68 LOADN                            R21 1
       69 LOADN                            R22 0
       70 CALL                             R18 4 1
       71 SETTABLEKS                       R18 R17 K18 ["Size"]
       73 GETTABLEKS                       R18 R7 K24 ["BackgroundColor"]
       75 SETTABLEKS                       R18 R17 K19 ["BackgroundColor3"]
       77 DUPTABLE                         R18 K31 [{"PluginLabel", "UpdateAllButton", "FindPluginsButton", "NoPluginsMessage", "FindPluginsMessage", "ScrollablePluginList", "Indicator"}]
       78 GETUPVAL                         R19 0
       79 GETTABLEKS                       R19 R19 K16 ["createElement"]
       81 LOADK                            R20 K32 ["TextLabel"]
       82 DUPTABLE                         R21 K40 [{"Size", "Position", "Text", "TextSize", "TextColor3", "Font", "BackgroundTransparency", "TextXAlignment"}]
       83 GETIMPORT                        R22 K23 [UDim2.new]
       85 LOADN                            R23 0
       86 GETUPVAL                         R24 1
       87 GETTABLEKS                       R24 R24 K41 ["HEADER_TITLE_WIDTH"]
       89 LOADN                            R25 0
       90 GETUPVAL                         R26 1
       91 GETTABLEKS                       R26 R26 K42 ["HEADER_BUTTON_SIZE"]
       93 CALL                             R22 4 1
       94 SETTABLEKS                       R22 R21 K18 ["Size"]
       96 GETIMPORT                        R22 K23 [UDim2.new]
       98 LOADN                            R23 0
       99 GETUPVAL                         R24 1
      100 GETTABLEKS                       R24 R24 K43 ["HEADER_LEFT_PADDING"]
      102 LOADN                            R25 0
      103 GETUPVAL                         R26 1
      104 GETTABLEKS                       R26 R26 K44 ["HEADER_TOP_PADDING"]
      106 CALL                             R22 4 1
      107 SETTABLEKS                       R22 R21 K33 ["Position"]
      109 LOADK                            R24 K12 ["Main"]
      110 LOADK                            R25 K45 ["Title"]
      111 NAMECALL                         R22 R6 K14 ["getText"]
      113 CALL                             R22 3 1
      114 SETTABLEKS                       R22 R21 K34 ["Text"]
      116 LOADN                            R22 24
      117 SETTABLEKS                       R22 R21 K35 ["TextSize"]
      119 GETTABLEKS                       R22 R7 K46 ["TextColor"]
      121 SETTABLEKS                       R22 R21 K36 ["TextColor3"]
      123 GETIMPORT                        R22 K49 [Enum.Font.SourceSansSemibold]
      125 SETTABLEKS                       R22 R21 K37 ["Font"]
      127 LOADN                            R22 1
      128 SETTABLEKS                       R22 R21 K38 ["BackgroundTransparency"]
      130 GETIMPORT                        R22 K51 [Enum.TextXAlignment.Left]
      132 GETTABLEKS                       R22 R22 K52 ["Value"]
      134 SETTABLEKS                       R22 R21 K39 ["TextXAlignment"]
      136 CALL                             R19 2 1
      137 SETTABLEKS                       R19 R18 K25 ["PluginLabel"]
      139 MOVE                             R19 R8
      140 JUMPIFNOT                        R19 ; [+102]
      141 GETUPVAL                         R19 0
      142 GETTABLEKS                       R19 R19 K16 ["createElement"]
      144 GETUPVAL                         R20 2
      145 DUPTABLE                         R21 K56 [{"Size", "Position", "Style", "StyleModifier", "OnClick"}]
      146 GETIMPORT                        R22 K23 [UDim2.new]
      148 LOADN                            R23 0
      149 GETUPVAL                         R24 1
      150 GETTABLEKS                       R24 R24 K57 ["HEADER_UPDATE_WIDTH"]
      152 LOADN                            R25 0
      153 GETUPVAL                         R26 1
      154 GETTABLEKS                       R26 R26 K42 ["HEADER_BUTTON_SIZE"]
      156 CALL                             R22 4 1
      157 SETTABLEKS                       R22 R21 K18 ["Size"]
      159 GETIMPORT                        R22 K23 [UDim2.new]
      161 LOADN                            R23 1
      162 GETUPVAL                         R27 1
      163 GETTABLEKS                       R27 R27 K59 ["HEADER_RIGHT_PADDING"]
      165 MULK                             R26 R27 K58 [2]
      166 GETUPVAL                         R27 1
      167 GETTABLEKS                       R27 R27 K57 ["HEADER_UPDATE_WIDTH"]
      169 SUB                              R25 R26 R27
      170 GETUPVAL                         R26 1
      171 GETTABLEKS                       R26 R26 K42 ["HEADER_BUTTON_SIZE"]
      173 SUB                              R24 R25 R26
      174 LOADN                            R25 0
      175 GETUPVAL                         R26 1
      176 GETTABLEKS                       R26 R26 K44 ["HEADER_TOP_PADDING"]
      178 CALL                             R22 4 1
      179 SETTABLEKS                       R22 R21 K33 ["Position"]
      181 LOADK                            R22 K60 ["Round"]
      182 SETTABLEKS                       R22 R21 K53 ["Style"]
      184 JUMPIFNOT                        R9 ; [+4]
      185 GETUPVAL                         R22 3
      186 GETTABLEKS                       R22 R22 K61 ["Disabled"]
      188 JUMPIF                           R22 ; [+1]
      189 LOADNIL                          R22
      190 SETTABLEKS                       R22 R21 K54 ["StyleModifier"]
      192 JUMPIF                           R9 ; [+3]
      193 GETTABLEKS                       R22 R0 K62 ["updateAllPlugins"]
      195 JUMPIF                           R22 ; [+1]
      196 DUPCLOSURE                       R22 K63 [PROTO_10]
      197 SETTABLEKS                       R22 R21 K55 ["OnClick"]
      199 DUPTABLE                         R22 K65 [{"Label"}]
      200 GETUPVAL                         R23 0
      201 GETTABLEKS                       R23 R23 K16 ["createElement"]
      203 LOADK                            R24 K32 ["TextLabel"]
      204 DUPTABLE                         R25 K66 [{"Size", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency"}]
      205 GETIMPORT                        R26 K23 [UDim2.new]
      207 LOADN                            R27 1
      208 LOADN                            R28 0
      209 LOADN                            R29 1
      210 LOADN                            R30 0
      211 CALL                             R26 4 1
      212 SETTABLEKS                       R26 R25 K18 ["Size"]
      214 LOADK                            R28 K12 ["Main"]
      215 LOADK                            R29 K26 ["UpdateAllButton"]
      216 NAMECALL                         R26 R6 K14 ["getText"]
      218 CALL                             R26 3 1
      219 SETTABLEKS                       R26 R25 K34 ["Text"]
      221 JUMPIFNOT                        R9 ; [+3]
      222 GETTABLEKS                       R26 R7 K67 ["DisabledColor"]
      224 JUMPIF                           R26 ; [+2]
      225 GETTABLEKS                       R26 R7 K46 ["TextColor"]
      227 SETTABLEKS                       R26 R25 K36 ["TextColor3"]
      229 GETIMPORT                        R26 K69 [Enum.Font.SourceSans]
      231 SETTABLEKS                       R26 R25 K37 ["Font"]
      233 LOADN                            R26 18
      234 SETTABLEKS                       R26 R25 K35 ["TextSize"]
      236 LOADN                            R26 1
      237 SETTABLEKS                       R26 R25 K38 ["BackgroundTransparency"]
      239 CALL                             R23 2 1
      240 SETTABLEKS                       R23 R22 K64 ["Label"]
      242 CALL                             R19 3 1
      243 SETTABLEKS                       R19 R18 K26 ["UpdateAllButton"]
      245 JUMPIFNOT                        R14 ; [+94]
      246 GETUPVAL                         R19 0
      247 GETTABLEKS                       R19 R19 K16 ["createElement"]
      249 GETUPVAL                         R20 2
      250 DUPTABLE                         R21 K71 [{"Size", "Position", "AnchorPoint", "Style", "BackgroundTransparency", "OnClick"}]
      251 GETIMPORT                        R22 K23 [UDim2.new]
      253 LOADN                            R23 0
      254 GETUPVAL                         R24 1
      255 GETTABLEKS                       R24 R24 K42 ["HEADER_BUTTON_SIZE"]
      257 LOADN                            R25 0
      258 GETUPVAL                         R26 1
      259 GETTABLEKS                       R26 R26 K42 ["HEADER_BUTTON_SIZE"]
      261 CALL                             R22 4 1
      262 SETTABLEKS                       R22 R21 K18 ["Size"]
      264 GETIMPORT                        R22 K23 [UDim2.new]
      266 LOADN                            R23 1
      267 GETUPVAL                         R24 1
      268 GETTABLEKS                       R24 R24 K59 ["HEADER_RIGHT_PADDING"]
      270 LOADN                            R25 0
      271 GETUPVAL                         R26 1
      272 GETTABLEKS                       R26 R26 K44 ["HEADER_TOP_PADDING"]
      274 CALL                             R22 4 1
      275 SETTABLEKS                       R22 R21 K33 ["Position"]
      277 GETIMPORT                        R22 K73 [Vector2.new]
      279 LOADN                            R23 1
      280 LOADN                            R24 0
      281 CALL                             R22 2 1
      282 SETTABLEKS                       R22 R21 K70 ["AnchorPoint"]
      284 LOADK                            R22 K74 ["RoundPrimary"]
      285 SETTABLEKS                       R22 R21 K53 ["Style"]
      287 LOADN                            R22 1
      288 SETTABLEKS                       R22 R21 K38 ["BackgroundTransparency"]
      290 GETTABLEKS                       R22 R0 K75 ["findPlugins"]
      292 SETTABLEKS                       R22 R21 K55 ["OnClick"]
      294 DUPTABLE                         R22 K77 [{"Dots"}]
      295 GETUPVAL                         R23 0
      296 GETTABLEKS                       R23 R23 K16 ["createElement"]
      298 LOADK                            R24 K32 ["TextLabel"]
      299 DUPTABLE                         R25 K78 [{"Position", "Size", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency"}]
      300 GETIMPORT                        R26 K23 [UDim2.new]
      302 LOADN                            R27 0
      303 LOADN                            R28 0
      304 LOADN                            R29 0
      305 LOADN                            R30 0
      306 CALL                             R26 4 1
      307 SETTABLEKS                       R26 R25 K33 ["Position"]
      309 GETIMPORT                        R26 K23 [UDim2.new]
      311 LOADN                            R27 1
      312 LOADN                            R28 0
      313 LOADN                            R29 1
      314 LOADN                            R30 0
      315 CALL                             R26 4 1
      316 SETTABLEKS                       R26 R25 K18 ["Size"]
      318 LOADK                            R26 K79 ["+"]
      319 SETTABLEKS                       R26 R25 K34 ["Text"]
      321 GETTABLEKS                       R26 R7 K80 ["White"]
      323 SETTABLEKS                       R26 R25 K36 ["TextColor3"]
      325 GETIMPORT                        R26 K82 [Enum.Font.SourceSansBold]
      327 SETTABLEKS                       R26 R25 K37 ["Font"]
      329 LOADN                            R26 24
      330 SETTABLEKS                       R26 R25 K35 ["TextSize"]
      332 LOADN                            R26 1
      333 SETTABLEKS                       R26 R25 K38 ["BackgroundTransparency"]
      335 CALL                             R23 2 1
      336 SETTABLEKS                       R23 R22 K76 ["Dots"]
      338 CALL                             R19 3 1
      339 JUMPIF                           R19 ; [+1]
      340 LOADNIL                          R19
      341 SETTABLEKS                       R19 R18 K27 ["FindPluginsButton"]
      343 MOVE                             R19 R12
      344 JUMPIFNOT                        R19 ; [+66]
      345 GETUPVAL                         R19 0
      346 GETTABLEKS                       R19 R19 K16 ["createElement"]
      348 LOADK                            R20 K32 ["TextLabel"]
      349 DUPTABLE                         R21 K84 [{"Position", "Size", "Text", "TextSize", "TextColor3", "Font", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
      350 GETIMPORT                        R22 K23 [UDim2.new]
      352 LOADN                            R23 0
      353 GETUPVAL                         R24 1
      354 GETTABLEKS                       R24 R24 K43 ["HEADER_LEFT_PADDING"]
      356 LOADN                            R25 0
      357 GETUPVAL                         R26 1
      358 GETTABLEKS                       R26 R26 K85 ["HEADER_HEIGHT"]
      360 CALL                             R22 4 1
      361 SETTABLEKS                       R22 R21 K33 ["Position"]
      363 GETIMPORT                        R22 K23 [UDim2.new]
      365 LOADN                            R23 1
      366 GETUPVAL                         R25 1
      367 GETTABLEKS                       R25 R25 K43 ["HEADER_LEFT_PADDING"]
      369 MINUS                            R24 R25
      370 LOADN                            R25 0
      371 GETUPVAL                         R26 1
      372 GETTABLEKS                       R26 R26 K86 ["HEADER_MESSAGE_LINE_HEIGHT"]
      374 CALL                             R22 4 1
      375 SETTABLEKS                       R22 R21 K18 ["Size"]
      377 LOADK                            R24 K12 ["Main"]
      378 LOADK                            R25 K28 ["NoPluginsMessage"]
      379 NAMECALL                         R22 R6 K14 ["getText"]
      381 CALL                             R22 3 1
      382 SETTABLEKS                       R22 R21 K34 ["Text"]
      384 LOADN                            R22 17
      385 SETTABLEKS                       R22 R21 K35 ["TextSize"]
      387 GETTABLEKS                       R22 R7 K46 ["TextColor"]
      389 SETTABLEKS                       R22 R21 K36 ["TextColor3"]
      391 GETIMPORT                        R22 K69 [Enum.Font.SourceSans]
      393 SETTABLEKS                       R22 R21 K37 ["Font"]
      395 LOADN                            R22 1
      396 SETTABLEKS                       R22 R21 K38 ["BackgroundTransparency"]
      398 GETIMPORT                        R22 K51 [Enum.TextXAlignment.Left]
      400 GETTABLEKS                       R22 R22 K52 ["Value"]
      402 SETTABLEKS                       R22 R21 K39 ["TextXAlignment"]
      404 GETIMPORT                        R22 K88 [Enum.TextYAlignment.Top]
      406 GETTABLEKS                       R22 R22 K52 ["Value"]
      408 SETTABLEKS                       R22 R21 K83 ["TextYAlignment"]
      410 CALL                             R19 2 1
      411 SETTABLEKS                       R19 R18 K28 ["NoPluginsMessage"]
      413 MOVE                             R19 R12
      414 JUMPIFNOT                        R19 ; [+65]
      415 GETUPVAL                         R19 0
      416 GETTABLEKS                       R19 R19 K16 ["createElement"]
      418 LOADK                            R20 K32 ["TextLabel"]
      419 DUPTABLE                         R21 K84 [{"Position", "Size", "Text", "TextSize", "TextColor3", "Font", "BackgroundTransparency", "TextXAlignment", "TextYAlignment"}]
      420 GETIMPORT                        R22 K23 [UDim2.new]
      422 LOADN                            R23 0
      423 GETUPVAL                         R24 1
      424 GETTABLEKS                       R24 R24 K43 ["HEADER_LEFT_PADDING"]
      426 LOADN                            R25 0
      427 GETUPVAL                         R27 1
      428 GETTABLEKS                       R27 R27 K85 ["HEADER_HEIGHT"]
      430 GETUPVAL                         R28 1
      431 GETTABLEKS                       R28 R28 K86 ["HEADER_MESSAGE_LINE_HEIGHT"]
      433 ADD                              R26 R27 R28
      434 CALL                             R22 4 1
      435 SETTABLEKS                       R22 R21 K33 ["Position"]
      437 GETIMPORT                        R22 K23 [UDim2.new]
      439 LOADN                            R23 1
      440 GETUPVAL                         R25 1
      441 GETTABLEKS                       R25 R25 K43 ["HEADER_LEFT_PADDING"]
      443 MINUS                            R24 R25
      444 LOADN                            R25 0
      445 GETUPVAL                         R26 1
      446 GETTABLEKS                       R26 R26 K86 ["HEADER_MESSAGE_LINE_HEIGHT"]
      448 CALL                             R22 4 1
      449 SETTABLEKS                       R22 R21 K18 ["Size"]
      451 SETTABLEKS                       R13 R21 K34 ["Text"]
      453 LOADN                            R22 17
      454 SETTABLEKS                       R22 R21 K35 ["TextSize"]
      456 GETTABLEKS                       R22 R7 K46 ["TextColor"]
      458 SETTABLEKS                       R22 R21 K36 ["TextColor3"]
      460 GETIMPORT                        R22 K69 [Enum.Font.SourceSans]
      462 SETTABLEKS                       R22 R21 K37 ["Font"]
      464 LOADN                            R22 1
      465 SETTABLEKS                       R22 R21 K38 ["BackgroundTransparency"]
      467 GETIMPORT                        R22 K51 [Enum.TextXAlignment.Left]
      469 GETTABLEKS                       R22 R22 K52 ["Value"]
      471 SETTABLEKS                       R22 R21 K39 ["TextXAlignment"]
      473 GETIMPORT                        R22 K88 [Enum.TextYAlignment.Top]
      475 GETTABLEKS                       R22 R22 K52 ["Value"]
      477 SETTABLEKS                       R22 R21 K83 ["TextYAlignment"]
      479 CALL                             R19 2 1
      480 SETTABLEKS                       R19 R18 K15 ["FindPluginsMessage"]
      482 MOVE                             R19 R11
      483 JUMPIFNOT                        R19 ; [+43]
      484 GETUPVAL                         R19 0
      485 GETTABLEKS                       R19 R19 K16 ["createElement"]
      487 GETUPVAL                         R20 4
      488 DUPTABLE                         R21 K94 [{"position", "size", "anchorPoint", "plugin", "pluginList", "onPluginUninstalled"}]
      489 GETIMPORT                        R22 K23 [UDim2.new]
      491 LOADN                            R23 0
      492 LOADN                            R24 0
      493 LOADN                            R25 1
      494 LOADN                            R26 0
      495 CALL                             R22 4 1
      496 SETTABLEKS                       R22 R21 K89 ["position"]
      498 GETIMPORT                        R22 K23 [UDim2.new]
      500 LOADN                            R23 1
      501 LOADN                            R24 0
      502 LOADN                            R25 1
      503 LOADN                            R27 255
      504 GETUPVAL                         R28 1
      505 GETTABLEKS                       R28 R28 K85 ["HEADER_HEIGHT"]
      507 MUL                              R26 R27 R28
      508 CALL                             R22 4 1
      509 SETTABLEKS                       R22 R21 K90 ["size"]
      511 GETIMPORT                        R22 K73 [Vector2.new]
      513 LOADN                            R23 0
      514 LOADN                            R24 1
      515 CALL                             R22 2 1
      516 SETTABLEKS                       R22 R21 K91 ["anchorPoint"]
      518 SETTABLEKS                       R3 R21 K92 ["plugin"]
      520 SETTABLEKS                       R4 R21 K4 ["pluginList"]
      522 GETTABLEKS                       R22 R0 K95 ["refreshPlugins"]
      524 SETTABLEKS                       R22 R21 K93 ["onPluginUninstalled"]
      526 CALL                             R19 2 1
      527 SETTABLEKS                       R19 R18 K29 ["ScrollablePluginList"]
      529 MOVE                             R19 R10
      530 JUMPIFNOT                        R19 ; [+29]
      531 GETUPVAL                         R19 0
      532 GETTABLEKS                       R19 R19 K16 ["createElement"]
      534 GETUPVAL                         R20 5
      535 DUPTABLE                         R21 K96 [{"AnchorPoint", "Position", "Size"}]
      536 GETIMPORT                        R22 K73 [Vector2.new]
      538 LOADK                            R23 K97 [0.5]
      539 LOADK                            R24 K97 [0.5]
      540 CALL                             R22 2 1
      541 SETTABLEKS                       R22 R21 K70 ["AnchorPoint"]
      543 GETIMPORT                        R22 K99 [UDim2.fromScale]
      545 LOADK                            R23 K97 [0.5]
      546 LOADK                            R24 K97 [0.5]
      547 CALL                             R22 2 1
      548 SETTABLEKS                       R22 R21 K33 ["Position"]
      550 GETIMPORT                        R22 K23 [UDim2.new]
      552 LOADN                            R23 0
      553 LOADN                            R24 92
      554 LOADN                            R25 0
      555 LOADN                            R26 24
      556 CALL                             R22 4 1
      557 SETTABLEKS                       R22 R21 K18 ["Size"]
      559 CALL                             R19 2 1
      560 SETTABLEKS                       R19 R18 K30 ["Indicator"]
      562 CALL                             R15 3 -1
      563 RETURN                           R15 -1

PROTO_12:
        0 DUPTABLE                         R2 K1 [{"pluginList"}]
        1 GETTABLEKS                       R3 R0 K2 ["Management"]
        3 GETTABLEKS                       R3 R3 K3 ["plugins"]
        5 SETTABLEKS                       R3 R2 K0 ["pluginList"]
        7 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["DEPRECATED_getAllPluginPermissions is deprecated with FFlagStudioRefreshPluginPermissions"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 CALL                             R3 2 -1
       14 CALL                             R2 -1 0
       15 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R1 K3 [{"UpdateAllPlugins", "dispatchRefreshPlugins", "DEPRECATED_getAllPluginPermissions"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["UpdateAllPlugins"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchRefreshPlugins"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R2 R1 K2 ["DEPRECATED_getAllPluginPermissions"]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioRefreshPluginPermissions"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K9 [game]
       20 LOADK                            R4 K10 ["MemStorageService"]
       21 NAMECALL                         R2 R2 K11 ["GetService"]
       23 CALL                             R2 2 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R0 K12 ["Packages"]
       28 GETTABLEKS                       R4 R4 K13 ["Roact"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R0 K12 ["Packages"]
       35 GETTABLEKS                       R5 R5 K14 ["RoactRodux"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R6 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R6 K15 ["Components"]
       44 GETTABLEKS                       R6 R6 K16 ["PluginHolder"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K4 [require]
       49 GETTABLEKS                       R7 R0 K5 ["Src"]
       51 GETTABLEKS                       R7 R7 K17 ["Thunks"]
       53 GETTABLEKS                       R7 R7 K18 ["GetAllPluginPermissions"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K4 [require]
       58 GETTABLEKS                       R8 R0 K5 ["Src"]
       60 GETTABLEKS                       R8 R8 K19 ["Util"]
       62 GETTABLEKS                       R8 R8 K20 ["Constants"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K4 [require]
       67 GETTABLEKS                       R9 R0 K12 ["Packages"]
       69 GETTABLEKS                       R9 R9 K21 ["Framework"]
       71 CALL                             R8 1 1
       72 GETTABLEKS                       R8 R8 K22 ["ContextServices"]
       74 GETTABLEKS                       R9 R8 K23 ["withContext"]
       76 GETIMPORT                        R10 K4 [require]
       78 GETTABLEKS                       R11 R0 K12 ["Packages"]
       80 GETTABLEKS                       R11 R11 K21 ["Framework"]
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R10 R10 K24 ["UI"]
       85 GETIMPORT                        R11 K4 [require]
       87 GETTABLEKS                       R12 R0 K12 ["Packages"]
       89 GETTABLEKS                       R12 R12 K21 ["Framework"]
       91 CALL                             R11 1 1
       92 GETTABLEKS                       R11 R11 K19 ["Util"]
       94 GETIMPORT                        R12 K4 [require]
       96 GETTABLEKS                       R13 R0 K5 ["Src"]
       98 GETTABLEKS                       R13 R13 K22 ["ContextServices"]
      100 GETTABLEKS                       R13 R13 K25 ["PluginAPI2"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K4 [require]
      105 GETTABLEKS                       R14 R0 K5 ["Src"]
      107 GETTABLEKS                       R14 R14 K17 ["Thunks"]
      109 GETTABLEKS                       R14 R14 K26 ["UpdateAllPlugins"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K4 [require]
      114 GETTABLEKS                       R15 R0 K5 ["Src"]
      116 GETTABLEKS                       R15 R15 K17 ["Thunks"]
      118 GETTABLEKS                       R15 R15 K27 ["RefreshPlugins"]
      120 CALL                             R14 1 1
      121 GETTABLEKS                       R15 R10 K28 ["Button"]
      123 GETTABLEKS                       R16 R11 K29 ["StyleModifier"]
      125 GETTABLEKS                       R17 R10 K30 ["LoadingIndicator"]
      127 GETIMPORT                        R18 K4 [require]
      129 GETTABLEKS                       R19 R0 K5 ["Src"]
      131 GETTABLEKS                       R19 R19 K19 ["Util"]
      133 GETTABLEKS                       R19 R19 K31 ["PluginManagementApi"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K4 [require]
      138 GETTABLEKS                       R20 R0 K12 ["Packages"]
      140 GETTABLEKS                       R20 R20 K32 ["SharedPluginConstants"]
      142 CALL                             R19 1 1
      143 GETTABLEKS                       R20 R3 K33 ["Component"]
      145 LOADK                            R22 K34 ["ManagementMainView"]
      146 NAMECALL                         R20 R20 K35 ["extend"]
      148 CALL                             R20 2 1
      149 DUPCLOSURE                       R21 K36 [PROTO_6]
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R19
      153 SETTABLEKS                       R21 R20 K37 ["init"]
      155 DUPCLOSURE                       R21 K38 [PROTO_7]
      156 SETTABLEKS                       R21 R20 K39 ["isPlaceOpen"]
      158 DUPCLOSURE                       R21 K40 [PROTO_8]
      159 SETTABLEKS                       R21 R20 K41 ["didMount"]
      161 DUPCLOSURE                       R21 K42 [PROTO_9]
      162 SETTABLEKS                       R21 R20 K43 ["willUnmount"]
      164 DUPCLOSURE                       R21 K44 [PROTO_11]
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R17
      171 SETTABLEKS                       R21 R20 K45 ["render"]
      173 MOVE                             R21 R9
      174 DUPTABLE                         R22 K51 [{"Plugin", "Localization", "Stylizer", "API", "Analytics", "PluginManagementApi"}]
      175 GETTABLEKS                       R23 R8 K46 ["Plugin"]
      177 SETTABLEKS                       R23 R22 K46 ["Plugin"]
      179 GETTABLEKS                       R23 R8 K47 ["Localization"]
      181 SETTABLEKS                       R23 R22 K47 ["Localization"]
      183 GETTABLEKS                       R23 R8 K48 ["Stylizer"]
      185 SETTABLEKS                       R23 R22 K48 ["Stylizer"]
      187 SETTABLEKS                       R12 R22 K49 ["API"]
      189 GETTABLEKS                       R23 R8 K50 ["Analytics"]
      191 SETTABLEKS                       R23 R22 K50 ["Analytics"]
      193 SETTABLEKS                       R18 R22 K31 ["PluginManagementApi"]
      195 CALL                             R21 1 1
      196 MOVE                             R22 R20
      197 CALL                             R21 1 1
      198 MOVE                             R20 R21
      199 DUPCLOSURE                       R21 K52 [PROTO_12]
      200 DUPCLOSURE                       R22 K53 [PROTO_16]
      201 CAPTURE                          VAL R13
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R6
      205 GETTABLEKS                       R23 R4 K54 ["connect"]
      207 MOVE                             R24 R21
      208 MOVE                             R25 R22
      209 CALL                             R23 2 1
      210 MOVE                             R24 R20
      211 CALL                             R23 1 -1
      212 RETURN                           R23 -1
