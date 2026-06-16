PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["PluginManagementApi"]
        5 GETTABLEKS                       R2 R0 K2 ["onPluginSetEnabledState"]
        7 MOVE                             R3 R1
        8 GETTABLEKS                       R4 R0 K3 ["data"]
       10 LOADB                            R5 1
       11 CALL                             R2 3 0
       12 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showMore"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showMore"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showMore"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showMore"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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
      103 GETUPVAL                         R28 1
      104 GETTABLEKS                       R28 R28 K34 ["THUMBNAIL_SIZE"]
      106 LOADN                            R30 2
      107 GETUPVAL                         R31 1
      108 GETTABLEKS                       R31 R31 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      110 MUL                              R29 R30 R31
      111 ADD                              R27 R28 R29
      112 GETUPVAL                         R30 1
      113 GETTABLEKS                       R30 R30 K31 ["PLUGIN_ENABLE_WIDTH"]
      115 GETUPVAL                         R31 1
      116 GETTABLEKS                       R31 R31 K32 ["PLUGIN_CONTEXT_WIDTH"]
      118 ADD                              R29 R30 R31
      119 LOADN                            R31 3
      120 GETUPVAL                         R32 1
      121 GETTABLEKS                       R32 R32 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      123 MUL                              R30 R31 R32
      124 ADD                              R28 R29 R30
      125 LOADN                            R29 0
      126 JUMPIFNOT                        R22 ; [+8]
      127 GETUPVAL                         R30 1
      128 GETTABLEKS                       R30 R30 K35 ["HEADER_UPDATE_WIDTH"]
      130 GETUPVAL                         R31 1
      131 GETTABLEKS                       R31 R31 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      133 ADD                              R29 R30 R31
      134 JUMP                             ; [+8]
      135 JUMPIFNOT                        R14 ; [+7]
      136 GETUPVAL                         R30 1
      137 GETTABLEKS                       R30 R30 K36 ["MODERATED_WARNING_WIDTH"]
      139 GETUPVAL                         R31 1
      140 GETTABLEKS                       R31 R31 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      142 ADD                              R29 R30 R31
      143 ADD                              R31 R27 R29
      144 ADD                              R30 R31 R28
      145 GETUPVAL                         R31 2
      146 GETTABLEKS                       R31 R31 K37 ["createElement"]
      148 LOADK                            R32 K38 ["Frame"]
      149 DUPTABLE                         R33 K42 [{"BackgroundColor3", "BorderSizePixel", "LayoutOrder", "Size"}]
      150 GETTABLEKS                       R34 R10 K43 ["BackgroundColor"]
      152 SETTABLEKS                       R34 R33 K39 ["BackgroundColor3"]
      154 LOADN                            R34 0
      155 SETTABLEKS                       R34 R33 K40 ["BorderSizePixel"]
      157 SETTABLEKS                       R12 R33 K12 ["LayoutOrder"]
      159 GETIMPORT                        R34 K28 [UDim2.new]
      161 LOADN                            R35 1
      162 GETUPVAL                         R36 1
      163 GETTABLEKS                       R36 R36 K44 ["SCROLLBAR_WIDTH_ADJUSTMENT"]
      165 LOADN                            R37 0
      166 GETUPVAL                         R38 1
      167 GETTABLEKS                       R38 R38 K45 ["PLUGIN_ENTRY_HEIGHT"]
      169 CALL                             R34 4 1
      170 SETTABLEKS                       R34 R33 K41 ["Size"]
      172 DUPTABLE                         R34 K55 [{"Padding", "Thumbnail", "Contents", "ModeratedWarning", "UpdateButton", "ProgressIndicator", "SuccessLabel", "ToggleButton", "ShowMoreButton"}]
      173 GETUPVAL                         R35 2
      174 GETTABLEKS                       R35 R35 K37 ["createElement"]
      176 LOADK                            R36 K56 ["UIPadding"]
      177 DUPTABLE                         R37 K59 [{"PaddingTop", "PaddingBottom"}]
      178 GETIMPORT                        R38 K61 [UDim.new]
      180 LOADN                            R39 0
      181 GETUPVAL                         R40 1
      182 GETTABLEKS                       R40 R40 K62 ["PLUGIN_ENTRY_PADDING"]
      184 CALL                             R38 2 1
      185 SETTABLEKS                       R38 R37 K57 ["PaddingTop"]
      187 GETIMPORT                        R38 K61 [UDim.new]
      189 LOADN                            R39 0
      190 GETUPVAL                         R40 1
      191 GETTABLEKS                       R40 R40 K62 ["PLUGIN_ENTRY_PADDING"]
      193 CALL                             R38 2 1
      194 SETTABLEKS                       R38 R37 K58 ["PaddingBottom"]
      196 CALL                             R35 2 1
      197 SETTABLEKS                       R35 R34 K46 ["Padding"]
      199 GETUPVAL                         R35 2
      200 GETTABLEKS                       R35 R35 K37 ["createElement"]
      202 LOADK                            R36 K63 ["ImageLabel"]
      203 DUPTABLE                         R37 K67 [{"Size", "Position", "Image", "BackgroundTransparency"}]
      204 GETIMPORT                        R38 K28 [UDim2.new]
      206 LOADN                            R39 0
      207 GETUPVAL                         R40 1
      208 GETTABLEKS                       R40 R40 K34 ["THUMBNAIL_SIZE"]
      210 LOADN                            R41 0
      211 GETUPVAL                         R42 1
      212 GETTABLEKS                       R42 R42 K34 ["THUMBNAIL_SIZE"]
      214 CALL                             R38 4 1
      215 SETTABLEKS                       R38 R37 K41 ["Size"]
      217 GETIMPORT                        R38 K28 [UDim2.new]
      219 LOADN                            R39 0
      220 GETUPVAL                         R40 1
      221 GETTABLEKS                       R40 R40 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      223 LOADN                            R41 0
      224 GETUPVAL                         R42 1
      225 GETTABLEKS                       R42 R42 K68 ["PLUGIN_VERTICAL_PADDING"]
      227 CALL                             R38 4 1
      228 SETTABLEKS                       R38 R37 K64 ["Position"]
      230 SETTABLEKS                       R21 R37 K65 ["Image"]
      232 LOADN                            R38 1
      233 SETTABLEKS                       R38 R37 K66 ["BackgroundTransparency"]
      235 CALL                             R35 2 1
      236 SETTABLEKS                       R35 R34 K47 ["Thumbnail"]
      238 GETUPVAL                         R35 2
      239 GETTABLEKS                       R35 R35 K37 ["createElement"]
      241 LOADK                            R36 K38 ["Frame"]
      242 DUPTABLE                         R37 K69 [{"BackgroundTransparency", "Position", "Size"}]
      243 LOADN                            R38 1
      244 SETTABLEKS                       R38 R37 K66 ["BackgroundTransparency"]
      246 GETIMPORT                        R38 K28 [UDim2.new]
      248 LOADN                            R39 0
      249 GETUPVAL                         R41 1
      250 GETTABLEKS                       R41 R41 K34 ["THUMBNAIL_SIZE"]
      252 GETUPVAL                         R43 1
      253 GETTABLEKS                       R43 R43 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      255 MULK                             R42 R43 K70 [2]
      256 ADD                              R40 R41 R42
      257 LOADN                            R41 0
      258 LOADN                            R42 0
      259 CALL                             R38 4 1
      260 SETTABLEKS                       R38 R37 K64 ["Position"]
      262 GETIMPORT                        R38 K28 [UDim2.new]
      264 LOADN                            R39 1
      265 MINUS                            R40 R30
      266 LOADN                            R41 1
      267 LOADN                            R42 0
      268 CALL                             R38 4 1
      269 SETTABLEKS                       R38 R37 K41 ["Size"]
      271 DUPTABLE                         R38 K76 [{"Layout", "Name", "Creator", "Description", "HttpRequestOverview", "UpdateOverview"}]
      272 GETUPVAL                         R39 2
      273 GETTABLEKS                       R39 R39 K37 ["createElement"]
      275 LOADK                            R40 K77 ["UIListLayout"]
      276 DUPTABLE                         R41 K80 [{"SortOrder", "FillDirection", "Padding"}]
      277 GETIMPORT                        R42 K82 [Enum.SortOrder.LayoutOrder]
      279 SETTABLEKS                       R42 R41 K78 ["SortOrder"]
      281 GETIMPORT                        R42 K84 [Enum.FillDirection.Vertical]
      283 SETTABLEKS                       R42 R41 K79 ["FillDirection"]
      285 GETIMPORT                        R42 K61 [UDim.new]
      287 LOADN                            R43 0
      288 GETUPVAL                         R44 1
      289 GETTABLEKS                       R44 R44 K85 ["PLUGIN_ENTRY_INNER_VERTICAL_PADDING"]
      291 CALL                             R42 2 1
      292 SETTABLEKS                       R42 R41 K46 ["Padding"]
      294 CALL                             R39 2 1
      295 SETTABLEKS                       R39 R38 K71 ["Layout"]
      297 GETUPVAL                         R39 2
      298 GETTABLEKS                       R39 R39 K37 ["createElement"]
      300 LOADK                            R40 K86 ["TextLabel"]
      301 DUPTABLE                         R41 K93 [{"LayoutOrder", "TextWrapped", "TextSize", "Size", "BackgroundTransparency", "TextXAlignment", "Text", "TextColor3", "Font"}]
      302 LOADN                            R42 0
      303 SETTABLEKS                       R42 R41 K12 ["LayoutOrder"]
      305 LOADB                            R42 1
      306 SETTABLEKS                       R42 R41 K87 ["TextWrapped"]
      308 LOADN                            R42 22
      309 SETTABLEKS                       R42 R41 K88 ["TextSize"]
      311 GETIMPORT                        R42 K28 [UDim2.new]
      313 LOADN                            R43 1
      314 LOADN                            R44 0
      315 LOADN                            R45 0
      316 GETUPVAL                         R46 1
      317 GETTABLEKS                       R46 R46 K94 ["PLUGIN_NAME_HEIGHT"]
      319 CALL                             R42 4 1
      320 SETTABLEKS                       R42 R41 K41 ["Size"]
      322 LOADN                            R42 1
      323 SETTABLEKS                       R42 R41 K66 ["BackgroundTransparency"]
      325 GETIMPORT                        R42 K96 [Enum.TextXAlignment.Left]
      327 SETTABLEKS                       R42 R41 K89 ["TextXAlignment"]
      329 SETTABLEKS                       R18 R41 K90 ["Text"]
      331 GETTABLEKS                       R42 R10 K97 ["EmphasisTextColor"]
      333 SETTABLEKS                       R42 R41 K91 ["TextColor3"]
      335 GETIMPORT                        R42 K99 [Enum.Font.SourceSans]
      337 SETTABLEKS                       R42 R41 K92 ["Font"]
      339 CALL                             R39 2 1
      340 SETTABLEKS                       R39 R38 K22 ["Name"]
      342 GETUPVAL                         R39 2
      343 GETTABLEKS                       R39 R39 K37 ["createElement"]
      345 LOADK                            R40 K100 ["TextButton"]
      346 NEWTABLE                         R41 16 0
      348 LOADN                            R42 1
      349 SETTABLEKS                       R42 R41 K12 ["LayoutOrder"]
      351 LOADB                            R42 1
      352 SETTABLEKS                       R42 R41 K87 ["TextWrapped"]
      354 GETIMPORT                        R42 K28 [UDim2.new]
      356 LOADN                            R43 1
      357 LOADN                            R44 0
      358 LOADN                            R45 0
      359 GETUPVAL                         R46 1
      360 GETTABLEKS                       R46 R46 K101 ["PLUGIN_CREATOR_HEIGHT"]
      362 CALL                             R42 4 1
      363 SETTABLEKS                       R42 R41 K41 ["Size"]
      365 LOADN                            R42 1
      366 SETTABLEKS                       R42 R41 K66 ["BackgroundTransparency"]
      368 GETIMPORT                        R42 K96 [Enum.TextXAlignment.Left]
      370 SETTABLEKS                       R42 R41 K89 ["TextXAlignment"]
      372 SETTABLEKS                       R20 R41 K90 ["Text"]
      374 GETIMPORT                        R42 K103 [Enum.Font.SourceSansLight]
      376 SETTABLEKS                       R42 R41 K92 ["Font"]
      378 GETTABLEKS                       R42 R10 K104 ["LinkColor"]
      380 SETTABLEKS                       R42 R41 K91 ["TextColor3"]
      382 LOADN                            R42 16
      383 SETTABLEKS                       R42 R41 K88 ["TextSize"]
      385 LOADN                            R42 1
      386 SETTABLEKS                       R42 R41 K40 ["BorderSizePixel"]
      388 GETUPVAL                         R42 2
      389 GETTABLEKS                       R42 R42 K105 ["Event"]
      391 GETTABLEKS                       R42 R42 K106 ["Activated"]
      393 GETTABLEKS                       R43 R0 K107 ["openCreatorProfile"]
      395 SETTABLE                         R43 R41 R42
      396 CALL                             R39 2 1
      397 SETTABLEKS                       R39 R38 K72 ["Creator"]
      399 GETUPVAL                         R39 2
      400 GETTABLEKS                       R39 R39 K37 ["createElement"]
      402 LOADK                            R40 K86 ["TextLabel"]
      403 DUPTABLE                         R41 K111 [{"ClipsDescendants", "LayoutOrder", "TextWrapped", "Size", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "Text", "TextColor3", "TextTruncate", "Font", "TextSize"}]
      404 LOADB                            R42 1
      405 SETTABLEKS                       R42 R41 K108 ["ClipsDescendants"]
      407 LOADN                            R42 2
      408 SETTABLEKS                       R42 R41 K12 ["LayoutOrder"]
      410 LOADB                            R42 1
      411 SETTABLEKS                       R42 R41 K87 ["TextWrapped"]
      413 GETIMPORT                        R42 K28 [UDim2.new]
      415 LOADN                            R43 1
      416 LOADN                            R44 0
      417 LOADN                            R45 0
      418 GETUPVAL                         R46 1
      419 GETTABLEKS                       R46 R46 K112 ["PLUGIN_DESCRIPTION_HEIGHT"]
      421 CALL                             R42 4 1
      422 SETTABLEKS                       R42 R41 K41 ["Size"]
      424 LOADN                            R42 1
      425 SETTABLEKS                       R42 R41 K66 ["BackgroundTransparency"]
      427 GETIMPORT                        R42 K96 [Enum.TextXAlignment.Left]
      429 SETTABLEKS                       R42 R41 K89 ["TextXAlignment"]
      431 GETIMPORT                        R42 K114 [Enum.TextYAlignment.Top]
      433 SETTABLEKS                       R42 R41 K109 ["TextYAlignment"]
      435 SETTABLEKS                       R19 R41 K90 ["Text"]
      437 GETTABLEKS                       R42 R10 K115 ["TextColor"]
      439 SETTABLEKS                       R42 R41 K91 ["TextColor3"]
      441 GETIMPORT                        R42 K117 [Enum.TextTruncate.AtEnd]
      443 SETTABLEKS                       R42 R41 K110 ["TextTruncate"]
      445 GETIMPORT                        R42 K99 [Enum.Font.SourceSans]
      447 SETTABLEKS                       R42 R41 K92 ["Font"]
      449 LOADN                            R42 16
      450 SETTABLEKS                       R42 R41 K88 ["TextSize"]
      452 CALL                             R39 2 1
      453 SETTABLEKS                       R39 R38 K73 ["Description"]
      455 GETUPVAL                         R39 2
      456 GETTABLEKS                       R39 R39 K37 ["createElement"]
      458 GETUPVAL                         R40 3
      459 DUPTABLE                         R41 K118 [{"assetId", "LayoutOrder"}]
      460 GETTABLEKS                       R42 R3 K16 ["assetId"]
      462 SETTABLEKS                       R42 R41 K16 ["assetId"]
      464 LOADN                            R42 3
      465 SETTABLEKS                       R42 R41 K12 ["LayoutOrder"]
      467 CALL                             R39 2 1
      468 SETTABLEKS                       R39 R38 K74 ["HttpRequestOverview"]
      470 GETUPVAL                         R39 2
      471 GETTABLEKS                       R39 R39 K37 ["createElement"]
      473 GETUPVAL                         R40 4
      474 DUPTABLE                         R41 K120 [{"data", "LayoutOrder", "plugin", "updateAvailable"}]
      475 SETTABLEKS                       R3 R41 K2 ["data"]
      477 LOADN                            R42 4
      478 SETTABLEKS                       R42 R41 K12 ["LayoutOrder"]
      480 SETTABLEKS                       R8 R41 K7 ["plugin"]
      482 SETTABLEKS                       R22 R41 K119 ["updateAvailable"]
      484 CALL                             R39 2 1
      485 SETTABLEKS                       R39 R38 K75 ["UpdateOverview"]
      487 CALL                             R35 3 1
      488 SETTABLEKS                       R35 R34 K48 ["Contents"]
      490 MOVE                             R35 R14
      491 JUMPIFNOT                        R35 ; [+60]
      492 GETUPVAL                         R35 2
      493 GETTABLEKS                       R35 R35 K37 ["createElement"]
      495 LOADK                            R36 K86 ["TextLabel"]
      496 DUPTABLE                         R37 K122 [{"AnchorPoint", "Size", "Position", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextSize", "TextWrapped", "Font", "TextColor3", "Text"}]
      497 GETIMPORT                        R38 K124 [Vector2.new]
      499 LOADN                            R39 1
      500 LOADK                            R40 K33 [0.5]
      501 CALL                             R38 2 1
      502 SETTABLEKS                       R38 R37 K121 ["AnchorPoint"]
      504 GETIMPORT                        R38 K28 [UDim2.new]
      506 LOADN                            R39 0
      507 GETUPVAL                         R40 1
      508 GETTABLEKS                       R40 R40 K36 ["MODERATED_WARNING_WIDTH"]
      510 LOADN                            R41 0
      511 GETUPVAL                         R42 1
      512 GETTABLEKS                       R42 R42 K125 ["HEADER_BUTTON_SIZE"]
      514 CALL                             R38 4 1
      515 SETTABLEKS                       R38 R37 K41 ["Size"]
      517 SETTABLEKS                       R23 R37 K64 ["Position"]
      519 LOADN                            R38 1
      520 SETTABLEKS                       R38 R37 K66 ["BackgroundTransparency"]
      522 GETIMPORT                        R38 K127 [Enum.TextXAlignment.Right]
      524 SETTABLEKS                       R38 R37 K89 ["TextXAlignment"]
      526 GETIMPORT                        R38 K114 [Enum.TextYAlignment.Top]
      528 SETTABLEKS                       R38 R37 K109 ["TextYAlignment"]
      530 LOADN                            R38 14
      531 SETTABLEKS                       R38 R37 K88 ["TextSize"]
      533 LOADB                            R38 1
      534 SETTABLEKS                       R38 R37 K87 ["TextWrapped"]
      536 GETIMPORT                        R38 K99 [Enum.Font.SourceSans]
      538 SETTABLEKS                       R38 R37 K92 ["Font"]
      540 GETTABLEKS                       R38 R10 K115 ["TextColor"]
      542 SETTABLEKS                       R38 R37 K91 ["TextColor3"]
      544 LOADK                            R40 K128 ["Entry"]
      545 LOADK                            R41 K49 ["ModeratedWarning"]
      546 NAMECALL                         R38 R9 K129 ["getText"]
      548 CALL                             R38 3 1
      549 SETTABLEKS                       R38 R37 K90 ["Text"]
      551 CALL                             R35 2 1
      552 SETTABLEKS                       R35 R34 K49 ["ModeratedWarning"]
      554 MOVE                             R35 R22
      555 JUMPIFNOT                        R35 ; [+188]
      556 GETUPVAL                         R35 2
      557 GETTABLEKS                       R35 R35 K37 ["createElement"]
      559 GETUPVAL                         R36 5
      560 DUPTABLE                         R37 K132 [{"AnchorPoint", "Size", "Position", "Style", "OnClick"}]
      561 GETIMPORT                        R38 K124 [Vector2.new]
      563 LOADN                            R39 1
      564 LOADK                            R40 K33 [0.5]
      565 CALL                             R38 2 1
      566 SETTABLEKS                       R38 R37 K121 ["AnchorPoint"]
      568 GETIMPORT                        R38 K28 [UDim2.new]
      570 LOADN                            R39 0
      571 GETUPVAL                         R40 1
      572 GETTABLEKS                       R40 R40 K35 ["HEADER_UPDATE_WIDTH"]
      574 LOADN                            R41 0
      575 GETUPVAL                         R42 1
      576 GETTABLEKS                       R42 R42 K125 ["HEADER_BUTTON_SIZE"]
      578 CALL                             R38 4 1
      579 SETTABLEKS                       R38 R37 K41 ["Size"]
      581 SETTABLEKS                       R23 R37 K64 ["Position"]
      583 LOADK                            R38 K133 ["Round"]
      584 SETTABLEKS                       R38 R37 K130 ["Style"]
      586 GETTABLEKS                       R38 R0 K134 ["updatePlugin"]
      588 SETTABLEKS                       R38 R37 K131 ["OnClick"]
      590 DUPTABLE                         R38 K138 [{"Label", "DateLabel", "ErrorLabel"}]
      591 GETUPVAL                         R39 2
      592 GETTABLEKS                       R39 R39 K37 ["createElement"]
      594 LOADK                            R40 K86 ["TextLabel"]
      595 DUPTABLE                         R41 K139 [{"Size", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency"}]
      596 GETIMPORT                        R42 K28 [UDim2.new]
      598 LOADN                            R43 1
      599 LOADN                            R44 0
      600 LOADN                            R45 1
      601 LOADN                            R46 0
      602 CALL                             R42 4 1
      603 SETTABLEKS                       R42 R41 K41 ["Size"]
      605 LOADK                            R44 K128 ["Entry"]
      606 LOADK                            R45 K50 ["UpdateButton"]
      607 NAMECALL                         R42 R9 K129 ["getText"]
      609 CALL                             R42 3 1
      610 SETTABLEKS                       R42 R41 K90 ["Text"]
      612 GETTABLEKS                       R42 R10 K115 ["TextColor"]
      614 SETTABLEKS                       R42 R41 K91 ["TextColor3"]
      616 GETIMPORT                        R42 K99 [Enum.Font.SourceSans]
      618 SETTABLEKS                       R42 R41 K92 ["Font"]
      620 LOADN                            R42 18
      621 SETTABLEKS                       R42 R41 K88 ["TextSize"]
      623 LOADN                            R42 1
      624 SETTABLEKS                       R42 R41 K66 ["BackgroundTransparency"]
      626 CALL                             R39 2 1
      627 SETTABLEKS                       R39 R38 K135 ["Label"]
      629 LOADB                            R39 0
      630 GETUPVAL                         R40 0
      631 GETTABLEKS                       R40 R40 K140 ["Error"]
      633 JUMPIFEQ                         R15 R40 ; [+54]
      635 GETUPVAL                         R39 2
      636 GETTABLEKS                       R39 R39 K37 ["createElement"]
      638 LOADK                            R40 K86 ["TextLabel"]
      639 DUPTABLE                         R41 K142 [{"BackgroundTransparency", "Size", "Position", "TextSize", "Font", "TextColor3", "TextTransparency", "Text"}]
      640 LOADN                            R42 1
      641 SETTABLEKS                       R42 R41 K66 ["BackgroundTransparency"]
      643 GETIMPORT                        R42 K28 [UDim2.new]
      645 LOADN                            R43 1
      646 LOADN                            R44 0
      647 LOADN                            R45 0
      648 LOADN                            R46 14
      649 CALL                             R42 4 1
      650 SETTABLEKS                       R42 R41 K41 ["Size"]
      652 GETIMPORT                        R42 K28 [UDim2.new]
      654 LOADN                            R43 0
      655 LOADN                            R44 0
      656 LOADN                            R45 1
      657 LOADN                            R46 3
      658 CALL                             R42 4 1
      659 SETTABLEKS                       R42 R41 K64 ["Position"]
      661 LOADN                            R42 14
      662 SETTABLEKS                       R42 R41 K88 ["TextSize"]
      664 GETIMPORT                        R42 K99 [Enum.Font.SourceSans]
      666 SETTABLEKS                       R42 R41 K92 ["Font"]
      668 GETTABLEKS                       R42 R10 K115 ["TextColor"]
      670 SETTABLEKS                       R42 R41 K91 ["TextColor3"]
      672 LOADN                            R42 0
      673 SETTABLEKS                       R42 R41 K141 ["TextTransparency"]
      675 LOADK                            R44 K128 ["Entry"]
      676 LOADK                            R45 K143 ["LastUpdatedDate"]
      677 DUPTABLE                         R46 K145 [{"date"}]
      678 GETTABLEKS                       R47 R3 K146 ["updated"]
      680 SETTABLEKS                       R47 R46 K144 ["date"]
      682 NAMECALL                         R42 R9 K129 ["getText"]
      684 CALL                             R42 4 1
      685 SETTABLEKS                       R42 R41 K90 ["Text"]
      687 CALL                             R39 2 1
      688 SETTABLEKS                       R39 R38 K136 ["DateLabel"]
      690 LOADB                            R39 0
      691 GETUPVAL                         R40 0
      692 GETTABLEKS                       R40 R40 K140 ["Error"]
      694 JUMPIFNOTEQ                      R15 R40 ; [+46]
      696 GETUPVAL                         R39 2
      697 GETTABLEKS                       R39 R39 K37 ["createElement"]
      699 LOADK                            R40 K86 ["TextLabel"]
      700 DUPTABLE                         R41 K147 [{"BackgroundTransparency", "Size", "Position", "TextSize", "Font", "TextColor3", "Text"}]
      701 LOADN                            R42 1
      702 SETTABLEKS                       R42 R41 K66 ["BackgroundTransparency"]
      704 GETIMPORT                        R42 K28 [UDim2.new]
      706 LOADN                            R43 1
      707 LOADN                            R44 0
      708 LOADN                            R45 0
      709 LOADN                            R46 14
      710 CALL                             R42 4 1
      711 SETTABLEKS                       R42 R41 K41 ["Size"]
      713 GETIMPORT                        R42 K28 [UDim2.new]
      715 LOADN                            R43 0
      716 LOADN                            R44 0
      717 LOADN                            R45 1
      718 LOADN                            R46 3
      719 CALL                             R42 4 1
      720 SETTABLEKS                       R42 R41 K64 ["Position"]
      722 LOADN                            R42 14
      723 SETTABLEKS                       R42 R41 K88 ["TextSize"]
      725 GETIMPORT                        R42 K99 [Enum.Font.SourceSans]
      727 SETTABLEKS                       R42 R41 K92 ["Font"]
      729 GETTABLEKS                       R42 R10 K148 ["ErrorColor"]
      731 SETTABLEKS                       R42 R41 K91 ["TextColor3"]
      733 LOADK                            R44 K128 ["Entry"]
      734 LOADK                            R45 K149 ["UpdateError"]
      735 NAMECALL                         R42 R9 K129 ["getText"]
      737 CALL                             R42 3 1
      738 SETTABLEKS                       R42 R41 K90 ["Text"]
      740 CALL                             R39 2 1
      741 SETTABLEKS                       R39 R38 K137 ["ErrorLabel"]
      743 CALL                             R35 3 1
      744 SETTABLEKS                       R35 R34 K50 ["UpdateButton"]
      746 NOT                              R35 R13
      747 JUMPIFNOT                        R35 ; [+27]
      748 LOADB                            R35 0
      749 GETUPVAL                         R36 0
      750 GETTABLEKS                       R36 R36 K25 ["Updating"]
      752 JUMPIFNOTEQ                      R15 R36 ; [+22]
      754 GETUPVAL                         R35 2
      755 GETTABLEKS                       R35 R35 K37 ["createElement"]
      757 GETUPVAL                         R36 6
      758 DUPTABLE                         R37 K151 [{"AnchorPoint", "Position", "Size", "LoadingTime"}]
      759 GETIMPORT                        R38 K124 [Vector2.new]
      761 LOADN                            R39 1
      762 LOADK                            R40 K33 [0.5]
      763 CALL                             R38 2 1
      764 SETTABLEKS                       R38 R37 K121 ["AnchorPoint"]
      766 SETTABLEKS                       R23 R37 K64 ["Position"]
      768 GETUPVAL                         R38 7
      769 SETTABLEKS                       R38 R37 K41 ["Size"]
      771 LOADK                            R38 K33 [0.5]
      772 SETTABLEKS                       R38 R37 K150 ["LoadingTime"]
      774 CALL                             R35 2 1
      775 SETTABLEKS                       R35 R34 K51 ["ProgressIndicator"]
      777 MOVE                             R35 R13
      778 JUMPIFNOT                        R35 ; [+52]
      779 GETTABLEKS                       R35 R2 K152 ["showSuccessMessage"]
      781 JUMPIFNOT                        R35 ; [+49]
      782 GETUPVAL                         R35 2
      783 GETTABLEKS                       R35 R35 K37 ["createElement"]
      785 LOADK                            R36 K86 ["TextLabel"]
      786 DUPTABLE                         R37 K153 [{"BackgroundTransparency", "Size", "AnchorPoint", "Position", "TextSize", "Font", "TextColor3", "TextXAlignment", "Text"}]
      787 LOADN                            R38 1
      788 SETTABLEKS                       R38 R37 K66 ["BackgroundTransparency"]
      790 GETIMPORT                        R38 K28 [UDim2.new]
      792 LOADN                            R39 1
      793 LOADN                            R40 0
      794 LOADN                            R41 0
      795 LOADN                            R42 14
      796 CALL                             R38 4 1
      797 SETTABLEKS                       R38 R37 K41 ["Size"]
      799 GETIMPORT                        R38 K124 [Vector2.new]
      801 LOADN                            R39 1
      802 LOADK                            R40 K33 [0.5]
      803 CALL                             R38 2 1
      804 SETTABLEKS                       R38 R37 K121 ["AnchorPoint"]
      806 SETTABLEKS                       R23 R37 K64 ["Position"]
      808 LOADN                            R38 14
      809 SETTABLEKS                       R38 R37 K88 ["TextSize"]
      811 GETIMPORT                        R38 K99 [Enum.Font.SourceSans]
      813 SETTABLEKS                       R38 R37 K92 ["Font"]
      815 GETTABLEKS                       R38 R10 K154 ["Green"]
      817 SETTABLEKS                       R38 R37 K91 ["TextColor3"]
      819 GETIMPORT                        R38 K127 [Enum.TextXAlignment.Right]
      821 SETTABLEKS                       R38 R37 K89 ["TextXAlignment"]
      823 LOADK                            R40 K128 ["Entry"]
      824 LOADK                            R41 K155 ["UpdateSuccess"]
      825 NAMECALL                         R38 R9 K129 ["getText"]
      827 CALL                             R38 3 1
      828 SETTABLEKS                       R38 R37 K90 ["Text"]
      830 CALL                             R35 2 1
      831 SETTABLEKS                       R35 R34 K52 ["SuccessLabel"]
      833 GETUPVAL                         R35 2
      834 GETTABLEKS                       R35 R35 K37 ["createElement"]
      836 GETUPVAL                         R36 8
      837 DUPTABLE                         R37 K158 [{"Disabled", "Selected", "OnClick", "AnchorPoint", "Size", "Position"}]
      838 LOADB                            R38 0
      839 SETTABLEKS                       R38 R37 K156 ["Disabled"]
      841 SETTABLEKS                       R17 R37 K157 ["Selected"]
      843 GETTABLEKS                       R38 R0 K159 ["onToggleClick"]
      845 SETTABLEKS                       R38 R37 K131 ["OnClick"]
      847 GETIMPORT                        R38 K124 [Vector2.new]
      849 LOADN                            R39 0
      850 LOADK                            R40 K33 [0.5]
      851 CALL                             R38 2 1
      852 SETTABLEKS                       R38 R37 K121 ["AnchorPoint"]
      854 GETIMPORT                        R38 K28 [UDim2.new]
      856 LOADN                            R39 0
      857 GETUPVAL                         R40 1
      858 GETTABLEKS                       R40 R40 K31 ["PLUGIN_ENABLE_WIDTH"]
      860 LOADN                            R41 0
      861 LOADN                            R42 24
      862 CALL                             R38 4 1
      863 SETTABLEKS                       R38 R37 K41 ["Size"]
      865 GETIMPORT                        R38 K28 [UDim2.new]
      867 LOADN                            R39 1
      868 GETUPVAL                         R43 1
      869 GETTABLEKS                       R43 R43 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      871 MULK                             R42 R43 K160 [-2]
      872 GETUPVAL                         R43 1
      873 GETTABLEKS                       R43 R43 K31 ["PLUGIN_ENABLE_WIDTH"]
      875 SUB                              R41 R42 R43
      876 GETUPVAL                         R42 1
      877 GETTABLEKS                       R42 R42 K32 ["PLUGIN_CONTEXT_WIDTH"]
      879 SUB                              R40 R41 R42
      880 LOADK                            R41 K33 [0.5]
      881 LOADN                            R42 0
      882 CALL                             R38 4 1
      883 SETTABLEKS                       R38 R37 K64 ["Position"]
      885 CALL                             R35 2 1
      886 SETTABLEKS                       R35 R34 K53 ["ToggleButton"]
      888 GETUPVAL                         R35 2
      889 GETTABLEKS                       R35 R35 K37 ["createElement"]
      891 GETUPVAL                         R36 5
      892 DUPTABLE                         R37 K132 [{"AnchorPoint", "Size", "Position", "Style", "OnClick"}]
      893 GETIMPORT                        R38 K124 [Vector2.new]
      895 LOADN                            R39 0
      896 LOADK                            R40 K33 [0.5]
      897 CALL                             R38 2 1
      898 SETTABLEKS                       R38 R37 K121 ["AnchorPoint"]
      900 GETIMPORT                        R38 K28 [UDim2.new]
      902 LOADN                            R39 0
      903 GETUPVAL                         R40 1
      904 GETTABLEKS                       R40 R40 K125 ["HEADER_BUTTON_SIZE"]
      906 LOADN                            R41 0
      907 GETUPVAL                         R42 1
      908 GETTABLEKS                       R42 R42 K125 ["HEADER_BUTTON_SIZE"]
      910 CALL                             R38 4 1
      911 SETTABLEKS                       R38 R37 K41 ["Size"]
      913 GETIMPORT                        R38 K28 [UDim2.new]
      915 LOADN                            R39 1
      916 LOADN                            R41 255
      917 GETUPVAL                         R43 1
      918 GETTABLEKS                       R43 R43 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      920 GETUPVAL                         R44 1
      921 GETTABLEKS                       R44 R44 K32 ["PLUGIN_CONTEXT_WIDTH"]
      923 ADD                              R42 R43 R44
      924 MUL                              R40 R41 R42
      925 LOADK                            R41 K33 [0.5]
      926 LOADN                            R42 0
      927 CALL                             R38 4 1
      928 SETTABLEKS                       R38 R37 K64 ["Position"]
      930 LOADK                            R38 K133 ["Round"]
      931 SETTABLEKS                       R38 R37 K130 ["Style"]
      933 GETTABLEKS                       R38 R0 K161 ["onShowMoreActivated"]
      935 SETTABLEKS                       R38 R37 K131 ["OnClick"]
      937 DUPTABLE                         R38 K164 [{"Dots", "Dropdown"}]
      938 GETUPVAL                         R39 2
      939 GETTABLEKS                       R39 R39 K37 ["createElement"]
      941 LOADK                            R40 K86 ["TextLabel"]
      942 DUPTABLE                         R41 K165 [{"AnchorPoint", "Position", "Size", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency"}]
      943 GETIMPORT                        R42 K124 [Vector2.new]
      945 LOADK                            R43 K33 [0.5]
      946 LOADK                            R44 K33 [0.5]
      947 CALL                             R42 2 1
      948 SETTABLEKS                       R42 R41 K121 ["AnchorPoint"]
      950 GETIMPORT                        R42 K28 [UDim2.new]
      952 LOADK                            R43 K33 [0.5]
      953 LOADN                            R44 0
      954 LOADK                            R45 K33 [0.5]
      955 LOADN                            R46 252
      956 CALL                             R42 4 1
      957 SETTABLEKS                       R42 R41 K64 ["Position"]
      959 GETIMPORT                        R42 K28 [UDim2.new]
      961 LOADN                            R43 0
      962 LOADN                            R44 16
      963 LOADN                            R45 0
      964 LOADN                            R46 16
      965 CALL                             R42 4 1
      966 SETTABLEKS                       R42 R41 K41 ["Size"]
      968 LOADK                            R42 K166 ["..."]
      969 SETTABLEKS                       R42 R41 K90 ["Text"]
      971 GETTABLEKS                       R42 R10 K115 ["TextColor"]
      973 SETTABLEKS                       R42 R41 K91 ["TextColor3"]
      975 GETIMPORT                        R42 K168 [Enum.Font.SourceSansBold]
      977 SETTABLEKS                       R42 R41 K92 ["Font"]
      979 LOADN                            R42 18
      980 SETTABLEKS                       R42 R41 K88 ["TextSize"]
      982 LOADN                            R42 1
      983 SETTABLEKS                       R42 R41 K66 ["BackgroundTransparency"]
      985 CALL                             R39 2 1
      986 SETTABLEKS                       R39 R38 K162 ["Dots"]
      988 GETUPVAL                         R39 2
      989 GETTABLEKS                       R39 R39 K37 ["createElement"]
      991 GETUPVAL                         R40 9
      992 DUPTABLE                         R41 K174 [{"Hide", "Size", "Items", "OnRenderItem", "OnItemActivated", "OnFocusLost"}]
      993 NOT                              R42 R7
      994 SETTABLEKS                       R42 R41 K169 ["Hide"]
      996 GETIMPORT                        R42 K176 [UDim2.fromOffset]
      998 LOADN                            R43 90
      999 GETTABLEKS                       R46 R0 K178 ["getMoreItems"]
     1001 CALL                             R46 0 1
     1002 LENGTH                           R45 R46
     1003 MULK                             R44 R45 K177 [40]
     1004 CALL                             R42 2 1
     1005 SETTABLEKS                       R42 R41 K41 ["Size"]
     1007 GETTABLEKS                       R42 R0 K178 ["getMoreItems"]
     1009 CALL                             R42 0 1
     1010 SETTABLEKS                       R42 R41 K170 ["Items"]
     1012 DUPCLOSURE                       R42 K179 [PROTO_14]
     1013 CAPTURE                          UPVAL U2
     1014 CAPTURE                          UPVAL U5
     1015 CAPTURE                          UPVAL U10
     1016 SETTABLEKS                       R42 R41 K171 ["OnRenderItem"]
     1018 GETTABLEKS                       R42 R0 K180 ["moreItemClicked"]
     1020 SETTABLEKS                       R42 R41 K172 ["OnItemActivated"]
     1022 GETTABLEKS                       R42 R0 K181 ["hideShowMore"]
     1024 SETTABLEKS                       R42 R41 K173 ["OnFocusLost"]
     1026 CALL                             R39 2 1
     1027 SETTABLEKS                       R39 R38 K163 ["Dropdown"]
     1029 CALL                             R35 3 1
     1030 SETTABLEKS                       R35 R34 K54 ["ShowMoreButton"]
     1032 CALL                             R31 3 -1
     1033 RETURN                           R31 -1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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
       15 GETIMPORT                        R2 K1 [game]
       17 LOADK                            R4 K7 ["ContentProvider"]
       18 NAMECALL                         R2 R2 K8 ["GetService"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K1 [game]
       23 LOADK                            R5 K9 ["GuiService"]
       24 NAMECALL                         R3 R3 K8 ["GetService"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K1 [game]
       29 LOADK                            R6 K10 ["HttpService"]
       30 NAMECALL                         R4 R4 K8 ["GetService"]
       32 CALL                             R4 2 1
       33 GETIMPORT                        R5 K12 [require]
       35 GETTABLEKS                       R6 R1 K13 ["Packages"]
       37 GETTABLEKS                       R6 R6 K14 ["Roact"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K12 [require]
       42 GETTABLEKS                       R7 R1 K13 ["Packages"]
       44 GETTABLEKS                       R7 R7 K15 ["RoactRodux"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K12 [require]
       49 GETTABLEKS                       R8 R1 K16 ["Src"]
       51 GETTABLEKS                       R8 R8 K17 ["Util"]
       53 GETTABLEKS                       R8 R8 K18 ["Constants"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K12 [require]
       58 GETTABLEKS                       R9 R1 K16 ["Src"]
       60 GETTABLEKS                       R9 R9 K17 ["Util"]
       62 GETTABLEKS                       R9 R9 K19 ["UpdateStatus"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K12 [require]
       67 GETTABLEKS                       R10 R1 K13 ["Packages"]
       69 GETTABLEKS                       R10 R10 K20 ["Framework"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R9 R9 K21 ["ContextServices"]
       74 GETTABLEKS                       R10 R9 K22 ["withContext"]
       76 GETIMPORT                        R11 K12 [require]
       78 GETTABLEKS                       R12 R1 K16 ["Src"]
       80 GETTABLEKS                       R12 R12 K21 ["ContextServices"]
       82 GETTABLEKS                       R12 R12 K23 ["PluginAPI2"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K12 [require]
       87 GETTABLEKS                       R13 R1 K16 ["Src"]
       89 GETTABLEKS                       R13 R13 K21 ["ContextServices"]
       91 GETTABLEKS                       R13 R13 K24 ["Navigation"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K12 [require]
       96 GETTABLEKS                       R14 R1 K16 ["Src"]
       98 GETTABLEKS                       R14 R14 K25 ["Thunks"]
      100 GETTABLEKS                       R14 R14 K26 ["SetPluginEnabledState"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K12 [require]
      105 GETTABLEKS                       R15 R1 K16 ["Src"]
      107 GETTABLEKS                       R15 R15 K25 ["Thunks"]
      109 GETTABLEKS                       R15 R15 K27 ["UpdatePlugin"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K12 [require]
      114 GETTABLEKS                       R16 R1 K13 ["Packages"]
      116 GETTABLEKS                       R16 R16 K20 ["Framework"]
      118 CALL                             R15 1 1
      119 GETTABLEKS                       R16 R15 K28 ["UI"]
      121 GETTABLEKS                       R17 R16 K29 ["Button"]
      123 GETTABLEKS                       R18 R16 K30 ["TextLabel"]
      125 GETTABLEKS                       R19 R16 K31 ["DropdownMenu"]
      127 GETTABLEKS                       R20 R16 K32 ["ToggleButton"]
      129 GETTABLEKS                       R21 R16 K33 ["FakeLoadingBar"]
      131 GETIMPORT                        R22 K12 [require]
      133 GETTABLEKS                       R23 R1 K16 ["Src"]
      135 GETTABLEKS                       R23 R23 K34 ["Actions"]
      137 GETTABLEKS                       R23 R23 K35 ["RemovePluginData"]
      139 CALL                             R22 1 1
      140 GETIMPORT                        R23 K12 [require]
      142 GETTABLEKS                       R24 R1 K16 ["Src"]
      144 GETTABLEKS                       R24 R24 K36 ["Components"]
      146 GETTABLEKS                       R24 R24 K37 ["HttpRequestOverview"]
      148 CALL                             R23 1 1
      149 GETIMPORT                        R24 K12 [require]
      151 GETTABLEKS                       R25 R1 K16 ["Src"]
      153 GETTABLEKS                       R25 R25 K36 ["Components"]
      155 GETTABLEKS                       R25 R25 K38 ["UpdateOverview"]
      157 CALL                             R24 1 1
      158 GETIMPORT                        R25 K12 [require]
      160 GETTABLEKS                       R26 R1 K16 ["Src"]
      162 GETTABLEKS                       R26 R26 K17 ["Util"]
      164 GETTABLEKS                       R26 R26 K39 ["PluginManagementApi"]
      166 CALL                             R25 1 1
      167 GETIMPORT                        R26 K42 [UDim2.new]
      169 LOADN                            R27 0
      170 LOADN                            R28 120
      171 LOADN                            R29 0
      172 LOADN                            R30 8
      173 CALL                             R26 4 1
      174 GETTABLEKS                       R27 R5 K43 ["Component"]
      176 LOADK                            R29 K44 ["PluginEntry"]
      177 NAMECALL                         R27 R27 K45 ["extend"]
      179 CALL                             R27 2 1
      180 DUPCLOSURE                       R28 K46 [PROTO_12]
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R0
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R7
      186 SETTABLEKS                       R28 R27 K47 ["init"]
      188 DUPCLOSURE                       R28 K48 [PROTO_13]
      189 CAPTURE                          VAL R8
      190 SETTABLEKS                       R28 R27 K49 ["getDerivedStateFromProps"]
      192 DUPCLOSURE                       R28 K50 [PROTO_15]
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R5
      196 CAPTURE                          VAL R23
      197 CAPTURE                          VAL R24
      198 CAPTURE                          VAL R17
      199 CAPTURE                          VAL R21
      200 CAPTURE                          VAL R26
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R18
      204 SETTABLEKS                       R28 R27 K51 ["render"]
      206 MOVE                             R28 R10
      207 DUPTABLE                         R29 K56 [{"Navigation", "Localization", "Stylizer", "API", "Analytics", "PluginManagementApi"}]
      208 SETTABLEKS                       R12 R29 K24 ["Navigation"]
      210 GETTABLEKS                       R30 R9 K52 ["Localization"]
      212 SETTABLEKS                       R30 R29 K52 ["Localization"]
      214 GETTABLEKS                       R30 R9 K53 ["Stylizer"]
      216 SETTABLEKS                       R30 R29 K53 ["Stylizer"]
      218 SETTABLEKS                       R11 R29 K54 ["API"]
      220 GETTABLEKS                       R30 R9 K55 ["Analytics"]
      222 SETTABLEKS                       R30 R29 K55 ["Analytics"]
      224 SETTABLEKS                       R25 R29 K39 ["PluginManagementApi"]
      226 CALL                             R28 1 1
      227 MOVE                             R29 R27
      228 CALL                             R28 1 1
      229 MOVE                             R27 R28
      230 DUPCLOSURE                       R28 K57 [PROTO_16]
      231 DUPCLOSURE                       R29 K58 [PROTO_20]
      232 CAPTURE                          VAL R22
      233 CAPTURE                          VAL R13
      234 CAPTURE                          VAL R14
      235 GETTABLEKS                       R30 R6 K59 ["connect"]
      237 MOVE                             R31 R28
      238 MOVE                             R32 R29
      239 CALL                             R30 2 1
      240 MOVE                             R31 R27
      241 CALL                             R30 1 -1
      242 RETURN                           R30 -1
