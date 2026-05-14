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
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R1 R0 K1 ["PluginManagementApi"]
        8 JUMPIF                           R1 ; [+1]
        9 LOADNIL                          R1
       10 GETTABLEKS                       R2 R0 K2 ["onPluginSetEnabledState"]
       12 MOVE                             R3 R1
       13 GETTABLEKS                       R4 R0 K3 ["data"]
       15 LOADB                            R5 1
       16 CALL                             R2 3 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R1 R0 K1 ["PluginManagementApi"]
        8 JUMPIF                           R1 ; [+1]
        9 LOADNIL                          R1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K2 ["onPluginSetEnabledState"]
       15 MOVE                             R3 R1
       16 GETTABLEKS                       R4 R0 K3 ["data"]
       18 LOADB                            R5 0
       19 CALL                             R2 3 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["data"]
        5 GETTABLEKS                       R0 R0 K2 ["assetId"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["BaseUrl"]
       10 LOADK                            R2 K4 [""]
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+12]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["props"]
       17 GETTABLEKS                       R3 R3 K6 ["PluginManagementApi"]
       19 LOADK                            R5 K7 ["Toolbox"]
       20 NAMECALL                         R3 R3 K8 ["GetPluginPolicy"]
       22 CALL                             R3 2 1
       23 GETTABLEKS                       R2 R3 K5 ["CreatorMarketplaceWebUrl"]
       25 JUMP                             ; [+7]
       26 GETUPVAL                         R3 3
       27 LOADK                            R5 K7 ["Toolbox"]
       28 NAMECALL                         R3 R3 K9 ["getPluginPolicy"]
       30 CALL                             R3 2 1
       31 GETTABLEKS                       R2 R3 K5 ["CreatorMarketplaceWebUrl"]
       33 JUMPIFNOT                        R2 ; [+11]
       34 GETIMPORT                        R3 K12 [string.format]
       36 LOADK                            R4 K13 ["%sasset/%s"]
       37 MOVE                             R5 R2
       38 GETUPVAL                         R6 4
       39 MOVE                             R8 R0
       40 NAMECALL                         R6 R6 K14 ["urlEncode"]
       42 CALL                             R6 2 -1
       43 CALL                             R3 -1 1
       44 JUMP                             ; [+10]
       45 GETIMPORT                        R3 K12 [string.format]
       47 LOADK                            R4 K15 ["%s/library/%s/asset"]
       48 MOVE                             R5 R1
       49 GETUPVAL                         R6 4
       50 MOVE                             R8 R0
       51 NAMECALL                         R6 R6 K14 ["urlEncode"]
       53 CALL                             R6 2 -1
       54 CALL                             R3 -1 1
       55 GETUPVAL                         R4 5
       56 JUMPIFNOT                        R4 ; [+19]
       57 GETUPVAL                         R4 2
       58 CALL                             R4 0 1
       59 JUMPIFNOT                        R4 ; [+10]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K0 ["props"]
       63 GETTABLEKS                       R4 R4 K6 ["PluginManagementApi"]
       65 MOVE                             R6 R3
       66 NAMECALL                         R4 R4 K16 ["OpenInBrowser_DONOTUSE"]
       68 CALL                             R4 2 0
       69 RETURN                           R0 0
       70 GETUPVAL                         R4 6
       71 MOVE                             R6 R3
       72 NAMECALL                         R4 R4 K16 ["OpenInBrowser_DONOTUSE"]
       74 CALL                             R4 2 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R4 7
       77 MOVE                             R6 R3
       78 NAMECALL                         R4 R4 K17 ["OpenBrowserWindow"]
       80 CALL                             R4 2 0
       81 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["removePluginData"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["data"]
       10 GETTABLEKS                       R1 R1 K3 ["assetId"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 1
       14 CALL                             R0 0 1
       15 JUMPIFNOT                        R0 ; [+16]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["props"]
       19 GETTABLEKS                       R0 R0 K4 ["PluginManagementApi"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K0 ["props"]
       24 GETTABLEKS                       R2 R2 K2 ["data"]
       26 GETTABLEKS                       R2 R2 K3 ["assetId"]
       28 NAMECALL                         R0 R0 K5 ["UninstallPlugin"]
       30 CALL                             R0 2 0
       31 JUMP                             ; [+11]
       32 GETUPVAL                         R0 2
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K0 ["props"]
       36 GETTABLEKS                       R2 R2 K2 ["data"]
       38 GETTABLEKS                       R2 R2 K3 ["assetId"]
       40 NAMECALL                         R0 R0 K5 ["UninstallPlugin"]
       42 CALL                             R0 2 0
       43 GETIMPORT                        R0 K7 [wait]
       45 CALL                             R0 0 0
       46 GETUPVAL                         R0 0
       47 GETTABLEKS                       R0 R0 K0 ["props"]
       49 GETTABLEKS                       R0 R0 K8 ["onPluginUninstalled"]
       51 CALL                             R0 0 0
       52 RETURN                           R0 0

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
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R1 R0 K1 ["PluginManagementApi"]
        8 JUMPIF                           R1 ; [+1]
        9 LOADNIL                          R1
       10 GETTABLEKS                       R2 R0 K2 ["Analytics"]
       12 LOADK                            R4 K3 ["TryUpdatePlugin"]
       13 GETTABLEKS                       R5 R0 K4 ["data"]
       15 GETTABLEKS                       R5 R5 K5 ["assetId"]
       17 NAMECALL                         R2 R2 K6 ["report"]
       19 CALL                             R2 3 0
       20 GETTABLEKS                       R2 R0 K7 ["UpdatePlugin"]
       22 MOVE                             R3 R1
       23 GETTABLEKS                       R4 R0 K4 ["data"]
       25 GETTABLEKS                       R5 R0 K2 ["Analytics"]
       27 CALL                             R2 3 0
       28 RETURN                           R0 0

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
       26 JUMPIFNOT                        R4 ; [+19]
       27 GETUPVAL                         R4 4
       28 CALL                             R4 0 1
       29 JUMPIFNOT                        R4 ; [+10]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K0 ["props"]
       33 GETTABLEKS                       R4 R4 K10 ["PluginManagementApi"]
       35 MOVE                             R6 R3
       36 NAMECALL                         R4 R4 K11 ["OpenInBrowser_DONOTUSE"]
       38 CALL                             R4 2 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R4 5
       41 MOVE                             R6 R3
       42 NAMECALL                         R4 R4 K11 ["OpenInBrowser_DONOTUSE"]
       44 CALL                             R4 2 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R4 6
       47 MOVE                             R6 R3
       48 NAMECALL                         R4 R4 K12 ["OpenBrowserWindow"]
       50 CALL                             R4 2 0
       51 RETURN                           R0 0

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
       15 CAPTURE                          UPVAL U0
       16 SETTABLEKS                       R1 R0 K5 ["onPluginEnabled"]
       18 NEWCLOSURE                       R1 P2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 SETTABLEKS                       R1 R0 K6 ["onPluginDisabled"]
       23 NEWCLOSURE                       R1 P3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 SETTABLEKS                       R1 R0 K7 ["showDetails"]
       34 NEWCLOSURE                       R1 P4
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U5
       38 SETTABLEKS                       R1 R0 K8 ["uninstallPlugin"]
       40 NEWCLOSURE                       R1 P5
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R1 R0 K9 ["onShowMoreActivated"]
       44 NEWCLOSURE                       R1 P6
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R1 R0 K10 ["hideShowMore"]
       48 NEWCLOSURE                       R1 P7
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R1 R0 K11 ["moreItemClicked"]
       52 NEWCLOSURE                       R1 P8
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U0
       55 SETTABLEKS                       R1 R0 K12 ["updatePlugin"]
       57 NEWCLOSURE                       R1 P9
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U1
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          UPVAL U6
       65 SETTABLEKS                       R1 R0 K13 ["openCreatorProfile"]
       67 NEWCLOSURE                       R1 P10
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U7
       70 SETTABLEKS                       R1 R0 K14 ["openPluginDetails"]
       72 NEWCLOSURE                       R1 P11
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R1 R0 K15 ["onToggleClick"]
       76 RETURN                           R0 0

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
      103 GETUPVAL                         R27 2
      104 GETTABLEKS                       R27 R27 K34 ["createElement"]
      106 LOADK                            R28 K35 ["Frame"]
      107 DUPTABLE                         R29 K39 [{"BackgroundColor3", "BorderSizePixel", "LayoutOrder", "Size"}]
      108 GETTABLEKS                       R30 R10 K40 ["BackgroundColor"]
      110 SETTABLEKS                       R30 R29 K36 ["BackgroundColor3"]
      112 LOADN                            R30 0
      113 SETTABLEKS                       R30 R29 K37 ["BorderSizePixel"]
      115 SETTABLEKS                       R12 R29 K12 ["LayoutOrder"]
      117 GETIMPORT                        R30 K28 [UDim2.new]
      119 LOADN                            R31 1
      120 GETUPVAL                         R32 1
      121 GETTABLEKS                       R32 R32 K41 ["SCROLLBAR_WIDTH_ADJUSTMENT"]
      123 LOADN                            R33 0
      124 GETUPVAL                         R34 1
      125 GETTABLEKS                       R34 R34 K42 ["PLUGIN_ENTRY_HEIGHT"]
      127 CALL                             R30 4 1
      128 SETTABLEKS                       R30 R29 K38 ["Size"]
      130 DUPTABLE                         R30 K52 [{"Padding", "Thumbnail", "Contents", "ModeratedWarning", "UpdateButton", "ProgressIndicator", "SuccessLabel", "ToggleButton", "ShowMoreButton"}]
      131 GETUPVAL                         R31 2
      132 GETTABLEKS                       R31 R31 K34 ["createElement"]
      134 LOADK                            R32 K53 ["UIPadding"]
      135 DUPTABLE                         R33 K56 [{"PaddingTop", "PaddingBottom"}]
      136 GETIMPORT                        R34 K58 [UDim.new]
      138 LOADN                            R35 0
      139 GETUPVAL                         R36 1
      140 GETTABLEKS                       R36 R36 K59 ["PLUGIN_ENTRY_PADDING"]
      142 CALL                             R34 2 1
      143 SETTABLEKS                       R34 R33 K54 ["PaddingTop"]
      145 GETIMPORT                        R34 K58 [UDim.new]
      147 LOADN                            R35 0
      148 GETUPVAL                         R36 1
      149 GETTABLEKS                       R36 R36 K59 ["PLUGIN_ENTRY_PADDING"]
      151 CALL                             R34 2 1
      152 SETTABLEKS                       R34 R33 K55 ["PaddingBottom"]
      154 CALL                             R31 2 1
      155 SETTABLEKS                       R31 R30 K43 ["Padding"]
      157 GETUPVAL                         R31 2
      158 GETTABLEKS                       R31 R31 K34 ["createElement"]
      160 LOADK                            R32 K60 ["ImageLabel"]
      161 DUPTABLE                         R33 K64 [{"Size", "Position", "Image", "BackgroundTransparency"}]
      162 GETIMPORT                        R34 K28 [UDim2.new]
      164 LOADN                            R35 0
      165 GETUPVAL                         R36 1
      166 GETTABLEKS                       R36 R36 K65 ["THUMBNAIL_SIZE"]
      168 LOADN                            R37 0
      169 GETUPVAL                         R38 1
      170 GETTABLEKS                       R38 R38 K65 ["THUMBNAIL_SIZE"]
      172 CALL                             R34 4 1
      173 SETTABLEKS                       R34 R33 K38 ["Size"]
      175 GETIMPORT                        R34 K28 [UDim2.new]
      177 LOADN                            R35 0
      178 GETUPVAL                         R36 1
      179 GETTABLEKS                       R36 R36 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      181 LOADN                            R37 0
      182 GETUPVAL                         R38 1
      183 GETTABLEKS                       R38 R38 K66 ["PLUGIN_VERTICAL_PADDING"]
      185 CALL                             R34 4 1
      186 SETTABLEKS                       R34 R33 K61 ["Position"]
      188 SETTABLEKS                       R21 R33 K62 ["Image"]
      190 LOADN                            R34 1
      191 SETTABLEKS                       R34 R33 K63 ["BackgroundTransparency"]
      193 CALL                             R31 2 1
      194 SETTABLEKS                       R31 R30 K44 ["Thumbnail"]
      196 GETUPVAL                         R31 2
      197 GETTABLEKS                       R31 R31 K34 ["createElement"]
      199 LOADK                            R32 K35 ["Frame"]
      200 DUPTABLE                         R33 K67 [{"BackgroundTransparency", "Position", "Size"}]
      201 LOADN                            R34 1
      202 SETTABLEKS                       R34 R33 K63 ["BackgroundTransparency"]
      204 GETIMPORT                        R34 K28 [UDim2.new]
      206 LOADN                            R35 0
      207 GETUPVAL                         R37 1
      208 GETTABLEKS                       R37 R37 K65 ["THUMBNAIL_SIZE"]
      210 GETUPVAL                         R39 1
      211 GETTABLEKS                       R39 R39 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      213 MULK                             R38 R39 K68 [2]
      214 ADD                              R36 R37 R38
      215 LOADN                            R37 0
      216 LOADN                            R38 0
      217 CALL                             R34 4 1
      218 SETTABLEKS                       R34 R33 K61 ["Position"]
      220 GETIMPORT                        R34 K28 [UDim2.new]
      222 LOADK                            R35 K33 [0.5]
      223 GETUPVAL                         R38 1
      224 GETTABLEKS                       R38 R38 K65 ["THUMBNAIL_SIZE"]
      226 MINUS                            R37 R38
      227 GETUPVAL                         R38 1
      228 GETTABLEKS                       R38 R38 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      230 SUB                              R36 R37 R38
      231 LOADN                            R37 1
      232 LOADN                            R38 0
      233 CALL                             R34 4 1
      234 SETTABLEKS                       R34 R33 K38 ["Size"]
      236 DUPTABLE                         R34 K74 [{"Layout", "Name", "Creator", "Description", "HttpRequestOverview", "UpdateOverview"}]
      237 GETUPVAL                         R35 2
      238 GETTABLEKS                       R35 R35 K34 ["createElement"]
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
      260 GETUPVAL                         R35 2
      261 GETTABLEKS                       R35 R35 K34 ["createElement"]
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
      303 GETUPVAL                         R35 2
      304 GETTABLEKS                       R35 R35 K34 ["createElement"]
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
      347 GETUPVAL                         R38 2
      348 GETTABLEKS                       R38 R38 K100 ["Event"]
      350 GETTABLEKS                       R38 R38 K101 ["Activated"]
      352 GETTABLEKS                       R39 R0 K102 ["openCreatorProfile"]
      354 SETTABLE                         R39 R37 R38
      355 CALL                             R35 2 1
      356 SETTABLEKS                       R35 R34 K70 ["Creator"]
      358 GETUPVAL                         R35 2
      359 GETTABLEKS                       R35 R35 K34 ["createElement"]
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
      413 GETUPVAL                         R35 2
      414 GETTABLEKS                       R35 R35 K34 ["createElement"]
      416 GETUPVAL                         R36 4
      417 DUPTABLE                         R37 K112 [{"assetId", "LayoutOrder"}]
      418 GETTABLEKS                       R38 R3 K16 ["assetId"]
      420 SETTABLEKS                       R38 R37 K16 ["assetId"]
      422 LOADN                            R38 3
      423 SETTABLEKS                       R38 R37 K12 ["LayoutOrder"]
      425 CALL                             R35 2 1
      426 SETTABLEKS                       R35 R34 K72 ["HttpRequestOverview"]
      428 GETUPVAL                         R35 2
      429 GETTABLEKS                       R35 R35 K34 ["createElement"]
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
      450 GETUPVAL                         R31 2
      451 GETTABLEKS                       R31 R31 K34 ["createElement"]
      453 LOADK                            R32 K83 ["TextLabel"]
      454 DUPTABLE                         R33 K116 [{"AnchorPoint", "Size", "Position", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextSize", "TextWrapped", "Font", "TextColor3", "Text"}]
      455 GETIMPORT                        R34 K118 [Vector2.new]
      457 LOADN                            R35 1
      458 LOADK                            R36 K33 [0.5]
      459 CALL                             R34 2 1
      460 SETTABLEKS                       R34 R33 K115 ["AnchorPoint"]
      462 GETIMPORT                        R34 K28 [UDim2.new]
      464 LOADN                            R35 0
      465 GETUPVAL                         R36 1
      466 GETTABLEKS                       R36 R36 K119 ["MODERATED_WARNING_WIDTH"]
      468 LOADN                            R37 0
      469 GETUPVAL                         R38 1
      470 GETTABLEKS                       R38 R38 K120 ["HEADER_BUTTON_SIZE"]
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
      514 GETUPVAL                         R31 2
      515 GETTABLEKS                       R31 R31 K34 ["createElement"]
      517 GETUPVAL                         R32 6
      518 DUPTABLE                         R33 K127 [{"AnchorPoint", "Size", "Position", "Style", "OnClick"}]
      519 GETIMPORT                        R34 K118 [Vector2.new]
      521 LOADN                            R35 1
      522 LOADK                            R36 K33 [0.5]
      523 CALL                             R34 2 1
      524 SETTABLEKS                       R34 R33 K115 ["AnchorPoint"]
      526 GETIMPORT                        R34 K28 [UDim2.new]
      528 LOADN                            R35 0
      529 GETUPVAL                         R36 1
      530 GETTABLEKS                       R36 R36 K128 ["HEADER_UPDATE_WIDTH"]
      532 LOADN                            R37 0
      533 GETUPVAL                         R38 1
      534 GETTABLEKS                       R38 R38 K120 ["HEADER_BUTTON_SIZE"]
      536 CALL                             R34 4 1
      537 SETTABLEKS                       R34 R33 K38 ["Size"]
      539 SETTABLEKS                       R23 R33 K61 ["Position"]
      541 LOADK                            R34 K129 ["Round"]
      542 SETTABLEKS                       R34 R33 K125 ["Style"]
      544 GETTABLEKS                       R34 R0 K130 ["updatePlugin"]
      546 SETTABLEKS                       R34 R33 K126 ["OnClick"]
      548 DUPTABLE                         R34 K134 [{"Label", "DateLabel", "ErrorLabel"}]
      549 GETUPVAL                         R35 2
      550 GETTABLEKS                       R35 R35 K34 ["createElement"]
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
      588 GETUPVAL                         R36 0
      589 GETTABLEKS                       R36 R36 K136 ["Error"]
      591 JUMPIFEQ                         R15 R36 ; [+54]
      593 GETUPVAL                         R35 2
      594 GETTABLEKS                       R35 R35 K34 ["createElement"]
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
      649 GETUPVAL                         R36 0
      650 GETTABLEKS                       R36 R36 K136 ["Error"]
      652 JUMPIFNOTEQ                      R15 R36 ; [+46]
      654 GETUPVAL                         R35 2
      655 GETTABLEKS                       R35 R35 K34 ["createElement"]
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
      707 GETUPVAL                         R32 0
      708 GETTABLEKS                       R32 R32 K25 ["Updating"]
      710 JUMPIFNOTEQ                      R15 R32 ; [+22]
      712 GETUPVAL                         R31 2
      713 GETTABLEKS                       R31 R31 K34 ["createElement"]
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
      740 GETUPVAL                         R31 2
      741 GETTABLEKS                       R31 R31 K34 ["createElement"]
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
      791 GETUPVAL                         R31 2
      792 GETTABLEKS                       R31 R31 K34 ["createElement"]
      794 GETUPVAL                         R32 9
      795 DUPTABLE                         R33 K154 [{"Disabled", "Selected", "OnClick", "Size", "Position"}]
      796 LOADB                            R34 0
      797 SETTABLEKS                       R34 R33 K152 ["Disabled"]
      799 SETTABLEKS                       R17 R33 K153 ["Selected"]
      801 GETTABLEKS                       R34 R0 K155 ["onToggleClick"]
      803 SETTABLEKS                       R34 R33 K126 ["OnClick"]
      805 GETIMPORT                        R34 K28 [UDim2.new]
      807 LOADN                            R35 0
      808 GETUPVAL                         R36 1
      809 GETTABLEKS                       R36 R36 K31 ["PLUGIN_ENABLE_WIDTH"]
      811 LOADN                            R37 0
      812 LOADN                            R38 24
      813 CALL                             R34 4 1
      814 SETTABLEKS                       R34 R33 K38 ["Size"]
      816 GETIMPORT                        R34 K28 [UDim2.new]
      818 LOADN                            R35 1
      819 GETUPVAL                         R39 1
      820 GETTABLEKS                       R39 R39 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      822 MULK                             R38 R39 K156 [-2]
      823 GETUPVAL                         R39 1
      824 GETTABLEKS                       R39 R39 K31 ["PLUGIN_ENABLE_WIDTH"]
      826 SUB                              R37 R38 R39
      827 GETUPVAL                         R38 1
      828 GETTABLEKS                       R38 R38 K32 ["PLUGIN_CONTEXT_WIDTH"]
      830 SUB                              R36 R37 R38
      831 LOADK                            R37 K33 [0.5]
      832 LOADN                            R38 0
      833 CALL                             R34 4 1
      834 SETTABLEKS                       R34 R33 K61 ["Position"]
      836 CALL                             R31 2 1
      837 SETTABLEKS                       R31 R30 K50 ["ToggleButton"]
      839 GETUPVAL                         R31 2
      840 GETTABLEKS                       R31 R31 K34 ["createElement"]
      842 GETUPVAL                         R32 6
      843 DUPTABLE                         R33 K127 [{"AnchorPoint", "Size", "Position", "Style", "OnClick"}]
      844 GETIMPORT                        R34 K118 [Vector2.new]
      846 LOADN                            R35 0
      847 LOADK                            R36 K33 [0.5]
      848 CALL                             R34 2 1
      849 SETTABLEKS                       R34 R33 K115 ["AnchorPoint"]
      851 GETIMPORT                        R34 K28 [UDim2.new]
      853 LOADN                            R35 0
      854 GETUPVAL                         R36 1
      855 GETTABLEKS                       R36 R36 K120 ["HEADER_BUTTON_SIZE"]
      857 LOADN                            R37 0
      858 GETUPVAL                         R38 1
      859 GETTABLEKS                       R38 R38 K120 ["HEADER_BUTTON_SIZE"]
      861 CALL                             R34 4 1
      862 SETTABLEKS                       R34 R33 K38 ["Size"]
      864 GETIMPORT                        R34 K28 [UDim2.new]
      866 LOADN                            R35 1
      867 LOADN                            R37 255
      868 GETUPVAL                         R39 1
      869 GETTABLEKS                       R39 R39 K30 ["PLUGIN_HORIZONTAL_PADDING"]
      871 GETUPVAL                         R40 1
      872 GETTABLEKS                       R40 R40 K32 ["PLUGIN_CONTEXT_WIDTH"]
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
      889 GETUPVAL                         R35 2
      890 GETTABLEKS                       R35 R35 K34 ["createElement"]
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
      939 GETUPVAL                         R35 2
      940 GETTABLEKS                       R35 R35 K34 ["createElement"]
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
       17 GETTABLEKS                       R3 R1 K9 ["Bin"]
       19 GETTABLEKS                       R3 R3 K10 ["getFFlagStudioFixPluginManagementPluginTests"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [game]
       24 LOADK                            R5 K11 ["StudioService"]
       25 NAMECALL                         R3 R3 K12 ["GetService"]
       27 CALL                             R3 2 1
       28 GETIMPORT                        R4 K1 [game]
       30 LOADK                            R6 K13 ["ContentProvider"]
       31 NAMECALL                         R4 R4 K12 ["GetService"]
       33 CALL                             R4 2 1
       34 LOADNIL                          R5
       35 MOVE                             R6 R2
       36 CALL                             R6 0 1
       37 JUMPIF                           R6 ; [+7]
       38 GETIMPORT                        R6 K1 [game]
       40 LOADK                            R8 K14 ["PluginPolicyService"]
       41 NAMECALL                         R6 R6 K12 ["GetService"]
       43 CALL                             R6 2 1
       44 MOVE                             R5 R6
       45 GETIMPORT                        R6 K1 [game]
       47 LOADK                            R8 K15 ["GuiService"]
       48 NAMECALL                         R6 R6 K12 ["GetService"]
       50 CALL                             R6 2 1
       51 GETIMPORT                        R7 K1 [game]
       53 LOADK                            R9 K16 ["HttpService"]
       54 NAMECALL                         R7 R7 K12 ["GetService"]
       56 CALL                             R7 2 1
       57 GETIMPORT                        R8 K1 [game]
       59 LOADK                            R10 K17 ["TextService"]
       60 NAMECALL                         R8 R8 K12 ["GetService"]
       62 CALL                             R8 2 1
       63 GETIMPORT                        R9 K8 [require]
       65 GETTABLEKS                       R10 R1 K18 ["Packages"]
       67 GETTABLEKS                       R10 R10 K19 ["Roact"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K8 [require]
       72 GETTABLEKS                       R11 R1 K18 ["Packages"]
       74 GETTABLEKS                       R11 R11 K20 ["RoactRodux"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K8 [require]
       79 GETTABLEKS                       R12 R1 K21 ["Src"]
       81 GETTABLEKS                       R12 R12 K22 ["Util"]
       83 GETTABLEKS                       R12 R12 K23 ["Constants"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K8 [require]
       88 GETTABLEKS                       R13 R1 K21 ["Src"]
       90 GETTABLEKS                       R13 R13 K22 ["Util"]
       92 GETTABLEKS                       R13 R13 K24 ["UpdateStatus"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K8 [require]
       97 GETTABLEKS                       R14 R1 K18 ["Packages"]
       99 GETTABLEKS                       R14 R14 K25 ["Framework"]
      101 CALL                             R13 1 1
      102 GETTABLEKS                       R13 R13 K26 ["ContextServices"]
      104 GETTABLEKS                       R14 R13 K27 ["withContext"]
      106 GETIMPORT                        R15 K8 [require]
      108 GETTABLEKS                       R16 R1 K21 ["Src"]
      110 GETTABLEKS                       R16 R16 K26 ["ContextServices"]
      112 GETTABLEKS                       R16 R16 K28 ["PluginAPI2"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K8 [require]
      117 GETTABLEKS                       R17 R1 K21 ["Src"]
      119 GETTABLEKS                       R17 R17 K26 ["ContextServices"]
      121 GETTABLEKS                       R17 R17 K29 ["Navigation"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K8 [require]
      126 GETTABLEKS                       R18 R1 K21 ["Src"]
      128 GETTABLEKS                       R18 R18 K30 ["Thunks"]
      130 GETTABLEKS                       R18 R18 K31 ["SetPluginEnabledState"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K8 [require]
      135 GETTABLEKS                       R19 R1 K21 ["Src"]
      137 GETTABLEKS                       R19 R19 K30 ["Thunks"]
      139 GETTABLEKS                       R19 R19 K32 ["UpdatePlugin"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K8 [require]
      144 GETTABLEKS                       R20 R1 K18 ["Packages"]
      146 GETTABLEKS                       R20 R20 K25 ["Framework"]
      148 CALL                             R19 1 1
      149 GETTABLEKS                       R20 R19 K33 ["UI"]
      151 GETTABLEKS                       R21 R20 K34 ["Button"]
      153 GETTABLEKS                       R22 R20 K35 ["TextLabel"]
      155 GETTABLEKS                       R23 R20 K36 ["DropdownMenu"]
      157 GETTABLEKS                       R24 R20 K37 ["ToggleButton"]
      159 GETTABLEKS                       R25 R20 K38 ["FakeLoadingBar"]
      161 GETIMPORT                        R26 K8 [require]
      163 GETTABLEKS                       R27 R1 K21 ["Src"]
      165 GETTABLEKS                       R27 R27 K39 ["Actions"]
      167 GETTABLEKS                       R27 R27 K40 ["RemovePluginData"]
      169 CALL                             R26 1 1
      170 GETIMPORT                        R27 K8 [require]
      172 GETTABLEKS                       R28 R1 K21 ["Src"]
      174 GETTABLEKS                       R28 R28 K41 ["Components"]
      176 GETTABLEKS                       R28 R28 K42 ["HttpRequestOverview"]
      178 CALL                             R27 1 1
      179 GETIMPORT                        R28 K8 [require]
      181 GETTABLEKS                       R29 R1 K21 ["Src"]
      183 GETTABLEKS                       R29 R29 K41 ["Components"]
      185 GETTABLEKS                       R29 R29 K43 ["UpdateOverview"]
      187 CALL                             R28 1 1
      188 LOADNIL                          R29
      189 MOVE                             R30 R2
      190 CALL                             R30 0 1
      191 JUMPIFNOT                        R30 ; [+10]
      192 GETIMPORT                        R30 K8 [require]
      194 GETTABLEKS                       R31 R1 K21 ["Src"]
      196 GETTABLEKS                       R31 R31 K22 ["Util"]
      198 GETTABLEKS                       R31 R31 K44 ["PluginManagementApi"]
      200 CALL                             R30 1 1
      201 MOVE                             R29 R30
      202 GETIMPORT                        R30 K47 [UDim2.new]
      204 LOADN                            R31 0
      205 LOADN                            R32 120
      206 LOADN                            R33 0
      207 LOADN                            R34 8
      208 CALL                             R30 4 1
      209 DUPCLOSURE                       R31 K48 [PROTO_0]
      210 CAPTURE                          VAL R8
      211 GETIMPORT                        R33 K52 [Enum.Font.SourceSans]
      213 LOADK                            R36 K53 ["a"]
      214 LOADN                            R37 16
      215 MOVE                             R38 R33
      216 GETIMPORT                        R39 K55 [Vector2.new]
      218 LOADN                            R40 15
      219 LOADN                            R41 16
      220 CALL                             R39 2 -1
      221 NAMECALL                         R34 R8 K56 ["GetTextSize"]
      223 CALL                             R34 -1 1
      224 MOVE                             R32 R34
      225 GETTABLEKS                       R32 R32 K57 ["Y"]
      227 GETTABLEKS                       R33 R9 K58 ["Component"]
      229 LOADK                            R35 K59 ["PluginEntry"]
      230 NAMECALL                         R33 R33 K60 ["extend"]
      232 CALL                             R33 2 1
      233 NEWCLOSURE                       R34 P1
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R4
      236 CAPTURE                          REF R5
      237 CAPTURE                          VAL R7
      238 CAPTURE                          VAL R0
      239 CAPTURE                          VAL R3
      240 CAPTURE                          VAL R6
      241 CAPTURE                          VAL R11
      242 SETTABLEKS                       R34 R33 K61 ["init"]
      244 DUPCLOSURE                       R34 K62 [PROTO_14]
      245 CAPTURE                          VAL R12
      246 SETTABLEKS                       R34 R33 K63 ["getDerivedStateFromProps"]
      248 DUPCLOSURE                       R34 K64 [PROTO_16]
      249 CAPTURE                          VAL R12
      250 CAPTURE                          VAL R11
      251 CAPTURE                          VAL R9
      252 CAPTURE                          VAL R32
      253 CAPTURE                          VAL R27
      254 CAPTURE                          VAL R28
      255 CAPTURE                          VAL R21
      256 CAPTURE                          VAL R25
      257 CAPTURE                          VAL R30
      258 CAPTURE                          VAL R24
      259 CAPTURE                          VAL R23
      260 CAPTURE                          VAL R22
      261 SETTABLEKS                       R34 R33 K65 ["render"]
      263 MOVE                             R34 R14
      264 DUPTABLE                         R35 K70 [{"Navigation", "Localization", "Stylizer", "API", "Analytics", "PluginManagementApi"}]
      265 SETTABLEKS                       R16 R35 K29 ["Navigation"]
      267 GETTABLEKS                       R36 R13 K66 ["Localization"]
      269 SETTABLEKS                       R36 R35 K66 ["Localization"]
      271 GETTABLEKS                       R36 R13 K67 ["Stylizer"]
      273 SETTABLEKS                       R36 R35 K67 ["Stylizer"]
      275 SETTABLEKS                       R15 R35 K68 ["API"]
      277 GETTABLEKS                       R36 R13 K69 ["Analytics"]
      279 SETTABLEKS                       R36 R35 K69 ["Analytics"]
      281 MOVE                             R37 R2
      282 CALL                             R37 0 1
      283 JUMPIFNOT                        R37 ; [+2]
      284 MOVE                             R36 R29
      285 JUMPIF                           R36 ; [+1]
      286 LOADNIL                          R36
      287 SETTABLEKS                       R36 R35 K44 ["PluginManagementApi"]
      289 CALL                             R34 1 1
      290 MOVE                             R35 R33
      291 CALL                             R34 1 1
      292 MOVE                             R33 R34
      293 DUPCLOSURE                       R34 K71 [PROTO_17]
      294 DUPCLOSURE                       R35 K72 [PROTO_21]
      295 CAPTURE                          VAL R26
      296 CAPTURE                          VAL R17
      297 CAPTURE                          VAL R18
      298 GETTABLEKS                       R36 R10 K73 ["connect"]
      300 MOVE                             R37 R34
      301 MOVE                             R38 R35
      302 CALL                             R36 2 1
      303 MOVE                             R37 R33
      304 CALL                             R36 1 -1
      305 CLOSEUPVALS                      R5
      306 RETURN                           R36 -1
