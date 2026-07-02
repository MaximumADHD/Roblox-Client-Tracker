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
      102 DUPTABLE                         R8 K14 [{["Archivable"] = False}]
      103 DUPTABLE                         R9 K18 [{"XAxis", "YAxis", "ZAxis"}]
      104 JUMPIFNOTEQKS                    R5 K4 ["X"] ; [+66]
      106 GETUPVAL                         R10 1
      107 GETTABLEKS                       R10 R10 K10 ["createElement"]
      109 GETUPVAL                         R11 2
      110 DUPTABLE                         R12 K28 [{"ItemName", "AxisName", "Size", "TextFace", "AxisSize", "MinSize", "MaxSize", "Axis1", "Axis2", "CFrame"}]
      111 GETTABLEKS                       R13 R0 K19 ["ItemName"]
      113 SETTABLEKS                       R13 R12 K19 ["ItemName"]
      115 LOADK                            R15 K29 ["AvatarSizeRuler"]
      116 LOADK                            R16 K30 ["Width"]
      117 NAMECALL                         R13 R1 K31 ["getText"]
      119 CALL                             R13 3 1
      120 SETTABLEKS                       R13 R12 K20 ["AxisName"]
      122 GETTABLEKS                       R13 R0 K3 ["Size"]
      124 SETTABLEKS                       R13 R12 K3 ["Size"]
      126 GETIMPORT                        R13 K35 [Enum.NormalId.Front]
      128 SETTABLEKS                       R13 R12 K21 ["TextFace"]
      130 GETTABLEKS                       R13 R0 K3 ["Size"]
      132 GETTABLEKS                       R13 R13 K4 ["X"]
      134 SETTABLEKS                       R13 R12 K22 ["AxisSize"]
      136 GETTABLEKS                       R13 R0 K5 ["SizeBounds"]
      138 GETTABLEKS                       R13 R13 K6 ["minSize"]
      140 GETTABLEKS                       R13 R13 K4 ["X"]
      142 SETTABLEKS                       R13 R12 K23 ["MinSize"]
      144 GETTABLEKS                       R13 R0 K5 ["SizeBounds"]
      146 GETTABLEKS                       R13 R13 K7 ["maxSize"]
      148 GETTABLEKS                       R13 R13 K4 ["X"]
      150 SETTABLEKS                       R13 R12 K24 ["MaxSize"]
      152 GETTABLEKS                       R13 R0 K27 ["CFrame"]
      154 GETTABLEKS                       R13 R13 K36 ["ZVector"]
      156 SETTABLEKS                       R13 R12 K25 ["Axis1"]
      158 GETTABLEKS                       R14 R0 K27 ["CFrame"]
      160 GETTABLEKS                       R14 R14 K37 ["XVector"]
      162 MINUS                            R13 R14
      163 SETTABLEKS                       R13 R12 K26 ["Axis2"]
      165 GETTABLEKS                       R13 R0 K27 ["CFrame"]
      167 SETTABLEKS                       R13 R12 K27 ["CFrame"]
      169 CALL                             R10 2 1
      170 JUMP                             ; [+1]
      171 LOADNIL                          R10
      172 SETTABLEKS                       R10 R9 K15 ["XAxis"]
      174 JUMPIFNOTEQKS                    R5 K8 ["Y"] ; [+66]
      176 GETUPVAL                         R10 1
      177 GETTABLEKS                       R10 R10 K10 ["createElement"]
      179 GETUPVAL                         R11 2
      180 DUPTABLE                         R12 K38 [{"ItemName", "AxisName", "Size", "AxisSize", "TextFace", "MinSize", "MaxSize", "Axis1", "Axis2", "CFrame"}]
      181 GETTABLEKS                       R13 R0 K19 ["ItemName"]
      183 SETTABLEKS                       R13 R12 K19 ["ItemName"]
      185 LOADK                            R15 K29 ["AvatarSizeRuler"]
      186 LOADK                            R16 K39 ["Height"]
      187 NAMECALL                         R13 R1 K31 ["getText"]
      189 CALL                             R13 3 1
      190 SETTABLEKS                       R13 R12 K20 ["AxisName"]
      192 GETTABLEKS                       R13 R0 K3 ["Size"]
      194 SETTABLEKS                       R13 R12 K3 ["Size"]
      196 GETTABLEKS                       R13 R0 K3 ["Size"]
      198 GETTABLEKS                       R13 R13 K8 ["Y"]
      200 SETTABLEKS                       R13 R12 K22 ["AxisSize"]
      202 GETIMPORT                        R13 K35 [Enum.NormalId.Front]
      204 SETTABLEKS                       R13 R12 K21 ["TextFace"]
      206 GETTABLEKS                       R13 R0 K5 ["SizeBounds"]
      208 GETTABLEKS                       R13 R13 K6 ["minSize"]
      210 GETTABLEKS                       R13 R13 K8 ["Y"]
      212 SETTABLEKS                       R13 R12 K23 ["MinSize"]
      214 GETTABLEKS                       R13 R0 K5 ["SizeBounds"]
      216 GETTABLEKS                       R13 R13 K7 ["maxSize"]
      218 GETTABLEKS                       R13 R13 K8 ["Y"]
      220 SETTABLEKS                       R13 R12 K24 ["MaxSize"]
      222 GETTABLEKS                       R13 R0 K27 ["CFrame"]
      224 GETTABLEKS                       R13 R13 K37 ["XVector"]
      226 SETTABLEKS                       R13 R12 K25 ["Axis1"]
      228 GETTABLEKS                       R14 R0 K27 ["CFrame"]
      230 GETTABLEKS                       R14 R14 K40 ["YVector"]
      232 MINUS                            R13 R14
      233 SETTABLEKS                       R13 R12 K26 ["Axis2"]
      235 GETTABLEKS                       R13 R0 K27 ["CFrame"]
      237 SETTABLEKS                       R13 R12 K27 ["CFrame"]
      239 CALL                             R10 2 1
      240 JUMP                             ; [+1]
      241 LOADNIL                          R10
      242 SETTABLEKS                       R10 R9 K16 ["YAxis"]
      244 JUMPIFNOTEQKS                    R5 K9 ["Z"] ; [+66]
      246 GETUPVAL                         R10 1
      247 GETTABLEKS                       R10 R10 K10 ["createElement"]
      249 GETUPVAL                         R11 2
      250 DUPTABLE                         R12 K38 [{"ItemName", "AxisName", "Size", "AxisSize", "TextFace", "MinSize", "MaxSize", "Axis1", "Axis2", "CFrame"}]
      251 GETTABLEKS                       R13 R0 K19 ["ItemName"]
      253 SETTABLEKS                       R13 R12 K19 ["ItemName"]
      255 LOADK                            R15 K29 ["AvatarSizeRuler"]
      256 LOADK                            R16 K41 ["Depth"]
      257 NAMECALL                         R13 R1 K31 ["getText"]
      259 CALL                             R13 3 1
      260 SETTABLEKS                       R13 R12 K20 ["AxisName"]
      262 GETTABLEKS                       R13 R0 K3 ["Size"]
      264 SETTABLEKS                       R13 R12 K3 ["Size"]
      266 GETTABLEKS                       R13 R0 K3 ["Size"]
      268 GETTABLEKS                       R13 R13 K9 ["Z"]
      270 SETTABLEKS                       R13 R12 K22 ["AxisSize"]
      272 GETIMPORT                        R13 K43 [Enum.NormalId.Top]
      274 SETTABLEKS                       R13 R12 K21 ["TextFace"]
      276 GETTABLEKS                       R13 R0 K5 ["SizeBounds"]
      278 GETTABLEKS                       R13 R13 K6 ["minSize"]
      280 GETTABLEKS                       R13 R13 K9 ["Z"]
      282 SETTABLEKS                       R13 R12 K23 ["MinSize"]
      284 GETTABLEKS                       R13 R0 K5 ["SizeBounds"]
      286 GETTABLEKS                       R13 R13 K7 ["maxSize"]
      288 GETTABLEKS                       R13 R13 K9 ["Z"]
      290 SETTABLEKS                       R13 R12 K24 ["MaxSize"]
      292 GETTABLEKS                       R13 R0 K27 ["CFrame"]
      294 GETTABLEKS                       R13 R13 K37 ["XVector"]
      296 SETTABLEKS                       R13 R12 K25 ["Axis1"]
      298 GETTABLEKS                       R14 R0 K27 ["CFrame"]
      300 GETTABLEKS                       R14 R14 K36 ["ZVector"]
      302 MINUS                            R13 R14
      303 SETTABLEKS                       R13 R12 K26 ["Axis2"]
      305 GETTABLEKS                       R13 R0 K27 ["CFrame"]
      307 SETTABLEKS                       R13 R12 K27 ["CFrame"]
      309 CALL                             R10 2 1
      310 JUMP                             ; [+1]
      311 LOADNIL                          R10
      312 SETTABLEKS                       R10 R9 K17 ["ZAxis"]
      314 CALL                             R6 3 -1
      315 RETURN                           R6 -1

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
