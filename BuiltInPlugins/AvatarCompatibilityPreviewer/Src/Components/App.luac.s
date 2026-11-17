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
       16 CALL                             R4 0 1
       17 GETUPVAL                         R5 5
       18 NAMECALL                         R5 R5 K3 ["use"]
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R5
       26 NEWTABLE                         R8 0 0
       28 CALL                             R6 2 0
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R2
       35 NEWTABLE                         R8 0 2
       37 MOVE                             R9 R2
       38 JUMPIFNOT                        R9 ; [+2]
       39 GETTABLEKS                       R9 R2 K2 ["autoSetupTarget"]
       41 MOVE                             R10 R2
       42 JUMPIFNOT                        R10 ; [+2]
       43 GETTABLEKS                       R10 R2 K5 ["avatar"]
       45 SETLIST                          R8 R9 2 [1]
       47 CALL                             R6 2 0
       48 LOADNIL                          R6
       49 GETTABLEKS                       R7 R0 K6 ["isRunning"]
       51 CALL                             R7 0 1
       52 JUMPIFNOT                        R7 ; [+7]
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K7 ["createElement"]
       56 GETUPVAL                         R8 6
       57 CALL                             R7 1 1
       58 MOVE                             R6 R7
       59 RETURN                           R6 1
       60 GETUPVAL                         R7 7
       61 CALL                             R7 0 1
       62 JUMPIFNOT                        R7 ; [+16]
       63 GETTABLEKS                       R7 R4 K8 ["state"]
       65 GETTABLEKS                       R7 R7 K9 ["type"]
       67 JUMPIFEQKS                       R7 K10 ["inactive"] ; [+11]
       69 GETUPVAL                         R7 0
       70 GETTABLEKS                       R7 R7 K7 ["createElement"]
       72 GETUPVAL                         R8 8
       73 DUPTABLE                         R9 K12 [{"avatarCreation"}]
       74 SETTABLEKS                       R4 R9 K11 ["avatarCreation"]
       76 CALL                             R7 2 1
       77 MOVE                             R6 R7
       78 RETURN                           R6 1
       79 GETTABLEKS                       R7 R3 K8 ["state"]
       81 GETTABLEKS                       R7 R7 K9 ["type"]
       83 JUMPIFEQKS                       R7 K13 ["none"] ; [+44]
       85 GETUPVAL                         R7 0
       86 GETTABLEKS                       R7 R7 K7 ["createElement"]
       88 GETUPVAL                         R8 9
       89 DUPTABLE                         R9 K15 [{"providers"}]
       90 NEWTABLE                         R10 0 1
       92 GETUPVAL                         R11 0
       93 GETTABLEKS                       R11 R11 K7 ["createElement"]
       95 GETUPVAL                         R12 10
       96 GETTABLEKS                       R12 R12 K16 ["Provider"]
       98 CALL                             R11 1 -1
       99 SETLIST                          R10 R11 -1 [1]
      101 SETTABLEKS                       R10 R9 K14 ["providers"]
      103 GETUPVAL                         R10 0
      104 GETTABLEKS                       R10 R10 K7 ["createElement"]
      106 GETUPVAL                         R11 11
      107 DUPTABLE                         R12 K21 [{"autoSetupState", "cancelAutoSetup", "startAutoSetup", "clearError"}]
      108 GETTABLEKS                       R13 R3 K8 ["state"]
      110 SETTABLEKS                       R13 R12 K17 ["autoSetupState"]
      112 GETTABLEKS                       R13 R3 K18 ["cancelAutoSetup"]
      114 SETTABLEKS                       R13 R12 K18 ["cancelAutoSetup"]
      116 GETTABLEKS                       R13 R3 K19 ["startAutoSetup"]
      118 SETTABLEKS                       R13 R12 K19 ["startAutoSetup"]
      120 GETTABLEKS                       R13 R3 K20 ["clearError"]
      122 SETTABLEKS                       R13 R12 K20 ["clearError"]
      124 CALL                             R10 2 -1
      125 CALL                             R7 -1 1
      126 MOVE                             R6 R7
      127 RETURN                           R6 1
      128 JUMPIFNOTEQKNIL                  R2 ; [+18]
      130 GETUPVAL                         R7 0
      131 GETTABLEKS                       R7 R7 K7 ["createElement"]
      133 GETUPVAL                         R8 12
      134 DUPTABLE                         R9 K23 [{"onOpenAvatarCreation"}]
      135 GETUPVAL                         R11 7
      136 CALL                             R11 0 1
      137 JUMPIFNOT                        R11 ; [+3]
      138 GETTABLEKS                       R10 R4 K24 ["open"]
      140 JUMP                             ; [+1]
      141 LOADNIL                          R10
      142 SETTABLEKS                       R10 R9 K22 ["onOpenAvatarCreation"]
      144 CALL                             R7 2 1
      145 MOVE                             R6 R7
      146 RETURN                           R6 1
      147 GETTABLEKS                       R7 R2 K5 ["avatar"]
      149 JUMPIFNOT                        R7 ; [+177]
      150 NEWTABLE                         R7 0 0
      152 MOVE                             R9 R7
      153 GETUPVAL                         R10 0
      154 GETTABLEKS                       R10 R10 K7 ["createElement"]
      156 GETUPVAL                         R11 13
      157 GETTABLEKS                       R11 R11 K16 ["Provider"]
      159 CALL                             R10 1 -1
      160 FASTCALL                         TABLE_INSERT ; [+2]
      161 GETIMPORT                        R8 K27 [table.insert]
      163 CALL                             R8 -1 0
      164 GETUPVAL                         R8 14
      165 CALL                             R8 0 1
      166 JUMPIFNOT                        R8 ; [+12]
      167 MOVE                             R9 R7
      168 GETUPVAL                         R10 0
      169 GETTABLEKS                       R10 R10 K7 ["createElement"]
      171 GETUPVAL                         R11 15
      172 GETTABLEKS                       R11 R11 K16 ["Provider"]
      174 CALL                             R10 1 -1
      175 FASTCALL                         TABLE_INSERT ; [+2]
      176 GETIMPORT                        R8 K27 [table.insert]
      178 CALL                             R8 -1 0
      179 MOVE                             R9 R7
      180 GETUPVAL                         R10 0
      181 GETTABLEKS                       R10 R10 K7 ["createElement"]
      183 GETUPVAL                         R11 16
      184 DUPTABLE                         R12 K29 [{"root"}]
      185 GETTABLEKS                       R13 R2 K5 ["avatar"]
      187 GETTABLEKS                       R13 R13 K30 ["WorldModel"]
      189 SETTABLEKS                       R13 R12 K28 ["root"]
      191 CALL                             R10 2 -1
      192 FASTCALL                         TABLE_INSERT ; [+2]
      193 GETIMPORT                        R8 K27 [table.insert]
      195 CALL                             R8 -1 0
      196 MOVE                             R9 R7
      197 GETUPVAL                         R10 0
      198 GETTABLEKS                       R10 R10 K7 ["createElement"]
      200 GETUPVAL                         R11 17
      201 DUPTABLE                         R12 K29 [{"root"}]
      202 GETTABLEKS                       R13 R2 K5 ["avatar"]
      204 GETTABLEKS                       R13 R13 K30 ["WorldModel"]
      206 SETTABLEKS                       R13 R12 K28 ["root"]
      208 CALL                             R10 2 -1
      209 FASTCALL                         TABLE_INSERT ; [+2]
      210 GETIMPORT                        R8 K27 [table.insert]
      212 CALL                             R8 -1 0
      213 MOVE                             R9 R7
      214 GETUPVAL                         R10 0
      215 GETTABLEKS                       R10 R10 K7 ["createElement"]
      217 GETUPVAL                         R11 18
      218 CALL                             R10 1 -1
      219 FASTCALL                         TABLE_INSERT ; [+2]
      220 GETIMPORT                        R8 K27 [table.insert]
      222 CALL                             R8 -1 0
      223 MOVE                             R9 R7
      224 GETUPVAL                         R10 0
      225 GETTABLEKS                       R10 R10 K7 ["createElement"]
      227 GETUPVAL                         R11 19
      228 CALL                             R10 1 -1
      229 FASTCALL                         TABLE_INSERT ; [+2]
      230 GETIMPORT                        R8 K27 [table.insert]
      232 CALL                             R8 -1 0
      233 GETUPVAL                         R8 14
      234 CALL                             R8 0 1
      235 JUMPIFNOT                        R8 ; [+10]
      236 MOVE                             R9 R7
      237 GETUPVAL                         R10 0
      238 GETTABLEKS                       R10 R10 K7 ["createElement"]
      240 GETUPVAL                         R11 20
      241 CALL                             R10 1 -1
      242 FASTCALL                         TABLE_INSERT ; [+2]
      243 GETIMPORT                        R8 K27 [table.insert]
      245 CALL                             R8 -1 0
      246 GETUPVAL                         R8 14
      247 CALL                             R8 0 1
      248 JUMPIFNOT                        R8 ; [+15]
      249 GETUPVAL                         R8 21
      250 CALL                             R8 0 1
      251 JUMPIF                           R8 ; [+12]
      252 MOVE                             R9 R7
      253 GETUPVAL                         R10 0
      254 GETTABLEKS                       R10 R10 K7 ["createElement"]
      256 GETUPVAL                         R11 22
      257 GETTABLEKS                       R11 R11 K16 ["Provider"]
      259 CALL                             R10 1 -1
      260 FASTCALL                         TABLE_INSERT ; [+2]
      261 GETIMPORT                        R8 K27 [table.insert]
      263 CALL                             R8 -1 0
      264 GETUPVAL                         R8 14
      265 CALL                             R8 0 1
      266 JUMPIFNOT                        R8 ; [+28]
      267 GETUPVAL                         R8 23
      268 CALL                             R8 0 1
      269 JUMPIFNOT                        R8 ; [+13]
      270 MOVE                             R9 R7
      271 GETUPVAL                         R10 0
      272 GETTABLEKS                       R10 R10 K7 ["createElement"]
      274 GETUPVAL                         R11 24
      275 GETTABLEKS                       R11 R11 K16 ["Provider"]
      277 CALL                             R10 1 -1
      278 FASTCALL                         TABLE_INSERT ; [+2]
      279 GETIMPORT                        R8 K27 [table.insert]
      281 CALL                             R8 -1 0
      282 JUMP                             ; [+12]
      283 MOVE                             R9 R7
      284 GETUPVAL                         R10 0
      285 GETTABLEKS                       R10 R10 K7 ["createElement"]
      287 GETUPVAL                         R11 25
      288 GETTABLEKS                       R11 R11 K16 ["Provider"]
      290 CALL                             R10 1 -1
      291 FASTCALL                         TABLE_INSERT ; [+2]
      292 GETIMPORT                        R8 K27 [table.insert]
      294 CALL                             R8 -1 0
      295 GETUPVAL                         R8 0
      296 GETTABLEKS                       R8 R8 K7 ["createElement"]
      298 GETUPVAL                         R9 9
      299 DUPTABLE                         R10 K15 [{"providers"}]
      300 SETTABLEKS                       R7 R10 K14 ["providers"]
      302 GETUPVAL                         R11 0
      303 GETTABLEKS                       R11 R11 K7 ["createElement"]
      305 GETUPVAL                         R12 26
      306 DUPTABLE                         R13 K34 [{"Avatar", "IsSelected", "onBack"}]
      307 GETTABLEKS                       R14 R2 K5 ["avatar"]
      309 SETTABLEKS                       R14 R13 K31 ["Avatar"]
      311 GETTABLEKS                       R14 R2 K35 ["isSelected"]
      313 SETTABLEKS                       R14 R13 K32 ["IsSelected"]
      315 GETUPVAL                         R15 27
      316 CALL                             R15 0 1
      317 JUMPIFNOT                        R15 ; [+3]
      318 GETTABLEKS                       R14 R1 K36 ["clearAvatar"]
      320 JUMP                             ; [+1]
      321 LOADNIL                          R14
      322 SETTABLEKS                       R14 R13 K33 ["onBack"]
      324 CALL                             R11 2 -1
      325 CALL                             R8 -1 1
      326 MOVE                             R6 R8
      327 RETURN                           R6 1

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
       29 GETTABLEKS                       R4 R4 K12 ["AvatarChatScreen"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Components"]
       38 GETTABLEKS                       R5 R5 K11 ["Screens"]
       40 GETTABLEKS                       R5 R5 K13 ["AvatarScreen"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Components"]
       49 GETTABLEKS                       R6 R6 K11 ["Screens"]
       51 GETTABLEKS                       R6 R6 K14 ["AutoSetupScreen"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K9 ["Src"]
       58 GETTABLEKS                       R7 R7 K10 ["Components"]
       60 GETTABLEKS                       R7 R7 K11 ["Screens"]
       62 GETTABLEKS                       R7 R7 K15 ["SimpleSelectScreen"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R8 R0 K9 ["Src"]
       69 GETTABLEKS                       R8 R8 K10 ["Components"]
       71 GETTABLEKS                       R8 R8 K11 ["Screens"]
       73 GETTABLEKS                       R8 R8 K16 ["TestingScreen"]
       75 CALL                             R7 1 1
       76 GETIMPORT                        R8 K5 [require]
       78 GETTABLEKS                       R9 R0 K9 ["Src"]
       80 GETTABLEKS                       R9 R9 K10 ["Components"]
       82 GETTABLEKS                       R9 R9 K17 ["AutoSetupOptionsContext"]
       84 CALL                             R8 1 1
       85 GETIMPORT                        R9 K5 [require]
       87 GETTABLEKS                       R10 R0 K9 ["Src"]
       89 GETTABLEKS                       R10 R10 K10 ["Components"]
       91 GETTABLEKS                       R10 R10 K18 ["EquipmentStateProvider"]
       93 CALL                             R9 1 1
       94 GETIMPORT                        R10 K5 [require]
       96 GETTABLEKS                       R11 R0 K9 ["Src"]
       98 GETTABLEKS                       R11 R11 K10 ["Components"]
      100 GETTABLEKS                       R11 R11 K19 ["OriginalLimbProvider"]
      102 CALL                             R10 1 1
      103 GETIMPORT                        R11 K5 [require]
      105 GETTABLEKS                       R12 R0 K9 ["Src"]
      107 GETTABLEKS                       R12 R12 K10 ["Components"]
      109 GETTABLEKS                       R12 R12 K20 ["RunServiceContext"]
      111 CALL                             R11 1 1
      112 GETIMPORT                        R12 K5 [require]
      114 GETTABLEKS                       R13 R0 K9 ["Src"]
      116 GETTABLEKS                       R13 R13 K10 ["Components"]
      118 GETTABLEKS                       R13 R13 K21 ["SimpleSerializedStateProvider"]
      120 CALL                             R12 1 1
      121 GETIMPORT                        R13 K5 [require]
      123 GETTABLEKS                       R14 R0 K9 ["Src"]
      125 GETTABLEKS                       R14 R14 K10 ["Components"]
      127 GETTABLEKS                       R14 R14 K22 ["UserCatalogFolderContext"]
      129 CALL                             R13 1 1
      130 GETIMPORT                        R14 K5 [require]
      132 GETTABLEKS                       R15 R0 K9 ["Src"]
      134 GETTABLEKS                       R15 R15 K10 ["Components"]
      136 GETTABLEKS                       R15 R15 K23 ["MarketplaceCatalogFolderContext"]
      138 CALL                             R14 1 1
      139 GETIMPORT                        R15 K5 [require]
      141 GETTABLEKS                       R16 R0 K9 ["Src"]
      143 GETTABLEKS                       R16 R16 K10 ["Components"]
      145 GETTABLEKS                       R16 R16 K24 ["UserCatalogProvider"]
      147 CALL                             R15 1 1
      148 GETIMPORT                        R16 K5 [require]
      150 GETTABLEKS                       R17 R0 K9 ["Src"]
      152 GETTABLEKS                       R17 R17 K10 ["Components"]
      154 GETTABLEKS                       R17 R17 K25 ["MarketplaceCatalogProvider"]
      156 CALL                             R16 1 1
      157 GETIMPORT                        R17 K5 [require]
      159 GETTABLEKS                       R18 R0 K9 ["Src"]
      161 GETTABLEKS                       R18 R18 K10 ["Components"]
      163 GETTABLEKS                       R18 R18 K26 ["DEPRECATED_MarketplaceImportContext"]
      165 CALL                             R17 1 1
      166 GETIMPORT                        R18 K5 [require]
      168 GETTABLEKS                       R19 R0 K9 ["Src"]
      170 GETTABLEKS                       R19 R19 K10 ["Components"]
      172 GETTABLEKS                       R19 R19 K27 ["LookContext"]
      174 CALL                             R18 1 1
      175 GETIMPORT                        R19 K5 [require]
      177 GETTABLEKS                       R20 R0 K9 ["Src"]
      179 GETTABLEKS                       R20 R20 K10 ["Components"]
      181 GETTABLEKS                       R20 R20 K28 ["DEPRECATED_LookContext"]
      183 CALL                             R19 1 1
      184 GETIMPORT                        R20 K5 [require]
      186 GETTABLEKS                       R21 R0 K9 ["Src"]
      188 GETTABLEKS                       R21 R21 K10 ["Components"]
      190 GETTABLEKS                       R21 R21 K29 ["ContextStack"]
      192 CALL                             R20 1 1
      193 GETIMPORT                        R21 K5 [require]
      195 GETTABLEKS                       R22 R0 K9 ["Src"]
      197 GETTABLEKS                       R22 R22 K30 ["Flags"]
      199 GETTABLEKS                       R22 R22 K31 ["getFFlagAvatarPreviewerAvatarCreation"]
      201 CALL                             R21 1 1
      202 GETIMPORT                        R22 K5 [require]
      204 GETTABLEKS                       R23 R0 K9 ["Src"]
      206 GETTABLEKS                       R23 R23 K30 ["Flags"]
      208 GETTABLEKS                       R23 R23 K32 ["getFFlagAvatarPreviewerAvatarScreenBack"]
      210 CALL                             R22 1 1
      211 GETIMPORT                        R23 K5 [require]
      213 GETTABLEKS                       R24 R0 K9 ["Src"]
      215 GETTABLEKS                       R24 R24 K30 ["Flags"]
      217 GETTABLEKS                       R24 R24 K33 ["getFFlagAvatarPreviewerLookComposer"]
      219 CALL                             R23 1 1
      220 GETIMPORT                        R24 K5 [require]
      222 GETTABLEKS                       R25 R0 K9 ["Src"]
      224 GETTABLEKS                       R25 R25 K30 ["Flags"]
      226 GETTABLEKS                       R25 R25 K34 ["getFFlagAvatarPreviewerStartFromAssetId"]
      228 CALL                             R24 1 1
      229 GETIMPORT                        R25 K5 [require]
      231 GETTABLEKS                       R26 R0 K9 ["Src"]
      233 GETTABLEKS                       R26 R26 K30 ["Flags"]
      235 GETTABLEKS                       R26 R26 K35 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      237 CALL                             R25 1 1
      238 GETIMPORT                        R26 K5 [require]
      240 GETTABLEKS                       R27 R0 K9 ["Src"]
      242 GETTABLEKS                       R27 R27 K36 ["Hooks"]
      244 GETTABLEKS                       R27 R27 K37 ["useAutoSetupState"]
      246 CALL                             R26 1 1
      247 GETIMPORT                        R27 K5 [require]
      249 GETTABLEKS                       R28 R0 K9 ["Src"]
      251 GETTABLEKS                       R28 R28 K36 ["Hooks"]
      253 GETTABLEKS                       R28 R28 K38 ["useAvatarCreationState"]
      255 CALL                             R27 1 1
      256 GETIMPORT                        R28 K5 [require]
      258 GETTABLEKS                       R29 R0 K9 ["Src"]
      260 GETTABLEKS                       R29 R29 K36 ["Hooks"]
      262 GETTABLEKS                       R29 R29 K39 ["useMostRecentSelected"]
      264 CALL                             R28 1 1
      265 GETTABLEKS                       R29 R1 K40 ["ContextServices"]
      267 GETTABLEKS                       R29 R29 K41 ["Analytics"]
      269 DUPCLOSURE                       R30 K42 [PROTO_2]
      270 CAPTURE                          VAL R2
      271 CAPTURE                          VAL R11
      272 CAPTURE                          VAL R28
      273 CAPTURE                          VAL R26
      274 CAPTURE                          VAL R27
      275 CAPTURE                          VAL R29
      276 CAPTURE                          VAL R7
      277 CAPTURE                          VAL R21
      278 CAPTURE                          VAL R3
      279 CAPTURE                          VAL R20
      280 CAPTURE                          VAL R8
      281 CAPTURE                          VAL R5
      282 CAPTURE                          VAL R6
      283 CAPTURE                          VAL R13
      284 CAPTURE                          VAL R23
      285 CAPTURE                          VAL R14
      286 CAPTURE                          VAL R12
      287 CAPTURE                          VAL R9
      288 CAPTURE                          VAL R15
      289 CAPTURE                          VAL R10
      290 CAPTURE                          VAL R16
      291 CAPTURE                          VAL R24
      292 CAPTURE                          VAL R17
      293 CAPTURE                          VAL R25
      294 CAPTURE                          VAL R18
      295 CAPTURE                          VAL R19
      296 CAPTURE                          VAL R4
      297 CAPTURE                          VAL R22
      298 RETURN                           R30 1
