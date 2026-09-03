PROTO_0:
        0 LOADNIL                          R0
        1 NEWTABLE                         R1 0 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["use"]
        6 CALL                             R2 0 1
        7 NAMECALL                         R3 R2 K1 ["getCurrentShownScope"]
        9 CALL                             R3 1 1
       10 NAMECALL                         R4 R2 K2 ["getItemsCache"]
       12 CALL                             R4 1 1
       13 GETTABLEKS                       R7 R3 K3 ["Uid"]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K4 ["AssetPaths"]
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R9 R9 K5 ["AssetInfoField"]
       21 GETTABLEKS                       R9 R9 K6 ["AssetId"]
       23 NAMECALL                         R5 R4 K7 ["getData"]
       25 CALL                             R5 4 1
       26 MOVE                             R0 R5
       27 LOADN                            R7 1
       28 LENGTH                           R5 R0
       29 LOADN                            R6 1
       30 FORNPREP                         R5
       31 GETTABLE                         R8 R0 R7
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R10 R10 K4 ["AssetPaths"]
       35 GETTABLE                         R9 R10 R7
       36 SETTABLE                         R9 R1 R8
       37 FORNLOOP                         R5
       38 RETURN                           R0 2

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R1
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLEKS                       R9 R8 K0 ["value"]
       10 GETTABLEKS                       R9 R9 K1 ["status"]
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R10 R10 K2 ["ApiPermissionStatus"]
       15 GETTABLEKS                       R10 R10 K3 ["HasPermission"]
       17 JUMPIFEQ                         R9 R10 ; [+16]
       19 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       21 MOVE                             R10 R2
       22 MOVE                             R11 R7
       23 GETIMPORT                        R9 K6 [table.insert]
       25 CALL                             R9 2 0
       26 GETUPVAL                         R12 1
       27 GETTABLE                         R11 R12 R7
       28 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       30 MOVE                             R10 R3
       31 GETIMPORT                        R9 K6 [table.insert]
       33 CALL                             R9 2 0
       34 FORGLOOP                         R4 2 ; [-27]
       36 GETUPVAL                         R4 2
       37 MOVE                             R5 R2
       38 CALL                             R4 1 0
       39 GETUPVAL                         R4 3
       40 MOVE                             R5 R3
       41 CALL                             R4 1 0
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeDialog"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["count"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKN                    R2 K1 [0] ; [+94]
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K2 ["closeDialog"]
       10 CALL                             R2 1 0
       11 JUMPIFEQKN                       R0 K1 [0] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 JUMPIF                           R2 ; [+59]
       16 GETUPVAL                         R3 2
       17 CALL                             R3 0 1
       18 JUMPIFNOT                        R3 ; [+33]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K3 ["showSnackbar"]
       22 DUPTABLE                         R4 K6 [{"LocalizableMessage", "Type"}]
       23 DUPTABLE                         R5 K11 [{["Key"] = "QuickShare", ["SubKey"], ["Args"]}]
       24 JUMPIFNOTEQKN                    R0 K12 [1] ; [+3]
       26 LOADK                            R6 K13 ["GrantedAsset"]
       27 JUMP                             ; [+1]
       28 LOADK                            R6 K14 ["GrantedAssets"]
       29 SETTABLEKS                       R6 R5 K9 ["SubKey"]
       31 DUPTABLE                         R6 K15 [{"count"}]
       32 FASTCALL1                        TOSTRING R0 ; [+3]
       33 MOVE                             R8 R0
       34 GETIMPORT                        R7 K17 [tostring]
       36 CALL                             R7 1 1
       37 SETTABLEKS                       R7 R6 K0 ["count"]
       39 SETTABLEKS                       R6 R5 K10 ["Args"]
       41 SETTABLEKS                       R5 R4 K4 ["LocalizableMessage"]
       43 GETUPVAL                         R5 3
       44 GETTABLEKS                       R5 R5 K18 ["SnackbarType"]
       46 GETTABLEKS                       R5 R5 K19 ["Info"]
       48 SETTABLEKS                       R5 R4 K5 ["Type"]
       50 CALL                             R3 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R3 1
       53 DUPTABLE                         R5 K11 [{["Key"] = "QuickShare", ["SubKey"], ["Args"]}]
       54 JUMPIFNOTEQKN                    R0 K12 [1] ; [+3]
       56 LOADK                            R6 K13 ["GrantedAsset"]
       57 JUMP                             ; [+1]
       58 LOADK                            R6 K14 ["GrantedAssets"]
       59 SETTABLEKS                       R6 R5 K9 ["SubKey"]
       61 DUPTABLE                         R6 K15 [{"count"}]
       62 FASTCALL1                        TOSTRING R0 ; [+3]
       63 MOVE                             R8 R0
       64 GETIMPORT                        R7 K17 [tostring]
       66 CALL                             R7 1 1
       67 SETTABLEKS                       R7 R6 K0 ["count"]
       69 SETTABLEKS                       R6 R5 K10 ["Args"]
       71 NAMECALL                         R3 R3 K20 ["showToast"]
       73 CALL                             R3 2 0
       74 RETURN                           R0 0
       75 GETUPVAL                         R3 2
       76 CALL                             R3 0 1
       77 JUMPIFNOT                        R3 ; [+16]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R3 R3 K3 ["showSnackbar"]
       81 DUPTABLE                         R4 K6 [{"LocalizableMessage", "Type"}]
       82 DUPTABLE                         R5 K22 [{["Key"] = "QuickShare", ["SubKey"] = "FailedToGrant"}]
       83 SETTABLEKS                       R5 R4 K4 ["LocalizableMessage"]
       85 GETUPVAL                         R5 3
       86 GETTABLEKS                       R5 R5 K18 ["SnackbarType"]
       88 GETTABLEKS                       R5 R5 K23 ["Error"]
       90 SETTABLEKS                       R5 R4 K5 ["Type"]
       92 CALL                             R3 1 0
       93 RETURN                           R0 0
       94 GETUPVAL                         R3 1
       95 DUPTABLE                         R5 K22 [{["Key"] = "QuickShare", ["SubKey"] = "FailedToGrant"}]
       96 NAMECALL                         R3 R3 K20 ["showToast"]
       98 CALL                             R3 2 0
       99 RETURN                           R0 0
      100 GETUPVAL                         R2 4
      101 MOVE                             R3 R1
      102 CALL                             R2 1 0
      103 GETUPVAL                         R2 0
      104 GETTABLEKS                       R2 R2 K24 ["map"]
      106 MOVE                             R3 R1
      107 NEWCLOSURE                       R4 P0
      108 CAPTURE                          UPVAL U5
      109 CALL                             R2 2 1
      110 GETUPVAL                         R3 6
      111 MOVE                             R4 R2
      112 CALL                             R3 1 0
      113 GETUPVAL                         R3 7
      114 LOADN                            R4 3
      115 CALL                             R3 1 0
      116 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 2
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K1 ["useState"]
       15 GETTABLEKS                       R6 R0 K2 ["TestError"]
       17 JUMPIF                           R6 ; [+2]
       18 LOADN                            R5 1
       19 JUMP                             ; [+1]
       20 LOADN                            R5 2
       21 CALL                             R4 1 2
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 NEWTABLE                         R8 0 1
       31 GETTABLEKS                       R9 R0 K4 ["AssetPaths"]
       33 SETLIST                          R8 R9 1 [1]
       35 CALL                             R6 2 2
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R8 R8 K1 ["useState"]
       39 NEWTABLE                         R9 0 0
       41 CALL                             R8 1 2
       42 GETUPVAL                         R10 3
       43 GETTABLEKS                       R10 R10 K1 ["useState"]
       45 NEWTABLE                         R11 0 0
       47 CALL                             R10 1 2
       48 GETUPVAL                         R12 3
       49 GETTABLEKS                       R12 R12 K5 ["useEffect"]
       51 NEWCLOSURE                       R13 P1
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R11
       59 NEWTABLE                         R14 0 0
       61 CALL                             R12 2 0
       62 NEWCLOSURE                       R12 P2
       63 CAPTURE                          VAL R1
       64 NEWCLOSURE                       R13 P3
       65 CAPTURE                          UPVAL U7
       66 CAPTURE                          VAL R1
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          UPVAL U9
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R5
       73 GETUPVAL                         R14 3
       74 GETTABLEKS                       R14 R14 K6 ["createElement"]
       76 GETUPVAL                         R15 10
       77 GETTABLEKS                       R15 R15 K7 ["View"]
       79 DUPTABLE                         R16 K10 [{["tag"] = "size-full"}]
       80 JUMPIFNOTEQKN                    R4 K11 [1] ; [+30]
       82 GETUPVAL                         R17 3
       83 GETTABLEKS                       R17 R17 K6 ["createElement"]
       85 GETUPVAL                         R18 11
       86 DUPTABLE                         R19 K19 [{"AssetIds", "AssetIdPaths", "ErrorAssetIds", "OnViewErrors", "OnDone", "OnClose", "TestExperiences"}]
       87 MOVE                             R20 R6
       88 JUMPIF                           R20 ; [+2]
       89 NEWTABLE                         R20 0 0
       91 SETTABLEKS                       R20 R19 K12 ["AssetIds"]
       93 SETTABLEKS                       R7 R19 K13 ["AssetIdPaths"]
       95 SETTABLEKS                       R8 R19 K14 ["ErrorAssetIds"]
       97 NEWCLOSURE                       R20 P4
       98 CAPTURE                          VAL R5
       99 SETTABLEKS                       R20 R19 K15 ["OnViewErrors"]
      101 SETTABLEKS                       R13 R19 K16 ["OnDone"]
      103 SETTABLEKS                       R12 R19 K17 ["OnClose"]
      105 GETTABLEKS                       R20 R0 K18 ["TestExperiences"]
      107 SETTABLEKS                       R20 R19 K18 ["TestExperiences"]
      109 CALL                             R17 2 1
      110 JUMP                             ; [+34]
      111 GETUPVAL                         R17 3
      112 GETTABLEKS                       R17 R17 K6 ["createElement"]
      114 GETUPVAL                         R18 12
      115 DUPTABLE                         R19 K24 [{"Title", "Description", "AssetPaths", "CanClose", "OnClose", "OnBack"}]
      116 LOADK                            R22 K25 ["QuickShare"]
      117 LOADK                            R23 K26 ["PermissionErrorTitle"]
      118 NAMECALL                         R20 R2 K27 ["getText"]
      120 CALL                             R20 3 1
      121 SETTABLEKS                       R20 R19 K20 ["Title"]
      123 LOADK                            R22 K25 ["QuickShare"]
      124 LOADK                            R23 K28 ["PermissionErrorDescription"]
      125 NAMECALL                         R20 R2 K27 ["getText"]
      127 CALL                             R20 3 1
      128 SETTABLEKS                       R20 R19 K21 ["Description"]
      130 SETTABLEKS                       R10 R19 K4 ["AssetPaths"]
      132 JUMPIFEQKN                       R4 K29 [3] ; [+2]
      134 LOADB                            R20 0 +1
      135 LOADB                            R20 1
      136 SETTABLEKS                       R20 R19 K22 ["CanClose"]
      138 SETTABLEKS                       R12 R19 K17 ["OnClose"]
      140 NEWCLOSURE                       R20 P5
      141 CAPTURE                          VAL R5
      142 SETTABLEKS                       R20 R19 K23 ["OnBack"]
      144 CALL                             R17 2 1
      145 CALL                             R14 3 -1
      146 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Types"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R0 K13 ["Src"]
       50 GETTABLEKS                       R9 R9 K15 ["Networking"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R0 K13 ["Src"]
       57 GETTABLEKS                       R10 R10 K16 ["Controllers"]
       59 GETTABLEKS                       R10 R10 K17 ["PluginController"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K5 [require]
       64 GETTABLEKS                       R11 R0 K13 ["Src"]
       66 GETTABLEKS                       R11 R11 K16 ["Controllers"]
       68 GETTABLEKS                       R11 R11 K18 ["ItemsController"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K5 [require]
       73 GETIMPORT                        R12 K1 [script]
       75 GETTABLEKS                       R12 R12 K19 ["ShareView"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R13 R0 K13 ["Src"]
       82 GETTABLEKS                       R13 R13 K20 ["Components"]
       84 GETTABLEKS                       R13 R13 K21 ["App"]
       86 GETTABLEKS                       R13 R13 K22 ["Dialogs"]
       88 GETTABLEKS                       R13 R13 K23 ["AssetErrorDialog"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K13 ["Src"]
       95 GETTABLEKS                       R14 R14 K24 ["Util"]
       97 GETTABLEKS                       R14 R14 K25 ["checkPermissionsAsync"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K13 ["Src"]
      104 GETTABLEKS                       R15 R15 K24 ["Util"]
      106 GETTABLEKS                       R15 R15 K26 ["Notifications"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K13 ["Src"]
      113 GETTABLEKS                       R16 R16 K27 ["Flags"]
      115 GETTABLEKS                       R16 R16 K28 ["getFFlagAmrStudioToastsIntegration"]
      117 CALL                             R15 1 1
      118 DUPTABLE                         R16 K35 [{["Main"] = 1, ["Errors"] = 2, ["ErrorsGranting"] = 3}]
      119 DUPCLOSURE                       R17 K36 [PROTO_8]
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R12
      133 RETURN                           R17 1
