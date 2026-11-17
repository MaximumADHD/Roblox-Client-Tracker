PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Size", "LayoutOrder"}]
        5 GETTABLEKS                       R4 R0 K1 ["Size"]
        7 SETTABLEKS                       R4 R3 K1 ["Size"]
        9 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       13 DUPTABLE                         R4 K5 [{"SendButton"}]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K0 ["createElement"]
       17 GETUPVAL                         R6 2
       18 DUPTABLE                         R7 K15 [{["AnchorPoint"], ["Disabled"], ["Position"], ["Size"], ["Style"] = "Primary", ["StyleModifier"], ["Text"], ["TooltipText"], ["OnClick"]}]
       19 GETIMPORT                        R8 K18 [Vector2.new]
       21 LOADN                            R9 1
       22 LOADK                            R10 K19 [0.5]
       23 CALL                             R8 2 1
       24 SETTABLEKS                       R8 R7 K6 ["AnchorPoint"]
       26 GETTABLEKS                       R9 R0 K20 ["Enabled"]
       28 NOT                              R8 R9
       29 SETTABLEKS                       R8 R7 K7 ["Disabled"]
       31 GETIMPORT                        R8 K23 [UDim2.fromScale]
       33 LOADN                            R9 1
       34 LOADK                            R10 K19 [0.5]
       35 CALL                             R8 2 1
       36 SETTABLEKS                       R8 R7 K8 ["Position"]
       38 GETIMPORT                        R8 K25 [UDim2.fromOffset]
       40 LOADN                            R9 100
       41 LOADN                            R10 30
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K1 ["Size"]
       45 GETTABLEKS                       R9 R0 K20 ["Enabled"]
       47 JUMPIF                           R9 ; [+4]
       48 GETUPVAL                         R8 3
       49 GETTABLEKS                       R8 R8 K7 ["Disabled"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R8
       53 SETTABLEKS                       R8 R7 K11 ["StyleModifier"]
       55 GETTABLEKS                       R8 R0 K26 ["PreviewButtonText"]
       57 SETTABLEKS                       R8 R7 K12 ["Text"]
       59 GETTABLEKS                       R8 R0 K27 ["QuotaTooltipText"]
       61 SETTABLEKS                       R8 R7 K13 ["TooltipText"]
       63 GETTABLEKS                       R8 R0 K14 ["OnClick"]
       65 SETTABLEKS                       R8 R7 K14 ["OnClick"]
       67 CALL                             R5 2 1
       68 SETTABLEKS                       R5 R4 K4 ["SendButton"]
       70 CALL                             R1 3 -1
       71 RETURN                           R1 -1

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
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 GETUPVAL                         R1 3
       10 GETUPVAL                         R2 4
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 5
       13 GETUPVAL                         R3 6
       14 GETUPVAL                         R4 7
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R3 R3 K1 ["rotation"]
       19 NAMECALL                         R3 R3 K2 ["ToEulerAnglesYXZ"]
       21 CALL                             R3 1 3
       22 FASTCALL1                        MATH_DEG R3 ; [+3]
       23 MOVE                             R8 R3
       24 GETIMPORT                        R7 K5 [math.deg]
       26 CALL                             R7 1 1
       27 FASTCALL1                        MATH_DEG R4 ; [+3]
       28 MOVE                             R9 R4
       29 GETIMPORT                        R8 K5 [math.deg]
       31 CALL                             R8 1 1
       32 FASTCALL1                        MATH_DEG R5 ; [+3]
       33 MOVE                             R10 R5
       34 GETIMPORT                        R9 K5 [math.deg]
       36 CALL                             R9 1 1
       37 FASTCALL                         VECTOR ; [+2]
       38 GETIMPORT                        R6 K8 [Vector3.new]
       40 CALL                             R6 3 1
       41 GETUPVAL                         R7 8
       42 GETTABLEKS                       R7 R7 K9 ["TestSelection"]
       44 JUMPIF                           R7 ; [+4]
       45 GETUPVAL                         R7 9
       46 NAMECALL                         R7 R7 K10 ["Get"]
       48 CALL                             R7 1 1
       49 LOADN                            R8 0
       50 MOVE                             R9 R7
       51 LOADNIL                          R10
       52 LOADNIL                          R11
       53 FORGPREP                         R9
       54 ADDK                             R8 R8 K11 [1]
       55 LOADK                            R16 K12 ["Model"]
       56 NAMECALL                         R14 R13 K13 ["IsA"]
       58 CALL                             R14 2 1
       59 JUMPIFNOT                        R14 ; [+1]
       60 SUBK                             R8 R8 K11 [1]
       61 LOADK                            R16 K14 ["SpecialMesh"]
       62 NAMECALL                         R14 R13 K13 ["IsA"]
       64 CALL                             R14 2 1
       65 JUMPIFNOT                        R14 ; [+19]
       66 GETUPVAL                         R14 10
       67 GETTABLEKS                       R14 R14 K15 ["addError"]
       69 MOVE                             R15 R2
       70 LOADK                            R16 K16 ["SpecialMeshSelection"]
       71 GETUPVAL                         R17 11
       72 LOADK                            R19 K17 ["General"]
       73 LOADK                            R20 K18 ["Warning"]
       74 NAMECALL                         R17 R17 K19 ["getText"]
       76 CALL                             R17 3 1
       77 GETUPVAL                         R18 11
       78 LOADK                            R20 K17 ["General"]
       79 LOADK                            R21 K20 ["SpecialMeshWarning"]
       80 NAMECALL                         R18 R18 K19 ["getText"]
       82 CALL                             R18 3 1
       83 LOADK                            R19 K21 ["warning"]
       84 CALL                             R14 5 0
       85 NAMECALL                         R14 R13 K22 ["GetDescendants"]
       87 CALL                             R14 1 3
       88 FORGPREP                         R14
       89 ADDK                             R8 R8 K11 [1]
       90 LOADK                            R21 K23 ["SurfaceAppearance"]
       91 NAMECALL                         R19 R18 K13 ["IsA"]
       93 CALL                             R19 2 1
       94 JUMPIF                           R19 ; [+5]
       95 LOADK                            R21 K12 ["Model"]
       96 NAMECALL                         R19 R18 K13 ["IsA"]
       98 CALL                             R19 2 1
       99 JUMPIFNOT                        R19 ; [+1]
      100 SUBK                             R8 R8 K11 [1]
      101 LOADK                            R21 K14 ["SpecialMesh"]
      102 NAMECALL                         R19 R18 K13 ["IsA"]
      104 CALL                             R19 2 1
      105 JUMPIFNOT                        R19 ; [+19]
      106 GETUPVAL                         R19 10
      107 GETTABLEKS                       R19 R19 K15 ["addError"]
      109 MOVE                             R20 R2
      110 LOADK                            R21 K16 ["SpecialMeshSelection"]
      111 GETUPVAL                         R22 11
      112 LOADK                            R24 K17 ["General"]
      113 LOADK                            R25 K18 ["Warning"]
      114 NAMECALL                         R22 R22 K19 ["getText"]
      116 CALL                             R22 3 1
      117 GETUPVAL                         R23 11
      118 LOADK                            R25 K17 ["General"]
      119 LOADK                            R26 K20 ["SpecialMeshWarning"]
      120 NAMECALL                         R23 R23 K19 ["getText"]
      122 CALL                             R23 3 1
      123 LOADK                            R24 K21 ["warning"]
      124 CALL                             R19 5 0
      125 FORGLOOP                         R14 2 ; [-37]
      127 FORGLOOP                         R9 2 ; [-74]
      129 GETUPVAL                         R10 6
      130 LENGTH                           R9 R10
      131 JUMPIFEQ                         R9 R8 ; [+24]
      133 GETUPVAL                         R10 6
      134 LENGTH                           R9 R10
      135 JUMPIFEQKN                       R9 K24 [0] ; [+20]
      137 GETUPVAL                         R9 10
      138 GETTABLEKS                       R9 R9 K15 ["addError"]
      140 MOVE                             R10 R2
      141 LOADK                            R11 K25 ["MultipleTypeSelection"]
      142 GETUPVAL                         R12 11
      143 LOADK                            R14 K17 ["General"]
      144 LOADK                            R15 K18 ["Warning"]
      145 NAMECALL                         R12 R12 K19 ["getText"]
      147 CALL                             R12 3 1
      148 GETUPVAL                         R13 11
      149 LOADK                            R15 K17 ["General"]
      150 LOADK                            R16 K26 ["MultipleTypeSelectionWarning"]
      151 NAMECALL                         R13 R13 K19 ["getText"]
      153 CALL                             R13 3 1
      154 LOADK                            R14 K21 ["warning"]
      155 CALL                             R9 5 0
      156 NEWCLOSURE                       R10 P0
      157 CAPTURE                          UPVAL U7
      158 CAPTURE                          UPVAL U6
      159 CAPTURE                          VAL R0
      160 CAPTURE                          VAL R1
      161 CAPTURE                          UPVAL U11
      162 FASTPCALL                        pcall 1 ; [+2]
      163 GETIMPORT                        R9 K28 [pcall]
      165 CALL                             R9 1 2
      166 GETUPVAL                         R11 0
      167 LOADB                            R12 1
      168 CALL                             R11 1 0
      169 GETUPVAL                         R11 1
      170 LOADB                            R12 0
      171 CALL                             R11 1 0
      172 JUMPIFNOT                        R9 ; [+7]
      173 FASTCALL1                        TYPEOF R10 ; [+3]
      174 MOVE                             R12 R10
      175 GETIMPORT                        R11 K30 [typeof]
      177 CALL                             R11 1 1
      178 JUMPIFNOTEQKS                    R11 K31 ["string"] ; [+16]
      180 GETUPVAL                         R11 10
      181 GETTABLEKS                       R11 R11 K15 ["addError"]
      183 MOVE                             R12 R2
      184 MOVE                             R13 R10
      185 GETUPVAL                         R14 11
      186 LOADK                            R16 K32 ["EntryArea"]
      187 LOADK                            R17 K33 ["ErrorAlertTitle"]
      188 NAMECALL                         R14 R14 K19 ["getText"]
      190 CALL                             R14 3 1
      191 MOVE                             R15 R10
      192 LOADK                            R16 K34 ["error"]
      193 CALL                             R11 5 0
      194 RETURN                           R0 0
      195 GETUPVAL                         R11 6
      196 SETTABLEKS                       R11 R10 K35 ["meshParts"]
      198 SETTABLEKS                       R6 R10 K1 ["rotation"]
      200 GETUPVAL                         R11 4
      201 GETTABLEKS                       R11 R11 K36 ["smartUVUnwrap"]
      203 SETTABLEKS                       R11 R10 K36 ["smartUVUnwrap"]
      205 GETUPVAL                         R11 4
      206 GETTABLEKS                       R11 R11 K37 ["promptMasking"]
      208 SETTABLEKS                       R11 R10 K37 ["promptMasking"]
      210 GETIMPORT                        R11 K40 [os.clock]
      212 CALL                             R11 0 1
      213 SETTABLEKS                       R11 R10 K41 ["startTime"]
      215 LOADN                            R11 0
      216 SETTABLEKS                       R11 R10 K42 ["previewUrlCount"]
      218 GETUPVAL                         R11 10
      219 GETTABLEKS                       R11 R11 K43 ["addOrUpdatePreview"]
      221 MOVE                             R12 R10
      222 CALL                             R11 1 0
      223 DUPTABLE                         R11 K46 [{"hash", "uuid"}]
      224 SETTABLEKS                       R2 R11 K44 ["hash"]
      226 GETTABLEKS                       R12 R10 K45 ["uuid"]
      228 SETTABLEKS                       R12 R11 K45 ["uuid"]
      230 GETUPVAL                         R12 10
      231 GETTABLEKS                       R12 R12 K47 ["addOrUpdateModelToPreview"]
      233 MOVE                             R13 R11
      234 CALL                             R12 1 0
      235 GETUPVAL                         R12 12
      236 JUMPIFNOT                        R12 ; [+27]
      237 GETUPVAL                         R12 13
      238 LOADK                            R14 K48 ["GeneratedPreview"]
      239 GETUPVAL                         R15 6
      240 MOVE                             R16 R0
      241 GETUPVAL                         R17 4
      242 GETTABLEKS                       R17 R17 K49 ["seed"]
      244 MOVE                             R18 R6
      245 GETUPVAL                         R19 4
      246 GETTABLEKS                       R19 R19 K36 ["smartUVUnwrap"]
      248 GETUPVAL                         R20 4
      249 GETTABLEKS                       R20 R20 K37 ["promptMasking"]
      251 GETTABLEKS                       R21 R10 K45 ["uuid"]
      253 GETUPVAL                         R23 4
      254 GETTABLEKS                       R23 R23 K50 ["artStyle"]
      256 JUMPIFNOTEQKS                    R23 K51 [""] ; [+2]
      258 LOADB                            R22 0 +1
      259 LOADB                            R22 1
      260 NAMECALL                         R12 R12 K52 ["report"]
      262 CALL                             R12 10 0
      263 JUMP                             ; [+19]
      264 GETUPVAL                         R12 13
      265 LOADK                            R14 K48 ["GeneratedPreview"]
      266 GETUPVAL                         R15 6
      267 MOVE                             R16 R0
      268 GETUPVAL                         R17 4
      269 GETTABLEKS                       R17 R17 K49 ["seed"]
      271 MOVE                             R18 R6
      272 GETUPVAL                         R19 4
      273 GETTABLEKS                       R19 R19 K36 ["smartUVUnwrap"]
      275 GETUPVAL                         R20 4
      276 GETTABLEKS                       R20 R20 K37 ["promptMasking"]
      278 GETTABLEKS                       R21 R10 K45 ["uuid"]
      280 NAMECALL                         R12 R12 K52 ["report"]
      282 CALL                             R12 9 0
      283 GETUPVAL                         R12 14
      284 GETUPVAL                         R13 15
      285 GETUPVAL                         R14 10
      286 GETUPVAL                         R15 7
      287 CALL                             R12 3 0
      288 RETURN                           R0 0

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
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R8
      126 CAPTURE                          UPVAL U9
      127 CAPTURE                          VAL R7
      128 CAPTURE                          UPVAL U10
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R2
      135 CAPTURE                          UPVAL U11
      136 CAPTURE                          VAL R1
      137 CAPTURE                          UPVAL U12
      138 CAPTURE                          VAL R14
      139 MOVE                             R21 R18
      140 CALL                             R19 2 1
      141 GETUPVAL                         R20 4
      142 GETTABLEKS                       R20 R20 K21 ["createElement"]
      144 GETUPVAL                         R21 13
      145 DUPTABLE                         R22 K26 [{["LayoutOrder"], ["Padding"] = 10, ["Size"]}]
      146 GETTABLEKS                       R23 R0 K22 ["LayoutOrder"]
      148 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      150 GETIMPORT                        R23 K29 [UDim2.new]
      152 LOADN                            R24 1
      153 LOADN                            R25 0
      154 LOADN                            R26 0
      155 LOADN                            R27 140
      156 CALL                             R23 4 1
      157 SETTABLEKS                       R23 R22 K25 ["Size"]
      159 DUPTABLE                         R23 K31 [{"TextInput"}]
      160 GETUPVAL                         R24 4
      161 GETTABLEKS                       R24 R24 K21 ["createElement"]
      163 GETUPVAL                         R25 14
      164 DUPTABLE                         R26 K41 [{["BottomComponent"], ["BottomComponentProps"], ["Disabled"], ["MultiLine"] = True, ["OnEnter"], ["OnTextChanged"], ["Text"], ["Size"], ["PlaceholderText"]}]
      165 GETUPVAL                         R27 15
      166 SETTABLEKS                       R27 R26 K32 ["BottomComponent"]
      168 DUPTABLE                         R27 K46 [{"Enabled", "OnClick", "PreviewButtonText", "QuotaTooltipText", "Size"}]
      169 SETTABLEKS                       R9 R27 K42 ["Enabled"]
      171 SETTABLEKS                       R19 R27 K43 ["OnClick"]
      173 SETTABLEKS                       R6 R27 K44 ["PreviewButtonText"]
      175 SETTABLEKS                       R17 R27 K45 ["QuotaTooltipText"]
      177 GETIMPORT                        R28 K29 [UDim2.new]
      179 LOADN                            R29 1
      180 LOADN                            R30 0
      181 LOADN                            R31 0
      182 LOADN                            R32 32
      183 CALL                             R28 4 1
      184 SETTABLEKS                       R28 R27 K25 ["Size"]
      186 SETTABLEKS                       R27 R26 K33 ["BottomComponentProps"]
      188 SETTABLEKS                       R11 R26 K34 ["Disabled"]
      190 SETTABLEKS                       R19 R26 K37 ["OnEnter"]
      192 SETTABLEKS                       R13 R26 K38 ["OnTextChanged"]
      194 GETTABLEKS                       R27 R8 K47 ["current"]
      196 SETTABLEKS                       R27 R26 K39 ["Text"]
      198 GETIMPORT                        R27 K29 [UDim2.new]
      200 LOADN                            R28 1
      201 LOADN                            R29 0
      202 LOADN                            R30 0
      203 LOADN                            R31 120
      204 CALL                             R27 4 1
      205 SETTABLEKS                       R27 R26 K25 ["Size"]
      207 LOADK                            R29 K48 ["PromptEntry"]
      208 LOADK                            R30 K49 ["PromptPlaceholder"]
      209 NAMECALL                         R27 R2 K5 ["getText"]
      211 CALL                             R27 3 1
      212 SETTABLEKS                       R27 R26 K40 ["PlaceholderText"]
      214 CALL                             R24 2 1
      215 SETTABLEKS                       R24 R23 K30 ["TextInput"]
      217 CALL                             R20 3 -1
      218 RETURN                           R20 -1

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
      122 DUPCLOSURE                       R27 K39 [PROTO_0]
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R10
      127 DUPCLOSURE                       R28 K40 [PROTO_6]
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R25
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R21
      136 CAPTURE                          VAL R23
      137 CAPTURE                          VAL R24
      138 CAPTURE                          VAL R19
      139 CAPTURE                          VAL R26
      140 CAPTURE                          VAL R20
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R27
      144 RETURN                           R28 1
