PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["avatarType"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["AVATAR_TYPE"]
        8 GETTABLEKS                       R1 R2 K3 ["RTHRO_SLENDER"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+13]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K0 ["props"]
       15 GETTABLEKS                       R0 R1 K4 ["doImportWithoutSceneLoad"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K2 ["AVATAR_TYPE"]
       20 GETTABLEKS                       R1 R2 K3 ["RTHRO_SLENDER"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K0 ["props"]
       27 GETTABLEKS                       R0 R1 K1 ["avatarType"]
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R2 R3 K2 ["AVATAR_TYPE"]
       32 GETTABLEKS                       R1 R2 K5 ["RTHRO"]
       34 JUMPIFNOTEQ                      R0 R1 ; [+13]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R1 R2 K0 ["props"]
       39 GETTABLEKS                       R0 R1 K4 ["doImportWithoutSceneLoad"]
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R2 R3 K2 ["AVATAR_TYPE"]
       44 GETTABLEKS                       R1 R2 K5 ["RTHRO"]
       46 CALL                             R0 1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R1 R2 K0 ["props"]
       51 GETTABLEKS                       R0 R1 K4 ["doImportWithoutSceneLoad"]
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R2 R3 K2 ["AVATAR_TYPE"]
       56 GETTABLEKS                       R1 R2 K6 ["R15"]
       58 CALL                             R0 1 0
       59 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["doImportWithoutSceneLoad"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["AVATAR_TYPE"]
        8 GETTABLEKS                       R1 R2 K3 ["CUSTOM"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 GETTABLEKS                       R5 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R5 K1 ["avatarType"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K2 ["AVATAR_TYPE"]
       13 GETTABLEKS                       R5 R6 K3 ["RTHRO_SLENDER"]
       15 JUMPIFNOTEQ                      R4 R5 ; [+3]
       17 LOADK                            R3 K4 ["Rthro Narrow"]
       18 JUMP                             ; [+4]
       19 GETTABLEKS                       R4 R0 K0 ["props"]
       21 GETTABLEKS                       R3 R4 K1 ["avatarType"]
       23 GETTABLEKS                       R6 R0 K0 ["props"]
       25 GETTABLEKS                       R5 R6 K1 ["avatarType"]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R7 R8 K2 ["AVATAR_TYPE"]
       30 GETTABLEKS                       R6 R7 K5 ["CUSTOM"]
       32 JUMPIFEQ                         R5 R6 ; [+7]
       34 GETTABLEKS                       R6 R0 K0 ["props"]
       36 GETTABLEKS                       R5 R6 K1 ["avatarType"]
       38 JUMPIFNOTEQKNIL                  R5 ; [+3]
       40 LOADK                            R4 K6 ["You are trying to import a R15 rig as Custom:"]
       41 JUMP                             ; [+4]
       42 LOADK                            R5 K7 ["You are trying to import a Custom rig as "]
       43 MOVE                             R6 R3
       44 LOADK                            R7 K8 [":"]
       45 CONCAT                           R4 R5 R7
       46 LOADK                            R5 K9 ["Continue as R15"]
       47 GETTABLEKS                       R7 R0 K0 ["props"]
       49 GETTABLEKS                       R6 R7 K1 ["avatarType"]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R8 R9 K2 ["AVATAR_TYPE"]
       54 GETTABLEKS                       R7 R8 K5 ["CUSTOM"]
       56 JUMPIFEQ                         R6 R7 ; [+4]
       58 LOADK                            R6 K10 ["Continue as "]
       59 MOVE                             R7 R3
       60 CONCAT                           R5 R6 R7
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R6 R7 K11 ["createElement"]
       64 LOADK                            R7 K12 ["Frame"]
       65 DUPTABLE                         R8 K16 [{"Name", "Size", "BackgroundColor3"}]
       66 LOADK                            R9 K17 ["RedirectRigPrompt"]
       67 SETTABLEKS                       R9 R8 K13 ["Name"]
       69 GETIMPORT                        R9 K20 [UDim2.new]
       71 LOADN                            R10 1
       72 LOADN                            R11 0
       73 LOADN                            R12 1
       74 LOADN                            R13 0
       75 CALL                             R9 4 1
       76 SETTABLEKS                       R9 R8 K14 ["Size"]
       78 GETUPVAL                         R10 2
       79 GETTABLEKS                       R9 R10 K21 ["Theme"]
       81 GETIMPORT                        R11 K25 [Enum.StudioStyleGuideColor.MainBackground]
       83 GETIMPORT                        R12 K28 [Enum.StudioStyleGuideModifier.Default]
       85 NAMECALL                         R9 R9 K29 ["GetColor"]
       87 CALL                             R9 3 1
       88 SETTABLEKS                       R9 R8 K15 ["BackgroundColor3"]
       90 DUPTABLE                         R9 K32 [{"header", "buttons"}]
       91 GETUPVAL                         R11 1
       92 GETTABLEKS                       R10 R11 K11 ["createElement"]
       94 LOADK                            R11 K33 ["TextLabel"]
       95 DUPTABLE                         R12 K42 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
       96 LOADN                            R13 1
       97 SETTABLEKS                       R13 R12 K34 ["BackgroundTransparency"]
       99 GETUPVAL                         R14 0
      100 GETTABLEKS                       R13 R14 K43 ["FONT_BOLD"]
      102 SETTABLEKS                       R13 R12 K35 ["Font"]
      104 GETIMPORT                        R13 K20 [UDim2.new]
      106 LOADN                            R14 0
      107 LOADN                            R15 0
      108 LOADN                            R16 0
      109 LOADN                            R17 123
      110 CALL                             R13 4 1
      111 SETTABLEKS                       R13 R12 K36 ["Position"]
      113 GETIMPORT                        R13 K20 [UDim2.new]
      115 LOADN                            R14 1
      116 LOADN                            R15 0
      117 LOADN                            R16 0
      118 LOADN                            R17 18
      119 CALL                             R13 4 1
      120 SETTABLEKS                       R13 R12 K14 ["Size"]
      122 SETTABLEKS                       R4 R12 K37 ["Text"]
      124 GETUPVAL                         R14 0
      125 GETTABLEKS                       R13 R14 K44 ["FONT_SIZE_MEDIUM"]
      127 SETTABLEKS                       R13 R12 K38 ["TextSize"]
      129 GETIMPORT                        R13 K46 [Enum.TextXAlignment.Center]
      131 SETTABLEKS                       R13 R12 K39 ["TextXAlignment"]
      133 GETIMPORT                        R13 K47 [Enum.TextYAlignment.Center]
      135 SETTABLEKS                       R13 R12 K40 ["TextYAlignment"]
      137 GETUPVAL                         R14 2
      138 GETTABLEKS                       R13 R14 K21 ["Theme"]
      140 GETIMPORT                        R15 K49 [Enum.StudioStyleGuideColor.MainText]
      142 GETIMPORT                        R16 K28 [Enum.StudioStyleGuideModifier.Default]
      144 NAMECALL                         R13 R13 K29 ["GetColor"]
      146 CALL                             R13 3 1
      147 SETTABLEKS                       R13 R12 K41 ["TextColor3"]
      149 CALL                             R10 2 1
      150 SETTABLEKS                       R10 R9 K30 ["header"]
      152 GETUPVAL                         R11 1
      153 GETTABLEKS                       R10 R11 K11 ["createElement"]
      155 LOADK                            R11 K12 ["Frame"]
      156 DUPTABLE                         R12 K50 [{"BackgroundTransparency", "Position", "Size"}]
      157 LOADN                            R13 1
      158 SETTABLEKS                       R13 R12 K34 ["BackgroundTransparency"]
      160 GETIMPORT                        R13 K20 [UDim2.new]
      162 LOADN                            R14 0
      163 LOADN                            R15 0
      164 LOADN                            R16 1
      165 LOADN                            R17 133
      166 CALL                             R13 4 1
      167 SETTABLEKS                       R13 R12 K36 ["Position"]
      169 GETIMPORT                        R13 K20 [UDim2.new]
      171 LOADN                            R14 1
      172 LOADN                            R15 0
      173 LOADN                            R16 0
      174 LOADN                            R17 34
      175 CALL                             R13 4 1
      176 SETTABLEKS                       R13 R12 K14 ["Size"]
      178 DUPTABLE                         R13 K54 [{"buttonsListLayout", "cancelButton", "retryButton"}]
      179 GETUPVAL                         R15 1
      180 GETTABLEKS                       R14 R15 K11 ["createElement"]
      182 LOADK                            R15 K55 ["UIListLayout"]
      183 DUPTABLE                         R16 K60 [{"Padding", "FillDirection", "HorizontalAlignment", "SortOrder"}]
      184 GETIMPORT                        R17 K62 [UDim.new]
      186 LOADN                            R18 0
      187 LOADN                            R19 21
      188 CALL                             R17 2 1
      189 SETTABLEKS                       R17 R16 K56 ["Padding"]
      191 GETIMPORT                        R17 K64 [Enum.FillDirection.Horizontal]
      193 SETTABLEKS                       R17 R16 K57 ["FillDirection"]
      195 GETIMPORT                        R17 K65 [Enum.HorizontalAlignment.Center]
      197 SETTABLEKS                       R17 R16 K58 ["HorizontalAlignment"]
      199 GETIMPORT                        R17 K67 [Enum.SortOrder.LayoutOrder]
      201 SETTABLEKS                       R17 R16 K59 ["SortOrder"]
      203 CALL                             R14 2 1
      204 SETTABLEKS                       R14 R13 K51 ["buttonsListLayout"]
      206 GETUPVAL                         R15 1
      207 GETTABLEKS                       R14 R15 K11 ["createElement"]
      209 GETUPVAL                         R15 3
      210 NEWTABLE                         R16 8 0
      212 LOADK                            R17 K68 ["R15Button"]
      213 SETTABLEKS                       R17 R16 K13 ["Name"]
      215 SETTABLEKS                       R5 R16 K69 ["labelText"]
      217 LOADN                            R17 0
      218 SETTABLEKS                       R17 R16 K70 ["layoutOrder"]
      220 LOADB                            R17 1
      221 SETTABLEKS                       R17 R16 K71 ["isLarge"]
      223 GETUPVAL                         R19 1
      224 GETTABLEKS                       R18 R19 K72 ["Event"]
      226 GETTABLEKS                       R17 R18 K73 ["MouseButton1Click"]
      228 SETTABLE                         R1 R16 R17
      229 CALL                             R14 2 1
      230 SETTABLEKS                       R14 R13 K52 ["cancelButton"]
      232 GETUPVAL                         R15 1
      233 GETTABLEKS                       R14 R15 K11 ["createElement"]
      235 GETUPVAL                         R15 3
      236 NEWTABLE                         R16 8 0
      238 LOADK                            R17 K74 ["CustomButton"]
      239 SETTABLEKS                       R17 R16 K13 ["Name"]
      241 LOADK                            R17 K75 ["Continue as Custom"]
      242 SETTABLEKS                       R17 R16 K69 ["labelText"]
      244 LOADN                            R17 1
      245 SETTABLEKS                       R17 R16 K70 ["layoutOrder"]
      247 LOADB                            R17 1
      248 SETTABLEKS                       R17 R16 K71 ["isLarge"]
      250 GETUPVAL                         R19 1
      251 GETTABLEKS                       R18 R19 K72 ["Event"]
      253 GETTABLEKS                       R17 R18 K73 ["MouseButton1Click"]
      255 SETTABLE                         R2 R16 R17
      256 CALL                             R14 2 1
      257 SETTABLEKS                       R14 R13 K53 ["retryButton"]
      259 CALL                             R10 3 1
      260 SETTABLEKS                       R10 R9 K31 ["buttons"]
      262 CALL                             R6 3 -1
      263 RETURN                           R6 -1

PROTO_3:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 DUPTABLE                         R1 K1 [{"avatarType"}]
        6 GETTABLEKS                       R3 R0 K2 ["plugin"]
        8 GETTABLEKS                       R2 R3 K0 ["avatarType"]
       10 SETTABLEKS                       R2 R1 K0 ["avatarType"]
       12 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"doImportWithoutSceneLoad"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["doImportWithoutSceneLoad"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K8 ["src"]
       27 GETTABLEKS                       R4 R5 K9 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R7 R0 K8 ["src"]
       34 GETTABLEKS                       R6 R7 K10 ["components"]
       36 GETTABLEKS                       R5 R6 K11 ["CustomTextButton"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R8 R0 K8 ["src"]
       43 GETTABLEKS                       R7 R8 K12 ["thunks"]
       45 GETTABLEKS                       R6 R7 K13 ["ImportWithoutSceneLoad"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R7 K15 [settings]
       50 CALL                             R7 0 1
       51 GETTABLEKS                       R6 R7 K16 ["Studio"]
       53 GETTABLEKS                       R7 R1 K17 ["Component"]
       55 LOADK                            R9 K18 ["RedirectRigPrompt"]
       56 NAMECALL                         R7 R7 K19 ["extend"]
       58 CALL                             R7 2 1
       59 DUPCLOSURE                       R8 K20 [PROTO_2]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R4
       64 SETTABLEKS                       R8 R7 K21 ["render"]
       66 DUPCLOSURE                       R8 K22 [PROTO_3]
       67 DUPCLOSURE                       R9 K23 [PROTO_5]
       68 CAPTURE                          VAL R5
       69 GETTABLEKS                       R10 R2 K24 ["connect"]
       71 MOVE                             R11 R8
       72 MOVE                             R12 R9
       73 CALL                             R10 2 1
       74 MOVE                             R11 R7
       75 CALL                             R10 1 -1
       76 RETURN                           R10 -1
