PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 NEWTABLE                         R1 0 2
        7 DUPTABLE                         R2 K5 [{["Key"] = "Details", ["Text"]}]
        8 LOADK                            R5 K6 ["EntrySeeMore"]
        9 LOADK                            R6 K7 ["DetailsButton"]
       10 NAMECALL                         R3 R0 K8 ["getText"]
       12 CALL                             R3 3 1
       13 SETTABLEKS                       R3 R2 K4 ["Text"]
       15 DUPTABLE                         R3 K10 [{["Key"] = "Remove", ["Text"]}]
       16 LOADK                            R6 K6 ["EntrySeeMore"]
       17 LOADK                            R7 K11 ["RemoveButton"]
       18 NAMECALL                         R4 R0 K8 ["getText"]
       20 CALL                             R4 3 1
       21 SETTABLEKS                       R4 R3 K4 ["Text"]
       23 SETLIST                          R1 R2 2 [1]
       25 RETURN                           R1 1

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
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

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
        0 DUPTABLE                         R1 K3 [{[1] = False, ["showMore"] = False}]
        1 SETTABLEKS                       R1 R0 K4 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K5 ["getMoreItems"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K6 ["onPluginEnabled"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K7 ["onPluginDisabled"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 SETTABLEKS                       R1 R0 K8 ["showDetails"]
       23 NEWCLOSURE                       R1 P4
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K9 ["uninstallPlugin"]
       27 NEWCLOSURE                       R1 P5
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K10 ["onShowMoreActivated"]
       31 NEWCLOSURE                       R1 P6
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K11 ["hideShowMore"]
       35 NEWCLOSURE                       R1 P7
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R1 R0 K12 ["moreItemClicked"]
       39 NEWCLOSURE                       R1 P8
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R1 R0 K13 ["updatePlugin"]
       43 NEWCLOSURE                       R1 P9
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U3
       49 SETTABLEKS                       R1 R0 K14 ["openCreatorProfile"]
       51 NEWCLOSURE                       R1 P10
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U4
       54 SETTABLEKS                       R1 R0 K15 ["openPluginDetails"]
       56 NEWCLOSURE                       R1 P11
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R1 R0 K16 ["onToggleClick"]
       60 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["data"]
        2 GETTABLEKS                       R2 R2 K1 ["status"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["Success"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+3]
        9 DUPTABLE                         R2 K5 [{["showSuccessMessage"] = True}]
       10 RETURN                           R2 1
       11 GETTABLEKS                       R2 R0 K6 ["isUpdated"]
       13 JUMPIF                           R2 ; [+2]
       14 DUPTABLE                         R2 K8 [{["showSuccessMessage"] = False}]
       15 RETURN                           R2 1
       16 LOADNIL                          R2
       17 RETURN                           R2 1

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
       23 DUPTABLE                         R9 K14 [{["Size"], ["TextSize"] = 18, ["Text"], ["TextXAlignment"]}]
       24 GETIMPORT                        R10 K7 [UDim2.new]
       26 LOADN                            R11 1
       27 LOADN                            R12 0
       28 LOADN                            R13 1
       29 LOADN                            R14 0
       30 CALL                             R10 4 1
       31 SETTABLEKS                       R10 R9 K1 ["Size"]
       33 GETTABLEKS                       R10 R0 K12 ["Text"]
       35 SETTABLEKS                       R10 R9 K12 ["Text"]
       37 GETIMPORT                        R10 K17 [Enum.TextXAlignment.Left]
       39 SETTABLEKS                       R10 R9 K13 ["TextXAlignment"]
       41 DUPTABLE                         R10 K19 [{"Padding"}]
       42 GETUPVAL                         R11 0
       43 GETTABLEKS                       R11 R11 K0 ["createElement"]
       45 LOADK                            R12 K20 ["UIPadding"]
       46 DUPTABLE                         R13 K22 [{"PaddingLeft"}]
       47 GETIMPORT                        R14 K24 [UDim.new]
       49 LOADN                            R15 0
       50 LOADN                            R16 10
       51 CALL                             R14 2 1
       52 SETTABLEKS                       R14 R13 K21 ["PaddingLeft"]
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K18 ["Padding"]
       57 CALL                             R7 3 1
       58 SETTABLEKS                       R7 R6 K8 ["Label"]
       60 CALL                             R3 3 -1
       61 RETURN                           R3 -1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["data"]
        6 GETTABLEKS                       R4 R2 K3 ["showMore"]
        8 GETTABLEKS                       R5 R1 K4 ["Localization"]
       10 GETTABLEKS                       R6 R1 K5 ["Stylizer"]
       12 GETTABLEKS                       R7 R1 K6 ["API"]
       14 NAMECALL                         R7 R7 K7 ["get"]
       16 CALL                             R7 1 1
       17 GETTABLEKS                       R8 R1 K8 ["LayoutOrder"]
       19 GETTABLEKS                       R9 R1 K9 ["isUpdated"]
       21 GETTABLEKS                       R10 R3 K10 ["isModerated"]
       23 GETTABLEKS                       R11 R3 K11 ["status"]
       25 GETTABLEKS                       R12 R3 K12 ["assetId"]
       27 NOT                              R13 R10
       28 JUMPIFNOT                        R13 ; [+2]
       29 GETTABLEKS                       R13 R3 K13 ["enabled"]
       31 GETTABLEKS                       R15 R3 K15 ["name"]
       33 ORK                              R14 R15 K14 [""]
       34 GETTABLEKS                       R16 R3 K16 ["description"]
       36 ORK                              R15 R16 K14 [""]
       37 GETTABLEKS                       R17 R3 K17 ["creator"]
       39 JUMPIFNOT                        R17 ; [+5]
       40 GETTABLEKS                       R16 R3 K17 ["creator"]
       42 GETTABLEKS                       R16 R16 K18 ["Name"]
       44 JUMPIF                           R16 ; [+1]
       45 LOADK                            R16 K14 [""]
       46 GETTABLEKS                       R17 R7 K19 ["AssetGame"]
       48 GETTABLEKS                       R17 R17 K20 ["AssetThumbnail"]
       50 GETTABLEKS                       R17 R17 K21 ["image"]
       52 MOVE                             R18 R12
       53 CALL                             R17 1 1
       54 NAMECALL                         R17 R17 K22 ["getUrl"]
       56 CALL                             R17 1 1
       57 NOT                              R18 R10
       58 JUMPIFNOT                        R18 ; [+9]
       59 NOT                              R18 R9
       60 JUMPIFNOT                        R18 ; [+7]
       61 GETUPVAL                         R19 0
       62 GETTABLEKS                       R19 R19 K23 ["Updating"]
       64 JUMPIFNOTEQ                      R11 R19 ; [+2]
       66 LOADB                            R18 0 +1
       67 LOADB                            R18 1
       68 GETIMPORT                        R19 K26 [UDim2.new]
       70 LOADN                            R20 1
       71 GETUPVAL                         R24 1
       72 GETTABLEKS                       R24 R24 K28 ["PLUGIN_HORIZONTAL_PADDING"]
       74 MULK                             R23 R24 K27 [-3]
       75 GETUPVAL                         R24 1
       76 GETTABLEKS                       R24 R24 K29 ["PLUGIN_ENABLE_WIDTH"]
       78 SUB                              R22 R23 R24
       79 GETUPVAL                         R23 1
       80 GETTABLEKS                       R23 R23 K30 ["PLUGIN_CONTEXT_WIDTH"]
       82 SUB                              R21 R22 R23
       83 LOADK                            R22 K31 [0.5]
       84 LOADN                            R23 0
       85 CALL                             R19 4 1
       86 GETUPVAL                         R21 1
       87 GETTABLEKS                       R21 R21 K32 ["THUMBNAIL_SIZE"]
       89 LOADN                            R23 2
       90 GETUPVAL                         R24 1
       91 GETTABLEKS                       R24 R24 K28 ["PLUGIN_HORIZONTAL_PADDING"]
       93 MUL                              R22 R23 R24
       94 ADD                              R20 R21 R22
       95 GETUPVAL                         R23 1
       96 GETTABLEKS                       R23 R23 K29 ["PLUGIN_ENABLE_WIDTH"]
       98 GETUPVAL                         R24 1
       99 GETTABLEKS                       R24 R24 K30 ["PLUGIN_CONTEXT_WIDTH"]
      101 ADD                              R22 R23 R24
      102 LOADN                            R24 3
      103 GETUPVAL                         R25 1
      104 GETTABLEKS                       R25 R25 K28 ["PLUGIN_HORIZONTAL_PADDING"]
      106 MUL                              R23 R24 R25
      107 ADD                              R21 R22 R23
      108 LOADN                            R22 0
      109 JUMPIFNOT                        R18 ; [+8]
      110 GETUPVAL                         R23 1
      111 GETTABLEKS                       R23 R23 K33 ["HEADER_UPDATE_WIDTH"]
      113 GETUPVAL                         R24 1
      114 GETTABLEKS                       R24 R24 K28 ["PLUGIN_HORIZONTAL_PADDING"]
      116 ADD                              R22 R23 R24
      117 JUMP                             ; [+8]
      118 JUMPIFNOT                        R10 ; [+7]
      119 GETUPVAL                         R23 1
      120 GETTABLEKS                       R23 R23 K34 ["MODERATED_WARNING_WIDTH"]
      122 GETUPVAL                         R24 1
      123 GETTABLEKS                       R24 R24 K28 ["PLUGIN_HORIZONTAL_PADDING"]
      125 ADD                              R22 R23 R24
      126 ADD                              R24 R20 R22
      127 ADD                              R23 R24 R21
      128 GETUPVAL                         R24 2
      129 GETTABLEKS                       R24 R24 K35 ["createElement"]
      131 LOADK                            R25 K36 ["Frame"]
      132 DUPTABLE                         R26 K41 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"], ["Size"]}]
      133 GETTABLEKS                       R27 R6 K42 ["BackgroundColor"]
      135 SETTABLEKS                       R27 R26 K37 ["BackgroundColor3"]
      137 SETTABLEKS                       R8 R26 K8 ["LayoutOrder"]
      139 GETIMPORT                        R27 K26 [UDim2.new]
      141 LOADN                            R28 1
      142 GETUPVAL                         R29 1
      143 GETTABLEKS                       R29 R29 K43 ["SCROLLBAR_WIDTH_ADJUSTMENT"]
      145 LOADN                            R30 0
      146 GETUPVAL                         R31 1
      147 GETTABLEKS                       R31 R31 K44 ["PLUGIN_ENTRY_HEIGHT"]
      149 CALL                             R27 4 1
      150 SETTABLEKS                       R27 R26 K40 ["Size"]
      152 DUPTABLE                         R27 K54 [{"Padding", "Thumbnail", "Contents", "ModeratedWarning", "UpdateButton", "ProgressIndicator", "SuccessLabel", "ToggleButton", "ShowMoreButton"}]
      153 GETUPVAL                         R28 2
      154 GETTABLEKS                       R28 R28 K35 ["createElement"]
      156 LOADK                            R29 K55 ["UIPadding"]
      157 DUPTABLE                         R30 K58 [{"PaddingTop", "PaddingBottom"}]
      158 GETIMPORT                        R31 K60 [UDim.new]
      160 LOADN                            R32 0
      161 GETUPVAL                         R33 1
      162 GETTABLEKS                       R33 R33 K61 ["PLUGIN_ENTRY_PADDING"]
      164 CALL                             R31 2 1
      165 SETTABLEKS                       R31 R30 K56 ["PaddingTop"]
      167 GETIMPORT                        R31 K60 [UDim.new]
      169 LOADN                            R32 0
      170 GETUPVAL                         R33 1
      171 GETTABLEKS                       R33 R33 K61 ["PLUGIN_ENTRY_PADDING"]
      173 CALL                             R31 2 1
      174 SETTABLEKS                       R31 R30 K57 ["PaddingBottom"]
      176 CALL                             R28 2 1
      177 SETTABLEKS                       R28 R27 K45 ["Padding"]
      179 GETUPVAL                         R28 2
      180 GETTABLEKS                       R28 R28 K35 ["createElement"]
      182 LOADK                            R29 K62 ["ImageLabel"]
      183 DUPTABLE                         R30 K67 [{["Size"], ["Position"], ["Image"], ["BackgroundTransparency"] = 1}]
      184 GETIMPORT                        R31 K26 [UDim2.new]
      186 LOADN                            R32 0
      187 GETUPVAL                         R33 1
      188 GETTABLEKS                       R33 R33 K32 ["THUMBNAIL_SIZE"]
      190 LOADN                            R34 0
      191 GETUPVAL                         R35 1
      192 GETTABLEKS                       R35 R35 K32 ["THUMBNAIL_SIZE"]
      194 CALL                             R31 4 1
      195 SETTABLEKS                       R31 R30 K40 ["Size"]
      197 GETIMPORT                        R31 K26 [UDim2.new]
      199 LOADN                            R32 0
      200 GETUPVAL                         R33 1
      201 GETTABLEKS                       R33 R33 K28 ["PLUGIN_HORIZONTAL_PADDING"]
      203 LOADN                            R34 0
      204 GETUPVAL                         R35 1
      205 GETTABLEKS                       R35 R35 K68 ["PLUGIN_VERTICAL_PADDING"]
      207 CALL                             R31 4 1
      208 SETTABLEKS                       R31 R30 K63 ["Position"]
      210 SETTABLEKS                       R17 R30 K64 ["Image"]
      212 CALL                             R28 2 1
      213 SETTABLEKS                       R28 R27 K46 ["Thumbnail"]
      215 GETUPVAL                         R28 2
      216 GETTABLEKS                       R28 R28 K35 ["createElement"]
      218 LOADK                            R29 K36 ["Frame"]
      219 DUPTABLE                         R30 K69 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      220 GETIMPORT                        R31 K26 [UDim2.new]
      222 LOADN                            R32 0
      223 GETUPVAL                         R34 1
      224 GETTABLEKS                       R34 R34 K32 ["THUMBNAIL_SIZE"]
      226 GETUPVAL                         R36 1
      227 GETTABLEKS                       R36 R36 K28 ["PLUGIN_HORIZONTAL_PADDING"]
      229 MULK                             R35 R36 K70 [2]
      230 ADD                              R33 R34 R35
      231 LOADN                            R34 0
      232 LOADN                            R35 0
      233 CALL                             R31 4 1
      234 SETTABLEKS                       R31 R30 K63 ["Position"]
      236 GETIMPORT                        R31 K26 [UDim2.new]
      238 LOADN                            R32 1
      239 MINUS                            R33 R23
      240 LOADN                            R34 1
      241 LOADN                            R35 0
      242 CALL                             R31 4 1
      243 SETTABLEKS                       R31 R30 K40 ["Size"]
      245 DUPTABLE                         R31 K76 [{"Layout", "Name", "Creator", "Description", "HttpRequestOverview", "UpdateOverview"}]
      246 GETUPVAL                         R32 2
      247 GETTABLEKS                       R32 R32 K35 ["createElement"]
      249 LOADK                            R33 K77 ["UIListLayout"]
      250 DUPTABLE                         R34 K80 [{"SortOrder", "FillDirection", "Padding"}]
      251 GETIMPORT                        R35 K82 [Enum.SortOrder.LayoutOrder]
      253 SETTABLEKS                       R35 R34 K78 ["SortOrder"]
      255 GETIMPORT                        R35 K84 [Enum.FillDirection.Vertical]
      257 SETTABLEKS                       R35 R34 K79 ["FillDirection"]
      259 GETIMPORT                        R35 K60 [UDim.new]
      261 LOADN                            R36 0
      262 GETUPVAL                         R37 1
      263 GETTABLEKS                       R37 R37 K85 ["PLUGIN_ENTRY_INNER_VERTICAL_PADDING"]
      265 CALL                             R35 2 1
      266 SETTABLEKS                       R35 R34 K45 ["Padding"]
      268 CALL                             R32 2 1
      269 SETTABLEKS                       R32 R31 K71 ["Layout"]
      271 GETUPVAL                         R32 2
      272 GETTABLEKS                       R32 R32 K35 ["createElement"]
      274 LOADK                            R33 K86 ["TextLabel"]
      275 DUPTABLE                         R34 K95 [{["LayoutOrder"] = 0, ["TextWrapped"] = True, ["TextSize"] = 22, ["Size"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["Text"], ["TextColor3"], ["Font"]}]
      276 GETIMPORT                        R35 K26 [UDim2.new]
      278 LOADN                            R36 1
      279 LOADN                            R37 0
      280 LOADN                            R38 0
      281 GETUPVAL                         R39 1
      282 GETTABLEKS                       R39 R39 K96 ["PLUGIN_NAME_HEIGHT"]
      284 CALL                             R35 4 1
      285 SETTABLEKS                       R35 R34 K40 ["Size"]
      287 GETIMPORT                        R35 K98 [Enum.TextXAlignment.Left]
      289 SETTABLEKS                       R35 R34 K91 ["TextXAlignment"]
      291 SETTABLEKS                       R14 R34 K92 ["Text"]
      293 GETTABLEKS                       R35 R6 K99 ["EmphasisTextColor"]
      295 SETTABLEKS                       R35 R34 K93 ["TextColor3"]
      297 GETIMPORT                        R35 K101 [Enum.Font.SourceSans]
      299 SETTABLEKS                       R35 R34 K94 ["Font"]
      301 CALL                             R32 2 1
      302 SETTABLEKS                       R32 R31 K18 ["Name"]
      304 GETUPVAL                         R32 2
      305 GETTABLEKS                       R32 R32 K35 ["createElement"]
      307 LOADK                            R33 K102 ["TextButton"]
      308 NEWTABLE                         R34 16 0
      310 LOADN                            R35 1
      311 SETTABLEKS                       R35 R34 K8 ["LayoutOrder"]
      313 LOADB                            R35 1
      314 SETTABLEKS                       R35 R34 K87 ["TextWrapped"]
      316 GETIMPORT                        R35 K26 [UDim2.new]
      318 LOADN                            R36 1
      319 LOADN                            R37 0
      320 LOADN                            R38 0
      321 GETUPVAL                         R39 1
      322 GETTABLEKS                       R39 R39 K103 ["PLUGIN_CREATOR_HEIGHT"]
      324 CALL                             R35 4 1
      325 SETTABLEKS                       R35 R34 K40 ["Size"]
      327 LOADN                            R35 1
      328 SETTABLEKS                       R35 R34 K65 ["BackgroundTransparency"]
      330 GETIMPORT                        R35 K98 [Enum.TextXAlignment.Left]
      332 SETTABLEKS                       R35 R34 K91 ["TextXAlignment"]
      334 SETTABLEKS                       R16 R34 K92 ["Text"]
      336 GETIMPORT                        R35 K105 [Enum.Font.SourceSansLight]
      338 SETTABLEKS                       R35 R34 K94 ["Font"]
      340 GETTABLEKS                       R35 R6 K106 ["LinkColor"]
      342 SETTABLEKS                       R35 R34 K93 ["TextColor3"]
      344 LOADN                            R35 16
      345 SETTABLEKS                       R35 R34 K89 ["TextSize"]
      347 LOADN                            R35 1
      348 SETTABLEKS                       R35 R34 K38 ["BorderSizePixel"]
      350 GETUPVAL                         R35 2
      351 GETTABLEKS                       R35 R35 K107 ["Event"]
      353 GETTABLEKS                       R35 R35 K108 ["Activated"]
      355 GETTABLEKS                       R36 R0 K109 ["openCreatorProfile"]
      357 SETTABLE                         R36 R34 R35
      358 CALL                             R32 2 1
      359 SETTABLEKS                       R32 R31 K72 ["Creator"]
      361 GETUPVAL                         R32 2
      362 GETTABLEKS                       R32 R32 K35 ["createElement"]
      364 LOADK                            R33 K86 ["TextLabel"]
      365 DUPTABLE                         R34 K114 [{["ClipsDescendants"] = True, ["LayoutOrder"] = 2, ["TextWrapped"] = True, ["Size"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["TextColor3"], ["TextTruncate"], ["Font"], ["TextSize"] = 16}]
      366 GETIMPORT                        R35 K26 [UDim2.new]
      368 LOADN                            R36 1
      369 LOADN                            R37 0
      370 LOADN                            R38 0
      371 GETUPVAL                         R39 1
      372 GETTABLEKS                       R39 R39 K115 ["PLUGIN_DESCRIPTION_HEIGHT"]
      374 CALL                             R35 4 1
      375 SETTABLEKS                       R35 R34 K40 ["Size"]
      377 GETIMPORT                        R35 K98 [Enum.TextXAlignment.Left]
      379 SETTABLEKS                       R35 R34 K91 ["TextXAlignment"]
      381 GETIMPORT                        R35 K117 [Enum.TextYAlignment.Top]
      383 SETTABLEKS                       R35 R34 K111 ["TextYAlignment"]
      385 SETTABLEKS                       R15 R34 K92 ["Text"]
      387 GETTABLEKS                       R35 R6 K118 ["TextColor"]
      389 SETTABLEKS                       R35 R34 K93 ["TextColor3"]
      391 GETIMPORT                        R35 K120 [Enum.TextTruncate.AtEnd]
      393 SETTABLEKS                       R35 R34 K112 ["TextTruncate"]
      395 GETIMPORT                        R35 K101 [Enum.Font.SourceSans]
      397 SETTABLEKS                       R35 R34 K94 ["Font"]
      399 CALL                             R32 2 1
      400 SETTABLEKS                       R32 R31 K73 ["Description"]
      402 GETUPVAL                         R32 2
      403 GETTABLEKS                       R32 R32 K35 ["createElement"]
      405 GETUPVAL                         R33 3
      406 DUPTABLE                         R34 K122 [{["assetId"], ["LayoutOrder"] = 3}]
      407 GETTABLEKS                       R35 R3 K12 ["assetId"]
      409 SETTABLEKS                       R35 R34 K12 ["assetId"]
      411 CALL                             R32 2 1
      412 SETTABLEKS                       R32 R31 K74 ["HttpRequestOverview"]
      414 GETUPVAL                         R32 2
      415 GETTABLEKS                       R32 R32 K35 ["createElement"]
      417 GETUPVAL                         R33 4
      418 DUPTABLE                         R34 K125 [{["data"], ["LayoutOrder"] = 4, ["updateAvailable"]}]
      419 SETTABLEKS                       R3 R34 K2 ["data"]
      421 SETTABLEKS                       R18 R34 K124 ["updateAvailable"]
      423 CALL                             R32 2 1
      424 SETTABLEKS                       R32 R31 K75 ["UpdateOverview"]
      426 CALL                             R28 3 1
      427 SETTABLEKS                       R28 R27 K47 ["Contents"]
      429 MOVE                             R28 R10
      430 JUMPIFNOT                        R28 ; [+51]
      431 GETUPVAL                         R28 2
      432 GETTABLEKS                       R28 R28 K35 ["createElement"]
      434 LOADK                            R29 K86 ["TextLabel"]
      435 DUPTABLE                         R30 K128 [{["AnchorPoint"], ["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"], ["TextSize"] = 14, ["TextWrapped"] = True, ["Font"], ["TextColor3"], ["Text"]}]
      436 GETIMPORT                        R31 K130 [Vector2.new]
      438 LOADN                            R32 1
      439 LOADK                            R33 K31 [0.5]
      440 CALL                             R31 2 1
      441 SETTABLEKS                       R31 R30 K126 ["AnchorPoint"]
      443 GETIMPORT                        R31 K26 [UDim2.new]
      445 LOADN                            R32 0
      446 GETUPVAL                         R33 1
      447 GETTABLEKS                       R33 R33 K34 ["MODERATED_WARNING_WIDTH"]
      449 LOADN                            R34 0
      450 GETUPVAL                         R35 1
      451 GETTABLEKS                       R35 R35 K131 ["HEADER_BUTTON_SIZE"]
      453 CALL                             R31 4 1
      454 SETTABLEKS                       R31 R30 K40 ["Size"]
      456 SETTABLEKS                       R19 R30 K63 ["Position"]
      458 GETIMPORT                        R31 K133 [Enum.TextXAlignment.Right]
      460 SETTABLEKS                       R31 R30 K91 ["TextXAlignment"]
      462 GETIMPORT                        R31 K117 [Enum.TextYAlignment.Top]
      464 SETTABLEKS                       R31 R30 K111 ["TextYAlignment"]
      466 GETIMPORT                        R31 K101 [Enum.Font.SourceSans]
      468 SETTABLEKS                       R31 R30 K94 ["Font"]
      470 GETTABLEKS                       R31 R6 K118 ["TextColor"]
      472 SETTABLEKS                       R31 R30 K93 ["TextColor3"]
      474 LOADK                            R33 K134 ["Entry"]
      475 LOADK                            R34 K48 ["ModeratedWarning"]
      476 NAMECALL                         R31 R5 K135 ["getText"]
      478 CALL                             R31 3 1
      479 SETTABLEKS                       R31 R30 K92 ["Text"]
      481 CALL                             R28 2 1
      482 SETTABLEKS                       R28 R27 K48 ["ModeratedWarning"]
      484 MOVE                             R28 R18
      485 JUMPIFNOT                        R28 ; [+164]
      486 GETUPVAL                         R28 2
      487 GETTABLEKS                       R28 R28 K35 ["createElement"]
      489 GETUPVAL                         R29 5
      490 DUPTABLE                         R30 K139 [{["AnchorPoint"], ["Size"], ["Position"], ["Style"] = "Round", ["OnClick"]}]
      491 GETIMPORT                        R31 K130 [Vector2.new]
      493 LOADN                            R32 1
      494 LOADK                            R33 K31 [0.5]
      495 CALL                             R31 2 1
      496 SETTABLEKS                       R31 R30 K126 ["AnchorPoint"]
      498 GETIMPORT                        R31 K26 [UDim2.new]
      500 LOADN                            R32 0
      501 GETUPVAL                         R33 1
      502 GETTABLEKS                       R33 R33 K33 ["HEADER_UPDATE_WIDTH"]
      504 LOADN                            R34 0
      505 GETUPVAL                         R35 1
      506 GETTABLEKS                       R35 R35 K131 ["HEADER_BUTTON_SIZE"]
      508 CALL                             R31 4 1
      509 SETTABLEKS                       R31 R30 K40 ["Size"]
      511 SETTABLEKS                       R19 R30 K63 ["Position"]
      513 GETTABLEKS                       R31 R0 K140 ["updatePlugin"]
      515 SETTABLEKS                       R31 R30 K138 ["OnClick"]
      517 DUPTABLE                         R31 K144 [{"Label", "DateLabel", "ErrorLabel"}]
      518 GETUPVAL                         R32 2
      519 GETTABLEKS                       R32 R32 K35 ["createElement"]
      521 LOADK                            R33 K86 ["TextLabel"]
      522 DUPTABLE                         R34 K146 [{["Size"], ["Text"], ["TextColor3"], ["Font"], ["TextSize"] = 18, ["BackgroundTransparency"] = 1}]
      523 GETIMPORT                        R35 K26 [UDim2.new]
      525 LOADN                            R36 1
      526 LOADN                            R37 0
      527 LOADN                            R38 1
      528 LOADN                            R39 0
      529 CALL                             R35 4 1
      530 SETTABLEKS                       R35 R34 K40 ["Size"]
      532 LOADK                            R37 K134 ["Entry"]
      533 LOADK                            R38 K49 ["UpdateButton"]
      534 NAMECALL                         R35 R5 K135 ["getText"]
      536 CALL                             R35 3 1
      537 SETTABLEKS                       R35 R34 K92 ["Text"]
      539 GETTABLEKS                       R35 R6 K118 ["TextColor"]
      541 SETTABLEKS                       R35 R34 K93 ["TextColor3"]
      543 GETIMPORT                        R35 K101 [Enum.Font.SourceSans]
      545 SETTABLEKS                       R35 R34 K94 ["Font"]
      547 CALL                             R32 2 1
      548 SETTABLEKS                       R32 R31 K141 ["Label"]
      550 LOADB                            R32 0
      551 GETUPVAL                         R33 0
      552 GETTABLEKS                       R33 R33 K147 ["Error"]
      554 JUMPIFEQ                         R11 R33 ; [+45]
      556 GETUPVAL                         R32 2
      557 GETTABLEKS                       R32 R32 K35 ["createElement"]
      559 LOADK                            R33 K86 ["TextLabel"]
      560 DUPTABLE                         R34 K149 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["TextSize"] = 14, ["Font"], ["TextColor3"], ["TextTransparency"] = 0, ["Text"]}]
      561 GETIMPORT                        R35 K26 [UDim2.new]
      563 LOADN                            R36 1
      564 LOADN                            R37 0
      565 LOADN                            R38 0
      566 LOADN                            R39 14
      567 CALL                             R35 4 1
      568 SETTABLEKS                       R35 R34 K40 ["Size"]
      570 GETIMPORT                        R35 K26 [UDim2.new]
      572 LOADN                            R36 0
      573 LOADN                            R37 0
      574 LOADN                            R38 1
      575 LOADN                            R39 3
      576 CALL                             R35 4 1
      577 SETTABLEKS                       R35 R34 K63 ["Position"]
      579 GETIMPORT                        R35 K101 [Enum.Font.SourceSans]
      581 SETTABLEKS                       R35 R34 K94 ["Font"]
      583 GETTABLEKS                       R35 R6 K118 ["TextColor"]
      585 SETTABLEKS                       R35 R34 K93 ["TextColor3"]
      587 LOADK                            R37 K134 ["Entry"]
      588 LOADK                            R38 K150 ["LastUpdatedDate"]
      589 DUPTABLE                         R39 K152 [{"date"}]
      590 GETTABLEKS                       R40 R3 K153 ["updated"]
      592 SETTABLEKS                       R40 R39 K151 ["date"]
      594 NAMECALL                         R35 R5 K135 ["getText"]
      596 CALL                             R35 4 1
      597 SETTABLEKS                       R35 R34 K92 ["Text"]
      599 CALL                             R32 2 1
      600 SETTABLEKS                       R32 R31 K142 ["DateLabel"]
      602 LOADB                            R32 0
      603 GETUPVAL                         R33 0
      604 GETTABLEKS                       R33 R33 K147 ["Error"]
      606 JUMPIFNOTEQ                      R11 R33 ; [+40]
      608 GETUPVAL                         R32 2
      609 GETTABLEKS                       R32 R32 K35 ["createElement"]
      611 LOADK                            R33 K86 ["TextLabel"]
      612 DUPTABLE                         R34 K154 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["TextSize"] = 14, ["Font"], ["TextColor3"], ["Text"]}]
      613 GETIMPORT                        R35 K26 [UDim2.new]
      615 LOADN                            R36 1
      616 LOADN                            R37 0
      617 LOADN                            R38 0
      618 LOADN                            R39 14
      619 CALL                             R35 4 1
      620 SETTABLEKS                       R35 R34 K40 ["Size"]
      622 GETIMPORT                        R35 K26 [UDim2.new]
      624 LOADN                            R36 0
      625 LOADN                            R37 0
      626 LOADN                            R38 1
      627 LOADN                            R39 3
      628 CALL                             R35 4 1
      629 SETTABLEKS                       R35 R34 K63 ["Position"]
      631 GETIMPORT                        R35 K101 [Enum.Font.SourceSans]
      633 SETTABLEKS                       R35 R34 K94 ["Font"]
      635 GETTABLEKS                       R35 R6 K155 ["ErrorColor"]
      637 SETTABLEKS                       R35 R34 K93 ["TextColor3"]
      639 LOADK                            R37 K134 ["Entry"]
      640 LOADK                            R38 K156 ["UpdateError"]
      641 NAMECALL                         R35 R5 K135 ["getText"]
      643 CALL                             R35 3 1
      644 SETTABLEKS                       R35 R34 K92 ["Text"]
      646 CALL                             R32 2 1
      647 SETTABLEKS                       R32 R31 K143 ["ErrorLabel"]
      649 CALL                             R28 3 1
      650 SETTABLEKS                       R28 R27 K49 ["UpdateButton"]
      652 NOT                              R28 R9
      653 JUMPIFNOT                        R28 ; [+24]
      654 LOADB                            R28 0
      655 GETUPVAL                         R29 0
      656 GETTABLEKS                       R29 R29 K23 ["Updating"]
      658 JUMPIFNOTEQ                      R11 R29 ; [+19]
      660 GETUPVAL                         R28 2
      661 GETTABLEKS                       R28 R28 K35 ["createElement"]
      663 GETUPVAL                         R29 6
      664 DUPTABLE                         R30 K158 [{["AnchorPoint"], ["Position"], ["Size"], ["LoadingTime"] = 0.5}]
      665 GETIMPORT                        R31 K130 [Vector2.new]
      667 LOADN                            R32 1
      668 LOADK                            R33 K31 [0.5]
      669 CALL                             R31 2 1
      670 SETTABLEKS                       R31 R30 K126 ["AnchorPoint"]
      672 SETTABLEKS                       R19 R30 K63 ["Position"]
      674 GETUPVAL                         R31 7
      675 SETTABLEKS                       R31 R30 K40 ["Size"]
      677 CALL                             R28 2 1
      678 SETTABLEKS                       R28 R27 K50 ["ProgressIndicator"]
      680 MOVE                             R28 R9
      681 JUMPIFNOT                        R28 ; [+46]
      682 GETTABLEKS                       R28 R2 K159 ["showSuccessMessage"]
      684 JUMPIFNOT                        R28 ; [+43]
      685 GETUPVAL                         R28 2
      686 GETTABLEKS                       R28 R28 K35 ["createElement"]
      688 LOADK                            R29 K86 ["TextLabel"]
      689 DUPTABLE                         R30 K160 [{["BackgroundTransparency"] = 1, ["Size"], ["AnchorPoint"], ["Position"], ["TextSize"] = 14, ["Font"], ["TextColor3"], ["TextXAlignment"], ["Text"]}]
      690 GETIMPORT                        R31 K26 [UDim2.new]
      692 LOADN                            R32 1
      693 LOADN                            R33 0
      694 LOADN                            R34 0
      695 LOADN                            R35 14
      696 CALL                             R31 4 1
      697 SETTABLEKS                       R31 R30 K40 ["Size"]
      699 GETIMPORT                        R31 K130 [Vector2.new]
      701 LOADN                            R32 1
      702 LOADK                            R33 K31 [0.5]
      703 CALL                             R31 2 1
      704 SETTABLEKS                       R31 R30 K126 ["AnchorPoint"]
      706 SETTABLEKS                       R19 R30 K63 ["Position"]
      708 GETIMPORT                        R31 K101 [Enum.Font.SourceSans]
      710 SETTABLEKS                       R31 R30 K94 ["Font"]
      712 GETTABLEKS                       R31 R6 K161 ["Green"]
      714 SETTABLEKS                       R31 R30 K93 ["TextColor3"]
      716 GETIMPORT                        R31 K133 [Enum.TextXAlignment.Right]
      718 SETTABLEKS                       R31 R30 K91 ["TextXAlignment"]
      720 LOADK                            R33 K134 ["Entry"]
      721 LOADK                            R34 K162 ["UpdateSuccess"]
      722 NAMECALL                         R31 R5 K135 ["getText"]
      724 CALL                             R31 3 1
      725 SETTABLEKS                       R31 R30 K92 ["Text"]
      727 CALL                             R28 2 1
      728 SETTABLEKS                       R28 R27 K51 ["SuccessLabel"]
      730 GETUPVAL                         R28 2
      731 GETTABLEKS                       R28 R28 K35 ["createElement"]
      733 GETUPVAL                         R29 8
      734 DUPTABLE                         R30 K166 [{["Disabled"] = False, ["Selected"], ["OnClick"], ["AnchorPoint"], ["Size"], ["Position"]}]
      735 SETTABLEKS                       R13 R30 K165 ["Selected"]
      737 GETTABLEKS                       R31 R0 K167 ["onToggleClick"]
      739 SETTABLEKS                       R31 R30 K138 ["OnClick"]
      741 GETIMPORT                        R31 K130 [Vector2.new]
      743 LOADN                            R32 0
      744 LOADK                            R33 K31 [0.5]
      745 CALL                             R31 2 1
      746 SETTABLEKS                       R31 R30 K126 ["AnchorPoint"]
      748 GETIMPORT                        R31 K26 [UDim2.new]
      750 LOADN                            R32 0
      751 GETUPVAL                         R33 1
      752 GETTABLEKS                       R33 R33 K29 ["PLUGIN_ENABLE_WIDTH"]
      754 LOADN                            R34 0
      755 LOADN                            R35 24
      756 CALL                             R31 4 1
      757 SETTABLEKS                       R31 R30 K40 ["Size"]
      759 GETIMPORT                        R31 K26 [UDim2.new]
      761 LOADN                            R32 1
      762 GETUPVAL                         R36 1
      763 GETTABLEKS                       R36 R36 K28 ["PLUGIN_HORIZONTAL_PADDING"]
      765 MULK                             R35 R36 K168 [-2]
      766 GETUPVAL                         R36 1
      767 GETTABLEKS                       R36 R36 K29 ["PLUGIN_ENABLE_WIDTH"]
      769 SUB                              R34 R35 R36
      770 GETUPVAL                         R35 1
      771 GETTABLEKS                       R35 R35 K30 ["PLUGIN_CONTEXT_WIDTH"]
      773 SUB                              R33 R34 R35
      774 LOADK                            R34 K31 [0.5]
      775 LOADN                            R35 0
      776 CALL                             R31 4 1
      777 SETTABLEKS                       R31 R30 K63 ["Position"]
      779 CALL                             R28 2 1
      780 SETTABLEKS                       R28 R27 K52 ["ToggleButton"]
      782 GETUPVAL                         R28 2
      783 GETTABLEKS                       R28 R28 K35 ["createElement"]
      785 GETUPVAL                         R29 5
      786 DUPTABLE                         R30 K139 [{["AnchorPoint"], ["Size"], ["Position"], ["Style"] = "Round", ["OnClick"]}]
      787 GETIMPORT                        R31 K130 [Vector2.new]
      789 LOADN                            R32 0
      790 LOADK                            R33 K31 [0.5]
      791 CALL                             R31 2 1
      792 SETTABLEKS                       R31 R30 K126 ["AnchorPoint"]
      794 GETIMPORT                        R31 K26 [UDim2.new]
      796 LOADN                            R32 0
      797 GETUPVAL                         R33 1
      798 GETTABLEKS                       R33 R33 K131 ["HEADER_BUTTON_SIZE"]
      800 LOADN                            R34 0
      801 GETUPVAL                         R35 1
      802 GETTABLEKS                       R35 R35 K131 ["HEADER_BUTTON_SIZE"]
      804 CALL                             R31 4 1
      805 SETTABLEKS                       R31 R30 K40 ["Size"]
      807 GETIMPORT                        R31 K26 [UDim2.new]
      809 LOADN                            R32 1
      810 LOADN                            R34 -1
      811 GETUPVAL                         R36 1
      812 GETTABLEKS                       R36 R36 K28 ["PLUGIN_HORIZONTAL_PADDING"]
      814 GETUPVAL                         R37 1
      815 GETTABLEKS                       R37 R37 K30 ["PLUGIN_CONTEXT_WIDTH"]
      817 ADD                              R35 R36 R37
      818 MUL                              R33 R34 R35
      819 LOADK                            R34 K31 [0.5]
      820 LOADN                            R35 0
      821 CALL                             R31 4 1
      822 SETTABLEKS                       R31 R30 K63 ["Position"]
      824 GETTABLEKS                       R31 R0 K169 ["onShowMoreActivated"]
      826 SETTABLEKS                       R31 R30 K138 ["OnClick"]
      828 DUPTABLE                         R31 K172 [{"Dots", "Dropdown"}]
      829 GETUPVAL                         R32 2
      830 GETTABLEKS                       R32 R32 K35 ["createElement"]
      832 LOADK                            R33 K86 ["TextLabel"]
      833 DUPTABLE                         R34 K174 [{["AnchorPoint"], ["Position"], ["Size"], ["Text"] = "...", ["TextColor3"], ["Font"], ["TextSize"] = 18, ["BackgroundTransparency"] = 1}]
      834 GETIMPORT                        R35 K130 [Vector2.new]
      836 LOADK                            R36 K31 [0.5]
      837 LOADK                            R37 K31 [0.5]
      838 CALL                             R35 2 1
      839 SETTABLEKS                       R35 R34 K126 ["AnchorPoint"]
      841 GETIMPORT                        R35 K26 [UDim2.new]
      843 LOADK                            R36 K31 [0.5]
      844 LOADN                            R37 0
      845 LOADK                            R38 K31 [0.5]
      846 LOADN                            R39 -4
      847 CALL                             R35 4 1
      848 SETTABLEKS                       R35 R34 K63 ["Position"]
      850 GETIMPORT                        R35 K26 [UDim2.new]
      852 LOADN                            R36 0
      853 LOADN                            R37 16
      854 LOADN                            R38 0
      855 LOADN                            R39 16
      856 CALL                             R35 4 1
      857 SETTABLEKS                       R35 R34 K40 ["Size"]
      859 GETTABLEKS                       R35 R6 K118 ["TextColor"]
      861 SETTABLEKS                       R35 R34 K93 ["TextColor3"]
      863 GETIMPORT                        R35 K176 [Enum.Font.SourceSansBold]
      865 SETTABLEKS                       R35 R34 K94 ["Font"]
      867 CALL                             R32 2 1
      868 SETTABLEKS                       R32 R31 K170 ["Dots"]
      870 GETUPVAL                         R32 2
      871 GETTABLEKS                       R32 R32 K35 ["createElement"]
      873 GETUPVAL                         R33 9
      874 DUPTABLE                         R34 K182 [{"Hide", "Size", "Items", "OnRenderItem", "OnItemActivated", "OnFocusLost"}]
      875 NOT                              R35 R4
      876 SETTABLEKS                       R35 R34 K177 ["Hide"]
      878 GETIMPORT                        R35 K184 [UDim2.fromOffset]
      880 LOADN                            R36 90
      881 GETTABLEKS                       R39 R0 K186 ["getMoreItems"]
      883 CALL                             R39 0 1
      884 LENGTH                           R38 R39
      885 MULK                             R37 R38 K185 [40]
      886 CALL                             R35 2 1
      887 SETTABLEKS                       R35 R34 K40 ["Size"]
      889 GETTABLEKS                       R35 R0 K186 ["getMoreItems"]
      891 CALL                             R35 0 1
      892 SETTABLEKS                       R35 R34 K178 ["Items"]
      894 DUPCLOSURE                       R35 K187 [PROTO_14]
      895 CAPTURE                          UPVAL U2
      896 CAPTURE                          UPVAL U5
      897 CAPTURE                          UPVAL U10
      898 SETTABLEKS                       R35 R34 K179 ["OnRenderItem"]
      900 GETTABLEKS                       R35 R0 K188 ["moreItemClicked"]
      902 SETTABLEKS                       R35 R34 K180 ["OnItemActivated"]
      904 GETTABLEKS                       R35 R0 K189 ["hideShowMore"]
      906 SETTABLEKS                       R35 R34 K181 ["OnFocusLost"]
      908 CALL                             R32 2 1
      909 SETTABLEKS                       R32 R31 K171 ["Dropdown"]
      911 CALL                             R28 3 1
      912 SETTABLEKS                       R28 R27 K53 ["ShowMoreButton"]
      914 CALL                             R24 3 -1
      915 RETURN                           R24 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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
       82 GETTABLEKS                       R12 R12 K23 ["Navigation"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K12 [require]
       87 GETTABLEKS                       R13 R1 K16 ["Src"]
       89 GETTABLEKS                       R13 R13 K24 ["Thunks"]
       91 GETTABLEKS                       R13 R13 K25 ["SetPluginEnabledState"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K12 [require]
       96 GETTABLEKS                       R14 R1 K16 ["Src"]
       98 GETTABLEKS                       R14 R14 K24 ["Thunks"]
      100 GETTABLEKS                       R14 R14 K26 ["UpdatePlugin"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K12 [require]
      105 GETTABLEKS                       R15 R1 K13 ["Packages"]
      107 GETTABLEKS                       R15 R15 K20 ["Framework"]
      109 CALL                             R14 1 1
      110 GETTABLEKS                       R15 R14 K27 ["UI"]
      112 GETTABLEKS                       R16 R15 K28 ["Button"]
      114 GETTABLEKS                       R17 R15 K29 ["TextLabel"]
      116 GETTABLEKS                       R18 R15 K30 ["DropdownMenu"]
      118 GETTABLEKS                       R19 R15 K31 ["ToggleButton"]
      120 GETTABLEKS                       R20 R15 K32 ["FakeLoadingBar"]
      122 GETIMPORT                        R21 K12 [require]
      124 GETTABLEKS                       R22 R1 K16 ["Src"]
      126 GETTABLEKS                       R22 R22 K33 ["Actions"]
      128 GETTABLEKS                       R22 R22 K34 ["RemovePluginData"]
      130 CALL                             R21 1 1
      131 GETIMPORT                        R22 K12 [require]
      133 GETTABLEKS                       R23 R1 K16 ["Src"]
      135 GETTABLEKS                       R23 R23 K35 ["Components"]
      137 GETTABLEKS                       R23 R23 K36 ["HttpRequestOverview"]
      139 CALL                             R22 1 1
      140 GETIMPORT                        R23 K12 [require]
      142 GETTABLEKS                       R24 R1 K16 ["Src"]
      144 GETTABLEKS                       R24 R24 K35 ["Components"]
      146 GETTABLEKS                       R24 R24 K37 ["UpdateOverview"]
      148 CALL                             R23 1 1
      149 GETIMPORT                        R24 K12 [require]
      151 GETTABLEKS                       R25 R1 K16 ["Src"]
      153 GETTABLEKS                       R25 R25 K17 ["Util"]
      155 GETTABLEKS                       R25 R25 K38 ["PluginManagementApi"]
      157 CALL                             R24 1 1
      158 GETIMPORT                        R25 K41 [UDim2.new]
      160 LOADN                            R26 0
      161 LOADN                            R27 120
      162 LOADN                            R28 0
      163 LOADN                            R29 8
      164 CALL                             R25 4 1
      165 GETTABLEKS                       R26 R5 K42 ["Component"]
      167 LOADK                            R28 K43 ["PluginEntry"]
      168 NAMECALL                         R26 R26 K44 ["extend"]
      170 CALL                             R26 2 1
      171 DUPCLOSURE                       R27 K45 [PROTO_12]
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R0
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R7
      177 SETTABLEKS                       R27 R26 K46 ["init"]
      179 DUPCLOSURE                       R27 K47 [PROTO_13]
      180 CAPTURE                          VAL R8
      181 SETTABLEKS                       R27 R26 K48 ["getDerivedStateFromProps"]
      183 DUPCLOSURE                       R27 K49 [PROTO_15]
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R7
      186 CAPTURE                          VAL R5
      187 CAPTURE                          VAL R22
      188 CAPTURE                          VAL R23
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R25
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R17
      195 SETTABLEKS                       R27 R26 K50 ["render"]
      197 MOVE                             R27 R10
      198 DUPTABLE                         R28 K55 [{"Navigation", "Localization", "Stylizer", "API", "Analytics", "PluginManagementApi"}]
      199 SETTABLEKS                       R11 R28 K23 ["Navigation"]
      201 GETTABLEKS                       R29 R9 K51 ["Localization"]
      203 SETTABLEKS                       R29 R28 K51 ["Localization"]
      205 GETTABLEKS                       R29 R9 K52 ["Stylizer"]
      207 SETTABLEKS                       R29 R28 K52 ["Stylizer"]
      209 GETTABLEKS                       R29 R9 K53 ["API"]
      211 SETTABLEKS                       R29 R28 K53 ["API"]
      213 GETTABLEKS                       R29 R9 K54 ["Analytics"]
      215 SETTABLEKS                       R29 R28 K54 ["Analytics"]
      217 SETTABLEKS                       R24 R28 K38 ["PluginManagementApi"]
      219 CALL                             R27 1 1
      220 MOVE                             R28 R26
      221 CALL                             R27 1 1
      222 MOVE                             R26 R27
      223 DUPCLOSURE                       R27 K56 [PROTO_19]
      224 CAPTURE                          VAL R21
      225 CAPTURE                          VAL R12
      226 CAPTURE                          VAL R13
      227 GETTABLEKS                       R28 R6 K57 ["connect"]
      229 LOADNIL                          R29
      230 MOVE                             R30 R27
      231 CALL                             R28 2 1
      232 MOVE                             R29 R26
      233 CALL                             R28 1 -1
      234 RETURN                           R28 -1
