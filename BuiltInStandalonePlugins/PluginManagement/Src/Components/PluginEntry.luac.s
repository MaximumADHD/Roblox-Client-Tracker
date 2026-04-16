PROTO_0:
        0 GETUPVAL                         R5 0
        1 MOVE                             R7 R0
        2 MOVE                             R8 R1
        3 MOVE                             R9 R2
        4 GETIMPORT                        R10 K2 [Vector2.new]
        6 MOVE                             R11 R3
        7 LOADN                            R12 16
        8 CALL                             R10 2 -1
        9 NAMECALL                         R5 R5 K3 ["GetTextSize"]
       11 CALL                             R5 -1 1
       12 GETTABLEKS                       R4 R5 K4 ["Y"]
       14 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Localization"]
        5 NEWTABLE                         R1 0 2
        7 DUPTABLE                         R2 K4 [{"Key", "Text"}]
        8 LOADK                            R3 K5 ["Details"]
        9 SETTABLEKS                       R3 R2 K2 ["Key"]
       11 LOADK                            R5 K6 ["EntrySeeMore"]
       12 LOADK                            R6 K7 ["DetailsButton"]
       13 NAMECALL                         R3 R0 K8 ["getText"]
       15 CALL                             R3 3 1
       16 SETTABLEKS                       R3 R2 K3 ["Text"]
       18 DUPTABLE                         R3 K4 [{"Key", "Text"}]
       19 LOADK                            R4 K9 ["Remove"]
       20 SETTABLEKS                       R4 R3 K2 ["Key"]
       22 LOADK                            R6 K6 ["EntrySeeMore"]
       23 LOADK                            R7 K10 ["RemoveButton"]
       24 NAMECALL                         R4 R0 K8 ["getText"]
       26 CALL                             R4 3 1
       27 SETTABLEKS                       R4 R3 K3 ["Text"]
       29 SETLIST                          R1 R2 2 [1]
       31 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["onPluginSetEnabledState"]
        5 GETTABLEKS                       R2 R0 K2 ["data"]
        7 LOADB                            R3 1
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K0 ["props"]
        6 GETTABLEKS                       R1 R2 K1 ["onPluginSetEnabledState"]
        8 GETTABLEKS                       R2 R0 K2 ["data"]
       10 LOADB                            R3 0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["data"]
        5 GETTABLEKS                       R0 R1 K2 ["assetId"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["BaseUrl"]
       10 GETUPVAL                         R3 2
       11 LOADK                            R5 K5 ["Toolbox"]
       12 NAMECALL                         R3 R3 K6 ["getPluginPolicy"]
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R2 R3 K4 ["CreatorMarketplaceWebUrl"]
       17 JUMPIFNOT                        R2 ; [+11]
       18 GETIMPORT                        R3 K9 [string.format]
       20 LOADK                            R4 K10 ["%sasset/%s"]
       21 MOVE                             R5 R2
       22 GETUPVAL                         R6 3
       23 MOVE                             R8 R0
       24 NAMECALL                         R6 R6 K11 ["urlEncode"]
       26 CALL                             R6 2 -1
       27 CALL                             R3 -1 1
       28 JUMP                             ; [+10]
       29 GETIMPORT                        R3 K9 [string.format]
       31 LOADK                            R4 K12 ["%s/library/%s/asset"]
       32 MOVE                             R5 R1
       33 GETUPVAL                         R6 3
       34 MOVE                             R8 R0
       35 NAMECALL                         R6 R6 K11 ["urlEncode"]
       37 CALL                             R6 2 -1
       38 CALL                             R3 -1 1
       39 GETUPVAL                         R4 4
       40 JUMPIFNOT                        R4 ; [+6]
       41 GETUPVAL                         R4 5
       42 MOVE                             R6 R3
       43 NAMECALL                         R4 R4 K13 ["OpenInBrowser_DONOTUSE"]
       45 CALL                             R4 2 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R4 6
       48 MOVE                             R6 R3
       49 NAMECALL                         R4 R4 K14 ["OpenBrowserWindow"]
       51 CALL                             R4 2 0
       52 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["removePluginData"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["props"]
        8 GETTABLEKS                       R2 R3 K2 ["data"]
       10 GETTABLEKS                       R1 R2 K3 ["assetId"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K0 ["props"]
       17 GETTABLEKS                       R3 R4 K2 ["data"]
       19 GETTABLEKS                       R2 R3 K3 ["assetId"]
       21 NAMECALL                         R0 R0 K4 ["UninstallPlugin"]
       23 CALL                             R0 2 0
       24 GETIMPORT                        R0 K6 [wait]
       26 CALL                             R0 0 0
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R1 R2 K0 ["props"]
       30 GETTABLEKS                       R0 R1 K7 ["onPluginUninstalled"]
       32 CALL                             R0 0 0
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showMore"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showMore"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showMore"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showMore"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["hideShowMore"]
        3 CALL                             R1 0 0
        4 GETTABLEKS                       R1 R0 K1 ["Key"]
        6 JUMPIFNOTEQKS                    R1 K2 ["Details"] ; [+6]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["showDetails"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R1 R0 K1 ["Key"]
       15 JUMPIFNOTEQKS                    R1 K4 ["Remove"] ; [+5]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K5 ["uninstallPlugin"]
       20 CALL                             R1 0 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Analytics"]
        5 LOADK                            R3 K2 ["TryUpdatePlugin"]
        6 GETTABLEKS                       R5 R0 K3 ["data"]
        8 GETTABLEKS                       R4 R5 K4 ["assetId"]
       10 NAMECALL                         R1 R1 K5 ["report"]
       12 CALL                             R1 3 0
       13 GETTABLEKS                       R1 R0 K6 ["UpdatePlugin"]
       15 GETTABLEKS                       R2 R0 K3 ["data"]
       17 GETTABLEKS                       R3 R0 K1 ["Analytics"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["data"]
        5 GETTABLEKS                       R1 R0 K2 ["creator"]
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETTABLEKS                       R2 R0 K2 ["creator"]
       10 GETTABLEKS                       R1 R2 K3 ["Id"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K4 ["BaseUrl"]
       15 GETIMPORT                        R3 K7 [string.format]
       17 LOADK                            R4 K8 ["%susers/%d/profile"]
       18 MOVE                             R5 R2
       19 GETUPVAL                         R6 2
       20 MOVE                             R8 R1
       21 NAMECALL                         R6 R6 K9 ["urlEncode"]
       23 CALL                             R6 2 -1
       24 CALL                             R3 -1 1
       25 GETUPVAL                         R4 3
       26 JUMPIFNOT                        R4 ; [+6]
       27 GETUPVAL                         R4 4
       28 MOVE                             R6 R3
       29 NAMECALL                         R4 R4 K10 ["OpenInBrowser_DONOTUSE"]
       31 CALL                             R4 2 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R4 5
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K11 ["OpenBrowserWindow"]
       37 CALL                             R4 2 0
       38 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Navigation"]
        5 NAMECALL                         R0 R0 K2 ["get"]
        7 CALL                             R0 1 1
        8 GETTABLEKS                       R2 R0 K3 ["navigation"]
       10 GETTABLEKS                       R1 R2 K4 ["navigate"]
       12 DUPTABLE                         R2 K7 [{"routeName", "params"}]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K8 ["APP_PAGE"]
       16 GETTABLEKS                       R3 R4 K9 ["Detail"]
       18 SETTABLEKS                       R3 R2 K5 ["routeName"]
       20 DUPTABLE                         R3 K11 [{"assetId"}]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K0 ["props"]
       24 GETTABLEKS                       R5 R6 K12 ["data"]
       26 GETTABLEKS                       R4 R5 K10 ["assetId"]
       28 SETTABLEKS                       R4 R3 K10 ["assetId"]
       30 SETTABLEKS                       R3 R2 K6 ["params"]
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["data"]
        5 GETTABLEKS                       R1 R0 K2 ["isModerated"]
        7 NOT                              R2 R1
        8 JUMPIFNOT                        R2 ; [+2]
        9 GETTABLEKS                       R2 R0 K3 ["enabled"]
       11 JUMPIFNOT                        R2 ; [+5]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K4 ["onPluginDisabled"]
       15 CALL                             R3 0 0
       16 RETURN                           R0 0
       17 JUMPIF                           R1 ; [+4]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K5 ["onPluginEnabled"]
       21 CALL                             R3 0 0
       22 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"showSuccessMessage", "showMore"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["showSuccessMessage"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["showMore"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K4 ["getMoreItems"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K5 ["onPluginEnabled"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K6 ["onPluginDisabled"]
       21 NEWCLOSURE                       R1 P3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R1 R0 K7 ["showDetails"]
       31 NEWCLOSURE                       R1 P4
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U4
       34 SETTABLEKS                       R1 R0 K8 ["uninstallPlugin"]
       36 NEWCLOSURE                       R1 P5
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R1 R0 K9 ["onShowMoreActivated"]
       40 NEWCLOSURE                       R1 P6
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R1 R0 K10 ["hideShowMore"]
       44 NEWCLOSURE                       R1 P7
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R1 R0 K11 ["moreItemClicked"]
       48 NEWCLOSURE                       R1 P8
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R1 R0 K12 ["updatePlugin"]
       52 NEWCLOSURE                       R1 P9
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          UPVAL U5
       59 SETTABLEKS                       R1 R0 K13 ["openCreatorProfile"]
       61 NEWCLOSURE                       R1 P10
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U6
       64 SETTABLEKS                       R1 R0 K14 ["openPluginDetails"]
       66 NEWCLOSURE                       R1 P11
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R1 R0 K15 ["onToggleClick"]
       70 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["data"]
        2 GETTABLEKS                       R2 R3 K1 ["status"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["Success"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+6]
        9 DUPTABLE                         R2 K4 [{"showSuccessMessage"}]
       10 LOADB                            R3 1
       11 SETTABLEKS                       R3 R2 K3 ["showSuccessMessage"]
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R0 K5 ["isUpdated"]
       16 JUMPIF                           R2 ; [+5]
       17 DUPTABLE                         R2 K4 [{"showSuccessMessage"}]
       18 LOADB                            R3 0
       19 SETTABLEKS                       R3 R2 K3 ["showSuccessMessage"]
       21 RETURN                           R2 1
       22 LOADNIL                          R2
       23 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K4 [{"Size", "LayoutOrder", "OnClick"}]
        5 GETIMPORT                        R6 K7 [UDim2.new]
        7 LOADN                            R7 1
        8 LOADN                            R8 0
        9 LOADN                            R9 0
       10 LOADN                            R10 40
       11 CALL                             R6 4 1
       12 SETTABLEKS                       R6 R5 K1 ["Size"]
       14 SETTABLEKS                       R1 R5 K2 ["LayoutOrder"]
       16 SETTABLEKS                       R2 R5 K3 ["OnClick"]
       18 DUPTABLE                         R6 K9 [{"Label"}]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K0 ["createElement"]
       22 GETUPVAL                         R8 2
       23 DUPTABLE                         R9 K13 [{"Size", "TextSize", "Text", "TextXAlignment"}]
       24 GETIMPORT                        R10 K7 [UDim2.new]
       26 LOADN                            R11 1
       27 LOADN                            R12 0
       28 LOADN                            R13 1
       29 LOADN                            R14 0
       30 CALL                             R10 4 1
       31 SETTABLEKS                       R10 R9 K1 ["Size"]
       33 LOADN                            R10 18
       34 SETTABLEKS                       R10 R9 K10 ["TextSize"]
       36 GETTABLEKS                       R10 R0 K11 ["Text"]
       38 SETTABLEKS                       R10 R9 K11 ["Text"]
       40 GETIMPORT                        R10 K16 [Enum.TextXAlignment.Left]
       42 SETTABLEKS                       R10 R9 K12 ["TextXAlignment"]
       44 DUPTABLE                         R10 K18 [{"Padding"}]
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R11 R12 K0 ["createElement"]
       48 LOADK                            R12 K19 ["UIPadding"]
       49 DUPTABLE                         R13 K21 [{"PaddingLeft"}]
       50 GETIMPORT                        R14 K23 [UDim.new]
       52 LOADN                            R15 0
       53 LOADN                            R16 10
       54 CALL                             R14 2 1
       55 SETTABLEKS                       R14 R13 K20 ["PaddingLeft"]
       57 CALL                             R11 2 1
       58 SETTABLEKS                       R11 R10 K17 ["Padding"]
       60 CALL                             R7 3 1
       61 SETTABLEKS                       R7 R6 K8 ["Label"]
       63 CALL                             R3 3 -1
       64 RETURN                           R3 -1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["data"]
        6 GETTABLEKS                       R4 R1 K3 ["allowedHttpCount"]
        8 GETTABLEKS                       R5 R1 K4 ["deniedHttpCount"]
       10 GETTABLEKS                       R6 R1 K5 ["allowedScriptInjection"]
       12 GETTABLEKS                       R7 R2 K6 ["showMore"]
       14 GETTABLEKS                       R8 R1 K7 ["plugin"]
       16 GETTABLEKS                       R9 R1 K8 ["Localization"]
       18 GETTABLEKS                       R10 R1 K9 ["Stylizer"]
       20 GETTABLEKS                       R11 R1 K10 ["API"]
       22 NAMECALL                         R11 R11 K11 ["get"]
       24 CALL                             R11 1 1
       25 GETTABLEKS                       R12 R1 K12 ["LayoutOrder"]
       27 GETTABLEKS                       R13 R1 K13 ["isUpdated"]
       29 GETTABLEKS                       R14 R3 K14 ["isModerated"]
       31 GETTABLEKS                       R15 R3 K15 ["status"]
       33 GETTABLEKS                       R16 R3 K16 ["assetId"]
       35 NOT                              R17 R14
       36 JUMPIFNOT                        R17 ; [+2]
       37 GETTABLEKS                       R17 R3 K17 ["enabled"]
       39 GETTABLEKS                       R19 R3 K19 ["name"]
       41 ORK                              R18 R19 K18 [""]
       42 GETTABLEKS                       R20 R3 K20 ["description"]
       44 ORK                              R19 R20 K18 [""]
       45 GETTABLEKS                       R21 R3 K21 ["creator"]
       47 JUMPIFNOT                        R21 ; [+5]
       48 GETTABLEKS                       R21 R3 K21 ["creator"]
       50 GETTABLEKS                       R20 R21 K22 ["Name"]
       52 JUMPIF                           R20 ; [+1]
       53 LOADK                            R20 K18 [""]
       54 GETTABLEKS                       R22 R11 K23 ["Images"]
       56 GETTABLEKS                       R21 R22 K24 ["AssetThumbnailUrl"]
       58 MOVE                             R22 R16
       59 CALL                             R21 1 1
       60 NOT                              R22 R14
       61 JUMPIFNOT                        R22 ; [+9]
       62 NOT                              R22 R13
       63 JUMPIFNOT                        R22 ; [+7]
       64 GETUPVAL                         R24 0
       65 GETTABLEKS                       R23 R24 K25 ["Updating"]
       67 JUMPIFNOTEQ                      R15 R23 ; [+2]
       69 LOADB                            R22 0 +1
       70 LOADB                            R22 1
       71 GETIMPORT                        R23 K28 [UDim2.new]
       73 LOADN                            R24 1
       74 GETUPVAL                         R29 1
       75 GETTABLEKS                       R28 R29 K30 ["PLUGIN_HORIZONTAL_PADDING"]
       77 MULK                             R27 R28 K29 [-3]
       78 GETUPVAL                         R29 1
       79 GETTABLEKS                       R28 R29 K31 ["PLUGIN_ENABLE_WIDTH"]
       81 SUB                              R26 R27 R28
       82 GETUPVAL                         R28 1
       83 GETTABLEKS                       R27 R28 K32 ["PLUGIN_CONTEXT_WIDTH"]
       85 SUB                              R25 R26 R27
       86 LOADK                            R26 K33 [0.5]
       87 LOADN                            R27 0
       88 CALL                             R23 4 1
       89 LOADB                            R24 1
       90 LOADN                            R25 0
       91 JUMPIFLT                         R25 R4 ; [+6]
       93 LOADN                            R25 0
       94 JUMPIFLT                         R25 R5 ; [+2]
       96 LOADB                            R24 0 +1
       97 LOADB                            R24 1
       98 JUMPIFNOTEQKNIL                  R6 ; [+2]
      100 LOADB                            R25 0 +1
      101 LOADB                            R25 1
      102 OR                               R26 R24 R25
      103 GETUPVAL                         R28 2
      104 GETTABLEKS                       R27 R28 K34 ["createElement"]
      106 LOADK                            R28 K35 ["Frame"]
      107 DUPTABLE                         R29 K39 [{"BackgroundColor3", "BorderSizePixel", "LayoutOrder", "Size"}]
      108 GETTABLEKS                       R30 R10 K40 ["BackgroundColor"]
      110 SETTABLEKS                       R30 R29 K36 ["BackgroundColor3"]
      112 LOADN                            R30 0
      113 SETTABLEKS                       R30 R29 K37 ["BorderSizePixel"]
      115 SETTABLEKS                       R12 R29 K12 ["LayoutOrder"]
      117 GETIMPORT                        R30 K28 [UDim2.new]
      119 LOADN                            R31 1
      120 GETUPVAL                         R33 1
      121 GETTABLEKS                       R32 R33 K41 ["SCROLLBAR_WIDTH_ADJUSTMENT"]
      123 LOADN                            R33 0
      124 GETUPVAL                         R35 1
      125 GETTABLEKS                       R34 R35 K42 ["PLUGIN_ENTRY_HEIGHT"]
      127 CALL                             R30 4 1
      128 SETTABLEKS                       R30 R29 K38 ["Size"]
      130 DUPTABLE                         R30 K52 [{"Padding", "Thumbnail", "Contents", "ModeratedWarning", "UpdateButton", "ProgressIndicator", "SuccessLabel", "ToggleButton", "ShowMoreButton"}]
      131 GETUPVAL                         R32 2
      132 GETTABLEKS                       R31 R32 K34 ["createElement"]
      134 LOADK                            R32 K53 ["UIPadding"]
      135 DUPTABLE                         R33 K56 [{"PaddingTop", "PaddingBottom"}]
      136 GETIMPORT                        R34 K58 [UDim.new]
      138 LOADN                            R35 0
      139 GETUPVAL                         R37 1
      140 GETTABLEKS                       R36 R37 K59 ["PLUGIN_ENTRY_PADDING"]
      142 CALL                             R34 2 1
      143 SETTABLEKS                       R34 R33 K54 ["PaddingTop"]
      145 GETIMPORT                        R34 K58 [UDim.new]
      147 LOADN                            R35 0
      148 GETUPVAL                         R37 1
      149 GETTABLEKS                       R36 R37 K59 ["PLUGIN_ENTRY_PADDING"]
      151 CALL                             R34 2 1
      152 SETTABLEKS                       R34 R33 K55 ["PaddingBottom"]
      154 CALL                             R31 2 1
      155 SETTABLEKS                       R31 R30 K43 ["Padding"]
      157 GETUPVAL                         R32 2
      158 GETTABLEKS                       R31 R32 K34 ["createElement"]
      160 LOADK                            R32 K60 ["ImageLabel"]
      161 DUPTABLE                         R33 K64 [{"Size", "Position", "Image", "BackgroundTransparency"}]
      162 GETIMPORT                        R34 K28 [UDim2.new]
      164 LOADN                            R35 0
      165 GETUPVAL                         R37 1
      166 GETTABLEKS                       R36 R37 K65 ["THUMBNAIL_SIZE"]
      168 LOADN                            R37 0
      169 GETUPVAL                         R39 1
      170 GETTABLEKS                       R38 R39 K65 ["THUMBNAIL_SIZE"]
      172 CALL                             R34 4 1
      173 SETTABLEKS                       R34 R33 K38 ["Size"]
      175 GETIMPORT                        R34 K28 [UDim2.new]
      177 LOADN                            R35 0
      178 GETUPVAL                         R37 1
      179 GETTABLEKS                       R36 R37 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      181 LOADN                            R37 0
      182 GETUPVAL                         R39 1
      183 GETTABLEKS                       R38 R39 K66 ["PLUGIN_VERTICAL_PADDING"]
      185 CALL                             R34 4 1
      186 SETTABLEKS                       R34 R33 K61 ["Position"]
      188 SETTABLEKS                       R21 R33 K62 ["Image"]
      190 LOADN                            R34 1
      191 SETTABLEKS                       R34 R33 K63 ["BackgroundTransparency"]
      193 CALL                             R31 2 1
      194 SETTABLEKS                       R31 R30 K44 ["Thumbnail"]
      196 GETUPVAL                         R32 2
      197 GETTABLEKS                       R31 R32 K34 ["createElement"]
      199 LOADK                            R32 K35 ["Frame"]
      200 DUPTABLE                         R33 K67 [{"BackgroundTransparency", "Position", "Size"}]
      201 LOADN                            R34 1
      202 SETTABLEKS                       R34 R33 K63 ["BackgroundTransparency"]
      204 GETIMPORT                        R34 K28 [UDim2.new]
      206 LOADN                            R35 0
      207 GETUPVAL                         R38 1
      208 GETTABLEKS                       R37 R38 K65 ["THUMBNAIL_SIZE"]
      210 GETUPVAL                         R40 1
      211 GETTABLEKS                       R39 R40 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      213 MULK                             R38 R39 K68 [2]
      214 ADD                              R36 R37 R38
      215 LOADN                            R37 0
      216 LOADN                            R38 0
      217 CALL                             R34 4 1
      218 SETTABLEKS                       R34 R33 K61 ["Position"]
      220 GETIMPORT                        R34 K28 [UDim2.new]
      222 LOADK                            R35 K33 [0.5]
      223 GETUPVAL                         R39 1
      224 GETTABLEKS                       R38 R39 K65 ["THUMBNAIL_SIZE"]
      226 MINUS                            R37 R38
      227 GETUPVAL                         R39 1
      228 GETTABLEKS                       R38 R39 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      230 SUB                              R36 R37 R38
      231 LOADN                            R37 1
      232 LOADN                            R38 0
      233 CALL                             R34 4 1
      234 SETTABLEKS                       R34 R33 K38 ["Size"]
      236 DUPTABLE                         R34 K74 [{"Layout", "Name", "Creator", "Description", "HttpRequestOverview", "UpdateOverview"}]
      237 GETUPVAL                         R36 2
      238 GETTABLEKS                       R35 R36 K34 ["createElement"]
      240 LOADK                            R36 K75 ["UIListLayout"]
      241 DUPTABLE                         R37 K78 [{"SortOrder", "FillDirection", "Padding"}]
      242 GETIMPORT                        R38 K80 [Enum.SortOrder.LayoutOrder]
      244 SETTABLEKS                       R38 R37 K76 ["SortOrder"]
      246 GETIMPORT                        R38 K82 [Enum.FillDirection.Vertical]
      248 SETTABLEKS                       R38 R37 K77 ["FillDirection"]
      250 GETIMPORT                        R38 K58 [UDim.new]
      252 LOADN                            R39 0
      253 LOADN                            R40 2
      254 CALL                             R38 2 1
      255 SETTABLEKS                       R38 R37 K43 ["Padding"]
      257 CALL                             R35 2 1
      258 SETTABLEKS                       R35 R34 K69 ["Layout"]
      260 GETUPVAL                         R36 2
      261 GETTABLEKS                       R35 R36 K34 ["createElement"]
      263 LOADK                            R36 K83 ["TextLabel"]
      264 DUPTABLE                         R37 K90 [{"LayoutOrder", "TextWrapped", "TextSize", "Size", "BackgroundTransparency", "TextXAlignment", "Text", "TextColor3", "Font"}]
      265 LOADN                            R38 0
      266 SETTABLEKS                       R38 R37 K12 ["LayoutOrder"]
      268 LOADB                            R38 1
      269 SETTABLEKS                       R38 R37 K84 ["TextWrapped"]
      271 LOADN                            R38 22
      272 SETTABLEKS                       R38 R37 K85 ["TextSize"]
      274 GETIMPORT                        R38 K28 [UDim2.new]
      276 LOADN                            R39 1
      277 LOADN                            R40 0
      278 LOADN                            R41 0
      279 LOADN                            R42 20
      280 CALL                             R38 4 1
      281 SETTABLEKS                       R38 R37 K38 ["Size"]
      283 LOADN                            R38 1
      284 SETTABLEKS                       R38 R37 K63 ["BackgroundTransparency"]
      286 GETIMPORT                        R38 K92 [Enum.TextXAlignment.Left]
      288 SETTABLEKS                       R38 R37 K86 ["TextXAlignment"]
      290 SETTABLEKS                       R18 R37 K87 ["Text"]
      292 GETTABLEKS                       R38 R10 K93 ["EmphasisTextColor"]
      294 SETTABLEKS                       R38 R37 K88 ["TextColor3"]
      296 GETIMPORT                        R38 K95 [Enum.Font.SourceSans]
      298 SETTABLEKS                       R38 R37 K89 ["Font"]
      300 CALL                             R35 2 1
      301 SETTABLEKS                       R35 R34 K22 ["Name"]
      303 GETUPVAL                         R36 2
      304 GETTABLEKS                       R35 R36 K34 ["createElement"]
      306 LOADK                            R36 K96 ["TextButton"]
      307 NEWTABLE                         R37 16 0
      309 LOADN                            R38 1
      310 SETTABLEKS                       R38 R37 K12 ["LayoutOrder"]
      312 LOADB                            R38 1
      313 SETTABLEKS                       R38 R37 K84 ["TextWrapped"]
      315 GETIMPORT                        R38 K28 [UDim2.new]
      317 LOADN                            R39 1
      318 LOADN                            R40 0
      319 LOADN                            R41 0
      320 LOADN                            R42 16
      321 CALL                             R38 4 1
      322 SETTABLEKS                       R38 R37 K38 ["Size"]
      324 LOADN                            R38 1
      325 SETTABLEKS                       R38 R37 K63 ["BackgroundTransparency"]
      327 GETIMPORT                        R38 K92 [Enum.TextXAlignment.Left]
      329 SETTABLEKS                       R38 R37 K86 ["TextXAlignment"]
      331 SETTABLEKS                       R20 R37 K87 ["Text"]
      333 GETIMPORT                        R38 K98 [Enum.Font.SourceSansLight]
      335 SETTABLEKS                       R38 R37 K89 ["Font"]
      337 GETTABLEKS                       R38 R10 K99 ["LinkColor"]
      339 SETTABLEKS                       R38 R37 K88 ["TextColor3"]
      341 LOADN                            R38 16
      342 SETTABLEKS                       R38 R37 K85 ["TextSize"]
      344 LOADN                            R38 1
      345 SETTABLEKS                       R38 R37 K37 ["BorderSizePixel"]
      347 GETUPVAL                         R40 2
      348 GETTABLEKS                       R39 R40 K100 ["Event"]
      350 GETTABLEKS                       R38 R39 K101 ["Activated"]
      352 GETTABLEKS                       R39 R0 K102 ["openCreatorProfile"]
      354 SETTABLE                         R39 R37 R38
      355 CALL                             R35 2 1
      356 SETTABLEKS                       R35 R34 K70 ["Creator"]
      358 GETUPVAL                         R36 2
      359 GETTABLEKS                       R35 R36 K34 ["createElement"]
      361 LOADK                            R36 K83 ["TextLabel"]
      362 DUPTABLE                         R37 K106 [{"ClipsDescendants", "LayoutOrder", "TextWrapped", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "Text", "TextColor3", "TextTruncate", "Font", "TextSize"}]
      363 LOADB                            R38 1
      364 SETTABLEKS                       R38 R37 K103 ["ClipsDescendants"]
      366 LOADN                            R38 2
      367 SETTABLEKS                       R38 R37 K12 ["LayoutOrder"]
      369 LOADB                            R38 1
      370 SETTABLEKS                       R38 R37 K84 ["TextWrapped"]
      372 GETIMPORT                        R38 K28 [UDim2.new]
      374 LOADN                            R39 1
      375 LOADN                            R40 0
      376 LOADN                            R41 0
      377 GETUPVAL                         R43 3
      378 MULK                             R42 R43 K68 [2]
      379 CALL                             R38 4 1
      380 SETTABLEKS                       R38 R37 K38 ["Size"]
      382 LOADN                            R38 1
      383 SETTABLEKS                       R38 R37 K63 ["BackgroundTransparency"]
      385 GETIMPORT                        R38 K92 [Enum.TextXAlignment.Left]
      387 SETTABLEKS                       R38 R37 K86 ["TextXAlignment"]
      389 GETIMPORT                        R38 K108 [Enum.TextYAlignment.Top]
      391 SETTABLEKS                       R38 R37 K104 ["TextYAlignment"]
      393 SETTABLEKS                       R19 R37 K87 ["Text"]
      395 GETTABLEKS                       R38 R10 K109 ["TextColor"]
      397 SETTABLEKS                       R38 R37 K88 ["TextColor3"]
      399 GETIMPORT                        R38 K111 [Enum.TextTruncate.AtEnd]
      401 SETTABLEKS                       R38 R37 K105 ["TextTruncate"]
      403 GETIMPORT                        R38 K95 [Enum.Font.SourceSans]
      405 SETTABLEKS                       R38 R37 K89 ["Font"]
      407 LOADN                            R38 16
      408 SETTABLEKS                       R38 R37 K85 ["TextSize"]
      410 CALL                             R35 2 1
      411 SETTABLEKS                       R35 R34 K71 ["Description"]
      413 GETUPVAL                         R36 2
      414 GETTABLEKS                       R35 R36 K34 ["createElement"]
      416 GETUPVAL                         R36 4
      417 DUPTABLE                         R37 K112 [{"assetId", "LayoutOrder"}]
      418 GETTABLEKS                       R38 R3 K16 ["assetId"]
      420 SETTABLEKS                       R38 R37 K16 ["assetId"]
      422 LOADN                            R38 3
      423 SETTABLEKS                       R38 R37 K12 ["LayoutOrder"]
      425 CALL                             R35 2 1
      426 SETTABLEKS                       R35 R34 K72 ["HttpRequestOverview"]
      428 GETUPVAL                         R36 2
      429 GETTABLEKS                       R35 R36 K34 ["createElement"]
      431 GETUPVAL                         R36 5
      432 DUPTABLE                         R37 K114 [{"data", "LayoutOrder", "plugin", "updateAvailable"}]
      433 SETTABLEKS                       R3 R37 K2 ["data"]
      435 LOADN                            R38 4
      436 SETTABLEKS                       R38 R37 K12 ["LayoutOrder"]
      438 SETTABLEKS                       R8 R37 K7 ["plugin"]
      440 SETTABLEKS                       R22 R37 K113 ["updateAvailable"]
      442 CALL                             R35 2 1
      443 SETTABLEKS                       R35 R34 K73 ["UpdateOverview"]
      445 CALL                             R31 3 1
      446 SETTABLEKS                       R31 R30 K45 ["Contents"]
      448 MOVE                             R31 R14
      449 JUMPIFNOT                        R31 ; [+60]
      450 GETUPVAL                         R32 2
      451 GETTABLEKS                       R31 R32 K34 ["createElement"]
      453 LOADK                            R32 K83 ["TextLabel"]
      454 DUPTABLE                         R33 K116 [{"AnchorPoint", "Size", "Position", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextSize", "TextWrapped", "Font", "TextColor3", "Text"}]
      455 GETIMPORT                        R34 K118 [Vector2.new]
      457 LOADN                            R35 1
      458 LOADK                            R36 K33 [0.5]
      459 CALL                             R34 2 1
      460 SETTABLEKS                       R34 R33 K115 ["AnchorPoint"]
      462 GETIMPORT                        R34 K28 [UDim2.new]
      464 LOADN                            R35 0
      465 GETUPVAL                         R37 1
      466 GETTABLEKS                       R36 R37 K119 ["MODERATED_WARNING_WIDTH"]
      468 LOADN                            R37 0
      469 GETUPVAL                         R39 1
      470 GETTABLEKS                       R38 R39 K120 ["HEADER_BUTTON_SIZE"]
      472 CALL                             R34 4 1
      473 SETTABLEKS                       R34 R33 K38 ["Size"]
      475 SETTABLEKS                       R23 R33 K61 ["Position"]
      477 LOADN                            R34 1
      478 SETTABLEKS                       R34 R33 K63 ["BackgroundTransparency"]
      480 GETIMPORT                        R34 K122 [Enum.TextXAlignment.Right]
      482 SETTABLEKS                       R34 R33 K86 ["TextXAlignment"]
      484 GETIMPORT                        R34 K108 [Enum.TextYAlignment.Top]
      486 SETTABLEKS                       R34 R33 K104 ["TextYAlignment"]
      488 LOADN                            R34 14
      489 SETTABLEKS                       R34 R33 K85 ["TextSize"]
      491 LOADB                            R34 1
      492 SETTABLEKS                       R34 R33 K84 ["TextWrapped"]
      494 GETIMPORT                        R34 K95 [Enum.Font.SourceSans]
      496 SETTABLEKS                       R34 R33 K89 ["Font"]
      498 GETTABLEKS                       R34 R10 K109 ["TextColor"]
      500 SETTABLEKS                       R34 R33 K88 ["TextColor3"]
      502 LOADK                            R36 K123 ["Entry"]
      503 LOADK                            R37 K46 ["ModeratedWarning"]
      504 NAMECALL                         R34 R9 K124 ["getText"]
      506 CALL                             R34 3 1
      507 SETTABLEKS                       R34 R33 K87 ["Text"]
      509 CALL                             R31 2 1
      510 SETTABLEKS                       R31 R30 K46 ["ModeratedWarning"]
      512 MOVE                             R31 R22
      513 JUMPIFNOT                        R31 ; [+188]
      514 GETUPVAL                         R32 2
      515 GETTABLEKS                       R31 R32 K34 ["createElement"]
      517 GETUPVAL                         R32 6
      518 DUPTABLE                         R33 K127 [{"AnchorPoint", "Size", "Position", "Style", "OnClick"}]
      519 GETIMPORT                        R34 K118 [Vector2.new]
      521 LOADN                            R35 1
      522 LOADK                            R36 K33 [0.5]
      523 CALL                             R34 2 1
      524 SETTABLEKS                       R34 R33 K115 ["AnchorPoint"]
      526 GETIMPORT                        R34 K28 [UDim2.new]
      528 LOADN                            R35 0
      529 GETUPVAL                         R37 1
      530 GETTABLEKS                       R36 R37 K128 ["HEADER_UPDATE_WIDTH"]
      532 LOADN                            R37 0
      533 GETUPVAL                         R39 1
      534 GETTABLEKS                       R38 R39 K120 ["HEADER_BUTTON_SIZE"]
      536 CALL                             R34 4 1
      537 SETTABLEKS                       R34 R33 K38 ["Size"]
      539 SETTABLEKS                       R23 R33 K61 ["Position"]
      541 LOADK                            R34 K129 ["Round"]
      542 SETTABLEKS                       R34 R33 K125 ["Style"]
      544 GETTABLEKS                       R34 R0 K130 ["updatePlugin"]
      546 SETTABLEKS                       R34 R33 K126 ["OnClick"]
      548 DUPTABLE                         R34 K134 [{"Label", "DateLabel", "ErrorLabel"}]
      549 GETUPVAL                         R36 2
      550 GETTABLEKS                       R35 R36 K34 ["createElement"]
      552 LOADK                            R36 K83 ["TextLabel"]
      553 DUPTABLE                         R37 K135 [{"Size", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency"}]
      554 GETIMPORT                        R38 K28 [UDim2.new]
      556 LOADN                            R39 1
      557 LOADN                            R40 0
      558 LOADN                            R41 1
      559 LOADN                            R42 0
      560 CALL                             R38 4 1
      561 SETTABLEKS                       R38 R37 K38 ["Size"]
      563 LOADK                            R40 K123 ["Entry"]
      564 LOADK                            R41 K47 ["UpdateButton"]
      565 NAMECALL                         R38 R9 K124 ["getText"]
      567 CALL                             R38 3 1
      568 SETTABLEKS                       R38 R37 K87 ["Text"]
      570 GETTABLEKS                       R38 R10 K109 ["TextColor"]
      572 SETTABLEKS                       R38 R37 K88 ["TextColor3"]
      574 GETIMPORT                        R38 K95 [Enum.Font.SourceSans]
      576 SETTABLEKS                       R38 R37 K89 ["Font"]
      578 LOADN                            R38 18
      579 SETTABLEKS                       R38 R37 K85 ["TextSize"]
      581 LOADN                            R38 1
      582 SETTABLEKS                       R38 R37 K63 ["BackgroundTransparency"]
      584 CALL                             R35 2 1
      585 SETTABLEKS                       R35 R34 K131 ["Label"]
      587 LOADB                            R35 0
      588 GETUPVAL                         R37 0
      589 GETTABLEKS                       R36 R37 K136 ["Error"]
      591 JUMPIFEQ                         R15 R36 ; [+54]
      593 GETUPVAL                         R36 2
      594 GETTABLEKS                       R35 R36 K34 ["createElement"]
      596 LOADK                            R36 K83 ["TextLabel"]
      597 DUPTABLE                         R37 K138 [{"BackgroundTransparency", "Size", "Position", "TextSize", "Font", "TextColor3", "TextTransparency", "Text"}]
      598 LOADN                            R38 1
      599 SETTABLEKS                       R38 R37 K63 ["BackgroundTransparency"]
      601 GETIMPORT                        R38 K28 [UDim2.new]
      603 LOADN                            R39 1
      604 LOADN                            R40 0
      605 LOADN                            R41 0
      606 LOADN                            R42 14
      607 CALL                             R38 4 1
      608 SETTABLEKS                       R38 R37 K38 ["Size"]
      610 GETIMPORT                        R38 K28 [UDim2.new]
      612 LOADN                            R39 0
      613 LOADN                            R40 0
      614 LOADN                            R41 1
      615 LOADN                            R42 3
      616 CALL                             R38 4 1
      617 SETTABLEKS                       R38 R37 K61 ["Position"]
      619 LOADN                            R38 14
      620 SETTABLEKS                       R38 R37 K85 ["TextSize"]
      622 GETIMPORT                        R38 K95 [Enum.Font.SourceSans]
      624 SETTABLEKS                       R38 R37 K89 ["Font"]
      626 GETTABLEKS                       R38 R10 K109 ["TextColor"]
      628 SETTABLEKS                       R38 R37 K88 ["TextColor3"]
      630 LOADN                            R38 0
      631 SETTABLEKS                       R38 R37 K137 ["TextTransparency"]
      633 LOADK                            R40 K123 ["Entry"]
      634 LOADK                            R41 K139 ["LastUpdatedDate"]
      635 DUPTABLE                         R42 K141 [{"date"}]
      636 GETTABLEKS                       R43 R3 K142 ["updated"]
      638 SETTABLEKS                       R43 R42 K140 ["date"]
      640 NAMECALL                         R38 R9 K124 ["getText"]
      642 CALL                             R38 4 1
      643 SETTABLEKS                       R38 R37 K87 ["Text"]
      645 CALL                             R35 2 1
      646 SETTABLEKS                       R35 R34 K132 ["DateLabel"]
      648 LOADB                            R35 0
      649 GETUPVAL                         R37 0
      650 GETTABLEKS                       R36 R37 K136 ["Error"]
      652 JUMPIFNOTEQ                      R15 R36 ; [+46]
      654 GETUPVAL                         R36 2
      655 GETTABLEKS                       R35 R36 K34 ["createElement"]
      657 LOADK                            R36 K83 ["TextLabel"]
      658 DUPTABLE                         R37 K143 [{"BackgroundTransparency", "Size", "Position", "TextSize", "Font", "TextColor3", "Text"}]
      659 LOADN                            R38 1
      660 SETTABLEKS                       R38 R37 K63 ["BackgroundTransparency"]
      662 GETIMPORT                        R38 K28 [UDim2.new]
      664 LOADN                            R39 1
      665 LOADN                            R40 0
      666 LOADN                            R41 0
      667 LOADN                            R42 14
      668 CALL                             R38 4 1
      669 SETTABLEKS                       R38 R37 K38 ["Size"]
      671 GETIMPORT                        R38 K28 [UDim2.new]
      673 LOADN                            R39 0
      674 LOADN                            R40 0
      675 LOADN                            R41 1
      676 LOADN                            R42 3
      677 CALL                             R38 4 1
      678 SETTABLEKS                       R38 R37 K61 ["Position"]
      680 LOADN                            R38 14
      681 SETTABLEKS                       R38 R37 K85 ["TextSize"]
      683 GETIMPORT                        R38 K95 [Enum.Font.SourceSans]
      685 SETTABLEKS                       R38 R37 K89 ["Font"]
      687 GETTABLEKS                       R38 R10 K144 ["ErrorColor"]
      689 SETTABLEKS                       R38 R37 K88 ["TextColor3"]
      691 LOADK                            R40 K123 ["Entry"]
      692 LOADK                            R41 K145 ["UpdateError"]
      693 NAMECALL                         R38 R9 K124 ["getText"]
      695 CALL                             R38 3 1
      696 SETTABLEKS                       R38 R37 K87 ["Text"]
      698 CALL                             R35 2 1
      699 SETTABLEKS                       R35 R34 K133 ["ErrorLabel"]
      701 CALL                             R31 3 1
      702 SETTABLEKS                       R31 R30 K47 ["UpdateButton"]
      704 NOT                              R31 R13
      705 JUMPIFNOT                        R31 ; [+27]
      706 LOADB                            R31 0
      707 GETUPVAL                         R33 0
      708 GETTABLEKS                       R32 R33 K25 ["Updating"]
      710 JUMPIFNOTEQ                      R15 R32 ; [+22]
      712 GETUPVAL                         R32 2
      713 GETTABLEKS                       R31 R32 K34 ["createElement"]
      715 GETUPVAL                         R32 7
      716 DUPTABLE                         R33 K147 [{"AnchorPoint", "Position", "Size", "LoadingTime"}]
      717 GETIMPORT                        R34 K118 [Vector2.new]
      719 LOADN                            R35 1
      720 LOADK                            R36 K33 [0.5]
      721 CALL                             R34 2 1
      722 SETTABLEKS                       R34 R33 K115 ["AnchorPoint"]
      724 SETTABLEKS                       R23 R33 K61 ["Position"]
      726 GETUPVAL                         R34 8
      727 SETTABLEKS                       R34 R33 K38 ["Size"]
      729 LOADK                            R34 K33 [0.5]
      730 SETTABLEKS                       R34 R33 K146 ["LoadingTime"]
      732 CALL                             R31 2 1
      733 SETTABLEKS                       R31 R30 K48 ["ProgressIndicator"]
      735 MOVE                             R31 R13
      736 JUMPIFNOT                        R31 ; [+52]
      737 GETTABLEKS                       R31 R2 K148 ["showSuccessMessage"]
      739 JUMPIFNOT                        R31 ; [+49]
      740 GETUPVAL                         R32 2
      741 GETTABLEKS                       R31 R32 K34 ["createElement"]
      743 LOADK                            R32 K83 ["TextLabel"]
      744 DUPTABLE                         R33 K149 [{"BackgroundTransparency", "Size", "AnchorPoint", "Position", "TextSize", "Font", "TextColor3", "TextXAlignment", "Text"}]
      745 LOADN                            R34 1
      746 SETTABLEKS                       R34 R33 K63 ["BackgroundTransparency"]
      748 GETIMPORT                        R34 K28 [UDim2.new]
      750 LOADN                            R35 1
      751 LOADN                            R36 0
      752 LOADN                            R37 0
      753 LOADN                            R38 14
      754 CALL                             R34 4 1
      755 SETTABLEKS                       R34 R33 K38 ["Size"]
      757 GETIMPORT                        R34 K118 [Vector2.new]
      759 LOADN                            R35 1
      760 LOADK                            R36 K33 [0.5]
      761 CALL                             R34 2 1
      762 SETTABLEKS                       R34 R33 K115 ["AnchorPoint"]
      764 SETTABLEKS                       R23 R33 K61 ["Position"]
      766 LOADN                            R34 14
      767 SETTABLEKS                       R34 R33 K85 ["TextSize"]
      769 GETIMPORT                        R34 K95 [Enum.Font.SourceSans]
      771 SETTABLEKS                       R34 R33 K89 ["Font"]
      773 GETTABLEKS                       R34 R10 K150 ["Green"]
      775 SETTABLEKS                       R34 R33 K88 ["TextColor3"]
      777 GETIMPORT                        R34 K122 [Enum.TextXAlignment.Right]
      779 SETTABLEKS                       R34 R33 K86 ["TextXAlignment"]
      781 LOADK                            R36 K123 ["Entry"]
      782 LOADK                            R37 K151 ["UpdateSuccess"]
      783 NAMECALL                         R34 R9 K124 ["getText"]
      785 CALL                             R34 3 1
      786 SETTABLEKS                       R34 R33 K87 ["Text"]
      788 CALL                             R31 2 1
      789 SETTABLEKS                       R31 R30 K49 ["SuccessLabel"]
      791 GETUPVAL                         R32 2
      792 GETTABLEKS                       R31 R32 K34 ["createElement"]
      794 GETUPVAL                         R32 9
      795 DUPTABLE                         R33 K154 [{"Disabled", "Selected", "OnClick", "Size", "Position"}]
      796 LOADB                            R34 0
      797 SETTABLEKS                       R34 R33 K152 ["Disabled"]
      799 SETTABLEKS                       R17 R33 K153 ["Selected"]
      801 GETTABLEKS                       R34 R0 K155 ["onToggleClick"]
      803 SETTABLEKS                       R34 R33 K126 ["OnClick"]
      805 GETIMPORT                        R34 K28 [UDim2.new]
      807 LOADN                            R35 0
      808 GETUPVAL                         R37 1
      809 GETTABLEKS                       R36 R37 K31 ["PLUGIN_ENABLE_WIDTH"]
      811 LOADN                            R37 0
      812 LOADN                            R38 24
      813 CALL                             R34 4 1
      814 SETTABLEKS                       R34 R33 K38 ["Size"]
      816 GETIMPORT                        R34 K28 [UDim2.new]
      818 LOADN                            R35 1
      819 GETUPVAL                         R40 1
      820 GETTABLEKS                       R39 R40 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      822 MULK                             R38 R39 K156 [-2]
      823 GETUPVAL                         R40 1
      824 GETTABLEKS                       R39 R40 K31 ["PLUGIN_ENABLE_WIDTH"]
      826 SUB                              R37 R38 R39
      827 GETUPVAL                         R39 1
      828 GETTABLEKS                       R38 R39 K32 ["PLUGIN_CONTEXT_WIDTH"]
      830 SUB                              R36 R37 R38
      831 LOADK                            R37 K33 [0.5]
      832 LOADN                            R38 0
      833 CALL                             R34 4 1
      834 SETTABLEKS                       R34 R33 K61 ["Position"]
      836 CALL                             R31 2 1
      837 SETTABLEKS                       R31 R30 K50 ["ToggleButton"]
      839 GETUPVAL                         R32 2
      840 GETTABLEKS                       R31 R32 K34 ["createElement"]
      842 GETUPVAL                         R32 6
      843 DUPTABLE                         R33 K127 [{"AnchorPoint", "Size", "Position", "Style", "OnClick"}]
      844 GETIMPORT                        R34 K118 [Vector2.new]
      846 LOADN                            R35 0
      847 LOADK                            R36 K33 [0.5]
      848 CALL                             R34 2 1
      849 SETTABLEKS                       R34 R33 K115 ["AnchorPoint"]
      851 GETIMPORT                        R34 K28 [UDim2.new]
      853 LOADN                            R35 0
      854 GETUPVAL                         R37 1
      855 GETTABLEKS                       R36 R37 K120 ["HEADER_BUTTON_SIZE"]
      857 LOADN                            R37 0
      858 GETUPVAL                         R39 1
      859 GETTABLEKS                       R38 R39 K120 ["HEADER_BUTTON_SIZE"]
      861 CALL                             R34 4 1
      862 SETTABLEKS                       R34 R33 K38 ["Size"]
      864 GETIMPORT                        R34 K28 [UDim2.new]
      866 LOADN                            R35 1
      867 LOADN                            R37 255
      868 GETUPVAL                         R40 1
      869 GETTABLEKS                       R39 R40 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      871 GETUPVAL                         R41 1
      872 GETTABLEKS                       R40 R41 K32 ["PLUGIN_CONTEXT_WIDTH"]
      874 ADD                              R38 R39 R40
      875 MUL                              R36 R37 R38
      876 LOADK                            R37 K33 [0.5]
      877 LOADN                            R38 0
      878 CALL                             R34 4 1
      879 SETTABLEKS                       R34 R33 K61 ["Position"]
      881 LOADK                            R34 K129 ["Round"]
      882 SETTABLEKS                       R34 R33 K125 ["Style"]
      884 GETTABLEKS                       R34 R0 K157 ["onShowMoreActivated"]
      886 SETTABLEKS                       R34 R33 K126 ["OnClick"]
      888 DUPTABLE                         R34 K160 [{"Dots", "Dropdown"}]
      889 GETUPVAL                         R36 2
      890 GETTABLEKS                       R35 R36 K34 ["createElement"]
      892 LOADK                            R36 K83 ["TextLabel"]
      893 DUPTABLE                         R37 K161 [{"AnchorPoint", "Position", "Size", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency"}]
      894 GETIMPORT                        R38 K118 [Vector2.new]
      896 LOADK                            R39 K33 [0.5]
      897 LOADK                            R40 K33 [0.5]
      898 CALL                             R38 2 1
      899 SETTABLEKS                       R38 R37 K115 ["AnchorPoint"]
      901 GETIMPORT                        R38 K28 [UDim2.new]
      903 LOADK                            R39 K33 [0.5]
      904 LOADN                            R40 0
      905 LOADK                            R41 K33 [0.5]
      906 LOADN                            R42 252
      907 CALL                             R38 4 1
      908 SETTABLEKS                       R38 R37 K61 ["Position"]
      910 GETIMPORT                        R38 K28 [UDim2.new]
      912 LOADN                            R39 0
      913 LOADN                            R40 16
      914 LOADN                            R41 0
      915 LOADN                            R42 16
      916 CALL                             R38 4 1
      917 SETTABLEKS                       R38 R37 K38 ["Size"]
      919 LOADK                            R38 K162 ["..."]
      920 SETTABLEKS                       R38 R37 K87 ["Text"]
      922 GETTABLEKS                       R38 R10 K109 ["TextColor"]
      924 SETTABLEKS                       R38 R37 K88 ["TextColor3"]
      926 GETIMPORT                        R38 K164 [Enum.Font.SourceSansBold]
      928 SETTABLEKS                       R38 R37 K89 ["Font"]
      930 LOADN                            R38 18
      931 SETTABLEKS                       R38 R37 K85 ["TextSize"]
      933 LOADN                            R38 1
      934 SETTABLEKS                       R38 R37 K63 ["BackgroundTransparency"]
      936 CALL                             R35 2 1
      937 SETTABLEKS                       R35 R34 K158 ["Dots"]
      939 GETUPVAL                         R36 2
      940 GETTABLEKS                       R35 R36 K34 ["createElement"]
      942 GETUPVAL                         R36 10
      943 DUPTABLE                         R37 K170 [{"Hide", "Size", "Items", "OnRenderItem", "OnItemActivated", "OnFocusLost"}]
      944 NOT                              R38 R7
      945 SETTABLEKS                       R38 R37 K165 ["Hide"]
      947 GETIMPORT                        R38 K172 [UDim2.fromOffset]
      949 LOADN                            R39 90
      950 GETTABLEKS                       R42 R0 K174 ["getMoreItems"]
      952 CALL                             R42 0 1
      953 LENGTH                           R41 R42
      954 MULK                             R40 R41 K173 [40]
      955 CALL                             R38 2 1
      956 SETTABLEKS                       R38 R37 K38 ["Size"]
      958 GETTABLEKS                       R38 R0 K174 ["getMoreItems"]
      960 CALL                             R38 0 1
      961 SETTABLEKS                       R38 R37 K166 ["Items"]
      963 DUPCLOSURE                       R38 K175 [PROTO_15]
      964 CAPTURE                          UPVAL U2
      965 CAPTURE                          UPVAL U6
      966 CAPTURE                          UPVAL U11
      967 SETTABLEKS                       R38 R37 K167 ["OnRenderItem"]
      969 GETTABLEKS                       R38 R0 K176 ["moreItemClicked"]
      971 SETTABLEKS                       R38 R37 K168 ["OnItemActivated"]
      973 GETTABLEKS                       R38 R0 K177 ["hideShowMore"]
      975 SETTABLEKS                       R38 R37 K169 ["OnFocusLost"]
      977 CALL                             R35 2 1
      978 SETTABLEKS                       R35 R34 K159 ["Dropdown"]
      980 CALL                             R31 3 1
      981 SETTABLEKS                       R31 R30 K51 ["ShowMoreButton"]
      983 CALL                             R27 3 -1
      984 RETURN                           R27 -1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["PluginPermissions"]
        2 GETTABLEKS                       R5 R1 K1 ["data"]
        4 GETTABLEKS                       R4 R5 K2 ["assetId"]
        6 GETTABLE                         R2 R3 R4
        7 DUPTABLE                         R3 K6 [{"allowedHttpCount", "deniedHttpCount", "allowedScriptInjection"}]
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R4 R2 K3 ["allowedHttpCount"]
       11 JUMPIF                           R4 ; [+1]
       12 LOADN                            R4 0
       13 SETTABLEKS                       R4 R3 K3 ["allowedHttpCount"]
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETTABLEKS                       R4 R2 K4 ["deniedHttpCount"]
       18 JUMPIF                           R4 ; [+1]
       19 LOADN                            R4 0
       20 SETTABLEKS                       R4 R3 K4 ["deniedHttpCount"]
       22 JUMPIFNOT                        R2 ; [+3]
       23 GETTABLEKS                       R4 R2 K5 ["allowedScriptInjection"]
       25 JUMPIF                           R4 ; [+1]
       26 LOADNIL                          R4
       27 SETTABLEKS                       R4 R3 K5 ["allowedScriptInjection"]
       29 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_21:
        0 DUPTABLE                         R1 K3 [{"removePluginData", "onPluginSetEnabledState", "UpdatePlugin"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["removePluginData"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["onPluginSetEnabledState"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["UpdatePlugin"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableStudioServiceOpenBrowser"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K5 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K6 ["ContentProvider"]
       16 NAMECALL                         R2 R2 K5 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K7 ["PluginPolicyService"]
       22 NAMECALL                         R3 R3 K5 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K8 ["GuiService"]
       28 NAMECALL                         R4 R4 K5 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K1 [game]
       33 LOADK                            R7 K9 ["HttpService"]
       34 NAMECALL                         R5 R5 K5 ["GetService"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K1 [game]
       39 LOADK                            R8 K10 ["TextService"]
       40 NAMECALL                         R6 R6 K5 ["GetService"]
       42 CALL                             R6 2 1
       43 GETIMPORT                        R10 K12 [script]
       45 GETTABLEKS                       R9 R10 K13 ["Parent"]
       47 GETTABLEKS                       R8 R9 K13 ["Parent"]
       49 GETTABLEKS                       R7 R8 K13 ["Parent"]
       51 GETIMPORT                        R8 K15 [require]
       53 GETTABLEKS                       R10 R7 K16 ["Packages"]
       55 GETTABLEKS                       R9 R10 K17 ["Roact"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K15 [require]
       60 GETTABLEKS                       R11 R7 K16 ["Packages"]
       62 GETTABLEKS                       R10 R11 K18 ["RoactRodux"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K15 [require]
       67 GETTABLEKS                       R13 R7 K19 ["Src"]
       69 GETTABLEKS                       R12 R13 K20 ["Util"]
       71 GETTABLEKS                       R11 R12 K21 ["Constants"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K15 [require]
       76 GETTABLEKS                       R14 R7 K19 ["Src"]
       78 GETTABLEKS                       R13 R14 K20 ["Util"]
       80 GETTABLEKS                       R12 R13 K22 ["UpdateStatus"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R13 K15 [require]
       85 GETTABLEKS                       R15 R7 K16 ["Packages"]
       87 GETTABLEKS                       R14 R15 K23 ["Framework"]
       89 CALL                             R13 1 1
       90 GETTABLEKS                       R12 R13 K24 ["ContextServices"]
       92 GETTABLEKS                       R13 R12 K25 ["withContext"]
       94 GETIMPORT                        R14 K15 [require]
       96 GETTABLEKS                       R17 R7 K19 ["Src"]
       98 GETTABLEKS                       R16 R17 K24 ["ContextServices"]
      100 GETTABLEKS                       R15 R16 K26 ["PluginAPI2"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K15 [require]
      105 GETTABLEKS                       R18 R7 K19 ["Src"]
      107 GETTABLEKS                       R17 R18 K24 ["ContextServices"]
      109 GETTABLEKS                       R16 R17 K27 ["Navigation"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K15 [require]
      114 GETTABLEKS                       R19 R7 K19 ["Src"]
      116 GETTABLEKS                       R18 R19 K28 ["Thunks"]
      118 GETTABLEKS                       R17 R18 K29 ["SetPluginEnabledState"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K15 [require]
      123 GETTABLEKS                       R20 R7 K19 ["Src"]
      125 GETTABLEKS                       R19 R20 K28 ["Thunks"]
      127 GETTABLEKS                       R18 R19 K30 ["UpdatePlugin"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K15 [require]
      132 GETTABLEKS                       R20 R7 K16 ["Packages"]
      134 GETTABLEKS                       R19 R20 K23 ["Framework"]
      136 CALL                             R18 1 1
      137 GETTABLEKS                       R19 R18 K31 ["UI"]
      139 GETTABLEKS                       R20 R19 K32 ["Button"]
      141 GETTABLEKS                       R21 R19 K33 ["TextLabel"]
      143 GETTABLEKS                       R22 R19 K34 ["DropdownMenu"]
      145 GETTABLEKS                       R23 R19 K35 ["ToggleButton"]
      147 GETTABLEKS                       R24 R19 K36 ["FakeLoadingBar"]
      149 GETIMPORT                        R25 K15 [require]
      151 GETTABLEKS                       R28 R7 K19 ["Src"]
      153 GETTABLEKS                       R27 R28 K37 ["Actions"]
      155 GETTABLEKS                       R26 R27 K38 ["RemovePluginData"]
      157 CALL                             R25 1 1
      158 GETIMPORT                        R26 K15 [require]
      160 GETTABLEKS                       R29 R7 K19 ["Src"]
      162 GETTABLEKS                       R28 R29 K39 ["Components"]
      164 GETTABLEKS                       R27 R28 K40 ["HttpRequestOverview"]
      166 CALL                             R26 1 1
      167 GETIMPORT                        R27 K15 [require]
      169 GETTABLEKS                       R30 R7 K19 ["Src"]
      171 GETTABLEKS                       R29 R30 K39 ["Components"]
      173 GETTABLEKS                       R28 R29 K41 ["UpdateOverview"]
      175 CALL                             R27 1 1
      176 GETIMPORT                        R28 K44 [UDim2.new]
      178 LOADN                            R29 0
      179 LOADN                            R30 120
      180 LOADN                            R31 0
      181 LOADN                            R32 8
      182 CALL                             R28 4 1
      183 DUPCLOSURE                       R29 K45 [PROTO_0]
      184 CAPTURE                          VAL R6
      185 GETIMPORT                        R31 K49 [Enum.Font.SourceSans]
      187 LOADK                            R34 K50 ["a"]
      188 LOADN                            R35 16
      189 MOVE                             R36 R31
      190 GETIMPORT                        R37 K52 [Vector2.new]
      192 LOADN                            R38 15
      193 LOADN                            R39 16
      194 CALL                             R37 2 -1
      195 NAMECALL                         R32 R6 K53 ["GetTextSize"]
      197 CALL                             R32 -1 1
      198 GETTABLEKS                       R30 R32 K54 ["Y"]
      200 GETTABLEKS                       R31 R8 K55 ["Component"]
      202 LOADK                            R33 K56 ["PluginEntry"]
      203 NAMECALL                         R31 R31 K57 ["extend"]
      205 CALL                             R31 2 1
      206 DUPCLOSURE                       R32 K58 [PROTO_13]
      207 CAPTURE                          VAL R2
      208 CAPTURE                          VAL R3
      209 CAPTURE                          VAL R5
      210 CAPTURE                          VAL R0
      211 CAPTURE                          VAL R1
      212 CAPTURE                          VAL R4
      213 CAPTURE                          VAL R10
      214 SETTABLEKS                       R32 R31 K59 ["init"]
      216 DUPCLOSURE                       R32 K60 [PROTO_14]
      217 CAPTURE                          VAL R11
      218 SETTABLEKS                       R32 R31 K61 ["getDerivedStateFromProps"]
      220 DUPCLOSURE                       R32 K62 [PROTO_16]
      221 CAPTURE                          VAL R11
      222 CAPTURE                          VAL R10
      223 CAPTURE                          VAL R8
      224 CAPTURE                          VAL R30
      225 CAPTURE                          VAL R26
      226 CAPTURE                          VAL R27
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R24
      229 CAPTURE                          VAL R28
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R22
      232 CAPTURE                          VAL R21
      233 SETTABLEKS                       R32 R31 K63 ["render"]
      235 MOVE                             R32 R13
      236 DUPTABLE                         R33 K68 [{"Navigation", "Localization", "Stylizer", "API", "Analytics"}]
      237 SETTABLEKS                       R15 R33 K27 ["Navigation"]
      239 GETTABLEKS                       R34 R12 K64 ["Localization"]
      241 SETTABLEKS                       R34 R33 K64 ["Localization"]
      243 GETTABLEKS                       R34 R12 K65 ["Stylizer"]
      245 SETTABLEKS                       R34 R33 K65 ["Stylizer"]
      247 SETTABLEKS                       R14 R33 K66 ["API"]
      249 GETTABLEKS                       R34 R12 K67 ["Analytics"]
      251 SETTABLEKS                       R34 R33 K67 ["Analytics"]
      253 CALL                             R32 1 1
      254 MOVE                             R33 R31
      255 CALL                             R32 1 1
      256 MOVE                             R31 R32
      257 DUPCLOSURE                       R32 K69 [PROTO_17]
      258 DUPCLOSURE                       R33 K70 [PROTO_21]
      259 CAPTURE                          VAL R25
      260 CAPTURE                          VAL R16
      261 CAPTURE                          VAL R17
      262 GETTABLEKS                       R34 R9 K71 ["connect"]
      264 MOVE                             R35 R32
      265 MOVE                             R36 R33
      266 CALL                             R34 2 1
      267 MOVE                             R35 R31
      268 CALL                             R34 1 -1
      269 RETURN                           R34 -1
