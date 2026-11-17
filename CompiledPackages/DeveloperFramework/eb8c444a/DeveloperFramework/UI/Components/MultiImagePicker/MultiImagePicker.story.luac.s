PROTO_0:
        0 NEWTABLE                         R0 0 3
        2 LOADK                            R1 K0 ["jpg"]
        3 LOADK                            R2 K1 ["jpeg"]
        4 LOADK                            R3 K2 ["png"]
        5 SETLIST                          R0 R1 3 [1]
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K3 ["PromptImportFiles"]
       11 CALL                             R1 2 1
       12 NEWTABLE                         R2 0 0
       14 NEWTABLE                         R3 0 0
       16 JUMPIFNOT                        R1 ; [+43]
       17 LENGTH                           R4 R1
       18 LOADN                            R5 0
       19 JUMPIFNOTLT                      R5 R4 ; [+40]
       21 GETIMPORT                        R4 K5 [ipairs]
       23 MOVE                             R5 R1
       24 CALL                             R4 1 3
       25 FORGPREP_INEXT                   R4
       26 GETTABLEKS                       R9 R8 K6 ["Size"]
       28 GETUPVAL                         R10 1
       29 JUMPIFNOTLT                      R10 R9 ; [+10]
       31 GETTABLEKS                       R11 R8 K7 ["Name"]
       33 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       35 MOVE                             R10 R2
       36 GETIMPORT                        R9 K10 [table.insert]
       38 CALL                             R9 2 0
       39 JUMP                             ; [+7]
       40 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       42 MOVE                             R10 R3
       43 MOVE                             R11 R8
       44 GETIMPORT                        R9 K10 [table.insert]
       46 CALL                             R9 2 0
       47 FORGLOOP                         R4 2 [inext] ; [-22]
       49 GETIMPORT                        R4 K12 [next]
       51 MOVE                             R5 R2
       52 CALL                             R4 1 1
       53 JUMPIFEQKNIL                     R4 ; [+5]
       55 GETIMPORT                        R4 K14 [print]
       57 LOADK                            R5 K15 ["thumbnail rejected"]
       58 CALL                             R4 1 0
       59 RETURN                           R3 1
       60 LOADNIL                          R4
       61 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+40]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 NEWTABLE                         R4 0 0
       12 CALL                             R2 2 1
       13 GETIMPORT                        R3 K1 [pairs]
       15 MOVE                             R4 R0
       16 CALL                             R3 1 3
       17 FORGPREP_NEXT                    R3
       18 NAMECALL                         R8 R7 K2 ["GetTemporaryId"]
       20 CALL                             R8 1 1
       21 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       23 MOVE                             R10 R2
       24 MOVE                             R11 R8
       25 GETIMPORT                        R9 K5 [table.insert]
       27 CALL                             R9 2 0
       28 DUPTABLE                         R9 K8 [{"asset", "tempId"}]
       29 SETTABLEKS                       R7 R9 K6 ["asset"]
       31 SETTABLEKS                       R8 R9 K7 ["tempId"]
       33 SETTABLE                         R9 R1 R8
       34 FORGLOOP                         R3 2 ; [-17]
       36 SETUPVAL                         R1 2
       37 SETUPVAL                         R2 4
       38 GETIMPORT                        R3 K10 [print]
       40 LOADK                            R4 K11 ["thumbnail state now is:"]
       41 GETUPVAL                         R5 2
       42 CALL                             R3 2 0
       43 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["thumbnails changed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["thumbnail order changed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 JUMPIFEQKNIL                     R4 ; [+3]
        2 MOVE                             R7 R4
        3 JUMP                             ; [+1]
        4 LOADB                            R7 0
        5 DUPTABLE                         R8 K7 [{"id", "altText", "approved", "imageId", "isModerated", "videoHash", "videoTitle"}]
        6 SETTABLEKS                       R0 R8 K0 ["id"]
        8 JUMPIFEQKNIL                     R1 ; [+3]
       10 MOVE                             R9 R1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R9
       13 SETTABLEKS                       R9 R8 K1 ["altText"]
       15 JUMPIFEQKNIL                     R2 ; [+3]
       17 MOVE                             R9 R2
       18 JUMP                             ; [+1]
       19 LOADB                            R9 1
       20 SETTABLEKS                       R9 R8 K2 ["approved"]
       22 JUMPIFEQKNIL                     R3 ; [+3]
       24 MOVE                             R9 R3
       25 JUMP                             ; [+1]
       26 MOVE                             R9 R0
       27 SETTABLEKS                       R9 R8 K3 ["imageId"]
       29 SETTABLEKS                       R7 R8 K4 ["isModerated"]
       31 JUMPIFEQKNIL                     R5 ; [+3]
       33 MOVE                             R9 R5
       34 JUMP                             ; [+1]
       35 LOADNIL                          R9
       36 SETTABLEKS                       R9 R8 K5 ["videoHash"]
       38 JUMPIFEQKNIL                     R6 ; [+3]
       40 MOVE                             R9 R6
       41 JUMP                             ; [+1]
       42 LOADNIL                          R9
       43 SETTABLEKS                       R9 R8 K6 ["videoTitle"]
       45 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["LayoutOrderIterator"]
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["getFileMaxSizeBytesOrDefault"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K4 ["Parent"]
       34 GETTABLEKS                       R6 R6 K11 ["Dash"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K12 ["append"]
       39 GETTABLEKS                       R7 R5 K13 ["join"]
       41 GETTABLEKS                       R8 R5 K14 ["keys"]
       43 GETIMPORT                        R9 K16 [game]
       45 LOADK                            R11 K17 ["StudioService"]
       46 NAMECALL                         R9 R9 K18 ["GetService"]
       48 CALL                             R9 2 1
       49 MOVE                             R10 R4
       50 CALL                             R10 0 1
       51 GETIMPORT                        R11 K6 [require]
       53 GETTABLEKS                       R12 R0 K2 ["UI"]
       55 GETTABLEKS                       R12 R12 K19 ["Components"]
       57 GETTABLEKS                       R12 R12 K20 ["MultiImagePicker"]
       59 CALL                             R11 1 1
       60 DUPCLOSURE                       R12 K21 [PROTO_0]
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R10
       63 NEWTABLE                         R13 0 0
       65 NEWTABLE                         R14 0 0
       67 NEWCLOSURE                       R15 P1
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R7
       70 CAPTURE                          REF R13
       71 CAPTURE                          VAL R6
       72 CAPTURE                          REF R14
       73 DUPCLOSURE                       R16 K22 [PROTO_2]
       74 DUPCLOSURE                       R17 K23 [PROTO_3]
       75 DUPCLOSURE                       R18 K24 [PROTO_4]
       76 NEWTABLE                         R19 0 5
       78 DUPTABLE                         R20 K36 [{["id"] = 11457774193, ["altText"] = , ["approved"] = True, ["imageId"] = 11457774193, ["isModerated"] = False, ["videoHash"] = , ["videoTitle"] = }]
       79 DUPTABLE                         R21 K38 [{["id"] = 10979850405, ["altText"] = , ["approved"] = True, ["imageId"] = 10979850405, ["isModerated"] = False, ["videoHash"] = , ["videoTitle"] = }]
       80 DUPTABLE                         R22 K40 [{["id"] = 11114178824, ["altText"] = , ["approved"] = True, ["imageId"] = 11114178824, ["isModerated"] = False, ["videoHash"] = , ["videoTitle"] = }]
       81 DUPTABLE                         R23 K42 [{["id"] = 11187570100, ["altText"] = , ["approved"] = True, ["imageId"] = 11187570100, ["isModerated"] = False, ["videoHash"] = , ["videoTitle"] = }]
       82 DUPTABLE                         R24 K44 [{["id"] = 11260544390, ["altText"] = , ["approved"] = True, ["imageId"] = 11260544390, ["isModerated"] = False, ["videoHash"] = , ["videoTitle"] = }]
       83 SETLIST                          R19 R20 5 [1]
       85 MOVE                             R20 R8
       86 MOVE                             R21 R19
       87 CALL                             R20 1 1
       88 NEWTABLE                         R21 0 2
       90 DUPTABLE                         R22 K48 [{["id"] = 1, ["altText"] = , ["approved"] = True, ["imageId"] = 1, ["isModerated"] = False, ["videoHash"] = "wBYjsROAy5w", ["videoTitle"] = "RDC 2022 Intro"}]
       91 DUPTABLE                         R23 K52 [{["id"] = 2, ["altText"] = , ["approved"] = False, ["imageId"] = 2, ["isModerated"] = False, ["videoHash"] = "_EPelwsaF9E", ["videoTitle"] = "Roblox 2021 Cinematic"}]
       92 SETLIST                          R21 R22 2 [1]
       94 MOVE                             R22 R8
       95 MOVE                             R23 R21
       96 CALL                             R22 1 1
       97 NEWTABLE                         R23 0 4
       99 DUPTABLE                         R24 K53 [{["id"] = 11457774193, ["altText"] = , ["approved"] = True, ["imageId"] = 11457774193, ["isModerated"] = True, ["videoHash"] = , ["videoTitle"] = }]
      100 DUPTABLE                         R25 K40 [{["id"] = 11114178824, ["altText"] = , ["approved"] = True, ["imageId"] = 11114178824, ["isModerated"] = False, ["videoHash"] = , ["videoTitle"] = }]
      101 DUPTABLE                         R26 K54 [{["id"] = 11260544390, ["altText"] = , ["approved"] = False, ["imageId"] = 11260544390, ["isModerated"] = True, ["videoHash"] = , ["videoTitle"] = }]
      102 DUPTABLE                         R27 K56 [{["id"] = 11647696560, ["altText"] = , ["approved"] = False, ["imageId"] = 11647696560, ["isModerated"] = False, ["videoHash"] = , ["videoTitle"] = }]
      103 SETLIST                          R23 R24 4 [1]
      105 MOVE                             R24 R8
      106 MOVE                             R25 R23
      107 CALL                             R24 1 1
      108 GETTABLEKS                       R25 R3 K57 ["new"]
      110 CALL                             R25 0 1
      111 DUPTABLE                         R26 K59 [{"stories"}]
      112 NEWTABLE                         R27 0 8
      114 DUPTABLE                         R28 K63 [{["name"] = "Empty MultiImagePicker", ["story"]}]
      115 GETTABLEKS                       R29 R1 K64 ["createElement"]
      117 MOVE                             R30 R11
      118 DUPTABLE                         R31 K76 [{["AddThumbnail"], ["AltTextError"], ["Enabled"] = True, ["ErrorMessage"] = , ["IsVideoAllowed"] = True, ["LayoutOrder"], ["Notes"] = , ["Order"], ["Thumbnails"], ["ThumbnailsChanged"], ["ThumbnailOrderChanged"]}]
      119 SETTABLEKS                       R15 R31 K65 ["AddThumbnail"]
      121 DUPTABLE                         R32 K78 [{["ErrorMessage"] = "Alt text error"}]
      122 SETTABLEKS                       R32 R31 K66 ["AltTextError"]
      124 NAMECALL                         R32 R25 K79 ["getNextOrder"]
      126 CALL                             R32 1 1
      127 SETTABLEKS                       R32 R31 K70 ["LayoutOrder"]
      129 SETTABLEKS                       R14 R31 K72 ["Order"]
      131 SETTABLEKS                       R13 R31 K73 ["Thumbnails"]
      133 SETTABLEKS                       R16 R31 K74 ["ThumbnailsChanged"]
      135 SETTABLEKS                       R17 R31 K75 ["ThumbnailOrderChanged"]
      137 CALL                             R29 2 1
      138 SETTABLEKS                       R29 R28 K62 ["story"]
      140 DUPTABLE                         R29 K81 [{["name"] = "MultiImagePicker with title hidden", ["story"]}]
      141 GETTABLEKS                       R30 R1 K64 ["createElement"]
      143 MOVE                             R31 R11
      144 DUPTABLE                         R32 K83 [{["AddThumbnail"], ["AltTextError"], ["Enabled"] = True, ["ErrorMessage"] = , ["IsVideoAllowed"] = True, ["LayoutOrder"], ["Notes"] = , ["Order"], ["ShowTitle"] = False, ["Thumbnails"], ["ThumbnailsChanged"], ["ThumbnailOrderChanged"]}]
      145 SETTABLEKS                       R15 R32 K65 ["AddThumbnail"]
      147 DUPTABLE                         R33 K78 [{["ErrorMessage"] = "Alt text error"}]
      148 SETTABLEKS                       R33 R32 K66 ["AltTextError"]
      150 NAMECALL                         R33 R25 K79 ["getNextOrder"]
      152 CALL                             R33 1 1
      153 SETTABLEKS                       R33 R32 K70 ["LayoutOrder"]
      155 SETTABLEKS                       R14 R32 K72 ["Order"]
      157 SETTABLEKS                       R13 R32 K73 ["Thumbnails"]
      159 SETTABLEKS                       R16 R32 K74 ["ThumbnailsChanged"]
      161 SETTABLEKS                       R17 R32 K75 ["ThumbnailOrderChanged"]
      163 CALL                             R30 2 1
      164 SETTABLEKS                       R30 R29 K62 ["story"]
      166 DUPTABLE                         R30 K85 [{["name"] = "MultiImagePicker with smaller thumbnails", ["story"]}]
      167 GETTABLEKS                       R31 R1 K64 ["createElement"]
      169 MOVE                             R32 R11
      170 DUPTABLE                         R33 K87 [{["AddThumbnail"], ["AltTextError"], ["Enabled"] = True, ["ErrorMessage"] = , ["IsVideoAllowed"] = True, ["LayoutOrder"], ["Notes"] = , ["Order"], ["ThumbnailSize"], ["Thumbnails"], ["ThumbnailsChanged"], ["ThumbnailOrderChanged"]}]
      171 SETTABLEKS                       R15 R33 K65 ["AddThumbnail"]
      173 DUPTABLE                         R34 K78 [{["ErrorMessage"] = "Alt text error"}]
      174 SETTABLEKS                       R34 R33 K66 ["AltTextError"]
      176 NAMECALL                         R34 R25 K79 ["getNextOrder"]
      178 CALL                             R34 1 1
      179 SETTABLEKS                       R34 R33 K70 ["LayoutOrder"]
      181 SETTABLEKS                       R14 R33 K72 ["Order"]
      183 GETIMPORT                        R34 K89 [UDim2.new]
      185 LOADN                            R35 0
      186 LOADN                            R36 185
      187 LOADN                            R37 0
      188 LOADN                            R38 104
      189 CALL                             R34 4 1
      190 SETTABLEKS                       R34 R33 K86 ["ThumbnailSize"]
      192 SETTABLEKS                       R13 R33 K73 ["Thumbnails"]
      194 SETTABLEKS                       R16 R33 K74 ["ThumbnailsChanged"]
      196 SETTABLEKS                       R17 R33 K75 ["ThumbnailOrderChanged"]
      198 CALL                             R31 2 1
      199 SETTABLEKS                       R31 R30 K62 ["story"]
      201 DUPTABLE                         R31 K91 [{["name"] = "Five Thumbnails in MultiImagePicker (Nonupdateable)", ["story"]}]
      202 GETTABLEKS                       R32 R1 K64 ["createElement"]
      204 MOVE                             R33 R11
      205 DUPTABLE                         R34 K76 [{["AddThumbnail"], ["AltTextError"], ["Enabled"] = True, ["ErrorMessage"] = , ["IsVideoAllowed"] = True, ["LayoutOrder"], ["Notes"] = , ["Order"], ["Thumbnails"], ["ThumbnailsChanged"], ["ThumbnailOrderChanged"]}]
      206 SETTABLEKS                       R15 R34 K65 ["AddThumbnail"]
      208 DUPTABLE                         R35 K93 [{["ThumbnailId"] = , ["ErrorMessage"] = "Alt text error"}]
      209 SETTABLEKS                       R35 R34 K66 ["AltTextError"]
      211 NAMECALL                         R35 R25 K79 ["getNextOrder"]
      213 CALL                             R35 1 1
      214 SETTABLEKS                       R35 R34 K70 ["LayoutOrder"]
      216 SETTABLEKS                       R20 R34 K72 ["Order"]
      218 SETTABLEKS                       R19 R34 K73 ["Thumbnails"]
      220 SETTABLEKS                       R16 R34 K74 ["ThumbnailsChanged"]
      222 SETTABLEKS                       R17 R34 K75 ["ThumbnailOrderChanged"]
      224 CALL                             R32 2 1
      225 SETTABLEKS                       R32 R31 K62 ["story"]
      227 DUPTABLE                         R32 K95 [{["name"] = "Thumbnails with alt text hidden in MultiImagePicker (Nonupdateable)", ["story"]}]
      228 GETTABLEKS                       R33 R1 K64 ["createElement"]
      230 MOVE                             R34 R11
      231 DUPTABLE                         R35 K97 [{["AddThumbnail"], ["AltTextError"], ["Enabled"] = True, ["ErrorMessage"] = , ["IsVideoAllowed"] = True, ["LayoutOrder"], ["Notes"] = , ["Order"], ["ShowAltText"] = False, ["Thumbnails"], ["ThumbnailsChanged"], ["ThumbnailOrderChanged"]}]
      232 SETTABLEKS                       R15 R35 K65 ["AddThumbnail"]
      234 DUPTABLE                         R36 K93 [{["ThumbnailId"] = , ["ErrorMessage"] = "Alt text error"}]
      235 SETTABLEKS                       R36 R35 K66 ["AltTextError"]
      237 NAMECALL                         R36 R25 K79 ["getNextOrder"]
      239 CALL                             R36 1 1
      240 SETTABLEKS                       R36 R35 K70 ["LayoutOrder"]
      242 SETTABLEKS                       R20 R35 K72 ["Order"]
      244 SETTABLEKS                       R19 R35 K73 ["Thumbnails"]
      246 SETTABLEKS                       R16 R35 K74 ["ThumbnailsChanged"]
      248 SETTABLEKS                       R17 R35 K75 ["ThumbnailOrderChanged"]
      250 CALL                             R33 2 1
      251 SETTABLEKS                       R33 R32 K62 ["story"]
      253 DUPTABLE                         R33 K99 [{["name"] = "Video thumbnails in MultiImagePicker (Nonupdateable) with IsVideoAllowed = false", ["story"]}]
      254 GETTABLEKS                       R34 R1 K64 ["createElement"]
      256 MOVE                             R35 R11
      257 DUPTABLE                         R36 K100 [{["AddThumbnail"], ["AltTextError"], ["Enabled"] = True, ["ErrorMessage"] = , ["IsVideoAllowed"] = False, ["LayoutOrder"], ["Notes"] = , ["Order"], ["Thumbnails"], ["ThumbnailsChanged"], ["ThumbnailOrderChanged"]}]
      258 SETTABLEKS                       R15 R36 K65 ["AddThumbnail"]
      260 DUPTABLE                         R37 K93 [{["ThumbnailId"] = , ["ErrorMessage"] = "Alt text error"}]
      261 SETTABLEKS                       R37 R36 K66 ["AltTextError"]
      263 NAMECALL                         R37 R25 K79 ["getNextOrder"]
      265 CALL                             R37 1 1
      266 SETTABLEKS                       R37 R36 K70 ["LayoutOrder"]
      268 SETTABLEKS                       R22 R36 K72 ["Order"]
      270 SETTABLEKS                       R21 R36 K73 ["Thumbnails"]
      272 SETTABLEKS                       R16 R36 K74 ["ThumbnailsChanged"]
      274 SETTABLEKS                       R17 R36 K75 ["ThumbnailOrderChanged"]
      276 CALL                             R34 2 1
      277 SETTABLEKS                       R34 R33 K62 ["story"]
      279 DUPTABLE                         R34 K102 [{["name"] = "Video thumbnails in MultiImagePicker (Nonupdateable) with IsVideoAllowed = true", ["story"]}]
      280 GETTABLEKS                       R35 R1 K64 ["createElement"]
      282 MOVE                             R36 R11
      283 DUPTABLE                         R37 K76 [{["AddThumbnail"], ["AltTextError"], ["Enabled"] = True, ["ErrorMessage"] = , ["IsVideoAllowed"] = True, ["LayoutOrder"], ["Notes"] = , ["Order"], ["Thumbnails"], ["ThumbnailsChanged"], ["ThumbnailOrderChanged"]}]
      284 SETTABLEKS                       R15 R37 K65 ["AddThumbnail"]
      286 DUPTABLE                         R38 K93 [{["ThumbnailId"] = , ["ErrorMessage"] = "Alt text error"}]
      287 SETTABLEKS                       R38 R37 K66 ["AltTextError"]
      289 NAMECALL                         R38 R25 K79 ["getNextOrder"]
      291 CALL                             R38 1 1
      292 SETTABLEKS                       R38 R37 K70 ["LayoutOrder"]
      294 SETTABLEKS                       R22 R37 K72 ["Order"]
      296 SETTABLEKS                       R21 R37 K73 ["Thumbnails"]
      298 SETTABLEKS                       R16 R37 K74 ["ThumbnailsChanged"]
      300 SETTABLEKS                       R17 R37 K75 ["ThumbnailOrderChanged"]
      302 CALL                             R35 2 1
      303 SETTABLEKS                       R35 R34 K62 ["story"]
      305 DUPTABLE                         R35 K104 [{["name"] = "Some moderated thumbnails in MultiImagePicker", ["story"]}]
      306 GETTABLEKS                       R36 R1 K64 ["createElement"]
      308 MOVE                             R37 R11
      309 DUPTABLE                         R38 K76 [{["AddThumbnail"], ["AltTextError"], ["Enabled"] = True, ["ErrorMessage"] = , ["IsVideoAllowed"] = True, ["LayoutOrder"], ["Notes"] = , ["Order"], ["Thumbnails"], ["ThumbnailsChanged"], ["ThumbnailOrderChanged"]}]
      310 SETTABLEKS                       R15 R38 K65 ["AddThumbnail"]
      312 DUPTABLE                         R39 K93 [{["ThumbnailId"] = , ["ErrorMessage"] = "Alt text error"}]
      313 SETTABLEKS                       R39 R38 K66 ["AltTextError"]
      315 NAMECALL                         R39 R25 K79 ["getNextOrder"]
      317 CALL                             R39 1 1
      318 SETTABLEKS                       R39 R38 K70 ["LayoutOrder"]
      320 SETTABLEKS                       R24 R38 K72 ["Order"]
      322 SETTABLEKS                       R23 R38 K73 ["Thumbnails"]
      324 SETTABLEKS                       R16 R38 K74 ["ThumbnailsChanged"]
      326 SETTABLEKS                       R17 R38 K75 ["ThumbnailOrderChanged"]
      328 CALL                             R36 2 1
      329 SETTABLEKS                       R36 R35 K62 ["story"]
      331 SETLIST                          R27 R28 8 [1]
      333 SETTABLEKS                       R27 R26 K58 ["stories"]
      335 CLOSEUPVALS                      R13
      336 RETURN                           R26 1
