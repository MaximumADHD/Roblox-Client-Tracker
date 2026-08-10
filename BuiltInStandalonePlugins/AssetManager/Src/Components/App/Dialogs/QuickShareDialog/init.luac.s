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
       17 JUMPIFEQ                         R9 R10 ; [+19]
       19 GETUPVAL                         R12 1
       20 GETTABLE                         R11 R12 R7
       21 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       23 MOVE                             R10 R2
       24 GETIMPORT                        R9 K6 [table.insert]
       26 CALL                             R9 2 0
       27 GETUPVAL                         R12 2
       28 GETUPVAL                         R14 1
       29 GETTABLE                         R13 R14 R7
       30 GETTABLE                         R11 R12 R13
       31 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       33 MOVE                             R10 R3
       34 GETIMPORT                        R9 K6 [table.insert]
       36 CALL                             R9 2 0
       37 FORGLOOP                         R4 2 ; [-30]
       39 GETUPVAL                         R4 3
       40 MOVE                             R5 R2
       41 CALL                             R4 1 0
       42 GETUPVAL                         R4 4
       43 MOVE                             R5 R3
       44 CALL                             R4 1 0
       45 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R4 3
        4 CALL                             R4 0 1
        5 JUMPIFNOT                        R4 ; [+6]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 JUMP                             ; [+6]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeDialog"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["count"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKN                    R2 K1 [0] ; [+39]
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K2 ["closeDialog"]
       10 CALL                             R2 1 0
       11 JUMPIFEQKN                       R0 K1 [0] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 JUMPIF                           R2 ; [+23]
       16 GETUPVAL                         R3 1
       17 DUPTABLE                         R5 K7 [{["Key"] = "QuickShare", ["SubKey"], ["Args"]}]
       18 JUMPIFNOTEQKN                    R0 K8 [1] ; [+3]
       20 LOADK                            R6 K9 ["GrantedAsset"]
       21 JUMP                             ; [+1]
       22 LOADK                            R6 K10 ["GrantedAssets"]
       23 SETTABLEKS                       R6 R5 K5 ["SubKey"]
       25 DUPTABLE                         R6 K11 [{"count"}]
       26 FASTCALL1                        TOSTRING R0 ; [+3]
       27 MOVE                             R8 R0
       28 GETIMPORT                        R7 K13 [tostring]
       30 CALL                             R7 1 1
       31 SETTABLEKS                       R7 R6 K0 ["count"]
       33 SETTABLEKS                       R6 R5 K6 ["Args"]
       35 NAMECALL                         R3 R3 K14 ["showToast"]
       37 CALL                             R3 2 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R3 1
       40 DUPTABLE                         R5 K16 [{["Key"] = "QuickShare", ["SubKey"] = "FailedToGrant"}]
       41 NAMECALL                         R3 R3 K14 ["showToast"]
       43 CALL                             R3 2 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R2 2
       46 MOVE                             R3 R1
       47 CALL                             R2 1 0
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K17 ["map"]
       51 MOVE                             R3 R1
       52 NEWCLOSURE                       R4 P0
       53 CAPTURE                          UPVAL U3
       54 CALL                             R2 2 1
       55 GETUPVAL                         R3 4
       56 MOVE                             R4 R2
       57 CALL                             R3 1 0
       58 GETUPVAL                         R3 5
       59 LOADN                            R4 3
       60 CALL                             R3 1 0
       61 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 2
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
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
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R11
       60 NEWTABLE                         R14 0 0
       62 CALL                             R12 2 0
       63 NEWCLOSURE                       R12 P2
       64 CAPTURE                          VAL R1
       65 NEWCLOSURE                       R13 P3
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R5
       72 GETUPVAL                         R14 3
       73 GETTABLEKS                       R14 R14 K6 ["createElement"]
       75 GETUPVAL                         R15 9
       76 GETTABLEKS                       R15 R15 K7 ["View"]
       78 DUPTABLE                         R16 K10 [{["tag"] = "size-full"}]
       79 JUMPIFNOTEQKN                    R4 K11 [1] ; [+30]
       81 GETUPVAL                         R17 3
       82 GETTABLEKS                       R17 R17 K6 ["createElement"]
       84 GETUPVAL                         R18 10
       85 DUPTABLE                         R19 K19 [{"AssetIds", "AssetIdPaths", "ErrorAssetIds", "OnViewErrors", "OnDone", "OnClose", "TestExperiences"}]
       86 MOVE                             R20 R6
       87 JUMPIF                           R20 ; [+2]
       88 NEWTABLE                         R20 0 0
       90 SETTABLEKS                       R20 R19 K12 ["AssetIds"]
       92 SETTABLEKS                       R7 R19 K13 ["AssetIdPaths"]
       94 SETTABLEKS                       R8 R19 K14 ["ErrorAssetIds"]
       96 NEWCLOSURE                       R20 P4
       97 CAPTURE                          VAL R5
       98 SETTABLEKS                       R20 R19 K15 ["OnViewErrors"]
      100 SETTABLEKS                       R13 R19 K16 ["OnDone"]
      102 SETTABLEKS                       R12 R19 K17 ["OnClose"]
      104 GETTABLEKS                       R20 R0 K18 ["TestExperiences"]
      106 SETTABLEKS                       R20 R19 K18 ["TestExperiences"]
      108 CALL                             R17 2 1
      109 JUMP                             ; [+34]
      110 GETUPVAL                         R17 3
      111 GETTABLEKS                       R17 R17 K6 ["createElement"]
      113 GETUPVAL                         R18 11
      114 DUPTABLE                         R19 K24 [{"Title", "Description", "AssetPaths", "CanClose", "OnClose", "OnBack"}]
      115 LOADK                            R22 K25 ["QuickShare"]
      116 LOADK                            R23 K26 ["PermissionErrorTitle"]
      117 NAMECALL                         R20 R2 K27 ["getText"]
      119 CALL                             R20 3 1
      120 SETTABLEKS                       R20 R19 K20 ["Title"]
      122 LOADK                            R22 K25 ["QuickShare"]
      123 LOADK                            R23 K28 ["PermissionErrorDescription"]
      124 NAMECALL                         R20 R2 K27 ["getText"]
      126 CALL                             R20 3 1
      127 SETTABLEKS                       R20 R19 K21 ["Description"]
      129 SETTABLEKS                       R10 R19 K4 ["AssetPaths"]
      131 JUMPIFEQKN                       R4 K29 [3] ; [+2]
      133 LOADB                            R20 0 +1
      134 LOADB                            R20 1
      135 SETTABLEKS                       R20 R19 K22 ["CanClose"]
      137 SETTABLEKS                       R12 R19 K17 ["OnClose"]
      139 NEWCLOSURE                       R20 P5
      140 CAPTURE                          VAL R5
      141 SETTABLEKS                       R20 R19 K23 ["OnBack"]
      143 CALL                             R17 2 1
      144 CALL                             R14 3 -1
      145 RETURN                           R14 -1

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
      104 GETTABLEKS                       R15 R15 K26 ["Flags"]
      106 GETTABLEKS                       R15 R15 K27 ["getFFlagAmrRaiseShareLimits"]
      108 CALL                             R14 1 1
      109 DUPTABLE                         R15 K34 [{["Main"] = 1, ["Errors"] = 2, ["ErrorsGranting"] = 3}]
      110 DUPCLOSURE                       R16 K35 [PROTO_9]
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R12
      123 RETURN                           R16 1
