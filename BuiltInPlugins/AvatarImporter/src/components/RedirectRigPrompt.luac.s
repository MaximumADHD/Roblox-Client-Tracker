PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["avatarType"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["AVATAR_TYPE"]
        8 GETTABLEKS                       R1 R1 K3 ["RTHRO_SLENDER"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+13]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["props"]
       15 GETTABLEKS                       R0 R0 K4 ["doImportWithoutSceneLoad"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K2 ["AVATAR_TYPE"]
       20 GETTABLEKS                       R1 R1 K3 ["RTHRO_SLENDER"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K0 ["props"]
       27 GETTABLEKS                       R0 R0 K1 ["avatarType"]
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K2 ["AVATAR_TYPE"]
       32 GETTABLEKS                       R1 R1 K5 ["RTHRO"]
       34 JUMPIFNOTEQ                      R0 R1 ; [+13]
       36 GETUPVAL                         R0 0
       37 GETTABLEKS                       R0 R0 K0 ["props"]
       39 GETTABLEKS                       R0 R0 K4 ["doImportWithoutSceneLoad"]
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R1 R1 K2 ["AVATAR_TYPE"]
       44 GETTABLEKS                       R1 R1 K5 ["RTHRO"]
       46 CALL                             R0 1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R0 0
       49 GETTABLEKS                       R0 R0 K0 ["props"]
       51 GETTABLEKS                       R0 R0 K4 ["doImportWithoutSceneLoad"]
       53 GETUPVAL                         R1 1
       54 GETTABLEKS                       R1 R1 K2 ["AVATAR_TYPE"]
       56 GETTABLEKS                       R1 R1 K6 ["R15"]
       58 CALL                             R0 1 0
       59 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["doImportWithoutSceneLoad"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["AVATAR_TYPE"]
        8 GETTABLEKS                       R1 R1 K3 ["CUSTOM"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 GETTABLEKS                       R4 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K1 ["avatarType"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["AVATAR_TYPE"]
       13 GETTABLEKS                       R5 R5 K3 ["RTHRO_SLENDER"]
       15 JUMPIFNOTEQ                      R4 R5 ; [+3]
       17 LOADK                            R3 K4 ["Rthro Narrow"]
       18 JUMP                             ; [+4]
       19 GETTABLEKS                       R3 R0 K0 ["props"]
       21 GETTABLEKS                       R3 R3 K1 ["avatarType"]
       23 GETTABLEKS                       R5 R0 K0 ["props"]
       25 GETTABLEKS                       R5 R5 K1 ["avatarType"]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K2 ["AVATAR_TYPE"]
       30 GETTABLEKS                       R6 R6 K5 ["CUSTOM"]
       32 JUMPIFEQ                         R5 R6 ; [+7]
       34 GETTABLEKS                       R5 R0 K0 ["props"]
       36 GETTABLEKS                       R5 R5 K1 ["avatarType"]
       38 JUMPIFNOTEQKNIL                  R5 ; [+3]
       40 LOADK                            R4 K6 ["You are trying to import a R15 rig as Custom:"]
       41 JUMP                             ; [+4]
       42 LOADK                            R5 K7 ["You are trying to import a Custom rig as "]
       43 MOVE                             R6 R3
       44 LOADK                            R7 K8 [":"]
       45 CONCAT                           R4 R5 R7
       46 LOADK                            R5 K9 ["Continue as R15"]
       47 GETTABLEKS                       R6 R0 K0 ["props"]
       49 GETTABLEKS                       R6 R6 K1 ["avatarType"]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K2 ["AVATAR_TYPE"]
       54 GETTABLEKS                       R7 R7 K5 ["CUSTOM"]
       56 JUMPIFEQ                         R6 R7 ; [+4]
       58 LOADK                            R6 K10 ["Continue as "]
       59 MOVE                             R7 R3
       60 CONCAT                           R5 R6 R7
       61 GETUPVAL                         R6 1
       62 GETTABLEKS                       R6 R6 K11 ["createElement"]
       64 LOADK                            R7 K12 ["Frame"]
       65 DUPTABLE                         R8 K17 [{["Name"] = "RedirectRigPrompt", ["Size"], ["BackgroundColor3"]}]
       66 GETIMPORT                        R9 K20 [UDim2.new]
       68 LOADN                            R10 1
       69 LOADN                            R11 0
       70 LOADN                            R12 1
       71 LOADN                            R13 0
       72 CALL                             R9 4 1
       73 SETTABLEKS                       R9 R8 K15 ["Size"]
       75 GETUPVAL                         R9 2
       76 GETTABLEKS                       R9 R9 K21 ["Theme"]
       78 GETIMPORT                        R11 K25 [Enum.StudioStyleGuideColor.MainBackground]
       80 GETIMPORT                        R12 K28 [Enum.StudioStyleGuideModifier.Default]
       82 NAMECALL                         R9 R9 K29 ["GetColor"]
       84 CALL                             R9 3 1
       85 SETTABLEKS                       R9 R8 K16 ["BackgroundColor3"]
       87 DUPTABLE                         R9 K32 [{"header", "buttons"}]
       88 GETUPVAL                         R10 1
       89 GETTABLEKS                       R10 R10 K11 ["createElement"]
       91 LOADK                            R11 K33 ["TextLabel"]
       92 DUPTABLE                         R12 K43 [{["BackgroundTransparency"] = 1, ["Font"], ["Position"], ["Size"], ["Text"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"]}]
       93 GETUPVAL                         R13 0
       94 GETTABLEKS                       R13 R13 K44 ["FONT_BOLD"]
       96 SETTABLEKS                       R13 R12 K36 ["Font"]
       98 GETIMPORT                        R13 K20 [UDim2.new]
      100 LOADN                            R14 0
      101 LOADN                            R15 0
      102 LOADN                            R16 0
      103 LOADN                            R17 123
      104 CALL                             R13 4 1
      105 SETTABLEKS                       R13 R12 K37 ["Position"]
      107 GETIMPORT                        R13 K20 [UDim2.new]
      109 LOADN                            R14 1
      110 LOADN                            R15 0
      111 LOADN                            R16 0
      112 LOADN                            R17 18
      113 CALL                             R13 4 1
      114 SETTABLEKS                       R13 R12 K15 ["Size"]
      116 SETTABLEKS                       R4 R12 K38 ["Text"]
      118 GETUPVAL                         R13 0
      119 GETTABLEKS                       R13 R13 K45 ["FONT_SIZE_MEDIUM"]
      121 SETTABLEKS                       R13 R12 K39 ["TextSize"]
      123 GETIMPORT                        R13 K47 [Enum.TextXAlignment.Center]
      125 SETTABLEKS                       R13 R12 K40 ["TextXAlignment"]
      127 GETIMPORT                        R13 K48 [Enum.TextYAlignment.Center]
      129 SETTABLEKS                       R13 R12 K41 ["TextYAlignment"]
      131 GETUPVAL                         R13 2
      132 GETTABLEKS                       R13 R13 K21 ["Theme"]
      134 GETIMPORT                        R15 K50 [Enum.StudioStyleGuideColor.MainText]
      136 GETIMPORT                        R16 K28 [Enum.StudioStyleGuideModifier.Default]
      138 NAMECALL                         R13 R13 K29 ["GetColor"]
      140 CALL                             R13 3 1
      141 SETTABLEKS                       R13 R12 K42 ["TextColor3"]
      143 CALL                             R10 2 1
      144 SETTABLEKS                       R10 R9 K30 ["header"]
      146 GETUPVAL                         R10 1
      147 GETTABLEKS                       R10 R10 K11 ["createElement"]
      149 LOADK                            R11 K12 ["Frame"]
      150 DUPTABLE                         R12 K51 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      151 GETIMPORT                        R13 K20 [UDim2.new]
      153 LOADN                            R14 0
      154 LOADN                            R15 0
      155 LOADN                            R16 1
      156 LOADN                            R17 -123
      157 CALL                             R13 4 1
      158 SETTABLEKS                       R13 R12 K37 ["Position"]
      160 GETIMPORT                        R13 K20 [UDim2.new]
      162 LOADN                            R14 1
      163 LOADN                            R15 0
      164 LOADN                            R16 0
      165 LOADN                            R17 34
      166 CALL                             R13 4 1
      167 SETTABLEKS                       R13 R12 K15 ["Size"]
      169 DUPTABLE                         R13 K55 [{"buttonsListLayout", "cancelButton", "retryButton"}]
      170 GETUPVAL                         R14 1
      171 GETTABLEKS                       R14 R14 K11 ["createElement"]
      173 LOADK                            R15 K56 ["UIListLayout"]
      174 DUPTABLE                         R16 K61 [{"Padding", "FillDirection", "HorizontalAlignment", "SortOrder"}]
      175 GETIMPORT                        R17 K63 [UDim.new]
      177 LOADN                            R18 0
      178 LOADN                            R19 21
      179 CALL                             R17 2 1
      180 SETTABLEKS                       R17 R16 K57 ["Padding"]
      182 GETIMPORT                        R17 K65 [Enum.FillDirection.Horizontal]
      184 SETTABLEKS                       R17 R16 K58 ["FillDirection"]
      186 GETIMPORT                        R17 K66 [Enum.HorizontalAlignment.Center]
      188 SETTABLEKS                       R17 R16 K59 ["HorizontalAlignment"]
      190 GETIMPORT                        R17 K68 [Enum.SortOrder.LayoutOrder]
      192 SETTABLEKS                       R17 R16 K60 ["SortOrder"]
      194 CALL                             R14 2 1
      195 SETTABLEKS                       R14 R13 K52 ["buttonsListLayout"]
      197 GETUPVAL                         R14 1
      198 GETTABLEKS                       R14 R14 K11 ["createElement"]
      200 GETUPVAL                         R15 3
      201 NEWTABLE                         R16 8 0
      203 LOADK                            R17 K69 ["R15Button"]
      204 SETTABLEKS                       R17 R16 K13 ["Name"]
      206 SETTABLEKS                       R5 R16 K70 ["labelText"]
      208 LOADN                            R17 0
      209 SETTABLEKS                       R17 R16 K71 ["layoutOrder"]
      211 LOADB                            R17 1
      212 SETTABLEKS                       R17 R16 K72 ["isLarge"]
      214 GETUPVAL                         R17 1
      215 GETTABLEKS                       R17 R17 K73 ["Event"]
      217 GETTABLEKS                       R17 R17 K74 ["MouseButton1Click"]
      219 SETTABLE                         R1 R16 R17
      220 CALL                             R14 2 1
      221 SETTABLEKS                       R14 R13 K53 ["cancelButton"]
      223 GETUPVAL                         R14 1
      224 GETTABLEKS                       R14 R14 K11 ["createElement"]
      226 GETUPVAL                         R15 3
      227 NEWTABLE                         R16 8 0
      229 LOADK                            R17 K75 ["CustomButton"]
      230 SETTABLEKS                       R17 R16 K13 ["Name"]
      232 LOADK                            R17 K76 ["Continue as Custom"]
      233 SETTABLEKS                       R17 R16 K70 ["labelText"]
      235 LOADN                            R17 1
      236 SETTABLEKS                       R17 R16 K71 ["layoutOrder"]
      238 LOADB                            R17 1
      239 SETTABLEKS                       R17 R16 K72 ["isLarge"]
      241 GETUPVAL                         R17 1
      242 GETTABLEKS                       R17 R17 K73 ["Event"]
      244 GETTABLEKS                       R17 R17 K74 ["MouseButton1Click"]
      246 SETTABLE                         R2 R16 R17
      247 CALL                             R14 2 1
      248 SETTABLEKS                       R14 R13 K54 ["retryButton"]
      250 CALL                             R10 3 1
      251 SETTABLEKS                       R10 R9 K31 ["buttons"]
      253 CALL                             R6 3 -1
      254 RETURN                           R6 -1

PROTO_3:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 DUPTABLE                         R1 K1 [{"avatarType"}]
        6 GETTABLEKS                       R2 R0 K2 ["plugin"]
        8 GETTABLEKS                       R2 R2 K0 ["avatarType"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["src"]
       27 GETTABLEKS                       R4 R4 K9 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K8 ["src"]
       34 GETTABLEKS                       R5 R5 K10 ["components"]
       36 GETTABLEKS                       R5 R5 K11 ["CustomTextButton"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K8 ["src"]
       43 GETTABLEKS                       R6 R6 K12 ["thunks"]
       45 GETTABLEKS                       R6 R6 K13 ["ImportWithoutSceneLoad"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K15 [settings]
       50 CALL                             R6 0 1
       51 GETTABLEKS                       R6 R6 K16 ["Studio"]
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
