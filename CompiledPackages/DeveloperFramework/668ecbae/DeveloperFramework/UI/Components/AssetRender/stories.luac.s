PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Model"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K2 [Instance.new]
        6 LOADK                            R2 K4 ["Part"]
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R0 R1 K5 ["Parent"]
       10 GETIMPORT                        R2 K2 [Instance.new]
       12 LOADK                            R3 K4 ["Part"]
       13 CALL                             R2 1 1
       14 LOADK                            R3 K6 ["otherPart"]
       15 SETTABLEKS                       R3 R2 K7 ["Name"]
       17 SETTABLEKS                       R0 R2 K5 ["Parent"]
       19 GETIMPORT                        R3 K2 [Instance.new]
       21 LOADK                            R4 K8 ["Decal"]
       22 CALL                             R3 1 1
       23 LOADK                            R4 K9 ["http://www.roblox.com/asset/?id=23156312"]
       24 SETTABLEKS                       R4 R3 K10 ["Texture"]
       26 GETIMPORT                        R4 K2 [Instance.new]
       28 LOADK                            R5 K3 ["Model"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K2 [Instance.new]
       32 LOADK                            R6 K4 ["Part"]
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R4 R5 K5 ["Parent"]
       36 GETIMPORT                        R6 K2 [Instance.new]
       38 LOADK                            R7 K11 ["Sound"]
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R4 R6 K5 ["Parent"]
       42 LOADK                            R7 K12 ["rbxassetid://1837461008"]
       43 SETTABLEKS                       R7 R6 K13 ["SoundId"]
       45 GETIMPORT                        R7 K2 [Instance.new]
       47 LOADK                            R8 K3 ["Model"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K2 [Instance.new]
       51 LOADK                            R9 K4 ["Part"]
       52 CALL                             R8 1 1
       53 SETTABLEKS                       R7 R8 K5 ["Parent"]
       55 GETIMPORT                        R9 K2 [Instance.new]
       57 LOADK                            R10 K4 ["Part"]
       58 CALL                             R9 1 1
       59 LOADK                            R10 K14 ["Grandchild"]
       60 SETTABLEKS                       R10 R9 K7 ["Name"]
       62 SETTABLEKS                       R8 R9 K5 ["Parent"]
       64 GETIMPORT                        R10 K2 [Instance.new]
       66 LOADK                            R11 K15 ["Script"]
       67 CALL                             R10 1 1
       68 LOADK                            R11 K16 ["MyScript"]
       69 SETTABLEKS                       R11 R10 K7 ["Name"]
       71 LOADK                            R11 K17 ["\t\terror(\"Hello world from AssetRender\")\n\t"]
       72 SETTABLEKS                       R11 R10 K18 ["Source"]
       74 SETTABLEKS                       R7 R10 K5 ["Parent"]
       76 DUPTABLE                         R11 K20 [{"Asset"}]
       77 NEWTABLE                         R12 0 0
       79 SETTABLEKS                       R12 R11 K19 ["Asset"]
       81 DUPTABLE                         R12 K32 [{"Loading", "Model", "ModelWithoutInstance", "Plugin", "Thumbnail", "Image", "Sound", "Video", "FontFamily", "SoundDisableTreeView", "VideoDisableTreeView", "SoundInModel", "ScriptInModel"}]
       82 GETUPVAL                         R14 0
       83 GETTABLEKS                       R13 R14 K33 ["createElement"]
       85 GETUPVAL                         R14 1
       86 DUPTABLE                         R15 K36 [{"Width", "AssetData"}]
       87 LOADN                            R16 104
       88 SETTABLEKS                       R16 R15 K34 ["Width"]
       90 SETTABLEKS                       R11 R15 K35 ["AssetData"]
       92 CALL                             R13 2 1
       93 SETTABLEKS                       R13 R12 K21 ["Loading"]
       95 GETUPVAL                         R14 0
       96 GETTABLEKS                       R13 R14 K33 ["createElement"]
       98 GETUPVAL                         R14 1
       99 DUPTABLE                         R15 K38 [{"Width", "AssetInstance", "AssetData"}]
      100 LOADN                            R16 104
      101 SETTABLEKS                       R16 R15 K34 ["Width"]
      103 SETTABLEKS                       R0 R15 K37 ["AssetInstance"]
      105 SETTABLEKS                       R11 R15 K35 ["AssetData"]
      107 CALL                             R13 2 1
      108 SETTABLEKS                       R13 R12 K3 ["Model"]
      110 GETUPVAL                         R14 0
      111 GETTABLEKS                       R13 R14 K33 ["createElement"]
      113 GETUPVAL                         R14 1
      114 DUPTABLE                         R15 K36 [{"Width", "AssetData"}]
      115 LOADN                            R16 104
      116 SETTABLEKS                       R16 R15 K34 ["Width"]
      118 DUPTABLE                         R16 K20 [{"Asset"}]
      119 DUPTABLE                         R17 K41 [{"Id", "TypeId"}]
      120 LOADK                            R18 K42 [53326]
      121 SETTABLEKS                       R18 R17 K39 ["Id"]
      123 GETIMPORT                        R19 K45 [Enum.AssetType.Model]
      125 GETTABLEKS                       R18 R19 K46 ["Value"]
      127 SETTABLEKS                       R18 R17 K40 ["TypeId"]
      129 SETTABLEKS                       R17 R16 K19 ["Asset"]
      131 SETTABLEKS                       R16 R15 K35 ["AssetData"]
      133 CALL                             R13 2 1
      134 SETTABLEKS                       R13 R12 K22 ["ModelWithoutInstance"]
      136 GETUPVAL                         R14 0
      137 GETTABLEKS                       R13 R14 K33 ["createElement"]
      139 GETUPVAL                         R14 1
      140 DUPTABLE                         R15 K36 [{"Width", "AssetData"}]
      141 LOADN                            R16 104
      142 SETTABLEKS                       R16 R15 K34 ["Width"]
      144 DUPTABLE                         R16 K20 [{"Asset"}]
      145 DUPTABLE                         R17 K41 [{"Id", "TypeId"}]
      146 LOADK                            R18 K47 [2525227847]
      147 SETTABLEKS                       R18 R17 K39 ["Id"]
      149 GETIMPORT                        R19 K48 [Enum.AssetType.Plugin]
      151 GETTABLEKS                       R18 R19 K46 ["Value"]
      153 SETTABLEKS                       R18 R17 K40 ["TypeId"]
      155 SETTABLEKS                       R17 R16 K19 ["Asset"]
      157 SETTABLEKS                       R16 R15 K35 ["AssetData"]
      159 CALL                             R13 2 1
      160 SETTABLEKS                       R13 R12 K23 ["Plugin"]
      162 GETUPVAL                         R14 0
      163 GETTABLEKS                       R13 R14 K33 ["createElement"]
      165 GETUPVAL                         R14 1
      166 DUPTABLE                         R15 K38 [{"Width", "AssetInstance", "AssetData"}]
      167 LOADN                            R16 104
      168 SETTABLEKS                       R16 R15 K34 ["Width"]
      170 SETTABLEKS                       R10 R15 K37 ["AssetInstance"]
      172 SETTABLEKS                       R11 R15 K35 ["AssetData"]
      174 CALL                             R13 2 1
      175 SETTABLEKS                       R13 R12 K24 ["Thumbnail"]
      177 GETUPVAL                         R14 0
      178 GETTABLEKS                       R13 R14 K33 ["createElement"]
      180 GETUPVAL                         R14 1
      181 DUPTABLE                         R15 K38 [{"Width", "AssetInstance", "AssetData"}]
      182 LOADN                            R16 104
      183 SETTABLEKS                       R16 R15 K34 ["Width"]
      185 SETTABLEKS                       R3 R15 K37 ["AssetInstance"]
      187 SETTABLEKS                       R11 R15 K35 ["AssetData"]
      189 CALL                             R13 2 1
      190 SETTABLEKS                       R13 R12 K25 ["Image"]
      192 GETUPVAL                         R14 0
      193 GETTABLEKS                       R13 R14 K33 ["createElement"]
      195 GETUPVAL                         R14 1
      196 DUPTABLE                         R15 K38 [{"Width", "AssetInstance", "AssetData"}]
      197 LOADN                            R16 104
      198 SETTABLEKS                       R16 R15 K34 ["Width"]
      200 GETIMPORT                        R16 K2 [Instance.new]
      202 LOADK                            R17 K11 ["Sound"]
      203 CALL                             R16 1 1
      204 SETTABLEKS                       R16 R15 K37 ["AssetInstance"]
      206 DUPTABLE                         R16 K20 [{"Asset"}]
      207 DUPTABLE                         R17 K49 [{"Id"}]
      208 LOADK                            R18 K50 [1838601237]
      209 SETTABLEKS                       R18 R17 K39 ["Id"]
      211 SETTABLEKS                       R17 R16 K19 ["Asset"]
      213 SETTABLEKS                       R16 R15 K35 ["AssetData"]
      215 CALL                             R13 2 1
      216 SETTABLEKS                       R13 R12 K11 ["Sound"]
      218 GETUPVAL                         R14 0
      219 GETTABLEKS                       R13 R14 K33 ["createElement"]
      221 GETUPVAL                         R14 1
      222 DUPTABLE                         R15 K38 [{"Width", "AssetInstance", "AssetData"}]
      223 LOADN                            R16 104
      224 SETTABLEKS                       R16 R15 K34 ["Width"]
      226 GETIMPORT                        R16 K2 [Instance.new]
      228 LOADK                            R17 K51 ["VideoFrame"]
      229 CALL                             R16 1 1
      230 SETTABLEKS                       R16 R15 K37 ["AssetInstance"]
      232 DUPTABLE                         R16 K20 [{"Asset"}]
      233 DUPTABLE                         R17 K49 [{"Id"}]
      234 LOADK                            R18 K52 [5608250999]
      235 SETTABLEKS                       R18 R17 K39 ["Id"]
      237 SETTABLEKS                       R17 R16 K19 ["Asset"]
      239 SETTABLEKS                       R16 R15 K35 ["AssetData"]
      241 CALL                             R13 2 1
      242 SETTABLEKS                       R13 R12 K26 ["Video"]
      244 GETUPVAL                         R14 0
      245 GETTABLEKS                       R13 R14 K33 ["createElement"]
      247 GETUPVAL                         R14 1
      248 DUPTABLE                         R15 K53 [{"AssetData", "Width"}]
      249 DUPTABLE                         R16 K20 [{"Asset"}]
      250 DUPTABLE                         R17 K41 [{"Id", "TypeId"}]
      251 LOADK                            R18 K54 [8836875837]
      252 SETTABLEKS                       R18 R17 K39 ["Id"]
      254 GETIMPORT                        R19 K55 [Enum.AssetType.FontFamily]
      256 GETTABLEKS                       R18 R19 K46 ["Value"]
      258 SETTABLEKS                       R18 R17 K40 ["TypeId"]
      260 SETTABLEKS                       R17 R16 K19 ["Asset"]
      262 SETTABLEKS                       R16 R15 K35 ["AssetData"]
      264 LOADN                            R16 104
      265 SETTABLEKS                       R16 R15 K34 ["Width"]
      267 CALL                             R13 2 1
      268 SETTABLEKS                       R13 R12 K27 ["FontFamily"]
      270 GETUPVAL                         R14 0
      271 GETTABLEKS                       R13 R14 K33 ["createElement"]
      273 GETUPVAL                         R14 1
      274 DUPTABLE                         R15 K57 [{"Width", "AssetInstance", "DisableTreeView", "AssetData"}]
      275 LOADN                            R16 104
      276 SETTABLEKS                       R16 R15 K34 ["Width"]
      278 GETIMPORT                        R16 K2 [Instance.new]
      280 LOADK                            R17 K11 ["Sound"]
      281 CALL                             R16 1 1
      282 SETTABLEKS                       R16 R15 K37 ["AssetInstance"]
      284 LOADB                            R16 1
      285 SETTABLEKS                       R16 R15 K56 ["DisableTreeView"]
      287 DUPTABLE                         R16 K20 [{"Asset"}]
      288 DUPTABLE                         R17 K49 [{"Id"}]
      289 LOADK                            R18 K50 [1838601237]
      290 SETTABLEKS                       R18 R17 K39 ["Id"]
      292 SETTABLEKS                       R17 R16 K19 ["Asset"]
      294 SETTABLEKS                       R16 R15 K35 ["AssetData"]
      296 CALL                             R13 2 1
      297 SETTABLEKS                       R13 R12 K28 ["SoundDisableTreeView"]
      299 GETUPVAL                         R14 0
      300 GETTABLEKS                       R13 R14 K33 ["createElement"]
      302 GETUPVAL                         R14 1
      303 DUPTABLE                         R15 K57 [{"Width", "AssetInstance", "DisableTreeView", "AssetData"}]
      304 LOADN                            R16 104
      305 SETTABLEKS                       R16 R15 K34 ["Width"]
      307 GETIMPORT                        R16 K2 [Instance.new]
      309 LOADK                            R17 K51 ["VideoFrame"]
      310 CALL                             R16 1 1
      311 SETTABLEKS                       R16 R15 K37 ["AssetInstance"]
      313 LOADB                            R16 1
      314 SETTABLEKS                       R16 R15 K56 ["DisableTreeView"]
      316 DUPTABLE                         R16 K20 [{"Asset"}]
      317 DUPTABLE                         R17 K49 [{"Id"}]
      318 LOADK                            R18 K52 [5608250999]
      319 SETTABLEKS                       R18 R17 K39 ["Id"]
      321 SETTABLEKS                       R17 R16 K19 ["Asset"]
      323 SETTABLEKS                       R16 R15 K35 ["AssetData"]
      325 CALL                             R13 2 1
      326 SETTABLEKS                       R13 R12 K29 ["VideoDisableTreeView"]
      328 GETUPVAL                         R14 0
      329 GETTABLEKS                       R13 R14 K33 ["createElement"]
      331 GETUPVAL                         R14 1
      332 DUPTABLE                         R15 K38 [{"Width", "AssetInstance", "AssetData"}]
      333 LOADN                            R16 104
      334 SETTABLEKS                       R16 R15 K34 ["Width"]
      336 SETTABLEKS                       R4 R15 K37 ["AssetInstance"]
      338 SETTABLEKS                       R11 R15 K35 ["AssetData"]
      340 CALL                             R13 2 1
      341 SETTABLEKS                       R13 R12 K30 ["SoundInModel"]
      343 GETUPVAL                         R14 0
      344 GETTABLEKS                       R13 R14 K33 ["createElement"]
      346 GETUPVAL                         R14 1
      347 DUPTABLE                         R15 K38 [{"Width", "AssetInstance", "AssetData"}]
      348 LOADN                            R16 104
      349 SETTABLEKS                       R16 R15 K34 ["Width"]
      351 SETTABLEKS                       R7 R15 K37 ["AssetInstance"]
      353 SETTABLEKS                       R11 R15 K35 ["AssetData"]
      355 CALL                             R13 2 1
      356 SETTABLEKS                       R13 R12 K31 ["ScriptInModel"]
      358 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R3 R4 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
