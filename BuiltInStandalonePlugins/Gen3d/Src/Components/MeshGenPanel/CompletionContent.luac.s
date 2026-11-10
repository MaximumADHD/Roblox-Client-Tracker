PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["createElement"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K2 ["View"]
       14 DUPTABLE                         R5 K6 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
       15 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       17 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       19 DUPTABLE                         R6 K9 [{"Status", "Columns"}]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K1 ["createElement"]
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R8 R8 K2 ["View"]
       26 DUPTABLE                         R9 K11 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"]}]
       27 MOVE                             R10 R1
       28 CALL                             R10 0 1
       29 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       31 DUPTABLE                         R10 K14 [{"Spinner", "Text"}]
       32 GETUPVAL                         R11 1
       33 GETTABLEKS                       R11 R11 K1 ["createElement"]
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R12 R12 K15 ["Loading"]
       38 DUPTABLE                         R13 K17 [{"size", "LayoutOrder"}]
       39 GETUPVAL                         R14 2
       40 GETTABLEKS                       R14 R14 K18 ["Enums"]
       42 GETTABLEKS                       R14 R14 K19 ["IconSize"]
       44 GETTABLEKS                       R14 R14 K20 ["Small"]
       46 SETTABLEKS                       R14 R13 K16 ["size"]
       48 MOVE                             R14 R1
       49 CALL                             R14 0 1
       50 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       52 CALL                             R11 2 1
       53 SETTABLEKS                       R11 R10 K12 ["Spinner"]
       55 GETUPVAL                         R11 1
       56 GETTABLEKS                       R11 R11 K1 ["createElement"]
       58 GETUPVAL                         R12 2
       59 GETTABLEKS                       R12 R12 K13 ["Text"]
       61 DUPTABLE                         R13 K23 [{["Text"] = "Generating...", ["tag"] = "auto-xy text-body-small content-emphasis", ["LayoutOrder"]}]
       62 MOVE                             R14 R1
       63 CALL                             R14 0 1
       64 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       66 CALL                             R11 2 1
       67 SETTABLEKS                       R11 R10 K13 ["Text"]
       69 CALL                             R7 3 1
       70 SETTABLEKS                       R7 R6 K7 ["Status"]
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K1 ["createElement"]
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R8 R8 K2 ["View"]
       78 DUPTABLE                         R9 K25 [{["tag"] = "row gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
       79 MOVE                             R10 R1
       80 CALL                             R10 0 1
       81 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       83 DUPTABLE                         R10 K28 [{"Inputs", "Output"}]
       84 GETUPVAL                         R11 1
       85 GETTABLEKS                       R11 R11 K1 ["createElement"]
       87 GETUPVAL                         R12 2
       88 GETTABLEKS                       R12 R12 K2 ["View"]
       90 DUPTABLE                         R13 K30 [{["tag"] = "col fill gap-small auto-y", ["LayoutOrder"]}]
       91 MOVE                             R14 R1
       92 CALL                             R14 0 1
       93 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       95 DUPTABLE                         R14 K35 [{"Title", "Image", "Prompt", "Details"}]
       96 GETUPVAL                         R15 1
       97 GETTABLEKS                       R15 R15 K1 ["createElement"]
       99 GETUPVAL                         R16 2
      100 GETTABLEKS                       R16 R16 K13 ["Text"]
      102 DUPTABLE                         R17 K37 [{["Text"] = "Inputs", ["tag"] = "auto-xy text-title-small content-emphasis", ["LayoutOrder"]}]
      103 MOVE                             R18 R1
      104 CALL                             R18 0 1
      105 SETTABLEKS                       R18 R17 K5 ["LayoutOrder"]
      107 CALL                             R15 2 1
      108 SETTABLEKS                       R15 R14 K31 ["Title"]
      110 GETUPVAL                         R15 1
      111 GETTABLEKS                       R15 R15 K1 ["createElement"]
      113 GETUPVAL                         R16 2
      114 GETTABLEKS                       R16 R16 K2 ["View"]
      116 DUPTABLE                         R17 K39 [{["tag"] = "size-2000-2000 radius-medium bg-surface-200", ["LayoutOrder"]}]
      117 MOVE                             R18 R1
      118 CALL                             R18 0 1
      119 SETTABLEKS                       R18 R17 K5 ["LayoutOrder"]
      121 DUPTABLE                         R18 K40 [{"Image"}]
      122 GETUPVAL                         R19 1
      123 GETTABLEKS                       R19 R19 K1 ["createElement"]
      125 GETUPVAL                         R20 2
      126 GETTABLEKS                       R20 R20 K32 ["Image"]
      128 DUPTABLE                         R21 K43 [{["Image"], ["ScaleType"], ["tag"] = "size-full radius-medium"}]
      129 GETTABLEKS                       R22 R0 K44 ["inputImage"]
      131 SETTABLEKS                       R22 R21 K32 ["Image"]
      133 GETIMPORT                        R22 K47 [Enum.ScaleType.Fit]
      135 SETTABLEKS                       R22 R21 K41 ["ScaleType"]
      137 CALL                             R19 2 1
      138 SETTABLEKS                       R19 R18 K32 ["Image"]
      140 CALL                             R15 3 1
      141 SETTABLEKS                       R15 R14 K32 ["Image"]
      143 GETUPVAL                         R15 1
      144 GETTABLEKS                       R15 R15 K1 ["createElement"]
      146 GETUPVAL                         R16 2
      147 GETTABLEKS                       R16 R16 K13 ["Text"]
      149 DUPTABLE                         R17 K49 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-emphasis", ["LayoutOrder"]}]
      150 GETTABLEKS                       R18 R0 K50 ["prompt"]
      152 SETTABLEKS                       R18 R17 K13 ["Text"]
      154 MOVE                             R18 R1
      155 CALL                             R18 0 1
      156 SETTABLEKS                       R18 R17 K5 ["LayoutOrder"]
      158 CALL                             R15 2 1
      159 SETTABLEKS                       R15 R14 K33 ["Prompt"]
      161 GETUPVAL                         R15 1
      162 GETTABLEKS                       R15 R15 K1 ["createElement"]
      164 GETUPVAL                         R16 2
      165 GETTABLEKS                       R16 R16 K13 ["Text"]
      167 DUPTABLE                         R17 K52 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["LayoutOrder"]}]
      168 GETTABLEKS                       R18 R0 K53 ["modelName"]
      170 SETTABLEKS                       R18 R17 K13 ["Text"]
      172 MOVE                             R18 R1
      173 CALL                             R18 0 1
      174 SETTABLEKS                       R18 R17 K5 ["LayoutOrder"]
      176 CALL                             R15 2 1
      177 SETTABLEKS                       R15 R14 K34 ["Details"]
      179 CALL                             R11 3 1
      180 SETTABLEKS                       R11 R10 K26 ["Inputs"]
      182 GETUPVAL                         R11 1
      183 GETTABLEKS                       R11 R11 K1 ["createElement"]
      185 GETUPVAL                         R12 2
      186 GETTABLEKS                       R12 R12 K2 ["View"]
      188 DUPTABLE                         R13 K30 [{["tag"] = "col fill gap-small auto-y", ["LayoutOrder"]}]
      189 MOVE                             R14 R1
      190 CALL                             R14 0 1
      191 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      193 DUPTABLE                         R14 K56 [{"Header", "Preview"}]
      194 GETUPVAL                         R15 1
      195 GETTABLEKS                       R15 R15 K1 ["createElement"]
      197 GETUPVAL                         R16 2
      198 GETTABLEKS                       R16 R16 K2 ["View"]
      200 DUPTABLE                         R17 K58 [{["tag"] = "row align-y-center size-full-0 auto-y", ["LayoutOrder"]}]
      201 MOVE                             R18 R1
      202 CALL                             R18 0 1
      203 SETTABLEKS                       R18 R17 K5 ["LayoutOrder"]
      205 DUPTABLE                         R18 K60 [{"Title", "Spacer", "Status"}]
      206 GETUPVAL                         R19 1
      207 GETTABLEKS                       R19 R19 K1 ["createElement"]
      209 GETUPVAL                         R20 2
      210 GETTABLEKS                       R20 R20 K13 ["Text"]
      212 DUPTABLE                         R21 K61 [{["Text"] = "Output", ["tag"] = "auto-xy text-title-small content-emphasis", ["LayoutOrder"]}]
      213 MOVE                             R22 R1
      214 CALL                             R22 0 1
      215 SETTABLEKS                       R22 R21 K5 ["LayoutOrder"]
      217 CALL                             R19 2 1
      218 SETTABLEKS                       R19 R18 K31 ["Title"]
      220 GETUPVAL                         R19 1
      221 GETTABLEKS                       R19 R19 K1 ["createElement"]
      223 GETUPVAL                         R20 2
      224 GETTABLEKS                       R20 R20 K2 ["View"]
      226 DUPTABLE                         R21 K63 [{["tag"] = "fill", ["LayoutOrder"]}]
      227 MOVE                             R22 R1
      228 CALL                             R22 0 1
      229 SETTABLEKS                       R22 R21 K5 ["LayoutOrder"]
      231 CALL                             R19 2 1
      232 SETTABLEKS                       R19 R18 K59 ["Spacer"]
      234 GETUPVAL                         R19 1
      235 GETTABLEKS                       R19 R19 K1 ["createElement"]
      237 GETUPVAL                         R20 2
      238 GETTABLEKS                       R20 R20 K13 ["Text"]
      240 DUPTABLE                         R21 K65 [{["Text"] = "Generating...", ["tag"] = "auto-xy text-body-small content-muted", ["LayoutOrder"]}]
      241 MOVE                             R22 R1
      242 CALL                             R22 0 1
      243 SETTABLEKS                       R22 R21 K5 ["LayoutOrder"]
      245 CALL                             R19 2 1
      246 SETTABLEKS                       R19 R18 K7 ["Status"]
      248 CALL                             R15 3 1
      249 SETTABLEKS                       R15 R14 K54 ["Header"]
      251 GETUPVAL                         R15 1
      252 GETTABLEKS                       R15 R15 K1 ["createElement"]
      254 GETUPVAL                         R16 2
      255 GETTABLEKS                       R16 R16 K2 ["View"]
      257 DUPTABLE                         R17 K39 [{["tag"] = "size-2000-2000 radius-medium bg-surface-200", ["LayoutOrder"]}]
      258 MOVE                             R18 R1
      259 CALL                             R18 0 1
      260 SETTABLEKS                       R18 R17 K5 ["LayoutOrder"]
      262 DUPTABLE                         R18 K67 [{"Skeleton", "Text"}]
      263 GETUPVAL                         R19 1
      264 GETTABLEKS                       R19 R19 K1 ["createElement"]
      266 GETUPVAL                         R20 2
      267 GETTABLEKS                       R20 R20 K66 ["Skeleton"]
      269 DUPTABLE                         R21 K71 [{["tag"] = "size-full", ["radius"], ["ZIndex"]}]
      270 GETUPVAL                         R22 2
      271 GETTABLEKS                       R22 R22 K18 ["Enums"]
      273 GETTABLEKS                       R22 R22 K72 ["Radius"]
      275 GETTABLEKS                       R22 R22 K73 ["Medium"]
      277 SETTABLEKS                       R22 R21 K69 ["radius"]
      279 MOVE                             R22 R2
      280 CALL                             R22 0 1
      281 SETTABLEKS                       R22 R21 K70 ["ZIndex"]
      283 CALL                             R19 2 1
      284 SETTABLEKS                       R19 R18 K66 ["Skeleton"]
      286 GETUPVAL                         R19 1
      287 GETTABLEKS                       R19 R19 K1 ["createElement"]
      289 GETUPVAL                         R20 2
      290 GETTABLEKS                       R20 R20 K13 ["Text"]
      292 DUPTABLE                         R21 K76 [{["Text"] = "Generating mesh...", ["tag"] = "size-full-full text-body-small content-default", ["ZIndex"]}]
      293 MOVE                             R22 R2
      294 CALL                             R22 0 1
      295 SETTABLEKS                       R22 R21 K70 ["ZIndex"]
      297 CALL                             R19 2 1
      298 SETTABLEKS                       R19 R18 K13 ["Text"]
      300 CALL                             R15 3 1
      301 SETTABLEKS                       R15 R14 K55 ["Preview"]
      303 CALL                             R11 3 1
      304 SETTABLEKS                       R11 R10 K27 ["Output"]
      306 CALL                             R7 3 1
      307 SETTABLEKS                       R7 R6 K8 ["Columns"]
      309 CALL                             R3 3 -1
      310 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 GETTABLEKS                       R5 R2 K11 ["memo"]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 -1
       36 RETURN                           R5 -1
