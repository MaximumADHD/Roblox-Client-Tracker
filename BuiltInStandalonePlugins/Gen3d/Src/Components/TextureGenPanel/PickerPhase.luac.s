PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canPick"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["canPick"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onModelChanged"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onModelChanged"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 2
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 GETTABLEKS                       R0 R0 K0 ["onConfirm"]
       10 GETUPVAL                         R1 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R6 0 1
       20 GETTABLEKS                       R7 R0 K4 ["canPick"]
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 0
       25 NEWTABLE                         R4 0 0
       27 GETTABLEKS                       R5 R0 K5 ["slots"]
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 DUPTABLE                         R12 K9 [{"status", "thumbnailContent", "errorMessage"}]
       33 GETTABLEKS                       R14 R9 K6 ["status"]
       35 JUMPIFNOTEQKS                    R14 K10 ["Downloading"] ; [+3]
       37 LOADK                            R13 K11 ["Generating"]
       38 JUMP                             ; [+2]
       39 GETTABLEKS                       R13 R9 K6 ["status"]
       41 SETTABLEKS                       R13 R12 K6 ["status"]
       43 GETTABLEKS                       R13 R9 K12 ["imageId"]
       45 SETTABLEKS                       R13 R12 K7 ["thumbnailContent"]
       47 GETTABLEKS                       R14 R9 K13 ["failureReason"]
       49 GETUPVAL                         R15 2
       50 GETTABLEKS                       R15 R15 K14 ["Gen3dTypes"]
       52 GETTABLEKS                       R15 R15 K15 ["Enums"]
       54 GETTABLEKS                       R15 R15 K16 ["FailureReason"]
       56 GETTABLEKS                       R15 R15 K17 ["GenerationModerated"]
       58 JUMPIFNOTEQ                      R14 R15 ; [+8]
       60 GETUPVAL                         R13 3
       61 MOVE                             R14 R1
       62 LOADK                            R15 K18 ["Common"]
       63 LOADK                            R16 K17 ["GenerationModerated"]
       64 LOADK                            R17 K19 ["Generation was moderated."]
       65 CALL                             R13 4 1
       66 JUMP                             ; [+2]
       67 GETTABLEKS                       R13 R9 K8 ["errorMessage"]
       69 SETTABLEKS                       R13 R12 K8 ["errorMessage"]
       71 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       73 MOVE                             R11 R4
       74 GETIMPORT                        R10 K22 [table.insert]
       76 CALL                             R10 2 0
       77 FORGLOOP                         R5 2 ; [-46]
       79 JUMPIFNOT                        R2 ; [+4]
       80 GETTABLEKS                       R6 R0 K5 ["slots"]
       82 GETTABLE                         R5 R6 R2
       83 JUMP                             ; [+1]
       84 LOADNIL                          R5
       85 GETTABLEKS                       R7 R0 K4 ["canPick"]
       87 NOT                              R6 R7
       88 JUMPIF                           R6 ; [+9]
       89 LOADB                            R6 1
       90 JUMPIFEQKNIL                     R5 ; [+7]
       92 GETTABLEKS                       R7 R5 K6 ["status"]
       94 JUMPIFNOTEQKS                    R7 K23 ["Ready"] ; [+2]
       96 LOADB                            R6 0 +1
       97 LOADB                            R6 1
       98 GETUPVAL                         R7 0
       99 GETTABLEKS                       R7 R7 K24 ["createElement"]
      101 GETUPVAL                         R8 4
      102 GETTABLEKS                       R8 R8 K25 ["View"]
      104 DUPTABLE                         R9 K28 [{["tag"] = "col size-full-0 auto-y gap-small"}]
      105 DUPTABLE                         R10 K31 [{"Preview", "Actions"}]
      106 GETUPVAL                         R11 0
      107 GETTABLEKS                       R11 R11 K24 ["createElement"]
      109 GETUPVAL                         R12 4
      110 GETTABLEKS                       R12 R12 K25 ["View"]
      112 DUPTABLE                         R13 K35 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y"}]
      113 DUPTABLE                         R14 K37 [{"Picker"}]
      114 GETUPVAL                         R15 0
      115 GETTABLEKS                       R15 R15 K24 ["createElement"]
      117 GETUPVAL                         R16 5
      118 DUPTABLE                         R17 K40 [{"slots", "selectedIndex", "onSelect"}]
      119 SETTABLEKS                       R4 R17 K5 ["slots"]
      121 SETTABLEKS                       R2 R17 K38 ["selectedIndex"]
      123 NEWCLOSURE                       R18 P1
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R3
      126 SETTABLEKS                       R18 R17 K39 ["onSelect"]
      128 CALL                             R15 2 1
      129 SETTABLEKS                       R15 R14 K36 ["Picker"]
      131 CALL                             R11 3 1
      132 SETTABLEKS                       R11 R10 K29 ["Preview"]
      134 GETUPVAL                         R11 0
      135 GETTABLEKS                       R11 R11 K24 ["createElement"]
      137 GETUPVAL                         R12 4
      138 GETTABLEKS                       R12 R12 K25 ["View"]
      140 DUPTABLE                         R13 K45 [{["LayoutOrder"] = 2, ["tag"] = "row size-full-0 auto-y gap-xsmall align-y-center", ["testId"] = "TextureGenPickerActions"}]
      141 DUPTABLE                         R14 K51 [{"Back", "Quality", "Spacer", "Cancel", "Generate"}]
      142 GETUPVAL                         R15 0
      143 GETTABLEKS                       R15 R15 K24 ["createElement"]
      145 GETUPVAL                         R16 4
      146 GETTABLEKS                       R16 R16 K52 ["IconButton"]
      148 DUPTABLE                         R17 K59 [{["LayoutOrder"] = 0, ["icon"], ["onActivated"], ["size"], ["variant"], ["testId"] = "TextureGenPickerBack"}]
      149 DUPTABLE                         R18 K61 [{"name"}]
      150 GETUPVAL                         R19 4
      151 GETTABLEKS                       R19 R19 K15 ["Enums"]
      153 GETTABLEKS                       R19 R19 K62 ["IconName"]
      155 GETTABLEKS                       R19 R19 K63 ["ChevronLargeLeft"]
      157 SETTABLEKS                       R19 R18 K60 ["name"]
      159 SETTABLEKS                       R18 R17 K54 ["icon"]
      161 GETTABLEKS                       R18 R0 K64 ["onBack"]
      163 JUMPIF                           R18 ; [+1]
      164 DUPCLOSURE                       R18 K65 [PROTO_2]
      165 SETTABLEKS                       R18 R17 K55 ["onActivated"]
      167 GETUPVAL                         R18 4
      168 GETTABLEKS                       R18 R18 K15 ["Enums"]
      170 GETTABLEKS                       R18 R18 K66 ["InputSize"]
      172 GETTABLEKS                       R18 R18 K67 ["Small"]
      174 SETTABLEKS                       R18 R17 K56 ["size"]
      176 GETUPVAL                         R18 4
      177 GETTABLEKS                       R18 R18 K15 ["Enums"]
      179 GETTABLEKS                       R18 R18 K68 ["ButtonVariant"]
      181 GETTABLEKS                       R18 R18 K69 ["Utility"]
      183 SETTABLEKS                       R18 R17 K57 ["variant"]
      185 CALL                             R15 2 1
      186 SETTABLEKS                       R15 R14 K46 ["Back"]
      188 GETUPVAL                         R15 0
      189 GETTABLEKS                       R15 R15 K24 ["createElement"]
      191 GETUPVAL                         R16 6
      192 DUPTABLE                         R17 K74 [{["LayoutOrder"] = 1, ["model"], ["onModelChanged"], ["disabled"], ["testId"] = "TextureGenPickerQuality"}]
      193 GETTABLEKS                       R18 R0 K70 ["model"]
      195 JUMPIF                           R18 ; [+5]
      196 GETUPVAL                         R18 2
      197 GETTABLEKS                       R18 R18 K75 ["Constants"]
      199 GETTABLEKS                       R18 R18 K76 ["DEFAULT_TEXTURE_GEN_MODEL"]
      201 SETTABLEKS                       R18 R17 K70 ["model"]
      203 NEWCLOSURE                       R18 P3
      204 CAPTURE                          VAL R0
      205 SETTABLEKS                       R18 R17 K71 ["onModelChanged"]
      207 GETTABLEKS                       R19 R0 K71 ["onModelChanged"]
      209 JUMPIFEQKNIL                     R19 ; [+2]
      211 LOADB                            R18 0 +1
      212 LOADB                            R18 1
      213 SETTABLEKS                       R18 R17 K72 ["disabled"]
      215 CALL                             R15 2 1
      216 SETTABLEKS                       R15 R14 K47 ["Quality"]
      218 GETUPVAL                         R15 0
      219 GETTABLEKS                       R15 R15 K24 ["createElement"]
      221 GETUPVAL                         R16 4
      222 GETTABLEKS                       R16 R16 K25 ["View"]
      224 DUPTABLE                         R17 K79 [{["LayoutOrder"] = 3, ["tag"] = "fill"}]
      225 CALL                             R15 2 1
      226 SETTABLEKS                       R15 R14 K48 ["Spacer"]
      228 GETUPVAL                         R15 0
      229 GETTABLEKS                       R15 R15 K24 ["createElement"]
      231 GETUPVAL                         R16 4
      232 GETTABLEKS                       R16 R16 K80 ["Button"]
      234 DUPTABLE                         R17 K84 [{["LayoutOrder"] = 4, ["text"], ["onActivated"], ["size"], ["variant"], ["testId"] = "TextureGenPickerCancel"}]
      235 GETUPVAL                         R18 3
      236 MOVE                             R19 R1
      237 LOADK                            R20 K18 ["Common"]
      238 LOADK                            R21 K49 ["Cancel"]
      239 LOADK                            R22 K49 ["Cancel"]
      240 CALL                             R18 4 1
      241 SETTABLEKS                       R18 R17 K82 ["text"]
      243 GETTABLEKS                       R18 R0 K85 ["onCancel"]
      245 JUMPIF                           R18 ; [+1]
      246 DUPCLOSURE                       R18 K86 [PROTO_4]
      247 SETTABLEKS                       R18 R17 K55 ["onActivated"]
      249 GETUPVAL                         R18 4
      250 GETTABLEKS                       R18 R18 K15 ["Enums"]
      252 GETTABLEKS                       R18 R18 K66 ["InputSize"]
      254 GETTABLEKS                       R18 R18 K87 ["XSmall"]
      256 SETTABLEKS                       R18 R17 K56 ["size"]
      258 GETUPVAL                         R18 4
      259 GETTABLEKS                       R18 R18 K15 ["Enums"]
      261 GETTABLEKS                       R18 R18 K68 ["ButtonVariant"]
      263 GETTABLEKS                       R18 R18 K88 ["Standard"]
      265 SETTABLEKS                       R18 R17 K57 ["variant"]
      267 CALL                             R15 2 1
      268 SETTABLEKS                       R15 R14 K49 ["Cancel"]
      270 GETUPVAL                         R15 0
      271 GETTABLEKS                       R15 R15 K24 ["createElement"]
      273 GETUPVAL                         R16 4
      274 GETTABLEKS                       R16 R16 K80 ["Button"]
      276 DUPTABLE                         R17 K92 [{["LayoutOrder"] = 6, ["text"], ["onActivated"], ["isDisabled"], ["size"], ["variant"], ["testId"] = "TextureGenPickerConfirm"}]
      277 LOADK                            R20 K93 ["TextureGen"]
      278 LOADK                            R21 K94 ["InputGenerateTexture"]
      279 NAMECALL                         R18 R1 K95 ["getText"]
      281 CALL                             R18 3 1
      282 SETTABLEKS                       R18 R17 K82 ["text"]
      284 NEWCLOSURE                       R18 P5
      285 CAPTURE                          VAL R6
      286 CAPTURE                          VAL R2
      287 CAPTURE                          VAL R3
      288 CAPTURE                          VAL R0
      289 SETTABLEKS                       R18 R17 K55 ["onActivated"]
      291 SETTABLEKS                       R6 R17 K90 ["isDisabled"]
      293 GETUPVAL                         R18 4
      294 GETTABLEKS                       R18 R18 K15 ["Enums"]
      296 GETTABLEKS                       R18 R18 K66 ["InputSize"]
      298 GETTABLEKS                       R18 R18 K87 ["XSmall"]
      300 SETTABLEKS                       R18 R17 K56 ["size"]
      302 GETUPVAL                         R18 4
      303 GETTABLEKS                       R18 R18 K15 ["Enums"]
      305 GETTABLEKS                       R18 R18 K68 ["ButtonVariant"]
      307 GETTABLEKS                       R18 R18 K96 ["Emphasis"]
      309 SETTABLEKS                       R18 R17 K57 ["variant"]
      311 CALL                             R15 2 1
      312 SETTABLEKS                       R15 R14 K50 ["Generate"]
      314 CALL                             R11 3 1
      315 SETTABLEKS                       R11 R10 K30 ["Actions"]
      317 CALL                             R7 3 -1
      318 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       30 GETTABLEKS                       R3 R3 K11 ["Localization"]
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R5 K12 ["Gen3dCore"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K13 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Types"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K15 ["Parent"]
       52 GETTABLEKS                       R7 R7 K16 ["ImagePreviewRow"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETIMPORT                        R8 K1 [script]
       59 GETTABLEKS                       R8 R8 K15 ["Parent"]
       61 GETTABLEKS                       R8 R8 K17 ["ModelMenu"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K13 ["Src"]
       68 GETTABLEKS                       R9 R9 K18 ["Util"]
       70 GETTABLEKS                       R9 R9 K19 ["getLocalizedTextOrDefault"]
       72 CALL                             R8 1 1
       73 DUPCLOSURE                       R9 K20 [PROTO_6]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R7
       81 RETURN                           R9 1
