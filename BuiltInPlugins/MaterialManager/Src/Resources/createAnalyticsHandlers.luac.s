PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        8 GETTABLEKS                       R2 R3 K1 ["join"]
       10 DUPTABLE                         R3 K5 [{"studioSid", "clientId", "placeId"}]
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R4 R4 K6 ["GetSessionId"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K2 ["studioSid"]
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R4 R4 K7 ["GetClientId"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K3 ["clientId"]
       23 GETIMPORT                        R5 K9 [game]
       25 GETTABLEKS                       R4 R5 K10 ["PlaceId"]
       27 SETTABLEKS                       R4 R3 K4 ["placeId"]
       29 MOVE                             R4 R1
       30 CALL                             R2 2 1
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R3 R4 K11 ["LogAnalytics"]
       34 CALL                             R3 0 1
       35 JUMPIFNOT                        R3 ; [+18]
       36 GETIMPORT                        R3 K13 [print]
       38 LOADK                            R4 K14 ["%s SendEvent eventName=%s args=%s"]
       39 LOADK                            R6 K15 ["MaterialManager"]
       40 FASTCALL1                        TOSTRING R0 ; [+3]
       41 MOVE                             R8 R0
       42 GETIMPORT                        R7 K17 [tostring]
       44 CALL                             R7 1 1
       45 GETUPVAL                         R8 3
       46 MOVE                             R10 R2
       47 NAMECALL                         R8 R8 K18 ["JSONEncode"]
       49 CALL                             R8 2 -1
       50 NAMECALL                         R4 R4 K19 ["format"]
       52 CALL                             R4 -1 -1
       53 CALL                             R3 -1 0
       54 GETUPVAL                         R3 1
       55 LOADK                            R5 K20 ["studio"]
       56 LOADK                            R6 K15 ["MaterialManager"]
       57 MOVE                             R7 R0
       58 MOVE                             R8 R2
       59 NAMECALL                         R3 R3 K21 ["SendEventDeferred"]
       61 CALL                             R3 5 0
       62 RETURN                           R0 0

PROTO_1:
        0 ORK                              R1 R1 K0 [1]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K1 ["LogAnalytics"]
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+18]
        6 GETIMPORT                        R2 K3 [print]
        8 LOADK                            R3 K4 ["%s ReportCounter counterName=%s count=%s"]
        9 LOADK                            R5 K5 ["MaterialManager"]
       10 FASTCALL1                        TOSTRING R0 ; [+3]
       11 MOVE                             R7 R0
       12 GETIMPORT                        R6 K7 [tostring]
       14 CALL                             R6 1 1
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R8 R1
       17 GETIMPORT                        R7 K7 [tostring]
       19 CALL                             R7 1 1
       20 NAMECALL                         R3 R3 K8 ["format"]
       22 CALL                             R3 4 -1
       23 CALL                             R2 -1 0
       24 GETUPVAL                         R2 1
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 NAMECALL                         R2 R2 K9 ["ReportCounter"]
       29 CALL                             R2 3 0
       30 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R1 R3
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["LogAnalytics"]
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+23]
       10 GETIMPORT                        R3 K2 [print]
       12 LOADK                            R4 K3 ["%s SendEvent eventName=%s args=%s throttlingPercent=%s"]
       13 LOADK                            R6 K4 ["MaterialManager"]
       14 FASTCALL1                        TOSTRING R0 ; [+3]
       15 MOVE                             R8 R0
       16 GETIMPORT                        R7 K6 [tostring]
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 1
       20 MOVE                             R10 R1
       21 NAMECALL                         R8 R8 K7 ["JSONEncode"]
       23 CALL                             R8 2 1
       24 FASTCALL1                        TOSTRING R2 ; [+3]
       25 MOVE                             R10 R2
       26 GETIMPORT                        R9 K6 [tostring]
       28 CALL                             R9 1 1
       29 NAMECALL                         R4 R4 K8 ["format"]
       31 CALL                             R4 5 -1
       32 CALL                             R3 -1 0
       33 GETUPVAL                         R3 2
       34 MOVE                             R5 R0
       35 MOVE                             R6 R1
       36 MOVE                             R7 R2
       37 NAMECALL                         R3 R3 K9 ["ReportInfluxSeries"]
       39 CALL                             R3 4 0
       40 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["BaseMaterialForVariant"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["NewMaterialVariantCounter"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["NewMaterialVariantCounter"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["ShowInExplorer"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["ShowInExplorer"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["ClickOnCategoriesOpen"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["ClickOnCategoriesOpen"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["ImportTextureMap"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["ImportTextureMap"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["UploadAssetIdTextureMap"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["UploadAssetIdTextureMap"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["UploadTextureMapSuccess"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["UploadTextureMapSuccess"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["DeleteMaterialVariant"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["DeleteMaterialVariant"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_11:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["ApplyToSelectionButton"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["ApplyToSelectionButton"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["ApplyToSelectionAction"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["ApplyToSelectionAction"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_13:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["SetOverrideToggled"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["SetOverrideToggled"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_14:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["SearchBar"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["SearchBar"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_15:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["ImportTextureMapError"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["ImportTextureMapError"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_16:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["UploadFromURLTextureMapError"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["UploadFromURLTextureMapError"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["UploadTextureMapFromFileError"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["UploadTextureMapFromFileError"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_18:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["LogAnalytics"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETIMPORT                        R1 K3 [print]
        9 LOADK                            R2 K4 ["%s ReportCounter counterName=%s count=%s"]
       10 LOADK                            R4 K5 ["MaterialManager"]
       11 LOADK                            R6 K6 ["UploadTextureMapGeneralError"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K8 [tostring]
       15 CALL                             R5 1 1
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 4 -1
       24 CALL                             R1 -1 0
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K6 ["UploadTextureMapGeneralError"]
       27 MOVE                             R4 R0
       28 NAMECALL                         R1 R1 K10 ["ReportCounter"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_19:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 NEWCLOSURE                       R3 P2
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 DUPTABLE                         R4 K16 [{"newMaterialVariant", "newMaterialVariantCounter", "showInExplorer", "clickOnCategoriesOpen", "importTextureMap", "uploadAssetIdTextureMap", "uploadTextureMapSuccess", "deleteMaterialVariant", "applyToSelectionButton", "applyToSelectionAction", "setOverrideToggled", "searchBar", "importTextureMapError", "uploadFromURLTextureMapError", "uploadTextureMapFromFileError", "uploadTextureMapGeneralError"}]
       13 NEWCLOSURE                       R5 P3
       14 CAPTURE                          VAL R3
       15 SETTABLEKS                       R5 R4 K0 ["newMaterialVariant"]
       17 NEWCLOSURE                       R5 P4
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R5 R4 K1 ["newMaterialVariantCounter"]
       22 NEWCLOSURE                       R5 P5
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R5 R4 K2 ["showInExplorer"]
       27 NEWCLOSURE                       R5 P6
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R5 R4 K3 ["clickOnCategoriesOpen"]
       32 NEWCLOSURE                       R5 P7
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R5 R4 K4 ["importTextureMap"]
       37 NEWCLOSURE                       R5 P8
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R5 R4 K5 ["uploadAssetIdTextureMap"]
       42 NEWCLOSURE                       R5 P9
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R5 R4 K6 ["uploadTextureMapSuccess"]
       47 NEWCLOSURE                       R5 P10
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R5 R4 K7 ["deleteMaterialVariant"]
       52 NEWCLOSURE                       R5 P11
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R5 R4 K8 ["applyToSelectionButton"]
       57 NEWCLOSURE                       R5 P12
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R5 R4 K9 ["applyToSelectionAction"]
       62 NEWCLOSURE                       R5 P13
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R5 R4 K10 ["setOverrideToggled"]
       67 NEWCLOSURE                       R5 P14
       68 CAPTURE                          UPVAL U1
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R5 R4 K11 ["searchBar"]
       72 NEWCLOSURE                       R5 P15
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R5 R4 K12 ["importTextureMapError"]
       77 NEWCLOSURE                       R5 P16
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R5 R4 K13 ["uploadFromURLTextureMapError"]
       82 NEWCLOSURE                       R5 P17
       83 CAPTURE                          UPVAL U1
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R5 R4 K14 ["uploadTextureMapFromFileError"]
       87 NEWCLOSURE                       R5 P18
       88 CAPTURE                          UPVAL U1
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R5 R4 K15 ["uploadTextureMapGeneralError"]
       92 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["DebugFlags"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K11 [game]
       27 LOADK                            R5 K12 ["HttpService"]
       28 NAMECALL                         R3 R3 K13 ["GetService"]
       30 CALL                             R3 2 1
       31 DUPCLOSURE                       R4 K14 [PROTO_19]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 RETURN                           R4 1
