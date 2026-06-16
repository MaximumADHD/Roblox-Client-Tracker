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
        5 JUMPIFNOTEQKN                    R2 K1 [0] ; [+48]
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K2 ["closeDialog"]
       10 CALL                             R2 1 0
       11 JUMPIFEQKN                       R0 K1 [0] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 JUMPIF                           R2 ; [+26]
       16 GETUPVAL                         R3 1
       17 DUPTABLE                         R5 K6 [{"Key", "SubKey", "Args"}]
       18 LOADK                            R6 K7 ["QuickShare"]
       19 SETTABLEKS                       R6 R5 K3 ["Key"]
       21 JUMPIFNOTEQKN                    R0 K8 [1] ; [+3]
       23 LOADK                            R6 K9 ["GrantedAsset"]
       24 JUMP                             ; [+1]
       25 LOADK                            R6 K10 ["GrantedAssets"]
       26 SETTABLEKS                       R6 R5 K4 ["SubKey"]
       28 DUPTABLE                         R6 K11 [{"count"}]
       29 FASTCALL1                        TOSTRING R0 ; [+3]
       30 MOVE                             R8 R0
       31 GETIMPORT                        R7 K13 [tostring]
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R6 K0 ["count"]
       36 SETTABLEKS                       R6 R5 K5 ["Args"]
       38 NAMECALL                         R3 R3 K14 ["showToast"]
       40 CALL                             R3 2 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R3 1
       43 DUPTABLE                         R5 K15 [{"Key", "SubKey"}]
       44 LOADK                            R6 K7 ["QuickShare"]
       45 SETTABLEKS                       R6 R5 K3 ["Key"]
       47 LOADK                            R6 K16 ["FailedToGrant"]
       48 SETTABLEKS                       R6 R5 K4 ["SubKey"]
       50 NAMECALL                         R3 R3 K14 ["showToast"]
       52 CALL                             R3 2 0
       53 RETURN                           R0 0
       54 GETUPVAL                         R2 2
       55 MOVE                             R3 R1
       56 CALL                             R2 1 0
       57 GETUPVAL                         R2 0
       58 GETTABLEKS                       R2 R2 K17 ["map"]
       60 MOVE                             R3 R1
       61 NEWCLOSURE                       R4 P0
       62 CAPTURE                          UPVAL U3
       63 CALL                             R2 2 1
       64 GETUPVAL                         R3 4
       65 MOVE                             R4 R2
       66 CALL                             R3 1 0
       67 GETUPVAL                         R3 5
       68 GETUPVAL                         R4 6
       69 GETTABLEKS                       R4 R4 K18 ["ErrorsGranting"]
       71 CALL                             R3 1 0
       72 RETURN                           R0 0

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
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R5
       75 CAPTURE                          UPVAL U4
       76 GETUPVAL                         R14 3
       77 GETTABLEKS                       R14 R14 K8 ["createElement"]
       79 GETUPVAL                         R15 9
       80 GETTABLEKS                       R15 R15 K9 ["View"]
       82 DUPTABLE                         R16 K11 [{"tag"}]
       83 LOADK                            R17 K12 ["size-full"]
       84 SETTABLEKS                       R17 R16 K10 ["tag"]
       86 GETUPVAL                         R18 4
       87 GETTABLEKS                       R18 R18 K3 ["Main"]
       89 JUMPIFNOTEQ                      R4 R18 ; [+31]
       91 GETUPVAL                         R17 3
       92 GETTABLEKS                       R17 R17 K8 ["createElement"]
       94 GETUPVAL                         R18 10
       95 DUPTABLE                         R19 K20 [{"AssetIds", "AssetIdPaths", "ErrorAssetIds", "OnViewErrors", "OnDone", "OnClose", "TestExperiences"}]
       96 MOVE                             R20 R6
       97 JUMPIF                           R20 ; [+2]
       98 NEWTABLE                         R20 0 0
      100 SETTABLEKS                       R20 R19 K13 ["AssetIds"]
      102 SETTABLEKS                       R7 R19 K14 ["AssetIdPaths"]
      104 SETTABLEKS                       R8 R19 K15 ["ErrorAssetIds"]
      106 NEWCLOSURE                       R20 P4
      107 CAPTURE                          VAL R5
      108 CAPTURE                          UPVAL U4
      109 SETTABLEKS                       R20 R19 K16 ["OnViewErrors"]
      111 SETTABLEKS                       R13 R19 K17 ["OnDone"]
      113 SETTABLEKS                       R12 R19 K18 ["OnClose"]
      115 GETTABLEKS                       R20 R0 K19 ["TestExperiences"]
      117 SETTABLEKS                       R20 R19 K19 ["TestExperiences"]
      119 CALL                             R17 2 1
      120 JUMP                             ; [+38]
      121 GETUPVAL                         R17 3
      122 GETTABLEKS                       R17 R17 K8 ["createElement"]
      124 GETUPVAL                         R18 11
      125 DUPTABLE                         R19 K25 [{"Title", "Description", "AssetPaths", "CanClose", "OnClose", "OnBack"}]
      126 LOADK                            R22 K26 ["QuickShare"]
      127 LOADK                            R23 K27 ["PermissionErrorTitle"]
      128 NAMECALL                         R20 R2 K28 ["getText"]
      130 CALL                             R20 3 1
      131 SETTABLEKS                       R20 R19 K21 ["Title"]
      133 LOADK                            R22 K26 ["QuickShare"]
      134 LOADK                            R23 K29 ["PermissionErrorDescription"]
      135 NAMECALL                         R20 R2 K28 ["getText"]
      137 CALL                             R20 3 1
      138 SETTABLEKS                       R20 R19 K22 ["Description"]
      140 SETTABLEKS                       R10 R19 K6 ["AssetPaths"]
      142 GETUPVAL                         R21 4
      143 GETTABLEKS                       R21 R21 K30 ["ErrorsGranting"]
      145 JUMPIFEQ                         R4 R21 ; [+2]
      147 LOADB                            R20 0 +1
      148 LOADB                            R20 1
      149 SETTABLEKS                       R20 R19 K23 ["CanClose"]
      151 SETTABLEKS                       R12 R19 K18 ["OnClose"]
      153 NEWCLOSURE                       R20 P5
      154 CAPTURE                          VAL R5
      155 CAPTURE                          UPVAL U4
      156 SETTABLEKS                       R20 R19 K24 ["OnBack"]
      158 CALL                             R17 2 1
      159 CALL                             R14 3 -1
      160 RETURN                           R14 -1

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
      100 DUPTABLE                         R14 K29 [{"Main", "Errors", "ErrorsGranting"}]
      101 LOADN                            R15 1
      102 SETTABLEKS                       R15 R14 K26 ["Main"]
      104 LOADN                            R15 2
      105 SETTABLEKS                       R15 R14 K27 ["Errors"]
      107 LOADN                            R15 3
      108 SETTABLEKS                       R15 R14 K28 ["ErrorsGranting"]
      110 DUPCLOSURE                       R15 K30 [PROTO_8]
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R12
      123 RETURN                           R15 1
