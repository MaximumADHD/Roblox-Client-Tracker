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
        7 GETTABLEKS                       R2 R1 K1 ["selection"]
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R2
       11 JUMPIFNOT                        R4 ; [+2]
       12 GETTABLEKS                       R4 R2 K2 ["autoSetupTarget"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 4
       16 NAMECALL                         R4 R4 K3 ["use"]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          VAL R4
       24 NEWTABLE                         R7 0 0
       26 CALL                             R5 2 0
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R7 0 2
       35 MOVE                             R8 R2
       36 JUMPIFNOT                        R8 ; [+2]
       37 GETTABLEKS                       R8 R2 K2 ["autoSetupTarget"]
       39 MOVE                             R9 R2
       40 JUMPIFNOT                        R9 ; [+2]
       41 GETTABLEKS                       R9 R2 K5 ["avatar"]
       43 SETLIST                          R7 R8 2 [1]
       45 CALL                             R5 2 0
       46 LOADNIL                          R5
       47 GETTABLEKS                       R6 R0 K6 ["isRunning"]
       49 CALL                             R6 0 1
       50 JUMPIFNOT                        R6 ; [+7]
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K7 ["createElement"]
       54 GETUPVAL                         R7 5
       55 CALL                             R6 1 1
       56 MOVE                             R5 R6
       57 RETURN                           R5 1
       58 GETTABLEKS                       R6 R3 K8 ["state"]
       60 GETTABLEKS                       R6 R6 K9 ["type"]
       62 JUMPIFEQKS                       R6 K10 ["none"] ; [+71]
       64 GETUPVAL                         R6 6
       65 CALL                             R6 0 1
       66 JUMPIFNOT                        R6 ; [+43]
       67 GETUPVAL                         R6 0
       68 GETTABLEKS                       R6 R6 K7 ["createElement"]
       70 GETUPVAL                         R7 7
       71 DUPTABLE                         R8 K12 [{"providers"}]
       72 NEWTABLE                         R9 0 1
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R10 R10 K7 ["createElement"]
       77 GETUPVAL                         R11 8
       78 GETTABLEKS                       R11 R11 K13 ["Provider"]
       80 CALL                             R10 1 -1
       81 SETLIST                          R9 R10 -1 [1]
       83 SETTABLEKS                       R9 R8 K11 ["providers"]
       85 GETUPVAL                         R9 0
       86 GETTABLEKS                       R9 R9 K7 ["createElement"]
       88 GETUPVAL                         R10 9
       89 DUPTABLE                         R11 K18 [{"autoSetupState", "cancelAutoSetup", "startAutoSetup", "clearError"}]
       90 GETTABLEKS                       R12 R3 K8 ["state"]
       92 SETTABLEKS                       R12 R11 K14 ["autoSetupState"]
       94 GETTABLEKS                       R12 R3 K15 ["cancelAutoSetup"]
       96 SETTABLEKS                       R12 R11 K15 ["cancelAutoSetup"]
       98 GETTABLEKS                       R12 R3 K16 ["startAutoSetup"]
      100 SETTABLEKS                       R12 R11 K16 ["startAutoSetup"]
      102 GETTABLEKS                       R12 R3 K17 ["clearError"]
      104 SETTABLEKS                       R12 R11 K17 ["clearError"]
      106 CALL                             R9 2 -1
      107 CALL                             R6 -1 1
      108 MOVE                             R5 R6
      109 RETURN                           R5 1
      110 GETUPVAL                         R6 0
      111 GETTABLEKS                       R6 R6 K7 ["createElement"]
      113 GETUPVAL                         R7 9
      114 DUPTABLE                         R8 K18 [{"autoSetupState", "cancelAutoSetup", "startAutoSetup", "clearError"}]
      115 GETTABLEKS                       R9 R3 K8 ["state"]
      117 SETTABLEKS                       R9 R8 K14 ["autoSetupState"]
      119 GETTABLEKS                       R9 R3 K15 ["cancelAutoSetup"]
      121 SETTABLEKS                       R9 R8 K15 ["cancelAutoSetup"]
      123 GETTABLEKS                       R9 R3 K16 ["startAutoSetup"]
      125 SETTABLEKS                       R9 R8 K16 ["startAutoSetup"]
      127 GETTABLEKS                       R9 R3 K17 ["clearError"]
      129 SETTABLEKS                       R9 R8 K17 ["clearError"]
      131 CALL                             R6 2 1
      132 MOVE                             R5 R6
      133 RETURN                           R5 1
      134 JUMPIFNOTEQKNIL                  R2 ; [+8]
      136 GETUPVAL                         R6 0
      137 GETTABLEKS                       R6 R6 K7 ["createElement"]
      139 GETUPVAL                         R7 10
      140 CALL                             R6 1 1
      141 MOVE                             R5 R6
      142 RETURN                           R5 1
      143 GETTABLEKS                       R6 R2 K5 ["avatar"]
      145 JUMPIFNOT                        R6 ; [+177]
      146 NEWTABLE                         R6 0 0
      148 MOVE                             R8 R6
      149 GETUPVAL                         R9 0
      150 GETTABLEKS                       R9 R9 K7 ["createElement"]
      152 GETUPVAL                         R10 11
      153 GETTABLEKS                       R10 R10 K13 ["Provider"]
      155 CALL                             R9 1 -1
      156 FASTCALL                         TABLE_INSERT ; [+2]
      157 GETIMPORT                        R7 K21 [table.insert]
      159 CALL                             R7 -1 0
      160 GETUPVAL                         R7 12
      161 CALL                             R7 0 1
      162 JUMPIFNOT                        R7 ; [+12]
      163 MOVE                             R8 R6
      164 GETUPVAL                         R9 0
      165 GETTABLEKS                       R9 R9 K7 ["createElement"]
      167 GETUPVAL                         R10 13
      168 GETTABLEKS                       R10 R10 K13 ["Provider"]
      170 CALL                             R9 1 -1
      171 FASTCALL                         TABLE_INSERT ; [+2]
      172 GETIMPORT                        R7 K21 [table.insert]
      174 CALL                             R7 -1 0
      175 MOVE                             R8 R6
      176 GETUPVAL                         R9 0
      177 GETTABLEKS                       R9 R9 K7 ["createElement"]
      179 GETUPVAL                         R10 14
      180 DUPTABLE                         R11 K23 [{"root"}]
      181 GETTABLEKS                       R12 R2 K5 ["avatar"]
      183 GETTABLEKS                       R12 R12 K24 ["WorldModel"]
      185 SETTABLEKS                       R12 R11 K22 ["root"]
      187 CALL                             R9 2 -1
      188 FASTCALL                         TABLE_INSERT ; [+2]
      189 GETIMPORT                        R7 K21 [table.insert]
      191 CALL                             R7 -1 0
      192 MOVE                             R8 R6
      193 GETUPVAL                         R9 0
      194 GETTABLEKS                       R9 R9 K7 ["createElement"]
      196 GETUPVAL                         R10 15
      197 DUPTABLE                         R11 K23 [{"root"}]
      198 GETTABLEKS                       R12 R2 K5 ["avatar"]
      200 GETTABLEKS                       R12 R12 K24 ["WorldModel"]
      202 SETTABLEKS                       R12 R11 K22 ["root"]
      204 CALL                             R9 2 -1
      205 FASTCALL                         TABLE_INSERT ; [+2]
      206 GETIMPORT                        R7 K21 [table.insert]
      208 CALL                             R7 -1 0
      209 MOVE                             R8 R6
      210 GETUPVAL                         R9 0
      211 GETTABLEKS                       R9 R9 K7 ["createElement"]
      213 GETUPVAL                         R10 16
      214 CALL                             R9 1 -1
      215 FASTCALL                         TABLE_INSERT ; [+2]
      216 GETIMPORT                        R7 K21 [table.insert]
      218 CALL                             R7 -1 0
      219 MOVE                             R8 R6
      220 GETUPVAL                         R9 0
      221 GETTABLEKS                       R9 R9 K7 ["createElement"]
      223 GETUPVAL                         R10 17
      224 CALL                             R9 1 -1
      225 FASTCALL                         TABLE_INSERT ; [+2]
      226 GETIMPORT                        R7 K21 [table.insert]
      228 CALL                             R7 -1 0
      229 GETUPVAL                         R7 12
      230 CALL                             R7 0 1
      231 JUMPIFNOT                        R7 ; [+10]
      232 MOVE                             R8 R6
      233 GETUPVAL                         R9 0
      234 GETTABLEKS                       R9 R9 K7 ["createElement"]
      236 GETUPVAL                         R10 18
      237 CALL                             R9 1 -1
      238 FASTCALL                         TABLE_INSERT ; [+2]
      239 GETIMPORT                        R7 K21 [table.insert]
      241 CALL                             R7 -1 0
      242 GETUPVAL                         R7 12
      243 CALL                             R7 0 1
      244 JUMPIFNOT                        R7 ; [+15]
      245 GETUPVAL                         R7 19
      246 CALL                             R7 0 1
      247 JUMPIF                           R7 ; [+12]
      248 MOVE                             R8 R6
      249 GETUPVAL                         R9 0
      250 GETTABLEKS                       R9 R9 K7 ["createElement"]
      252 GETUPVAL                         R10 20
      253 GETTABLEKS                       R10 R10 K13 ["Provider"]
      255 CALL                             R9 1 -1
      256 FASTCALL                         TABLE_INSERT ; [+2]
      257 GETIMPORT                        R7 K21 [table.insert]
      259 CALL                             R7 -1 0
      260 GETUPVAL                         R7 12
      261 CALL                             R7 0 1
      262 JUMPIFNOT                        R7 ; [+28]
      263 GETUPVAL                         R7 21
      264 CALL                             R7 0 1
      265 JUMPIFNOT                        R7 ; [+13]
      266 MOVE                             R8 R6
      267 GETUPVAL                         R9 0
      268 GETTABLEKS                       R9 R9 K7 ["createElement"]
      270 GETUPVAL                         R10 22
      271 GETTABLEKS                       R10 R10 K13 ["Provider"]
      273 CALL                             R9 1 -1
      274 FASTCALL                         TABLE_INSERT ; [+2]
      275 GETIMPORT                        R7 K21 [table.insert]
      277 CALL                             R7 -1 0
      278 JUMP                             ; [+12]
      279 MOVE                             R8 R6
      280 GETUPVAL                         R9 0
      281 GETTABLEKS                       R9 R9 K7 ["createElement"]
      283 GETUPVAL                         R10 23
      284 GETTABLEKS                       R10 R10 K13 ["Provider"]
      286 CALL                             R9 1 -1
      287 FASTCALL                         TABLE_INSERT ; [+2]
      288 GETIMPORT                        R7 K21 [table.insert]
      290 CALL                             R7 -1 0
      291 GETUPVAL                         R7 0
      292 GETTABLEKS                       R7 R7 K7 ["createElement"]
      294 GETUPVAL                         R8 7
      295 DUPTABLE                         R9 K12 [{"providers"}]
      296 SETTABLEKS                       R6 R9 K11 ["providers"]
      298 GETUPVAL                         R10 0
      299 GETTABLEKS                       R10 R10 K7 ["createElement"]
      301 GETUPVAL                         R11 24
      302 DUPTABLE                         R12 K28 [{"Avatar", "IsSelected", "onBack"}]
      303 GETTABLEKS                       R13 R2 K5 ["avatar"]
      305 SETTABLEKS                       R13 R12 K25 ["Avatar"]
      307 GETTABLEKS                       R13 R2 K29 ["isSelected"]
      309 SETTABLEKS                       R13 R12 K26 ["IsSelected"]
      311 GETUPVAL                         R14 25
      312 CALL                             R14 0 1
      313 JUMPIFNOT                        R14 ; [+3]
      314 GETTABLEKS                       R13 R1 K30 ["clearAvatar"]
      316 JUMP                             ; [+1]
      317 LOADNIL                          R13
      318 SETTABLEKS                       R13 R12 K27 ["onBack"]
      320 CALL                             R10 2 -1
      321 CALL                             R7 -1 1
      322 MOVE                             R5 R7
      323 RETURN                           R5 1

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
      197 GETTABLEKS                       R22 R22 K31 ["getFFlagAvatarPreviewerAvatarScreenBack"]
      199 CALL                             R21 1 1
      200 GETIMPORT                        R22 K5 [require]
      202 GETTABLEKS                       R23 R0 K9 ["Src"]
      204 GETTABLEKS                       R23 R23 K29 ["Flags"]
      206 GETTABLEKS                       R23 R23 K32 ["getFFlagAvatarPreviewerLookComposer"]
      208 CALL                             R22 1 1
      209 GETIMPORT                        R23 K5 [require]
      211 GETTABLEKS                       R24 R0 K9 ["Src"]
      213 GETTABLEKS                       R24 R24 K29 ["Flags"]
      215 GETTABLEKS                       R24 R24 K33 ["getFFlagAvatarPreviewerStartFromAssetId"]
      217 CALL                             R23 1 1
      218 GETIMPORT                        R24 K5 [require]
      220 GETTABLEKS                       R25 R0 K9 ["Src"]
      222 GETTABLEKS                       R25 R25 K29 ["Flags"]
      224 GETTABLEKS                       R25 R25 K34 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      226 CALL                             R24 1 1
      227 GETIMPORT                        R25 K5 [require]
      229 GETTABLEKS                       R26 R0 K9 ["Src"]
      231 GETTABLEKS                       R26 R26 K35 ["Hooks"]
      233 GETTABLEKS                       R26 R26 K36 ["useAutoSetupState"]
      235 CALL                             R25 1 1
      236 GETIMPORT                        R26 K5 [require]
      238 GETTABLEKS                       R27 R0 K9 ["Src"]
      240 GETTABLEKS                       R27 R27 K35 ["Hooks"]
      242 GETTABLEKS                       R27 R27 K37 ["useMostRecentSelected"]
      244 CALL                             R26 1 1
      245 GETTABLEKS                       R27 R1 K38 ["ContextServices"]
      247 GETTABLEKS                       R27 R27 K39 ["Analytics"]
      249 DUPCLOSURE                       R28 K40 [PROTO_2]
      250 CAPTURE                          VAL R2
      251 CAPTURE                          VAL R10
      252 CAPTURE                          VAL R26
      253 CAPTURE                          VAL R25
      254 CAPTURE                          VAL R27
      255 CAPTURE                          VAL R6
      256 CAPTURE                          VAL R20
      257 CAPTURE                          VAL R19
      258 CAPTURE                          VAL R7
      259 CAPTURE                          VAL R4
      260 CAPTURE                          VAL R5
      261 CAPTURE                          VAL R12
      262 CAPTURE                          VAL R22
      263 CAPTURE                          VAL R13
      264 CAPTURE                          VAL R11
      265 CAPTURE                          VAL R8
      266 CAPTURE                          VAL R14
      267 CAPTURE                          VAL R9
      268 CAPTURE                          VAL R15
      269 CAPTURE                          VAL R23
      270 CAPTURE                          VAL R16
      271 CAPTURE                          VAL R24
      272 CAPTURE                          VAL R17
      273 CAPTURE                          VAL R18
      274 CAPTURE                          VAL R3
      275 CAPTURE                          VAL R21
      276 RETURN                           R28 1
