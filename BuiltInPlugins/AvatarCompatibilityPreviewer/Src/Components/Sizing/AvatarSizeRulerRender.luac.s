PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R0 K3 ["AxisSize"]
       10 GETTABLEKS                       R3 R0 K4 ["MinSize"]
       12 JUMPIFNOTLT                      R2 R3 ; [+52]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K5 ["createElement"]
       17 GETUPVAL                         R3 2
       18 DUPTABLE                         R4 K12 [{"Text", "TextFace", "CFrame", "Size", "Axis1", "Axis2"}]
       19 LOADK                            R7 K13 ["AvatarSizeRuler"]
       20 LOADK                            R8 K14 ["DoesNotCoverMinSize"]
       21 DUPTABLE                         R9 K19 [{"bodyPart", "axisName", "axisSize", "minSize"}]
       22 GETTABLEKS                       R10 R0 K20 ["ItemName"]
       24 SETTABLEKS                       R10 R9 K15 ["bodyPart"]
       26 GETTABLEKS                       R10 R0 K21 ["AxisName"]
       28 SETTABLEKS                       R10 R9 K16 ["axisName"]
       30 GETTABLEKS                       R10 R0 K3 ["AxisSize"]
       32 SETTABLEKS                       R10 R9 K17 ["axisSize"]
       34 GETTABLEKS                       R10 R0 K4 ["MinSize"]
       36 SETTABLEKS                       R10 R9 K18 ["minSize"]
       38 NAMECALL                         R5 R1 K22 ["getText"]
       40 CALL                             R5 4 1
       41 SETTABLEKS                       R5 R4 K6 ["Text"]
       43 GETTABLEKS                       R5 R0 K7 ["TextFace"]
       45 SETTABLEKS                       R5 R4 K7 ["TextFace"]
       47 GETTABLEKS                       R5 R0 K8 ["CFrame"]
       49 SETTABLEKS                       R5 R4 K8 ["CFrame"]
       51 GETTABLEKS                       R5 R0 K9 ["Size"]
       53 SETTABLEKS                       R5 R4 K9 ["Size"]
       55 GETTABLEKS                       R5 R0 K10 ["Axis1"]
       57 SETTABLEKS                       R5 R4 K10 ["Axis1"]
       59 GETTABLEKS                       R5 R0 K11 ["Axis2"]
       61 SETTABLEKS                       R5 R4 K11 ["Axis2"]
       63 CALL                             R2 2 -1
       64 RETURN                           R2 -1
       65 GETTABLEKS                       R2 R0 K3 ["AxisSize"]
       67 GETTABLEKS                       R3 R0 K23 ["MaxSize"]
       69 JUMPIFNOTLT                      R3 R2 ; [+52]
       71 GETUPVAL                         R2 1
       72 GETTABLEKS                       R2 R2 K5 ["createElement"]
       74 GETUPVAL                         R3 2
       75 DUPTABLE                         R4 K12 [{"Text", "TextFace", "CFrame", "Size", "Axis1", "Axis2"}]
       76 LOADK                            R7 K13 ["AvatarSizeRuler"]
       77 LOADK                            R8 K24 ["DoesNotContainMaxSize"]
       78 DUPTABLE                         R9 K26 [{"bodyPart", "axisName", "axisSize", "maxSize"}]
       79 GETTABLEKS                       R10 R0 K20 ["ItemName"]
       81 SETTABLEKS                       R10 R9 K15 ["bodyPart"]
       83 GETTABLEKS                       R10 R0 K21 ["AxisName"]
       85 SETTABLEKS                       R10 R9 K16 ["axisName"]
       87 GETTABLEKS                       R10 R0 K3 ["AxisSize"]
       89 SETTABLEKS                       R10 R9 K17 ["axisSize"]
       91 GETTABLEKS                       R10 R0 K23 ["MaxSize"]
       93 SETTABLEKS                       R10 R9 K25 ["maxSize"]
       95 NAMECALL                         R5 R1 K22 ["getText"]
       97 CALL                             R5 4 1
       98 SETTABLEKS                       R5 R4 K6 ["Text"]
      100 GETTABLEKS                       R5 R0 K7 ["TextFace"]
      102 SETTABLEKS                       R5 R4 K7 ["TextFace"]
      104 GETTABLEKS                       R5 R0 K8 ["CFrame"]
      106 SETTABLEKS                       R5 R4 K8 ["CFrame"]
      108 GETTABLEKS                       R5 R0 K9 ["Size"]
      110 SETTABLEKS                       R5 R4 K9 ["Size"]
      112 GETTABLEKS                       R5 R0 K10 ["Axis1"]
      114 SETTABLEKS                       R5 R4 K10 ["Axis1"]
      116 GETTABLEKS                       R5 R0 K11 ["Axis2"]
      118 SETTABLEKS                       R5 R4 K11 ["Axis2"]
      120 CALL                             R2 2 -1
      121 RETURN                           R2 -1
      122 LOADNIL                          R2
      123 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 LOADB                            R2 0
        9 GETTABLEKS                       R3 R0 K3 ["Size"]
       11 GETTABLEKS                       R3 R3 K4 ["X"]
       13 GETTABLEKS                       R4 R0 K5 ["SizeBounds"]
       15 GETTABLEKS                       R4 R4 K6 ["minSize"]
       17 GETTABLEKS                       R4 R4 K4 ["X"]
       19 JUMPIFNOTLE                      R4 R3 ; [+15]
       21 GETTABLEKS                       R3 R0 K3 ["Size"]
       23 GETTABLEKS                       R3 R3 K4 ["X"]
       25 GETTABLEKS                       R4 R0 K5 ["SizeBounds"]
       27 GETTABLEKS                       R4 R4 K7 ["maxSize"]
       29 GETTABLEKS                       R4 R4 K4 ["X"]
       31 JUMPIFLE                         R3 R4 ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 LOADB                            R3 0
       36 GETTABLEKS                       R4 R0 K3 ["Size"]
       38 GETTABLEKS                       R4 R4 K8 ["Y"]
       40 GETTABLEKS                       R5 R0 K5 ["SizeBounds"]
       42 GETTABLEKS                       R5 R5 K6 ["minSize"]
       44 GETTABLEKS                       R5 R5 K8 ["Y"]
       46 JUMPIFNOTLE                      R5 R4 ; [+15]
       48 GETTABLEKS                       R4 R0 K3 ["Size"]
       50 GETTABLEKS                       R4 R4 K8 ["Y"]
       52 GETTABLEKS                       R5 R0 K5 ["SizeBounds"]
       54 GETTABLEKS                       R5 R5 K7 ["maxSize"]
       56 GETTABLEKS                       R5 R5 K8 ["Y"]
       58 JUMPIFLE                         R4 R5 ; [+2]
       60 LOADB                            R3 0 +1
       61 LOADB                            R3 1
       62 LOADB                            R4 0
       63 GETTABLEKS                       R5 R0 K3 ["Size"]
       65 GETTABLEKS                       R5 R5 K9 ["Z"]
       67 GETTABLEKS                       R6 R0 K5 ["SizeBounds"]
       69 GETTABLEKS                       R6 R6 K6 ["minSize"]
       71 GETTABLEKS                       R6 R6 K9 ["Z"]
       73 JUMPIFNOTLE                      R6 R5 ; [+15]
       75 GETTABLEKS                       R5 R0 K3 ["Size"]
       77 GETTABLEKS                       R5 R5 K9 ["Z"]
       79 GETTABLEKS                       R6 R0 K5 ["SizeBounds"]
       81 GETTABLEKS                       R6 R6 K7 ["maxSize"]
       83 GETTABLEKS                       R6 R6 K9 ["Z"]
       85 JUMPIFLE                         R5 R6 ; [+2]
       87 LOADB                            R4 0 +1
       88 LOADB                            R4 1
       89 LOADNIL                          R5
       90 JUMPIF                           R3 ; [+2]
       91 LOADK                            R5 K8 ["Y"]
       92 JUMP                             ; [+5]
       93 JUMPIF                           R4 ; [+2]
       94 LOADK                            R5 K9 ["Z"]
       95 JUMP                             ; [+2]
       96 JUMPIF                           R2 ; [+1]
       97 LOADK                            R5 K4 ["X"]
       98 GETUPVAL                         R6 1
       99 GETTABLEKS                       R6 R6 K10 ["createElement"]
      101 LOADK                            R7 K11 ["Folder"]
      102 DUPTABLE                         R8 K13 [{"Archivable"}]
      103 LOADB                            R9 0
      104 SETTABLEKS                       R9 R8 K12 ["Archivable"]
      106 DUPTABLE                         R9 K17 [{"XAxis", "YAxis", "ZAxis"}]
      107 JUMPIFNOTEQKS                    R5 K4 ["X"] ; [+66]
      109 GETUPVAL                         R10 1
      110 GETTABLEKS                       R10 R10 K10 ["createElement"]
      112 GETUPVAL                         R11 2
      113 DUPTABLE                         R12 K27 [{"ItemName", "AxisName", "Size", "TextFace", "AxisSize", "MinSize", "MaxSize", "Axis1", "Axis2", "CFrame"}]
      114 GETTABLEKS                       R13 R0 K18 ["ItemName"]
      116 SETTABLEKS                       R13 R12 K18 ["ItemName"]
      118 LOADK                            R15 K28 ["AvatarSizeRuler"]
      119 LOADK                            R16 K29 ["Width"]
      120 NAMECALL                         R13 R1 K30 ["getText"]
      122 CALL                             R13 3 1
      123 SETTABLEKS                       R13 R12 K19 ["AxisName"]
      125 GETTABLEKS                       R13 R0 K3 ["Size"]
      127 SETTABLEKS                       R13 R12 K3 ["Size"]
      129 GETIMPORT                        R13 K34 [Enum.NormalId.Front]
      131 SETTABLEKS                       R13 R12 K20 ["TextFace"]
      133 GETTABLEKS                       R13 R0 K3 ["Size"]
      135 GETTABLEKS                       R13 R13 K4 ["X"]
      137 SETTABLEKS                       R13 R12 K21 ["AxisSize"]
      139 GETTABLEKS                       R13 R0 K5 ["SizeBounds"]
      141 GETTABLEKS                       R13 R13 K6 ["minSize"]
      143 GETTABLEKS                       R13 R13 K4 ["X"]
      145 SETTABLEKS                       R13 R12 K22 ["MinSize"]
      147 GETTABLEKS                       R13 R0 K5 ["SizeBounds"]
      149 GETTABLEKS                       R13 R13 K7 ["maxSize"]
      151 GETTABLEKS                       R13 R13 K4 ["X"]
      153 SETTABLEKS                       R13 R12 K23 ["MaxSize"]
      155 GETTABLEKS                       R13 R0 K26 ["CFrame"]
      157 GETTABLEKS                       R13 R13 K35 ["ZVector"]
      159 SETTABLEKS                       R13 R12 K24 ["Axis1"]
      161 GETTABLEKS                       R14 R0 K26 ["CFrame"]
      163 GETTABLEKS                       R14 R14 K36 ["XVector"]
      165 MINUS                            R13 R14
      166 SETTABLEKS                       R13 R12 K25 ["Axis2"]
      168 GETTABLEKS                       R13 R0 K26 ["CFrame"]
      170 SETTABLEKS                       R13 R12 K26 ["CFrame"]
      172 CALL                             R10 2 1
      173 JUMP                             ; [+1]
      174 LOADNIL                          R10
      175 SETTABLEKS                       R10 R9 K14 ["XAxis"]
      177 JUMPIFNOTEQKS                    R5 K8 ["Y"] ; [+66]
      179 GETUPVAL                         R10 1
      180 GETTABLEKS                       R10 R10 K10 ["createElement"]
      182 GETUPVAL                         R11 2
      183 DUPTABLE                         R12 K37 [{"ItemName", "AxisName", "Size", "AxisSize", "TextFace", "MinSize", "MaxSize", "Axis1", "Axis2", "CFrame"}]
      184 GETTABLEKS                       R13 R0 K18 ["ItemName"]
      186 SETTABLEKS                       R13 R12 K18 ["ItemName"]
      188 LOADK                            R15 K28 ["AvatarSizeRuler"]
      189 LOADK                            R16 K38 ["Height"]
      190 NAMECALL                         R13 R1 K30 ["getText"]
      192 CALL                             R13 3 1
      193 SETTABLEKS                       R13 R12 K19 ["AxisName"]
      195 GETTABLEKS                       R13 R0 K3 ["Size"]
      197 SETTABLEKS                       R13 R12 K3 ["Size"]
      199 GETTABLEKS                       R13 R0 K3 ["Size"]
      201 GETTABLEKS                       R13 R13 K8 ["Y"]
      203 SETTABLEKS                       R13 R12 K21 ["AxisSize"]
      205 GETIMPORT                        R13 K34 [Enum.NormalId.Front]
      207 SETTABLEKS                       R13 R12 K20 ["TextFace"]
      209 GETTABLEKS                       R13 R0 K5 ["SizeBounds"]
      211 GETTABLEKS                       R13 R13 K6 ["minSize"]
      213 GETTABLEKS                       R13 R13 K8 ["Y"]
      215 SETTABLEKS                       R13 R12 K22 ["MinSize"]
      217 GETTABLEKS                       R13 R0 K5 ["SizeBounds"]
      219 GETTABLEKS                       R13 R13 K7 ["maxSize"]
      221 GETTABLEKS                       R13 R13 K8 ["Y"]
      223 SETTABLEKS                       R13 R12 K23 ["MaxSize"]
      225 GETTABLEKS                       R13 R0 K26 ["CFrame"]
      227 GETTABLEKS                       R13 R13 K36 ["XVector"]
      229 SETTABLEKS                       R13 R12 K24 ["Axis1"]
      231 GETTABLEKS                       R14 R0 K26 ["CFrame"]
      233 GETTABLEKS                       R14 R14 K39 ["YVector"]
      235 MINUS                            R13 R14
      236 SETTABLEKS                       R13 R12 K25 ["Axis2"]
      238 GETTABLEKS                       R13 R0 K26 ["CFrame"]
      240 SETTABLEKS                       R13 R12 K26 ["CFrame"]
      242 CALL                             R10 2 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R10
      245 SETTABLEKS                       R10 R9 K15 ["YAxis"]
      247 JUMPIFNOTEQKS                    R5 K9 ["Z"] ; [+66]
      249 GETUPVAL                         R10 1
      250 GETTABLEKS                       R10 R10 K10 ["createElement"]
      252 GETUPVAL                         R11 2
      253 DUPTABLE                         R12 K37 [{"ItemName", "AxisName", "Size", "AxisSize", "TextFace", "MinSize", "MaxSize", "Axis1", "Axis2", "CFrame"}]
      254 GETTABLEKS                       R13 R0 K18 ["ItemName"]
      256 SETTABLEKS                       R13 R12 K18 ["ItemName"]
      258 LOADK                            R15 K28 ["AvatarSizeRuler"]
      259 LOADK                            R16 K40 ["Depth"]
      260 NAMECALL                         R13 R1 K30 ["getText"]
      262 CALL                             R13 3 1
      263 SETTABLEKS                       R13 R12 K19 ["AxisName"]
      265 GETTABLEKS                       R13 R0 K3 ["Size"]
      267 SETTABLEKS                       R13 R12 K3 ["Size"]
      269 GETTABLEKS                       R13 R0 K3 ["Size"]
      271 GETTABLEKS                       R13 R13 K9 ["Z"]
      273 SETTABLEKS                       R13 R12 K21 ["AxisSize"]
      275 GETIMPORT                        R13 K42 [Enum.NormalId.Top]
      277 SETTABLEKS                       R13 R12 K20 ["TextFace"]
      279 GETTABLEKS                       R13 R0 K5 ["SizeBounds"]
      281 GETTABLEKS                       R13 R13 K6 ["minSize"]
      283 GETTABLEKS                       R13 R13 K9 ["Z"]
      285 SETTABLEKS                       R13 R12 K22 ["MinSize"]
      287 GETTABLEKS                       R13 R0 K5 ["SizeBounds"]
      289 GETTABLEKS                       R13 R13 K7 ["maxSize"]
      291 GETTABLEKS                       R13 R13 K9 ["Z"]
      293 SETTABLEKS                       R13 R12 K23 ["MaxSize"]
      295 GETTABLEKS                       R13 R0 K26 ["CFrame"]
      297 GETTABLEKS                       R13 R13 K36 ["XVector"]
      299 SETTABLEKS                       R13 R12 K24 ["Axis1"]
      301 GETTABLEKS                       R14 R0 K26 ["CFrame"]
      303 GETTABLEKS                       R14 R14 K35 ["ZVector"]
      305 MINUS                            R13 R14
      306 SETTABLEKS                       R13 R12 K25 ["Axis2"]
      308 GETTABLEKS                       R13 R0 K26 ["CFrame"]
      310 SETTABLEKS                       R13 R12 K26 ["CFrame"]
      312 CALL                             R10 2 1
      313 JUMP                             ; [+1]
      314 LOADNIL                          R10
      315 SETTABLEKS                       R10 R9 K16 ["ZAxis"]
      317 CALL                             R6 3 -1
      318 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Sizing"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSizeRuler"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Components"]
       24 GETTABLEKS                       R3 R3 K8 ["Sizing"]
       26 GETTABLEKS                       R3 R3 K10 ["AvatarSizeSpecificationUtils"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K11 ["Packages"]
       33 GETTABLEKS                       R4 R4 K12 ["Framework"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K11 ["Packages"]
       40 GETTABLEKS                       R5 R5 K13 ["React"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K14 [PROTO_0]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R1
       47 DUPCLOSURE                       R6 K15 [PROTO_1]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 RETURN                           R6 1
