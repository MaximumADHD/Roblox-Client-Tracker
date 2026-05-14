PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Size", "LayoutOrder"}]
        5 GETTABLEKS                       R4 R0 K1 ["Size"]
        7 SETTABLEKS                       R4 R3 K1 ["Size"]
        9 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       13 DUPTABLE                         R4 K6 [{"SendButton", "DEPRECATED_SendButton"}]
       14 GETUPVAL                         R6 2
       15 CALL                             R6 0 1
       16 JUMPIFNOT                        R6 ; [+58]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K0 ["createElement"]
       20 GETUPVAL                         R6 3
       21 DUPTABLE                         R7 K15 [{"AnchorPoint", "Disabled", "Position", "Size", "Style", "StyleModifier", "Text", "TooltipText", "OnClick"}]
       22 GETIMPORT                        R8 K18 [Vector2.new]
       24 LOADN                            R9 1
       25 LOADK                            R10 K19 [0.5]
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K7 ["AnchorPoint"]
       29 GETTABLEKS                       R9 R0 K20 ["Enabled"]
       31 NOT                              R8 R9
       32 SETTABLEKS                       R8 R7 K8 ["Disabled"]
       34 GETIMPORT                        R8 K23 [UDim2.fromScale]
       36 LOADN                            R9 1
       37 LOADK                            R10 K19 [0.5]
       38 CALL                             R8 2 1
       39 SETTABLEKS                       R8 R7 K9 ["Position"]
       41 GETIMPORT                        R8 K25 [UDim2.fromOffset]
       43 LOADN                            R9 100
       44 LOADN                            R10 30
       45 CALL                             R8 2 1
       46 SETTABLEKS                       R8 R7 K1 ["Size"]
       48 LOADK                            R8 K26 ["Primary"]
       49 SETTABLEKS                       R8 R7 K10 ["Style"]
       51 GETTABLEKS                       R9 R0 K20 ["Enabled"]
       53 JUMPIF                           R9 ; [+4]
       54 GETUPVAL                         R8 4
       55 GETTABLEKS                       R8 R8 K8 ["Disabled"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R8
       59 SETTABLEKS                       R8 R7 K11 ["StyleModifier"]
       61 GETTABLEKS                       R8 R0 K27 ["PreviewButtonText"]
       63 SETTABLEKS                       R8 R7 K12 ["Text"]
       65 GETTABLEKS                       R8 R0 K28 ["QuotaTooltipText"]
       67 SETTABLEKS                       R8 R7 K13 ["TooltipText"]
       69 GETTABLEKS                       R8 R0 K14 ["OnClick"]
       71 SETTABLEKS                       R8 R7 K14 ["OnClick"]
       73 CALL                             R5 2 1
       74 JUMP                             ; [+1]
       75 LOADNIL                          R5
       76 SETTABLEKS                       R5 R4 K4 ["SendButton"]
       78 GETUPVAL                         R6 2
       79 CALL                             R6 0 1
       80 JUMPIF                           R6 ; [+66]
       81 GETUPVAL                         R5 0
       82 GETTABLEKS                       R5 R5 K0 ["createElement"]
       84 GETUPVAL                         R6 5
       85 DUPTABLE                         R7 K29 [{"AnchorPoint", "OnClick", "Position", "Size", "Style", "StyleModifier", "Text"}]
       86 GETIMPORT                        R8 K18 [Vector2.new]
       88 LOADN                            R9 1
       89 LOADK                            R10 K19 [0.5]
       90 CALL                             R8 2 1
       91 SETTABLEKS                       R8 R7 K7 ["AnchorPoint"]
       93 GETTABLEKS                       R8 R0 K14 ["OnClick"]
       95 SETTABLEKS                       R8 R7 K14 ["OnClick"]
       97 GETIMPORT                        R8 K23 [UDim2.fromScale]
       99 LOADN                            R9 1
      100 LOADK                            R10 K19 [0.5]
      101 CALL                             R8 2 1
      102 SETTABLEKS                       R8 R7 K9 ["Position"]
      104 GETIMPORT                        R8 K25 [UDim2.fromOffset]
      106 LOADN                            R9 100
      107 LOADN                            R10 30
      108 CALL                             R8 2 1
      109 SETTABLEKS                       R8 R7 K1 ["Size"]
      111 LOADK                            R8 K30 ["RoundPrimary"]
      112 SETTABLEKS                       R8 R7 K10 ["Style"]
      114 GETTABLEKS                       R9 R0 K20 ["Enabled"]
      116 JUMPIF                           R9 ; [+4]
      117 GETUPVAL                         R8 4
      118 GETTABLEKS                       R8 R8 K8 ["Disabled"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R8
      122 SETTABLEKS                       R8 R7 K11 ["StyleModifier"]
      124 GETTABLEKS                       R8 R0 K27 ["PreviewButtonText"]
      126 SETTABLEKS                       R8 R7 K12 ["Text"]
      128 DUPTABLE                         R8 K32 [{"QuotaTooltip"}]
      129 GETUPVAL                         R9 0
      130 GETTABLEKS                       R9 R9 K0 ["createElement"]
      132 GETUPVAL                         R10 6
      133 DUPTABLE                         R11 K34 [{"Text", "TextXAlignment"}]
      134 GETTABLEKS                       R12 R0 K28 ["QuotaTooltipText"]
      136 SETTABLEKS                       R12 R11 K12 ["Text"]
      138 GETIMPORT                        R12 K37 [Enum.TextXAlignment.Left]
      140 SETTABLEKS                       R12 R11 K33 ["TextXAlignment"]
      142 CALL                             R9 2 1
      143 SETTABLEKS                       R9 R8 K31 ["QuotaTooltip"]
      145 CALL                             R5 3 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R5
      148 SETTABLEKS                       R5 R4 K5 ["DEPRECATED_SendButton"]
      150 CALL                             R1 3 -1
      151 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKS                    R1 K1 [""] ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["setPromptText"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["promptText"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["validRotation"]
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["validSeed"]
       10 GETUPVAL                         R2 1
       11 LOADB                            R3 0
       12 JUMPIFEQKS                       R0 K3 [""] ; [+5]
       14 GETUPVAL                         R4 2
       15 NOT                              R3 R4
       16 JUMPIFNOT                        R3 ; [+1]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createPartGroup"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["previewTexture"]
        9 MOVE                             R2 R0
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 3
       12 CALL                             R1 3 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R1 4
       15 LOADK                            R3 K2 ["PromptEntry"]
       16 LOADK                            R4 K3 ["PartGroupError"]
       17 NAMECALL                         R1 R1 K4 ["getText"]
       19 CALL                             R1 3 -1
       20 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 1
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 4
       13 GETTABLEKS                       R0 R0 K0 ["current"]
       15 GETUPVAL                         R1 5
       16 GETUPVAL                         R2 6
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 7
       19 GETUPVAL                         R3 8
       20 GETUPVAL                         R4 9
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 6
       23 GETTABLEKS                       R3 R3 K1 ["rotation"]
       25 NAMECALL                         R3 R3 K2 ["ToEulerAnglesYXZ"]
       27 CALL                             R3 1 3
       28 FASTCALL1                        MATH_DEG R3 ; [+3]
       29 MOVE                             R8 R3
       30 GETIMPORT                        R7 K5 [math.deg]
       32 CALL                             R7 1 1
       33 FASTCALL1                        MATH_DEG R4 ; [+3]
       34 MOVE                             R9 R4
       35 GETIMPORT                        R8 K5 [math.deg]
       37 CALL                             R8 1 1
       38 FASTCALL1                        MATH_DEG R5 ; [+3]
       39 MOVE                             R10 R5
       40 GETIMPORT                        R9 K5 [math.deg]
       42 CALL                             R9 1 1
       43 FASTCALL                         VECTOR ; [+2]
       44 GETIMPORT                        R6 K8 [Vector3.new]
       46 CALL                             R6 3 1
       47 GETUPVAL                         R7 10
       48 CALL                             R7 0 1
       49 JUMPIFNOT                        R7 ; [+115]
       50 GETUPVAL                         R7 11
       51 GETTABLEKS                       R7 R7 K9 ["TestSelection"]
       53 JUMPIF                           R7 ; [+4]
       54 GETUPVAL                         R7 12
       55 NAMECALL                         R7 R7 K10 ["Get"]
       57 CALL                             R7 1 1
       58 LOADN                            R8 0
       59 MOVE                             R9 R7
       60 LOADNIL                          R10
       61 LOADNIL                          R11
       62 FORGPREP                         R9
       63 ADDK                             R8 R8 K11 [1]
       64 LOADK                            R16 K12 ["Model"]
       65 NAMECALL                         R14 R13 K13 ["IsA"]
       67 CALL                             R14 2 1
       68 JUMPIFNOT                        R14 ; [+1]
       69 SUBK                             R8 R8 K11 [1]
       70 LOADK                            R16 K14 ["SpecialMesh"]
       71 NAMECALL                         R14 R13 K13 ["IsA"]
       73 CALL                             R14 2 1
       74 JUMPIFNOT                        R14 ; [+19]
       75 GETUPVAL                         R14 13
       76 GETTABLEKS                       R14 R14 K15 ["addError"]
       78 MOVE                             R15 R2
       79 LOADK                            R16 K16 ["SpecialMeshSelection"]
       80 GETUPVAL                         R17 14
       81 LOADK                            R19 K17 ["General"]
       82 LOADK                            R20 K18 ["Warning"]
       83 NAMECALL                         R17 R17 K19 ["getText"]
       85 CALL                             R17 3 1
       86 GETUPVAL                         R18 14
       87 LOADK                            R20 K17 ["General"]
       88 LOADK                            R21 K20 ["SpecialMeshWarning"]
       89 NAMECALL                         R18 R18 K19 ["getText"]
       91 CALL                             R18 3 1
       92 LOADK                            R19 K21 ["warning"]
       93 CALL                             R14 5 0
       94 NAMECALL                         R14 R13 K22 ["GetDescendants"]
       96 CALL                             R14 1 3
       97 FORGPREP                         R14
       98 ADDK                             R8 R8 K11 [1]
       99 LOADK                            R21 K23 ["SurfaceAppearance"]
      100 NAMECALL                         R19 R18 K13 ["IsA"]
      102 CALL                             R19 2 1
      103 JUMPIF                           R19 ; [+5]
      104 LOADK                            R21 K12 ["Model"]
      105 NAMECALL                         R19 R18 K13 ["IsA"]
      107 CALL                             R19 2 1
      108 JUMPIFNOT                        R19 ; [+1]
      109 SUBK                             R8 R8 K11 [1]
      110 LOADK                            R21 K14 ["SpecialMesh"]
      111 NAMECALL                         R19 R18 K13 ["IsA"]
      113 CALL                             R19 2 1
      114 JUMPIFNOT                        R19 ; [+19]
      115 GETUPVAL                         R19 13
      116 GETTABLEKS                       R19 R19 K15 ["addError"]
      118 MOVE                             R20 R2
      119 LOADK                            R21 K16 ["SpecialMeshSelection"]
      120 GETUPVAL                         R22 14
      121 LOADK                            R24 K17 ["General"]
      122 LOADK                            R25 K18 ["Warning"]
      123 NAMECALL                         R22 R22 K19 ["getText"]
      125 CALL                             R22 3 1
      126 GETUPVAL                         R23 14
      127 LOADK                            R25 K17 ["General"]
      128 LOADK                            R26 K20 ["SpecialMeshWarning"]
      129 NAMECALL                         R23 R23 K19 ["getText"]
      131 CALL                             R23 3 1
      132 LOADK                            R24 K21 ["warning"]
      133 CALL                             R19 5 0
      134 FORGLOOP                         R14 2 ; [-37]
      136 FORGLOOP                         R9 2 ; [-74]
      138 GETUPVAL                         R10 8
      139 LENGTH                           R9 R10
      140 JUMPIFEQ                         R9 R8 ; [+24]
      142 GETUPVAL                         R10 8
      143 LENGTH                           R9 R10
      144 JUMPIFEQKN                       R9 K24 [0] ; [+20]
      146 GETUPVAL                         R9 13
      147 GETTABLEKS                       R9 R9 K15 ["addError"]
      149 MOVE                             R10 R2
      150 LOADK                            R11 K25 ["MultipleTypeSelection"]
      151 GETUPVAL                         R12 14
      152 LOADK                            R14 K17 ["General"]
      153 LOADK                            R15 K18 ["Warning"]
      154 NAMECALL                         R12 R12 K19 ["getText"]
      156 CALL                             R12 3 1
      157 GETUPVAL                         R13 14
      158 LOADK                            R15 K17 ["General"]
      159 LOADK                            R16 K26 ["MultipleTypeSelectionWarning"]
      160 NAMECALL                         R13 R13 K19 ["getText"]
      162 CALL                             R13 3 1
      163 LOADK                            R14 K21 ["warning"]
      164 CALL                             R9 5 0
      165 GETIMPORT                        R7 K28 [pcall]
      167 NEWCLOSURE                       R8 P0
      168 CAPTURE                          UPVAL U9
      169 CAPTURE                          UPVAL U8
      170 CAPTURE                          VAL R0
      171 CAPTURE                          VAL R1
      172 CAPTURE                          UPVAL U14
      173 CALL                             R7 1 2
      174 GETUPVAL                         R9 2
      175 LOADB                            R10 1
      176 CALL                             R9 1 0
      177 GETUPVAL                         R9 3
      178 LOADB                            R10 0
      179 CALL                             R9 1 0
      180 JUMPIFNOT                        R7 ; [+7]
      181 FASTCALL1                        TYPEOF R8 ; [+3]
      182 MOVE                             R10 R8
      183 GETIMPORT                        R9 K30 [typeof]
      185 CALL                             R9 1 1
      186 JUMPIFNOTEQKS                    R9 K31 ["string"] ; [+16]
      188 GETUPVAL                         R9 13
      189 GETTABLEKS                       R9 R9 K15 ["addError"]
      191 MOVE                             R10 R2
      192 MOVE                             R11 R8
      193 GETUPVAL                         R12 14
      194 LOADK                            R14 K32 ["EntryArea"]
      195 LOADK                            R15 K33 ["ErrorAlertTitle"]
      196 NAMECALL                         R12 R12 K19 ["getText"]
      198 CALL                             R12 3 1
      199 MOVE                             R13 R8
      200 LOADK                            R14 K34 ["error"]
      201 CALL                             R9 5 0
      202 RETURN                           R0 0
      203 GETUPVAL                         R9 8
      204 SETTABLEKS                       R9 R8 K35 ["meshParts"]
      206 SETTABLEKS                       R6 R8 K1 ["rotation"]
      208 GETUPVAL                         R9 6
      209 GETTABLEKS                       R9 R9 K36 ["smartUVUnwrap"]
      211 SETTABLEKS                       R9 R8 K36 ["smartUVUnwrap"]
      213 GETUPVAL                         R9 6
      214 GETTABLEKS                       R9 R9 K37 ["promptMasking"]
      216 SETTABLEKS                       R9 R8 K37 ["promptMasking"]
      218 GETUPVAL                         R10 0
      219 CALL                             R10 0 1
      220 JUMPIFNOT                        R10 ; [+4]
      221 GETIMPORT                        R9 K40 [os.clock]
      223 CALL                             R9 0 1
      224 JUMP                             ; [+1]
      225 LOADNIL                          R9
      226 SETTABLEKS                       R9 R8 K41 ["startTime"]
      228 GETUPVAL                         R10 0
      229 CALL                             R10 0 1
      230 JUMPIFNOT                        R10 ; [+2]
      231 LOADN                            R9 0
      232 JUMP                             ; [+1]
      233 LOADNIL                          R9
      234 SETTABLEKS                       R9 R8 K42 ["previewUrlCount"]
      236 GETUPVAL                         R9 13
      237 GETTABLEKS                       R9 R9 K43 ["addOrUpdatePreview"]
      239 MOVE                             R10 R8
      240 CALL                             R9 1 0
      241 DUPTABLE                         R9 K46 [{"hash", "uuid"}]
      242 SETTABLEKS                       R2 R9 K44 ["hash"]
      244 GETTABLEKS                       R10 R8 K45 ["uuid"]
      246 SETTABLEKS                       R10 R9 K45 ["uuid"]
      248 GETUPVAL                         R10 13
      249 GETTABLEKS                       R10 R10 K47 ["addOrUpdateModelToPreview"]
      251 MOVE                             R11 R9
      252 CALL                             R10 1 0
      253 GETUPVAL                         R10 15
      254 JUMPIFNOT                        R10 ; [+27]
      255 GETUPVAL                         R10 16
      256 LOADK                            R12 K48 ["GeneratedPreview"]
      257 GETUPVAL                         R13 8
      258 MOVE                             R14 R0
      259 GETUPVAL                         R15 6
      260 GETTABLEKS                       R15 R15 K49 ["seed"]
      262 MOVE                             R16 R6
      263 GETUPVAL                         R17 6
      264 GETTABLEKS                       R17 R17 K36 ["smartUVUnwrap"]
      266 GETUPVAL                         R18 6
      267 GETTABLEKS                       R18 R18 K37 ["promptMasking"]
      269 GETTABLEKS                       R19 R8 K45 ["uuid"]
      271 GETUPVAL                         R21 6
      272 GETTABLEKS                       R21 R21 K50 ["artStyle"]
      274 JUMPIFNOTEQKS                    R21 K51 [""] ; [+2]
      276 LOADB                            R20 0 +1
      277 LOADB                            R20 1
      278 NAMECALL                         R10 R10 K52 ["report"]
      280 CALL                             R10 10 0
      281 JUMP                             ; [+19]
      282 GETUPVAL                         R10 16
      283 LOADK                            R12 K48 ["GeneratedPreview"]
      284 GETUPVAL                         R13 8
      285 MOVE                             R14 R0
      286 GETUPVAL                         R15 6
      287 GETTABLEKS                       R15 R15 K49 ["seed"]
      289 MOVE                             R16 R6
      290 GETUPVAL                         R17 6
      291 GETTABLEKS                       R17 R17 K36 ["smartUVUnwrap"]
      293 GETUPVAL                         R18 6
      294 GETTABLEKS                       R18 R18 K37 ["promptMasking"]
      296 GETTABLEKS                       R19 R8 K45 ["uuid"]
      298 NAMECALL                         R10 R10 K52 ["report"]
      300 CALL                             R10 9 0
      301 GETUPVAL                         R10 17
      302 GETUPVAL                         R11 18
      303 GETUPVAL                         R12 13
      304 GETUPVAL                         R13 9
      305 CALL                             R10 3 0
      306 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R3 R3 K0 ["use"]
       11 CALL                             R3 1 1
       12 NAMECALL                         R3 R3 K1 ["get"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 3
       16 CALL                             R4 0 1
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K2 ["useContext"]
       20 GETUPVAL                         R6 5
       21 CALL                             R5 1 1
       22 LOADK                            R8 K3 ["General"]
       23 LOADK                            R9 K4 ["Preview"]
       24 NAMECALL                         R6 R2 K5 ["getText"]
       26 CALL                             R6 3 1
       27 GETUPVAL                         R7 4
       28 GETTABLEKS                       R7 R7 K2 ["useContext"]
       30 GETUPVAL                         R8 6
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 4
       33 GETTABLEKS                       R8 R8 K6 ["useRef"]
       35 GETTABLEKS                       R9 R7 K7 ["promptText"]
       37 CALL                             R8 1 1
       38 GETUPVAL                         R9 4
       39 GETTABLEKS                       R9 R9 K8 ["useState"]
       41 NEWCLOSURE                       R10 P0
       42 CAPTURE                          VAL R8
       43 CALL                             R9 1 2
       44 GETUPVAL                         R11 4
       45 GETTABLEKS                       R11 R11 K8 ["useState"]
       47 LOADB                            R12 0
       48 CALL                             R11 1 2
       49 GETUPVAL                         R13 4
       50 GETTABLEKS                       R13 R13 K9 ["useCallback"]
       52 NEWCLOSURE                       R14 P1
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R7
       55 CALL                             R13 1 1
       56 GETUPVAL                         R14 4
       57 GETTABLEKS                       R14 R14 K2 ["useContext"]
       59 GETUPVAL                         R15 7
       60 CALL                             R14 1 1
       61 GETUPVAL                         R15 4
       62 GETTABLEKS                       R15 R15 K2 ["useContext"]
       64 GETUPVAL                         R16 8
       65 CALL                             R15 1 1
       66 GETTABLEKS                       R17 R15 K10 ["quota"]
       68 LOADN                            R18 0
       69 JUMPIFLT                         R18 R17 ; [+2]
       71 LOADB                            R16 0 +1
       72 LOADB                            R16 1
       73 GETUPVAL                         R17 4
       74 GETTABLEKS                       R17 R17 K11 ["useEffect"]
       76 NEWCLOSURE                       R18 P2
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R11
       80 NEWTABLE                         R19 0 5
       82 GETTABLEKS                       R20 R7 K7 ["promptText"]
       84 MOVE                             R21 R11
       85 GETTABLEKS                       R22 R7 K12 ["validRotation"]
       87 GETTABLEKS                       R23 R7 K13 ["validSeed"]
       89 MOVE                             R24 R16
       90 SETLIST                          R19 R20 5 [1]
       92 CALL                             R17 2 0
       93 GETIMPORT                        R17 K16 [string.format]
       95 LOADK                            R20 K3 ["General"]
       96 LOADK                            R21 K17 ["QuotaTooltip"]
       97 NAMECALL                         R18 R2 K5 ["getText"]
       99 CALL                             R18 3 1
      100 GETTABLEKS                       R19 R15 K10 ["quota"]
      102 GETTABLEKS                       R20 R15 K18 ["total"]
      104 GETTABLEKS                       R21 R15 K18 ["total"]
      106 CALL                             R17 4 1
      107 NEWTABLE                         R18 0 6
      109 MOVE                             R19 R9
      110 MOVE                             R20 R4
      111 GETTABLEKS                       R21 R15 K19 ["addOrUpdatePreview"]
      113 GETTABLEKS                       R22 R15 K20 ["addOrUpdateModelToPreview"]
      115 MOVE                             R23 R7
      116 MOVE                             R24 R5
      117 SETLIST                          R18 R19 6 [1]
      119 GETUPVAL                         R19 4
      120 GETTABLEKS                       R19 R19 K9 ["useCallback"]
      122 NEWCLOSURE                       R20 P3
      123 CAPTURE                          UPVAL U9
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R8
      128 CAPTURE                          UPVAL U10
      129 CAPTURE                          VAL R7
      130 CAPTURE                          UPVAL U11
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R5
      133 CAPTURE                          UPVAL U12
      134 CAPTURE                          VAL R0
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R2
      138 CAPTURE                          UPVAL U13
      139 CAPTURE                          VAL R1
      140 CAPTURE                          UPVAL U14
      141 CAPTURE                          VAL R14
      142 MOVE                             R21 R18
      143 CALL                             R19 2 1
      144 GETUPVAL                         R20 4
      145 GETTABLEKS                       R20 R20 K21 ["createElement"]
      147 GETUPVAL                         R21 15
      148 DUPTABLE                         R22 K25 [{"LayoutOrder", "Padding", "Size"}]
      149 GETTABLEKS                       R23 R0 K22 ["LayoutOrder"]
      151 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      153 LOADN                            R23 10
      154 SETTABLEKS                       R23 R22 K23 ["Padding"]
      156 GETIMPORT                        R23 K28 [UDim2.new]
      158 LOADN                            R24 1
      159 LOADN                            R25 0
      160 LOADN                            R26 0
      161 LOADN                            R27 140
      162 CALL                             R23 4 1
      163 SETTABLEKS                       R23 R22 K24 ["Size"]
      165 DUPTABLE                         R23 K30 [{"TextInput"}]
      166 GETUPVAL                         R24 4
      167 GETTABLEKS                       R24 R24 K21 ["createElement"]
      169 GETUPVAL                         R25 16
      170 DUPTABLE                         R26 K39 [{"BottomComponent", "BottomComponentProps", "Disabled", "MultiLine", "OnEnter", "OnTextChanged", "Text", "Size", "PlaceholderText"}]
      171 GETUPVAL                         R27 17
      172 SETTABLEKS                       R27 R26 K31 ["BottomComponent"]
      174 DUPTABLE                         R27 K44 [{"Enabled", "OnClick", "PreviewButtonText", "QuotaTooltipText", "Size"}]
      175 SETTABLEKS                       R9 R27 K40 ["Enabled"]
      177 SETTABLEKS                       R19 R27 K41 ["OnClick"]
      179 SETTABLEKS                       R6 R27 K42 ["PreviewButtonText"]
      181 SETTABLEKS                       R17 R27 K43 ["QuotaTooltipText"]
      183 GETIMPORT                        R28 K28 [UDim2.new]
      185 LOADN                            R29 1
      186 LOADN                            R30 0
      187 LOADN                            R31 0
      188 LOADN                            R32 32
      189 CALL                             R28 4 1
      190 SETTABLEKS                       R28 R27 K24 ["Size"]
      192 SETTABLEKS                       R27 R26 K32 ["BottomComponentProps"]
      194 SETTABLEKS                       R11 R26 K33 ["Disabled"]
      196 LOADB                            R27 1
      197 SETTABLEKS                       R27 R26 K34 ["MultiLine"]
      199 SETTABLEKS                       R19 R26 K35 ["OnEnter"]
      201 SETTABLEKS                       R13 R26 K36 ["OnTextChanged"]
      203 GETTABLEKS                       R27 R8 K45 ["current"]
      205 SETTABLEKS                       R27 R26 K37 ["Text"]
      207 GETIMPORT                        R27 K28 [UDim2.new]
      209 LOADN                            R28 1
      210 LOADN                            R29 0
      211 LOADN                            R30 0
      212 LOADN                            R31 120
      213 CALL                             R27 4 1
      214 SETTABLEKS                       R27 R26 K24 ["Size"]
      216 LOADK                            R29 K46 ["PromptEntry"]
      217 LOADK                            R30 K47 ["PromptPlaceholder"]
      218 NAMECALL                         R27 R2 K5 ["getText"]
      220 CALL                             R27 3 1
      221 SETTABLEKS                       R27 R26 K38 ["PlaceholderText"]
      223 CALL                             R24 2 1
      224 SETTABLEKS                       R24 R23 K29 ["TextInput"]
      226 CALL                             R20 3 -1
      227 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K12 ["Analytics"]
       32 GETTABLEKS                       R6 R4 K13 ["Localization"]
       34 GETTABLEKS                       R7 R0 K9 ["Src"]
       36 GETTABLEKS                       R7 R7 K14 ["Hooks"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R7 K15 ["useSelectedMeshParts"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R2 K16 ["Style"]
       45 GETTABLEKS                       R9 R9 K17 ["Stylizer"]
       47 GETTABLEKS                       R10 R2 K18 ["Util"]
       49 GETTABLEKS                       R10 R10 K19 ["StyleModifier"]
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R12 R0 K9 ["Src"]
       55 GETTABLEKS                       R12 R12 K20 ["Components"]
       57 GETTABLEKS                       R12 R12 K21 ["TextureGenerationServiceContext"]
       59 CALL                             R11 1 1
       60 GETTABLEKS                       R12 R2 K22 ["UI"]
       62 GETTABLEKS                       R13 R12 K23 ["Pane"]
       64 GETTABLEKS                       R14 R12 K24 ["IconButton"]
       66 GETTABLEKS                       R15 R12 K25 ["Button"]
       68 GETTABLEKS                       R16 R12 K26 ["TextInput"]
       70 GETTABLEKS                       R17 R12 K27 ["Tooltip"]
       72 GETTABLEKS                       R18 R0 K9 ["Src"]
       74 GETTABLEKS                       R18 R18 K18 ["Util"]
       76 GETIMPORT                        R19 K5 [require]
       78 GETTABLEKS                       R20 R18 K28 ["createHashFromMeshParts"]
       80 CALL                             R19 1 1
       81 GETIMPORT                        R20 K5 [require]
       83 GETTABLEKS                       R21 R18 K29 ["fetchAndSetQuotas"]
       85 CALL                             R20 1 1
       86 GETIMPORT                        R21 K5 [require]
       88 GETTABLEKS                       R22 R18 K30 ["GenerationsContext"]
       90 CALL                             R21 1 1
       91 GETIMPORT                        R22 K5 [require]
       93 GETTABLEKS                       R23 R18 K31 ["OptionsContext"]
       95 CALL                             R22 1 1
       96 GETIMPORT                        R23 K5 [require]
       98 GETTABLEKS                       R24 R18 K32 ["PreviewsContext"]
      100 CALL                             R23 1 1
      101 GETIMPORT                        R24 K5 [require]
      103 GETTABLEKS                       R25 R18 K33 ["createOptionsFromContext"]
      105 CALL                             R24 1 1
      106 GETIMPORT                        R25 K5 [require]
      108 GETTABLEKS                       R26 R0 K9 ["Src"]
      110 GETTABLEKS                       R26 R26 K18 ["Util"]
      112 GETTABLEKS                       R26 R26 K34 ["SelectionWrapper"]
      114 CALL                             R25 1 1
      115 GETIMPORT                        R26 K36 [game]
      117 LOADK                            R28 K37 ["TextureGeneratorAddStyleControlTelemetry"]
      118 LOADB                            R29 0
      119 NAMECALL                         R26 R26 K38 ["DefineFastFlag"]
      121 CALL                             R26 3 1
      122 GETIMPORT                        R27 K5 [require]
      124 GETTABLEKS                       R28 R0 K9 ["Src"]
      126 GETTABLEKS                       R28 R28 K39 ["Flags"]
      128 GETTABLEKS                       R28 R28 K40 ["getFFlagTextureGeneratorRerollButton"]
      130 CALL                             R27 1 1
      131 GETIMPORT                        R28 K5 [require]
      133 GETTABLEKS                       R29 R0 K9 ["Src"]
      135 GETTABLEKS                       R29 R29 K39 ["Flags"]
      137 GETTABLEKS                       R29 R29 K41 ["getFFlagTextureGeneratorBanners"]
      139 CALL                             R28 1 1
      140 GETIMPORT                        R29 K5 [require]
      142 GETTABLEKS                       R30 R0 K9 ["Src"]
      144 GETTABLEKS                       R30 R30 K39 ["Flags"]
      146 GETTABLEKS                       R30 R30 K42 ["getFFlagTextureGeneratorBugFixes"]
      148 CALL                             R29 1 1
      149 DUPCLOSURE                       R30 K43 [PROTO_0]
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R27
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R17
      157 DUPCLOSURE                       R31 K44 [PROTO_6]
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R25
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R21
      166 CAPTURE                          VAL R23
      167 CAPTURE                          VAL R29
      168 CAPTURE                          VAL R24
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R28
      171 CAPTURE                          VAL R26
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R16
      175 CAPTURE                          VAL R30
      176 RETURN                           R31 1
