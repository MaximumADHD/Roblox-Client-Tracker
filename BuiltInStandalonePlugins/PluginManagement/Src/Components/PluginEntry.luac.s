PROTO_0:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 GETIMPORT                        R9 K2 [Vector2.new]
        6 MOVE                             R10 R3
        7 LOADN                            R11 16
        8 CALL                             R9 2 -1
        9 NAMECALL                         R4 R4 K3 ["GetTextSize"]
       11 CALL                             R4 -1 1
       12 GETTABLEKS                       R4 R4 K4 ["Y"]
       14 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["PluginManagementApi"]
        5 GETTABLEKS                       R2 R0 K2 ["onPluginSetEnabledState"]
        7 MOVE                             R3 R1
        8 GETTABLEKS                       R4 R0 K3 ["data"]
       10 LOADB                            R5 1
       11 CALL                             R2 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["PluginManagementApi"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["onPluginSetEnabledState"]
       10 MOVE                             R3 R1
       11 GETTABLEKS                       R4 R0 K3 ["data"]
       13 LOADB                            R5 0
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["data"]
        5 GETTABLEKS                       R0 R0 K2 ["assetId"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["BaseUrl"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K5 ["PluginManagementApi"]
       15 LOADK                            R5 K6 ["Toolbox"]
       16 NAMECALL                         R3 R3 K7 ["GetPluginPolicy"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R2 R3 K4 ["CreatorMarketplaceWebUrl"]
       21 JUMPIFNOT                        R2 ; [+11]
       22 GETIMPORT                        R3 K10 [string.format]
       24 LOADK                            R4 K11 ["%sasset/%s"]
       25 MOVE                             R5 R2
       26 GETUPVAL                         R6 2
       27 MOVE                             R8 R0
       28 NAMECALL                         R6 R6 K12 ["urlEncode"]
       30 CALL                             R6 2 -1
       31 CALL                             R3 -1 1
       32 JUMP                             ; [+10]
       33 GETIMPORT                        R3 K10 [string.format]
       35 LOADK                            R4 K13 ["%s/library/%s/asset"]
       36 MOVE                             R5 R1
       37 GETUPVAL                         R6 2
       38 MOVE                             R8 R0
       39 NAMECALL                         R6 R6 K12 ["urlEncode"]
       41 CALL                             R6 2 -1
       42 CALL                             R3 -1 1
       43 GETUPVAL                         R4 3
       44 JUMPIFNOT                        R4 ; [+10]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K0 ["props"]
       48 GETTABLEKS                       R4 R4 K5 ["PluginManagementApi"]
       50 MOVE                             R6 R3
       51 NAMECALL                         R4 R4 K14 ["OpenInBrowser_DONOTUSE"]
       53 CALL                             R4 2 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R4 4
       56 MOVE                             R6 R3
       57 NAMECALL                         R4 R4 K15 ["OpenBrowserWindow"]
       59 CALL                             R4 2 0
       60 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["removePluginData"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["data"]
       10 GETTABLEKS                       R1 R1 K3 ["assetId"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["props"]
       16 GETTABLEKS                       R0 R0 K4 ["PluginManagementApi"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K0 ["props"]
       21 GETTABLEKS                       R2 R2 K2 ["data"]
       23 GETTABLEKS                       R2 R2 K3 ["assetId"]
       25 NAMECALL                         R0 R0 K5 ["UninstallPlugin"]
       27 CALL                             R0 2 0
       28 GETIMPORT                        R0 K7 [wait]
       30 CALL                             R0 0 0
       31 GETUPVAL                         R0 0
       32 GETTABLEKS                       R0 R0 K0 ["props"]
       34 GETTABLEKS                       R0 R0 K8 ["onPluginUninstalled"]
       36 CALL                             R0 0 0
       37 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hideShowMore"]
        3 CALL                             R1 0 0
        4 GETTABLEKS                       R1 R0 K1 ["Key"]
        6 JUMPIFNOTEQKS                    R1 K2 ["Details"] ; [+6]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["showDetails"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R1 R0 K1 ["Key"]
       15 JUMPIFNOTEQKS                    R1 K4 ["Remove"] ; [+5]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K5 ["uninstallPlugin"]
       20 CALL                             R1 0 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["PluginManagementApi"]
        5 GETTABLEKS                       R2 R0 K2 ["Analytics"]
        7 LOADK                            R4 K3 ["TryUpdatePlugin"]
        8 GETTABLEKS                       R5 R0 K4 ["data"]
       10 GETTABLEKS                       R5 R5 K5 ["assetId"]
       12 NAMECALL                         R2 R2 K6 ["report"]
       14 CALL                             R2 3 0
       15 GETTABLEKS                       R2 R0 K7 ["UpdatePlugin"]
       17 MOVE                             R3 R1
       18 GETTABLEKS                       R4 R0 K4 ["data"]
       20 GETTABLEKS                       R5 R0 K2 ["Analytics"]
       22 CALL                             R2 3 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["data"]
        5 GETTABLEKS                       R1 R0 K2 ["creator"]
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETTABLEKS                       R1 R0 K2 ["creator"]
       10 GETTABLEKS                       R1 R1 K3 ["Id"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K4 ["BaseUrl"]
       15 GETIMPORT                        R3 K7 [string.format]
       17 LOADK                            R4 K8 ["%susers/%d/profile"]
       18 MOVE                             R5 R2
       19 GETUPVAL                         R6 2
       20 MOVE                             R8 R1
       21 NAMECALL                         R6 R6 K9 ["urlEncode"]
       23 CALL                             R6 2 -1
       24 CALL                             R3 -1 1
       25 GETUPVAL                         R4 3
       26 JUMPIFNOT                        R4 ; [+10]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K0 ["props"]
       30 GETTABLEKS                       R4 R4 K10 ["PluginManagementApi"]
       32 MOVE                             R6 R3
       33 NAMECALL                         R4 R4 K11 ["OpenInBrowser_DONOTUSE"]
       35 CALL                             R4 2 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R4 4
       38 MOVE                             R6 R3
       39 NAMECALL                         R4 R4 K12 ["OpenBrowserWindow"]
       41 CALL                             R4 2 0
       42 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Navigation"]
        5 NAMECALL                         R0 R0 K2 ["get"]
        7 CALL                             R0 1 1
        8 GETTABLEKS                       R1 R0 K3 ["navigation"]
       10 GETTABLEKS                       R1 R1 K4 ["navigate"]
       12 DUPTABLE                         R2 K7 [{"routeName", "params"}]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K8 ["APP_PAGE"]
       16 GETTABLEKS                       R3 R3 K9 ["Detail"]
       18 SETTABLEKS                       R3 R2 K5 ["routeName"]
       20 DUPTABLE                         R3 K11 [{"assetId"}]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["props"]
       24 GETTABLEKS                       R4 R4 K12 ["data"]
       26 GETTABLEKS                       R4 R4 K10 ["assetId"]
       28 SETTABLEKS                       R4 R3 K10 ["assetId"]
       30 SETTABLEKS                       R3 R2 K6 ["params"]
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["data"]
        5 GETTABLEKS                       R1 R0 K2 ["isModerated"]
        7 NOT                              R2 R1
        8 JUMPIFNOT                        R2 ; [+2]
        9 GETTABLEKS                       R2 R0 K3 ["enabled"]
       11 JUMPIFNOT                        R2 ; [+5]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K4 ["onPluginDisabled"]
       15 CALL                             R3 0 0
       16 RETURN                           R0 0
       17 JUMPIF                           R1 ; [+4]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K5 ["onPluginEnabled"]
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
       27 SETTABLEKS                       R1 R0 K7 ["showDetails"]
       29 NEWCLOSURE                       R1 P4
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K8 ["uninstallPlugin"]
       33 NEWCLOSURE                       R1 P5
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K9 ["onShowMoreActivated"]
       37 NEWCLOSURE                       R1 P6
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K10 ["hideShowMore"]
       41 NEWCLOSURE                       R1 P7
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K11 ["moreItemClicked"]
       45 NEWCLOSURE                       R1 P8
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R1 R0 K12 ["updatePlugin"]
       49 NEWCLOSURE                       R1 P9
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          UPVAL U3
       55 SETTABLEKS                       R1 R0 K13 ["openCreatorProfile"]
       57 NEWCLOSURE                       R1 P10
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U4
       60 SETTABLEKS                       R1 R0 K14 ["openPluginDetails"]
       62 NEWCLOSURE                       R1 P11
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R1 R0 K15 ["onToggleClick"]
       66 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["data"]
        2 GETTABLEKS                       R2 R2 K1 ["status"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["Success"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
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
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K0 ["createElement"]
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
       45 GETUPVAL                         R11 0
       46 GETTABLEKS                       R11 R11 K0 ["createElement"]
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
       48 GETTABLEKS                       R20 R3 K21 ["creator"]
       50 GETTABLEKS                       R20 R20 K22 ["Name"]
       52 JUMPIF                           R20 ; [+1]
       53 LOADK                            R20 K18 [""]
       54 GETTABLEKS                       R21 R11 K23 ["Images"]
       56 GETTABLEKS                       R21 R21 K24 ["AssetThumbnailUrl"]
       58 MOVE                             R22 R16
       59 CALL                             R21 1 1
       60 NOT                              R22 R14
       61 JUMPIFNOT                        R22 ; [+9]
       62 NOT                              R22 R13
       63 JUMPIFNOT                        R22 ; [+7]
       64 GETUPVAL                         R23 0
       65 GETTABLEKS                       R23 R23 K25 ["Updating"]
       67 JUMPIFNOTEQ                      R15 R23 ; [+2]
       69 LOADB                            R22 0 +1
       70 LOADB                            R22 1
       71 GETIMPORT                        R23 K28 [UDim2.new]
       73 LOADN                            R24 1
       74 GETUPVAL                         R28 1
       75 GETTABLEKS                       R28 R28 K30 ["PLUGIN_HORIZONTAL_PADDING"]
       77 MULK                             R27 R28 K29 [-3]
       78 GETUPVAL                         R28 1
       79 GETTABLEKS                       R28 R28 K31 ["PLUGIN_ENABLE_WIDTH"]
       81 SUB                              R26 R27 R28
       82 GETUPVAL                         R27 1
       83 GETTABLEKS                       R27 R27 K32 ["PLUGIN_CONTEXT_WIDTH"]
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
      103 LOADNIL                          R27
      104 GETUPVAL                         R28 2
      105 CALL                             R28 0 1
      106 JUMPIFNOT                        R28 ; [+42]
      107 GETUPVAL                         R29 1
      108 GETTABLEKS                       R29 R29 K34 ["THUMBNAIL_SIZE"]
      110 LOADN                            R31 2
      111 GETUPVAL                         R32 1
      112 GETTABLEKS                       R32 R32 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      114 MUL                              R30 R31 R32
      115 ADD                              R28 R29 R30
      116 GETUPVAL                         R31 1
      117 GETTABLEKS                       R31 R31 K31 ["PLUGIN_ENABLE_WIDTH"]
      119 GETUPVAL                         R32 1
      120 GETTABLEKS                       R32 R32 K32 ["PLUGIN_CONTEXT_WIDTH"]
      122 ADD                              R30 R31 R32
      123 LOADN                            R32 3
      124 GETUPVAL                         R33 1
      125 GETTABLEKS                       R33 R33 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      127 MUL                              R31 R32 R33
      128 ADD                              R29 R30 R31
      129 LOADN                            R30 0
      130 JUMPIFNOT                        R22 ; [+8]
      131 GETUPVAL                         R31 1
      132 GETTABLEKS                       R31 R31 K35 ["HEADER_UPDATE_WIDTH"]
      134 GETUPVAL                         R32 1
      135 GETTABLEKS                       R32 R32 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      137 ADD                              R30 R31 R32
      138 JUMP                             ; [+8]
      139 JUMPIFNOT                        R14 ; [+7]
      140 GETUPVAL                         R31 1
      141 GETTABLEKS                       R31 R31 K36 ["MODERATED_WARNING_WIDTH"]
      143 GETUPVAL                         R32 1
      144 GETTABLEKS                       R32 R32 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      146 ADD                              R30 R31 R32
      147 ADD                              R31 R28 R30
      148 ADD                              R27 R31 R29
      149 GETUPVAL                         R28 3
      150 GETTABLEKS                       R28 R28 K37 ["createElement"]
      152 LOADK                            R29 K38 ["Frame"]
      153 DUPTABLE                         R30 K42 [{"BackgroundColor3", "BorderSizePixel", "LayoutOrder", "Size"}]
      154 GETTABLEKS                       R31 R10 K43 ["BackgroundColor"]
      156 SETTABLEKS                       R31 R30 K39 ["BackgroundColor3"]
      158 LOADN                            R31 0
      159 SETTABLEKS                       R31 R30 K40 ["BorderSizePixel"]
      161 SETTABLEKS                       R12 R30 K12 ["LayoutOrder"]
      163 GETIMPORT                        R31 K28 [UDim2.new]
      165 LOADN                            R32 1
      166 GETUPVAL                         R33 1
      167 GETTABLEKS                       R33 R33 K44 ["SCROLLBAR_WIDTH_ADJUSTMENT"]
      169 LOADN                            R34 0
      170 GETUPVAL                         R35 1
      171 GETTABLEKS                       R35 R35 K45 ["PLUGIN_ENTRY_HEIGHT"]
      173 CALL                             R31 4 1
      174 SETTABLEKS                       R31 R30 K41 ["Size"]
      176 DUPTABLE                         R31 K55 [{"Padding", "Thumbnail", "Contents", "ModeratedWarning", "UpdateButton", "ProgressIndicator", "SuccessLabel", "ToggleButton", "ShowMoreButton"}]
      177 GETUPVAL                         R32 3
      178 GETTABLEKS                       R32 R32 K37 ["createElement"]
      180 LOADK                            R33 K56 ["UIPadding"]
      181 DUPTABLE                         R34 K59 [{"PaddingTop", "PaddingBottom"}]
      182 GETIMPORT                        R35 K61 [UDim.new]
      184 LOADN                            R36 0
      185 GETUPVAL                         R37 1
      186 GETTABLEKS                       R37 R37 K62 ["PLUGIN_ENTRY_PADDING"]
      188 CALL                             R35 2 1
      189 SETTABLEKS                       R35 R34 K57 ["PaddingTop"]
      191 GETIMPORT                        R35 K61 [UDim.new]
      193 LOADN                            R36 0
      194 GETUPVAL                         R37 1
      195 GETTABLEKS                       R37 R37 K62 ["PLUGIN_ENTRY_PADDING"]
      197 CALL                             R35 2 1
      198 SETTABLEKS                       R35 R34 K58 ["PaddingBottom"]
      200 CALL                             R32 2 1
      201 SETTABLEKS                       R32 R31 K46 ["Padding"]
      203 GETUPVAL                         R32 3
      204 GETTABLEKS                       R32 R32 K37 ["createElement"]
      206 LOADK                            R33 K63 ["ImageLabel"]
      207 DUPTABLE                         R34 K67 [{"Size", "Position", "Image", "BackgroundTransparency"}]
      208 GETIMPORT                        R35 K28 [UDim2.new]
      210 LOADN                            R36 0
      211 GETUPVAL                         R37 1
      212 GETTABLEKS                       R37 R37 K34 ["THUMBNAIL_SIZE"]
      214 LOADN                            R38 0
      215 GETUPVAL                         R39 1
      216 GETTABLEKS                       R39 R39 K34 ["THUMBNAIL_SIZE"]
      218 CALL                             R35 4 1
      219 SETTABLEKS                       R35 R34 K41 ["Size"]
      221 GETIMPORT                        R35 K28 [UDim2.new]
      223 LOADN                            R36 0
      224 GETUPVAL                         R37 1
      225 GETTABLEKS                       R37 R37 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      227 LOADN                            R38 0
      228 GETUPVAL                         R39 1
      229 GETTABLEKS                       R39 R39 K68 ["PLUGIN_VERTICAL_PADDING"]
      231 CALL                             R35 4 1
      232 SETTABLEKS                       R35 R34 K64 ["Position"]
      234 SETTABLEKS                       R21 R34 K65 ["Image"]
      236 LOADN                            R35 1
      237 SETTABLEKS                       R35 R34 K66 ["BackgroundTransparency"]
      239 CALL                             R32 2 1
      240 SETTABLEKS                       R32 R31 K47 ["Thumbnail"]
      242 GETUPVAL                         R32 3
      243 GETTABLEKS                       R32 R32 K37 ["createElement"]
      245 LOADK                            R33 K38 ["Frame"]
      246 DUPTABLE                         R34 K69 [{"BackgroundTransparency", "Position", "Size"}]
      247 LOADN                            R35 1
      248 SETTABLEKS                       R35 R34 K66 ["BackgroundTransparency"]
      250 GETIMPORT                        R35 K28 [UDim2.new]
      252 LOADN                            R36 0
      253 GETUPVAL                         R38 1
      254 GETTABLEKS                       R38 R38 K34 ["THUMBNAIL_SIZE"]
      256 GETUPVAL                         R40 1
      257 GETTABLEKS                       R40 R40 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      259 MULK                             R39 R40 K70 [2]
      260 ADD                              R37 R38 R39
      261 LOADN                            R38 0
      262 LOADN                            R39 0
      263 CALL                             R35 4 1
      264 SETTABLEKS                       R35 R34 K64 ["Position"]
      266 GETUPVAL                         R36 2
      267 CALL                             R36 0 1
      268 JUMPIFNOT                        R36 ; [+8]
      269 GETIMPORT                        R35 K28 [UDim2.new]
      271 LOADN                            R36 1
      272 MINUS                            R37 R27
      273 LOADN                            R38 1
      274 LOADN                            R39 0
      275 CALL                             R35 4 1
      276 JUMP                             ; [+14]
      277 GETIMPORT                        R35 K28 [UDim2.new]
      279 LOADK                            R36 K33 [0.5]
      280 GETUPVAL                         R39 1
      281 GETTABLEKS                       R39 R39 K34 ["THUMBNAIL_SIZE"]
      283 MINUS                            R38 R39
      284 GETUPVAL                         R39 1
      285 GETTABLEKS                       R39 R39 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      287 SUB                              R37 R38 R39
      288 LOADN                            R38 1
      289 LOADN                            R39 0
      290 CALL                             R35 4 1
      291 SETTABLEKS                       R35 R34 K41 ["Size"]
      293 DUPTABLE                         R35 K76 [{"Layout", "Name", "Creator", "Description", "HttpRequestOverview", "UpdateOverview"}]
      294 GETUPVAL                         R36 3
      295 GETTABLEKS                       R36 R36 K37 ["createElement"]
      297 LOADK                            R37 K77 ["UIListLayout"]
      298 DUPTABLE                         R38 K80 [{"SortOrder", "FillDirection", "Padding"}]
      299 GETIMPORT                        R39 K82 [Enum.SortOrder.LayoutOrder]
      301 SETTABLEKS                       R39 R38 K78 ["SortOrder"]
      303 GETIMPORT                        R39 K84 [Enum.FillDirection.Vertical]
      305 SETTABLEKS                       R39 R38 K79 ["FillDirection"]
      307 GETIMPORT                        R39 K61 [UDim.new]
      309 LOADN                            R40 0
      310 GETUPVAL                         R42 2
      311 CALL                             R42 0 1
      312 JUMPIFNOT                        R42 ; [+4]
      313 GETUPVAL                         R41 1
      314 GETTABLEKS                       R41 R41 K85 ["PLUGIN_ENTRY_INNER_VERTICAL_PADDING"]
      316 JUMP                             ; [+1]
      317 LOADN                            R41 2
      318 CALL                             R39 2 1
      319 SETTABLEKS                       R39 R38 K46 ["Padding"]
      321 CALL                             R36 2 1
      322 SETTABLEKS                       R36 R35 K71 ["Layout"]
      324 GETUPVAL                         R36 3
      325 GETTABLEKS                       R36 R36 K37 ["createElement"]
      327 LOADK                            R37 K86 ["TextLabel"]
      328 DUPTABLE                         R38 K93 [{"LayoutOrder", "TextWrapped", "TextSize", "Size", "BackgroundTransparency", "TextXAlignment", "Text", "TextColor3", "Font"}]
      329 LOADN                            R39 0
      330 SETTABLEKS                       R39 R38 K12 ["LayoutOrder"]
      332 LOADB                            R39 1
      333 SETTABLEKS                       R39 R38 K87 ["TextWrapped"]
      335 LOADN                            R39 22
      336 SETTABLEKS                       R39 R38 K88 ["TextSize"]
      338 GETIMPORT                        R39 K28 [UDim2.new]
      340 LOADN                            R40 1
      341 LOADN                            R41 0
      342 LOADN                            R42 0
      343 GETUPVAL                         R44 2
      344 CALL                             R44 0 1
      345 JUMPIFNOT                        R44 ; [+4]
      346 GETUPVAL                         R43 1
      347 GETTABLEKS                       R43 R43 K94 ["PLUGIN_NAME_HEIGHT"]
      349 JUMP                             ; [+1]
      350 LOADN                            R43 20
      351 CALL                             R39 4 1
      352 SETTABLEKS                       R39 R38 K41 ["Size"]
      354 LOADN                            R39 1
      355 SETTABLEKS                       R39 R38 K66 ["BackgroundTransparency"]
      357 GETIMPORT                        R39 K96 [Enum.TextXAlignment.Left]
      359 SETTABLEKS                       R39 R38 K89 ["TextXAlignment"]
      361 SETTABLEKS                       R18 R38 K90 ["Text"]
      363 GETTABLEKS                       R39 R10 K97 ["EmphasisTextColor"]
      365 SETTABLEKS                       R39 R38 K91 ["TextColor3"]
      367 GETIMPORT                        R39 K99 [Enum.Font.SourceSans]
      369 SETTABLEKS                       R39 R38 K92 ["Font"]
      371 CALL                             R36 2 1
      372 SETTABLEKS                       R36 R35 K22 ["Name"]
      374 GETUPVAL                         R36 3
      375 GETTABLEKS                       R36 R36 K37 ["createElement"]
      377 LOADK                            R37 K100 ["TextButton"]
      378 NEWTABLE                         R38 16 0
      380 LOADN                            R39 1
      381 SETTABLEKS                       R39 R38 K12 ["LayoutOrder"]
      383 LOADB                            R39 1
      384 SETTABLEKS                       R39 R38 K87 ["TextWrapped"]
      386 GETIMPORT                        R39 K28 [UDim2.new]
      388 LOADN                            R40 1
      389 LOADN                            R41 0
      390 LOADN                            R42 0
      391 GETUPVAL                         R44 2
      392 CALL                             R44 0 1
      393 JUMPIFNOT                        R44 ; [+4]
      394 GETUPVAL                         R43 1
      395 GETTABLEKS                       R43 R43 K101 ["PLUGIN_CREATOR_HEIGHT"]
      397 JUMP                             ; [+1]
      398 LOADN                            R43 16
      399 CALL                             R39 4 1
      400 SETTABLEKS                       R39 R38 K41 ["Size"]
      402 LOADN                            R39 1
      403 SETTABLEKS                       R39 R38 K66 ["BackgroundTransparency"]
      405 GETIMPORT                        R39 K96 [Enum.TextXAlignment.Left]
      407 SETTABLEKS                       R39 R38 K89 ["TextXAlignment"]
      409 SETTABLEKS                       R20 R38 K90 ["Text"]
      411 GETIMPORT                        R39 K103 [Enum.Font.SourceSansLight]
      413 SETTABLEKS                       R39 R38 K92 ["Font"]
      415 GETTABLEKS                       R39 R10 K104 ["LinkColor"]
      417 SETTABLEKS                       R39 R38 K91 ["TextColor3"]
      419 LOADN                            R39 16
      420 SETTABLEKS                       R39 R38 K88 ["TextSize"]
      422 LOADN                            R39 1
      423 SETTABLEKS                       R39 R38 K40 ["BorderSizePixel"]
      425 GETUPVAL                         R39 3
      426 GETTABLEKS                       R39 R39 K105 ["Event"]
      428 GETTABLEKS                       R39 R39 K106 ["Activated"]
      430 GETTABLEKS                       R40 R0 K107 ["openCreatorProfile"]
      432 SETTABLE                         R40 R38 R39
      433 CALL                             R36 2 1
      434 SETTABLEKS                       R36 R35 K72 ["Creator"]
      436 GETUPVAL                         R36 3
      437 GETTABLEKS                       R36 R36 K37 ["createElement"]
      439 LOADK                            R37 K86 ["TextLabel"]
      440 DUPTABLE                         R38 K111 [{"ClipsDescendants", "LayoutOrder", "TextWrapped", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "Text", "TextColor3", "TextTruncate", "Font", "TextSize"}]
      441 LOADB                            R39 1
      442 SETTABLEKS                       R39 R38 K108 ["ClipsDescendants"]
      444 LOADN                            R39 2
      445 SETTABLEKS                       R39 R38 K12 ["LayoutOrder"]
      447 LOADB                            R39 1
      448 SETTABLEKS                       R39 R38 K87 ["TextWrapped"]
      450 GETIMPORT                        R39 K28 [UDim2.new]
      452 LOADN                            R40 1
      453 LOADN                            R41 0
      454 LOADN                            R42 0
      455 GETUPVAL                         R44 2
      456 CALL                             R44 0 1
      457 JUMPIFNOT                        R44 ; [+4]
      458 GETUPVAL                         R43 1
      459 GETTABLEKS                       R43 R43 K112 ["PLUGIN_DESCRIPTION_HEIGHT"]
      461 JUMP                             ; [+2]
      462 GETUPVAL                         R44 4
      463 MULK                             R43 R44 K70 [2]
      464 CALL                             R39 4 1
      465 SETTABLEKS                       R39 R38 K41 ["Size"]
      467 LOADN                            R39 1
      468 SETTABLEKS                       R39 R38 K66 ["BackgroundTransparency"]
      470 GETIMPORT                        R39 K96 [Enum.TextXAlignment.Left]
      472 SETTABLEKS                       R39 R38 K89 ["TextXAlignment"]
      474 GETIMPORT                        R39 K114 [Enum.TextYAlignment.Top]
      476 SETTABLEKS                       R39 R38 K109 ["TextYAlignment"]
      478 SETTABLEKS                       R19 R38 K90 ["Text"]
      480 GETTABLEKS                       R39 R10 K115 ["TextColor"]
      482 SETTABLEKS                       R39 R38 K91 ["TextColor3"]
      484 GETIMPORT                        R39 K117 [Enum.TextTruncate.AtEnd]
      486 SETTABLEKS                       R39 R38 K110 ["TextTruncate"]
      488 GETIMPORT                        R39 K99 [Enum.Font.SourceSans]
      490 SETTABLEKS                       R39 R38 K92 ["Font"]
      492 LOADN                            R39 16
      493 SETTABLEKS                       R39 R38 K88 ["TextSize"]
      495 CALL                             R36 2 1
      496 SETTABLEKS                       R36 R35 K73 ["Description"]
      498 GETUPVAL                         R36 3
      499 GETTABLEKS                       R36 R36 K37 ["createElement"]
      501 GETUPVAL                         R37 5
      502 DUPTABLE                         R38 K118 [{"assetId", "LayoutOrder"}]
      503 GETTABLEKS                       R39 R3 K16 ["assetId"]
      505 SETTABLEKS                       R39 R38 K16 ["assetId"]
      507 LOADN                            R39 3
      508 SETTABLEKS                       R39 R38 K12 ["LayoutOrder"]
      510 CALL                             R36 2 1
      511 SETTABLEKS                       R36 R35 K74 ["HttpRequestOverview"]
      513 GETUPVAL                         R36 3
      514 GETTABLEKS                       R36 R36 K37 ["createElement"]
      516 GETUPVAL                         R37 6
      517 DUPTABLE                         R38 K120 [{"data", "LayoutOrder", "plugin", "updateAvailable"}]
      518 SETTABLEKS                       R3 R38 K2 ["data"]
      520 LOADN                            R39 4
      521 SETTABLEKS                       R39 R38 K12 ["LayoutOrder"]
      523 SETTABLEKS                       R8 R38 K7 ["plugin"]
      525 SETTABLEKS                       R22 R38 K119 ["updateAvailable"]
      527 CALL                             R36 2 1
      528 SETTABLEKS                       R36 R35 K75 ["UpdateOverview"]
      530 CALL                             R32 3 1
      531 SETTABLEKS                       R32 R31 K48 ["Contents"]
      533 MOVE                             R32 R14
      534 JUMPIFNOT                        R32 ; [+60]
      535 GETUPVAL                         R32 3
      536 GETTABLEKS                       R32 R32 K37 ["createElement"]
      538 LOADK                            R33 K86 ["TextLabel"]
      539 DUPTABLE                         R34 K122 [{"AnchorPoint", "Size", "Position", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextSize", "TextWrapped", "Font", "TextColor3", "Text"}]
      540 GETIMPORT                        R35 K124 [Vector2.new]
      542 LOADN                            R36 1
      543 LOADK                            R37 K33 [0.5]
      544 CALL                             R35 2 1
      545 SETTABLEKS                       R35 R34 K121 ["AnchorPoint"]
      547 GETIMPORT                        R35 K28 [UDim2.new]
      549 LOADN                            R36 0
      550 GETUPVAL                         R37 1
      551 GETTABLEKS                       R37 R37 K36 ["MODERATED_WARNING_WIDTH"]
      553 LOADN                            R38 0
      554 GETUPVAL                         R39 1
      555 GETTABLEKS                       R39 R39 K125 ["HEADER_BUTTON_SIZE"]
      557 CALL                             R35 4 1
      558 SETTABLEKS                       R35 R34 K41 ["Size"]
      560 SETTABLEKS                       R23 R34 K64 ["Position"]
      562 LOADN                            R35 1
      563 SETTABLEKS                       R35 R34 K66 ["BackgroundTransparency"]
      565 GETIMPORT                        R35 K127 [Enum.TextXAlignment.Right]
      567 SETTABLEKS                       R35 R34 K89 ["TextXAlignment"]
      569 GETIMPORT                        R35 K114 [Enum.TextYAlignment.Top]
      571 SETTABLEKS                       R35 R34 K109 ["TextYAlignment"]
      573 LOADN                            R35 14
      574 SETTABLEKS                       R35 R34 K88 ["TextSize"]
      576 LOADB                            R35 1
      577 SETTABLEKS                       R35 R34 K87 ["TextWrapped"]
      579 GETIMPORT                        R35 K99 [Enum.Font.SourceSans]
      581 SETTABLEKS                       R35 R34 K92 ["Font"]
      583 GETTABLEKS                       R35 R10 K115 ["TextColor"]
      585 SETTABLEKS                       R35 R34 K91 ["TextColor3"]
      587 LOADK                            R37 K128 ["Entry"]
      588 LOADK                            R38 K49 ["ModeratedWarning"]
      589 NAMECALL                         R35 R9 K129 ["getText"]
      591 CALL                             R35 3 1
      592 SETTABLEKS                       R35 R34 K90 ["Text"]
      594 CALL                             R32 2 1
      595 SETTABLEKS                       R32 R31 K49 ["ModeratedWarning"]
      597 MOVE                             R32 R22
      598 JUMPIFNOT                        R32 ; [+188]
      599 GETUPVAL                         R32 3
      600 GETTABLEKS                       R32 R32 K37 ["createElement"]
      602 GETUPVAL                         R33 7
      603 DUPTABLE                         R34 K132 [{"AnchorPoint", "Size", "Position", "Style", "OnClick"}]
      604 GETIMPORT                        R35 K124 [Vector2.new]
      606 LOADN                            R36 1
      607 LOADK                            R37 K33 [0.5]
      608 CALL                             R35 2 1
      609 SETTABLEKS                       R35 R34 K121 ["AnchorPoint"]
      611 GETIMPORT                        R35 K28 [UDim2.new]
      613 LOADN                            R36 0
      614 GETUPVAL                         R37 1
      615 GETTABLEKS                       R37 R37 K35 ["HEADER_UPDATE_WIDTH"]
      617 LOADN                            R38 0
      618 GETUPVAL                         R39 1
      619 GETTABLEKS                       R39 R39 K125 ["HEADER_BUTTON_SIZE"]
      621 CALL                             R35 4 1
      622 SETTABLEKS                       R35 R34 K41 ["Size"]
      624 SETTABLEKS                       R23 R34 K64 ["Position"]
      626 LOADK                            R35 K133 ["Round"]
      627 SETTABLEKS                       R35 R34 K130 ["Style"]
      629 GETTABLEKS                       R35 R0 K134 ["updatePlugin"]
      631 SETTABLEKS                       R35 R34 K131 ["OnClick"]
      633 DUPTABLE                         R35 K138 [{"Label", "DateLabel", "ErrorLabel"}]
      634 GETUPVAL                         R36 3
      635 GETTABLEKS                       R36 R36 K37 ["createElement"]
      637 LOADK                            R37 K86 ["TextLabel"]
      638 DUPTABLE                         R38 K139 [{"Size", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency"}]
      639 GETIMPORT                        R39 K28 [UDim2.new]
      641 LOADN                            R40 1
      642 LOADN                            R41 0
      643 LOADN                            R42 1
      644 LOADN                            R43 0
      645 CALL                             R39 4 1
      646 SETTABLEKS                       R39 R38 K41 ["Size"]
      648 LOADK                            R41 K128 ["Entry"]
      649 LOADK                            R42 K50 ["UpdateButton"]
      650 NAMECALL                         R39 R9 K129 ["getText"]
      652 CALL                             R39 3 1
      653 SETTABLEKS                       R39 R38 K90 ["Text"]
      655 GETTABLEKS                       R39 R10 K115 ["TextColor"]
      657 SETTABLEKS                       R39 R38 K91 ["TextColor3"]
      659 GETIMPORT                        R39 K99 [Enum.Font.SourceSans]
      661 SETTABLEKS                       R39 R38 K92 ["Font"]
      663 LOADN                            R39 18
      664 SETTABLEKS                       R39 R38 K88 ["TextSize"]
      666 LOADN                            R39 1
      667 SETTABLEKS                       R39 R38 K66 ["BackgroundTransparency"]
      669 CALL                             R36 2 1
      670 SETTABLEKS                       R36 R35 K135 ["Label"]
      672 LOADB                            R36 0
      673 GETUPVAL                         R37 0
      674 GETTABLEKS                       R37 R37 K140 ["Error"]
      676 JUMPIFEQ                         R15 R37 ; [+54]
      678 GETUPVAL                         R36 3
      679 GETTABLEKS                       R36 R36 K37 ["createElement"]
      681 LOADK                            R37 K86 ["TextLabel"]
      682 DUPTABLE                         R38 K142 [{"BackgroundTransparency", "Size", "Position", "TextSize", "Font", "TextColor3", "TextTransparency", "Text"}]
      683 LOADN                            R39 1
      684 SETTABLEKS                       R39 R38 K66 ["BackgroundTransparency"]
      686 GETIMPORT                        R39 K28 [UDim2.new]
      688 LOADN                            R40 1
      689 LOADN                            R41 0
      690 LOADN                            R42 0
      691 LOADN                            R43 14
      692 CALL                             R39 4 1
      693 SETTABLEKS                       R39 R38 K41 ["Size"]
      695 GETIMPORT                        R39 K28 [UDim2.new]
      697 LOADN                            R40 0
      698 LOADN                            R41 0
      699 LOADN                            R42 1
      700 LOADN                            R43 3
      701 CALL                             R39 4 1
      702 SETTABLEKS                       R39 R38 K64 ["Position"]
      704 LOADN                            R39 14
      705 SETTABLEKS                       R39 R38 K88 ["TextSize"]
      707 GETIMPORT                        R39 K99 [Enum.Font.SourceSans]
      709 SETTABLEKS                       R39 R38 K92 ["Font"]
      711 GETTABLEKS                       R39 R10 K115 ["TextColor"]
      713 SETTABLEKS                       R39 R38 K91 ["TextColor3"]
      715 LOADN                            R39 0
      716 SETTABLEKS                       R39 R38 K141 ["TextTransparency"]
      718 LOADK                            R41 K128 ["Entry"]
      719 LOADK                            R42 K143 ["LastUpdatedDate"]
      720 DUPTABLE                         R43 K145 [{"date"}]
      721 GETTABLEKS                       R44 R3 K146 ["updated"]
      723 SETTABLEKS                       R44 R43 K144 ["date"]
      725 NAMECALL                         R39 R9 K129 ["getText"]
      727 CALL                             R39 4 1
      728 SETTABLEKS                       R39 R38 K90 ["Text"]
      730 CALL                             R36 2 1
      731 SETTABLEKS                       R36 R35 K136 ["DateLabel"]
      733 LOADB                            R36 0
      734 GETUPVAL                         R37 0
      735 GETTABLEKS                       R37 R37 K140 ["Error"]
      737 JUMPIFNOTEQ                      R15 R37 ; [+46]
      739 GETUPVAL                         R36 3
      740 GETTABLEKS                       R36 R36 K37 ["createElement"]
      742 LOADK                            R37 K86 ["TextLabel"]
      743 DUPTABLE                         R38 K147 [{"BackgroundTransparency", "Size", "Position", "TextSize", "Font", "TextColor3", "Text"}]
      744 LOADN                            R39 1
      745 SETTABLEKS                       R39 R38 K66 ["BackgroundTransparency"]
      747 GETIMPORT                        R39 K28 [UDim2.new]
      749 LOADN                            R40 1
      750 LOADN                            R41 0
      751 LOADN                            R42 0
      752 LOADN                            R43 14
      753 CALL                             R39 4 1
      754 SETTABLEKS                       R39 R38 K41 ["Size"]
      756 GETIMPORT                        R39 K28 [UDim2.new]
      758 LOADN                            R40 0
      759 LOADN                            R41 0
      760 LOADN                            R42 1
      761 LOADN                            R43 3
      762 CALL                             R39 4 1
      763 SETTABLEKS                       R39 R38 K64 ["Position"]
      765 LOADN                            R39 14
      766 SETTABLEKS                       R39 R38 K88 ["TextSize"]
      768 GETIMPORT                        R39 K99 [Enum.Font.SourceSans]
      770 SETTABLEKS                       R39 R38 K92 ["Font"]
      772 GETTABLEKS                       R39 R10 K148 ["ErrorColor"]
      774 SETTABLEKS                       R39 R38 K91 ["TextColor3"]
      776 LOADK                            R41 K128 ["Entry"]
      777 LOADK                            R42 K149 ["UpdateError"]
      778 NAMECALL                         R39 R9 K129 ["getText"]
      780 CALL                             R39 3 1
      781 SETTABLEKS                       R39 R38 K90 ["Text"]
      783 CALL                             R36 2 1
      784 SETTABLEKS                       R36 R35 K137 ["ErrorLabel"]
      786 CALL                             R32 3 1
      787 SETTABLEKS                       R32 R31 K50 ["UpdateButton"]
      789 NOT                              R32 R13
      790 JUMPIFNOT                        R32 ; [+27]
      791 LOADB                            R32 0
      792 GETUPVAL                         R33 0
      793 GETTABLEKS                       R33 R33 K25 ["Updating"]
      795 JUMPIFNOTEQ                      R15 R33 ; [+22]
      797 GETUPVAL                         R32 3
      798 GETTABLEKS                       R32 R32 K37 ["createElement"]
      800 GETUPVAL                         R33 8
      801 DUPTABLE                         R34 K151 [{"AnchorPoint", "Position", "Size", "LoadingTime"}]
      802 GETIMPORT                        R35 K124 [Vector2.new]
      804 LOADN                            R36 1
      805 LOADK                            R37 K33 [0.5]
      806 CALL                             R35 2 1
      807 SETTABLEKS                       R35 R34 K121 ["AnchorPoint"]
      809 SETTABLEKS                       R23 R34 K64 ["Position"]
      811 GETUPVAL                         R35 9
      812 SETTABLEKS                       R35 R34 K41 ["Size"]
      814 LOADK                            R35 K33 [0.5]
      815 SETTABLEKS                       R35 R34 K150 ["LoadingTime"]
      817 CALL                             R32 2 1
      818 SETTABLEKS                       R32 R31 K51 ["ProgressIndicator"]
      820 MOVE                             R32 R13
      821 JUMPIFNOT                        R32 ; [+52]
      822 GETTABLEKS                       R32 R2 K152 ["showSuccessMessage"]
      824 JUMPIFNOT                        R32 ; [+49]
      825 GETUPVAL                         R32 3
      826 GETTABLEKS                       R32 R32 K37 ["createElement"]
      828 LOADK                            R33 K86 ["TextLabel"]
      829 DUPTABLE                         R34 K153 [{"BackgroundTransparency", "Size", "AnchorPoint", "Position", "TextSize", "Font", "TextColor3", "TextXAlignment", "Text"}]
      830 LOADN                            R35 1
      831 SETTABLEKS                       R35 R34 K66 ["BackgroundTransparency"]
      833 GETIMPORT                        R35 K28 [UDim2.new]
      835 LOADN                            R36 1
      836 LOADN                            R37 0
      837 LOADN                            R38 0
      838 LOADN                            R39 14
      839 CALL                             R35 4 1
      840 SETTABLEKS                       R35 R34 K41 ["Size"]
      842 GETIMPORT                        R35 K124 [Vector2.new]
      844 LOADN                            R36 1
      845 LOADK                            R37 K33 [0.5]
      846 CALL                             R35 2 1
      847 SETTABLEKS                       R35 R34 K121 ["AnchorPoint"]
      849 SETTABLEKS                       R23 R34 K64 ["Position"]
      851 LOADN                            R35 14
      852 SETTABLEKS                       R35 R34 K88 ["TextSize"]
      854 GETIMPORT                        R35 K99 [Enum.Font.SourceSans]
      856 SETTABLEKS                       R35 R34 K92 ["Font"]
      858 GETTABLEKS                       R35 R10 K154 ["Green"]
      860 SETTABLEKS                       R35 R34 K91 ["TextColor3"]
      862 GETIMPORT                        R35 K127 [Enum.TextXAlignment.Right]
      864 SETTABLEKS                       R35 R34 K89 ["TextXAlignment"]
      866 LOADK                            R37 K128 ["Entry"]
      867 LOADK                            R38 K155 ["UpdateSuccess"]
      868 NAMECALL                         R35 R9 K129 ["getText"]
      870 CALL                             R35 3 1
      871 SETTABLEKS                       R35 R34 K90 ["Text"]
      873 CALL                             R32 2 1
      874 SETTABLEKS                       R32 R31 K52 ["SuccessLabel"]
      876 GETUPVAL                         R32 3
      877 GETTABLEKS                       R32 R32 K37 ["createElement"]
      879 GETUPVAL                         R33 10
      880 DUPTABLE                         R34 K158 [{"Disabled", "Selected", "OnClick", "AnchorPoint", "Size", "Position"}]
      881 LOADB                            R35 0
      882 SETTABLEKS                       R35 R34 K156 ["Disabled"]
      884 SETTABLEKS                       R17 R34 K157 ["Selected"]
      886 GETTABLEKS                       R35 R0 K159 ["onToggleClick"]
      888 SETTABLEKS                       R35 R34 K131 ["OnClick"]
      890 GETUPVAL                         R36 2
      891 CALL                             R36 0 1
      892 JUMPIFNOT                        R36 ; [+6]
      893 GETIMPORT                        R35 K124 [Vector2.new]
      895 LOADN                            R36 0
      896 LOADK                            R37 K33 [0.5]
      897 CALL                             R35 2 1
      898 JUMP                             ; [+1]
      899 LOADNIL                          R35
      900 SETTABLEKS                       R35 R34 K121 ["AnchorPoint"]
      902 GETIMPORT                        R35 K28 [UDim2.new]
      904 LOADN                            R36 0
      905 GETUPVAL                         R37 1
      906 GETTABLEKS                       R37 R37 K31 ["PLUGIN_ENABLE_WIDTH"]
      908 LOADN                            R38 0
      909 LOADN                            R39 24
      910 CALL                             R35 4 1
      911 SETTABLEKS                       R35 R34 K41 ["Size"]
      913 GETIMPORT                        R35 K28 [UDim2.new]
      915 LOADN                            R36 1
      916 GETUPVAL                         R40 1
      917 GETTABLEKS                       R40 R40 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      919 MULK                             R39 R40 K160 [-2]
      920 GETUPVAL                         R40 1
      921 GETTABLEKS                       R40 R40 K31 ["PLUGIN_ENABLE_WIDTH"]
      923 SUB                              R38 R39 R40
      924 GETUPVAL                         R39 1
      925 GETTABLEKS                       R39 R39 K32 ["PLUGIN_CONTEXT_WIDTH"]
      927 SUB                              R37 R38 R39
      928 LOADK                            R38 K33 [0.5]
      929 LOADN                            R39 0
      930 CALL                             R35 4 1
      931 SETTABLEKS                       R35 R34 K64 ["Position"]
      933 CALL                             R32 2 1
      934 SETTABLEKS                       R32 R31 K53 ["ToggleButton"]
      936 GETUPVAL                         R32 3
      937 GETTABLEKS                       R32 R32 K37 ["createElement"]
      939 GETUPVAL                         R33 7
      940 DUPTABLE                         R34 K132 [{"AnchorPoint", "Size", "Position", "Style", "OnClick"}]
      941 GETIMPORT                        R35 K124 [Vector2.new]
      943 LOADN                            R36 0
      944 LOADK                            R37 K33 [0.5]
      945 CALL                             R35 2 1
      946 SETTABLEKS                       R35 R34 K121 ["AnchorPoint"]
      948 GETIMPORT                        R35 K28 [UDim2.new]
      950 LOADN                            R36 0
      951 GETUPVAL                         R37 1
      952 GETTABLEKS                       R37 R37 K125 ["HEADER_BUTTON_SIZE"]
      954 LOADN                            R38 0
      955 GETUPVAL                         R39 1
      956 GETTABLEKS                       R39 R39 K125 ["HEADER_BUTTON_SIZE"]
      958 CALL                             R35 4 1
      959 SETTABLEKS                       R35 R34 K41 ["Size"]
      961 GETIMPORT                        R35 K28 [UDim2.new]
      963 LOADN                            R36 1
      964 LOADN                            R38 255
      965 GETUPVAL                         R40 1
      966 GETTABLEKS                       R40 R40 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      968 GETUPVAL                         R41 1
      969 GETTABLEKS                       R41 R41 K32 ["PLUGIN_CONTEXT_WIDTH"]
      971 ADD                              R39 R40 R41
      972 MUL                              R37 R38 R39
      973 LOADK                            R38 K33 [0.5]
      974 LOADN                            R39 0
      975 CALL                             R35 4 1
      976 SETTABLEKS                       R35 R34 K64 ["Position"]
      978 LOADK                            R35 K133 ["Round"]
      979 SETTABLEKS                       R35 R34 K130 ["Style"]
      981 GETTABLEKS                       R35 R0 K161 ["onShowMoreActivated"]
      983 SETTABLEKS                       R35 R34 K131 ["OnClick"]
      985 DUPTABLE                         R35 K164 [{"Dots", "Dropdown"}]
      986 GETUPVAL                         R36 3
      987 GETTABLEKS                       R36 R36 K37 ["createElement"]
      989 LOADK                            R37 K86 ["TextLabel"]
      990 DUPTABLE                         R38 K165 [{"AnchorPoint", "Position", "Size", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency"}]
      991 GETIMPORT                        R39 K124 [Vector2.new]
      993 LOADK                            R40 K33 [0.5]
      994 LOADK                            R41 K33 [0.5]
      995 CALL                             R39 2 1
      996 SETTABLEKS                       R39 R38 K121 ["AnchorPoint"]
      998 GETIMPORT                        R39 K28 [UDim2.new]
     1000 LOADK                            R40 K33 [0.5]
     1001 LOADN                            R41 0
     1002 LOADK                            R42 K33 [0.5]
     1003 LOADN                            R43 252
     1004 CALL                             R39 4 1
     1005 SETTABLEKS                       R39 R38 K64 ["Position"]
     1007 GETIMPORT                        R39 K28 [UDim2.new]
     1009 LOADN                            R40 0
     1010 LOADN                            R41 16
     1011 LOADN                            R42 0
     1012 LOADN                            R43 16
     1013 CALL                             R39 4 1
     1014 SETTABLEKS                       R39 R38 K41 ["Size"]
     1016 LOADK                            R39 K166 ["..."]
     1017 SETTABLEKS                       R39 R38 K90 ["Text"]
     1019 GETTABLEKS                       R39 R10 K115 ["TextColor"]
     1021 SETTABLEKS                       R39 R38 K91 ["TextColor3"]
     1023 GETIMPORT                        R39 K168 [Enum.Font.SourceSansBold]
     1025 SETTABLEKS                       R39 R38 K92 ["Font"]
     1027 LOADN                            R39 18
     1028 SETTABLEKS                       R39 R38 K88 ["TextSize"]
     1030 LOADN                            R39 1
     1031 SETTABLEKS                       R39 R38 K66 ["BackgroundTransparency"]
     1033 CALL                             R36 2 1
     1034 SETTABLEKS                       R36 R35 K162 ["Dots"]
     1036 GETUPVAL                         R36 3
     1037 GETTABLEKS                       R36 R36 K37 ["createElement"]
     1039 GETUPVAL                         R37 11
     1040 DUPTABLE                         R38 K174 [{"Hide", "Size", "Items", "OnRenderItem", "OnItemActivated", "OnFocusLost"}]
     1041 NOT                              R39 R7
     1042 SETTABLEKS                       R39 R38 K169 ["Hide"]
     1044 GETIMPORT                        R39 K176 [UDim2.fromOffset]
     1046 LOADN                            R40 90
     1047 GETTABLEKS                       R43 R0 K178 ["getMoreItems"]
     1049 CALL                             R43 0 1
     1050 LENGTH                           R42 R43
     1051 MULK                             R41 R42 K177 [40]
     1052 CALL                             R39 2 1
     1053 SETTABLEKS                       R39 R38 K41 ["Size"]
     1055 GETTABLEKS                       R39 R0 K178 ["getMoreItems"]
     1057 CALL                             R39 0 1
     1058 SETTABLEKS                       R39 R38 K170 ["Items"]
     1060 DUPCLOSURE                       R39 K179 [PROTO_15]
     1061 CAPTURE                          UPVAL U3
     1062 CAPTURE                          UPVAL U7
     1063 CAPTURE                          UPVAL U12
     1064 SETTABLEKS                       R39 R38 K171 ["OnRenderItem"]
     1066 GETTABLEKS                       R39 R0 K180 ["moreItemClicked"]
     1068 SETTABLEKS                       R39 R38 K172 ["OnItemActivated"]
     1070 GETTABLEKS                       R39 R0 K181 ["hideShowMore"]
     1072 SETTABLEKS                       R39 R38 K173 ["OnFocusLost"]
     1074 CALL                             R36 2 1
     1075 SETTABLEKS                       R36 R35 K163 ["Dropdown"]
     1077 CALL                             R32 3 1
     1078 SETTABLEKS                       R32 R31 K54 ["ShowMoreButton"]
     1080 CALL                             R28 3 -1
     1081 RETURN                           R28 -1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["PluginPermissions"]
        2 GETTABLEKS                       R4 R1 K1 ["data"]
        4 GETTABLEKS                       R4 R4 K2 ["assetId"]
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
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Flags"]
       21 GETTABLEKS                       R3 R3 K11 ["getFFlagStudioFixPluginManagementTextClipping"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K1 [game]
       26 LOADK                            R5 K12 ["ContentProvider"]
       27 NAMECALL                         R3 R3 K13 ["GetService"]
       29 CALL                             R3 2 1
       30 GETIMPORT                        R4 K1 [game]
       32 LOADK                            R6 K14 ["GuiService"]
       33 NAMECALL                         R4 R4 K13 ["GetService"]
       35 CALL                             R4 2 1
       36 GETIMPORT                        R5 K1 [game]
       38 LOADK                            R7 K15 ["HttpService"]
       39 NAMECALL                         R5 R5 K13 ["GetService"]
       41 CALL                             R5 2 1
       42 GETIMPORT                        R6 K1 [game]
       44 LOADK                            R8 K16 ["TextService"]
       45 NAMECALL                         R6 R6 K13 ["GetService"]
       47 CALL                             R6 2 1
       48 GETIMPORT                        R7 K8 [require]
       50 GETTABLEKS                       R8 R1 K17 ["Packages"]
       52 GETTABLEKS                       R8 R8 K18 ["Roact"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K8 [require]
       57 GETTABLEKS                       R9 R1 K17 ["Packages"]
       59 GETTABLEKS                       R9 R9 K19 ["RoactRodux"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K8 [require]
       64 GETTABLEKS                       R10 R1 K9 ["Src"]
       66 GETTABLEKS                       R10 R10 K20 ["Util"]
       68 GETTABLEKS                       R10 R10 K21 ["Constants"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K8 [require]
       73 GETTABLEKS                       R11 R1 K9 ["Src"]
       75 GETTABLEKS                       R11 R11 K20 ["Util"]
       77 GETTABLEKS                       R11 R11 K22 ["UpdateStatus"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K8 [require]
       82 GETTABLEKS                       R12 R1 K17 ["Packages"]
       84 GETTABLEKS                       R12 R12 K23 ["Framework"]
       86 CALL                             R11 1 1
       87 GETTABLEKS                       R11 R11 K24 ["ContextServices"]
       89 GETTABLEKS                       R12 R11 K25 ["withContext"]
       91 GETIMPORT                        R13 K8 [require]
       93 GETTABLEKS                       R14 R1 K9 ["Src"]
       95 GETTABLEKS                       R14 R14 K24 ["ContextServices"]
       97 GETTABLEKS                       R14 R14 K26 ["PluginAPI2"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K8 [require]
      102 GETTABLEKS                       R15 R1 K9 ["Src"]
      104 GETTABLEKS                       R15 R15 K24 ["ContextServices"]
      106 GETTABLEKS                       R15 R15 K27 ["Navigation"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K8 [require]
      111 GETTABLEKS                       R16 R1 K9 ["Src"]
      113 GETTABLEKS                       R16 R16 K28 ["Thunks"]
      115 GETTABLEKS                       R16 R16 K29 ["SetPluginEnabledState"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K8 [require]
      120 GETTABLEKS                       R17 R1 K9 ["Src"]
      122 GETTABLEKS                       R17 R17 K28 ["Thunks"]
      124 GETTABLEKS                       R17 R17 K30 ["UpdatePlugin"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K8 [require]
      129 GETTABLEKS                       R18 R1 K17 ["Packages"]
      131 GETTABLEKS                       R18 R18 K23 ["Framework"]
      133 CALL                             R17 1 1
      134 GETTABLEKS                       R18 R17 K31 ["UI"]
      136 GETTABLEKS                       R19 R18 K32 ["Button"]
      138 GETTABLEKS                       R20 R18 K33 ["TextLabel"]
      140 GETTABLEKS                       R21 R18 K34 ["DropdownMenu"]
      142 GETTABLEKS                       R22 R18 K35 ["ToggleButton"]
      144 GETTABLEKS                       R23 R18 K36 ["FakeLoadingBar"]
      146 GETIMPORT                        R24 K8 [require]
      148 GETTABLEKS                       R25 R1 K9 ["Src"]
      150 GETTABLEKS                       R25 R25 K37 ["Actions"]
      152 GETTABLEKS                       R25 R25 K38 ["RemovePluginData"]
      154 CALL                             R24 1 1
      155 GETIMPORT                        R25 K8 [require]
      157 GETTABLEKS                       R26 R1 K9 ["Src"]
      159 GETTABLEKS                       R26 R26 K39 ["Components"]
      161 GETTABLEKS                       R26 R26 K40 ["HttpRequestOverview"]
      163 CALL                             R25 1 1
      164 GETIMPORT                        R26 K8 [require]
      166 GETTABLEKS                       R27 R1 K9 ["Src"]
      168 GETTABLEKS                       R27 R27 K39 ["Components"]
      170 GETTABLEKS                       R27 R27 K41 ["UpdateOverview"]
      172 CALL                             R26 1 1
      173 GETIMPORT                        R27 K8 [require]
      175 GETTABLEKS                       R28 R1 K9 ["Src"]
      177 GETTABLEKS                       R28 R28 K20 ["Util"]
      179 GETTABLEKS                       R28 R28 K42 ["PluginManagementApi"]
      181 CALL                             R27 1 1
      182 GETIMPORT                        R28 K45 [UDim2.new]
      184 LOADN                            R29 0
      185 LOADN                            R30 120
      186 LOADN                            R31 0
      187 LOADN                            R32 8
      188 CALL                             R28 4 1
      189 DUPCLOSURE                       R29 K46 [PROTO_0]
      190 CAPTURE                          VAL R6
      191 GETIMPORT                        R31 K50 [Enum.Font.SourceSans]
      193 LOADK                            R34 K51 ["a"]
      194 LOADN                            R35 16
      195 MOVE                             R36 R31
      196 GETIMPORT                        R37 K53 [Vector2.new]
      198 LOADN                            R38 15
      199 LOADN                            R39 16
      200 CALL                             R37 2 -1
      201 NAMECALL                         R32 R6 K54 ["GetTextSize"]
      203 CALL                             R32 -1 1
      204 MOVE                             R30 R32
      205 GETTABLEKS                       R30 R30 K55 ["Y"]
      207 GETTABLEKS                       R31 R7 K56 ["Component"]
      209 LOADK                            R33 K57 ["PluginEntry"]
      210 NAMECALL                         R31 R31 K58 ["extend"]
      212 CALL                             R31 2 1
      213 DUPCLOSURE                       R32 K59 [PROTO_13]
      214 CAPTURE                          VAL R3
      215 CAPTURE                          VAL R5
      216 CAPTURE                          VAL R0
      217 CAPTURE                          VAL R4
      218 CAPTURE                          VAL R9
      219 SETTABLEKS                       R32 R31 K60 ["init"]
      221 DUPCLOSURE                       R32 K61 [PROTO_14]
      222 CAPTURE                          VAL R10
      223 SETTABLEKS                       R32 R31 K62 ["getDerivedStateFromProps"]
      225 DUPCLOSURE                       R32 K63 [PROTO_16]
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R9
      228 CAPTURE                          VAL R2
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R30
      231 CAPTURE                          VAL R25
      232 CAPTURE                          VAL R26
      233 CAPTURE                          VAL R19
      234 CAPTURE                          VAL R23
      235 CAPTURE                          VAL R28
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R21
      238 CAPTURE                          VAL R20
      239 SETTABLEKS                       R32 R31 K64 ["render"]
      241 MOVE                             R32 R12
      242 DUPTABLE                         R33 K69 [{"Navigation", "Localization", "Stylizer", "API", "Analytics", "PluginManagementApi"}]
      243 SETTABLEKS                       R14 R33 K27 ["Navigation"]
      245 GETTABLEKS                       R34 R11 K65 ["Localization"]
      247 SETTABLEKS                       R34 R33 K65 ["Localization"]
      249 GETTABLEKS                       R34 R11 K66 ["Stylizer"]
      251 SETTABLEKS                       R34 R33 K66 ["Stylizer"]
      253 SETTABLEKS                       R13 R33 K67 ["API"]
      255 GETTABLEKS                       R34 R11 K68 ["Analytics"]
      257 SETTABLEKS                       R34 R33 K68 ["Analytics"]
      259 SETTABLEKS                       R27 R33 K42 ["PluginManagementApi"]
      261 CALL                             R32 1 1
      262 MOVE                             R33 R31
      263 CALL                             R32 1 1
      264 MOVE                             R31 R32
      265 DUPCLOSURE                       R32 K70 [PROTO_17]
      266 DUPCLOSURE                       R33 K71 [PROTO_21]
      267 CAPTURE                          VAL R24
      268 CAPTURE                          VAL R15
      269 CAPTURE                          VAL R16
      270 GETTABLEKS                       R34 R8 K72 ["connect"]
      272 MOVE                             R35 R32
      273 MOVE                             R36 R33
      274 CALL                             R34 2 1
      275 MOVE                             R35 R31
      276 CALL                             R34 1 -1
      277 RETURN                           R34 -1
