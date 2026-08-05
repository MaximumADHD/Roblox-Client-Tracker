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
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K1 ["_isMounted"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["_externalConnections"]
       13 NAMECALL                         R1 R0 K3 ["createEventHandlers"]
       15 CALL                             R1 1 1
       16 SETTABLEKS                       R1 R0 K4 ["eventHandlers"]
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTabKeyForCategoryName"]
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K2 ["categoryName"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["MARKETPLACE_KEY"]
       11 JUMPIFEQ                         R1 R2 ; [+9]
       13 GETTABLEKS                       R2 R0 K1 ["props"]
       15 GETTABLEKS                       R2 R2 K4 ["ChangeMarketplaceTab"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K3 ["MARKETPLACE_KEY"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["WebViewManagerContext"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetService"]
        3 LOADK                            R2 K1 ["TutorialService"]
        4 CALL                             R1 1 1
        5 NAMECALL                         R1 R1 K2 ["ShouldLaunchTutorial"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+54]
        9 GETTABLEKS                       R2 R0 K3 ["props"]
       11 GETTABLEKS                       R2 R2 K4 ["WebViewManagerContext"]
       13 NAMECALL                         R2 R2 K5 ["get"]
       15 CALL                             R2 1 1
       16 LOADK                            R5 K6 ["updateTutorialConfig"]
       17 DUPTABLE                         R6 K10 [{"assetIds", "isToolboxTutorialActive", "nextTutorialStep"}]
       18 GETTABLEKS                       R8 R0 K3 ["props"]
       20 GETTABLEKS                       R8 R8 K11 ["tutorialAssetIds"]
       22 JUMPIFNOT                        R8 ; [+5]
       23 GETTABLEKS                       R7 R0 K3 ["props"]
       25 GETTABLEKS                       R7 R7 K11 ["tutorialAssetIds"]
       27 JUMP                             ; [+2]
       28 NEWTABLE                         R7 0 0
       30 SETTABLEKS                       R7 R6 K7 ["assetIds"]
       32 GETTABLEKS                       R8 R0 K3 ["props"]
       34 GETTABLEKS                       R8 R8 K11 ["tutorialAssetIds"]
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
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R7 R7 K15 ["TutorialStep"]
       56 GETTABLEKS                       R7 R7 K16 ["SEARCH"]
       58 SETTABLEKS                       R7 R6 K9 ["nextTutorialStep"]
       60 NAMECALL                         R3 R2 K17 ["fire"]
       62 CALL                             R3 3 0
       63 GETTABLEKS                       R2 R0 K18 ["didOpenItemsDetails"]
       65 JUMPIF                           R2 ; [+44]
       66 GETTABLEKS                       R3 R0 K3 ["props"]
       68 GETTABLEKS                       R3 R3 K19 ["startupAssetId"]
       70 JUMPIFNOT                        R3 ; [+5]
       71 GETTABLEKS                       R2 R0 K3 ["props"]
       73 GETTABLEKS                       R2 R2 K19 ["startupAssetId"]
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
       87 GETTABLEKS                       R4 R0 K3 ["props"]
       89 GETTABLEKS                       R4 R4 K22 ["getAssetPreviewDataForStartup"]
       91 MOVE                             R5 R3
       92 GETTABLEKS                       R6 R0 K3 ["props"]
       94 GETTABLEKS                       R6 R6 K23 ["TryInsert"]
       96 LOADNIL                          R7
       97 GETTABLEKS                       R8 R0 K3 ["props"]
       99 GETTABLEKS                       R8 R8 K24 ["Network"]
      101 GETTABLEKS                       R8 R8 K25 ["networkInterface"]
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
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["logFirstStoreAssetImpression"]
        8 LOADB                            R3 1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+21]
        2 GETUPVAL                         R0 1
        3 DUPTABLE                         R2 K2 [{"assetId", "assetTypeId"}]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["assetId"]
        7 SETTABLEKS                       R3 R2 K0 ["assetId"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["assetTypeId"]
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
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["assetId"]
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
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["data"]
        4 GETTABLEN                        R2 R1 1
        5 GETTABLEKS                       R2 R2 K2 ["versionId"]
        7 SETUPVAL                         R2 0
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K3 ["props"]
       11 GETTABLEKS                       R2 R2 K4 ["TryInsert"]
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
       86 GETIMPORT                        R9 K35 [Enum.AssetType.Plugin]
       88 GETTABLEKS                       R9 R9 K36 ["Value"]
       90 JUMPIFNOTEQ                      R8 R9 ; [+30]
       92 GETUPVAL                         R8 1
       93 GETTABLEKS                       R8 R8 K37 ["props"]
       95 GETTABLEKS                       R8 R8 K38 ["Network"]
       97 GETTABLEKS                       R8 R8 K39 ["networkInterface"]
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
      121 GETUPVAL                         R8 1
      122 GETTABLEKS                       R8 R8 K37 ["props"]
      124 GETTABLEKS                       R8 R8 K43 ["TryInsert"]
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
      141 GETUPVAL                         R8 1
      142 GETTABLEKS                       R8 R8 K37 ["props"]
      144 GETTABLEKS                       R8 R8 K34 ["Plugin"]
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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["WebViewManagerContext"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 NEWTABLE                         R2 8 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["SEND_ANALYTICS_EVENT_NAME"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["hasWebViewEverLoaded"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 NAMECALL                         R1 R1 K2 ["changeToStoreTab"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 LOADK                            R3 K3 ["performSearch"]
       13 DUPTABLE                         R4 K6 [{"assetTypeId", "keyword"}]
       14 GETIMPORT                        R5 K10 [Enum.AssetType.Model]
       16 GETTABLEKS                       R5 R5 K11 ["Value"]
       18 SETTABLEKS                       R5 R4 K4 ["assetTypeId"]
       20 SETTABLEKS                       R0 R4 K5 ["keyword"]
       22 NAMECALL                         R1 R1 K12 ["fire"]
       24 CALL                             R1 3 0
       25 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["hasWebViewEverLoaded"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K2 ["changeToStoreTab"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 1
       12 LOADK                            R2 K3 ["tabChange"]
       13 DUPTABLE                         R3 K5 [{"assetTypeId"}]
       14 GETIMPORT                        R4 K9 [Enum.AssetType.Plugin]
       16 GETTABLEKS                       R4 R4 K10 ["Value"]
       18 SETTABLEKS                       R4 R3 K4 ["assetTypeId"]
       20 NAMECALL                         R0 R0 K11 ["fire"]
       22 CALL                             R0 3 0
       23 GETUPVAL                         R0 2
       24 GETTABLEKS                       R0 R0 K12 ["openedFromPluginManagement"]
       26 CALL                             R0 0 0
       27 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["hasWebViewEverLoaded"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 NAMECALL                         R1 R1 K2 ["changeToStoreTab"]
       10 CALL                             R1 1 0
       11 GETIMPORT                        R2 K5 [Enum.AssetType]
       13 GETTABLE                         R1 R2 R0
       14 GETTABLEKS                       R1 R1 K6 ["Value"]
       16 GETUPVAL                         R2 1
       17 LOADK                            R4 K7 ["tabChange"]
       18 DUPTABLE                         R5 K9 [{"assetTypeId"}]
       19 SETTABLEKS                       R1 R5 K8 ["assetTypeId"]
       21 NAMECALL                         R2 R2 K10 ["fire"]
       23 CALL                             R2 3 0
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R2 R2 K11 ["openedExternallyByAssetType"]
       27 MOVE                             R3 R0
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_17:
        0 NAMECALL                         R1 R0 K0 ["disconnectExternalSignals"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["PluginLoaderContext"]
        7 JUMPIFNOT                        R1 ; [+75]
        8 GETTABLEKS                       R1 R0 K1 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["WebViewManagerContext"]
       12 NAMECALL                         R1 R1 K4 ["get"]
       14 CALL                             R1 1 1
       15 GETTABLEKS                       R2 R0 K5 ["_externalConnections"]
       17 GETTABLEKS                       R4 R0 K1 ["props"]
       19 GETTABLEKS                       R4 R4 K2 ["PluginLoaderContext"]
       21 GETTABLEKS                       R4 R4 K6 ["signals"]
       23 LOADK                            R6 K7 ["MemStorageService."]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K8 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
       27 CONCAT                           R5 R6 R7
       28 GETTABLE                         R3 R4 R5
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 NAMECALL                         R3 R3 K9 ["Connect"]
       34 CALL                             R3 2 1
       35 SETTABLEKS                       R3 R2 K10 ["performSearch"]
       37 GETTABLEKS                       R2 R0 K5 ["_externalConnections"]
       39 GETTABLEKS                       R4 R0 K1 ["props"]
       41 GETTABLEKS                       R4 R4 K2 ["PluginLoaderContext"]
       43 GETTABLEKS                       R4 R4 K6 ["signals"]
       45 LOADK                            R6 K7 ["MemStorageService."]
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K11 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
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
       62 GETTABLEKS                       R4 R0 K1 ["props"]
       64 GETTABLEKS                       R4 R4 K2 ["PluginLoaderContext"]
       66 GETTABLEKS                       R4 R4 K6 ["signals"]
       68 LOADK                            R6 K7 ["MemStorageService."]
       69 GETUPVAL                         R7 2
       70 GETTABLEKS                       R7 R7 K13 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        6 GETTABLEKS                       R1 R0 K1 ["props"]
        8 GETTABLEKS                       R2 R1 K2 ["categoryName"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["getTabKeyForCategoryName"]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K4 ["MARKETPLACE_KEY"]
       18 JUMPIFNOTEQ                      R3 R4 ; [+10]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K5 ["setEventTarget"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K6 ["ANALYTICS_TARGET"]
       26 GETTABLEKS                       R5 R5 K7 ["WebView"]
       28 CALL                             R4 1 0
       29 NAMECALL                         R4 R0 K8 ["setUpExternalSignalConnections"]
       31 CALL                             R4 1 0
       32 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isMounted"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["props"]
        8 GETTABLEKS                       R0 R0 K2 ["WebViewManagerContext"]
       10 NAMECALL                         R0 R0 K3 ["get"]
       12 CALL                             R0 1 1
       13 SETUPVAL                         R0 1
       14 GETUPVAL                         R0 1
       15 LOADK                            R2 K4 ["updateTutorialConfig"]
       16 DUPTABLE                         R3 K8 [{"assetIds", "isToolboxTutorialActive", "nextTutorialStep"}]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K1 ["props"]
       20 GETTABLEKS                       R5 R5 K9 ["tutorialAssetIds"]
       22 JUMPIFNOT                        R5 ; [+6]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K1 ["props"]
       26 GETTABLEKS                       R4 R4 K9 ["tutorialAssetIds"]
       28 JUMP                             ; [+2]
       29 NEWTABLE                         R4 0 0
       31 SETTABLEKS                       R4 R3 K5 ["assetIds"]
       33 GETUPVAL                         R4 2
       34 SETTABLEKS                       R4 R3 K6 ["isToolboxTutorialActive"]
       36 GETUPVAL                         R5 2
       37 JUMPIFNOT                        R5 ; [+6]
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R4 R4 K10 ["TutorialStep"]
       41 GETTABLEKS                       R4 R4 K11 ["SEARCH"]
       43 JUMP                             ; [+5]
       44 GETUPVAL                         R4 3
       45 GETTABLEKS                       R4 R4 K10 ["TutorialStep"]
       47 GETTABLEKS                       R4 R4 K12 ["NONE"]
       49 SETTABLEKS                       R4 R3 K7 ["nextTutorialStep"]
       51 NAMECALL                         R0 R0 K13 ["fire"]
       53 CALL                             R0 3 0
       54 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["tutorialAssetIds"]
        4 GETTABLEKS                       R3 R1 K1 ["tutorialAssetIds"]
        6 JUMPIFEQ                         R2 R3 ; [+94]
        8 GETTABLEKS                       R2 R0 K0 ["props"]
       10 GETTABLEKS                       R2 R2 K2 ["hasWebViewEverLoaded"]
       12 JUMPIFNOT                        R2 ; [+88]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["GetService"]
       16 LOADK                            R3 K4 ["TutorialService"]
       17 CALL                             R2 1 1
       18 NAMECALL                         R2 R2 K5 ["ShouldLaunchTutorial"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R4 1
       22 CALL                             R4 0 1
       23 JUMPIFNOT                        R4 ; [+2]
       24 LOADNIL                          R3
       25 JUMP                             ; [+7]
       26 GETTABLEKS                       R3 R0 K0 ["props"]
       28 GETTABLEKS                       R3 R3 K6 ["WebViewManagerContext"]
       30 NAMECALL                         R3 R3 K7 ["get"]
       32 CALL                             R3 1 1
       33 JUMPIFNOT                        R2 ; [+66]
       34 GETTABLEKS                       R5 R0 K0 ["props"]
       36 GETTABLEKS                       R5 R5 K1 ["tutorialAssetIds"]
       38 JUMPIFNOT                        R2 ; [+13]
       39 FASTCALL1                        TYPE R5 ; [+3]
       40 MOVE                             R7 R5
       41 GETIMPORT                        R6 K9 [type]
       43 CALL                             R6 1 1
       44 JUMPIFNOTEQKS                    R6 K10 ["table"] ; [+7]
       46 LENGTH                           R6 R5
       47 LOADN                            R7 0
       48 JUMPIFNOTLT                      R7 R6 ; [+3]
       50 LOADB                            R4 1
       51 JUMP                             ; [+1]
       52 LOADB                            R4 0
       53 GETUPVAL                         R5 1
       54 CALL                             R5 0 1
       55 JUMPIFNOT                        R5 ; [+9]
       56 GETIMPORT                        R5 K13 [task.spawn]
       58 NEWCLOSURE                       R6 P0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          REF R3
       61 CAPTURE                          VAL R4
       62 CAPTURE                          UPVAL U2
       63 CALL                             R5 1 0
       64 JUMP                             ; [+35]
       65 LOADK                            R7 K14 ["updateTutorialConfig"]
       66 DUPTABLE                         R8 K18 [{"assetIds", "isToolboxTutorialActive", "nextTutorialStep"}]
       67 GETTABLEKS                       R10 R0 K0 ["props"]
       69 GETTABLEKS                       R10 R10 K1 ["tutorialAssetIds"]
       71 JUMPIFNOT                        R10 ; [+5]
       72 GETTABLEKS                       R9 R0 K0 ["props"]
       74 GETTABLEKS                       R9 R9 K1 ["tutorialAssetIds"]
       76 JUMP                             ; [+2]
       77 NEWTABLE                         R9 0 0
       79 SETTABLEKS                       R9 R8 K15 ["assetIds"]
       81 SETTABLEKS                       R4 R8 K16 ["isToolboxTutorialActive"]
       83 JUMPIFNOT                        R4 ; [+6]
       84 GETUPVAL                         R9 2
       85 GETTABLEKS                       R9 R9 K19 ["TutorialStep"]
       87 GETTABLEKS                       R9 R9 K20 ["SEARCH"]
       89 JUMP                             ; [+5]
       90 GETUPVAL                         R9 2
       91 GETTABLEKS                       R9 R9 K19 ["TutorialStep"]
       93 GETTABLEKS                       R9 R9 K21 ["NONE"]
       95 SETTABLEKS                       R9 R8 K17 ["nextTutorialStep"]
       97 NAMECALL                         R5 R3 K22 ["fire"]
       99 CALL                             R5 3 0
      100 CLOSEUPVALS                      R3
      101 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        6 NAMECALL                         R1 R0 K1 ["disconnectExternalSignals"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onWebViewInitEvent"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+5]
        4 GETUPVAL                         R3 0
        5 JUMPIFEQKS                       R3 K1 [""] ; [+3]
        7 GETUPVAL                         R2 0
        8 JUMP                             ; [+6]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["constructCreatorStoreUrl"]
       12 GETIMPORT                        R3 K6 [Enum.AssetType.Model]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R3 R1 K7 ["Plugin"]
       17 JUMPIFNOT                        R3 ; [+5]
       18 LOADK                            R6 K8 ["ToolboxManager"]
       19 NAMECALL                         R4 R3 K9 ["GetPluginComponent"]
       21 CALL                             R4 2 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K10 ["createElement"]
       27 GETUPVAL                         R6 3
       28 DUPTABLE                         R7 K29 [{["Plugin"], ["PluginManagerComponent"], ["Url"], ["initAutoRetryMaxAttempts"], ["manualRetryAttempt"], ["hasValidSize"], ["hasWebViewEverLoaded"], ["HandleFailedInitCheck"], ["HandlePassedInitAndLoadingCheck"], ["webViewLoadingStatus"], ["webViewError"], ["eventHandlers"], ["WebViewManagerContext"], ["analyticsContext"] = "marketplace", ["offsetHeight"] = 36, ["onWebViewInitEvent"], ["getPluginMetadata"]}]
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
       75 NAMECALL                         R8 R8 K30 ["get"]
       77 CALL                             R8 1 1
       78 SETTABLEKS                       R8 R7 K22 ["WebViewManagerContext"]
       80 NEWCLOSURE                       R8 P0
       81 CAPTURE                          VAL R0
       82 SETTABLEKS                       R8 R7 K27 ["onWebViewInitEvent"]
       84 GETUPVAL                         R9 5
       85 CALL                             R9 0 1
       86 JUMPIFNOT                        R9 ; [+4]
       87 GETUPVAL                         R8 6
       88 GETTABLEKS                       R8 R8 K31 ["getStudioMetadata"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R8
       92 SETTABLEKS                       R8 R7 K28 ["getPluginMetadata"]
       94 CALL                             R5 2 -1
       95 RETURN                           R5 -1

PROTO_25:
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
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K5 ["DEFAULT"]
       22 GETTABLEKS                       R5 R5 K6 ["name"]
       24 SETTABLEKS                       R5 R4 K2 ["categoryName"]
       26 GETTABLEKS                       R5 R3 K7 ["assetIds"]
       28 SETTABLEKS                       R5 R4 K3 ["tutorialAssetIds"]
       30 RETURN                           R4 1

PROTO_26:
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

PROTO_27:
        0 DUPTABLE                         R1 K1 [{"getAssetPreviewDataForStartup"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getAssetPreviewDataForStartup"]
        6 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
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
       29 GETTABLEKS                       R6 R0 K11 ["Src"]
       31 GETTABLEKS                       R6 R6 K12 ["Util"]
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R6 K13 ["Analytics"]
       37 GETTABLEKS                       R8 R8 K13 ["Analytics"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R6 K13 ["Analytics"]
       44 GETTABLEKS                       R9 R9 K14 ["AssetAnalyticsContextItem"]
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
       62 GETTABLEKS                       R12 R0 K11 ["Src"]
       64 GETTABLEKS                       R12 R12 K18 ["Types"]
       66 GETIMPORT                        R13 K6 [require]
       68 GETTABLEKS                       R14 R12 K19 ["Category"]
       70 CALL                             R13 1 1
       71 GETTABLEKS                       R14 R2 K20 ["ContextServices"]
       73 GETTABLEKS                       R15 R14 K21 ["withContext"]
       75 GETIMPORT                        R16 K6 [require]
       77 GETTABLEKS                       R17 R0 K11 ["Src"]
       79 GETTABLEKS                       R17 R17 K20 ["ContextServices"]
       81 GETTABLEKS                       R17 R17 K22 ["NetworkContext"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K6 [require]
       86 GETTABLEKS                       R18 R0 K11 ["Src"]
       88 GETTABLEKS                       R18 R18 K23 ["Components"]
       90 GETTABLEKS                       R18 R18 K24 ["AssetLogicWrapper"]
       92 CALL                             R17 1 1
       93 GETIMPORT                        R18 K6 [require]
       95 GETTABLEKS                       R19 R0 K11 ["Src"]
       97 GETTABLEKS                       R19 R19 K23 ["Components"]
       99 GETTABLEKS                       R19 R19 K25 ["WebView"]
      101 GETTABLEKS                       R19 R19 K26 ["WebViewTypes"]
      103 CALL                             R18 1 1
      104 GETIMPORT                        R19 K6 [require]
      106 GETTABLEKS                       R20 R0 K11 ["Src"]
      108 GETTABLEKS                       R20 R20 K27 ["Thunks"]
      110 GETTABLEKS                       R20 R20 K28 ["GetAssetPreviewDataForStartup"]
      112 CALL                             R19 1 1
      113 GETIMPORT                        R20 K6 [require]
      115 GETTABLEKS                       R21 R0 K11 ["Src"]
      117 GETTABLEKS                       R21 R21 K12 ["Util"]
      119 GETTABLEKS                       R21 R21 K29 ["Services"]
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
      138 GETTABLEKS                       R25 R0 K11 ["Src"]
      140 GETTABLEKS                       R25 R25 K12 ["Util"]
      142 GETTABLEKS                       R25 R25 K36 ["ToolboxCommunication"]
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
      162 GETIMPORT                        R30 K6 [require]
      164 GETTABLEKS                       R31 R0 K11 ["Src"]
      166 GETTABLEKS                       R31 R31 K12 ["Util"]
      168 GETTABLEKS                       R31 R31 K43 ["SharedFlags"]
      170 GETTABLEKS                       R31 R31 K44 ["ToolboxWVInitAutoRetry"]
      172 CALL                             R30 1 1
      173 GETTABLEKS                       R30 R30 K45 ["getIntMaxAttempts"]
      175 GETIMPORT                        R31 K34 [game]
      177 LOADK                            R33 K46 ["CreatorStoreWVUrl"]
      178 NAMECALL                         R31 R31 K47 ["GetFastString"]
      180 CALL                             R31 2 1
      181 GETIMPORT                        R32 K6 [require]
      183 GETTABLEKS                       R33 R0 K11 ["Src"]
      185 GETTABLEKS                       R33 R33 K12 ["Util"]
      187 GETTABLEKS                       R33 R33 K43 ["SharedFlags"]
      189 GETTABLEKS                       R33 R33 K48 ["getFFlagToolboxCapabilities"]
      191 CALL                             R32 1 1
      192 GETIMPORT                        R33 K6 [require]
      194 GETTABLEKS                       R34 R0 K11 ["Src"]
      196 GETTABLEKS                       R34 R34 K12 ["Util"]
      198 GETTABLEKS                       R34 R34 K43 ["SharedFlags"]
      200 GETTABLEKS                       R34 R34 K49 ["getFFlagToolboxInitResponseTrackingAttributes"]
      202 CALL                             R33 1 1
      203 GETIMPORT                        R34 K6 [require]
      205 GETTABLEKS                       R35 R0 K11 ["Src"]
      207 GETTABLEKS                       R35 R35 K12 ["Util"]
      209 GETTABLEKS                       R35 R35 K43 ["SharedFlags"]
      211 GETTABLEKS                       R35 R35 K50 ["getFFlagToolboxFixTutorialConfigFireYield"]
      213 CALL                             R34 1 1
      214 DUPCLOSURE                       R35 K51 [PROTO_0]
      215 DUPCLOSURE                       R36 K52 [PROTO_1]
      216 CAPTURE                          VAL R34
      217 SETTABLEKS                       R36 R29 K53 ["init"]
      219 DUPCLOSURE                       R36 K54 [PROTO_2]
      220 CAPTURE                          VAL R13
      221 SETTABLEKS                       R36 R29 K55 ["changeToStoreTab"]
      223 DUPCLOSURE                       R36 K56 [PROTO_4]
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R18
      226 CAPTURE                          VAL R10
      227 SETTABLEKS                       R36 R29 K57 ["onWebViewInitEvent"]
      229 DUPCLOSURE                       R36 K58 [PROTO_13]
      230 CAPTURE                          VAL R28
      231 CAPTURE                          VAL R7
      232 CAPTURE                          VAL R21
      233 CAPTURE                          VAL R23
      234 CAPTURE                          VAL R22
      235 CAPTURE                          VAL R32
      236 CAPTURE                          VAL R24
      237 SETTABLEKS                       R36 R29 K59 ["createEventHandlers"]
      239 DUPCLOSURE                       R36 K60 [PROTO_17]
      240 CAPTURE                          VAL R5
      241 CAPTURE                          VAL R7
      242 CAPTURE                          VAL R9
      243 SETTABLEKS                       R36 R29 K61 ["setUpExternalSignalConnections"]
      245 DUPCLOSURE                       R36 K62 [PROTO_18]
      246 SETTABLEKS                       R36 R29 K63 ["disconnectExternalSignals"]
      248 DUPCLOSURE                       R36 K64 [PROTO_19]
      249 CAPTURE                          VAL R34
      250 CAPTURE                          VAL R13
      251 CAPTURE                          VAL R7
      252 CAPTURE                          VAL R9
      253 SETTABLEKS                       R36 R29 K65 ["didMount"]
      255 DUPCLOSURE                       R36 K66 [PROTO_21]
      256 CAPTURE                          VAL R20
      257 CAPTURE                          VAL R34
      258 CAPTURE                          VAL R18
      259 SETTABLEKS                       R36 R29 K67 ["didUpdate"]
      261 DUPCLOSURE                       R36 K68 [PROTO_22]
      262 CAPTURE                          VAL R34
      263 SETTABLEKS                       R36 R29 K69 ["willUnmount"]
      265 DUPCLOSURE                       R36 K70 [PROTO_24]
      266 CAPTURE                          VAL R31
      267 CAPTURE                          VAL R11
      268 CAPTURE                          VAL R3
      269 CAPTURE                          VAL R26
      270 CAPTURE                          VAL R30
      271 CAPTURE                          VAL R33
      272 CAPTURE                          VAL R7
      273 SETTABLEKS                       R36 R29 K71 ["render"]
      275 MOVE                             R36 R15
      276 DUPTABLE                         R37 K75 [{"AssetAnalytics", "Localization", "Network", "WebViewManagerContext"}]
      277 SETTABLEKS                       R8 R37 K72 ["AssetAnalytics"]
      279 GETTABLEKS                       R38 R14 K73 ["Localization"]
      281 SETTABLEKS                       R38 R37 K73 ["Localization"]
      283 SETTABLEKS                       R16 R37 K74 ["Network"]
      285 SETTABLEKS                       R27 R37 K38 ["WebViewManagerContext"]
      287 CALL                             R36 1 1
      288 MOVE                             R37 R29
      289 CALL                             R36 1 1
      290 MOVE                             R29 R36
      291 DUPCLOSURE                       R36 K76 [PROTO_25]
      292 CAPTURE                          VAL R13
      293 DUPCLOSURE                       R37 K77 [PROTO_27]
      294 CAPTURE                          VAL R19
      295 GETTABLEKS                       R38 R4 K78 ["connect"]
      297 MOVE                             R39 R36
      298 MOVE                             R40 R37
      299 CALL                             R38 2 1
      300 MOVE                             R39 R29
      301 CALL                             R38 1 1
      302 MOVE                             R29 R38
      303 NEWCLOSURE                       R38 P13
      304 CAPTURE                          VAL R3
      305 CAPTURE                          REF R29
      306 SETGLOBAL                        R38 K79 ["TypedComponent"]
      308 MOVE                             R38 R17
      309 GETGLOBAL                        R39 K79 ["TypedComponent"]
      311 CALL                             R38 1 -1
      312 CLOSEUPVALS                      R29
      313 RETURN                           R38 -1
