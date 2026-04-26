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
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K3 ["useEffect"]
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
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R5 R6 K6 ["createElement"]
       52 GETUPVAL                         R6 5
       53 CALL                             R5 1 1
       54 MOVE                             R4 R5
       55 RETURN                           R4 1
       56 GETTABLEKS                       R6 R2 K7 ["state"]
       58 GETTABLEKS                       R5 R6 K8 ["type"]
       60 JUMPIFEQKS                       R5 K9 ["none"] ; [+71]
       62 GETUPVAL                         R5 6
       63 CALL                             R5 0 1
       64 JUMPIFNOT                        R5 ; [+43]
       65 GETUPVAL                         R6 0
       66 GETTABLEKS                       R5 R6 K6 ["createElement"]
       68 GETUPVAL                         R6 7
       69 DUPTABLE                         R7 K11 [{"providers"}]
       70 NEWTABLE                         R8 0 1
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R9 R10 K6 ["createElement"]
       75 GETUPVAL                         R11 8
       76 GETTABLEKS                       R10 R11 K12 ["Provider"]
       78 CALL                             R9 1 -1
       79 SETLIST                          R8 R9 -1 [1]
       81 SETTABLEKS                       R8 R7 K10 ["providers"]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R8 R9 K6 ["createElement"]
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
      108 GETUPVAL                         R6 0
      109 GETTABLEKS                       R5 R6 K6 ["createElement"]
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
      134 GETUPVAL                         R6 0
      135 GETTABLEKS                       R5 R6 K6 ["createElement"]
      137 GETUPVAL                         R6 10
      138 CALL                             R5 1 1
      139 MOVE                             R4 R5
      140 RETURN                           R4 1
      141 GETTABLEKS                       R5 R1 K4 ["avatar"]
      143 JUMPIFNOT                        R5 ; [+143]
      144 GETUPVAL                         R6 0
      145 GETTABLEKS                       R5 R6 K6 ["createElement"]
      147 GETUPVAL                         R6 7
      148 DUPTABLE                         R7 K11 [{"providers"}]
      149 GETUPVAL                         R9 11
      150 CALL                             R9 0 1
      151 JUMPIFNOT                        R9 ; [+72]
      152 NEWTABLE                         R8 0 9
      154 GETUPVAL                         R10 0
      155 GETTABLEKS                       R9 R10 K6 ["createElement"]
      157 GETUPVAL                         R11 12
      158 GETTABLEKS                       R10 R11 K12 ["Provider"]
      160 CALL                             R9 1 1
      161 GETUPVAL                         R11 0
      162 GETTABLEKS                       R10 R11 K6 ["createElement"]
      164 GETUPVAL                         R12 13
      165 GETTABLEKS                       R11 R12 K12 ["Provider"]
      167 CALL                             R10 1 1
      168 GETUPVAL                         R12 0
      169 GETTABLEKS                       R11 R12 K6 ["createElement"]
      171 GETUPVAL                         R12 14
      172 DUPTABLE                         R13 K19 [{"root"}]
      173 GETTABLEKS                       R15 R1 K4 ["avatar"]
      175 GETTABLEKS                       R14 R15 K20 ["WorldModel"]
      177 SETTABLEKS                       R14 R13 K18 ["root"]
      179 CALL                             R11 2 1
      180 GETUPVAL                         R13 0
      181 GETTABLEKS                       R12 R13 K6 ["createElement"]
      183 GETUPVAL                         R13 15
      184 DUPTABLE                         R14 K19 [{"root"}]
      185 GETTABLEKS                       R16 R1 K4 ["avatar"]
      187 GETTABLEKS                       R15 R16 K20 ["WorldModel"]
      189 SETTABLEKS                       R15 R14 K18 ["root"]
      191 CALL                             R12 2 1
      192 GETUPVAL                         R14 0
      193 GETTABLEKS                       R13 R14 K6 ["createElement"]
      195 GETUPVAL                         R14 16
      196 CALL                             R13 1 1
      197 GETUPVAL                         R15 0
      198 GETTABLEKS                       R14 R15 K6 ["createElement"]
      200 GETUPVAL                         R15 17
      201 CALL                             R14 1 1
      202 GETUPVAL                         R16 0
      203 GETTABLEKS                       R15 R16 K6 ["createElement"]
      205 GETUPVAL                         R16 18
      206 CALL                             R15 1 1
      207 GETUPVAL                         R17 0
      208 GETTABLEKS                       R16 R17 K6 ["createElement"]
      210 GETUPVAL                         R18 19
      211 GETTABLEKS                       R17 R18 K12 ["Provider"]
      213 CALL                             R16 1 1
      214 GETUPVAL                         R18 0
      215 GETTABLEKS                       R17 R18 K6 ["createElement"]
      217 GETUPVAL                         R19 20
      218 GETTABLEKS                       R18 R19 K12 ["Provider"]
      220 CALL                             R17 1 -1
      221 SETLIST                          R8 R9 -1 [1]
      223 JUMP                             ; [+45]
      224 NEWTABLE                         R8 0 5
      226 GETUPVAL                         R10 0
      227 GETTABLEKS                       R9 R10 K6 ["createElement"]
      229 GETUPVAL                         R11 12
      230 GETTABLEKS                       R10 R11 K12 ["Provider"]
      232 CALL                             R9 1 1
      233 GETUPVAL                         R11 0
      234 GETTABLEKS                       R10 R11 K6 ["createElement"]
      236 GETUPVAL                         R11 14
      237 DUPTABLE                         R12 K19 [{"root"}]
      238 GETTABLEKS                       R14 R1 K4 ["avatar"]
      240 GETTABLEKS                       R13 R14 K20 ["WorldModel"]
      242 SETTABLEKS                       R13 R12 K18 ["root"]
      244 CALL                             R10 2 1
      245 GETUPVAL                         R12 0
      246 GETTABLEKS                       R11 R12 K6 ["createElement"]
      248 GETUPVAL                         R12 15
      249 DUPTABLE                         R13 K19 [{"root"}]
      250 GETTABLEKS                       R15 R1 K4 ["avatar"]
      252 GETTABLEKS                       R14 R15 K20 ["WorldModel"]
      254 SETTABLEKS                       R14 R13 K18 ["root"]
      256 CALL                             R11 2 1
      257 GETUPVAL                         R13 0
      258 GETTABLEKS                       R12 R13 K6 ["createElement"]
      260 GETUPVAL                         R13 16
      261 CALL                             R12 1 1
      262 GETUPVAL                         R14 0
      263 GETTABLEKS                       R13 R14 K6 ["createElement"]
      265 GETUPVAL                         R14 17
      266 CALL                             R13 1 -1
      267 SETLIST                          R8 R9 -1 [1]
      269 SETTABLEKS                       R8 R7 K10 ["providers"]
      271 GETUPVAL                         R9 0
      272 GETTABLEKS                       R8 R9 K6 ["createElement"]
      274 GETUPVAL                         R9 21
      275 DUPTABLE                         R10 K23 [{"Avatar", "IsSelected"}]
      276 GETTABLEKS                       R11 R1 K4 ["avatar"]
      278 SETTABLEKS                       R11 R10 K21 ["Avatar"]
      280 GETTABLEKS                       R11 R1 K24 ["isSelected"]
      282 SETTABLEKS                       R11 R10 K22 ["IsSelected"]
      284 CALL                             R8 2 -1
      285 CALL                             R5 -1 1
      286 MOVE                             R4 R5
      287 RETURN                           R4 1

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
      195 GETTABLEKS                       R23 R24 K31 ["Hooks"]
      197 GETTABLEKS                       R22 R23 K32 ["useAutoSetupState"]
      199 CALL                             R21 1 1
      200 GETIMPORT                        R22 K5 [require]
      202 GETTABLEKS                       R25 R0 K9 ["Src"]
      204 GETTABLEKS                       R24 R25 K31 ["Hooks"]
      206 GETTABLEKS                       R23 R24 K33 ["useMostRecentSelected"]
      208 CALL                             R22 1 1
      209 GETTABLEKS                       R24 R1 K34 ["ContextServices"]
      211 GETTABLEKS                       R23 R24 K35 ["Analytics"]
      213 DUPCLOSURE                       R24 K36 [PROTO_2]
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R22
      217 CAPTURE                          VAL R21
      218 CAPTURE                          VAL R23
      219 CAPTURE                          VAL R6
      220 CAPTURE                          VAL R19
      221 CAPTURE                          VAL R18
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R4
      224 CAPTURE                          VAL R5
      225 CAPTURE                          VAL R20
      226 CAPTURE                          VAL R12
      227 CAPTURE                          VAL R13
      228 CAPTURE                          VAL R11
      229 CAPTURE                          VAL R8
      230 CAPTURE                          VAL R14
      231 CAPTURE                          VAL R9
      232 CAPTURE                          VAL R15
      233 CAPTURE                          VAL R16
      234 CAPTURE                          VAL R17
      235 CAPTURE                          VAL R3
      236 RETURN                           R24 1
