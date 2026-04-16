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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
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
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K3 ["useEffect"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R6 0 0
       24 CALL                             R4 2 0
       25 GETUPVAL                         R4 5
       26 CALL                             R4 0 1
       27 JUMPIFNOT                        R4 ; [+19]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K3 ["useEffect"]
       31 NEWCLOSURE                       R5 P1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R1
       34 NEWTABLE                         R6 0 2
       36 MOVE                             R7 R1
       37 JUMPIFNOT                        R7 ; [+2]
       38 GETTABLEKS                       R7 R1 K1 ["autoSetupTarget"]
       40 MOVE                             R8 R1
       41 JUMPIFNOT                        R8 ; [+2]
       42 GETTABLEKS                       R8 R1 K4 ["avatar"]
       44 SETLIST                          R6 R7 2 [1]
       46 CALL                             R4 2 0
       47 LOADNIL                          R4
       48 GETTABLEKS                       R5 R0 K5 ["isRunning"]
       50 CALL                             R5 0 1
       51 JUMPIFNOT                        R5 ; [+7]
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R5 R6 K6 ["createElement"]
       55 GETUPVAL                         R6 6
       56 CALL                             R5 1 1
       57 MOVE                             R4 R5
       58 RETURN                           R4 1
       59 GETTABLEKS                       R6 R2 K7 ["state"]
       61 GETTABLEKS                       R5 R6 K8 ["type"]
       63 JUMPIFEQKS                       R5 K9 ["none"] ; [+71]
       65 GETUPVAL                         R5 7
       66 CALL                             R5 0 1
       67 JUMPIFNOT                        R5 ; [+43]
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R5 R6 K6 ["createElement"]
       71 GETUPVAL                         R6 8
       72 DUPTABLE                         R7 K11 [{"providers"}]
       73 NEWTABLE                         R8 0 1
       75 GETUPVAL                         R10 0
       76 GETTABLEKS                       R9 R10 K6 ["createElement"]
       78 GETUPVAL                         R11 9
       79 GETTABLEKS                       R10 R11 K12 ["Provider"]
       81 CALL                             R9 1 -1
       82 SETLIST                          R8 R9 -1 [1]
       84 SETTABLEKS                       R8 R7 K10 ["providers"]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R8 R9 K6 ["createElement"]
       89 GETUPVAL                         R9 10
       90 DUPTABLE                         R10 K17 [{"autoSetupState", "cancelAutoSetup", "startAutoSetup", "clearError"}]
       91 GETTABLEKS                       R11 R2 K7 ["state"]
       93 SETTABLEKS                       R11 R10 K13 ["autoSetupState"]
       95 GETTABLEKS                       R11 R2 K14 ["cancelAutoSetup"]
       97 SETTABLEKS                       R11 R10 K14 ["cancelAutoSetup"]
       99 GETTABLEKS                       R11 R2 K15 ["startAutoSetup"]
      101 SETTABLEKS                       R11 R10 K15 ["startAutoSetup"]
      103 GETTABLEKS                       R11 R2 K16 ["clearError"]
      105 SETTABLEKS                       R11 R10 K16 ["clearError"]
      107 CALL                             R8 2 -1
      108 CALL                             R5 -1 1
      109 MOVE                             R4 R5
      110 RETURN                           R4 1
      111 GETUPVAL                         R6 0
      112 GETTABLEKS                       R5 R6 K6 ["createElement"]
      114 GETUPVAL                         R6 10
      115 DUPTABLE                         R7 K17 [{"autoSetupState", "cancelAutoSetup", "startAutoSetup", "clearError"}]
      116 GETTABLEKS                       R8 R2 K7 ["state"]
      118 SETTABLEKS                       R8 R7 K13 ["autoSetupState"]
      120 GETTABLEKS                       R8 R2 K14 ["cancelAutoSetup"]
      122 SETTABLEKS                       R8 R7 K14 ["cancelAutoSetup"]
      124 GETTABLEKS                       R8 R2 K15 ["startAutoSetup"]
      126 SETTABLEKS                       R8 R7 K15 ["startAutoSetup"]
      128 GETTABLEKS                       R8 R2 K16 ["clearError"]
      130 SETTABLEKS                       R8 R7 K16 ["clearError"]
      132 CALL                             R5 2 1
      133 MOVE                             R4 R5
      134 RETURN                           R4 1
      135 JUMPIFNOTEQKNIL                  R1 ; [+8]
      137 GETUPVAL                         R6 0
      138 GETTABLEKS                       R5 R6 K6 ["createElement"]
      140 GETUPVAL                         R6 11
      141 CALL                             R5 1 1
      142 MOVE                             R4 R5
      143 RETURN                           R4 1
      144 GETTABLEKS                       R5 R1 K4 ["avatar"]
      146 JUMPIFNOT                        R5 ; [+143]
      147 GETUPVAL                         R6 0
      148 GETTABLEKS                       R5 R6 K6 ["createElement"]
      150 GETUPVAL                         R6 8
      151 DUPTABLE                         R7 K11 [{"providers"}]
      152 GETUPVAL                         R9 12
      153 CALL                             R9 0 1
      154 JUMPIFNOT                        R9 ; [+72]
      155 NEWTABLE                         R8 0 9
      157 GETUPVAL                         R10 0
      158 GETTABLEKS                       R9 R10 K6 ["createElement"]
      160 GETUPVAL                         R11 13
      161 GETTABLEKS                       R10 R11 K12 ["Provider"]
      163 CALL                             R9 1 1
      164 GETUPVAL                         R11 0
      165 GETTABLEKS                       R10 R11 K6 ["createElement"]
      167 GETUPVAL                         R12 14
      168 GETTABLEKS                       R11 R12 K12 ["Provider"]
      170 CALL                             R10 1 1
      171 GETUPVAL                         R12 0
      172 GETTABLEKS                       R11 R12 K6 ["createElement"]
      174 GETUPVAL                         R12 15
      175 DUPTABLE                         R13 K19 [{"root"}]
      176 GETTABLEKS                       R15 R1 K4 ["avatar"]
      178 GETTABLEKS                       R14 R15 K20 ["WorldModel"]
      180 SETTABLEKS                       R14 R13 K18 ["root"]
      182 CALL                             R11 2 1
      183 GETUPVAL                         R13 0
      184 GETTABLEKS                       R12 R13 K6 ["createElement"]
      186 GETUPVAL                         R13 16
      187 DUPTABLE                         R14 K19 [{"root"}]
      188 GETTABLEKS                       R16 R1 K4 ["avatar"]
      190 GETTABLEKS                       R15 R16 K20 ["WorldModel"]
      192 SETTABLEKS                       R15 R14 K18 ["root"]
      194 CALL                             R12 2 1
      195 GETUPVAL                         R14 0
      196 GETTABLEKS                       R13 R14 K6 ["createElement"]
      198 GETUPVAL                         R14 17
      199 CALL                             R13 1 1
      200 GETUPVAL                         R15 0
      201 GETTABLEKS                       R14 R15 K6 ["createElement"]
      203 GETUPVAL                         R15 18
      204 CALL                             R14 1 1
      205 GETUPVAL                         R16 0
      206 GETTABLEKS                       R15 R16 K6 ["createElement"]
      208 GETUPVAL                         R16 19
      209 CALL                             R15 1 1
      210 GETUPVAL                         R17 0
      211 GETTABLEKS                       R16 R17 K6 ["createElement"]
      213 GETUPVAL                         R18 20
      214 GETTABLEKS                       R17 R18 K12 ["Provider"]
      216 CALL                             R16 1 1
      217 GETUPVAL                         R18 0
      218 GETTABLEKS                       R17 R18 K6 ["createElement"]
      220 GETUPVAL                         R19 21
      221 GETTABLEKS                       R18 R19 K12 ["Provider"]
      223 CALL                             R17 1 -1
      224 SETLIST                          R8 R9 -1 [1]
      226 JUMP                             ; [+45]
      227 NEWTABLE                         R8 0 5
      229 GETUPVAL                         R10 0
      230 GETTABLEKS                       R9 R10 K6 ["createElement"]
      232 GETUPVAL                         R11 13
      233 GETTABLEKS                       R10 R11 K12 ["Provider"]
      235 CALL                             R9 1 1
      236 GETUPVAL                         R11 0
      237 GETTABLEKS                       R10 R11 K6 ["createElement"]
      239 GETUPVAL                         R11 15
      240 DUPTABLE                         R12 K19 [{"root"}]
      241 GETTABLEKS                       R14 R1 K4 ["avatar"]
      243 GETTABLEKS                       R13 R14 K20 ["WorldModel"]
      245 SETTABLEKS                       R13 R12 K18 ["root"]
      247 CALL                             R10 2 1
      248 GETUPVAL                         R12 0
      249 GETTABLEKS                       R11 R12 K6 ["createElement"]
      251 GETUPVAL                         R12 16
      252 DUPTABLE                         R13 K19 [{"root"}]
      253 GETTABLEKS                       R15 R1 K4 ["avatar"]
      255 GETTABLEKS                       R14 R15 K20 ["WorldModel"]
      257 SETTABLEKS                       R14 R13 K18 ["root"]
      259 CALL                             R11 2 1
      260 GETUPVAL                         R13 0
      261 GETTABLEKS                       R12 R13 K6 ["createElement"]
      263 GETUPVAL                         R13 17
      264 CALL                             R12 1 1
      265 GETUPVAL                         R14 0
      266 GETTABLEKS                       R13 R14 K6 ["createElement"]
      268 GETUPVAL                         R14 18
      269 CALL                             R13 1 -1
      270 SETLIST                          R8 R9 -1 [1]
      272 SETTABLEKS                       R8 R7 K10 ["providers"]
      274 GETUPVAL                         R9 0
      275 GETTABLEKS                       R8 R9 K6 ["createElement"]
      277 GETUPVAL                         R9 22
      278 DUPTABLE                         R10 K23 [{"Avatar", "IsSelected"}]
      279 GETTABLEKS                       R11 R1 K4 ["avatar"]
      281 SETTABLEKS                       R11 R10 K21 ["Avatar"]
      283 GETTABLEKS                       R11 R1 K24 ["isSelected"]
      285 SETTABLEKS                       R11 R10 K22 ["IsSelected"]
      287 CALL                             R8 2 -1
      288 CALL                             R5 -1 1
      289 MOVE                             R4 R5
      290 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Src"]
       25 GETTABLEKS                       R6 R7 K10 ["Components"]
       27 GETTABLEKS                       R5 R6 K11 ["Screens"]
       29 GETTABLEKS                       R4 R5 K12 ["AvatarScreen"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R8 R0 K9 ["Src"]
       36 GETTABLEKS                       R7 R8 K10 ["Components"]
       38 GETTABLEKS                       R6 R7 K11 ["Screens"]
       40 GETTABLEKS                       R5 R6 K13 ["AutoSetupScreen"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R9 R0 K9 ["Src"]
       47 GETTABLEKS                       R8 R9 K10 ["Components"]
       49 GETTABLEKS                       R7 R8 K11 ["Screens"]
       51 GETTABLEKS                       R6 R7 K14 ["SimpleSelectScreen"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Src"]
       58 GETTABLEKS                       R9 R10 K10 ["Components"]
       60 GETTABLEKS                       R8 R9 K11 ["Screens"]
       62 GETTABLEKS                       R7 R8 K15 ["TestingScreen"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R10 R0 K9 ["Src"]
       69 GETTABLEKS                       R9 R10 K10 ["Components"]
       71 GETTABLEKS                       R8 R9 K16 ["AutoSetupOptionsContext"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R11 R0 K9 ["Src"]
       78 GETTABLEKS                       R10 R11 K10 ["Components"]
       80 GETTABLEKS                       R9 R10 K17 ["EquipmentStateProvider"]
       82 CALL                             R8 1 1
       83 GETIMPORT                        R9 K5 [require]
       85 GETTABLEKS                       R12 R0 K9 ["Src"]
       87 GETTABLEKS                       R11 R12 K10 ["Components"]
       89 GETTABLEKS                       R10 R11 K18 ["OriginalLimbProvider"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K5 [require]
       94 GETTABLEKS                       R13 R0 K9 ["Src"]
       96 GETTABLEKS                       R12 R13 K10 ["Components"]
       98 GETTABLEKS                       R11 R12 K19 ["RunServiceContext"]
      100 CALL                             R10 1 1
      101 GETIMPORT                        R11 K5 [require]
      103 GETTABLEKS                       R14 R0 K9 ["Src"]
      105 GETTABLEKS                       R13 R14 K10 ["Components"]
      107 GETTABLEKS                       R12 R13 K20 ["SimpleSerializedStateProvider"]
      109 CALL                             R11 1 1
      110 GETIMPORT                        R12 K5 [require]
      112 GETTABLEKS                       R15 R0 K9 ["Src"]
      114 GETTABLEKS                       R14 R15 K10 ["Components"]
      116 GETTABLEKS                       R13 R14 K21 ["UserCatalogFolderContext"]
      118 CALL                             R12 1 1
      119 GETIMPORT                        R13 K5 [require]
      121 GETTABLEKS                       R16 R0 K9 ["Src"]
      123 GETTABLEKS                       R15 R16 K10 ["Components"]
      125 GETTABLEKS                       R14 R15 K22 ["MarketplaceCatalogFolderContext"]
      127 CALL                             R13 1 1
      128 GETIMPORT                        R14 K5 [require]
      130 GETTABLEKS                       R17 R0 K9 ["Src"]
      132 GETTABLEKS                       R16 R17 K10 ["Components"]
      134 GETTABLEKS                       R15 R16 K23 ["UserCatalogProvider"]
      136 CALL                             R14 1 1
      137 GETIMPORT                        R15 K5 [require]
      139 GETTABLEKS                       R18 R0 K9 ["Src"]
      141 GETTABLEKS                       R17 R18 K10 ["Components"]
      143 GETTABLEKS                       R16 R17 K24 ["MarketplaceCatalogProvider"]
      145 CALL                             R15 1 1
      146 GETIMPORT                        R16 K5 [require]
      148 GETTABLEKS                       R19 R0 K9 ["Src"]
      150 GETTABLEKS                       R18 R19 K10 ["Components"]
      152 GETTABLEKS                       R17 R18 K25 ["MarketplaceImportContext"]
      154 CALL                             R16 1 1
      155 GETIMPORT                        R17 K5 [require]
      157 GETTABLEKS                       R20 R0 K9 ["Src"]
      159 GETTABLEKS                       R19 R20 K10 ["Components"]
      161 GETTABLEKS                       R18 R19 K26 ["LookContext"]
      163 CALL                             R17 1 1
      164 GETIMPORT                        R18 K5 [require]
      166 GETTABLEKS                       R21 R0 K9 ["Src"]
      168 GETTABLEKS                       R20 R21 K10 ["Components"]
      170 GETTABLEKS                       R19 R20 K27 ["ContextStack"]
      172 CALL                             R18 1 1
      173 GETIMPORT                        R19 K5 [require]
      175 GETTABLEKS                       R22 R0 K9 ["Src"]
      177 GETTABLEKS                       R21 R22 K28 ["Flags"]
      179 GETTABLEKS                       R20 R21 K29 ["getFFlagAvatarAutosetupOptionsInput"]
      181 CALL                             R19 1 1
      182 GETIMPORT                        R20 K5 [require]
      184 GETTABLEKS                       R23 R0 K9 ["Src"]
      186 GETTABLEKS                       R22 R23 K28 ["Flags"]
      188 GETTABLEKS                       R21 R22 K30 ["getFFlagAvatarPreviewerLookComposer"]
      190 CALL                             R20 1 1
      191 GETIMPORT                        R21 K5 [require]
      193 GETTABLEKS                       R24 R0 K9 ["Src"]
      195 GETTABLEKS                       R23 R24 K28 ["Flags"]
      197 GETTABLEKS                       R22 R23 K31 ["getFFlagAvatarPreviewerSelectionChangedTelemetry"]
      199 CALL                             R21 1 1
      200 GETIMPORT                        R22 K5 [require]
      202 GETTABLEKS                       R25 R0 K9 ["Src"]
      204 GETTABLEKS                       R24 R25 K32 ["Hooks"]
      206 GETTABLEKS                       R23 R24 K33 ["useAutoSetupState"]
      208 CALL                             R22 1 1
      209 GETIMPORT                        R23 K5 [require]
      211 GETTABLEKS                       R26 R0 K9 ["Src"]
      213 GETTABLEKS                       R25 R26 K32 ["Hooks"]
      215 GETTABLEKS                       R24 R25 K34 ["useMostRecentSelected"]
      217 CALL                             R23 1 1
      218 GETTABLEKS                       R25 R1 K35 ["ContextServices"]
      220 GETTABLEKS                       R24 R25 K36 ["Analytics"]
      222 DUPCLOSURE                       R25 K37 [PROTO_2]
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R10
      225 CAPTURE                          VAL R23
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R24
      228 CAPTURE                          VAL R21
      229 CAPTURE                          VAL R6
      230 CAPTURE                          VAL R19
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R7
      233 CAPTURE                          VAL R4
      234 CAPTURE                          VAL R5
      235 CAPTURE                          VAL R20
      236 CAPTURE                          VAL R12
      237 CAPTURE                          VAL R13
      238 CAPTURE                          VAL R11
      239 CAPTURE                          VAL R8
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R9
      242 CAPTURE                          VAL R15
      243 CAPTURE                          VAL R16
      244 CAPTURE                          VAL R17
      245 CAPTURE                          VAL R3
      246 RETURN                           R25 1
