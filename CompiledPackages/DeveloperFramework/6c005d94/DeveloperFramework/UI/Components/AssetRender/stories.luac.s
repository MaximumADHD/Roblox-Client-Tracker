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
       82 GETUPVAL                         R13 0
       83 GETTABLEKS                       R13 R13 K33 ["createElement"]
       85 GETUPVAL                         R14 1
       86 DUPTABLE                         R15 K37 [{["Width"] = 360, ["AssetData"]}]
       87 SETTABLEKS                       R11 R15 K36 ["AssetData"]
       89 CALL                             R13 2 1
       90 SETTABLEKS                       R13 R12 K21 ["Loading"]
       92 GETUPVAL                         R13 0
       93 GETTABLEKS                       R13 R13 K33 ["createElement"]
       95 GETUPVAL                         R14 1
       96 DUPTABLE                         R15 K39 [{["Width"] = 360, ["AssetInstance"], ["AssetData"]}]
       97 SETTABLEKS                       R0 R15 K38 ["AssetInstance"]
       99 SETTABLEKS                       R11 R15 K36 ["AssetData"]
      101 CALL                             R13 2 1
      102 SETTABLEKS                       R13 R12 K3 ["Model"]
      104 GETUPVAL                         R13 0
      105 GETTABLEKS                       R13 R13 K33 ["createElement"]
      107 GETUPVAL                         R14 1
      108 DUPTABLE                         R15 K37 [{["Width"] = 360, ["AssetData"]}]
      109 DUPTABLE                         R16 K20 [{"Asset"}]
      110 DUPTABLE                         R17 K43 [{["Id"] = 53326, ["TypeId"]}]
      111 GETIMPORT                        R18 K46 [Enum.AssetType.Model]
      113 GETTABLEKS                       R18 R18 K47 ["Value"]
      115 SETTABLEKS                       R18 R17 K42 ["TypeId"]
      117 SETTABLEKS                       R17 R16 K19 ["Asset"]
      119 SETTABLEKS                       R16 R15 K36 ["AssetData"]
      121 CALL                             R13 2 1
      122 SETTABLEKS                       R13 R12 K22 ["ModelWithoutInstance"]
      124 GETUPVAL                         R13 0
      125 GETTABLEKS                       R13 R13 K33 ["createElement"]
      127 GETUPVAL                         R14 1
      128 DUPTABLE                         R15 K37 [{["Width"] = 360, ["AssetData"]}]
      129 DUPTABLE                         R16 K20 [{"Asset"}]
      130 DUPTABLE                         R17 K49 [{["Id"] = 2525227847, ["TypeId"]}]
      131 GETIMPORT                        R18 K50 [Enum.AssetType.Plugin]
      133 GETTABLEKS                       R18 R18 K47 ["Value"]
      135 SETTABLEKS                       R18 R17 K42 ["TypeId"]
      137 SETTABLEKS                       R17 R16 K19 ["Asset"]
      139 SETTABLEKS                       R16 R15 K36 ["AssetData"]
      141 CALL                             R13 2 1
      142 SETTABLEKS                       R13 R12 K23 ["Plugin"]
      144 GETUPVAL                         R13 0
      145 GETTABLEKS                       R13 R13 K33 ["createElement"]
      147 GETUPVAL                         R14 1
      148 DUPTABLE                         R15 K39 [{["Width"] = 360, ["AssetInstance"], ["AssetData"]}]
      149 SETTABLEKS                       R10 R15 K38 ["AssetInstance"]
      151 SETTABLEKS                       R11 R15 K36 ["AssetData"]
      153 CALL                             R13 2 1
      154 SETTABLEKS                       R13 R12 K24 ["Thumbnail"]
      156 GETUPVAL                         R13 0
      157 GETTABLEKS                       R13 R13 K33 ["createElement"]
      159 GETUPVAL                         R14 1
      160 DUPTABLE                         R15 K39 [{["Width"] = 360, ["AssetInstance"], ["AssetData"]}]
      161 SETTABLEKS                       R3 R15 K38 ["AssetInstance"]
      163 SETTABLEKS                       R11 R15 K36 ["AssetData"]
      165 CALL                             R13 2 1
      166 SETTABLEKS                       R13 R12 K25 ["Image"]
      168 GETUPVAL                         R13 0
      169 GETTABLEKS                       R13 R13 K33 ["createElement"]
      171 GETUPVAL                         R14 1
      172 DUPTABLE                         R15 K39 [{["Width"] = 360, ["AssetInstance"], ["AssetData"]}]
      173 GETIMPORT                        R16 K2 [Instance.new]
      175 LOADK                            R17 K11 ["Sound"]
      176 CALL                             R16 1 1
      177 SETTABLEKS                       R16 R15 K38 ["AssetInstance"]
      179 DUPTABLE                         R16 K20 [{"Asset"}]
      180 DUPTABLE                         R17 K52 [{["Id"] = 1838601237}]
      181 SETTABLEKS                       R17 R16 K19 ["Asset"]
      183 SETTABLEKS                       R16 R15 K36 ["AssetData"]
      185 CALL                             R13 2 1
      186 SETTABLEKS                       R13 R12 K11 ["Sound"]
      188 GETUPVAL                         R13 0
      189 GETTABLEKS                       R13 R13 K33 ["createElement"]
      191 GETUPVAL                         R14 1
      192 DUPTABLE                         R15 K39 [{["Width"] = 360, ["AssetInstance"], ["AssetData"]}]
      193 GETIMPORT                        R16 K2 [Instance.new]
      195 LOADK                            R17 K53 ["VideoFrame"]
      196 CALL                             R16 1 1
      197 SETTABLEKS                       R16 R15 K38 ["AssetInstance"]
      199 DUPTABLE                         R16 K20 [{"Asset"}]
      200 DUPTABLE                         R17 K55 [{["Id"] = 5608250999}]
      201 SETTABLEKS                       R17 R16 K19 ["Asset"]
      203 SETTABLEKS                       R16 R15 K36 ["AssetData"]
      205 CALL                             R13 2 1
      206 SETTABLEKS                       R13 R12 K26 ["Video"]
      208 GETUPVAL                         R13 0
      209 GETTABLEKS                       R13 R13 K33 ["createElement"]
      211 GETUPVAL                         R14 1
      212 DUPTABLE                         R15 K56 [{["AssetData"], ["Width"] = 360}]
      213 DUPTABLE                         R16 K20 [{"Asset"}]
      214 DUPTABLE                         R17 K58 [{["Id"] = 8836875837, ["TypeId"]}]
      215 GETIMPORT                        R18 K59 [Enum.AssetType.FontFamily]
      217 GETTABLEKS                       R18 R18 K47 ["Value"]
      219 SETTABLEKS                       R18 R17 K42 ["TypeId"]
      221 SETTABLEKS                       R17 R16 K19 ["Asset"]
      223 SETTABLEKS                       R16 R15 K36 ["AssetData"]
      225 CALL                             R13 2 1
      226 SETTABLEKS                       R13 R12 K27 ["FontFamily"]
      228 GETUPVAL                         R13 0
      229 GETTABLEKS                       R13 R13 K33 ["createElement"]
      231 GETUPVAL                         R14 1
      232 DUPTABLE                         R15 K62 [{["Width"] = 360, ["AssetInstance"], ["DisableTreeView"] = True, ["AssetData"]}]
      233 GETIMPORT                        R16 K2 [Instance.new]
      235 LOADK                            R17 K11 ["Sound"]
      236 CALL                             R16 1 1
      237 SETTABLEKS                       R16 R15 K38 ["AssetInstance"]
      239 DUPTABLE                         R16 K20 [{"Asset"}]
      240 DUPTABLE                         R17 K52 [{["Id"] = 1838601237}]
      241 SETTABLEKS                       R17 R16 K19 ["Asset"]
      243 SETTABLEKS                       R16 R15 K36 ["AssetData"]
      245 CALL                             R13 2 1
      246 SETTABLEKS                       R13 R12 K28 ["SoundDisableTreeView"]
      248 GETUPVAL                         R13 0
      249 GETTABLEKS                       R13 R13 K33 ["createElement"]
      251 GETUPVAL                         R14 1
      252 DUPTABLE                         R15 K62 [{["Width"] = 360, ["AssetInstance"], ["DisableTreeView"] = True, ["AssetData"]}]
      253 GETIMPORT                        R16 K2 [Instance.new]
      255 LOADK                            R17 K53 ["VideoFrame"]
      256 CALL                             R16 1 1
      257 SETTABLEKS                       R16 R15 K38 ["AssetInstance"]
      259 DUPTABLE                         R16 K20 [{"Asset"}]
      260 DUPTABLE                         R17 K55 [{["Id"] = 5608250999}]
      261 SETTABLEKS                       R17 R16 K19 ["Asset"]
      263 SETTABLEKS                       R16 R15 K36 ["AssetData"]
      265 CALL                             R13 2 1
      266 SETTABLEKS                       R13 R12 K29 ["VideoDisableTreeView"]
      268 GETUPVAL                         R13 0
      269 GETTABLEKS                       R13 R13 K33 ["createElement"]
      271 GETUPVAL                         R14 1
      272 DUPTABLE                         R15 K39 [{["Width"] = 360, ["AssetInstance"], ["AssetData"]}]
      273 SETTABLEKS                       R4 R15 K38 ["AssetInstance"]
      275 SETTABLEKS                       R11 R15 K36 ["AssetData"]
      277 CALL                             R13 2 1
      278 SETTABLEKS                       R13 R12 K30 ["SoundInModel"]
      280 GETUPVAL                         R13 0
      281 GETTABLEKS                       R13 R13 K33 ["createElement"]
      283 GETUPVAL                         R14 1
      284 DUPTABLE                         R15 K39 [{["Width"] = 360, ["AssetInstance"], ["AssetData"]}]
      285 SETTABLEKS                       R7 R15 K38 ["AssetInstance"]
      287 SETTABLEKS                       R11 R15 K36 ["AssetData"]
      289 CALL                             R13 2 1
      290 SETTABLEKS                       R13 R12 K31 ["ScriptInModel"]
      292 RETURN                           R12 1

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
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
