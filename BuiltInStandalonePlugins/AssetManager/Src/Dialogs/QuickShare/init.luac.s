PROTO_0:
        0 LOADNIL                          R0
        1 NEWTABLE                         R1 0 0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K0 ["AssetPaths"]
        6 JUMPIFEQKNIL                     R2 ; [+44]
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+37]
       11 GETUPVAL                         R2 2
       12 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R3 R4 K2 ["use"]
       18 CALL                             R3 0 1
       19 NAMECALL                         R4 R3 K3 ["getItemsCache"]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R7 R2 K4 ["Uid"]
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R8 R9 K0 ["AssetPaths"]
       27 GETUPVAL                         R11 4
       28 GETTABLEKS                       R10 R11 K5 ["AssetInfoField"]
       30 GETTABLEKS                       R9 R10 K6 ["AssetId"]
       32 NAMECALL                         R5 R4 K7 ["getData"]
       34 CALL                             R5 4 1
       35 MOVE                             R0 R5
       36 LOADN                            R7 1
       37 LENGTH                           R5 R0
       38 LOADN                            R6 1
       39 FORNPREP                         R5
       40 GETTABLE                         R8 R0 R7
       41 GETUPVAL                         R11 0
       42 GETTABLEKS                       R10 R11 K0 ["AssetPaths"]
       44 GETTABLE                         R9 R10 R7
       45 SETTABLE                         R9 R1 R8
       46 FORNLOOP                         R5
       47 RETURN                           R0 2
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R0 R2 K0 ["AssetPaths"]
       51 RETURN                           R0 2

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
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R1 0
        4 LENGTH                           R0 R1
        5 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R2 0
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Main"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 NEWTABLE                         R1 0 0
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 4
       13 NEWTABLE                         R1 0 0
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 5
       17 LOADNIL                          R2
       18 NAMECALL                         R0 R0 K1 ["setQuickShareAssetIds"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

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
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["useRef"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K0 ["use"]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R4 R5 K0 ["use"]
       19 CALL                             R4 0 1
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R5 R6 K0 ["use"]
       23 CALL                             R5 0 1
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R6 R7 K3 ["useMemo"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          VAL R3
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U7
       33 NEWTABLE                         R8 0 1
       35 GETTABLEKS                       R9 R0 K4 ["AssetPaths"]
       37 SETLIST                          R8 R9 1 [1]
       39 CALL                             R6 2 2
       40 LOADB                            R8 0
       41 JUMPIFEQKNIL                     R6 ; [+7]
       43 LENGTH                           R9 R6
       44 LOADN                            R10 0
       45 JUMPIFLT                         R10 R9 ; [+2]
       47 LOADB                            R8 0 +1
       48 LOADB                            R8 1
       49 GETUPVAL                         R10 1
       50 GETTABLEKS                       R9 R10 K5 ["useState"]
       52 NEWTABLE                         R10 0 0
       54 CALL                             R9 1 2
       55 LOADNIL                          R11
       56 LOADNIL                          R12
       57 GETUPVAL                         R13 5
       58 CALL                             R13 0 1
       59 JUMPIFNOT                        R13 ; [+8]
       60 GETUPVAL                         R14 1
       61 GETTABLEKS                       R13 R14 K5 ["useState"]
       63 NEWTABLE                         R14 0 0
       65 CALL                             R13 1 2
       66 MOVE                             R11 R13
       67 MOVE                             R12 R14
       68 GETUPVAL                         R14 1
       69 GETTABLEKS                       R13 R14 K5 ["useState"]
       71 GETUPVAL                         R15 8
       72 GETTABLEKS                       R14 R15 K6 ["Main"]
       74 CALL                             R13 1 2
       75 GETUPVAL                         R16 1
       76 GETTABLEKS                       R15 R16 K7 ["useEffect"]
       78 NEWCLOSURE                       R16 P1
       79 CAPTURE                          VAL R6
       80 CAPTURE                          UPVAL U9
       81 CAPTURE                          VAL R5
       82 CAPTURE                          UPVAL U7
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R10
       86 CAPTURE                          REF R12
       87 NEWTABLE                         R17 0 1
       89 MOVE                             R18 R6
       90 SETLIST                          R17 R18 1 [1]
       92 CALL                             R15 2 0
       93 GETUPVAL                         R16 1
       94 GETTABLEKS                       R15 R16 K8 ["useCallback"]
       96 NEWCLOSURE                       R16 P2
       97 CAPTURE                          VAL R14
       98 CAPTURE                          UPVAL U8
       99 CAPTURE                          VAL R10
      100 CAPTURE                          UPVAL U5
      101 CAPTURE                          REF R12
      102 CAPTURE                          VAL R3
      103 CALL                             R15 1 1
      104 GETUPVAL                         R17 1
      105 GETTABLEKS                       R16 R17 K8 ["useCallback"]
      107 NEWCLOSURE                       R17 P3
      108 CAPTURE                          UPVAL U10
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R10
      111 CAPTURE                          UPVAL U5
      112 CAPTURE                          VAL R7
      113 CAPTURE                          REF R12
      114 CAPTURE                          VAL R14
      115 CAPTURE                          UPVAL U8
      116 CALL                             R16 1 1
      117 GETUPVAL                         R17 11
      118 CALL                             R17 0 1
      119 GETUPVAL                         R19 1
      120 GETTABLEKS                       R18 R19 K9 ["createElement"]
      122 GETUPVAL                         R19 12
      123 DUPTABLE                         R20 K18 [{"Enabled", "Modal", "Resizable", "Title", "ZIndexBehavior", "MinSize", "Size", "OnClose"}]
      124 SETTABLEKS                       R8 R20 K10 ["Enabled"]
      126 LOADB                            R21 1
      127 SETTABLEKS                       R21 R20 K11 ["Modal"]
      129 LOADB                            R21 0
      130 SETTABLEKS                       R21 R20 K12 ["Resizable"]
      132 LOADK                            R23 K19 ["QuickShare"]
      133 LOADK                            R24 K20 ["DialogTitle"]
      134 NAMECALL                         R21 R4 K21 ["getText"]
      136 CALL                             R21 3 1
      137 SETTABLEKS                       R21 R20 K13 ["Title"]
      139 GETIMPORT                        R21 K24 [Enum.ZIndexBehavior.Sibling]
      141 SETTABLEKS                       R21 R20 K14 ["ZIndexBehavior"]
      143 GETUPVAL                         R22 13
      144 GETTABLEKS                       R21 R22 K25 ["AMR_QUICKSHARE_DIALOG_SIZE"]
      146 SETTABLEKS                       R21 R20 K15 ["MinSize"]
      148 GETUPVAL                         R22 13
      149 GETTABLEKS                       R21 R22 K25 ["AMR_QUICKSHARE_DIALOG_SIZE"]
      151 SETTABLEKS                       R21 R20 K16 ["Size"]
      153 SETTABLEKS                       R15 R20 K17 ["OnClose"]
      155 NEWTABLE                         R21 0 1
      157 GETUPVAL                         R23 1
      158 GETTABLEKS                       R22 R23 K9 ["createElement"]
      160 JUMPIFNOT                        R17 ; [+2]
      161 GETUPVAL                         R23 14
      162 JUMP                             ; [+1]
      163 GETUPVAL                         R23 15
      164 DUPTABLE                         R24 K27 [{"theme"}]
      165 GETUPVAL                         R25 16
      166 CALL                             R25 0 1
      167 SETTABLEKS                       R25 R24 K26 ["theme"]
      169 GETUPVAL                         R26 1
      170 GETTABLEKS                       R25 R26 K9 ["createElement"]
      172 GETUPVAL                         R27 17
      173 GETTABLEKS                       R26 R27 K28 ["View"]
      175 DUPTABLE                         R27 K31 [{"tag", "ref"}]
      176 LOADK                            R28 K32 ["size-full"]
      177 SETTABLEKS                       R28 R27 K29 ["tag"]
      179 SETTABLEKS                       R2 R27 K30 ["ref"]
      181 GETUPVAL                         R29 1
      182 GETTABLEKS                       R28 R29 K9 ["createElement"]
      184 GETUPVAL                         R29 18
      185 DUPTABLE                         R30 K34 [{"gui"}]
      186 GETTABLEKS                       R31 R2 K35 ["current"]
      188 SETTABLEKS                       R31 R30 K33 ["gui"]
      190 DUPTABLE                         R31 K38 [{"Contents", "StyleLink"}]
      191 GETUPVAL                         R34 8
      192 GETTABLEKS                       R33 R34 K6 ["Main"]
      194 JUMPIFNOTEQ                      R13 R33 ; [+25]
      196 GETUPVAL                         R33 1
      197 GETTABLEKS                       R32 R33 K9 ["createElement"]
      199 GETUPVAL                         R33 19
      200 DUPTABLE                         R34 K44 [{"AssetIds", "AssetIdPaths", "ErrorAssetIds", "OnViewErrors", "OnDone"}]
      201 MOVE                             R35 R6
      202 JUMPIF                           R35 ; [+2]
      203 NEWTABLE                         R35 0 0
      205 SETTABLEKS                       R35 R34 K39 ["AssetIds"]
      207 SETTABLEKS                       R7 R34 K40 ["AssetIdPaths"]
      209 SETTABLEKS                       R9 R34 K41 ["ErrorAssetIds"]
      211 NEWCLOSURE                       R35 P4
      212 CAPTURE                          VAL R14
      213 CAPTURE                          UPVAL U8
      214 SETTABLEKS                       R35 R34 K42 ["OnViewErrors"]
      216 SETTABLEKS                       R16 R34 K43 ["OnDone"]
      218 CALL                             R32 2 1
      219 JUMP                             ; [+44]
      220 GETUPVAL                         R33 1
      221 GETTABLEKS                       R32 R33 K9 ["createElement"]
      223 GETUPVAL                         R33 20
      224 DUPTABLE                         R34 K48 [{"Title", "Description", "AssetPaths", "CanClose", "OnClose", "OnBack"}]
      225 LOADK                            R37 K19 ["QuickShare"]
      226 LOADK                            R38 K49 ["PermissionErrorTitle"]
      227 NAMECALL                         R35 R4 K21 ["getText"]
      229 CALL                             R35 3 1
      230 SETTABLEKS                       R35 R34 K13 ["Title"]
      232 LOADK                            R37 K19 ["QuickShare"]
      233 LOADK                            R38 K50 ["PermissionErrorDescription"]
      234 NAMECALL                         R35 R4 K21 ["getText"]
      236 CALL                             R35 3 1
      237 SETTABLEKS                       R35 R34 K45 ["Description"]
      239 GETUPVAL                         R36 5
      240 CALL                             R36 0 1
      241 JUMPIFNOT                        R36 ; [+2]
      242 MOVE                             R35 R11
      243 JUMP                             ; [+1]
      244 MOVE                             R35 R9
      245 SETTABLEKS                       R35 R34 K4 ["AssetPaths"]
      247 GETUPVAL                         R37 8
      248 GETTABLEKS                       R36 R37 K51 ["ErrorsGranting"]
      250 JUMPIFEQ                         R13 R36 ; [+2]
      252 LOADB                            R35 0 +1
      253 LOADB                            R35 1
      254 SETTABLEKS                       R35 R34 K46 ["CanClose"]
      256 SETTABLEKS                       R15 R34 K17 ["OnClose"]
      258 NEWCLOSURE                       R35 P5
      259 CAPTURE                          VAL R14
      260 CAPTURE                          UPVAL U8
      261 SETTABLEKS                       R35 R34 K47 ["OnBack"]
      263 CALL                             R32 2 1
      264 SETTABLEKS                       R32 R31 K36 ["Contents"]
      266 JUMPIF                           R17 ; [+9]
      267 GETUPVAL                         R33 1
      268 GETTABLEKS                       R32 R33 K9 ["createElement"]
      270 LOADK                            R33 K37 ["StyleLink"]
      271 DUPTABLE                         R34 K53 [{"StyleSheet"}]
      272 SETTABLEKS                       R1 R34 K52 ["StyleSheet"]
      274 CALL                             R32 2 1
      275 JUMP                             ; [+1]
      276 LOADNIL                          R32
      277 SETTABLEKS                       R32 R31 K37 ["StyleLink"]
      279 CALL                             R28 3 -1
      280 CALL                             R25 -1 -1
      281 CALL                             R22 -1 -1
      282 SETLIST                          R21 R22 -1 [1]
      284 CALL                             R18 3 -1
      285 CLOSEUPVALS                      R12
      286 RETURN                           R18 -1

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
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K12 ["FoundationProvider"]
       44 GETTABLEKS                       R8 R5 K13 ["Components"]
       46 GETTABLEKS                       R7 R8 K14 ["FoundationProviderAdapter"]
       48 GETTABLEKS                       R8 R4 K15 ["OverlayProvider"]
       50 GETTABLEKS                       R10 R3 K16 ["UI"]
       52 GETTABLEKS                       R9 R10 K17 ["Dialog"]
       54 GETTABLEKS                       R10 R3 K18 ["ContextServices"]
       56 GETTABLEKS                       R11 R10 K19 ["Localization"]
       58 GETTABLEKS                       R12 R10 K20 ["Design"]
       60 GETIMPORT                        R13 K5 [require]
       62 GETTABLEKS                       R16 R0 K21 ["Src"]
       64 GETTABLEKS                       R15 R16 K22 ["Util"]
       66 GETTABLEKS                       R14 R15 K23 ["getStudioTheme"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R14 K5 [require]
       71 GETTABLEKS                       R17 R0 K21 ["Src"]
       73 GETTABLEKS                       R16 R17 K24 ["Resources"]
       75 GETTABLEKS                       R15 R16 K25 ["StyleConstants"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K5 [require]
       80 GETTABLEKS                       R17 R0 K21 ["Src"]
       82 GETTABLEKS                       R16 R17 K26 ["Types"]
       84 CALL                             R15 1 1
       85 GETIMPORT                        R16 K5 [require]
       87 GETTABLEKS                       R18 R0 K21 ["Src"]
       89 GETTABLEKS                       R17 R18 K27 ["Networking"]
       91 CALL                             R16 1 1
       92 GETIMPORT                        R17 K5 [require]
       94 GETTABLEKS                       R20 R0 K21 ["Src"]
       96 GETTABLEKS                       R19 R20 K28 ["Controllers"]
       98 GETTABLEKS                       R18 R19 K29 ["PluginController"]
      100 CALL                             R17 1 1
      101 GETIMPORT                        R18 K5 [require]
      103 GETTABLEKS                       R21 R0 K21 ["Src"]
      105 GETTABLEKS                       R20 R21 K28 ["Controllers"]
      107 GETTABLEKS                       R19 R20 K30 ["ItemsController"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K5 [require]
      112 GETTABLEKS                       R24 R0 K21 ["Src"]
      114 GETTABLEKS                       R23 R24 K31 ["Dialogs"]
      116 GETTABLEKS                       R22 R23 K32 ["QuickShare"]
      118 GETTABLEKS                       R21 R22 K22 ["Util"]
      120 GETTABLEKS                       R20 R21 K33 ["checkPermissionsAsync"]
      122 CALL                             R19 1 1
      123 GETIMPORT                        R20 K5 [require]
      125 GETTABLEKS                       R23 R0 K21 ["Src"]
      127 GETTABLEKS                       R22 R23 K34 ["Flags"]
      129 GETTABLEKS                       R21 R22 K35 ["getFFlagFoundationDisableStylingPolyfill"]
      131 CALL                             R20 1 1
      132 GETIMPORT                        R21 K5 [require]
      134 GETTABLEKS                       R24 R0 K21 ["Src"]
      136 GETTABLEKS                       R23 R24 K34 ["Flags"]
      138 GETTABLEKS                       R22 R23 K36 ["getFFlagAmrUpdatedItemsCache"]
      140 CALL                             R21 1 1
      141 GETIMPORT                        R22 K5 [require]
      143 GETIMPORT                        R25 K1 [script]
      145 GETTABLEKS                       R24 R25 K37 ["View"]
      147 GETTABLEKS                       R23 R24 K38 ["MainView"]
      149 CALL                             R22 1 1
      150 GETIMPORT                        R23 K5 [require]
      152 GETTABLEKS                       R28 R0 K21 ["Src"]
      154 GETTABLEKS                       R27 R28 K13 ["Components"]
      156 GETTABLEKS                       R26 R27 K39 ["App"]
      158 GETTABLEKS                       R25 R26 K31 ["Dialogs"]
      160 GETTABLEKS                       R24 R25 K40 ["AssetErrorDialog"]
      162 CALL                             R23 1 1
      163 DUPTABLE                         R24 K44 [{"Main", "Errors", "ErrorsGranting"}]
      164 LOADN                            R25 1
      165 SETTABLEKS                       R25 R24 K41 ["Main"]
      167 LOADN                            R25 2
      168 SETTABLEKS                       R25 R24 K42 ["Errors"]
      170 LOADN                            R25 3
      171 SETTABLEKS                       R25 R24 K43 ["ErrorsGranting"]
      173 DUPCLOSURE                       R25 K45 [PROTO_8]
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R21
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R24
      183 CAPTURE                          VAL R19
      184 CAPTURE                          VAL R2
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R23
      195 RETURN                           R25 1
