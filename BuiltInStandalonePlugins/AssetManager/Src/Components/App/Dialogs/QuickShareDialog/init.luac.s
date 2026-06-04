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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

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
        5 JUMPIFNOTEQKN                    R2 K1 [0] ; [+88]
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K2 ["closeDialog"]
       10 CALL                             R2 1 0
       11 JUMPIFEQKN                       R0 K1 [0] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 GETUPVAL                         R3 2
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+39]
       18 JUMPIF                           R2 ; [+26]
       19 GETUPVAL                         R3 1
       20 DUPTABLE                         R5 K6 [{"Key", "SubKey", "Args"}]
       21 LOADK                            R6 K7 ["QuickShare"]
       22 SETTABLEKS                       R6 R5 K3 ["Key"]
       24 JUMPIFNOTEQKN                    R0 K8 [1] ; [+3]
       26 LOADK                            R6 K9 ["GrantedAsset"]
       27 JUMP                             ; [+1]
       28 LOADK                            R6 K10 ["GrantedAssets"]
       29 SETTABLEKS                       R6 R5 K4 ["SubKey"]
       31 DUPTABLE                         R6 K11 [{"count"}]
       32 FASTCALL1                        TOSTRING R0 ; [+3]
       33 MOVE                             R8 R0
       34 GETIMPORT                        R7 K13 [tostring]
       36 CALL                             R7 1 1
       37 SETTABLEKS                       R7 R6 K0 ["count"]
       39 SETTABLEKS                       R6 R5 K5 ["Args"]
       41 NAMECALL                         R3 R3 K14 ["showToast"]
       43 CALL                             R3 2 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R3 1
       46 DUPTABLE                         R5 K15 [{"Key", "SubKey"}]
       47 LOADK                            R6 K7 ["QuickShare"]
       48 SETTABLEKS                       R6 R5 K3 ["Key"]
       50 LOADK                            R6 K16 ["FailedToGrant"]
       51 SETTABLEKS                       R6 R5 K4 ["SubKey"]
       53 NAMECALL                         R3 R3 K14 ["showToast"]
       55 CALL                             R3 2 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R3 3
       58 GETUPVAL                         R4 1
       59 GETUPVAL                         R5 4
       60 LOADK                            R7 K7 ["QuickShare"]
       61 LOADK                            R8 K17 ["DialogTitle"]
       62 NAMECALL                         R5 R5 K18 ["getText"]
       64 CALL                             R5 3 1
       65 JUMPIF                           R2 ; [+19]
       66 GETUPVAL                         R6 4
       67 LOADK                            R8 K7 ["QuickShare"]
       68 JUMPIFNOTEQKN                    R0 K8 [1] ; [+3]
       70 LOADK                            R9 K9 ["GrantedAsset"]
       71 JUMP                             ; [+1]
       72 LOADK                            R9 K10 ["GrantedAssets"]
       73 DUPTABLE                         R10 K11 [{"count"}]
       74 FASTCALL1                        TOSTRING R0 ; [+3]
       75 MOVE                             R12 R0
       76 GETIMPORT                        R11 K13 [tostring]
       78 CALL                             R11 1 1
       79 SETTABLEKS                       R11 R10 K0 ["count"]
       81 NAMECALL                         R6 R6 K18 ["getText"]
       83 CALL                             R6 4 1
       84 JUMP                             ; [+6]
       85 GETUPVAL                         R6 4
       86 LOADK                            R8 K7 ["QuickShare"]
       87 LOADK                            R9 K16 ["FailedToGrant"]
       88 NAMECALL                         R6 R6 K18 ["getText"]
       90 CALL                             R6 3 1
       91 MOVE                             R7 R2
       92 CALL                             R3 4 0
       93 RETURN                           R0 0
       94 GETUPVAL                         R2 5
       95 MOVE                             R3 R1
       96 CALL                             R2 1 0
       97 GETUPVAL                         R2 0
       98 GETTABLEKS                       R2 R2 K19 ["map"]
      100 MOVE                             R3 R1
      101 NEWCLOSURE                       R4 P0
      102 CAPTURE                          UPVAL U6
      103 CALL                             R2 2 1
      104 GETUPVAL                         R3 7
      105 MOVE                             R4 R2
      106 CALL                             R3 1 0
      107 GETUPVAL                         R3 8
      108 GETUPVAL                         R4 9
      109 GETTABLEKS                       R4 R4 K20 ["ErrorsGranting"]
      111 CALL                             R3 1 0
      112 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Errors"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Main"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

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
       17 JUMPIF                           R6 ; [+4]
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R5 R5 K3 ["Main"]
       21 JUMP                             ; [+3]
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R5 R5 K4 ["Errors"]
       25 CALL                             R4 1 2
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U6
       33 NEWTABLE                         R8 0 1
       35 GETTABLEKS                       R9 R0 K6 ["AssetPaths"]
       37 SETLIST                          R8 R9 1 [1]
       39 CALL                             R6 2 2
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R8 R8 K1 ["useState"]
       43 NEWTABLE                         R9 0 0
       45 CALL                             R8 1 2
       46 GETUPVAL                         R10 3
       47 GETTABLEKS                       R10 R10 K1 ["useState"]
       49 NEWTABLE                         R11 0 0
       51 CALL                             R10 1 2
       52 GETUPVAL                         R12 3
       53 GETTABLEKS                       R12 R12 K7 ["useEffect"]
       55 NEWCLOSURE                       R13 P1
       56 CAPTURE                          UPVAL U7
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R6
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R11
       63 NEWTABLE                         R14 0 0
       65 CALL                             R12 2 0
       66 NEWCLOSURE                       R12 P2
       67 CAPTURE                          VAL R1
       68 NEWCLOSURE                       R13 P3
       69 CAPTURE                          UPVAL U8
       70 CAPTURE                          VAL R1
       71 CAPTURE                          UPVAL U9
       72 CAPTURE                          UPVAL U10
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R5
       78 CAPTURE                          UPVAL U4
       79 GETUPVAL                         R14 3
       80 GETTABLEKS                       R14 R14 K8 ["createElement"]
       82 GETUPVAL                         R15 11
       83 GETTABLEKS                       R15 R15 K9 ["View"]
       85 DUPTABLE                         R16 K11 [{"tag"}]
       86 LOADK                            R17 K12 ["size-full"]
       87 SETTABLEKS                       R17 R16 K10 ["tag"]
       89 GETUPVAL                         R18 4
       90 GETTABLEKS                       R18 R18 K3 ["Main"]
       92 JUMPIFNOTEQ                      R4 R18 ; [+31]
       94 GETUPVAL                         R17 3
       95 GETTABLEKS                       R17 R17 K8 ["createElement"]
       97 GETUPVAL                         R18 12
       98 DUPTABLE                         R19 K20 [{"AssetIds", "AssetIdPaths", "ErrorAssetIds", "OnViewErrors", "OnDone", "OnClose", "TestExperiences"}]
       99 MOVE                             R20 R6
      100 JUMPIF                           R20 ; [+2]
      101 NEWTABLE                         R20 0 0
      103 SETTABLEKS                       R20 R19 K13 ["AssetIds"]
      105 SETTABLEKS                       R7 R19 K14 ["AssetIdPaths"]
      107 SETTABLEKS                       R8 R19 K15 ["ErrorAssetIds"]
      109 NEWCLOSURE                       R20 P4
      110 CAPTURE                          VAL R5
      111 CAPTURE                          UPVAL U4
      112 SETTABLEKS                       R20 R19 K16 ["OnViewErrors"]
      114 SETTABLEKS                       R13 R19 K17 ["OnDone"]
      116 SETTABLEKS                       R12 R19 K18 ["OnClose"]
      118 GETTABLEKS                       R20 R0 K19 ["TestExperiences"]
      120 SETTABLEKS                       R20 R19 K19 ["TestExperiences"]
      122 CALL                             R17 2 1
      123 JUMP                             ; [+38]
      124 GETUPVAL                         R17 3
      125 GETTABLEKS                       R17 R17 K8 ["createElement"]
      127 GETUPVAL                         R18 13
      128 DUPTABLE                         R19 K25 [{"Title", "Description", "AssetPaths", "CanClose", "OnClose", "OnBack"}]
      129 LOADK                            R22 K26 ["QuickShare"]
      130 LOADK                            R23 K27 ["PermissionErrorTitle"]
      131 NAMECALL                         R20 R2 K28 ["getText"]
      133 CALL                             R20 3 1
      134 SETTABLEKS                       R20 R19 K21 ["Title"]
      136 LOADK                            R22 K26 ["QuickShare"]
      137 LOADK                            R23 K29 ["PermissionErrorDescription"]
      138 NAMECALL                         R20 R2 K28 ["getText"]
      140 CALL                             R20 3 1
      141 SETTABLEKS                       R20 R19 K22 ["Description"]
      143 SETTABLEKS                       R10 R19 K6 ["AssetPaths"]
      145 GETUPVAL                         R21 4
      146 GETTABLEKS                       R21 R21 K30 ["ErrorsGranting"]
      148 JUMPIFEQ                         R4 R21 ; [+2]
      150 LOADB                            R20 0 +1
      151 LOADB                            R20 1
      152 SETTABLEKS                       R20 R19 K23 ["CanClose"]
      154 SETTABLEKS                       R12 R19 K18 ["OnClose"]
      156 NEWCLOSURE                       R20 P5
      157 CAPTURE                          VAL R5
      158 CAPTURE                          UPVAL U4
      159 SETTABLEKS                       R20 R19 K24 ["OnBack"]
      161 CALL                             R17 2 1
      162 CALL                             R14 3 -1
      163 RETURN                           R14 -1

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
      106 GETTABLEKS                       R15 R15 K22 ["Dialogs"]
      108 GETTABLEKS                       R15 R15 K26 ["openNotification"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K13 ["Src"]
      115 GETTABLEKS                       R16 R16 K27 ["Flags"]
      117 GETTABLEKS                       R16 R16 K28 ["getFFlagAmrCustomToastNotifications"]
      119 CALL                             R15 1 1
      120 DUPTABLE                         R16 K32 [{"Main", "Errors", "ErrorsGranting"}]
      121 LOADN                            R17 1
      122 SETTABLEKS                       R17 R16 K29 ["Main"]
      124 LOADN                            R17 2
      125 SETTABLEKS                       R17 R16 K30 ["Errors"]
      127 LOADN                            R17 3
      128 SETTABLEKS                       R17 R16 K31 ["ErrorsGranting"]
      130 DUPCLOSURE                       R17 K33 [PROTO_8]
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R12
      145 RETURN                           R17 1
