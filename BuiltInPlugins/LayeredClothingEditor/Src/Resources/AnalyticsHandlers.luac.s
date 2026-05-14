PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TONUMBER R1 ; [+2]
        2 GETIMPORT                        R0 K1 [tonumber]
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWTABLE                         R1 0 2
        4 LOADK                            R2 K0 ["id://"]
        5 LOADK                            R3 K1 ["[Ii][Dd]="]
        6 SETLIST                          R1 R2 2 [1]
        8 MOVE                             R2 R1
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETIMPORT                        R7 K4 [string.find]
       14 MOVE                             R8 R0
       15 MOVE                             R9 R6
       16 CALL                             R7 2 2
       17 JUMPIFNOT                        R7 ; [+22]
       18 GETIMPORT                        R9 K4 [string.find]
       20 MOVE                             R10 R0
       21 LOADK                            R11 K5 ["%d+"]
       22 ADDK                             R12 R8 K6 [1]
       23 CALL                             R9 3 2
       24 MOVE                             R7 R9
       25 MOVE                             R8 R10
       26 JUMPIFNOT                        R7 ; [+13]
       27 JUMPIFNOT                        R8 ; [+12]
       28 MOVE                             R11 R7
       29 MOVE                             R12 R8
       30 NAMECALL                         R9 R0 K7 ["sub"]
       32 CALL                             R9 3 1
       33 GETIMPORT                        R10 K9 [pcall]
       35 NEWCLOSURE                       R11 P0
       36 CAPTURE                          VAL R9
       37 CALL                             R10 1 2
       38 JUMPIFNOT                        R10 ; [+1]
       39 RETURN                           R11 1
       40 FORGLOOP                         R2 2 ; [-29]
       42 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        8 GETTABLEKS                       R2 R2 K1 ["join"]
       10 DUPTABLE                         R3 K6 [{"studioSid", "clientId", "placeId", "userId"}]
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R4 R4 K7 ["GetSessionId"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K2 ["studioSid"]
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R4 R4 K8 ["GetClientId"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K3 ["clientId"]
       23 GETIMPORT                        R4 K10 [game]
       25 GETTABLEKS                       R4 R4 K11 ["PlaceId"]
       27 SETTABLEKS                       R4 R3 K4 ["placeId"]
       29 GETUPVAL                         R4 2
       30 NAMECALL                         R4 R4 K12 ["GetUserId"]
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K5 ["userId"]
       35 MOVE                             R4 R1
       36 CALL                             R2 2 1
       37 GETUPVAL                         R3 1
       38 LOADK                            R5 K13 ["studio"]
       39 LOADK                            R6 K14 ["accessoryFittingTool"]
       40 MOVE                             R7 R0
       41 MOVE                             R8 R2
       42 NAMECALL                         R3 R3 K15 ["SendEventDeferred"]
       44 CALL                             R3 5 0
       45 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TotalLayers"]
        3 LOADN                            R1 0
        4 JUMPIFLT                         R1 R0 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["TotalAvatars"]
        9 LOADN                            R1 1
       10 JUMPIFNOTLT                      R1 R0 ; [+15]
       12 GETUPVAL                         R0 1
       13 LOADK                            R1 K2 ["previewUsed"]
       14 DUPTABLE                         R2 K5 [{"layerCount", "avatarCount"}]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["TotalLayers"]
       18 SETTABLEKS                       R3 R2 K3 ["layerCount"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K1 ["TotalAvatars"]
       23 SETTABLEKS                       R3 R2 K4 ["avatarCount"]
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CageEdits"]
        3 LOADN                            R1 0
        4 JUMPIFNOTLT                      R1 R0 ; [+18]
        6 GETUPVAL                         R0 1
        7 LOADK                            R1 K1 ["cageEdited"]
        8 DUPTABLE                         R2 K3 [{"count"}]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["CageEdits"]
       12 SETTABLEKS                       R3 R2 K2 ["count"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 2
       16 LOADK                            R2 K4 ["AccessoryFittingToolCageEdited"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K0 ["CageEdits"]
       20 NAMECALL                         R0 R0 K5 ["ReportCounter"]
       22 CALL                             R0 3 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FirstAction"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 LOADK                            R2 K1 ["firstAction"]
        6 DUPTABLE                         R3 K3 [{"actionId"}]
        7 SETTABLEKS                       R0 R3 K2 ["actionId"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["createAccessory"]
        2 DUPTABLE                         R3 K2 [{"count"}]
        3 SETTABLEKS                       R0 R3 K1 ["count"]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K3 ["CreateAccessory"]
        8 MOVE                             R4 R0
        9 NAMECALL                         R1 R1 K4 ["ReportCounter"]
       11 CALL                             R1 3 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["opened"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K1 ["AccessoryFittingToolOpened"]
        5 LOADN                            R3 1
        6 NAMECALL                         R0 R0 K2 ["ReportCounter"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["publishedLC"]
        2 DUPTABLE                         R3 K3 [{"cageEdited", "meshId"}]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K4 ["CageEdits"]
        6 LOADN                            R6 0
        7 JUMPIFNOTLT                      R6 R5 ; [+7]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K5 ["CAGE_EDITING"]
       12 GETTABLEKS                       R4 R4 K6 ["Edited"]
       14 JUMP                             ; [+5]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K5 ["CAGE_EDITING"]
       18 GETTABLEKS                       R4 R4 K7 ["Unedited"]
       20 SETTABLEKS                       R4 R3 K1 ["cageEdited"]
       22 GETUPVAL                         R4 3
       23 MOVE                             R5 R0
       24 CALL                             R4 1 1
       25 SETTABLEKS                       R4 R3 K2 ["meshId"]
       27 CALL                             R1 2 0
       28 GETUPVAL                         R1 4
       29 LOADK                            R3 K8 ["AccessoryFittingToolPublishedLC"]
       30 LOADN                            R4 1
       31 NAMECALL                         R1 R1 K9 ["ReportCounter"]
       33 CALL                             R1 3 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["publishedAcc"]
        2 DUPTABLE                         R3 K2 [{"meshId"}]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 CALL                             R4 1 1
        6 SETTABLEKS                       R4 R3 K1 ["meshId"]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 2
       10 LOADK                            R3 K3 ["AccessoryFittingToolPublishedAcc"]
       11 LOADN                            R4 1
       12 NAMECALL                         R1 R1 K4 ["ReportCounter"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["selectedLC"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K1 ["AccessoryFittingToolSelectedLC"]
        5 LOADN                            R3 1
        6 NAMECALL                         R0 R0 K2 ["ReportCounter"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["selectedAcc"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K1 ["AccessoryFittingToolSelectedAcc"]
        5 LOADN                            R3 1
        6 NAMECALL                         R0 R0 K2 ["ReportCounter"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["centerAvatarToCamera"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K1 ["AccessoryFittingToolCenterAvatarToCamera"]
        5 LOADN                            R3 1
        6 NAMECALL                         R0 R0 K2 ["ReportCounter"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["zoomToAvatar"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K1 ["AccessoryFittingToolZoomToAvatar"]
        5 LOADN                            R3 1
        6 NAMECALL                         R0 R0 K2 ["ReportCounter"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["autoSkinningToggled"]
        2 DUPTABLE                         R3 K2 [{"enabled"}]
        3 SETTABLEKS                       R0 R3 K1 ["enabled"]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K3 ["AccessoryFittingToolAutoSkinningToggled"]
        8 LOADN                            R4 1
        9 NAMECALL                         R1 R1 K4 ["ReportCounter"]
       11 CALL                             R1 3 0
       12 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["falloffAdjusted"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K1 ["AccessoryFittingToolFalloffAdjusted"]
        5 LOADN                            R4 1
        6 NAMECALL                         R1 R1 K2 ["ReportCounter"]
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["Custom"]
        4 JUMP                             ; [+3]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["Default"]
        8 GETTABLE                         R5 R4 R1
        9 JUMPIFNOT                        R5 ; [+24]
       10 GETUPVAL                         R6 1
       11 MOVE                             R7 R5
       12 DUPTABLE                         R8 K4 [{"method", "assetId"}]
       13 JUMPIFNOT                        R3 ; [+6]
       14 GETUPVAL                         R9 2
       15 GETTABLEKS                       R9 R9 K5 ["PREVIEW_SELECT_METHOD"]
       17 GETTABLEKS                       R9 R9 K6 ["Thumbnail"]
       19 JUMP                             ; [+5]
       20 GETUPVAL                         R9 2
       21 GETTABLEKS                       R9 R9 K5 ["PREVIEW_SELECT_METHOD"]
       23 GETTABLEKS                       R9 R9 K7 ["Workspace"]
       25 SETTABLEKS                       R9 R8 K2 ["method"]
       27 JUMPIF                           R0 ; [+2]
       28 MOVE                             R9 R2
       29 JUMP                             ; [+1]
       30 LOADNIL                          R9
       31 SETTABLEKS                       R9 R8 K3 ["assetId"]
       33 CALL                             R6 2 0
       34 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["HasPublished"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["CurrentScreen"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["RigidFlow"]
        9 GETIMPORT                        R5 K5 [os.time]
       11 CALL                             R5 0 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K6 ["StartTime"]
       15 SUB                              R4 R5 R6
       16 FASTCALL1                        MATH_ABS R4 ; [+2]
       17 GETIMPORT                        R3 K9 [math.abs]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R5 1
       21 GETTABLE                         R4 R5 R1
       22 JUMPIFNOT                        R4 ; [+34]
       23 GETUPVAL                         R5 2
       24 MOVE                             R6 R4
       25 DUPTABLE                         R7 K13 [{"flow", "didGenerate", "timeInSeconds"}]
       26 JUMPIFNOT                        R2 ; [+6]
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R8 R8 K14 ["FLOW"]
       30 GETTABLEKS                       R8 R8 K15 ["Rigid"]
       32 JUMP                             ; [+5]
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R8 R8 K14 ["FLOW"]
       36 GETTABLEKS                       R8 R8 K16 ["Layered"]
       38 SETTABLEKS                       R8 R7 K10 ["flow"]
       40 JUMPIFNOT                        R0 ; [+6]
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K17 ["PUBLISHING"]
       44 GETTABLEKS                       R8 R8 K18 ["Published"]
       46 JUMP                             ; [+5]
       47 GETUPVAL                         R8 3
       48 GETTABLEKS                       R8 R8 K17 ["PUBLISHING"]
       50 GETTABLEKS                       R8 R8 K19 ["Unpublished"]
       52 SETTABLEKS                       R8 R7 K11 ["didGenerate"]
       54 SETTABLEKS                       R3 R7 K12 ["timeInSeconds"]
       56 CALL                             R5 2 0
       57 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["TotalLayers"]
        3 LOADN                            R2 0
        4 JUMPIFLT                         R2 R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["TotalAvatars"]
        9 LOADN                            R2 1
       10 JUMPIFNOTLT                      R2 R1 ; [+15]
       12 GETUPVAL                         R1 1
       13 LOADK                            R2 K2 ["previewUsed"]
       14 DUPTABLE                         R3 K5 [{"layerCount", "avatarCount"}]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K0 ["TotalLayers"]
       18 SETTABLEKS                       R4 R3 K3 ["layerCount"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K1 ["TotalAvatars"]
       23 SETTABLEKS                       R4 R3 K4 ["avatarCount"]
       25 CALL                             R1 2 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K6 ["CageEdits"]
       29 LOADN                            R2 0
       30 JUMPIFNOTLT                      R2 R1 ; [+18]
       32 GETUPVAL                         R1 1
       33 LOADK                            R2 K7 ["cageEdited"]
       34 DUPTABLE                         R3 K9 [{"count"}]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K6 ["CageEdits"]
       38 SETTABLEKS                       R4 R3 K8 ["count"]
       40 CALL                             R1 2 0
       41 GETUPVAL                         R1 2
       42 LOADK                            R3 K10 ["AccessoryFittingToolCageEdited"]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K6 ["CageEdits"]
       46 NAMECALL                         R1 R1 K11 ["ReportCounter"]
       48 CALL                             R1 3 0
       49 JUMPIFNOT                        R0 ; [+5]
       50 GETUPVAL                         R1 0
       51 NAMECALL                         R1 R1 K12 ["reset"]
       53 CALL                             R1 1 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R1 0
       56 NAMECALL                         R1 R1 K13 ["resetSession"]
       58 CALL                             R1 1 0
       59 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ANALYTICS_CONSTANTS"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R3 4 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K1 ["SCREENS"]
       12 GETTABLEKS                       R4 R4 K2 ["Select"]
       14 LOADK                            R5 K3 ["exitSelect"]
       15 SETTABLE                         R5 R3 R4
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K1 ["SCREENS"]
       19 GETTABLEKS                       R4 R4 K4 ["AssetType"]
       21 LOADK                            R5 K5 ["exitAssetType"]
       22 SETTABLE                         R5 R3 R4
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K1 ["SCREENS"]
       26 GETTABLEKS                       R4 R4 K6 ["Edit"]
       28 LOADK                            R5 K7 ["exitEdit"]
       29 SETTABLE                         R5 R3 R4
       30 DUPTABLE                         R4 K10 [{"Default", "Custom"}]
       31 NEWTABLE                         R5 4 0
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K11 ["TABS_KEYS"]
       36 GETTABLEKS                       R6 R6 K12 ["Animations"]
       38 LOADK                            R7 K13 ["defaultPreviewAnimSelected"]
       39 SETTABLE                         R7 R5 R6
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R6 R6 K11 ["TABS_KEYS"]
       43 GETTABLEKS                       R6 R6 K14 ["Avatars"]
       45 LOADK                            R7 K15 ["defaultPreviewAvatarSelected"]
       46 SETTABLE                         R7 R5 R6
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R6 R6 K11 ["TABS_KEYS"]
       50 GETTABLEKS                       R6 R6 K16 ["Clothing"]
       52 LOADK                            R7 K17 ["defaultPreviewClothingSelected"]
       53 SETTABLE                         R7 R5 R6
       54 SETTABLEKS                       R5 R4 K8 ["Default"]
       56 NEWTABLE                         R5 4 0
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R6 R6 K11 ["TABS_KEYS"]
       61 GETTABLEKS                       R6 R6 K12 ["Animations"]
       63 LOADK                            R7 K18 ["customPreviewAnimSelected"]
       64 SETTABLE                         R7 R5 R6
       65 GETUPVAL                         R6 3
       66 GETTABLEKS                       R6 R6 K11 ["TABS_KEYS"]
       68 GETTABLEKS                       R6 R6 K14 ["Avatars"]
       70 LOADK                            R7 K19 ["customPreviewAvatarSelected"]
       71 SETTABLE                         R7 R5 R6
       72 GETUPVAL                         R6 3
       73 GETTABLEKS                       R6 R6 K11 ["TABS_KEYS"]
       75 GETTABLEKS                       R6 R6 K16 ["Clothing"]
       77 LOADK                            R7 K20 ["customPreviewClothingSelected"]
       78 SETTABLE                         R7 R5 R6
       79 SETTABLEKS                       R5 R4 K9 ["Custom"]
       81 NEWCLOSURE                       R5 P1
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          VAL R2
       84 NEWCLOSURE                       R6 P2
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R0
       88 DUPTABLE                         R7 K35 [{"FirstAction", "CreateAccessory", "PluginOpened", "LayeredAccessoryPublished", "RigidAccessoryPublished", "LayeredAccessorySelected", "RigidAccessorySelected", "CenterAvatarToCamera", "ZoomToAvatar", "AutoSkinningToggled", "FalloffSliderAdjusted", "PreviewAssetSelected", "ExitScreen", "SessionEnded"}]
       89 NEWCLOSURE                       R8 P3
       90 CAPTURE                          UPVAL U4
       91 CAPTURE                          VAL R2
       92 SETTABLEKS                       R8 R7 K21 ["FirstAction"]
       94 NEWCLOSURE                       R8 P4
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R0
       97 SETTABLEKS                       R8 R7 K22 ["CreateAccessory"]
       99 NEWCLOSURE                       R8 P5
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R8 R7 K23 ["PluginOpened"]
      104 NEWCLOSURE                       R8 P6
      105 CAPTURE                          VAL R2
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          VAL R1
      108 CAPTURE                          UPVAL U5
      109 CAPTURE                          VAL R0
      110 SETTABLEKS                       R8 R7 K24 ["LayeredAccessoryPublished"]
      112 NEWCLOSURE                       R8 P7
      113 CAPTURE                          VAL R2
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R8 R7 K25 ["RigidAccessoryPublished"]
      118 NEWCLOSURE                       R8 P8
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R0
      121 SETTABLEKS                       R8 R7 K26 ["LayeredAccessorySelected"]
      123 NEWCLOSURE                       R8 P9
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R8 R7 K27 ["RigidAccessorySelected"]
      128 NEWCLOSURE                       R8 P10
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R0
      131 SETTABLEKS                       R8 R7 K28 ["CenterAvatarToCamera"]
      133 NEWCLOSURE                       R8 P11
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R0
      136 SETTABLEKS                       R8 R7 K29 ["ZoomToAvatar"]
      138 NEWCLOSURE                       R8 P12
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R0
      141 SETTABLEKS                       R8 R7 K30 ["AutoSkinningToggled"]
      143 NEWCLOSURE                       R8 P13
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R0
      146 SETTABLEKS                       R8 R7 K31 ["FalloffSliderAdjusted"]
      148 NEWCLOSURE                       R8 P14
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R1
      152 SETTABLEKS                       R8 R7 K32 ["PreviewAssetSelected"]
      154 NEWCLOSURE                       R8 P15
      155 CAPTURE                          UPVAL U4
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R1
      159 SETTABLEKS                       R8 R7 K33 ["ExitScreen"]
      161 NEWCLOSURE                       R8 P16
      162 CAPTURE                          UPVAL U4
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R0
      165 SETTABLEKS                       R8 R7 K34 ["SessionEnded"]
      167 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["AvatarToolsShared"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Util"]
       25 GETTABLEKS                       R3 R3 K9 ["AccessoryAndBodyToolShared"]
       27 GETTABLEKS                       R4 R3 K10 ["PreviewConstants"]
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K11 ["Src"]
       33 GETTABLEKS                       R6 R6 K8 ["Util"]
       35 GETTABLEKS                       R6 R6 K12 ["Constants"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R0 K11 ["Src"]
       42 GETTABLEKS                       R7 R7 K8 ["Util"]
       44 GETTABLEKS                       R7 R7 K13 ["AnalyticsGlobals"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K15 [game]
       49 LOADK                            R9 K16 ["StudioService"]
       50 NAMECALL                         R7 R7 K17 ["GetService"]
       52 CALL                             R7 2 1
       53 DUPCLOSURE                       R8 K18 [PROTO_1]
       54 DUPCLOSURE                       R9 K19 [PROTO_19]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R8
       61 RETURN                           R9 1
