PROTO_0:
        0 LOADNIL                          R0
        1 NEWTABLE                         R1 0 0
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R2 R2 K0 ["getCurrentScope"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["use"]
       10 CALL                             R3 0 1
       11 NAMECALL                         R4 R3 K2 ["getItemsCache"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R7 R2 K3 ["Uid"]
       16 GETUPVAL                         R9 2
       17 GETTABLEKS                       R8 R9 K4 ["AssetPaths"]
       19 GETUPVAL                         R11 3
       20 GETTABLEKS                       R10 R11 K5 ["AssetInfoField"]
       22 GETTABLEKS                       R9 R10 K6 ["AssetId"]
       24 NAMECALL                         R5 R4 K7 ["getData"]
       26 CALL                             R5 4 1
       27 MOVE                             R0 R5
       28 LOADN                            R7 1
       29 LENGTH                           R5 R0
       30 LOADN                            R6 1
       31 FORNPREP                         R5
       32 GETTABLE                         R8 R0 R7
       33 GETUPVAL                         R11 2
       34 GETTABLEKS                       R10 R11 K4 ["AssetPaths"]
       36 GETTABLE                         R9 R10 R7
       37 SETTABLE                         R9 R1 R8
       38 FORNLOOP                         R5
       39 RETURN                           R0 2

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R1
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLEKS                       R10 R8 K0 ["value"]
       10 GETTABLEKS                       R9 R10 K1 ["status"]
       12 GETUPVAL                         R12 0
       13 GETTABLEKS                       R11 R12 K2 ["ApiPermissionStatus"]
       15 GETTABLEKS                       R10 R11 K3 ["HasPermission"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["count"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKN                    R2 K1 [0] ; [+44]
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 0
        9 JUMPIFEQKN                       R0 K1 [0] ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 GETUPVAL                         R5 4
       16 LOADK                            R7 K2 ["QuickShare"]
       17 LOADK                            R8 K3 ["DialogTitle"]
       18 NAMECALL                         R5 R5 K4 ["getText"]
       20 CALL                             R5 3 1
       21 JUMPIF                           R2 ; [+19]
       22 GETUPVAL                         R6 4
       23 LOADK                            R8 K2 ["QuickShare"]
       24 JUMPIFNOTEQKN                    R0 K5 [1] ; [+3]
       26 LOADK                            R9 K6 ["GrantedAsset"]
       27 JUMP                             ; [+1]
       28 LOADK                            R9 K7 ["GrantedAssets"]
       29 DUPTABLE                         R10 K8 [{"count"}]
       30 FASTCALL1                        TOSTRING R0 ; [+3]
       31 MOVE                             R12 R0
       32 GETIMPORT                        R11 K10 [tostring]
       34 CALL                             R11 1 1
       35 SETTABLEKS                       R11 R10 K0 ["count"]
       37 NAMECALL                         R6 R6 K4 ["getText"]
       39 CALL                             R6 4 1
       40 JUMP                             ; [+6]
       41 GETUPVAL                         R6 4
       42 LOADK                            R8 K2 ["QuickShare"]
       43 LOADK                            R9 K11 ["FailedToGrant"]
       44 NAMECALL                         R6 R6 K4 ["getText"]
       46 CALL                             R6 3 1
       47 MOVE                             R7 R2
       48 CALL                             R3 4 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R2 5
       51 MOVE                             R3 R1
       52 CALL                             R2 1 0
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R2 R3 K12 ["map"]
       56 MOVE                             R3 R1
       57 NEWCLOSURE                       R4 P0
       58 CAPTURE                          UPVAL U6
       59 CALL                             R2 2 1
       60 GETUPVAL                         R3 7
       61 MOVE                             R4 R2
       62 CALL                             R3 1 0
       63 GETUPVAL                         R3 8
       64 GETUPVAL                         R5 9
       65 GETTABLEKS                       R4 R5 K13 ["ErrorsGranting"]
       67 CALL                             R3 1 0
       68 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Errors"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Main"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K1 ["useState"]
       15 GETTABLEKS                       R6 R0 K2 ["TestError"]
       17 JUMPIF                           R6 ; [+4]
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R5 R6 K3 ["Main"]
       21 JUMP                             ; [+3]
       22 GETUPVAL                         R6 4
       23 GETTABLEKS                       R5 R6 K4 ["Errors"]
       25 CALL                             R4 1 2
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R6 R7 K5 ["useMemo"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 NEWTABLE                         R8 0 1
       36 GETTABLEKS                       R9 R0 K6 ["AssetPaths"]
       38 SETLIST                          R8 R9 1 [1]
       40 CALL                             R6 2 2
       41 GETUPVAL                         R9 3
       42 GETTABLEKS                       R8 R9 K1 ["useState"]
       44 NEWTABLE                         R9 0 0
       46 CALL                             R8 1 2
       47 GETUPVAL                         R11 3
       48 GETTABLEKS                       R10 R11 K1 ["useState"]
       50 NEWTABLE                         R11 0 0
       52 CALL                             R10 1 2
       53 GETUPVAL                         R13 3
       54 GETTABLEKS                       R12 R13 K7 ["useEffect"]
       56 NEWCLOSURE                       R13 P1
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R6
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R11
       64 NEWTABLE                         R14 0 0
       66 CALL                             R12 2 0
       67 GETUPVAL                         R13 3
       68 GETTABLEKS                       R12 R13 K8 ["useCallback"]
       70 NEWCLOSURE                       R13 P2
       71 CAPTURE                          VAL R1
       72 GETUPVAL                         R15 8
       73 CALL                             R15 0 1
       74 JUMPIFNOT                        R15 ; [+3]
       75 NEWTABLE                         R14 0 0
       77 JUMP                             ; [+1]
       78 LOADNIL                          R14
       79 CALL                             R12 2 1
       80 GETUPVAL                         R14 3
       81 GETTABLEKS                       R13 R14 K8 ["useCallback"]
       83 NEWCLOSURE                       R14 P3
       84 CAPTURE                          UPVAL U9
       85 CAPTURE                          VAL R12
       86 CAPTURE                          UPVAL U10
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R5
       93 CAPTURE                          UPVAL U4
       94 GETUPVAL                         R16 8
       95 CALL                             R16 0 1
       96 JUMPIFNOT                        R16 ; [+3]
       97 NEWTABLE                         R15 0 0
       99 JUMP                             ; [+1]
      100 LOADNIL                          R15
      101 CALL                             R13 2 1
      102 GETUPVAL                         R15 3
      103 GETTABLEKS                       R14 R15 K9 ["createElement"]
      105 GETUPVAL                         R16 11
      106 GETTABLEKS                       R15 R16 K10 ["View"]
      108 DUPTABLE                         R16 K12 [{"tag"}]
      109 LOADK                            R17 K13 ["size-full"]
      110 SETTABLEKS                       R17 R16 K11 ["tag"]
      112 GETUPVAL                         R19 4
      113 GETTABLEKS                       R18 R19 K3 ["Main"]
      115 JUMPIFNOTEQ                      R4 R18 ; [+31]
      117 GETUPVAL                         R18 3
      118 GETTABLEKS                       R17 R18 K9 ["createElement"]
      120 GETUPVAL                         R18 12
      121 DUPTABLE                         R19 K21 [{"AssetIds", "AssetIdPaths", "ErrorAssetIds", "OnViewErrors", "OnDone", "OnClose", "TestExperiences"}]
      122 MOVE                             R20 R6
      123 JUMPIF                           R20 ; [+2]
      124 NEWTABLE                         R20 0 0
      126 SETTABLEKS                       R20 R19 K14 ["AssetIds"]
      128 SETTABLEKS                       R7 R19 K15 ["AssetIdPaths"]
      130 SETTABLEKS                       R8 R19 K16 ["ErrorAssetIds"]
      132 NEWCLOSURE                       R20 P4
      133 CAPTURE                          VAL R5
      134 CAPTURE                          UPVAL U4
      135 SETTABLEKS                       R20 R19 K17 ["OnViewErrors"]
      137 SETTABLEKS                       R13 R19 K18 ["OnDone"]
      139 SETTABLEKS                       R12 R19 K19 ["OnClose"]
      141 GETTABLEKS                       R20 R0 K20 ["TestExperiences"]
      143 SETTABLEKS                       R20 R19 K20 ["TestExperiences"]
      145 CALL                             R17 2 1
      146 JUMP                             ; [+38]
      147 GETUPVAL                         R18 3
      148 GETTABLEKS                       R17 R18 K9 ["createElement"]
      150 GETUPVAL                         R18 13
      151 DUPTABLE                         R19 K26 [{"Title", "Description", "AssetPaths", "CanClose", "OnClose", "OnBack"}]
      152 LOADK                            R22 K27 ["QuickShare"]
      153 LOADK                            R23 K28 ["PermissionErrorTitle"]
      154 NAMECALL                         R20 R2 K29 ["getText"]
      156 CALL                             R20 3 1
      157 SETTABLEKS                       R20 R19 K22 ["Title"]
      159 LOADK                            R22 K27 ["QuickShare"]
      160 LOADK                            R23 K30 ["PermissionErrorDescription"]
      161 NAMECALL                         R20 R2 K29 ["getText"]
      163 CALL                             R20 3 1
      164 SETTABLEKS                       R20 R19 K23 ["Description"]
      166 SETTABLEKS                       R10 R19 K6 ["AssetPaths"]
      168 GETUPVAL                         R22 4
      169 GETTABLEKS                       R21 R22 K31 ["ErrorsGranting"]
      171 JUMPIFEQ                         R4 R21 ; [+2]
      173 LOADB                            R20 0 +1
      174 LOADB                            R20 1
      175 SETTABLEKS                       R20 R19 K24 ["CanClose"]
      177 SETTABLEKS                       R12 R19 K19 ["OnClose"]
      179 NEWCLOSURE                       R20 P5
      180 CAPTURE                          VAL R5
      181 CAPTURE                          UPVAL U4
      182 SETTABLEKS                       R20 R19 K25 ["OnBack"]
      184 CALL                             R17 2 1
      185 CALL                             R14 3 -1
      186 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R9 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R9 K14 ["Types"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R10 R0 K13 ["Src"]
       50 GETTABLEKS                       R9 R10 K15 ["Networking"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R12 R0 K13 ["Src"]
       57 GETTABLEKS                       R11 R12 K16 ["Controllers"]
       59 GETTABLEKS                       R10 R11 K17 ["PluginController"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K5 [require]
       64 GETTABLEKS                       R13 R0 K13 ["Src"]
       66 GETTABLEKS                       R12 R13 K16 ["Controllers"]
       68 GETTABLEKS                       R11 R12 K18 ["ItemsController"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K5 [require]
       73 GETIMPORT                        R13 K1 [script]
       75 GETTABLEKS                       R12 R13 K19 ["ShareView"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R17 R0 K13 ["Src"]
       82 GETTABLEKS                       R16 R17 K20 ["Components"]
       84 GETTABLEKS                       R15 R16 K21 ["App"]
       86 GETTABLEKS                       R14 R15 K22 ["Dialogs"]
       88 GETTABLEKS                       R13 R14 K23 ["AssetErrorDialog"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R16 R0 K13 ["Src"]
       95 GETTABLEKS                       R15 R16 K24 ["Util"]
       97 GETTABLEKS                       R14 R15 K25 ["checkPermissionsAsync"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R18 R0 K13 ["Src"]
      104 GETTABLEKS                       R17 R18 K24 ["Util"]
      106 GETTABLEKS                       R16 R17 K22 ["Dialogs"]
      108 GETTABLEKS                       R15 R16 K26 ["openNotification"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R18 R0 K13 ["Src"]
      115 GETTABLEKS                       R17 R18 K27 ["Flags"]
      117 GETTABLEKS                       R16 R17 K28 ["getFFlagAmrMiscCallbackFixes"]
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
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R12
      145 RETURN                           R17 1
