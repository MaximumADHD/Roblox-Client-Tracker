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
       62 JUMPIFEQKS                       R6 K10 ["none"] ; [+44]
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R6 R6 K7 ["createElement"]
       67 GETUPVAL                         R7 6
       68 DUPTABLE                         R8 K12 [{"providers"}]
       69 NEWTABLE                         R9 0 1
       71 GETUPVAL                         R10 0
       72 GETTABLEKS                       R10 R10 K7 ["createElement"]
       74 GETUPVAL                         R11 7
       75 GETTABLEKS                       R11 R11 K13 ["Provider"]
       77 CALL                             R10 1 -1
       78 SETLIST                          R9 R10 -1 [1]
       80 SETTABLEKS                       R9 R8 K11 ["providers"]
       82 GETUPVAL                         R9 0
       83 GETTABLEKS                       R9 R9 K7 ["createElement"]
       85 GETUPVAL                         R10 8
       86 DUPTABLE                         R11 K18 [{"autoSetupState", "cancelAutoSetup", "startAutoSetup", "clearError"}]
       87 GETTABLEKS                       R12 R3 K8 ["state"]
       89 SETTABLEKS                       R12 R11 K14 ["autoSetupState"]
       91 GETTABLEKS                       R12 R3 K15 ["cancelAutoSetup"]
       93 SETTABLEKS                       R12 R11 K15 ["cancelAutoSetup"]
       95 GETTABLEKS                       R12 R3 K16 ["startAutoSetup"]
       97 SETTABLEKS                       R12 R11 K16 ["startAutoSetup"]
       99 GETTABLEKS                       R12 R3 K17 ["clearError"]
      101 SETTABLEKS                       R12 R11 K17 ["clearError"]
      103 CALL                             R9 2 -1
      104 CALL                             R6 -1 1
      105 MOVE                             R5 R6
      106 RETURN                           R5 1
      107 JUMPIFNOTEQKNIL                  R2 ; [+8]
      109 GETUPVAL                         R6 0
      110 GETTABLEKS                       R6 R6 K7 ["createElement"]
      112 GETUPVAL                         R7 9
      113 CALL                             R6 1 1
      114 MOVE                             R5 R6
      115 RETURN                           R5 1
      116 GETTABLEKS                       R6 R2 K5 ["avatar"]
      118 JUMPIFNOT                        R6 ; [+177]
      119 NEWTABLE                         R6 0 0
      121 MOVE                             R8 R6
      122 GETUPVAL                         R9 0
      123 GETTABLEKS                       R9 R9 K7 ["createElement"]
      125 GETUPVAL                         R10 10
      126 GETTABLEKS                       R10 R10 K13 ["Provider"]
      128 CALL                             R9 1 -1
      129 FASTCALL                         TABLE_INSERT ; [+2]
      130 GETIMPORT                        R7 K21 [table.insert]
      132 CALL                             R7 -1 0
      133 GETUPVAL                         R7 11
      134 CALL                             R7 0 1
      135 JUMPIFNOT                        R7 ; [+12]
      136 MOVE                             R8 R6
      137 GETUPVAL                         R9 0
      138 GETTABLEKS                       R9 R9 K7 ["createElement"]
      140 GETUPVAL                         R10 12
      141 GETTABLEKS                       R10 R10 K13 ["Provider"]
      143 CALL                             R9 1 -1
      144 FASTCALL                         TABLE_INSERT ; [+2]
      145 GETIMPORT                        R7 K21 [table.insert]
      147 CALL                             R7 -1 0
      148 MOVE                             R8 R6
      149 GETUPVAL                         R9 0
      150 GETTABLEKS                       R9 R9 K7 ["createElement"]
      152 GETUPVAL                         R10 13
      153 DUPTABLE                         R11 K23 [{"root"}]
      154 GETTABLEKS                       R12 R2 K5 ["avatar"]
      156 GETTABLEKS                       R12 R12 K24 ["WorldModel"]
      158 SETTABLEKS                       R12 R11 K22 ["root"]
      160 CALL                             R9 2 -1
      161 FASTCALL                         TABLE_INSERT ; [+2]
      162 GETIMPORT                        R7 K21 [table.insert]
      164 CALL                             R7 -1 0
      165 MOVE                             R8 R6
      166 GETUPVAL                         R9 0
      167 GETTABLEKS                       R9 R9 K7 ["createElement"]
      169 GETUPVAL                         R10 14
      170 DUPTABLE                         R11 K23 [{"root"}]
      171 GETTABLEKS                       R12 R2 K5 ["avatar"]
      173 GETTABLEKS                       R12 R12 K24 ["WorldModel"]
      175 SETTABLEKS                       R12 R11 K22 ["root"]
      177 CALL                             R9 2 -1
      178 FASTCALL                         TABLE_INSERT ; [+2]
      179 GETIMPORT                        R7 K21 [table.insert]
      181 CALL                             R7 -1 0
      182 MOVE                             R8 R6
      183 GETUPVAL                         R9 0
      184 GETTABLEKS                       R9 R9 K7 ["createElement"]
      186 GETUPVAL                         R10 15
      187 CALL                             R9 1 -1
      188 FASTCALL                         TABLE_INSERT ; [+2]
      189 GETIMPORT                        R7 K21 [table.insert]
      191 CALL                             R7 -1 0
      192 MOVE                             R8 R6
      193 GETUPVAL                         R9 0
      194 GETTABLEKS                       R9 R9 K7 ["createElement"]
      196 GETUPVAL                         R10 16
      197 CALL                             R9 1 -1
      198 FASTCALL                         TABLE_INSERT ; [+2]
      199 GETIMPORT                        R7 K21 [table.insert]
      201 CALL                             R7 -1 0
      202 GETUPVAL                         R7 11
      203 CALL                             R7 0 1
      204 JUMPIFNOT                        R7 ; [+10]
      205 MOVE                             R8 R6
      206 GETUPVAL                         R9 0
      207 GETTABLEKS                       R9 R9 K7 ["createElement"]
      209 GETUPVAL                         R10 17
      210 CALL                             R9 1 -1
      211 FASTCALL                         TABLE_INSERT ; [+2]
      212 GETIMPORT                        R7 K21 [table.insert]
      214 CALL                             R7 -1 0
      215 GETUPVAL                         R7 11
      216 CALL                             R7 0 1
      217 JUMPIFNOT                        R7 ; [+15]
      218 GETUPVAL                         R7 18
      219 CALL                             R7 0 1
      220 JUMPIF                           R7 ; [+12]
      221 MOVE                             R8 R6
      222 GETUPVAL                         R9 0
      223 GETTABLEKS                       R9 R9 K7 ["createElement"]
      225 GETUPVAL                         R10 19
      226 GETTABLEKS                       R10 R10 K13 ["Provider"]
      228 CALL                             R9 1 -1
      229 FASTCALL                         TABLE_INSERT ; [+2]
      230 GETIMPORT                        R7 K21 [table.insert]
      232 CALL                             R7 -1 0
      233 GETUPVAL                         R7 11
      234 CALL                             R7 0 1
      235 JUMPIFNOT                        R7 ; [+28]
      236 GETUPVAL                         R7 20
      237 CALL                             R7 0 1
      238 JUMPIFNOT                        R7 ; [+13]
      239 MOVE                             R8 R6
      240 GETUPVAL                         R9 0
      241 GETTABLEKS                       R9 R9 K7 ["createElement"]
      243 GETUPVAL                         R10 21
      244 GETTABLEKS                       R10 R10 K13 ["Provider"]
      246 CALL                             R9 1 -1
      247 FASTCALL                         TABLE_INSERT ; [+2]
      248 GETIMPORT                        R7 K21 [table.insert]
      250 CALL                             R7 -1 0
      251 JUMP                             ; [+12]
      252 MOVE                             R8 R6
      253 GETUPVAL                         R9 0
      254 GETTABLEKS                       R9 R9 K7 ["createElement"]
      256 GETUPVAL                         R10 22
      257 GETTABLEKS                       R10 R10 K13 ["Provider"]
      259 CALL                             R9 1 -1
      260 FASTCALL                         TABLE_INSERT ; [+2]
      261 GETIMPORT                        R7 K21 [table.insert]
      263 CALL                             R7 -1 0
      264 GETUPVAL                         R7 0
      265 GETTABLEKS                       R7 R7 K7 ["createElement"]
      267 GETUPVAL                         R8 6
      268 DUPTABLE                         R9 K12 [{"providers"}]
      269 SETTABLEKS                       R6 R9 K11 ["providers"]
      271 GETUPVAL                         R10 0
      272 GETTABLEKS                       R10 R10 K7 ["createElement"]
      274 GETUPVAL                         R11 23
      275 DUPTABLE                         R12 K28 [{"Avatar", "IsSelected", "onBack"}]
      276 GETTABLEKS                       R13 R2 K5 ["avatar"]
      278 SETTABLEKS                       R13 R12 K25 ["Avatar"]
      280 GETTABLEKS                       R13 R2 K29 ["isSelected"]
      282 SETTABLEKS                       R13 R12 K26 ["IsSelected"]
      284 GETUPVAL                         R14 24
      285 CALL                             R14 0 1
      286 JUMPIFNOT                        R14 ; [+3]
      287 GETTABLEKS                       R13 R1 K30 ["clearAvatar"]
      289 JUMP                             ; [+1]
      290 LOADNIL                          R13
      291 SETTABLEKS                       R13 R12 K27 ["onBack"]
      293 CALL                             R10 2 -1
      294 CALL                             R7 -1 1
      295 MOVE                             R5 R7
      296 RETURN                           R5 1

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
      188 GETTABLEKS                       R21 R21 K30 ["getFFlagAvatarPreviewerAvatarScreenBack"]
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
      247 CAPTURE                          VAL R19
      248 CAPTURE                          VAL R7
      249 CAPTURE                          VAL R4
      250 CAPTURE                          VAL R5
      251 CAPTURE                          VAL R12
      252 CAPTURE                          VAL R21
      253 CAPTURE                          VAL R13
      254 CAPTURE                          VAL R11
      255 CAPTURE                          VAL R8
      256 CAPTURE                          VAL R14
      257 CAPTURE                          VAL R9
      258 CAPTURE                          VAL R15
      259 CAPTURE                          VAL R22
      260 CAPTURE                          VAL R16
      261 CAPTURE                          VAL R23
      262 CAPTURE                          VAL R17
      263 CAPTURE                          VAL R18
      264 CAPTURE                          VAL R3
      265 CAPTURE                          VAL R20
      266 RETURN                           R27 1
