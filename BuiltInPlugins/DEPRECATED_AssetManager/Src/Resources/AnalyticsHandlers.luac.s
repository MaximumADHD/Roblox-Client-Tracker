PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 DUPTABLE                         R3 K3 [{"studioSid", "clientId", "placeId"}]
        7 GETUPVAL                         R4 1
        8 NAMECALL                         R4 R4 K4 ["GetSessionId"]
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K0 ["studioSid"]
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R4 R4 K5 ["GetClientId"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R3 K1 ["clientId"]
       19 GETIMPORT                        R5 K7 [game]
       21 GETTABLEKS                       R4 R5 K8 ["PlaceId"]
       23 SETTABLEKS                       R4 R3 K2 ["placeId"]
       25 MOVE                             R4 R1
       26 CALL                             R2 2 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R3 R4 K9 ["LogAnalytics"]
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+18]
       32 GETIMPORT                        R3 K11 [print]
       34 LOADK                            R4 K12 ["%s SendEvent eventName=%s args=%s"]
       35 GETUPVAL                         R6 3
       36 FASTCALL1                        TOSTRING R0 ; [+3]
       37 MOVE                             R8 R0
       38 GETIMPORT                        R7 K14 [tostring]
       40 CALL                             R7 1 1
       41 GETUPVAL                         R8 4
       42 MOVE                             R10 R2
       43 NAMECALL                         R8 R8 K15 ["JSONEncode"]
       45 CALL                             R8 2 -1
       46 NAMECALL                         R4 R4 K16 ["format"]
       48 CALL                             R4 -1 -1
       49 CALL                             R3 -1 0
       50 GETUPVAL                         R3 1
       51 LOADK                            R5 K17 ["studio"]
       52 GETUPVAL                         R6 3
       53 MOVE                             R7 R0
       54 MOVE                             R8 R2
       55 NAMECALL                         R3 R3 K18 ["SendEventDeferred"]
       57 CALL                             R3 5 0
       58 RETURN                           R0 0

PROTO_1:
        0 ORK                              R1 R1 K0 [1]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K1 ["LogAnalytics"]
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+18]
        6 GETIMPORT                        R2 K3 [print]
        8 LOADK                            R3 K4 ["%s ReportCounter counterName=%s count=%s"]
        9 GETUPVAL                         R5 1
       10 FASTCALL1                        TOSTRING R0 ; [+3]
       11 MOVE                             R7 R0
       12 GETIMPORT                        R6 K6 [tostring]
       14 CALL                             R6 1 1
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R8 R1
       17 GETIMPORT                        R7 K6 [tostring]
       19 CALL                             R7 1 1
       20 NAMECALL                         R3 R3 K7 ["format"]
       22 CALL                             R3 4 -1
       23 CALL                             R2 -1 0
       24 GETUPVAL                         R2 2
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 NAMECALL                         R2 R2 K8 ["ReportCounter"]
       29 CALL                             R2 3 0
       30 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+35]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 LOADNIL                          R1
        6 ORK                              R1 R1 K0 [1]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K1 ["LogAnalytics"]
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+18]
       12 GETIMPORT                        R2 K3 [print]
       14 LOADK                            R3 K4 ["%s ReportCounter counterName=%s count=%s"]
       15 GETUPVAL                         R5 3
       16 LOADK                            R7 K5 ["AssetManagerFolderOpen"]
       17 FASTCALL1                        TOSTRING R7 ; [+2]
       18 GETIMPORT                        R6 K7 [tostring]
       20 CALL                             R6 1 1
       21 FASTCALL1                        TOSTRING R1 ; [+3]
       22 MOVE                             R8 R1
       23 GETIMPORT                        R7 K7 [tostring]
       25 CALL                             R7 1 1
       26 NAMECALL                         R3 R3 K8 ["format"]
       28 CALL                             R3 4 -1
       29 CALL                             R2 -1 0
       30 GETUPVAL                         R2 4
       31 LOADK                            R4 K5 ["AssetManagerFolderOpen"]
       32 MOVE                             R5 R1
       33 NAMECALL                         R2 R2 K9 ["ReportCounter"]
       35 CALL                             R2 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R1 4
       38 LOADK                            R3 K10 ["Action"]
       39 LOADK                            R4 K11 ["Asset Manager"]
       40 MOVE                             R5 R0
       41 NAMECALL                         R1 R1 K12 ["TrackEvent"]
       43 CALL                             R1 4 0
       44 GETUPVAL                         R1 4
       45 LOADK                            R3 K5 ["AssetManagerFolderOpen"]
       46 LOADN                            R4 1
       47 NAMECALL                         R1 R1 K9 ["ReportCounter"]
       49 CALL                             R1 3 0
       50 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+35]
        2 GETUPVAL                         R0 1
        3 LOADK                            R1 K0 ["Context Menu Item Click"]
        4 CALL                             R0 1 0
        5 LOADNIL                          R0
        6 ORK                              R0 R0 K1 [1]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K2 ["LogAnalytics"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+18]
       12 GETIMPORT                        R1 K4 [print]
       14 LOADK                            R2 K5 ["%s ReportCounter counterName=%s count=%s"]
       15 GETUPVAL                         R4 3
       16 LOADK                            R6 K6 ["AssetManagerContextMenuItemClick"]
       17 FASTCALL1                        TOSTRING R6 ; [+2]
       18 GETIMPORT                        R5 K8 [tostring]
       20 CALL                             R5 1 1
       21 FASTCALL1                        TOSTRING R0 ; [+3]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K8 [tostring]
       25 CALL                             R6 1 1
       26 NAMECALL                         R2 R2 K9 ["format"]
       28 CALL                             R2 4 -1
       29 CALL                             R1 -1 0
       30 GETUPVAL                         R1 4
       31 LOADK                            R3 K6 ["AssetManagerContextMenuItemClick"]
       32 MOVE                             R4 R0
       33 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       35 CALL                             R1 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R0 4
       38 LOADK                            R2 K11 ["Action"]
       39 LOADK                            R3 K12 ["Asset Manager"]
       40 LOADK                            R4 K0 ["Context Menu Item Click"]
       41 NAMECALL                         R0 R0 K13 ["TrackEvent"]
       43 CALL                             R0 4 0
       44 GETUPVAL                         R0 4
       45 LOADK                            R2 K6 ["AssetManagerContextMenuItemClick"]
       46 LOADN                            R3 1
       47 NAMECALL                         R0 R0 K10 ["ReportCounter"]
       49 CALL                             R0 3 0
       50 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+32]
        2 LOADNIL                          R0
        3 ORK                              R0 R0 K0 [1]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+18]
        9 GETIMPORT                        R1 K3 [print]
       11 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       12 GETUPVAL                         R4 2
       13 LOADK                            R6 K5 ["MassUpdateFromAssetManager"]
       14 FASTCALL1                        TOSTRING R6 ; [+2]
       15 GETIMPORT                        R5 K7 [tostring]
       17 CALL                             R5 1 1
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R7 R0
       20 GETIMPORT                        R6 K7 [tostring]
       22 CALL                             R6 1 1
       23 NAMECALL                         R2 R2 K8 ["format"]
       25 CALL                             R2 4 -1
       26 CALL                             R1 -1 0
       27 GETUPVAL                         R1 3
       28 LOADK                            R3 K5 ["MassUpdateFromAssetManager"]
       29 MOVE                             R4 R0
       30 NAMECALL                         R1 R1 K9 ["ReportCounter"]
       32 CALL                             R1 3 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R0 3
       35 LOADK                            R2 K5 ["MassUpdateFromAssetManager"]
       36 LOADN                            R3 1
       37 NAMECALL                         R0 R0 K9 ["ReportCounter"]
       39 CALL                             R0 3 0
       40 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+35]
        2 GETUPVAL                         R0 1
        3 LOADK                            R1 K0 ["Bulk Import Button Click"]
        4 CALL                             R0 1 0
        5 LOADNIL                          R0
        6 ORK                              R0 R0 K1 [1]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K2 ["LogAnalytics"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+18]
       12 GETIMPORT                        R1 K4 [print]
       14 LOADK                            R2 K5 ["%s ReportCounter counterName=%s count=%s"]
       15 GETUPVAL                         R4 3
       16 LOADK                            R6 K6 ["AssetManagerBulkImportButtonClick"]
       17 FASTCALL1                        TOSTRING R6 ; [+2]
       18 GETIMPORT                        R5 K8 [tostring]
       20 CALL                             R5 1 1
       21 FASTCALL1                        TOSTRING R0 ; [+3]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K8 [tostring]
       25 CALL                             R6 1 1
       26 NAMECALL                         R2 R2 K9 ["format"]
       28 CALL                             R2 4 -1
       29 CALL                             R1 -1 0
       30 GETUPVAL                         R1 4
       31 LOADK                            R3 K6 ["AssetManagerBulkImportButtonClick"]
       32 MOVE                             R4 R0
       33 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       35 CALL                             R1 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R0 4
       38 LOADK                            R2 K11 ["Action"]
       39 LOADK                            R3 K12 ["Asset Manager"]
       40 LOADK                            R4 K0 ["Bulk Import Button Click"]
       41 NAMECALL                         R0 R0 K13 ["TrackEvent"]
       43 CALL                             R0 4 0
       44 GETUPVAL                         R0 4
       45 LOADK                            R2 K6 ["AssetManagerBulkImportButtonClick"]
       46 LOADN                            R3 1
       47 NAMECALL                         R0 R0 K10 ["ReportCounter"]
       49 CALL                             R0 3 0
       50 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+35]
        2 GETUPVAL                         R0 1
        3 LOADK                            R1 K0 ["Search"]
        4 CALL                             R0 1 0
        5 LOADNIL                          R0
        6 ORK                              R0 R0 K1 [1]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K2 ["LogAnalytics"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+18]
       12 GETIMPORT                        R1 K4 [print]
       14 LOADK                            R2 K5 ["%s ReportCounter counterName=%s count=%s"]
       15 GETUPVAL                         R4 3
       16 LOADK                            R6 K6 ["AssetManagerSearch"]
       17 FASTCALL1                        TOSTRING R6 ; [+2]
       18 GETIMPORT                        R5 K8 [tostring]
       20 CALL                             R5 1 1
       21 FASTCALL1                        TOSTRING R0 ; [+3]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K8 [tostring]
       25 CALL                             R6 1 1
       26 NAMECALL                         R2 R2 K9 ["format"]
       28 CALL                             R2 4 -1
       29 CALL                             R1 -1 0
       30 GETUPVAL                         R1 4
       31 LOADK                            R3 K6 ["AssetManagerSearch"]
       32 MOVE                             R4 R0
       33 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       35 CALL                             R1 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R0 4
       38 LOADK                            R2 K11 ["Action"]
       39 LOADK                            R3 K12 ["Asset Manager"]
       40 LOADK                            R4 K0 ["Search"]
       41 NAMECALL                         R0 R0 K13 ["TrackEvent"]
       43 CALL                             R0 4 0
       44 GETUPVAL                         R0 4
       45 LOADK                            R2 K6 ["AssetManagerSearch"]
       46 LOADN                            R3 1
       47 NAMECALL                         R0 R0 K10 ["ReportCounter"]
       49 CALL                             R0 3 0
       50 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+35]
        2 GETUPVAL                         R0 1
        3 LOADK                            R1 K0 ["Insert After Search"]
        4 CALL                             R0 1 0
        5 LOADNIL                          R0
        6 ORK                              R0 R0 K1 [1]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K2 ["LogAnalytics"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+18]
       12 GETIMPORT                        R1 K4 [print]
       14 LOADK                            R2 K5 ["%s ReportCounter counterName=%s count=%s"]
       15 GETUPVAL                         R4 3
       16 LOADK                            R6 K6 ["AssetManagerInsertAfterSearch"]
       17 FASTCALL1                        TOSTRING R6 ; [+2]
       18 GETIMPORT                        R5 K8 [tostring]
       20 CALL                             R5 1 1
       21 FASTCALL1                        TOSTRING R0 ; [+3]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K8 [tostring]
       25 CALL                             R6 1 1
       26 NAMECALL                         R2 R2 K9 ["format"]
       28 CALL                             R2 4 -1
       29 CALL                             R1 -1 0
       30 GETUPVAL                         R1 4
       31 LOADK                            R3 K6 ["AssetManagerInsertAfterSearch"]
       32 MOVE                             R4 R0
       33 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       35 CALL                             R1 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R0 4
       38 LOADK                            R2 K11 ["Action"]
       39 LOADK                            R3 K12 ["Asset Manager"]
       40 LOADK                            R4 K0 ["Insert After Search"]
       41 NAMECALL                         R0 R0 K13 ["TrackEvent"]
       43 CALL                             R0 4 0
       44 GETUPVAL                         R0 4
       45 LOADK                            R2 K6 ["AssetManagerInsertAfterSearch"]
       46 LOADN                            R3 1
       47 NAMECALL                         R0 R0 K10 ["ReportCounter"]
       49 CALL                             R0 3 0
       50 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+35]
        2 GETUPVAL                         R0 1
        3 LOADK                            R1 K0 ["Double Click Insert"]
        4 CALL                             R0 1 0
        5 LOADNIL                          R0
        6 ORK                              R0 R0 K1 [1]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K2 ["LogAnalytics"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+18]
       12 GETIMPORT                        R1 K4 [print]
       14 LOADK                            R2 K5 ["%s ReportCounter counterName=%s count=%s"]
       15 GETUPVAL                         R4 3
       16 LOADK                            R6 K6 ["AssetManagerDoubleClickInsert"]
       17 FASTCALL1                        TOSTRING R6 ; [+2]
       18 GETIMPORT                        R5 K8 [tostring]
       20 CALL                             R5 1 1
       21 FASTCALL1                        TOSTRING R0 ; [+3]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K8 [tostring]
       25 CALL                             R6 1 1
       26 NAMECALL                         R2 R2 K9 ["format"]
       28 CALL                             R2 4 -1
       29 CALL                             R1 -1 0
       30 GETUPVAL                         R1 4
       31 LOADK                            R3 K6 ["AssetManagerDoubleClickInsert"]
       32 MOVE                             R4 R0
       33 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       35 CALL                             R1 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R0 4
       38 LOADK                            R2 K11 ["Action"]
       39 LOADK                            R3 K12 ["Asset Manager"]
       40 LOADK                            R4 K0 ["Double Click Insert"]
       41 NAMECALL                         R0 R0 K13 ["TrackEvent"]
       43 CALL                             R0 4 0
       44 GETUPVAL                         R0 4
       45 LOADK                            R2 K6 ["AssetManagerDoubleClickInsert"]
       46 LOADN                            R3 1
       47 NAMECALL                         R0 R0 K10 ["ReportCounter"]
       49 CALL                             R0 3 0
       50 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+35]
        2 GETUPVAL                         R0 1
        3 LOADK                            R1 K0 ["Drag Insert"]
        4 CALL                             R0 1 0
        5 LOADNIL                          R0
        6 ORK                              R0 R0 K1 [1]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K2 ["LogAnalytics"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+18]
       12 GETIMPORT                        R1 K4 [print]
       14 LOADK                            R2 K5 ["%s ReportCounter counterName=%s count=%s"]
       15 GETUPVAL                         R4 3
       16 LOADK                            R6 K6 ["AssetManagerDragInsert"]
       17 FASTCALL1                        TOSTRING R6 ; [+2]
       18 GETIMPORT                        R5 K8 [tostring]
       20 CALL                             R5 1 1
       21 FASTCALL1                        TOSTRING R0 ; [+3]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K8 [tostring]
       25 CALL                             R6 1 1
       26 NAMECALL                         R2 R2 K9 ["format"]
       28 CALL                             R2 4 -1
       29 CALL                             R1 -1 0
       30 GETUPVAL                         R1 4
       31 LOADK                            R3 K6 ["AssetManagerDragInsert"]
       32 MOVE                             R4 R0
       33 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       35 CALL                             R1 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R0 4
       38 LOADK                            R2 K11 ["Action"]
       39 LOADK                            R3 K12 ["Asset Manager"]
       40 LOADK                            R4 K0 ["Drag Insert"]
       41 NAMECALL                         R0 R0 K13 ["TrackEvent"]
       43 CALL                             R0 4 0
       44 GETUPVAL                         R0 4
       45 LOADK                            R2 K6 ["AssetManagerDragInsert"]
       46 LOADN                            R3 1
       47 NAMECALL                         R0 R0 K10 ["ReportCounter"]
       49 CALL                             R0 3 0
       50 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["CancelDragInsert"]
        2 CALL                             R0 1 0
        3 LOADNIL                          R0
        4 ORK                              R0 R0 K1 [1]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["LogAnalytics"]
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+18]
       10 GETIMPORT                        R1 K4 [print]
       12 LOADK                            R2 K5 ["%s ReportCounter counterName=%s count=%s"]
       13 GETUPVAL                         R4 2
       14 LOADK                            R6 K6 ["AssetManagerCancelDragInsert"]
       15 FASTCALL1                        TOSTRING R6 ; [+2]
       16 GETIMPORT                        R5 K8 [tostring]
       18 CALL                             R5 1 1
       19 FASTCALL1                        TOSTRING R0 ; [+3]
       20 MOVE                             R7 R0
       21 GETIMPORT                        R6 K8 [tostring]
       23 CALL                             R6 1 1
       24 NAMECALL                         R2 R2 K9 ["format"]
       26 CALL                             R2 4 -1
       27 CALL                             R1 -1 0
       28 GETUPVAL                         R1 3
       29 LOADK                            R3 K6 ["AssetManagerCancelDragInsert"]
       30 MOVE                             R4 R0
       31 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       33 CALL                             R1 3 0
       34 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+35]
        2 GETUPVAL                         R0 1
        3 LOADK                            R1 K0 ["Asset Preview Play Sound"]
        4 CALL                             R0 1 0
        5 LOADNIL                          R0
        6 ORK                              R0 R0 K1 [1]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K2 ["LogAnalytics"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+18]
       12 GETIMPORT                        R1 K4 [print]
       14 LOADK                            R2 K5 ["%s ReportCounter counterName=%s count=%s"]
       15 GETUPVAL                         R4 3
       16 LOADK                            R6 K6 ["AssetManagerAssetPreviewPlaySound"]
       17 FASTCALL1                        TOSTRING R6 ; [+2]
       18 GETIMPORT                        R5 K8 [tostring]
       20 CALL                             R5 1 1
       21 FASTCALL1                        TOSTRING R0 ; [+3]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K8 [tostring]
       25 CALL                             R6 1 1
       26 NAMECALL                         R2 R2 K9 ["format"]
       28 CALL                             R2 4 -1
       29 CALL                             R1 -1 0
       30 GETUPVAL                         R1 4
       31 LOADK                            R3 K6 ["AssetManagerAssetPreviewPlaySound"]
       32 MOVE                             R4 R0
       33 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       35 CALL                             R1 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R0 4
       38 LOADK                            R2 K11 ["Action"]
       39 LOADK                            R3 K12 ["Asset Manager"]
       40 LOADK                            R4 K0 ["Asset Preview Play Sound"]
       41 NAMECALL                         R0 R0 K13 ["TrackEvent"]
       43 CALL                             R0 4 0
       44 GETUPVAL                         R0 4
       45 LOADK                            R2 K6 ["AssetManagerAssetPreviewPlaySound"]
       46 LOADN                            R3 1
       47 NAMECALL                         R0 R0 K10 ["ReportCounter"]
       49 CALL                             R0 3 0
       50 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+35]
        2 GETUPVAL                         R0 1
        3 LOADK                            R1 K0 ["Asset Preview Pause Sound"]
        4 CALL                             R0 1 0
        5 LOADNIL                          R0
        6 ORK                              R0 R0 K1 [1]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K2 ["LogAnalytics"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+18]
       12 GETIMPORT                        R1 K4 [print]
       14 LOADK                            R2 K5 ["%s ReportCounter counterName=%s count=%s"]
       15 GETUPVAL                         R4 3
       16 LOADK                            R6 K6 ["AssetManagerAssetPreviewPauseSound"]
       17 FASTCALL1                        TOSTRING R6 ; [+2]
       18 GETIMPORT                        R5 K8 [tostring]
       20 CALL                             R5 1 1
       21 FASTCALL1                        TOSTRING R0 ; [+3]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K8 [tostring]
       25 CALL                             R6 1 1
       26 NAMECALL                         R2 R2 K9 ["format"]
       28 CALL                             R2 4 -1
       29 CALL                             R1 -1 0
       30 GETUPVAL                         R1 4
       31 LOADK                            R3 K6 ["AssetManagerAssetPreviewPauseSound"]
       32 MOVE                             R4 R0
       33 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       35 CALL                             R1 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R0 4
       38 LOADK                            R2 K11 ["Action"]
       39 LOADK                            R3 K12 ["Asset Manager"]
       40 LOADK                            R4 K0 ["Asset Preview Pause Sound"]
       41 NAMECALL                         R0 R0 K13 ["TrackEvent"]
       43 CALL                             R0 4 0
       44 GETUPVAL                         R0 4
       45 LOADK                            R2 K6 ["AssetManagerAssetPreviewPauseSound"]
       46 LOADN                            R3 1
       47 NAMECALL                         R0 R0 K10 ["ReportCounter"]
       49 CALL                             R0 3 0
       50 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+35]
        2 GETUPVAL                         R0 1
        3 LOADK                            R1 K0 ["Asset Preview Play Video"]
        4 CALL                             R0 1 0
        5 LOADNIL                          R0
        6 ORK                              R0 R0 K1 [1]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K2 ["LogAnalytics"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+18]
       12 GETIMPORT                        R1 K4 [print]
       14 LOADK                            R2 K5 ["%s ReportCounter counterName=%s count=%s"]
       15 GETUPVAL                         R4 3
       16 LOADK                            R6 K6 ["AssetManagerAssetPreviewPlayVideo"]
       17 FASTCALL1                        TOSTRING R6 ; [+2]
       18 GETIMPORT                        R5 K8 [tostring]
       20 CALL                             R5 1 1
       21 FASTCALL1                        TOSTRING R0 ; [+3]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K8 [tostring]
       25 CALL                             R6 1 1
       26 NAMECALL                         R2 R2 K9 ["format"]
       28 CALL                             R2 4 -1
       29 CALL                             R1 -1 0
       30 GETUPVAL                         R1 4
       31 LOADK                            R3 K6 ["AssetManagerAssetPreviewPlayVideo"]
       32 MOVE                             R4 R0
       33 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       35 CALL                             R1 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R0 4
       38 LOADK                            R2 K11 ["Action"]
       39 LOADK                            R3 K12 ["Asset Manager"]
       40 LOADK                            R4 K0 ["Asset Preview Play Video"]
       41 NAMECALL                         R0 R0 K13 ["TrackEvent"]
       43 CALL                             R0 4 0
       44 GETUPVAL                         R0 4
       45 LOADK                            R2 K6 ["AssetManagerAssetPreviewPlayVideo"]
       46 LOADN                            R3 1
       47 NAMECALL                         R0 R0 K10 ["ReportCounter"]
       49 CALL                             R0 3 0
       50 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+35]
        2 GETUPVAL                         R0 1
        3 LOADK                            R1 K0 ["Asset Preview Pause Video"]
        4 CALL                             R0 1 0
        5 LOADNIL                          R0
        6 ORK                              R0 R0 K1 [1]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K2 ["LogAnalytics"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+18]
       12 GETIMPORT                        R1 K4 [print]
       14 LOADK                            R2 K5 ["%s ReportCounter counterName=%s count=%s"]
       15 GETUPVAL                         R4 3
       16 LOADK                            R6 K6 ["AssetManagerAssetPreviewPauseVideo"]
       17 FASTCALL1                        TOSTRING R6 ; [+2]
       18 GETIMPORT                        R5 K8 [tostring]
       20 CALL                             R5 1 1
       21 FASTCALL1                        TOSTRING R0 ; [+3]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K8 [tostring]
       25 CALL                             R6 1 1
       26 NAMECALL                         R2 R2 K9 ["format"]
       28 CALL                             R2 4 -1
       29 CALL                             R1 -1 0
       30 GETUPVAL                         R1 4
       31 LOADK                            R3 K6 ["AssetManagerAssetPreviewPauseVideo"]
       32 MOVE                             R4 R0
       33 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       35 CALL                             R1 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R0 4
       38 LOADK                            R2 K11 ["Action"]
       39 LOADK                            R3 K12 ["Asset Manager"]
       40 LOADK                            R4 K0 ["Asset Preview Pause Video"]
       41 NAMECALL                         R0 R0 K13 ["TrackEvent"]
       43 CALL                             R0 4 0
       44 GETUPVAL                         R0 4
       45 LOADK                            R2 K6 ["AssetManagerAssetPreviewPauseVideo"]
       46 LOADN                            R3 1
       47 NAMECALL                         R0 R0 K10 ["ReportCounter"]
       49 CALL                             R0 3 0
       50 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 DUPTABLE                         R3 K13 [{"openFolder", "clickContextMenuItem", "massUpdateFromAssetManager", "clickBulkImportButton", "search", "insertAfterSearch", "doubleClickInsert", "dragInsert", "cancelDragInsert", "AssetPreviewPlaySound", "AssetPreviewPauseSound", "AssetPreviewPlayVideo", "AssetPreviewPauseVideo"}]
       11 NEWCLOSURE                       R4 P2
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R4 R3 K0 ["openFolder"]
       19 NEWCLOSURE                       R4 P3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R4 R3 K1 ["clickContextMenuItem"]
       27 NEWCLOSURE                       R4 P4
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R4 R3 K2 ["massUpdateFromAssetManager"]
       34 NEWCLOSURE                       R4 P5
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R4 R3 K3 ["clickBulkImportButton"]
       42 NEWCLOSURE                       R4 P6
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R4 R3 K4 ["search"]
       50 NEWCLOSURE                       R4 P7
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R4 R3 K5 ["insertAfterSearch"]
       58 NEWCLOSURE                       R4 P8
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          VAL R1
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R4 R3 K6 ["doubleClickInsert"]
       66 NEWCLOSURE                       R4 P9
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R4 R3 K7 ["dragInsert"]
       74 NEWCLOSURE                       R4 P10
       75 CAPTURE                          VAL R1
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          UPVAL U2
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R4 R3 K8 ["cancelDragInsert"]
       81 NEWCLOSURE                       R4 P11
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          VAL R1
       84 CAPTURE                          UPVAL U1
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R4 R3 K9 ["AssetPreviewPlaySound"]
       89 NEWCLOSURE                       R4 P12
       90 CAPTURE                          UPVAL U4
       91 CAPTURE                          VAL R1
       92 CAPTURE                          UPVAL U1
       93 CAPTURE                          UPVAL U2
       94 CAPTURE                          VAL R0
       95 SETTABLEKS                       R4 R3 K10 ["AssetPreviewPauseSound"]
       97 NEWCLOSURE                       R4 P13
       98 CAPTURE                          UPVAL U4
       99 CAPTURE                          VAL R1
      100 CAPTURE                          UPVAL U1
      101 CAPTURE                          UPVAL U2
      102 CAPTURE                          VAL R0
      103 SETTABLEKS                       R4 R3 K11 ["AssetPreviewPlayVideo"]
      105 NEWCLOSURE                       R4 P14
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          VAL R1
      108 CAPTURE                          UPVAL U1
      109 CAPTURE                          UPVAL U2
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R4 R3 K12 ["AssetPreviewPauseVideo"]
      113 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Dash"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R6 R1 K11 ["Src"]
       26 GETTABLEKS                       R5 R6 K12 ["Util"]
       28 GETTABLEKS                       R4 R5 K13 ["DebugFlags"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R2 K14 ["join"]
       33 GETIMPORT                        R5 K1 [game]
       35 LOADK                            R7 K15 ["AssetManagerUseEventIngest"]
       36 NAMECALL                         R5 R5 K16 ["GetFastFlag"]
       38 CALL                             R5 2 1
       39 JUMPIFNOT                        R5 ; [+2]
       40 LOADK                            R6 K17 ["Asset Manager"]
       41 JUMP                             ; [+1]
       42 LOADK                            R6 K17 ["Asset Manager"]
       43 DUPCLOSURE                       R7 K18 [PROTO_15]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R5
       49 RETURN                           R7 1
