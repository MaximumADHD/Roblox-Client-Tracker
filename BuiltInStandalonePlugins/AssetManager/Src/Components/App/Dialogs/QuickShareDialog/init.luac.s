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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["count"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+4]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 3
       14 CALL                             R1 0 1
       15 JUMPIFNOT                        R1 ; [+10]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K2 ["map"]
       19 MOVE                             R2 R0
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          UPVAL U4
       22 CALL                             R1 2 1
       23 GETUPVAL                         R2 5
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 GETUPVAL                         R1 6
       27 GETUPVAL                         R3 7
       28 GETTABLEKS                       R2 R3 K3 ["ErrorsGranting"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

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
       35 NEWTABLE                         R8 0 0
       37 CALL                             R6 2 2
       38 GETUPVAL                         R9 3
       39 GETTABLEKS                       R8 R9 K1 ["useState"]
       41 NEWTABLE                         R9 0 0
       43 CALL                             R8 1 2
       44 LOADNIL                          R10
       45 LOADNIL                          R11
       46 GETUPVAL                         R12 5
       47 CALL                             R12 0 1
       48 JUMPIFNOT                        R12 ; [+8]
       49 GETUPVAL                         R13 3
       50 GETTABLEKS                       R12 R13 K1 ["useState"]
       52 NEWTABLE                         R13 0 0
       54 CALL                             R12 1 2
       55 MOVE                             R10 R12
       56 MOVE                             R11 R13
       57 GETUPVAL                         R13 3
       58 GETTABLEKS                       R12 R13 K6 ["useEffect"]
       60 NEWCLOSURE                       R13 P1
       61 CAPTURE                          UPVAL U8
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R6
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R9
       68 CAPTURE                          REF R11
       69 NEWTABLE                         R14 0 0
       71 CALL                             R12 2 0
       72 GETUPVAL                         R13 3
       73 GETTABLEKS                       R12 R13 K7 ["useCallback"]
       75 NEWCLOSURE                       R13 P2
       76 CAPTURE                          VAL R1
       77 GETUPVAL                         R15 9
       78 CALL                             R15 0 1
       79 JUMPIFNOT                        R15 ; [+3]
       80 NEWTABLE                         R14 0 0
       82 JUMP                             ; [+1]
       83 LOADNIL                          R14
       84 CALL                             R12 2 1
       85 GETUPVAL                         R14 3
       86 GETTABLEKS                       R13 R14 K7 ["useCallback"]
       88 NEWCLOSURE                       R14 P3
       89 CAPTURE                          UPVAL U10
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R9
       92 CAPTURE                          UPVAL U5
       93 CAPTURE                          VAL R7
       94 CAPTURE                          REF R11
       95 CAPTURE                          VAL R5
       96 CAPTURE                          UPVAL U4
       97 GETUPVAL                         R16 9
       98 CALL                             R16 0 1
       99 JUMPIFNOT                        R16 ; [+3]
      100 NEWTABLE                         R15 0 0
      102 JUMP                             ; [+1]
      103 LOADNIL                          R15
      104 CALL                             R13 2 1
      105 GETUPVAL                         R15 3
      106 GETTABLEKS                       R14 R15 K8 ["createElement"]
      108 GETUPVAL                         R16 11
      109 GETTABLEKS                       R15 R16 K9 ["View"]
      111 DUPTABLE                         R16 K11 [{"tag"}]
      112 LOADK                            R17 K12 ["size-full"]
      113 SETTABLEKS                       R17 R16 K10 ["tag"]
      115 GETUPVAL                         R19 4
      116 GETTABLEKS                       R18 R19 K3 ["Main"]
      118 JUMPIFNOTEQ                      R4 R18 ; [+25]
      120 GETUPVAL                         R18 3
      121 GETTABLEKS                       R17 R18 K8 ["createElement"]
      123 GETUPVAL                         R18 12
      124 DUPTABLE                         R19 K18 [{"AssetIds", "AssetIdPaths", "ErrorAssetIds", "OnViewErrors", "OnDone"}]
      125 MOVE                             R20 R6
      126 JUMPIF                           R20 ; [+2]
      127 NEWTABLE                         R20 0 0
      129 SETTABLEKS                       R20 R19 K13 ["AssetIds"]
      131 SETTABLEKS                       R7 R19 K14 ["AssetIdPaths"]
      133 SETTABLEKS                       R8 R19 K15 ["ErrorAssetIds"]
      135 NEWCLOSURE                       R20 P4
      136 CAPTURE                          VAL R5
      137 CAPTURE                          UPVAL U4
      138 SETTABLEKS                       R20 R19 K16 ["OnViewErrors"]
      140 SETTABLEKS                       R13 R19 K17 ["OnDone"]
      142 CALL                             R17 2 1
      143 JUMP                             ; [+44]
      144 GETUPVAL                         R18 3
      145 GETTABLEKS                       R17 R18 K8 ["createElement"]
      147 GETUPVAL                         R18 13
      148 DUPTABLE                         R19 K25 [{"Title", "Description", "AssetPaths", "CanClose", "OnClose", "OnBack"}]
      149 LOADK                            R22 K26 ["QuickShare"]
      150 LOADK                            R23 K27 ["PermissionErrorTitle"]
      151 NAMECALL                         R20 R2 K28 ["getText"]
      153 CALL                             R20 3 1
      154 SETTABLEKS                       R20 R19 K19 ["Title"]
      156 LOADK                            R22 K26 ["QuickShare"]
      157 LOADK                            R23 K29 ["PermissionErrorDescription"]
      158 NAMECALL                         R20 R2 K28 ["getText"]
      160 CALL                             R20 3 1
      161 SETTABLEKS                       R20 R19 K20 ["Description"]
      163 GETUPVAL                         R21 5
      164 CALL                             R21 0 1
      165 JUMPIFNOT                        R21 ; [+2]
      166 MOVE                             R20 R10
      167 JUMP                             ; [+1]
      168 MOVE                             R20 R8
      169 SETTABLEKS                       R20 R19 K21 ["AssetPaths"]
      171 GETUPVAL                         R22 4
      172 GETTABLEKS                       R21 R22 K30 ["ErrorsGranting"]
      174 JUMPIFEQ                         R4 R21 ; [+2]
      176 LOADB                            R20 0 +1
      177 LOADB                            R20 1
      178 SETTABLEKS                       R20 R19 K22 ["CanClose"]
      180 SETTABLEKS                       R12 R19 K23 ["OnClose"]
      182 NEWCLOSURE                       R20 P5
      183 CAPTURE                          VAL R5
      184 CAPTURE                          UPVAL U4
      185 SETTABLEKS                       R20 R19 K24 ["OnBack"]
      187 CALL                             R17 2 1
      188 CALL                             R14 3 -1
      189 CLOSEUPVALS                      R11
      190 RETURN                           R14 -1

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
       80 GETIMPORT                        R15 K1 [script]
       82 GETTABLEKS                       R14 R15 K20 ["Util"]
       84 GETTABLEKS                       R13 R14 K21 ["checkPermissionsAsync"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R18 R0 K13 ["Src"]
       91 GETTABLEKS                       R17 R18 K22 ["Components"]
       93 GETTABLEKS                       R16 R17 K23 ["App"]
       95 GETTABLEKS                       R15 R16 K24 ["Dialogs"]
       97 GETTABLEKS                       R14 R15 K25 ["AssetErrorDialog"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R17 R0 K13 ["Src"]
      104 GETTABLEKS                       R16 R17 K26 ["Flags"]
      106 GETTABLEKS                       R15 R16 K27 ["getFFlagAmrUpdatedItemsCache"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R18 R0 K13 ["Src"]
      113 GETTABLEKS                       R17 R18 K26 ["Flags"]
      115 GETTABLEKS                       R16 R17 K28 ["getFFlagAmrMiscCallbackFixes"]
      117 CALL                             R15 1 1
      118 DUPTABLE                         R16 K32 [{"Main", "Errors", "ErrorsGranting"}]
      119 LOADN                            R17 1
      120 SETTABLEKS                       R17 R16 K29 ["Main"]
      122 LOADN                            R17 2
      123 SETTABLEKS                       R17 R16 K30 ["Errors"]
      125 LOADN                            R17 3
      126 SETTABLEKS                       R17 R16 K31 ["ErrorsGranting"]
      128 DUPCLOSURE                       R17 K33 [PROTO_8]
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R13
      143 RETURN                           R17 1
