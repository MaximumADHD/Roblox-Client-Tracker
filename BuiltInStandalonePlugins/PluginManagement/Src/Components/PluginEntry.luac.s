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
       46 GETUPVAL                         R18 0
       47 CALL                             R18 0 1
       48 JUMPIFNOT                        R18 ; [+12]
       49 GETTABLEKS                       R17 R7 K19 ["AssetGame"]
       51 GETTABLEKS                       R17 R17 K20 ["AssetThumbnail"]
       53 GETTABLEKS                       R17 R17 K21 ["image"]
       55 MOVE                             R18 R12
       56 CALL                             R17 1 1
       57 NAMECALL                         R17 R17 K22 ["getUrl"]
       59 CALL                             R17 1 1
       60 JUMP                             ; [+6]
       61 GETTABLEKS                       R17 R7 K23 ["Images"]
       63 GETTABLEKS                       R17 R17 K24 ["AssetThumbnailUrl"]
       65 MOVE                             R18 R12
       66 CALL                             R17 1 1
       67 NOT                              R18 R10
       68 JUMPIFNOT                        R18 ; [+9]
       69 NOT                              R18 R9
       70 JUMPIFNOT                        R18 ; [+7]
       71 GETUPVAL                         R19 1
       72 GETTABLEKS                       R19 R19 K25 ["Updating"]
       74 JUMPIFNOTEQ                      R11 R19 ; [+2]
       76 LOADB                            R18 0 +1
       77 LOADB                            R18 1
       78 GETIMPORT                        R19 K28 [UDim2.new]
       80 LOADN                            R20 1
       81 GETUPVAL                         R24 2
       82 GETTABLEKS                       R24 R24 K30 ["PLUGIN_HORIZONTAL_PADDING"]
       84 MULK                             R23 R24 K29 [-3]
       85 GETUPVAL                         R24 2
       86 GETTABLEKS                       R24 R24 K31 ["PLUGIN_ENABLE_WIDTH"]
       88 SUB                              R22 R23 R24
       89 GETUPVAL                         R23 2
       90 GETTABLEKS                       R23 R23 K32 ["PLUGIN_CONTEXT_WIDTH"]
       92 SUB                              R21 R22 R23
       93 LOADK                            R22 K33 [0.5]
       94 LOADN                            R23 0
       95 CALL                             R19 4 1
       96 GETUPVAL                         R21 2
       97 GETTABLEKS                       R21 R21 K34 ["THUMBNAIL_SIZE"]
       99 LOADN                            R23 2
      100 GETUPVAL                         R24 2
      101 GETTABLEKS                       R24 R24 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      103 MUL                              R22 R23 R24
      104 ADD                              R20 R21 R22
      105 GETUPVAL                         R23 2
      106 GETTABLEKS                       R23 R23 K31 ["PLUGIN_ENABLE_WIDTH"]
      108 GETUPVAL                         R24 2
      109 GETTABLEKS                       R24 R24 K32 ["PLUGIN_CONTEXT_WIDTH"]
      111 ADD                              R22 R23 R24
      112 LOADN                            R24 3
      113 GETUPVAL                         R25 2
      114 GETTABLEKS                       R25 R25 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      116 MUL                              R23 R24 R25
      117 ADD                              R21 R22 R23
      118 LOADN                            R22 0
      119 JUMPIFNOT                        R18 ; [+8]
      120 GETUPVAL                         R23 2
      121 GETTABLEKS                       R23 R23 K35 ["HEADER_UPDATE_WIDTH"]
      123 GETUPVAL                         R24 2
      124 GETTABLEKS                       R24 R24 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      126 ADD                              R22 R23 R24
      127 JUMP                             ; [+8]
      128 JUMPIFNOT                        R10 ; [+7]
      129 GETUPVAL                         R23 2
      130 GETTABLEKS                       R23 R23 K36 ["MODERATED_WARNING_WIDTH"]
      132 GETUPVAL                         R24 2
      133 GETTABLEKS                       R24 R24 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      135 ADD                              R22 R23 R24
      136 ADD                              R24 R20 R22
      137 ADD                              R23 R24 R21
      138 GETUPVAL                         R24 3
      139 GETTABLEKS                       R24 R24 K37 ["createElement"]
      141 LOADK                            R25 K38 ["Frame"]
      142 DUPTABLE                         R26 K43 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"], ["Size"]}]
      143 GETTABLEKS                       R27 R6 K44 ["BackgroundColor"]
      145 SETTABLEKS                       R27 R26 K39 ["BackgroundColor3"]
      147 SETTABLEKS                       R8 R26 K8 ["LayoutOrder"]
      149 GETIMPORT                        R27 K28 [UDim2.new]
      151 LOADN                            R28 1
      152 GETUPVAL                         R29 2
      153 GETTABLEKS                       R29 R29 K45 ["SCROLLBAR_WIDTH_ADJUSTMENT"]
      155 LOADN                            R30 0
      156 GETUPVAL                         R31 2
      157 GETTABLEKS                       R31 R31 K46 ["PLUGIN_ENTRY_HEIGHT"]
      159 CALL                             R27 4 1
      160 SETTABLEKS                       R27 R26 K42 ["Size"]
      162 DUPTABLE                         R27 K56 [{"Padding", "Thumbnail", "Contents", "ModeratedWarning", "UpdateButton", "ProgressIndicator", "SuccessLabel", "ToggleButton", "ShowMoreButton"}]
      163 GETUPVAL                         R28 3
      164 GETTABLEKS                       R28 R28 K37 ["createElement"]
      166 LOADK                            R29 K57 ["UIPadding"]
      167 DUPTABLE                         R30 K60 [{"PaddingTop", "PaddingBottom"}]
      168 GETIMPORT                        R31 K62 [UDim.new]
      170 LOADN                            R32 0
      171 GETUPVAL                         R33 2
      172 GETTABLEKS                       R33 R33 K63 ["PLUGIN_ENTRY_PADDING"]
      174 CALL                             R31 2 1
      175 SETTABLEKS                       R31 R30 K58 ["PaddingTop"]
      177 GETIMPORT                        R31 K62 [UDim.new]
      179 LOADN                            R32 0
      180 GETUPVAL                         R33 2
      181 GETTABLEKS                       R33 R33 K63 ["PLUGIN_ENTRY_PADDING"]
      183 CALL                             R31 2 1
      184 SETTABLEKS                       R31 R30 K59 ["PaddingBottom"]
      186 CALL                             R28 2 1
      187 SETTABLEKS                       R28 R27 K47 ["Padding"]
      189 GETUPVAL                         R28 3
      190 GETTABLEKS                       R28 R28 K37 ["createElement"]
      192 LOADK                            R29 K64 ["ImageLabel"]
      193 DUPTABLE                         R30 K69 [{["Size"], ["Position"], ["Image"], ["BackgroundTransparency"] = 1}]
      194 GETIMPORT                        R31 K28 [UDim2.new]
      196 LOADN                            R32 0
      197 GETUPVAL                         R33 2
      198 GETTABLEKS                       R33 R33 K34 ["THUMBNAIL_SIZE"]
      200 LOADN                            R34 0
      201 GETUPVAL                         R35 2
      202 GETTABLEKS                       R35 R35 K34 ["THUMBNAIL_SIZE"]
      204 CALL                             R31 4 1
      205 SETTABLEKS                       R31 R30 K42 ["Size"]
      207 GETIMPORT                        R31 K28 [UDim2.new]
      209 LOADN                            R32 0
      210 GETUPVAL                         R33 2
      211 GETTABLEKS                       R33 R33 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      213 LOADN                            R34 0
      214 GETUPVAL                         R35 2
      215 GETTABLEKS                       R35 R35 K70 ["PLUGIN_VERTICAL_PADDING"]
      217 CALL                             R31 4 1
      218 SETTABLEKS                       R31 R30 K65 ["Position"]
      220 SETTABLEKS                       R17 R30 K66 ["Image"]
      222 CALL                             R28 2 1
      223 SETTABLEKS                       R28 R27 K48 ["Thumbnail"]
      225 GETUPVAL                         R28 3
      226 GETTABLEKS                       R28 R28 K37 ["createElement"]
      228 LOADK                            R29 K38 ["Frame"]
      229 DUPTABLE                         R30 K71 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      230 GETIMPORT                        R31 K28 [UDim2.new]
      232 LOADN                            R32 0
      233 GETUPVAL                         R34 2
      234 GETTABLEKS                       R34 R34 K34 ["THUMBNAIL_SIZE"]
      236 GETUPVAL                         R36 2
      237 GETTABLEKS                       R36 R36 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      239 MULK                             R35 R36 K72 [2]
      240 ADD                              R33 R34 R35
      241 LOADN                            R34 0
      242 LOADN                            R35 0
      243 CALL                             R31 4 1
      244 SETTABLEKS                       R31 R30 K65 ["Position"]
      246 GETIMPORT                        R31 K28 [UDim2.new]
      248 LOADN                            R32 1
      249 MINUS                            R33 R23
      250 LOADN                            R34 1
      251 LOADN                            R35 0
      252 CALL                             R31 4 1
      253 SETTABLEKS                       R31 R30 K42 ["Size"]
      255 DUPTABLE                         R31 K78 [{"Layout", "Name", "Creator", "Description", "HttpRequestOverview", "UpdateOverview"}]
      256 GETUPVAL                         R32 3
      257 GETTABLEKS                       R32 R32 K37 ["createElement"]
      259 LOADK                            R33 K79 ["UIListLayout"]
      260 DUPTABLE                         R34 K82 [{"SortOrder", "FillDirection", "Padding"}]
      261 GETIMPORT                        R35 K84 [Enum.SortOrder.LayoutOrder]
      263 SETTABLEKS                       R35 R34 K80 ["SortOrder"]
      265 GETIMPORT                        R35 K86 [Enum.FillDirection.Vertical]
      267 SETTABLEKS                       R35 R34 K81 ["FillDirection"]
      269 GETIMPORT                        R35 K62 [UDim.new]
      271 LOADN                            R36 0
      272 GETUPVAL                         R37 2
      273 GETTABLEKS                       R37 R37 K87 ["PLUGIN_ENTRY_INNER_VERTICAL_PADDING"]
      275 CALL                             R35 2 1
      276 SETTABLEKS                       R35 R34 K47 ["Padding"]
      278 CALL                             R32 2 1
      279 SETTABLEKS                       R32 R31 K73 ["Layout"]
      281 GETUPVAL                         R32 3
      282 GETTABLEKS                       R32 R32 K37 ["createElement"]
      284 LOADK                            R33 K88 ["TextLabel"]
      285 DUPTABLE                         R34 K97 [{["LayoutOrder"] = 0, ["TextWrapped"] = True, ["TextSize"] = 22, ["Size"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["Text"], ["TextColor3"], ["Font"]}]
      286 GETIMPORT                        R35 K28 [UDim2.new]
      288 LOADN                            R36 1
      289 LOADN                            R37 0
      290 LOADN                            R38 0
      291 GETUPVAL                         R39 2
      292 GETTABLEKS                       R39 R39 K98 ["PLUGIN_NAME_HEIGHT"]
      294 CALL                             R35 4 1
      295 SETTABLEKS                       R35 R34 K42 ["Size"]
      297 GETIMPORT                        R35 K100 [Enum.TextXAlignment.Left]
      299 SETTABLEKS                       R35 R34 K93 ["TextXAlignment"]
      301 SETTABLEKS                       R14 R34 K94 ["Text"]
      303 GETTABLEKS                       R35 R6 K101 ["EmphasisTextColor"]
      305 SETTABLEKS                       R35 R34 K95 ["TextColor3"]
      307 GETIMPORT                        R35 K103 [Enum.Font.SourceSans]
      309 SETTABLEKS                       R35 R34 K96 ["Font"]
      311 CALL                             R32 2 1
      312 SETTABLEKS                       R32 R31 K18 ["Name"]
      314 GETUPVAL                         R32 3
      315 GETTABLEKS                       R32 R32 K37 ["createElement"]
      317 LOADK                            R33 K104 ["TextButton"]
      318 NEWTABLE                         R34 16 0
      320 LOADN                            R35 1
      321 SETTABLEKS                       R35 R34 K8 ["LayoutOrder"]
      323 LOADB                            R35 1
      324 SETTABLEKS                       R35 R34 K89 ["TextWrapped"]
      326 GETIMPORT                        R35 K28 [UDim2.new]
      328 LOADN                            R36 1
      329 LOADN                            R37 0
      330 LOADN                            R38 0
      331 GETUPVAL                         R39 2
      332 GETTABLEKS                       R39 R39 K105 ["PLUGIN_CREATOR_HEIGHT"]
      334 CALL                             R35 4 1
      335 SETTABLEKS                       R35 R34 K42 ["Size"]
      337 LOADN                            R35 1
      338 SETTABLEKS                       R35 R34 K67 ["BackgroundTransparency"]
      340 GETIMPORT                        R35 K100 [Enum.TextXAlignment.Left]
      342 SETTABLEKS                       R35 R34 K93 ["TextXAlignment"]
      344 SETTABLEKS                       R16 R34 K94 ["Text"]
      346 GETIMPORT                        R35 K107 [Enum.Font.SourceSansLight]
      348 SETTABLEKS                       R35 R34 K96 ["Font"]
      350 GETTABLEKS                       R35 R6 K108 ["LinkColor"]
      352 SETTABLEKS                       R35 R34 K95 ["TextColor3"]
      354 LOADN                            R35 16
      355 SETTABLEKS                       R35 R34 K91 ["TextSize"]
      357 LOADN                            R35 1
      358 SETTABLEKS                       R35 R34 K40 ["BorderSizePixel"]
      360 GETUPVAL                         R35 3
      361 GETTABLEKS                       R35 R35 K109 ["Event"]
      363 GETTABLEKS                       R35 R35 K110 ["Activated"]
      365 GETTABLEKS                       R36 R0 K111 ["openCreatorProfile"]
      367 SETTABLE                         R36 R34 R35
      368 CALL                             R32 2 1
      369 SETTABLEKS                       R32 R31 K74 ["Creator"]
      371 GETUPVAL                         R32 3
      372 GETTABLEKS                       R32 R32 K37 ["createElement"]
      374 LOADK                            R33 K88 ["TextLabel"]
      375 DUPTABLE                         R34 K116 [{["ClipsDescendants"] = True, ["LayoutOrder"] = 2, ["TextWrapped"] = True, ["Size"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["TextColor3"], ["TextTruncate"], ["Font"], ["TextSize"] = 16}]
      376 GETIMPORT                        R35 K28 [UDim2.new]
      378 LOADN                            R36 1
      379 LOADN                            R37 0
      380 LOADN                            R38 0
      381 GETUPVAL                         R39 2
      382 GETTABLEKS                       R39 R39 K117 ["PLUGIN_DESCRIPTION_HEIGHT"]
      384 CALL                             R35 4 1
      385 SETTABLEKS                       R35 R34 K42 ["Size"]
      387 GETIMPORT                        R35 K100 [Enum.TextXAlignment.Left]
      389 SETTABLEKS                       R35 R34 K93 ["TextXAlignment"]
      391 GETIMPORT                        R35 K119 [Enum.TextYAlignment.Top]
      393 SETTABLEKS                       R35 R34 K113 ["TextYAlignment"]
      395 SETTABLEKS                       R15 R34 K94 ["Text"]
      397 GETTABLEKS                       R35 R6 K120 ["TextColor"]
      399 SETTABLEKS                       R35 R34 K95 ["TextColor3"]
      401 GETIMPORT                        R35 K122 [Enum.TextTruncate.AtEnd]
      403 SETTABLEKS                       R35 R34 K114 ["TextTruncate"]
      405 GETIMPORT                        R35 K103 [Enum.Font.SourceSans]
      407 SETTABLEKS                       R35 R34 K96 ["Font"]
      409 CALL                             R32 2 1
      410 SETTABLEKS                       R32 R31 K75 ["Description"]
      412 GETUPVAL                         R32 3
      413 GETTABLEKS                       R32 R32 K37 ["createElement"]
      415 GETUPVAL                         R33 4
      416 DUPTABLE                         R34 K124 [{["assetId"], ["LayoutOrder"] = 3}]
      417 GETTABLEKS                       R35 R3 K12 ["assetId"]
      419 SETTABLEKS                       R35 R34 K12 ["assetId"]
      421 CALL                             R32 2 1
      422 SETTABLEKS                       R32 R31 K76 ["HttpRequestOverview"]
      424 GETUPVAL                         R32 3
      425 GETTABLEKS                       R32 R32 K37 ["createElement"]
      427 GETUPVAL                         R33 5
      428 DUPTABLE                         R34 K127 [{["data"], ["LayoutOrder"] = 4, ["updateAvailable"]}]
      429 SETTABLEKS                       R3 R34 K2 ["data"]
      431 SETTABLEKS                       R18 R34 K126 ["updateAvailable"]
      433 CALL                             R32 2 1
      434 SETTABLEKS                       R32 R31 K77 ["UpdateOverview"]
      436 CALL                             R28 3 1
      437 SETTABLEKS                       R28 R27 K49 ["Contents"]
      439 MOVE                             R28 R10
      440 JUMPIFNOT                        R28 ; [+51]
      441 GETUPVAL                         R28 3
      442 GETTABLEKS                       R28 R28 K37 ["createElement"]
      444 LOADK                            R29 K88 ["TextLabel"]
      445 DUPTABLE                         R30 K130 [{["AnchorPoint"], ["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"], ["TextSize"] = 14, ["TextWrapped"] = True, ["Font"], ["TextColor3"], ["Text"]}]
      446 GETIMPORT                        R31 K132 [Vector2.new]
      448 LOADN                            R32 1
      449 LOADK                            R33 K33 [0.5]
      450 CALL                             R31 2 1
      451 SETTABLEKS                       R31 R30 K128 ["AnchorPoint"]
      453 GETIMPORT                        R31 K28 [UDim2.new]
      455 LOADN                            R32 0
      456 GETUPVAL                         R33 2
      457 GETTABLEKS                       R33 R33 K36 ["MODERATED_WARNING_WIDTH"]
      459 LOADN                            R34 0
      460 GETUPVAL                         R35 2
      461 GETTABLEKS                       R35 R35 K133 ["HEADER_BUTTON_SIZE"]
      463 CALL                             R31 4 1
      464 SETTABLEKS                       R31 R30 K42 ["Size"]
      466 SETTABLEKS                       R19 R30 K65 ["Position"]
      468 GETIMPORT                        R31 K135 [Enum.TextXAlignment.Right]
      470 SETTABLEKS                       R31 R30 K93 ["TextXAlignment"]
      472 GETIMPORT                        R31 K119 [Enum.TextYAlignment.Top]
      474 SETTABLEKS                       R31 R30 K113 ["TextYAlignment"]
      476 GETIMPORT                        R31 K103 [Enum.Font.SourceSans]
      478 SETTABLEKS                       R31 R30 K96 ["Font"]
      480 GETTABLEKS                       R31 R6 K120 ["TextColor"]
      482 SETTABLEKS                       R31 R30 K95 ["TextColor3"]
      484 LOADK                            R33 K136 ["Entry"]
      485 LOADK                            R34 K50 ["ModeratedWarning"]
      486 NAMECALL                         R31 R5 K137 ["getText"]
      488 CALL                             R31 3 1
      489 SETTABLEKS                       R31 R30 K94 ["Text"]
      491 CALL                             R28 2 1
      492 SETTABLEKS                       R28 R27 K50 ["ModeratedWarning"]
      494 MOVE                             R28 R18
      495 JUMPIFNOT                        R28 ; [+164]
      496 GETUPVAL                         R28 3
      497 GETTABLEKS                       R28 R28 K37 ["createElement"]
      499 GETUPVAL                         R29 6
      500 DUPTABLE                         R30 K141 [{["AnchorPoint"], ["Size"], ["Position"], ["Style"] = "Round", ["OnClick"]}]
      501 GETIMPORT                        R31 K132 [Vector2.new]
      503 LOADN                            R32 1
      504 LOADK                            R33 K33 [0.5]
      505 CALL                             R31 2 1
      506 SETTABLEKS                       R31 R30 K128 ["AnchorPoint"]
      508 GETIMPORT                        R31 K28 [UDim2.new]
      510 LOADN                            R32 0
      511 GETUPVAL                         R33 2
      512 GETTABLEKS                       R33 R33 K35 ["HEADER_UPDATE_WIDTH"]
      514 LOADN                            R34 0
      515 GETUPVAL                         R35 2
      516 GETTABLEKS                       R35 R35 K133 ["HEADER_BUTTON_SIZE"]
      518 CALL                             R31 4 1
      519 SETTABLEKS                       R31 R30 K42 ["Size"]
      521 SETTABLEKS                       R19 R30 K65 ["Position"]
      523 GETTABLEKS                       R31 R0 K142 ["updatePlugin"]
      525 SETTABLEKS                       R31 R30 K140 ["OnClick"]
      527 DUPTABLE                         R31 K146 [{"Label", "DateLabel", "ErrorLabel"}]
      528 GETUPVAL                         R32 3
      529 GETTABLEKS                       R32 R32 K37 ["createElement"]
      531 LOADK                            R33 K88 ["TextLabel"]
      532 DUPTABLE                         R34 K148 [{["Size"], ["Text"], ["TextColor3"], ["Font"], ["TextSize"] = 18, ["BackgroundTransparency"] = 1}]
      533 GETIMPORT                        R35 K28 [UDim2.new]
      535 LOADN                            R36 1
      536 LOADN                            R37 0
      537 LOADN                            R38 1
      538 LOADN                            R39 0
      539 CALL                             R35 4 1
      540 SETTABLEKS                       R35 R34 K42 ["Size"]
      542 LOADK                            R37 K136 ["Entry"]
      543 LOADK                            R38 K51 ["UpdateButton"]
      544 NAMECALL                         R35 R5 K137 ["getText"]
      546 CALL                             R35 3 1
      547 SETTABLEKS                       R35 R34 K94 ["Text"]
      549 GETTABLEKS                       R35 R6 K120 ["TextColor"]
      551 SETTABLEKS                       R35 R34 K95 ["TextColor3"]
      553 GETIMPORT                        R35 K103 [Enum.Font.SourceSans]
      555 SETTABLEKS                       R35 R34 K96 ["Font"]
      557 CALL                             R32 2 1
      558 SETTABLEKS                       R32 R31 K143 ["Label"]
      560 LOADB                            R32 0
      561 GETUPVAL                         R33 1
      562 GETTABLEKS                       R33 R33 K149 ["Error"]
      564 JUMPIFEQ                         R11 R33 ; [+45]
      566 GETUPVAL                         R32 3
      567 GETTABLEKS                       R32 R32 K37 ["createElement"]
      569 LOADK                            R33 K88 ["TextLabel"]
      570 DUPTABLE                         R34 K151 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["TextSize"] = 14, ["Font"], ["TextColor3"], ["TextTransparency"] = 0, ["Text"]}]
      571 GETIMPORT                        R35 K28 [UDim2.new]
      573 LOADN                            R36 1
      574 LOADN                            R37 0
      575 LOADN                            R38 0
      576 LOADN                            R39 14
      577 CALL                             R35 4 1
      578 SETTABLEKS                       R35 R34 K42 ["Size"]
      580 GETIMPORT                        R35 K28 [UDim2.new]
      582 LOADN                            R36 0
      583 LOADN                            R37 0
      584 LOADN                            R38 1
      585 LOADN                            R39 3
      586 CALL                             R35 4 1
      587 SETTABLEKS                       R35 R34 K65 ["Position"]
      589 GETIMPORT                        R35 K103 [Enum.Font.SourceSans]
      591 SETTABLEKS                       R35 R34 K96 ["Font"]
      593 GETTABLEKS                       R35 R6 K120 ["TextColor"]
      595 SETTABLEKS                       R35 R34 K95 ["TextColor3"]
      597 LOADK                            R37 K136 ["Entry"]
      598 LOADK                            R38 K152 ["LastUpdatedDate"]
      599 DUPTABLE                         R39 K154 [{"date"}]
      600 GETTABLEKS                       R40 R3 K155 ["updated"]
      602 SETTABLEKS                       R40 R39 K153 ["date"]
      604 NAMECALL                         R35 R5 K137 ["getText"]
      606 CALL                             R35 4 1
      607 SETTABLEKS                       R35 R34 K94 ["Text"]
      609 CALL                             R32 2 1
      610 SETTABLEKS                       R32 R31 K144 ["DateLabel"]
      612 LOADB                            R32 0
      613 GETUPVAL                         R33 1
      614 GETTABLEKS                       R33 R33 K149 ["Error"]
      616 JUMPIFNOTEQ                      R11 R33 ; [+40]
      618 GETUPVAL                         R32 3
      619 GETTABLEKS                       R32 R32 K37 ["createElement"]
      621 LOADK                            R33 K88 ["TextLabel"]
      622 DUPTABLE                         R34 K156 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["TextSize"] = 14, ["Font"], ["TextColor3"], ["Text"]}]
      623 GETIMPORT                        R35 K28 [UDim2.new]
      625 LOADN                            R36 1
      626 LOADN                            R37 0
      627 LOADN                            R38 0
      628 LOADN                            R39 14
      629 CALL                             R35 4 1
      630 SETTABLEKS                       R35 R34 K42 ["Size"]
      632 GETIMPORT                        R35 K28 [UDim2.new]
      634 LOADN                            R36 0
      635 LOADN                            R37 0
      636 LOADN                            R38 1
      637 LOADN                            R39 3
      638 CALL                             R35 4 1
      639 SETTABLEKS                       R35 R34 K65 ["Position"]
      641 GETIMPORT                        R35 K103 [Enum.Font.SourceSans]
      643 SETTABLEKS                       R35 R34 K96 ["Font"]
      645 GETTABLEKS                       R35 R6 K157 ["ErrorColor"]
      647 SETTABLEKS                       R35 R34 K95 ["TextColor3"]
      649 LOADK                            R37 K136 ["Entry"]
      650 LOADK                            R38 K158 ["UpdateError"]
      651 NAMECALL                         R35 R5 K137 ["getText"]
      653 CALL                             R35 3 1
      654 SETTABLEKS                       R35 R34 K94 ["Text"]
      656 CALL                             R32 2 1
      657 SETTABLEKS                       R32 R31 K145 ["ErrorLabel"]
      659 CALL                             R28 3 1
      660 SETTABLEKS                       R28 R27 K51 ["UpdateButton"]
      662 NOT                              R28 R9
      663 JUMPIFNOT                        R28 ; [+24]
      664 LOADB                            R28 0
      665 GETUPVAL                         R29 1
      666 GETTABLEKS                       R29 R29 K25 ["Updating"]
      668 JUMPIFNOTEQ                      R11 R29 ; [+19]
      670 GETUPVAL                         R28 3
      671 GETTABLEKS                       R28 R28 K37 ["createElement"]
      673 GETUPVAL                         R29 7
      674 DUPTABLE                         R30 K160 [{["AnchorPoint"], ["Position"], ["Size"], ["LoadingTime"] = 0.5}]
      675 GETIMPORT                        R31 K132 [Vector2.new]
      677 LOADN                            R32 1
      678 LOADK                            R33 K33 [0.5]
      679 CALL                             R31 2 1
      680 SETTABLEKS                       R31 R30 K128 ["AnchorPoint"]
      682 SETTABLEKS                       R19 R30 K65 ["Position"]
      684 GETUPVAL                         R31 8
      685 SETTABLEKS                       R31 R30 K42 ["Size"]
      687 CALL                             R28 2 1
      688 SETTABLEKS                       R28 R27 K52 ["ProgressIndicator"]
      690 MOVE                             R28 R9
      691 JUMPIFNOT                        R28 ; [+46]
      692 GETTABLEKS                       R28 R2 K161 ["showSuccessMessage"]
      694 JUMPIFNOT                        R28 ; [+43]
      695 GETUPVAL                         R28 3
      696 GETTABLEKS                       R28 R28 K37 ["createElement"]
      698 LOADK                            R29 K88 ["TextLabel"]
      699 DUPTABLE                         R30 K162 [{["BackgroundTransparency"] = 1, ["Size"], ["AnchorPoint"], ["Position"], ["TextSize"] = 14, ["Font"], ["TextColor3"], ["TextXAlignment"], ["Text"]}]
      700 GETIMPORT                        R31 K28 [UDim2.new]
      702 LOADN                            R32 1
      703 LOADN                            R33 0
      704 LOADN                            R34 0
      705 LOADN                            R35 14
      706 CALL                             R31 4 1
      707 SETTABLEKS                       R31 R30 K42 ["Size"]
      709 GETIMPORT                        R31 K132 [Vector2.new]
      711 LOADN                            R32 1
      712 LOADK                            R33 K33 [0.5]
      713 CALL                             R31 2 1
      714 SETTABLEKS                       R31 R30 K128 ["AnchorPoint"]
      716 SETTABLEKS                       R19 R30 K65 ["Position"]
      718 GETIMPORT                        R31 K103 [Enum.Font.SourceSans]
      720 SETTABLEKS                       R31 R30 K96 ["Font"]
      722 GETTABLEKS                       R31 R6 K163 ["Green"]
      724 SETTABLEKS                       R31 R30 K95 ["TextColor3"]
      726 GETIMPORT                        R31 K135 [Enum.TextXAlignment.Right]
      728 SETTABLEKS                       R31 R30 K93 ["TextXAlignment"]
      730 LOADK                            R33 K136 ["Entry"]
      731 LOADK                            R34 K164 ["UpdateSuccess"]
      732 NAMECALL                         R31 R5 K137 ["getText"]
      734 CALL                             R31 3 1
      735 SETTABLEKS                       R31 R30 K94 ["Text"]
      737 CALL                             R28 2 1
      738 SETTABLEKS                       R28 R27 K53 ["SuccessLabel"]
      740 GETUPVAL                         R28 3
      741 GETTABLEKS                       R28 R28 K37 ["createElement"]
      743 GETUPVAL                         R29 9
      744 DUPTABLE                         R30 K168 [{["Disabled"] = False, ["Selected"], ["OnClick"], ["AnchorPoint"], ["Size"], ["Position"]}]
      745 SETTABLEKS                       R13 R30 K167 ["Selected"]
      747 GETTABLEKS                       R31 R0 K169 ["onToggleClick"]
      749 SETTABLEKS                       R31 R30 K140 ["OnClick"]
      751 GETIMPORT                        R31 K132 [Vector2.new]
      753 LOADN                            R32 0
      754 LOADK                            R33 K33 [0.5]
      755 CALL                             R31 2 1
      756 SETTABLEKS                       R31 R30 K128 ["AnchorPoint"]
      758 GETIMPORT                        R31 K28 [UDim2.new]
      760 LOADN                            R32 0
      761 GETUPVAL                         R33 2
      762 GETTABLEKS                       R33 R33 K31 ["PLUGIN_ENABLE_WIDTH"]
      764 LOADN                            R34 0
      765 LOADN                            R35 24
      766 CALL                             R31 4 1
      767 SETTABLEKS                       R31 R30 K42 ["Size"]
      769 GETIMPORT                        R31 K28 [UDim2.new]
      771 LOADN                            R32 1
      772 GETUPVAL                         R36 2
      773 GETTABLEKS                       R36 R36 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      775 MULK                             R35 R36 K170 [-2]
      776 GETUPVAL                         R36 2
      777 GETTABLEKS                       R36 R36 K31 ["PLUGIN_ENABLE_WIDTH"]
      779 SUB                              R34 R35 R36
      780 GETUPVAL                         R35 2
      781 GETTABLEKS                       R35 R35 K32 ["PLUGIN_CONTEXT_WIDTH"]
      783 SUB                              R33 R34 R35
      784 LOADK                            R34 K33 [0.5]
      785 LOADN                            R35 0
      786 CALL                             R31 4 1
      787 SETTABLEKS                       R31 R30 K65 ["Position"]
      789 CALL                             R28 2 1
      790 SETTABLEKS                       R28 R27 K54 ["ToggleButton"]
      792 GETUPVAL                         R28 3
      793 GETTABLEKS                       R28 R28 K37 ["createElement"]
      795 GETUPVAL                         R29 6
      796 DUPTABLE                         R30 K141 [{["AnchorPoint"], ["Size"], ["Position"], ["Style"] = "Round", ["OnClick"]}]
      797 GETIMPORT                        R31 K132 [Vector2.new]
      799 LOADN                            R32 0
      800 LOADK                            R33 K33 [0.5]
      801 CALL                             R31 2 1
      802 SETTABLEKS                       R31 R30 K128 ["AnchorPoint"]
      804 GETIMPORT                        R31 K28 [UDim2.new]
      806 LOADN                            R32 0
      807 GETUPVAL                         R33 2
      808 GETTABLEKS                       R33 R33 K133 ["HEADER_BUTTON_SIZE"]
      810 LOADN                            R34 0
      811 GETUPVAL                         R35 2
      812 GETTABLEKS                       R35 R35 K133 ["HEADER_BUTTON_SIZE"]
      814 CALL                             R31 4 1
      815 SETTABLEKS                       R31 R30 K42 ["Size"]
      817 GETIMPORT                        R31 K28 [UDim2.new]
      819 LOADN                            R32 1
      820 LOADN                            R34 -1
      821 GETUPVAL                         R36 2
      822 GETTABLEKS                       R36 R36 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      824 GETUPVAL                         R37 2
      825 GETTABLEKS                       R37 R37 K32 ["PLUGIN_CONTEXT_WIDTH"]
      827 ADD                              R35 R36 R37
      828 MUL                              R33 R34 R35
      829 LOADK                            R34 K33 [0.5]
      830 LOADN                            R35 0
      831 CALL                             R31 4 1
      832 SETTABLEKS                       R31 R30 K65 ["Position"]
      834 GETTABLEKS                       R31 R0 K171 ["onShowMoreActivated"]
      836 SETTABLEKS                       R31 R30 K140 ["OnClick"]
      838 DUPTABLE                         R31 K174 [{"Dots", "Dropdown"}]
      839 GETUPVAL                         R32 3
      840 GETTABLEKS                       R32 R32 K37 ["createElement"]
      842 LOADK                            R33 K88 ["TextLabel"]
      843 DUPTABLE                         R34 K176 [{["AnchorPoint"], ["Position"], ["Size"], ["Text"] = "...", ["TextColor3"], ["Font"], ["TextSize"] = 18, ["BackgroundTransparency"] = 1}]
      844 GETIMPORT                        R35 K132 [Vector2.new]
      846 LOADK                            R36 K33 [0.5]
      847 LOADK                            R37 K33 [0.5]
      848 CALL                             R35 2 1
      849 SETTABLEKS                       R35 R34 K128 ["AnchorPoint"]
      851 GETIMPORT                        R35 K28 [UDim2.new]
      853 LOADK                            R36 K33 [0.5]
      854 LOADN                            R37 0
      855 LOADK                            R38 K33 [0.5]
      856 LOADN                            R39 -4
      857 CALL                             R35 4 1
      858 SETTABLEKS                       R35 R34 K65 ["Position"]
      860 GETIMPORT                        R35 K28 [UDim2.new]
      862 LOADN                            R36 0
      863 LOADN                            R37 16
      864 LOADN                            R38 0
      865 LOADN                            R39 16
      866 CALL                             R35 4 1
      867 SETTABLEKS                       R35 R34 K42 ["Size"]
      869 GETTABLEKS                       R35 R6 K120 ["TextColor"]
      871 SETTABLEKS                       R35 R34 K95 ["TextColor3"]
      873 GETIMPORT                        R35 K178 [Enum.Font.SourceSansBold]
      875 SETTABLEKS                       R35 R34 K96 ["Font"]
      877 CALL                             R32 2 1
      878 SETTABLEKS                       R32 R31 K172 ["Dots"]
      880 GETUPVAL                         R32 3
      881 GETTABLEKS                       R32 R32 K37 ["createElement"]
      883 GETUPVAL                         R33 10
      884 DUPTABLE                         R34 K184 [{"Hide", "Size", "Items", "OnRenderItem", "OnItemActivated", "OnFocusLost"}]
      885 NOT                              R35 R4
      886 SETTABLEKS                       R35 R34 K179 ["Hide"]
      888 GETIMPORT                        R35 K186 [UDim2.fromOffset]
      890 LOADN                            R36 90
      891 GETTABLEKS                       R39 R0 K188 ["getMoreItems"]
      893 CALL                             R39 0 1
      894 LENGTH                           R38 R39
      895 MULK                             R37 R38 K187 [40]
      896 CALL                             R35 2 1
      897 SETTABLEKS                       R35 R34 K42 ["Size"]
      899 GETTABLEKS                       R35 R0 K188 ["getMoreItems"]
      901 CALL                             R35 0 1
      902 SETTABLEKS                       R35 R34 K180 ["Items"]
      904 DUPCLOSURE                       R35 K189 [PROTO_14]
      905 CAPTURE                          UPVAL U3
      906 CAPTURE                          UPVAL U6
      907 CAPTURE                          UPVAL U11
      908 SETTABLEKS                       R35 R34 K181 ["OnRenderItem"]
      910 GETTABLEKS                       R35 R0 K190 ["moreItemClicked"]
      912 SETTABLEKS                       R35 R34 K182 ["OnItemActivated"]
      914 GETTABLEKS                       R35 R0 K191 ["hideShowMore"]
      916 SETTABLEKS                       R35 R34 K183 ["OnFocusLost"]
      918 CALL                             R32 2 1
      919 SETTABLEKS                       R32 R31 K173 ["Dropdown"]
      921 CALL                             R28 3 1
      922 SETTABLEKS                       R28 R27 K55 ["ShowMoreButton"]
      924 CALL                             R24 3 -1
      925 RETURN                           R24 -1

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
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Flags"]
       21 GETTABLEKS                       R3 R3 K11 ["getFFlagStudioPluginManagementUpgradeHttp"]
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
       42 GETIMPORT                        R6 K8 [require]
       44 GETTABLEKS                       R7 R1 K16 ["Packages"]
       46 GETTABLEKS                       R7 R7 K17 ["Roact"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K8 [require]
       51 GETTABLEKS                       R8 R1 K16 ["Packages"]
       53 GETTABLEKS                       R8 R8 K18 ["RoactRodux"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K8 [require]
       58 GETTABLEKS                       R9 R1 K9 ["Src"]
       60 GETTABLEKS                       R9 R9 K19 ["Util"]
       62 GETTABLEKS                       R9 R9 K20 ["Constants"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K8 [require]
       67 GETTABLEKS                       R10 R1 K9 ["Src"]
       69 GETTABLEKS                       R10 R10 K19 ["Util"]
       71 GETTABLEKS                       R10 R10 K21 ["UpdateStatus"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K8 [require]
       76 GETTABLEKS                       R11 R1 K16 ["Packages"]
       78 GETTABLEKS                       R11 R11 K22 ["Framework"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R10 R10 K23 ["ContextServices"]
       83 GETTABLEKS                       R11 R10 K24 ["withContext"]
       85 GETIMPORT                        R12 K8 [require]
       87 GETTABLEKS                       R13 R1 K9 ["Src"]
       89 GETTABLEKS                       R13 R13 K23 ["ContextServices"]
       91 GETTABLEKS                       R13 R13 K25 ["PluginAPI2"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K8 [require]
       96 GETTABLEKS                       R14 R1 K9 ["Src"]
       98 GETTABLEKS                       R14 R14 K23 ["ContextServices"]
      100 GETTABLEKS                       R14 R14 K26 ["Navigation"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K8 [require]
      105 GETTABLEKS                       R15 R1 K9 ["Src"]
      107 GETTABLEKS                       R15 R15 K27 ["Thunks"]
      109 GETTABLEKS                       R15 R15 K28 ["SetPluginEnabledState"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K8 [require]
      114 GETTABLEKS                       R16 R1 K9 ["Src"]
      116 GETTABLEKS                       R16 R16 K27 ["Thunks"]
      118 GETTABLEKS                       R16 R16 K29 ["UpdatePlugin"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K8 [require]
      123 GETTABLEKS                       R17 R1 K16 ["Packages"]
      125 GETTABLEKS                       R17 R17 K22 ["Framework"]
      127 CALL                             R16 1 1
      128 GETTABLEKS                       R17 R16 K30 ["UI"]
      130 GETTABLEKS                       R18 R17 K31 ["Button"]
      132 GETTABLEKS                       R19 R17 K32 ["TextLabel"]
      134 GETTABLEKS                       R20 R17 K33 ["DropdownMenu"]
      136 GETTABLEKS                       R21 R17 K34 ["ToggleButton"]
      138 GETTABLEKS                       R22 R17 K35 ["FakeLoadingBar"]
      140 GETIMPORT                        R23 K8 [require]
      142 GETTABLEKS                       R24 R1 K9 ["Src"]
      144 GETTABLEKS                       R24 R24 K36 ["Actions"]
      146 GETTABLEKS                       R24 R24 K37 ["RemovePluginData"]
      148 CALL                             R23 1 1
      149 GETIMPORT                        R24 K8 [require]
      151 GETTABLEKS                       R25 R1 K9 ["Src"]
      153 GETTABLEKS                       R25 R25 K38 ["Components"]
      155 GETTABLEKS                       R25 R25 K39 ["HttpRequestOverview"]
      157 CALL                             R24 1 1
      158 GETIMPORT                        R25 K8 [require]
      160 GETTABLEKS                       R26 R1 K9 ["Src"]
      162 GETTABLEKS                       R26 R26 K38 ["Components"]
      164 GETTABLEKS                       R26 R26 K40 ["UpdateOverview"]
      166 CALL                             R25 1 1
      167 GETIMPORT                        R26 K8 [require]
      169 GETTABLEKS                       R27 R1 K9 ["Src"]
      171 GETTABLEKS                       R27 R27 K19 ["Util"]
      173 GETTABLEKS                       R27 R27 K41 ["PluginManagementApi"]
      175 CALL                             R26 1 1
      176 GETIMPORT                        R27 K44 [UDim2.new]
      178 LOADN                            R28 0
      179 LOADN                            R29 120
      180 LOADN                            R30 0
      181 LOADN                            R31 8
      182 CALL                             R27 4 1
      183 GETTABLEKS                       R28 R6 K45 ["Component"]
      185 LOADK                            R30 K46 ["PluginEntry"]
      186 NAMECALL                         R28 R28 K47 ["extend"]
      188 CALL                             R28 2 1
      189 DUPCLOSURE                       R29 K48 [PROTO_12]
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R0
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R8
      195 SETTABLEKS                       R29 R28 K49 ["init"]
      197 DUPCLOSURE                       R29 K50 [PROTO_13]
      198 CAPTURE                          VAL R9
      199 SETTABLEKS                       R29 R28 K51 ["getDerivedStateFromProps"]
      201 DUPCLOSURE                       R29 K52 [PROTO_15]
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R8
      205 CAPTURE                          VAL R6
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R25
      208 CAPTURE                          VAL R18
      209 CAPTURE                          VAL R22
      210 CAPTURE                          VAL R27
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R19
      214 SETTABLEKS                       R29 R28 K53 ["render"]
      216 MOVE                             R29 R11
      217 DUPTABLE                         R30 K58 [{"Navigation", "Localization", "Stylizer", "API", "Analytics", "PluginManagementApi"}]
      218 SETTABLEKS                       R13 R30 K26 ["Navigation"]
      220 GETTABLEKS                       R31 R10 K54 ["Localization"]
      222 SETTABLEKS                       R31 R30 K54 ["Localization"]
      224 GETTABLEKS                       R31 R10 K55 ["Stylizer"]
      226 SETTABLEKS                       R31 R30 K55 ["Stylizer"]
      228 MOVE                             R32 R2
      229 CALL                             R32 0 1
      230 JUMPIFNOT                        R32 ; [+3]
      231 GETTABLEKS                       R31 R10 K56 ["API"]
      233 JUMP                             ; [+1]
      234 MOVE                             R31 R12
      235 SETTABLEKS                       R31 R30 K56 ["API"]
      237 GETTABLEKS                       R31 R10 K57 ["Analytics"]
      239 SETTABLEKS                       R31 R30 K57 ["Analytics"]
      241 SETTABLEKS                       R26 R30 K41 ["PluginManagementApi"]
      243 CALL                             R29 1 1
      244 MOVE                             R30 R28
      245 CALL                             R29 1 1
      246 MOVE                             R28 R29
      247 DUPCLOSURE                       R29 K59 [PROTO_19]
      248 CAPTURE                          VAL R23
      249 CAPTURE                          VAL R14
      250 CAPTURE                          VAL R15
      251 GETTABLEKS                       R30 R7 K60 ["connect"]
      253 LOADNIL                          R31
      254 MOVE                             R32 R29
      255 CALL                             R30 2 1
      256 MOVE                             R31 R28
      257 CALL                             R30 1 -1
      258 RETURN                           R30 -1
