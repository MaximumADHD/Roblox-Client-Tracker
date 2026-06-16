PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Avatar"]
        3 GETTABLEKS                       R0 R0 K1 ["WorldModel"]
        5 NAMECALL                         R0 R0 K2 ["GetBoundingBox"]
        7 CALL                             R0 1 2
        8 DUPTABLE                         R2 K5 [{"CFrame", "Size"}]
        9 SETTABLEKS                       R0 R2 K3 ["CFrame"]
       11 SETTABLEKS                       R1 R2 K4 ["Size"]
       13 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["Avatar"]
        5 GETTABLEKS                       R2 R2 K1 ["WorldModel"]
        7 NAMECALL                         R2 R2 K2 ["GetChildren"]
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 LOADK                            R9 K3 ["MeshPart"]
       12 NAMECALL                         R7 R6 K4 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+3]
       16 GETTABLEKS                       R7 R6 K5 ["Name"]
       18 SETTABLE                         R6 R1 R7
       19 FORGLOOP                         R2 2 ; [-9]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K6 ["current"]
       24 JUMPIFEQKNIL                     R2 ; [+10]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K7 ["isPreprocessDataCached"]
       29 MOVE                             R3 R1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K6 ["current"]
       33 CALL                             R2 2 1
       34 JUMPIF                           R2 ; [+25]
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K8 ["preprocessDataAsync"]
       38 MOVE                             R3 R1
       39 CALL                             R2 1 1
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R3 R3 K6 ["current"]
       43 JUMPIFEQ                         R3 R0 ; [+3]
       45 LOADNIL                          R3
       46 RETURN                           R3 1
       47 GETTABLEKS                       R3 R2 K9 ["ok"]
       49 JUMPIFNOT                        R3 ; [+6]
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R4 R2 K10 ["cache"]
       53 SETTABLEKS                       R4 R3 K6 ["current"]
       55 JUMP                             ; [+4]
       56 GETUPVAL                         R3 1
       57 LOADNIL                          R4
       58 SETTABLEKS                       R4 R3 K6 ["current"]
       60 GETUPVAL                         R2 2
       61 GETTABLEKS                       R2 R2 K11 ["calculateScaleToValidateBoundsAsync"]
       63 MOVE                             R3 R1
       64 LOADNIL                          R4
       65 LOADNIL                          R5
       66 LOADNIL                          R6
       67 LOADNIL                          R7
       68 GETUPVAL                         R8 1
       69 GETTABLEKS                       R8 R8 K6 ["current"]
       71 CALL                             R2 6 1
       72 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R4 K0 ["BasePart"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 JUMPIFEQKS                       R1 K2 ["Size"] ; [+3]
        7 JUMPIFNOTEQKS                    R1 K3 ["CFrame"] ; [+5]
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 1
       11 CALL                             R3 0 -1
       12 CALL                             R2 -1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["watchForChanges"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Avatar"]
        6 GETTABLEKS                       R1 R1 K2 ["WorldModel"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R1 3
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["current"]
        6 ADDK                             R0 R1 K0 [1]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R0 R1 K1 ["current"]
       10 LOADB                            R1 1
       11 GETIMPORT                        R2 K4 [task.spawn]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          REF R1
       17 CAPTURE                          UPVAL U0
       18 CALL                             R2 1 0
       19 NEWCLOSURE                       R2 P1
       20 CAPTURE                          REF R1
       21 CLOSEUPVALS                      R1
       22 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["coversMin"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Size"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["sizeBounds"]
        9 GETTABLEKS                       R2 R2 K3 ["minSize"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["containsMax"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Size"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["sizeBounds"]
        9 GETTABLEKS                       R2 R2 K3 ["maxSize"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K5 ["useCallback"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R5 0 3
       22 GETTABLEKS                       R6 R0 K6 ["Avatar"]
       24 GETTABLEKS                       R6 R6 K7 ["WorldModel"]
       26 GETTABLEKS                       R7 R0 K6 ["Avatar"]
       28 GETTABLEKS                       R7 R7 K8 ["WorldModelScale"]
       30 GETTABLEKS                       R8 R0 K6 ["Avatar"]
       32 GETTABLEKS                       R8 R8 K9 ["LatestWorldModelHash"]
       34 SETLIST                          R5 R6 3 [1]
       36 CALL                             R3 2 1
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K10 ["useRef"]
       40 LOADNIL                          R5
       41 CALL                             R4 1 1
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K10 ["useRef"]
       45 LOADN                            R6 0
       46 CALL                             R5 1 1
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       50 NEWCLOSURE                       R7 P1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 NEWTABLE                         R8 0 3
       57 GETTABLEKS                       R9 R0 K6 ["Avatar"]
       59 GETTABLEKS                       R9 R9 K7 ["WorldModel"]
       61 GETTABLEKS                       R10 R0 K6 ["Avatar"]
       63 GETTABLEKS                       R10 R10 K8 ["WorldModelScale"]
       65 GETTABLEKS                       R11 R0 K6 ["Avatar"]
       67 GETTABLEKS                       R11 R11 K9 ["LatestWorldModelHash"]
       69 SETLIST                          R8 R9 3 [1]
       71 CALL                             R6 2 1
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K11 ["useState"]
       75 LOADNIL                          R8
       76 CALL                             R7 1 2
       77 GETUPVAL                         R9 1
       78 GETTABLEKS                       R9 R9 K11 ["useState"]
       80 MOVE                             R10 R3
       81 CALL                             R9 1 2
       82 GETUPVAL                         R11 3
       83 DUPTABLE                         R12 K13 [{"Avatar", "ValidationResults"}]
       84 GETTABLEKS                       R13 R0 K6 ["Avatar"]
       86 SETTABLEKS                       R13 R12 K6 ["Avatar"]
       88 SETTABLEKS                       R7 R12 K12 ["ValidationResults"]
       90 CALL                             R11 1 1
       91 GETUPVAL                         R12 1
       92 GETTABLEKS                       R12 R12 K14 ["useEffect"]
       94 NEWCLOSURE                       R13 P2
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R3
       99 NEWTABLE                         R14 0 2
      101 GETTABLEKS                       R15 R0 K6 ["Avatar"]
      103 GETTABLEKS                       R15 R15 K7 ["WorldModel"]
      105 MOVE                             R16 R3
      106 SETLIST                          R14 R15 2 [1]
      108 CALL                             R12 2 0
      109 GETUPVAL                         R12 1
      110 GETTABLEKS                       R12 R12 K14 ["useEffect"]
      112 NEWCLOSURE                       R13 P3
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R6
      116 NEWTABLE                         R14 0 1
      118 MOVE                             R15 R6
      119 SETLIST                          R14 R15 1 [1]
      121 CALL                             R12 2 0
      122 GETUPVAL                         R12 1
      123 GETTABLEKS                       R12 R12 K15 ["useMemo"]
      125 NEWCLOSURE                       R13 P4
      126 CAPTURE                          UPVAL U5
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R11
      129 NEWTABLE                         R14 0 2
      131 GETTABLEKS                       R15 R11 K16 ["sizeBounds"]
      133 GETTABLEKS                       R15 R15 K17 ["minSize"]
      135 GETTABLEKS                       R16 R9 K18 ["Size"]
      137 SETLIST                          R14 R15 2 [1]
      139 CALL                             R12 2 1
      140 GETUPVAL                         R13 1
      141 GETTABLEKS                       R13 R13 K15 ["useMemo"]
      143 NEWCLOSURE                       R14 P5
      144 CAPTURE                          UPVAL U5
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R11
      147 NEWTABLE                         R15 0 2
      149 GETTABLEKS                       R16 R11 K16 ["sizeBounds"]
      151 GETTABLEKS                       R16 R16 K19 ["maxSize"]
      153 GETTABLEKS                       R17 R9 K18 ["Size"]
      155 SETLIST                          R15 R16 2 [1]
      157 CALL                             R13 2 1
      158 AND                              R14 R12 R13
      159 GETUPVAL                         R15 6
      160 DUPTABLE                         R16 K21 [{"Avatar", "Enabled"}]
      161 GETTABLEKS                       R17 R0 K6 ["Avatar"]
      163 SETTABLEKS                       R17 R16 K6 ["Avatar"]
      165 SETTABLEKS                       R14 R16 K20 ["Enabled"]
      167 CALL                             R15 1 0
      168 GETUPVAL                         R15 7
      169 CALL                             R15 0 1
      170 GETIMPORT                        R16 K25 [Enum.RibbonTool.Scale]
      172 JUMPIFEQ                         R15 R16 ; [+3]
      174 LOADNIL                          R16
      175 RETURN                           R16 1
      176 JUMPIFNOTEQKNIL                  R7 ; [+2]
      178 LOADB                            R16 0 +1
      179 LOADB                            R16 1
      180 GETUPVAL                         R17 8
      181 GETTABLEKS                       R17 R17 K26 ["createPortal"]
      183 GETUPVAL                         R18 1
      184 GETTABLEKS                       R18 R18 K27 ["createElement"]
      186 GETUPVAL                         R19 1
      187 GETTABLEKS                       R19 R19 K28 ["Fragment"]
      189 NEWTABLE                         R20 0 0
      191 DUPTABLE                         R21 K33 [{"MinBoundingBox", "MaxBoundingBox", "Ruler", "InvalidPartsHint"}]
      192 JUMPIFNOT                        R16 ; [+29]
      193 JUMPIF                           R14 ; [+28]
      194 GETUPVAL                         R22 1
      195 GETTABLEKS                       R22 R22 K27 ["createElement"]
      197 GETUPVAL                         R23 9
      198 DUPTABLE                         R24 K39 [{"BoundingBoxCFrame", "BoundingBoxSize", "IsValid", "Inside", "AllValid", "Size"}]
      199 GETTABLEKS                       R25 R9 K40 ["CFrame"]
      201 SETTABLEKS                       R25 R24 K34 ["BoundingBoxCFrame"]
      203 GETTABLEKS                       R25 R9 K18 ["Size"]
      205 SETTABLEKS                       R25 R24 K35 ["BoundingBoxSize"]
      207 SETTABLEKS                       R12 R24 K36 ["IsValid"]
      209 LOADB                            R25 1
      210 SETTABLEKS                       R25 R24 K37 ["Inside"]
      212 SETTABLEKS                       R14 R24 K38 ["AllValid"]
      214 GETTABLEKS                       R25 R11 K16 ["sizeBounds"]
      216 GETTABLEKS                       R25 R25 K17 ["minSize"]
      218 SETTABLEKS                       R25 R24 K18 ["Size"]
      220 CALL                             R22 2 1
      221 JUMP                             ; [+1]
      222 LOADNIL                          R22
      223 SETTABLEKS                       R22 R21 K29 ["MinBoundingBox"]
      225 JUMPIFNOT                        R16 ; [+29]
      226 JUMPIF                           R14 ; [+28]
      227 GETUPVAL                         R22 1
      228 GETTABLEKS                       R22 R22 K27 ["createElement"]
      230 GETUPVAL                         R23 9
      231 DUPTABLE                         R24 K39 [{"BoundingBoxCFrame", "BoundingBoxSize", "IsValid", "Inside", "AllValid", "Size"}]
      232 GETTABLEKS                       R25 R9 K40 ["CFrame"]
      234 SETTABLEKS                       R25 R24 K34 ["BoundingBoxCFrame"]
      236 GETTABLEKS                       R25 R9 K18 ["Size"]
      238 SETTABLEKS                       R25 R24 K35 ["BoundingBoxSize"]
      240 SETTABLEKS                       R13 R24 K36 ["IsValid"]
      242 LOADB                            R25 0
      243 SETTABLEKS                       R25 R24 K37 ["Inside"]
      245 SETTABLEKS                       R14 R24 K38 ["AllValid"]
      247 GETTABLEKS                       R25 R11 K16 ["sizeBounds"]
      249 GETTABLEKS                       R25 R25 K19 ["maxSize"]
      251 SETTABLEKS                       R25 R24 K18 ["Size"]
      253 CALL                             R22 2 1
      254 JUMP                             ; [+1]
      255 LOADNIL                          R22
      256 SETTABLEKS                       R22 R21 K30 ["MaxBoundingBox"]
      258 JUMPIFNOT                        R16 ; [+27]
      259 JUMPIF                           R14 ; [+26]
      260 GETUPVAL                         R22 1
      261 GETTABLEKS                       R22 R22 K27 ["createElement"]
      263 GETUPVAL                         R23 10
      264 DUPTABLE                         R24 K43 [{"ItemName", "Size", "CFrame", "SizeBounds"}]
      265 LOADK                            R27 K44 ["AvatarSizeRuler"]
      266 LOADK                            R28 K45 ["AvatarLabel"]
      267 NAMECALL                         R25 R1 K46 ["getText"]
      269 CALL                             R25 3 1
      270 SETTABLEKS                       R25 R24 K41 ["ItemName"]
      272 GETTABLEKS                       R25 R9 K18 ["Size"]
      274 SETTABLEKS                       R25 R24 K18 ["Size"]
      276 GETTABLEKS                       R25 R9 K40 ["CFrame"]
      278 SETTABLEKS                       R25 R24 K40 ["CFrame"]
      280 GETTABLEKS                       R25 R11 K16 ["sizeBounds"]
      282 SETTABLEKS                       R25 R24 K42 ["SizeBounds"]
      284 CALL                             R22 2 1
      285 JUMP                             ; [+1]
      286 LOADNIL                          R22
      287 SETTABLEKS                       R22 R21 K31 ["Ruler"]
      289 JUMPIFNOT                        R16 ; [+18]
      290 JUMPIFNOT                        R14 ; [+17]
      291 GETIMPORT                        R23 K48 [next]
      293 GETTABLEKS                       R24 R11 K49 ["invalidBodyParts"]
      295 CALL                             R23 1 1
      296 JUMPIFNOT                        R23 ; [+11]
      297 GETUPVAL                         R22 1
      298 GETTABLEKS                       R22 R22 K27 ["createElement"]
      300 GETUPVAL                         R23 11
      301 DUPTABLE                         R24 K50 [{"invalidBodyParts"}]
      302 GETTABLEKS                       R25 R11 K49 ["invalidBodyParts"]
      304 SETTABLEKS                       R25 R24 K49 ["invalidBodyParts"]
      306 CALL                             R22 2 1
      307 JUMP                             ; [+1]
      308 LOADNIL                          R22
      309 SETTABLEKS                       R22 R21 K32 ["InvalidPartsHint"]
      311 CALL                             R18 3 1
      312 GETTABLEKS                       R19 R0 K51 ["Container"]
      314 JUMPIF                           R19 ; [+1]
      315 GETUPVAL                         R19 12
      316 LOADK                            R20 K52 ["AvatarSizingHint"]
      317 CALL                             R17 3 -1
      318 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CoreGui"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Components"]
       19 GETTABLEKS                       R3 R3 K12 ["Sizing"]
       21 GETTABLEKS                       R3 R3 K13 ["AvatarSizeRulerRender"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R0 K10 ["Src"]
       28 GETTABLEKS                       R4 R4 K11 ["Components"]
       30 GETTABLEKS                       R4 R4 K12 ["Sizing"]
       32 GETTABLEKS                       R4 R4 K14 ["AvatarSizeSpecificationUtils"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K9 [require]
       37 GETTABLEKS                       R5 R0 K10 ["Src"]
       39 GETTABLEKS                       R5 R5 K11 ["Components"]
       41 GETTABLEKS                       R5 R5 K12 ["Sizing"]
       43 GETTABLEKS                       R5 R5 K15 ["AvatarSizingBoundingBox"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K9 [require]
       48 GETTABLEKS                       R6 R0 K10 ["Src"]
       50 GETTABLEKS                       R6 R6 K16 ["Util"]
       52 GETTABLEKS                       R6 R6 K17 ["DataModelUtils"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K9 [require]
       57 GETTABLEKS                       R7 R0 K18 ["Packages"]
       59 GETTABLEKS                       R7 R7 K19 ["Framework"]
       61 CALL                             R6 1 1
       62 GETIMPORT                        R7 K9 [require]
       64 GETTABLEKS                       R8 R0 K10 ["Src"]
       66 GETTABLEKS                       R8 R8 K11 ["Components"]
       68 GETTABLEKS                       R8 R8 K12 ["Sizing"]
       70 GETTABLEKS                       R8 R8 K20 ["InvalidPartsHint"]
       72 CALL                             R7 1 1
       73 GETIMPORT                        R8 K9 [require]
       75 GETTABLEKS                       R9 R0 K18 ["Packages"]
       77 GETTABLEKS                       R9 R9 K21 ["React"]
       79 CALL                             R8 1 1
       80 GETIMPORT                        R9 K9 [require]
       82 GETTABLEKS                       R10 R0 K18 ["Packages"]
       84 GETTABLEKS                       R10 R10 K22 ["ReactRoblox"]
       86 CALL                             R9 1 1
       87 GETIMPORT                        R10 K9 [require]
       89 GETTABLEKS                       R11 R0 K10 ["Src"]
       91 GETTABLEKS                       R11 R11 K23 ["Types"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K9 [require]
       96 GETTABLEKS                       R12 R0 K10 ["Src"]
       98 GETTABLEKS                       R12 R12 K11 ["Components"]
      100 GETTABLEKS                       R12 R12 K24 ["UGCValidationContext"]
      102 CALL                             R11 1 1
      103 GETIMPORT                        R12 K9 [require]
      105 GETTABLEKS                       R13 R0 K10 ["Src"]
      107 GETTABLEKS                       R13 R13 K11 ["Components"]
      109 GETTABLEKS                       R13 R13 K12 ["Sizing"]
      111 GETTABLEKS                       R13 R13 K25 ["useAvatarSizeState"]
      113 CALL                             R12 1 1
      114 GETIMPORT                        R13 K9 [require]
      116 GETTABLEKS                       R14 R0 K10 ["Src"]
      118 GETTABLEKS                       R14 R14 K11 ["Components"]
      120 GETTABLEKS                       R14 R14 K12 ["Sizing"]
      122 GETTABLEKS                       R14 R14 K26 ["useResetAvatarValuesToScale"]
      124 CALL                             R13 1 1
      125 GETIMPORT                        R14 K9 [require]
      127 GETTABLEKS                       R15 R0 K10 ["Src"]
      129 GETTABLEKS                       R15 R15 K11 ["Components"]
      131 GETTABLEKS                       R15 R15 K12 ["Sizing"]
      133 GETTABLEKS                       R15 R15 K27 ["useSelectedRibbonTool"]
      135 CALL                             R14 1 1
      136 DUPCLOSURE                       R15 K28 [PROTO_9]
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R1
      150 RETURN                           R15 1
