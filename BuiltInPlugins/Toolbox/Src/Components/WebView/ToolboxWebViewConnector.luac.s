PROTO_0:
        0 JUMPIFNOT                        R0 ; [+13]
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R3 R1
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+7]
        8 LENGTH                           R2 R1
        9 LOADN                            R3 0
       10 JUMPIFNOTLT                      R3 R2 ; [+3]
       12 LOADB                            R2 1
       13 RETURN                           R2 1
       14 LOADB                            R2 0
       15 RETURN                           R2 1

PROTO_1:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["didOpenItemsDetails"]
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K1 ["_externalConnections"]
        7 NAMECALL                         R1 R0 K2 ["createEventHandlers"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K3 ["eventHandlers"]
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getTabKeyForCategoryName"]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R3 K2 ["categoryName"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["MARKETPLACE_KEY"]
       11 JUMPIFEQ                         R1 R2 ; [+9]
       13 GETTABLEKS                       R3 R0 K1 ["props"]
       15 GETTABLEKS                       R2 R3 K4 ["ChangeMarketplaceTab"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K3 ["MARKETPLACE_KEY"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["WebViewManagerContext"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 LOADK                            R4 K3 ["openItemDetails"]
        9 DUPTABLE                         R5 K5 [{"assetId"}]
       10 GETUPVAL                         R6 1
       11 SETTABLEKS                       R6 R5 K4 ["assetId"]
       13 NAMECALL                         R2 R1 K6 ["fire"]
       15 CALL                             R2 3 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetService"]
        3 LOADK                            R2 K1 ["TutorialService"]
        4 CALL                             R1 1 1
        5 NAMECALL                         R1 R1 K2 ["ShouldLaunchTutorial"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+54]
        9 GETTABLEKS                       R3 R0 K3 ["props"]
       11 GETTABLEKS                       R2 R3 K4 ["WebViewManagerContext"]
       13 NAMECALL                         R2 R2 K5 ["get"]
       15 CALL                             R2 1 1
       16 LOADK                            R5 K6 ["updateTutorialConfig"]
       17 DUPTABLE                         R6 K10 [{"assetIds", "isToolboxTutorialActive", "nextTutorialStep"}]
       18 GETTABLEKS                       R9 R0 K3 ["props"]
       20 GETTABLEKS                       R8 R9 K11 ["tutorialAssetIds"]
       22 JUMPIFNOT                        R8 ; [+5]
       23 GETTABLEKS                       R8 R0 K3 ["props"]
       25 GETTABLEKS                       R7 R8 K11 ["tutorialAssetIds"]
       27 JUMP                             ; [+2]
       28 NEWTABLE                         R7 0 0
       30 SETTABLEKS                       R7 R6 K7 ["assetIds"]
       32 GETTABLEKS                       R9 R0 K3 ["props"]
       34 GETTABLEKS                       R8 R9 K11 ["tutorialAssetIds"]
       36 JUMPIFNOT                        R1 ; [+13]
       37 FASTCALL1                        TYPE R8 ; [+3]
       38 MOVE                             R10 R8
       39 GETIMPORT                        R9 K13 [type]
       41 CALL                             R9 1 1
       42 JUMPIFNOTEQKS                    R9 K14 ["table"] ; [+7]
       44 LENGTH                           R9 R8
       45 LOADN                            R10 0
       46 JUMPIFNOTLT                      R10 R9 ; [+3]
       48 LOADB                            R7 1
       49 JUMP                             ; [+1]
       50 LOADB                            R7 0
       51 SETTABLEKS                       R7 R6 K8 ["isToolboxTutorialActive"]
       53 GETUPVAL                         R9 1
       54 GETTABLEKS                       R8 R9 K15 ["TutorialStep"]
       56 GETTABLEKS                       R7 R8 K16 ["SEARCH"]
       58 SETTABLEKS                       R7 R6 K9 ["nextTutorialStep"]
       60 NAMECALL                         R3 R2 K17 ["fire"]
       62 CALL                             R3 3 0
       63 GETTABLEKS                       R2 R0 K18 ["didOpenItemsDetails"]
       65 JUMPIF                           R2 ; [+44]
       66 GETTABLEKS                       R4 R0 K3 ["props"]
       68 GETTABLEKS                       R3 R4 K19 ["startupAssetId"]
       70 JUMPIFNOT                        R3 ; [+5]
       71 GETTABLEKS                       R3 R0 K3 ["props"]
       73 GETTABLEKS                       R2 R3 K19 ["startupAssetId"]
       75 JUMP                             ; [+2]
       76 GETUPVAL                         R2 2
       77 CALL                             R2 0 1
       78 JUMPIFNOT                        R2 ; [+6]
       79 FASTCALL1                        TONUMBER R2 ; [+3]
       80 MOVE                             R4 R2
       81 GETIMPORT                        R3 K21 [tonumber]
       83 CALL                             R3 1 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R3
       86 JUMPIFNOT                        R3 ; [+20]
       87 GETTABLEKS                       R5 R0 K3 ["props"]
       89 GETTABLEKS                       R4 R5 K22 ["getAssetPreviewDataForStartup"]
       91 MOVE                             R5 R3
       92 GETTABLEKS                       R7 R0 K3 ["props"]
       94 GETTABLEKS                       R6 R7 K23 ["TryInsert"]
       96 LOADNIL                          R7
       97 GETTABLEKS                       R10 R0 K3 ["props"]
       99 GETTABLEKS                       R9 R10 K24 ["Network"]
      101 GETTABLEKS                       R8 R9 K25 ["networkInterface"]
      103 NEWCLOSURE                       R9 P0
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R3
      106 CALL                             R4 5 0
      107 LOADB                            R4 1
      108 SETTABLEKS                       R4 R0 K18 ["didOpenItemsDetails"]
      110 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K1 ["analyticsEventName"]
        2 ORK                              R1 R2 K0 [""]
        3 JUMPIFNOTEQKS                    R1 K2 ["MarketplaceAssetImpression"] ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K3 ["logFirstStoreAssetImpression"]
        8 LOADB                            R3 1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+21]
        2 GETUPVAL                         R0 1
        3 DUPTABLE                         R2 K2 [{"assetId", "assetTypeId"}]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["assetId"]
        7 SETTABLEKS                       R3 R2 K0 ["assetId"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K1 ["assetTypeId"]
       12 SETTABLEKS                       R3 R2 K1 ["assetTypeId"]
       14 NAMECALL                         R0 R0 K3 ["JSONEncode"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["AddToolboxAssetToInventory"]
       19 MOVE                             R4 R0
       20 NAMECALL                         R1 R1 K5 ["Fire"]
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 2
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R2 R3 K0 ["assetId"]
        6 NAMECALL                         R0 R0 K1 ["IsPluginInstalled"]
        8 CALL                             R0 2 1
        9 SETUPVAL                         R0 1
       10 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R1 0
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          REF R1
        6 CAPTURE                          VAL R0
        7 CALL                             R2 1 2
        8 DUPTABLE                         R4 K3 [{"isInstalled"}]
        9 SETTABLEKS                       R1 R4 K2 ["isInstalled"]
       11 CLOSEUPVALS                      R1
       12 RETURN                           R4 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R2 K1 ["data"]
        4 GETTABLEN                        R3 R1 1
        5 GETTABLEKS                       R2 R3 K2 ["versionId"]
        7 SETUPVAL                         R2 0
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R3 R4 K3 ["props"]
       11 GETTABLEKS                       R2 R3 K4 ["TryInsert"]
       13 GETUPVAL                         R3 4
       14 GETUPVAL                         R4 5
       15 GETUPVAL                         R5 6
       16 GETUPVAL                         R6 7
       17 GETUPVAL                         R7 0
       18 CALL                             R2 5 2
       19 SETUPVAL                         R2 1
       20 SETUPVAL                         R3 2
       21 GETUPVAL                         R2 8
       22 JUMPIFNOT                        R2 ; [+6]
       23 GETUPVAL                         R2 1
       24 JUMPIFNOT                        R2 ; [+4]
       25 GETUPVAL                         R2 8
       26 NAMECALL                         R2 R2 K5 ["UpdatePluginManagement"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K3 [{"Asset", "Creator", "Context"}]
        1 DUPTABLE                         R2 K10 [{"AssetSubTypes", "Capabilities", "HasScripts", "Id", "Name", "TypeId"}]
        2 GETTABLEKS                       R3 R0 K11 ["assetSubTypes"]
        4 SETTABLEKS                       R3 R2 K4 ["AssetSubTypes"]
        6 GETUPVAL                         R4 0
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R4 ; [+3]
        9 GETTABLEKS                       R3 R0 K12 ["capabilities"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K5 ["Capabilities"]
       15 GETTABLEKS                       R3 R0 K13 ["hasScripts"]
       17 SETTABLEKS                       R3 R2 K6 ["HasScripts"]
       19 GETTABLEKS                       R3 R0 K14 ["assetId"]
       21 SETTABLEKS                       R3 R2 K7 ["Id"]
       23 GETTABLEKS                       R3 R0 K15 ["assetName"]
       25 SETTABLEKS                       R3 R2 K8 ["Name"]
       27 GETTABLEKS                       R3 R0 K16 ["assetTypeId"]
       29 SETTABLEKS                       R3 R2 K9 ["TypeId"]
       31 SETTABLEKS                       R2 R1 K0 ["Asset"]
       33 DUPTABLE                         R2 K18 [{"IsVerifiedCreator"}]
       34 GETTABLEKS                       R3 R0 K19 ["isVerifiedCreator"]
       36 SETTABLEKS                       R3 R2 K17 ["IsVerifiedCreator"]
       38 SETTABLEKS                       R2 R1 K1 ["Creator"]
       40 DUPTABLE                         R2 K28 [{"currentCategory", "sort", "searchKeyword", "searchResultSource", "searchId", "page", "pagePosition", "position"}]
       41 GETTABLEKS                       R3 R0 K20 ["currentCategory"]
       43 SETTABLEKS                       R3 R2 K20 ["currentCategory"]
       45 GETTABLEKS                       R3 R0 K21 ["sort"]
       47 SETTABLEKS                       R3 R2 K21 ["sort"]
       49 GETTABLEKS                       R3 R0 K22 ["searchKeyword"]
       51 SETTABLEKS                       R3 R2 K22 ["searchKeyword"]
       53 GETTABLEKS                       R3 R0 K23 ["searchResultSource"]
       55 SETTABLEKS                       R3 R2 K23 ["searchResultSource"]
       57 GETTABLEKS                       R3 R0 K24 ["searchId"]
       59 SETTABLEKS                       R3 R2 K24 ["searchId"]
       61 GETTABLEKS                       R3 R0 K25 ["page"]
       63 SETTABLEKS                       R3 R2 K25 ["page"]
       65 GETTABLEKS                       R3 R0 K26 ["pagePosition"]
       67 SETTABLEKS                       R3 R2 K26 ["pagePosition"]
       69 GETTABLEKS                       R3 R0 K27 ["position"]
       71 SETTABLEKS                       R3 R2 K27 ["position"]
       73 SETTABLEKS                       R2 R1 K2 ["Context"]
       75 GETTABLEKS                       R2 R0 K29 ["assetWasDragged"]
       77 GETTABLEKS                       R3 R0 K30 ["insertionMethod"]
       79 LOADNIL                          R4
       80 GETTABLEKS                       R5 R0 K31 ["swimlaneName"]
       82 LOADB                            R6 0
       83 LOADNIL                          R7
       84 GETTABLEKS                       R8 R0 K16 ["assetTypeId"]
       86 GETIMPORT                        R10 K35 [Enum.AssetType.Plugin]
       88 GETTABLEKS                       R9 R10 K36 ["Value"]
       90 JUMPIFNOTEQ                      R8 R9 ; [+30]
       92 GETUPVAL                         R11 1
       93 GETTABLEKS                       R10 R11 K37 ["props"]
       95 GETTABLEKS                       R9 R10 K38 ["Network"]
       97 GETTABLEKS                       R8 R9 K39 ["networkInterface"]
       99 GETTABLEKS                       R10 R0 K14 ["assetId"]
      101 NAMECALL                         R8 R8 K40 ["getPluginInfo"]
      103 CALL                             R8 2 1
      104 NEWCLOSURE                       R10 P0
      105 CAPTURE                          REF R4
      106 CAPTURE                          REF R6
      107 CAPTURE                          REF R7
      108 CAPTURE                          UPVAL U1
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R5
      113 CAPTURE                          UPVAL U2
      114 NAMECALL                         R8 R8 K41 ["andThen"]
      116 CALL                             R8 2 1
      117 NAMECALL                         R8 R8 K42 ["await"]
      119 CALL                             R8 1 0
      120 JUMP                             ; [+39]
      121 GETUPVAL                         R10 1
      122 GETTABLEKS                       R9 R10 K37 ["props"]
      124 GETTABLEKS                       R8 R9 K43 ["TryInsert"]
      126 MOVE                             R9 R1
      127 MOVE                             R10 R2
      128 MOVE                             R11 R3
      129 MOVE                             R12 R5
      130 MOVE                             R13 R4
      131 CALL                             R8 5 2
      132 MOVE                             R6 R8
      133 MOVE                             R7 R9
      134 JUMPIFEQKB                       R6 FALSE ; [+5]
      136 JUMPIFEQKNIL                     R6 ; [+3]
      138 LOADB                            R6 1
      139 JUMP                             ; [+1]
      140 LOADB                            R6 0
      141 GETUPVAL                         R10 1
      142 GETTABLEKS                       R9 R10 K37 ["props"]
      144 GETTABLEKS                       R8 R9 K34 ["Plugin"]
      146 JUMPIFNOT                        R8 ; [+5]
      147 LOADK                            R11 K44 ["ToolboxManager"]
      148 NAMECALL                         R9 R8 K45 ["GetPluginComponent"]
      150 CALL                             R9 2 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R9
      153 JUMPIFNOT                        R6 ; [+6]
      154 JUMPIF                           R2 ; [+5]
      155 JUMPIFNOT                        R9 ; [+4]
      156 GETUPVAL                         R10 3
      157 NAMECALL                         R10 R10 K46 ["clearBrowserFocus"]
      159 CALL                             R10 1 0
      160 DUPTABLE                         R8 K48 [{"hasInserted"}]
      161 SETTABLEKS                       R6 R8 K47 ["hasInserted"]
      163 CLOSEUPVALS                      R4
      164 RETURN                           R8 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["stepName"]
        3 GETTABLEKS                       R4 R0 K1 ["stepMetadata"]
        5 NAMECALL                         R1 R1 K2 ["fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["WebViewManagerContext"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 NEWTABLE                         R2 8 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["SEND_ANALYTICS_EVENT_NAME"]
       12 DUPCLOSURE                       R4 K4 [PROTO_5]
       13 CAPTURE                          UPVAL U1
       14 SETTABLE                         R4 R2 R3
       15 DUPCLOSURE                       R3 K5 [PROTO_7]
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 SETTABLEKS                       R3 R2 K6 ["addToInventory"]
       20 DUPCLOSURE                       R3 K7 [PROTO_9]
       21 CAPTURE                          UPVAL U4
       22 SETTABLEKS                       R3 R2 K8 ["getPluginInfo"]
       24 NEWCLOSURE                       R3 P3
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R3 R2 K9 ["insertAsset"]
       31 DUPCLOSURE                       R3 K10 [PROTO_12]
       32 CAPTURE                          UPVAL U6
       33 SETTABLEKS                       R3 R2 K11 ["tutorialStepCompleted"]
       35 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["hasWebViewEverLoaded"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 NAMECALL                         R1 R1 K2 ["changeToStoreTab"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 LOADK                            R3 K3 ["performSearch"]
       13 DUPTABLE                         R4 K6 [{"assetTypeId", "keyword"}]
       14 GETIMPORT                        R6 K10 [Enum.AssetType.Model]
       16 GETTABLEKS                       R5 R6 K11 ["Value"]
       18 SETTABLEKS                       R5 R4 K4 ["assetTypeId"]
       20 SETTABLEKS                       R0 R4 K5 ["keyword"]
       22 NAMECALL                         R1 R1 K12 ["fire"]
       24 CALL                             R1 3 0
       25 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["hasWebViewEverLoaded"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K2 ["changeToStoreTab"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 1
       12 LOADK                            R2 K3 ["tabChange"]
       13 DUPTABLE                         R3 K5 [{"assetTypeId"}]
       14 GETIMPORT                        R5 K9 [Enum.AssetType.Plugin]
       16 GETTABLEKS                       R4 R5 K10 ["Value"]
       18 SETTABLEKS                       R4 R3 K4 ["assetTypeId"]
       20 NAMECALL                         R0 R0 K11 ["fire"]
       22 CALL                             R0 3 0
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R0 R1 K12 ["openedFromPluginManagement"]
       26 CALL                             R0 0 0
       27 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["hasWebViewEverLoaded"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 NAMECALL                         R1 R1 K2 ["changeToStoreTab"]
       10 CALL                             R1 1 0
       11 GETIMPORT                        R3 K5 [Enum.AssetType]
       13 GETTABLE                         R2 R3 R0
       14 GETTABLEKS                       R1 R2 K6 ["Value"]
       16 GETUPVAL                         R2 1
       17 LOADK                            R4 K7 ["tabChange"]
       18 DUPTABLE                         R5 K9 [{"assetTypeId"}]
       19 SETTABLEKS                       R1 R5 K8 ["assetTypeId"]
       21 NAMECALL                         R2 R2 K10 ["fire"]
       23 CALL                             R2 3 0
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R2 R3 K11 ["openedExternallyByAssetType"]
       27 MOVE                             R3 R0
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_17:
        0 NAMECALL                         R1 R0 K0 ["disconnectExternalSignals"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R1 R2 K2 ["PluginLoaderContext"]
        7 JUMPIFNOT                        R1 ; [+75]
        8 GETTABLEKS                       R2 R0 K1 ["props"]
       10 GETTABLEKS                       R1 R2 K3 ["WebViewManagerContext"]
       12 NAMECALL                         R1 R1 K4 ["get"]
       14 CALL                             R1 1 1
       15 GETTABLEKS                       R2 R0 K5 ["_externalConnections"]
       17 GETTABLEKS                       R6 R0 K1 ["props"]
       19 GETTABLEKS                       R5 R6 K2 ["PluginLoaderContext"]
       21 GETTABLEKS                       R4 R5 K6 ["signals"]
       23 LOADK                            R6 K7 ["MemStorageService."]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K8 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
       27 CONCAT                           R5 R6 R7
       28 GETTABLE                         R3 R4 R5
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 NAMECALL                         R3 R3 K9 ["Connect"]
       34 CALL                             R3 2 1
       35 SETTABLEKS                       R3 R2 K10 ["performSearch"]
       37 GETTABLEKS                       R2 R0 K5 ["_externalConnections"]
       39 GETTABLEKS                       R6 R0 K1 ["props"]
       41 GETTABLEKS                       R5 R6 K2 ["PluginLoaderContext"]
       43 GETTABLEKS                       R4 R5 K6 ["signals"]
       45 LOADK                            R6 K7 ["MemStorageService."]
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R7 R8 K11 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
       49 CONCAT                           R5 R6 R7
       50 GETTABLE                         R3 R4 R5
       51 NEWCLOSURE                       R5 P1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U1
       55 NAMECALL                         R3 R3 K9 ["Connect"]
       57 CALL                             R3 2 1
       58 SETTABLEKS                       R3 R2 K12 ["showPlugins"]
       60 GETTABLEKS                       R2 R0 K5 ["_externalConnections"]
       62 GETTABLEKS                       R6 R0 K1 ["props"]
       64 GETTABLEKS                       R5 R6 K2 ["PluginLoaderContext"]
       66 GETTABLEKS                       R4 R5 K6 ["signals"]
       68 LOADK                            R6 K7 ["MemStorageService."]
       69 GETUPVAL                         R8 2
       70 GETTABLEKS                       R7 R8 K13 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
       72 CONCAT                           R5 R6 R7
       73 GETTABLE                         R3 R4 R5
       74 NEWCLOSURE                       R5 P2
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R1
       77 CAPTURE                          UPVAL U1
       78 NAMECALL                         R3 R3 K9 ["Connect"]
       80 CALL                             R3 2 1
       81 SETTABLEKS                       R3 R2 K14 ["tabChange"]
       83 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["_externalConnections"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 JUMPIFNOT                        R5 ; [+3]
        7 NAMECALL                         R6 R5 K3 ["Disconnect"]
        9 CALL                             R6 1 0
       10 FORGLOOP                         R1 2 ; [-5]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K2 ["_externalConnections"]
       16 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["categoryName"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["getTabKeyForCategoryName"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K3 ["MARKETPLACE_KEY"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+10]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K4 ["setEventTarget"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R6 R7 K5 ["ANALYTICS_TARGET"]
       20 GETTABLEKS                       R5 R6 K6 ["WebView"]
       22 CALL                             R4 1 0
       23 NAMECALL                         R4 R0 K7 ["setUpExternalSignalConnections"]
       25 CALL                             R4 1 0
       26 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["tutorialAssetIds"]
        4 GETTABLEKS                       R3 R1 K1 ["tutorialAssetIds"]
        6 JUMPIFEQ                         R2 R3 ; [+76]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R2 R3 K2 ["hasWebViewEverLoaded"]
       12 JUMPIFNOT                        R2 ; [+70]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K3 ["GetService"]
       16 LOADK                            R3 K4 ["TutorialService"]
       17 CALL                             R2 1 1
       18 NAMECALL                         R2 R2 K5 ["ShouldLaunchTutorial"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R0 K0 ["props"]
       23 GETTABLEKS                       R3 R4 K6 ["WebViewManagerContext"]
       25 NAMECALL                         R3 R3 K7 ["get"]
       27 CALL                             R3 1 1
       28 JUMPIFNOT                        R2 ; [+54]
       29 GETTABLEKS                       R6 R0 K0 ["props"]
       31 GETTABLEKS                       R5 R6 K1 ["tutorialAssetIds"]
       33 JUMPIFNOT                        R2 ; [+13]
       34 FASTCALL1                        TYPE R5 ; [+3]
       35 MOVE                             R7 R5
       36 GETIMPORT                        R6 K9 [type]
       38 CALL                             R6 1 1
       39 JUMPIFNOTEQKS                    R6 K10 ["table"] ; [+7]
       41 LENGTH                           R6 R5
       42 LOADN                            R7 0
       43 JUMPIFNOTLT                      R7 R6 ; [+3]
       45 LOADB                            R4 1
       46 JUMP                             ; [+1]
       47 LOADB                            R4 0
       48 LOADK                            R7 K11 ["updateTutorialConfig"]
       49 DUPTABLE                         R8 K15 [{"assetIds", "isToolboxTutorialActive", "nextTutorialStep"}]
       50 GETTABLEKS                       R11 R0 K0 ["props"]
       52 GETTABLEKS                       R10 R11 K1 ["tutorialAssetIds"]
       54 JUMPIFNOT                        R10 ; [+5]
       55 GETTABLEKS                       R10 R0 K0 ["props"]
       57 GETTABLEKS                       R9 R10 K1 ["tutorialAssetIds"]
       59 JUMP                             ; [+2]
       60 NEWTABLE                         R9 0 0
       62 SETTABLEKS                       R9 R8 K12 ["assetIds"]
       64 SETTABLEKS                       R4 R8 K13 ["isToolboxTutorialActive"]
       66 JUMPIFNOT                        R4 ; [+6]
       67 GETUPVAL                         R11 1
       68 GETTABLEKS                       R10 R11 K16 ["TutorialStep"]
       70 GETTABLEKS                       R9 R10 K17 ["SEARCH"]
       72 JUMP                             ; [+5]
       73 GETUPVAL                         R11 1
       74 GETTABLEKS                       R10 R11 K16 ["TutorialStep"]
       76 GETTABLEKS                       R9 R10 K18 ["NONE"]
       78 SETTABLEKS                       R9 R8 K14 ["nextTutorialStep"]
       80 NAMECALL                         R5 R3 K19 ["fire"]
       82 CALL                             R5 3 0
       83 RETURN                           R0 0

PROTO_21:
        0 NAMECALL                         R1 R0 K0 ["disconnectExternalSignals"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onWebViewInitEvent"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+5]
        4 GETUPVAL                         R3 0
        5 JUMPIFEQKS                       R3 K1 [""] ; [+3]
        7 GETUPVAL                         R2 0
        8 JUMP                             ; [+6]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K2 ["constructCreatorStoreUrl"]
       12 GETIMPORT                        R3 K6 [Enum.AssetType.Model]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R3 R1 K7 ["Plugin"]
       17 JUMPIFNOT                        R3 ; [+5]
       18 LOADK                            R6 K8 ["ToolboxManager"]
       19 NAMECALL                         R4 R3 K9 ["GetPluginComponent"]
       21 CALL                             R4 2 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R5 R6 K10 ["createElement"]
       27 GETUPVAL                         R6 3
       28 DUPTABLE                         R7 K27 [{"Plugin", "PluginManagerComponent", "Url", "initAutoRetryMaxAttempts", "manualRetryAttempt", "hasValidSize", "hasWebViewEverLoaded", "HandleFailedInitCheck", "HandlePassedInitAndLoadingCheck", "webViewLoadingStatus", "webViewError", "eventHandlers", "WebViewManagerContext", "analyticsContext", "offsetHeight", "onWebViewInitEvent", "getPluginMetadata"}]
       29 GETTABLEKS                       R8 R1 K7 ["Plugin"]
       31 SETTABLEKS                       R8 R7 K7 ["Plugin"]
       33 SETTABLEKS                       R4 R7 K11 ["PluginManagerComponent"]
       35 SETTABLEKS                       R2 R7 K12 ["Url"]
       37 GETUPVAL                         R8 4
       38 CALL                             R8 0 1
       39 SETTABLEKS                       R8 R7 K13 ["initAutoRetryMaxAttempts"]
       41 GETTABLEKS                       R8 R1 K14 ["manualRetryAttempt"]
       43 SETTABLEKS                       R8 R7 K14 ["manualRetryAttempt"]
       45 GETTABLEKS                       R8 R1 K15 ["hasValidSize"]
       47 SETTABLEKS                       R8 R7 K15 ["hasValidSize"]
       49 GETTABLEKS                       R8 R1 K16 ["hasWebViewEverLoaded"]
       51 SETTABLEKS                       R8 R7 K16 ["hasWebViewEverLoaded"]
       53 GETTABLEKS                       R8 R1 K17 ["HandleFailedInitCheck"]
       55 SETTABLEKS                       R8 R7 K17 ["HandleFailedInitCheck"]
       57 GETTABLEKS                       R8 R1 K18 ["HandlePassedInitAndLoadingCheck"]
       59 SETTABLEKS                       R8 R7 K18 ["HandlePassedInitAndLoadingCheck"]
       61 GETTABLEKS                       R8 R1 K19 ["webViewLoadingStatus"]
       63 SETTABLEKS                       R8 R7 K19 ["webViewLoadingStatus"]
       65 GETTABLEKS                       R8 R1 K20 ["webViewError"]
       67 SETTABLEKS                       R8 R7 K20 ["webViewError"]
       69 GETTABLEKS                       R8 R0 K21 ["eventHandlers"]
       71 SETTABLEKS                       R8 R7 K21 ["eventHandlers"]
       73 GETTABLEKS                       R8 R1 K22 ["WebViewManagerContext"]
       75 NAMECALL                         R8 R8 K28 ["get"]
       77 CALL                             R8 1 1
       78 SETTABLEKS                       R8 R7 K22 ["WebViewManagerContext"]
       80 LOADK                            R8 K29 ["marketplace"]
       81 SETTABLEKS                       R8 R7 K23 ["analyticsContext"]
       83 LOADN                            R8 36
       84 SETTABLEKS                       R8 R7 K24 ["offsetHeight"]
       86 NEWCLOSURE                       R8 P0
       87 CAPTURE                          VAL R0
       88 SETTABLEKS                       R8 R7 K25 ["onWebViewInitEvent"]
       90 GETUPVAL                         R9 5
       91 CALL                             R9 0 1
       92 JUMPIFNOT                        R9 ; [+4]
       93 GETUPVAL                         R9 6
       94 GETTABLEKS                       R8 R9 K30 ["getStudioMetadata"]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R8
       98 SETTABLEKS                       R8 R7 K26 ["getPluginMetadata"]
      100 CALL                             R5 2 -1
      101 RETURN                           R5 -1

PROTO_24:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["pageInfo"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R0 K1 ["tutorialLimits"]
       12 JUMPIF                           R3 ; [+2]
       13 NEWTABLE                         R3 0 0
       15 DUPTABLE                         R4 K4 [{"categoryName", "tutorialAssetIds"}]
       16 GETTABLEKS                       R5 R2 K2 ["categoryName"]
       18 JUMPIF                           R5 ; [+5]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K5 ["DEFAULT"]
       22 GETTABLEKS                       R5 R6 K6 ["name"]
       24 SETTABLEKS                       R5 R4 K2 ["categoryName"]
       26 GETTABLEKS                       R5 R3 K7 ["assetIds"]
       28 SETTABLEKS                       R5 R4 K3 ["tutorialAssetIds"]
       30 RETURN                           R4 1

PROTO_25:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

PROTO_26:
        0 DUPTABLE                         R1 K1 [{"getAssetPreviewDataForStartup"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getAssetPreviewDataForStartup"]
        6 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["RoactRodux"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["SharedPluginConstants"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R7 R0 K11 ["Src"]
       31 GETTABLEKS                       R6 R7 K12 ["Util"]
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R9 R6 K13 ["Analytics"]
       37 GETTABLEKS                       R8 R9 K13 ["Analytics"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R10 R6 K13 ["Analytics"]
       44 GETTABLEKS                       R9 R10 K14 ["AssetAnalyticsContextItem"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R6 K15 ["Constants"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K6 [require]
       54 GETTABLEKS                       R11 R6 K16 ["getStartupAssetId"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R6 K17 ["Urls"]
       61 CALL                             R11 1 1
       62 GETTABLEKS                       R13 R0 K11 ["Src"]
       64 GETTABLEKS                       R12 R13 K18 ["Types"]
       66 GETIMPORT                        R13 K6 [require]
       68 GETTABLEKS                       R14 R12 K19 ["Category"]
       70 CALL                             R13 1 1
       71 GETTABLEKS                       R14 R2 K20 ["ContextServices"]
       73 GETTABLEKS                       R15 R14 K21 ["withContext"]
       75 GETIMPORT                        R16 K6 [require]
       77 GETTABLEKS                       R19 R0 K11 ["Src"]
       79 GETTABLEKS                       R18 R19 K20 ["ContextServices"]
       81 GETTABLEKS                       R17 R18 K22 ["NetworkContext"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K6 [require]
       86 GETTABLEKS                       R20 R0 K11 ["Src"]
       88 GETTABLEKS                       R19 R20 K23 ["Components"]
       90 GETTABLEKS                       R18 R19 K24 ["AssetLogicWrapper"]
       92 CALL                             R17 1 1
       93 GETIMPORT                        R18 K6 [require]
       95 GETTABLEKS                       R22 R0 K11 ["Src"]
       97 GETTABLEKS                       R21 R22 K23 ["Components"]
       99 GETTABLEKS                       R20 R21 K25 ["WebView"]
      101 GETTABLEKS                       R19 R20 K26 ["WebViewTypes"]
      103 CALL                             R18 1 1
      104 GETIMPORT                        R19 K6 [require]
      106 GETTABLEKS                       R22 R0 K11 ["Src"]
      108 GETTABLEKS                       R21 R22 K27 ["Thunks"]
      110 GETTABLEKS                       R20 R21 K28 ["GetAssetPreviewDataForStartup"]
      112 CALL                             R19 1 1
      113 GETIMPORT                        R20 K6 [require]
      115 GETTABLEKS                       R23 R0 K11 ["Src"]
      117 GETTABLEKS                       R22 R23 K12 ["Util"]
      119 GETTABLEKS                       R21 R22 K29 ["Services"]
      121 CALL                             R20 1 1
      122 GETTABLEKS                       R21 R20 K30 ["GetService"]
      124 LOADK                            R22 K31 ["MemStorageService"]
      125 CALL                             R21 1 1
      126 GETTABLEKS                       R22 R20 K30 ["GetService"]
      128 LOADK                            R23 K32 ["StudioService"]
      129 CALL                             R22 1 1
      130 GETIMPORT                        R23 K34 [game]
      132 LOADK                            R25 K35 ["HttpService"]
      133 NAMECALL                         R23 R23 K30 ["GetService"]
      135 CALL                             R23 2 1
      136 GETIMPORT                        R24 K6 [require]
      138 GETTABLEKS                       R27 R0 K11 ["Src"]
      140 GETTABLEKS                       R26 R27 K12 ["Util"]
      142 GETTABLEKS                       R25 R26 K36 ["ToolboxCommunication"]
      144 CALL                             R24 1 1
      145 GETIMPORT                        R25 K6 [require]
      147 GETTABLEKS                       R26 R1 K25 ["WebView"]
      149 CALL                             R25 1 1
      150 GETTABLEKS                       R26 R25 K37 ["WebViewConnector"]
      152 GETTABLEKS                       R27 R25 K38 ["WebViewManagerContext"]
      154 GETTABLEKS                       R28 R25 K39 ["EventNames"]
      156 GETTABLEKS                       R29 R3 K40 ["PureComponent"]
      158 LOADK                            R31 K41 ["ToolboxWebViewConnector"]
      159 NAMECALL                         R29 R29 K42 ["extend"]
      161 CALL                             R29 2 1
      162 GETIMPORT                        R31 K6 [require]
      164 GETTABLEKS                       R35 R0 K11 ["Src"]
      166 GETTABLEKS                       R34 R35 K12 ["Util"]
      168 GETTABLEKS                       R33 R34 K43 ["SharedFlags"]
      170 GETTABLEKS                       R32 R33 K44 ["ToolboxWVInitAutoRetry"]
      172 CALL                             R31 1 1
      173 GETTABLEKS                       R30 R31 K45 ["getIntMaxAttempts"]
      175 GETIMPORT                        R31 K34 [game]
      177 LOADK                            R33 K46 ["CreatorStoreWVUrl"]
      178 NAMECALL                         R31 R31 K47 ["GetFastString"]
      180 CALL                             R31 2 1
      181 GETIMPORT                        R32 K6 [require]
      183 GETTABLEKS                       R36 R0 K11 ["Src"]
      185 GETTABLEKS                       R35 R36 K12 ["Util"]
      187 GETTABLEKS                       R34 R35 K43 ["SharedFlags"]
      189 GETTABLEKS                       R33 R34 K48 ["getFFlagToolboxCapabilities"]
      191 CALL                             R32 1 1
      192 GETIMPORT                        R33 K6 [require]
      194 GETTABLEKS                       R37 R0 K11 ["Src"]
      196 GETTABLEKS                       R36 R37 K12 ["Util"]
      198 GETTABLEKS                       R35 R36 K43 ["SharedFlags"]
      200 GETTABLEKS                       R34 R35 K49 ["getFFlagToolboxInitResponseTrackingAttributes"]
      202 CALL                             R33 1 1
      203 DUPCLOSURE                       R34 K50 [PROTO_0]
      204 DUPCLOSURE                       R35 K51 [PROTO_1]
      205 SETTABLEKS                       R35 R29 K52 ["init"]
      207 DUPCLOSURE                       R35 K53 [PROTO_2]
      208 CAPTURE                          VAL R13
      209 SETTABLEKS                       R35 R29 K54 ["changeToStoreTab"]
      211 DUPCLOSURE                       R35 K55 [PROTO_4]
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R18
      214 CAPTURE                          VAL R10
      215 SETTABLEKS                       R35 R29 K56 ["onWebViewInitEvent"]
      217 DUPCLOSURE                       R35 K57 [PROTO_13]
      218 CAPTURE                          VAL R28
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R21
      221 CAPTURE                          VAL R23
      222 CAPTURE                          VAL R22
      223 CAPTURE                          VAL R32
      224 CAPTURE                          VAL R24
      225 SETTABLEKS                       R35 R29 K58 ["createEventHandlers"]
      227 DUPCLOSURE                       R35 K59 [PROTO_17]
      228 CAPTURE                          VAL R5
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R9
      231 SETTABLEKS                       R35 R29 K60 ["setUpExternalSignalConnections"]
      233 DUPCLOSURE                       R35 K61 [PROTO_18]
      234 SETTABLEKS                       R35 R29 K62 ["disconnectExternalSignals"]
      236 DUPCLOSURE                       R35 K63 [PROTO_19]
      237 CAPTURE                          VAL R13
      238 CAPTURE                          VAL R7
      239 CAPTURE                          VAL R9
      240 SETTABLEKS                       R35 R29 K64 ["didMount"]
      242 DUPCLOSURE                       R35 K65 [PROTO_20]
      243 CAPTURE                          VAL R20
      244 CAPTURE                          VAL R18
      245 SETTABLEKS                       R35 R29 K66 ["didUpdate"]
      247 DUPCLOSURE                       R35 K67 [PROTO_21]
      248 SETTABLEKS                       R35 R29 K68 ["willUnmount"]
      250 DUPCLOSURE                       R35 K69 [PROTO_23]
      251 CAPTURE                          VAL R31
      252 CAPTURE                          VAL R11
      253 CAPTURE                          VAL R3
      254 CAPTURE                          VAL R26
      255 CAPTURE                          VAL R30
      256 CAPTURE                          VAL R33
      257 CAPTURE                          VAL R7
      258 SETTABLEKS                       R35 R29 K70 ["render"]
      260 MOVE                             R35 R15
      261 DUPTABLE                         R36 K74 [{"AssetAnalytics", "Localization", "Network", "WebViewManagerContext"}]
      262 SETTABLEKS                       R8 R36 K71 ["AssetAnalytics"]
      264 GETTABLEKS                       R37 R14 K72 ["Localization"]
      266 SETTABLEKS                       R37 R36 K72 ["Localization"]
      268 SETTABLEKS                       R16 R36 K73 ["Network"]
      270 SETTABLEKS                       R27 R36 K38 ["WebViewManagerContext"]
      272 CALL                             R35 1 1
      273 MOVE                             R36 R29
      274 CALL                             R35 1 1
      275 MOVE                             R29 R35
      276 DUPCLOSURE                       R35 K75 [PROTO_24]
      277 CAPTURE                          VAL R13
      278 DUPCLOSURE                       R36 K76 [PROTO_26]
      279 CAPTURE                          VAL R19
      280 GETTABLEKS                       R37 R4 K77 ["connect"]
      282 MOVE                             R38 R35
      283 MOVE                             R39 R36
      284 CALL                             R37 2 1
      285 MOVE                             R38 R29
      286 CALL                             R37 1 1
      287 MOVE                             R29 R37
      288 NEWCLOSURE                       R37 P13
      289 CAPTURE                          VAL R3
      290 CAPTURE                          REF R29
      291 SETGLOBAL                        R37 K78 ["TypedComponent"]
      293 MOVE                             R37 R17
      294 GETGLOBAL                        R38 K78 ["TypedComponent"]
      296 CALL                             R37 1 -1
      297 CLOSEUPVALS                      R29
      298 RETURN                           R37 -1
