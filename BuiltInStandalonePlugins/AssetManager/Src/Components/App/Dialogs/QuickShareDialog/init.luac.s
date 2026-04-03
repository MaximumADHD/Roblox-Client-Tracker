PROTO_0:
        0 LOADNIL                          R0
        1 NEWTABLE                         R1 0 0
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+37]
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R2 R2 K0 ["getCurrentScope"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["use"]
       13 CALL                             R3 0 1
       14 NAMECALL                         R4 R3 K2 ["getItemsCache"]
       16 CALL                             R4 1 1
       17 GETTABLEKS                       R7 R2 K3 ["Uid"]
       19 GETUPVAL                         R9 3
       20 GETTABLEKS                       R8 R9 K4 ["AssetPaths"]
       22 GETUPVAL                         R11 4
       23 GETTABLEKS                       R10 R11 K5 ["AssetInfoField"]
       25 GETTABLEKS                       R9 R10 K6 ["AssetId"]
       27 NAMECALL                         R5 R4 K7 ["getData"]
       29 CALL                             R5 4 1
       30 MOVE                             R0 R5
       31 LOADN                            R7 1
       32 LENGTH                           R5 R0
       33 LOADN                            R6 1
       34 FORNPREP                         R5
       35 GETTABLE                         R8 R0 R7
       36 GETUPVAL                         R11 3
       37 GETTABLEKS                       R10 R11 K4 ["AssetPaths"]
       39 GETTABLE                         R9 R10 R7
       40 SETTABLE                         R9 R1 R8
       41 FORNLOOP                         R5
       42 RETURN                           R0 2
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R0 R2 K4 ["AssetPaths"]
       46 RETURN                           R0 2

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
       17 JUMPIFEQ                         R9 R10 ; [+22]
       19 GETUPVAL                         R12 1
       20 GETTABLE                         R11 R12 R7
       21 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       23 MOVE                             R10 R2
       24 GETIMPORT                        R9 K6 [table.insert]
       26 CALL                             R9 2 0
       27 GETUPVAL                         R9 2
       28 CALL                             R9 0 1
       29 JUMPIFNOT                        R9 ; [+10]
       30 GETUPVAL                         R12 3
       31 GETUPVAL                         R14 1
       32 GETTABLE                         R13 R14 R7
       33 GETTABLE                         R11 R12 R13
       34 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       36 MOVE                             R10 R3
       37 GETIMPORT                        R9 K6 [table.insert]
       39 CALL                             R9 2 0
       40 FORGLOOP                         R4 2 ; [-33]
       42 GETUPVAL                         R4 4
       43 MOVE                             R5 R2
       44 CALL                             R4 1 0
       45 GETUPVAL                         R4 2
       46 CALL                             R4 0 1
       47 JUMPIFNOT                        R4 ; [+3]
       48 GETUPVAL                         R4 5
       49 MOVE                             R5 R3
       50 CALL                             R4 1 0
       51 RETURN                           R0 0

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
        9 CAPTURE                          UPVAL U7
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

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
       53 GETUPVAL                         R2 6
       54 CALL                             R2 0 1
       55 JUMPIFNOT                        R2 ; [+10]
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R2 R3 K12 ["map"]
       59 MOVE                             R3 R1
       60 NEWCLOSURE                       R4 P0
       61 CAPTURE                          UPVAL U7
       62 CALL                             R2 2 1
       63 GETUPVAL                         R3 8
       64 MOVE                             R4 R2
       65 CALL                             R3 1 0
       66 GETUPVAL                         R2 9
       67 GETUPVAL                         R4 10
       68 GETTABLEKS                       R3 R4 K13 ["ErrorsGranting"]
       70 CALL                             R2 1 0
       71 RETURN                           R0 0

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
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U7
       35 NEWTABLE                         R8 0 1
       37 GETTABLEKS                       R9 R0 K6 ["AssetPaths"]
       39 SETLIST                          R8 R9 1 [1]
       41 CALL                             R6 2 2
       42 GETUPVAL                         R9 3
       43 GETTABLEKS                       R8 R9 K1 ["useState"]
       45 NEWTABLE                         R9 0 0
       47 CALL                             R8 1 2
       48 LOADNIL                          R10
       49 LOADNIL                          R11
       50 GETUPVAL                         R12 5
       51 CALL                             R12 0 1
       52 JUMPIFNOT                        R12 ; [+8]
       53 GETUPVAL                         R13 3
       54 GETTABLEKS                       R12 R13 K1 ["useState"]
       56 NEWTABLE                         R13 0 0
       58 CALL                             R12 1 2
       59 MOVE                             R10 R12
       60 MOVE                             R11 R13
       61 GETUPVAL                         R13 3
       62 GETTABLEKS                       R12 R13 K7 ["useEffect"]
       64 NEWCLOSURE                       R13 P1
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 CAPTURE                          UPVAL U7
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          REF R11
       73 NEWTABLE                         R14 0 0
       75 CALL                             R12 2 0
       76 GETUPVAL                         R13 3
       77 GETTABLEKS                       R12 R13 K8 ["useCallback"]
       79 NEWCLOSURE                       R13 P2
       80 CAPTURE                          VAL R1
       81 GETUPVAL                         R15 9
       82 CALL                             R15 0 1
       83 JUMPIFNOT                        R15 ; [+3]
       84 NEWTABLE                         R14 0 0
       86 JUMP                             ; [+1]
       87 LOADNIL                          R14
       88 CALL                             R12 2 1
       89 GETUPVAL                         R14 3
       90 GETTABLEKS                       R13 R14 K8 ["useCallback"]
       92 NEWCLOSURE                       R14 P3
       93 CAPTURE                          UPVAL U10
       94 CAPTURE                          VAL R12
       95 CAPTURE                          UPVAL U11
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R9
       99 CAPTURE                          UPVAL U5
      100 CAPTURE                          VAL R7
      101 CAPTURE                          REF R11
      102 CAPTURE                          VAL R5
      103 CAPTURE                          UPVAL U4
      104 GETUPVAL                         R16 9
      105 CALL                             R16 0 1
      106 JUMPIFNOT                        R16 ; [+3]
      107 NEWTABLE                         R15 0 0
      109 JUMP                             ; [+1]
      110 LOADNIL                          R15
      111 CALL                             R13 2 1
      112 GETUPVAL                         R15 3
      113 GETTABLEKS                       R14 R15 K9 ["createElement"]
      115 GETUPVAL                         R16 12
      116 GETTABLEKS                       R15 R16 K10 ["View"]
      118 DUPTABLE                         R16 K12 [{"tag"}]
      119 LOADK                            R17 K13 ["size-full"]
      120 SETTABLEKS                       R17 R16 K11 ["tag"]
      122 GETUPVAL                         R19 4
      123 GETTABLEKS                       R18 R19 K3 ["Main"]
      125 JUMPIFNOTEQ                      R4 R18 ; [+31]
      127 GETUPVAL                         R18 3
      128 GETTABLEKS                       R17 R18 K9 ["createElement"]
      130 GETUPVAL                         R18 13
      131 DUPTABLE                         R19 K21 [{"AssetIds", "AssetIdPaths", "ErrorAssetIds", "OnViewErrors", "OnDone", "OnClose", "TestExperiences"}]
      132 MOVE                             R20 R6
      133 JUMPIF                           R20 ; [+2]
      134 NEWTABLE                         R20 0 0
      136 SETTABLEKS                       R20 R19 K14 ["AssetIds"]
      138 SETTABLEKS                       R7 R19 K15 ["AssetIdPaths"]
      140 SETTABLEKS                       R8 R19 K16 ["ErrorAssetIds"]
      142 NEWCLOSURE                       R20 P4
      143 CAPTURE                          VAL R5
      144 CAPTURE                          UPVAL U4
      145 SETTABLEKS                       R20 R19 K17 ["OnViewErrors"]
      147 SETTABLEKS                       R13 R19 K18 ["OnDone"]
      149 SETTABLEKS                       R12 R19 K19 ["OnClose"]
      151 GETTABLEKS                       R20 R0 K20 ["TestExperiences"]
      153 SETTABLEKS                       R20 R19 K20 ["TestExperiences"]
      155 CALL                             R17 2 1
      156 JUMP                             ; [+44]
      157 GETUPVAL                         R18 3
      158 GETTABLEKS                       R17 R18 K9 ["createElement"]
      160 GETUPVAL                         R18 14
      161 DUPTABLE                         R19 K26 [{"Title", "Description", "AssetPaths", "CanClose", "OnClose", "OnBack"}]
      162 LOADK                            R22 K27 ["QuickShare"]
      163 LOADK                            R23 K28 ["PermissionErrorTitle"]
      164 NAMECALL                         R20 R2 K29 ["getText"]
      166 CALL                             R20 3 1
      167 SETTABLEKS                       R20 R19 K22 ["Title"]
      169 LOADK                            R22 K27 ["QuickShare"]
      170 LOADK                            R23 K30 ["PermissionErrorDescription"]
      171 NAMECALL                         R20 R2 K29 ["getText"]
      173 CALL                             R20 3 1
      174 SETTABLEKS                       R20 R19 K23 ["Description"]
      176 GETUPVAL                         R21 5
      177 CALL                             R21 0 1
      178 JUMPIFNOT                        R21 ; [+2]
      179 MOVE                             R20 R10
      180 JUMP                             ; [+1]
      181 MOVE                             R20 R8
      182 SETTABLEKS                       R20 R19 K6 ["AssetPaths"]
      184 GETUPVAL                         R22 4
      185 GETTABLEKS                       R21 R22 K31 ["ErrorsGranting"]
      187 JUMPIFEQ                         R4 R21 ; [+2]
      189 LOADB                            R20 0 +1
      190 LOADB                            R20 1
      191 SETTABLEKS                       R20 R19 K24 ["CanClose"]
      193 SETTABLEKS                       R12 R19 K19 ["OnClose"]
      195 NEWCLOSURE                       R20 P5
      196 CAPTURE                          VAL R5
      197 CAPTURE                          UPVAL U4
      198 SETTABLEKS                       R20 R19 K25 ["OnBack"]
      200 CALL                             R17 2 1
      201 CALL                             R14 3 -1
      202 CLOSEUPVALS                      R11
      203 RETURN                           R14 -1

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
      117 GETTABLEKS                       R16 R17 K28 ["getFFlagAmrUpdatedItemsCache"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K5 [require]
      122 GETTABLEKS                       R19 R0 K13 ["Src"]
      124 GETTABLEKS                       R18 R19 K27 ["Flags"]
      126 GETTABLEKS                       R17 R18 K29 ["getFFlagAmrMiscCallbackFixes"]
      128 CALL                             R16 1 1
      129 DUPTABLE                         R17 K33 [{"Main", "Errors", "ErrorsGranting"}]
      130 LOADN                            R18 1
      131 SETTABLEKS                       R18 R17 K30 ["Main"]
      133 LOADN                            R18 2
      134 SETTABLEKS                       R18 R17 K31 ["Errors"]
      136 LOADN                            R18 3
      137 SETTABLEKS                       R18 R17 K32 ["ErrorsGranting"]
      139 DUPCLOSURE                       R18 K34 [PROTO_8]
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R12
      155 RETURN                           R18 1
