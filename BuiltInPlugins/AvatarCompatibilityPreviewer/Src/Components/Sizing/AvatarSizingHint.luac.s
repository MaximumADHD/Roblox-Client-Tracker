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
       22 CALL                             R2 0 1
       23 JUMPIF                           R2 ; [+6]
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R2 R2 K6 ["calculateScaleToValidateBoundsAsync"]
       27 MOVE                             R3 R1
       28 CALL                             R2 1 -1
       29 RETURN                           R2 -1
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K7 ["current"]
       33 JUMPIFEQKNIL                     R2 ; [+10]
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K8 ["isPreprocessDataCached"]
       38 MOVE                             R3 R1
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R4 R4 K7 ["current"]
       42 CALL                             R2 2 1
       43 JUMPIF                           R2 ; [+25]
       44 GETUPVAL                         R2 2
       45 GETTABLEKS                       R2 R2 K9 ["preprocessDataAsync"]
       47 MOVE                             R3 R1
       48 CALL                             R2 1 1
       49 GETUPVAL                         R3 4
       50 GETTABLEKS                       R3 R3 K7 ["current"]
       52 JUMPIFEQ                         R3 R0 ; [+3]
       54 LOADNIL                          R3
       55 RETURN                           R3 1
       56 GETTABLEKS                       R3 R2 K10 ["ok"]
       58 JUMPIFNOT                        R3 ; [+6]
       59 GETUPVAL                         R3 3
       60 GETTABLEKS                       R4 R2 K11 ["cache"]
       62 SETTABLEKS                       R4 R3 K7 ["current"]
       64 JUMP                             ; [+4]
       65 GETUPVAL                         R3 3
       66 LOADNIL                          R4
       67 SETTABLEKS                       R4 R3 K7 ["current"]
       69 GETUPVAL                         R2 2
       70 GETTABLEKS                       R2 R2 K6 ["calculateScaleToValidateBoundsAsync"]
       72 MOVE                             R3 R1
       73 LOADNIL                          R4
       74 LOADNIL                          R5
       75 LOADNIL                          R6
       76 LOADNIL                          R7
       77 GETUPVAL                         R8 3
       78 GETTABLEKS                       R8 R8 K7 ["current"]
       80 CALL                             R2 6 1
       81 RETURN                           R2 1

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
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+4]
        5 GETIMPORT                        R0 K2 [task.cancel]
        7 GETUPVAL                         R1 2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 LOADNIL                          R0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["current"]
       10 ADDK                             R0 R1 K0 [1]
       11 GETUPVAL                         R1 2
       12 SETTABLEKS                       R0 R1 K1 ["current"]
       14 LOADB                            R1 1
       15 GETIMPORT                        R2 K4 [task.spawn]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          REF R0
       20 CAPTURE                          REF R1
       21 CAPTURE                          UPVAL U0
       22 CALL                             R2 1 1
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          REF R1
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R2
       27 CLOSEUPVALS                      R0
       28 RETURN                           R3 1

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
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 NEWTABLE                         R8 0 3
       58 GETTABLEKS                       R9 R0 K6 ["Avatar"]
       60 GETTABLEKS                       R9 R9 K7 ["WorldModel"]
       62 GETTABLEKS                       R10 R0 K6 ["Avatar"]
       64 GETTABLEKS                       R10 R10 K8 ["WorldModelScale"]
       66 GETTABLEKS                       R11 R0 K6 ["Avatar"]
       68 GETTABLEKS                       R11 R11 K9 ["LatestWorldModelHash"]
       70 SETLIST                          R8 R9 3 [1]
       72 CALL                             R6 2 1
       73 GETUPVAL                         R7 1
       74 GETTABLEKS                       R7 R7 K11 ["useState"]
       76 LOADNIL                          R8
       77 CALL                             R7 1 2
       78 GETUPVAL                         R9 1
       79 GETTABLEKS                       R9 R9 K11 ["useState"]
       81 MOVE                             R10 R3
       82 CALL                             R9 1 2
       83 GETUPVAL                         R11 4
       84 DUPTABLE                         R12 K13 [{"Avatar", "ValidationResults"}]
       85 GETTABLEKS                       R13 R0 K6 ["Avatar"]
       87 SETTABLEKS                       R13 R12 K6 ["Avatar"]
       89 SETTABLEKS                       R7 R12 K12 ["ValidationResults"]
       91 CALL                             R11 1 1
       92 GETUPVAL                         R12 1
       93 GETTABLEKS                       R12 R12 K14 ["useEffect"]
       95 NEWCLOSURE                       R13 P2
       96 CAPTURE                          UPVAL U5
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R3
      100 NEWTABLE                         R14 0 2
      102 GETTABLEKS                       R15 R0 K6 ["Avatar"]
      104 GETTABLEKS                       R15 R15 K7 ["WorldModel"]
      106 MOVE                             R16 R3
      107 SETLIST                          R14 R15 2 [1]
      109 CALL                             R12 2 0
      110 GETUPVAL                         R12 1
      111 GETTABLEKS                       R12 R12 K14 ["useEffect"]
      113 NEWCLOSURE                       R13 P3
      114 CAPTURE                          VAL R8
      115 CAPTURE                          UPVAL U3
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R6
      118 NEWTABLE                         R14 0 1
      120 MOVE                             R15 R6
      121 SETLIST                          R14 R15 1 [1]
      123 CALL                             R12 2 0
      124 GETUPVAL                         R12 1
      125 GETTABLEKS                       R12 R12 K15 ["useMemo"]
      127 NEWCLOSURE                       R13 P4
      128 CAPTURE                          UPVAL U6
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R11
      131 NEWTABLE                         R14 0 2
      133 GETTABLEKS                       R15 R11 K16 ["sizeBounds"]
      135 GETTABLEKS                       R15 R15 K17 ["minSize"]
      137 GETTABLEKS                       R16 R9 K18 ["Size"]
      139 SETLIST                          R14 R15 2 [1]
      141 CALL                             R12 2 1
      142 GETUPVAL                         R13 1
      143 GETTABLEKS                       R13 R13 K15 ["useMemo"]
      145 NEWCLOSURE                       R14 P5
      146 CAPTURE                          UPVAL U6
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R11
      149 NEWTABLE                         R15 0 2
      151 GETTABLEKS                       R16 R11 K16 ["sizeBounds"]
      153 GETTABLEKS                       R16 R16 K19 ["maxSize"]
      155 GETTABLEKS                       R17 R9 K18 ["Size"]
      157 SETLIST                          R15 R16 2 [1]
      159 CALL                             R13 2 1
      160 AND                              R14 R12 R13
      161 GETUPVAL                         R15 7
      162 DUPTABLE                         R16 K21 [{"Avatar", "Enabled"}]
      163 GETTABLEKS                       R17 R0 K6 ["Avatar"]
      165 SETTABLEKS                       R17 R16 K6 ["Avatar"]
      167 SETTABLEKS                       R14 R16 K20 ["Enabled"]
      169 CALL                             R15 1 0
      170 GETUPVAL                         R15 8
      171 CALL                             R15 0 1
      172 GETIMPORT                        R16 K25 [Enum.RibbonTool.Scale]
      174 JUMPIFEQ                         R15 R16 ; [+3]
      176 LOADNIL                          R16
      177 RETURN                           R16 1
      178 JUMPIFNOTEQKNIL                  R7 ; [+2]
      180 LOADB                            R16 0 +1
      181 LOADB                            R16 1
      182 GETUPVAL                         R17 9
      183 GETTABLEKS                       R17 R17 K26 ["createPortal"]
      185 GETUPVAL                         R18 1
      186 GETTABLEKS                       R18 R18 K27 ["createElement"]
      188 GETUPVAL                         R19 1
      189 GETTABLEKS                       R19 R19 K28 ["Fragment"]
      191 NEWTABLE                         R20 0 0
      193 DUPTABLE                         R21 K33 [{"MinBoundingBox", "MaxBoundingBox", "Ruler", "InvalidPartsHint"}]
      194 JUMPIFNOT                        R16 ; [+29]
      195 JUMPIF                           R14 ; [+28]
      196 GETUPVAL                         R22 1
      197 GETTABLEKS                       R22 R22 K27 ["createElement"]
      199 GETUPVAL                         R23 10
      200 DUPTABLE                         R24 K39 [{"BoundingBoxCFrame", "BoundingBoxSize", "IsValid", "Inside", "AllValid", "Size"}]
      201 GETTABLEKS                       R25 R9 K40 ["CFrame"]
      203 SETTABLEKS                       R25 R24 K34 ["BoundingBoxCFrame"]
      205 GETTABLEKS                       R25 R9 K18 ["Size"]
      207 SETTABLEKS                       R25 R24 K35 ["BoundingBoxSize"]
      209 SETTABLEKS                       R12 R24 K36 ["IsValid"]
      211 LOADB                            R25 1
      212 SETTABLEKS                       R25 R24 K37 ["Inside"]
      214 SETTABLEKS                       R14 R24 K38 ["AllValid"]
      216 GETTABLEKS                       R25 R11 K16 ["sizeBounds"]
      218 GETTABLEKS                       R25 R25 K17 ["minSize"]
      220 SETTABLEKS                       R25 R24 K18 ["Size"]
      222 CALL                             R22 2 1
      223 JUMP                             ; [+1]
      224 LOADNIL                          R22
      225 SETTABLEKS                       R22 R21 K29 ["MinBoundingBox"]
      227 JUMPIFNOT                        R16 ; [+29]
      228 JUMPIF                           R14 ; [+28]
      229 GETUPVAL                         R22 1
      230 GETTABLEKS                       R22 R22 K27 ["createElement"]
      232 GETUPVAL                         R23 10
      233 DUPTABLE                         R24 K39 [{"BoundingBoxCFrame", "BoundingBoxSize", "IsValid", "Inside", "AllValid", "Size"}]
      234 GETTABLEKS                       R25 R9 K40 ["CFrame"]
      236 SETTABLEKS                       R25 R24 K34 ["BoundingBoxCFrame"]
      238 GETTABLEKS                       R25 R9 K18 ["Size"]
      240 SETTABLEKS                       R25 R24 K35 ["BoundingBoxSize"]
      242 SETTABLEKS                       R13 R24 K36 ["IsValid"]
      244 LOADB                            R25 0
      245 SETTABLEKS                       R25 R24 K37 ["Inside"]
      247 SETTABLEKS                       R14 R24 K38 ["AllValid"]
      249 GETTABLEKS                       R25 R11 K16 ["sizeBounds"]
      251 GETTABLEKS                       R25 R25 K19 ["maxSize"]
      253 SETTABLEKS                       R25 R24 K18 ["Size"]
      255 CALL                             R22 2 1
      256 JUMP                             ; [+1]
      257 LOADNIL                          R22
      258 SETTABLEKS                       R22 R21 K30 ["MaxBoundingBox"]
      260 JUMPIFNOT                        R16 ; [+27]
      261 JUMPIF                           R14 ; [+26]
      262 GETUPVAL                         R22 1
      263 GETTABLEKS                       R22 R22 K27 ["createElement"]
      265 GETUPVAL                         R23 11
      266 DUPTABLE                         R24 K43 [{"ItemName", "Size", "CFrame", "SizeBounds"}]
      267 LOADK                            R27 K44 ["AvatarSizeRuler"]
      268 LOADK                            R28 K45 ["AvatarLabel"]
      269 NAMECALL                         R25 R1 K46 ["getText"]
      271 CALL                             R25 3 1
      272 SETTABLEKS                       R25 R24 K41 ["ItemName"]
      274 GETTABLEKS                       R25 R9 K18 ["Size"]
      276 SETTABLEKS                       R25 R24 K18 ["Size"]
      278 GETTABLEKS                       R25 R9 K40 ["CFrame"]
      280 SETTABLEKS                       R25 R24 K40 ["CFrame"]
      282 GETTABLEKS                       R25 R11 K16 ["sizeBounds"]
      284 SETTABLEKS                       R25 R24 K42 ["SizeBounds"]
      286 CALL                             R22 2 1
      287 JUMP                             ; [+1]
      288 LOADNIL                          R22
      289 SETTABLEKS                       R22 R21 K31 ["Ruler"]
      291 JUMPIFNOT                        R16 ; [+18]
      292 JUMPIFNOT                        R14 ; [+17]
      293 GETIMPORT                        R23 K48 [next]
      295 GETTABLEKS                       R24 R11 K49 ["invalidBodyParts"]
      297 CALL                             R23 1 1
      298 JUMPIFNOT                        R23 ; [+11]
      299 GETUPVAL                         R22 1
      300 GETTABLEKS                       R22 R22 K27 ["createElement"]
      302 GETUPVAL                         R23 12
      303 DUPTABLE                         R24 K50 [{"invalidBodyParts"}]
      304 GETTABLEKS                       R25 R11 K49 ["invalidBodyParts"]
      306 SETTABLEKS                       R25 R24 K49 ["invalidBodyParts"]
      308 CALL                             R22 2 1
      309 JUMP                             ; [+1]
      310 LOADNIL                          R22
      311 SETTABLEKS                       R22 R21 K32 ["InvalidPartsHint"]
      313 CALL                             R18 3 1
      314 GETTABLEKS                       R19 R0 K51 ["Container"]
      316 JUMPIF                           R19 ; [+1]
      317 GETUPVAL                         R19 13
      318 LOADK                            R20 K52 ["AvatarSizingHint"]
      319 CALL                             R17 3 -1
      320 RETURN                           R17 -1

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
      107 GETTABLEKS                       R13 R13 K25 ["Flags"]
      109 GETTABLEKS                       R13 R13 K26 ["getFFlagUGCValidateUseDataCache"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K9 [require]
      114 GETTABLEKS                       R14 R0 K10 ["Src"]
      116 GETTABLEKS                       R14 R14 K11 ["Components"]
      118 GETTABLEKS                       R14 R14 K12 ["Sizing"]
      120 GETTABLEKS                       R14 R14 K27 ["useAvatarSizeState"]
      122 CALL                             R13 1 1
      123 GETIMPORT                        R14 K9 [require]
      125 GETTABLEKS                       R15 R0 K10 ["Src"]
      127 GETTABLEKS                       R15 R15 K11 ["Components"]
      129 GETTABLEKS                       R15 R15 K12 ["Sizing"]
      131 GETTABLEKS                       R15 R15 K28 ["useResetAvatarValuesToScale"]
      133 CALL                             R14 1 1
      134 GETIMPORT                        R15 K9 [require]
      136 GETTABLEKS                       R16 R0 K10 ["Src"]
      138 GETTABLEKS                       R16 R16 K11 ["Components"]
      140 GETTABLEKS                       R16 R16 K12 ["Sizing"]
      142 GETTABLEKS                       R16 R16 K29 ["useSelectedRibbonTool"]
      144 CALL                             R15 1 1
      145 DUPCLOSURE                       R16 K30 [PROTO_9]
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R1
      160 RETURN                           R16 1
