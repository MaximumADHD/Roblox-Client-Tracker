PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["openPlugin"]
        2 NAMECALL                         R0 R0 K1 ["report"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["selectionChanged"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["report"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 3
        8 MOVE                             R3 R1
        9 JUMPIFNOT                        R3 ; [+2]
       10 GETTABLEKS                       R3 R1 K1 ["autoSetupTarget"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 4
       14 NAMECALL                         R3 R3 K2 ["use"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R6 0 0
       24 CALL                             R4 2 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R1
       31 NEWTABLE                         R6 0 2
       33 MOVE                             R7 R1
       34 JUMPIFNOT                        R7 ; [+2]
       35 GETTABLEKS                       R7 R1 K1 ["autoSetupTarget"]
       37 MOVE                             R8 R1
       38 JUMPIFNOT                        R8 ; [+2]
       39 GETTABLEKS                       R8 R1 K4 ["avatar"]
       41 SETLIST                          R6 R7 2 [1]
       43 CALL                             R4 2 0
       44 LOADNIL                          R4
       45 GETTABLEKS                       R5 R0 K5 ["isRunning"]
       47 CALL                             R5 0 1
       48 JUMPIFNOT                        R5 ; [+7]
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K6 ["createElement"]
       52 GETUPVAL                         R6 5
       53 CALL                             R5 1 1
       54 MOVE                             R4 R5
       55 RETURN                           R4 1
       56 GETTABLEKS                       R5 R2 K7 ["state"]
       58 GETTABLEKS                       R5 R5 K8 ["type"]
       60 JUMPIFEQKS                       R5 K9 ["none"] ; [+71]
       62 GETUPVAL                         R5 6
       63 CALL                             R5 0 1
       64 JUMPIFNOT                        R5 ; [+43]
       65 GETUPVAL                         R5 0
       66 GETTABLEKS                       R5 R5 K6 ["createElement"]
       68 GETUPVAL                         R6 7
       69 DUPTABLE                         R7 K11 [{"providers"}]
       70 NEWTABLE                         R8 0 1
       72 GETUPVAL                         R9 0
       73 GETTABLEKS                       R9 R9 K6 ["createElement"]
       75 GETUPVAL                         R10 8
       76 GETTABLEKS                       R10 R10 K12 ["Provider"]
       78 CALL                             R9 1 -1
       79 SETLIST                          R8 R9 -1 [1]
       81 SETTABLEKS                       R8 R7 K10 ["providers"]
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K6 ["createElement"]
       86 GETUPVAL                         R9 9
       87 DUPTABLE                         R10 K17 [{"autoSetupState", "cancelAutoSetup", "startAutoSetup", "clearError"}]
       88 GETTABLEKS                       R11 R2 K7 ["state"]
       90 SETTABLEKS                       R11 R10 K13 ["autoSetupState"]
       92 GETTABLEKS                       R11 R2 K14 ["cancelAutoSetup"]
       94 SETTABLEKS                       R11 R10 K14 ["cancelAutoSetup"]
       96 GETTABLEKS                       R11 R2 K15 ["startAutoSetup"]
       98 SETTABLEKS                       R11 R10 K15 ["startAutoSetup"]
      100 GETTABLEKS                       R11 R2 K16 ["clearError"]
      102 SETTABLEKS                       R11 R10 K16 ["clearError"]
      104 CALL                             R8 2 -1
      105 CALL                             R5 -1 1
      106 MOVE                             R4 R5
      107 RETURN                           R4 1
      108 GETUPVAL                         R5 0
      109 GETTABLEKS                       R5 R5 K6 ["createElement"]
      111 GETUPVAL                         R6 9
      112 DUPTABLE                         R7 K17 [{"autoSetupState", "cancelAutoSetup", "startAutoSetup", "clearError"}]
      113 GETTABLEKS                       R8 R2 K7 ["state"]
      115 SETTABLEKS                       R8 R7 K13 ["autoSetupState"]
      117 GETTABLEKS                       R8 R2 K14 ["cancelAutoSetup"]
      119 SETTABLEKS                       R8 R7 K14 ["cancelAutoSetup"]
      121 GETTABLEKS                       R8 R2 K15 ["startAutoSetup"]
      123 SETTABLEKS                       R8 R7 K15 ["startAutoSetup"]
      125 GETTABLEKS                       R8 R2 K16 ["clearError"]
      127 SETTABLEKS                       R8 R7 K16 ["clearError"]
      129 CALL                             R5 2 1
      130 MOVE                             R4 R5
      131 RETURN                           R4 1
      132 JUMPIFNOTEQKNIL                  R1 ; [+8]
      134 GETUPVAL                         R5 0
      135 GETTABLEKS                       R5 R5 K6 ["createElement"]
      137 GETUPVAL                         R6 10
      138 CALL                             R5 1 1
      139 MOVE                             R4 R5
      140 RETURN                           R4 1
      141 GETTABLEKS                       R5 R1 K4 ["avatar"]
      143 JUMPIFNOT                        R5 ; [+168]
      144 NEWTABLE                         R5 0 0
      146 MOVE                             R7 R5
      147 GETUPVAL                         R8 0
      148 GETTABLEKS                       R8 R8 K6 ["createElement"]
      150 GETUPVAL                         R9 11
      151 GETTABLEKS                       R9 R9 K12 ["Provider"]
      153 CALL                             R8 1 -1
      154 FASTCALL                         TABLE_INSERT ; [+2]
      155 GETIMPORT                        R6 K20 [table.insert]
      157 CALL                             R6 -1 0
      158 GETUPVAL                         R6 12
      159 CALL                             R6 0 1
      160 JUMPIFNOT                        R6 ; [+12]
      161 MOVE                             R7 R5
      162 GETUPVAL                         R8 0
      163 GETTABLEKS                       R8 R8 K6 ["createElement"]
      165 GETUPVAL                         R9 13
      166 GETTABLEKS                       R9 R9 K12 ["Provider"]
      168 CALL                             R8 1 -1
      169 FASTCALL                         TABLE_INSERT ; [+2]
      170 GETIMPORT                        R6 K20 [table.insert]
      172 CALL                             R6 -1 0
      173 MOVE                             R7 R5
      174 GETUPVAL                         R8 0
      175 GETTABLEKS                       R8 R8 K6 ["createElement"]
      177 GETUPVAL                         R9 14
      178 DUPTABLE                         R10 K22 [{"root"}]
      179 GETTABLEKS                       R11 R1 K4 ["avatar"]
      181 GETTABLEKS                       R11 R11 K23 ["WorldModel"]
      183 SETTABLEKS                       R11 R10 K21 ["root"]
      185 CALL                             R8 2 -1
      186 FASTCALL                         TABLE_INSERT ; [+2]
      187 GETIMPORT                        R6 K20 [table.insert]
      189 CALL                             R6 -1 0
      190 MOVE                             R7 R5
      191 GETUPVAL                         R8 0
      192 GETTABLEKS                       R8 R8 K6 ["createElement"]
      194 GETUPVAL                         R9 15
      195 DUPTABLE                         R10 K22 [{"root"}]
      196 GETTABLEKS                       R11 R1 K4 ["avatar"]
      198 GETTABLEKS                       R11 R11 K23 ["WorldModel"]
      200 SETTABLEKS                       R11 R10 K21 ["root"]
      202 CALL                             R8 2 -1
      203 FASTCALL                         TABLE_INSERT ; [+2]
      204 GETIMPORT                        R6 K20 [table.insert]
      206 CALL                             R6 -1 0
      207 MOVE                             R7 R5
      208 GETUPVAL                         R8 0
      209 GETTABLEKS                       R8 R8 K6 ["createElement"]
      211 GETUPVAL                         R9 16
      212 CALL                             R8 1 -1
      213 FASTCALL                         TABLE_INSERT ; [+2]
      214 GETIMPORT                        R6 K20 [table.insert]
      216 CALL                             R6 -1 0
      217 MOVE                             R7 R5
      218 GETUPVAL                         R8 0
      219 GETTABLEKS                       R8 R8 K6 ["createElement"]
      221 GETUPVAL                         R9 17
      222 CALL                             R8 1 -1
      223 FASTCALL                         TABLE_INSERT ; [+2]
      224 GETIMPORT                        R6 K20 [table.insert]
      226 CALL                             R6 -1 0
      227 GETUPVAL                         R6 12
      228 CALL                             R6 0 1
      229 JUMPIFNOT                        R6 ; [+10]
      230 MOVE                             R7 R5
      231 GETUPVAL                         R8 0
      232 GETTABLEKS                       R8 R8 K6 ["createElement"]
      234 GETUPVAL                         R9 18
      235 CALL                             R8 1 -1
      236 FASTCALL                         TABLE_INSERT ; [+2]
      237 GETIMPORT                        R6 K20 [table.insert]
      239 CALL                             R6 -1 0
      240 GETUPVAL                         R6 12
      241 CALL                             R6 0 1
      242 JUMPIFNOT                        R6 ; [+15]
      243 GETUPVAL                         R6 19
      244 CALL                             R6 0 1
      245 JUMPIF                           R6 ; [+12]
      246 MOVE                             R7 R5
      247 GETUPVAL                         R8 0
      248 GETTABLEKS                       R8 R8 K6 ["createElement"]
      250 GETUPVAL                         R9 20
      251 GETTABLEKS                       R9 R9 K12 ["Provider"]
      253 CALL                             R8 1 -1
      254 FASTCALL                         TABLE_INSERT ; [+2]
      255 GETIMPORT                        R6 K20 [table.insert]
      257 CALL                             R6 -1 0
      258 GETUPVAL                         R6 12
      259 CALL                             R6 0 1
      260 JUMPIFNOT                        R6 ; [+28]
      261 GETUPVAL                         R6 21
      262 CALL                             R6 0 1
      263 JUMPIFNOT                        R6 ; [+13]
      264 MOVE                             R7 R5
      265 GETUPVAL                         R8 0
      266 GETTABLEKS                       R8 R8 K6 ["createElement"]
      268 GETUPVAL                         R9 22
      269 GETTABLEKS                       R9 R9 K12 ["Provider"]
      271 CALL                             R8 1 -1
      272 FASTCALL                         TABLE_INSERT ; [+2]
      273 GETIMPORT                        R6 K20 [table.insert]
      275 CALL                             R6 -1 0
      276 JUMP                             ; [+12]
      277 MOVE                             R7 R5
      278 GETUPVAL                         R8 0
      279 GETTABLEKS                       R8 R8 K6 ["createElement"]
      281 GETUPVAL                         R9 23
      282 GETTABLEKS                       R9 R9 K12 ["Provider"]
      284 CALL                             R8 1 -1
      285 FASTCALL                         TABLE_INSERT ; [+2]
      286 GETIMPORT                        R6 K20 [table.insert]
      288 CALL                             R6 -1 0
      289 GETUPVAL                         R6 0
      290 GETTABLEKS                       R6 R6 K6 ["createElement"]
      292 GETUPVAL                         R7 7
      293 DUPTABLE                         R8 K11 [{"providers"}]
      294 SETTABLEKS                       R5 R8 K10 ["providers"]
      296 GETUPVAL                         R9 0
      297 GETTABLEKS                       R9 R9 K6 ["createElement"]
      299 GETUPVAL                         R10 24
      300 DUPTABLE                         R11 K26 [{"Avatar", "IsSelected"}]
      301 GETTABLEKS                       R12 R1 K4 ["avatar"]
      303 SETTABLEKS                       R12 R11 K24 ["Avatar"]
      305 GETTABLEKS                       R12 R1 K27 ["isSelected"]
      307 SETTABLEKS                       R12 R11 K25 ["IsSelected"]
      309 CALL                             R9 2 -1
      310 CALL                             R6 -1 1
      311 MOVE                             R4 R6
      312 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Screens"]
       29 GETTABLEKS                       R4 R4 K12 ["AvatarScreen"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Components"]
       38 GETTABLEKS                       R5 R5 K11 ["Screens"]
       40 GETTABLEKS                       R5 R5 K13 ["AutoSetupScreen"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Components"]
       49 GETTABLEKS                       R6 R6 K11 ["Screens"]
       51 GETTABLEKS                       R6 R6 K14 ["SimpleSelectScreen"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K9 ["Src"]
       58 GETTABLEKS                       R7 R7 K10 ["Components"]
       60 GETTABLEKS                       R7 R7 K11 ["Screens"]
       62 GETTABLEKS                       R7 R7 K15 ["TestingScreen"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R8 R0 K9 ["Src"]
       69 GETTABLEKS                       R8 R8 K10 ["Components"]
       71 GETTABLEKS                       R8 R8 K16 ["AutoSetupOptionsContext"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R9 R0 K9 ["Src"]
       78 GETTABLEKS                       R9 R9 K10 ["Components"]
       80 GETTABLEKS                       R9 R9 K17 ["EquipmentStateProvider"]
       82 CALL                             R8 1 1
       83 GETIMPORT                        R9 K5 [require]
       85 GETTABLEKS                       R10 R0 K9 ["Src"]
       87 GETTABLEKS                       R10 R10 K10 ["Components"]
       89 GETTABLEKS                       R10 R10 K18 ["OriginalLimbProvider"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K5 [require]
       94 GETTABLEKS                       R11 R0 K9 ["Src"]
       96 GETTABLEKS                       R11 R11 K10 ["Components"]
       98 GETTABLEKS                       R11 R11 K19 ["RunServiceContext"]
      100 CALL                             R10 1 1
      101 GETIMPORT                        R11 K5 [require]
      103 GETTABLEKS                       R12 R0 K9 ["Src"]
      105 GETTABLEKS                       R12 R12 K10 ["Components"]
      107 GETTABLEKS                       R12 R12 K20 ["SimpleSerializedStateProvider"]
      109 CALL                             R11 1 1
      110 GETIMPORT                        R12 K5 [require]
      112 GETTABLEKS                       R13 R0 K9 ["Src"]
      114 GETTABLEKS                       R13 R13 K10 ["Components"]
      116 GETTABLEKS                       R13 R13 K21 ["UserCatalogFolderContext"]
      118 CALL                             R12 1 1
      119 GETIMPORT                        R13 K5 [require]
      121 GETTABLEKS                       R14 R0 K9 ["Src"]
      123 GETTABLEKS                       R14 R14 K10 ["Components"]
      125 GETTABLEKS                       R14 R14 K22 ["MarketplaceCatalogFolderContext"]
      127 CALL                             R13 1 1
      128 GETIMPORT                        R14 K5 [require]
      130 GETTABLEKS                       R15 R0 K9 ["Src"]
      132 GETTABLEKS                       R15 R15 K10 ["Components"]
      134 GETTABLEKS                       R15 R15 K23 ["UserCatalogProvider"]
      136 CALL                             R14 1 1
      137 GETIMPORT                        R15 K5 [require]
      139 GETTABLEKS                       R16 R0 K9 ["Src"]
      141 GETTABLEKS                       R16 R16 K10 ["Components"]
      143 GETTABLEKS                       R16 R16 K24 ["MarketplaceCatalogProvider"]
      145 CALL                             R15 1 1
      146 GETIMPORT                        R16 K5 [require]
      148 GETTABLEKS                       R17 R0 K9 ["Src"]
      150 GETTABLEKS                       R17 R17 K10 ["Components"]
      152 GETTABLEKS                       R17 R17 K25 ["DEPRECATED_MarketplaceImportContext"]
      154 CALL                             R16 1 1
      155 GETIMPORT                        R17 K5 [require]
      157 GETTABLEKS                       R18 R0 K9 ["Src"]
      159 GETTABLEKS                       R18 R18 K10 ["Components"]
      161 GETTABLEKS                       R18 R18 K26 ["LookContext"]
      163 CALL                             R17 1 1
      164 GETIMPORT                        R18 K5 [require]
      166 GETTABLEKS                       R19 R0 K9 ["Src"]
      168 GETTABLEKS                       R19 R19 K10 ["Components"]
      170 GETTABLEKS                       R19 R19 K27 ["DEPRECATED_LookContext"]
      172 CALL                             R18 1 1
      173 GETIMPORT                        R19 K5 [require]
      175 GETTABLEKS                       R20 R0 K9 ["Src"]
      177 GETTABLEKS                       R20 R20 K10 ["Components"]
      179 GETTABLEKS                       R20 R20 K28 ["ContextStack"]
      181 CALL                             R19 1 1
      182 GETIMPORT                        R20 K5 [require]
      184 GETTABLEKS                       R21 R0 K9 ["Src"]
      186 GETTABLEKS                       R21 R21 K29 ["Flags"]
      188 GETTABLEKS                       R21 R21 K30 ["getFFlagAvatarAutosetupOptionsInput"]
      190 CALL                             R20 1 1
      191 GETIMPORT                        R21 K5 [require]
      193 GETTABLEKS                       R22 R0 K9 ["Src"]
      195 GETTABLEKS                       R22 R22 K29 ["Flags"]
      197 GETTABLEKS                       R22 R22 K31 ["getFFlagAvatarPreviewerLookComposer"]
      199 CALL                             R21 1 1
      200 GETIMPORT                        R22 K5 [require]
      202 GETTABLEKS                       R23 R0 K9 ["Src"]
      204 GETTABLEKS                       R23 R23 K29 ["Flags"]
      206 GETTABLEKS                       R23 R23 K32 ["getFFlagAvatarPreviewerStartFromAssetId"]
      208 CALL                             R22 1 1
      209 GETIMPORT                        R23 K5 [require]
      211 GETTABLEKS                       R24 R0 K9 ["Src"]
      213 GETTABLEKS                       R24 R24 K29 ["Flags"]
      215 GETTABLEKS                       R24 R24 K33 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      217 CALL                             R23 1 1
      218 GETIMPORT                        R24 K5 [require]
      220 GETTABLEKS                       R25 R0 K9 ["Src"]
      222 GETTABLEKS                       R25 R25 K34 ["Hooks"]
      224 GETTABLEKS                       R25 R25 K35 ["useAutoSetupState"]
      226 CALL                             R24 1 1
      227 GETIMPORT                        R25 K5 [require]
      229 GETTABLEKS                       R26 R0 K9 ["Src"]
      231 GETTABLEKS                       R26 R26 K34 ["Hooks"]
      233 GETTABLEKS                       R26 R26 K36 ["useMostRecentSelected"]
      235 CALL                             R25 1 1
      236 GETTABLEKS                       R26 R1 K37 ["ContextServices"]
      238 GETTABLEKS                       R26 R26 K38 ["Analytics"]
      240 DUPCLOSURE                       R27 K39 [PROTO_2]
      241 CAPTURE                          VAL R2
      242 CAPTURE                          VAL R10
      243 CAPTURE                          VAL R25
      244 CAPTURE                          VAL R24
      245 CAPTURE                          VAL R26
      246 CAPTURE                          VAL R6
      247 CAPTURE                          VAL R20
      248 CAPTURE                          VAL R19
      249 CAPTURE                          VAL R7
      250 CAPTURE                          VAL R4
      251 CAPTURE                          VAL R5
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R21
      254 CAPTURE                          VAL R13
      255 CAPTURE                          VAL R11
      256 CAPTURE                          VAL R8
      257 CAPTURE                          VAL R14
      258 CAPTURE                          VAL R9
      259 CAPTURE                          VAL R15
      260 CAPTURE                          VAL R22
      261 CAPTURE                          VAL R16
      262 CAPTURE                          VAL R23
      263 CAPTURE                          VAL R17
      264 CAPTURE                          VAL R18
      265 CAPTURE                          VAL R3
      266 RETURN                           R27 1
