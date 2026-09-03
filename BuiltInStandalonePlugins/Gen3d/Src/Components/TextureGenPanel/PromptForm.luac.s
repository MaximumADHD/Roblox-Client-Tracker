PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onGenerate"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [tostring]
        5 CALL                             R2 1 1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R3 R0 K2 ["initialPrompt"]
        5 ORK                              R2 R3 K1 [""]
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["useState"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K3 ["Constants"]
       13 GETTABLEKS                       R4 R4 K4 ["DEFAULT_TEXTURE_GEN_MODEL"]
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K5 ["createNextOrder"]
       19 CALL                             R5 0 1
       20 LOADB                            R6 1
       21 GETTABLEKS                       R7 R0 K6 ["disabled"]
       23 JUMPIFEQKB                       R7 TRUE ; [+5]
       25 JUMPIFEQKS                       R1 K1 [""] ; [+2]
       27 LOADB                            R6 0 +1
       28 LOADB                            R6 1
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       32 NEWCLOSURE                       R8 P0
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 NEWTABLE                         R9 0 4
       39 MOVE                             R10 R6
       40 MOVE                             R11 R1
       41 MOVE                             R12 R3
       42 GETTABLEKS                       R13 R0 K8 ["onGenerate"]
       44 SETLIST                          R9 R10 4 [1]
       46 CALL                             R7 2 1
       47 LOADNIL                          R8
       48 GETUPVAL                         R9 3
       49 GETTABLEKS                       R9 R9 K9 ["getFFlagTextureGenModelSelector"]
       51 CALL                             R9 0 1
       52 JUMPIFNOT                        R9 ; [+91]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K10 ["createElement"]
       56 GETUPVAL                         R10 4
       57 GETTABLEKS                       R10 R10 K11 ["View"]
       59 DUPTABLE                         R11 K15 [{["LayoutOrder"], ["tag"] = "row size-full-0 auto-y gap-small align-y-center"}]
       60 MOVE                             R12 R5
       61 CALL                             R12 0 1
       62 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       64 DUPTABLE                         R12 K18 [{"Label", "Control"}]
       65 GETUPVAL                         R13 0
       66 GETTABLEKS                       R13 R13 K10 ["createElement"]
       68 GETUPVAL                         R14 4
       69 GETTABLEKS                       R14 R14 K19 ["Text"]
       71 DUPTABLE                         R15 K22 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-body-small text-emphasis-muted"}]
       72 GETUPVAL                         R16 5
       73 LOADK                            R18 K23 ["TextureGen"]
       74 LOADK                            R19 K24 ["ModelSelectorTitle"]
       75 NAMECALL                         R16 R16 K25 ["getText"]
       77 CALL                             R16 3 1
       78 SETTABLEKS                       R16 R15 K19 ["Text"]
       80 CALL                             R13 2 1
       81 SETTABLEKS                       R13 R12 K16 ["Label"]
       83 GETUPVAL                         R13 0
       84 GETTABLEKS                       R13 R13 K10 ["createElement"]
       86 GETUPVAL                         R14 4
       87 GETTABLEKS                       R14 R14 K26 ["SegmentedControl"]
       89 DUPTABLE                         R15 K32 [{["LayoutOrder"] = 2, ["segments"], ["value"], ["onActivated"], ["size"]}]
       90 NEWTABLE                         R16 0 2
       92 DUPTABLE                         R17 K35 [{"id", "text"}]
       93 GETUPVAL                         R18 6
       94 GETTABLEKS                       R18 R18 K36 ["RbxTexture1"]
       96 SETTABLEKS                       R18 R17 K33 ["id"]
       98 GETUPVAL                         R18 5
       99 LOADK                            R20 K23 ["TextureGen"]
      100 LOADK                            R21 K37 ["ModelFast"]
      101 NAMECALL                         R18 R18 K25 ["getText"]
      103 CALL                             R18 3 1
      104 SETTABLEKS                       R18 R17 K34 ["text"]
      106 DUPTABLE                         R18 K35 [{"id", "text"}]
      107 GETUPVAL                         R19 6
      108 GETTABLEKS                       R19 R19 K38 ["RbxTexture2"]
      110 SETTABLEKS                       R19 R18 K33 ["id"]
      112 GETUPVAL                         R19 5
      113 LOADK                            R21 K23 ["TextureGen"]
      114 LOADK                            R22 K39 ["ModelQuality"]
      115 NAMECALL                         R19 R19 K25 ["getText"]
      117 CALL                             R19 3 1
      118 SETTABLEKS                       R19 R18 K34 ["text"]
      120 SETLIST                          R16 R17 2 [1]
      122 SETTABLEKS                       R16 R15 K28 ["segments"]
      124 SETTABLEKS                       R3 R15 K29 ["value"]
      126 NEWCLOSURE                       R16 P1
      127 CAPTURE                          VAL R4
      128 SETTABLEKS                       R16 R15 K30 ["onActivated"]
      130 GETUPVAL                         R16 4
      131 GETTABLEKS                       R16 R16 K40 ["Enums"]
      133 GETTABLEKS                       R16 R16 K41 ["InputSize"]
      135 GETTABLEKS                       R16 R16 K42 ["Small"]
      137 SETTABLEKS                       R16 R15 K31 ["size"]
      139 CALL                             R13 2 1
      140 SETTABLEKS                       R13 R12 K17 ["Control"]
      142 CALL                             R9 3 1
      143 MOVE                             R8 R9
      144 GETUPVAL                         R9 0
      145 GETTABLEKS                       R9 R9 K10 ["createElement"]
      147 GETUPVAL                         R10 4
      148 GETTABLEKS                       R10 R10 K11 ["View"]
      150 DUPTABLE                         R11 K44 [{["tag"] = "col size-full-0 auto-y gap-small", ["LayoutOrder"]}]
      151 GETTABLEKS                       R12 R0 K12 ["LayoutOrder"]
      153 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
      155 DUPTABLE                         R12 K48 [{"Prompt", "ModelSelector", "Generate"}]
      156 GETUPVAL                         R13 0
      157 GETTABLEKS                       R13 R13 K10 ["createElement"]
      159 GETUPVAL                         R14 4
      160 GETTABLEKS                       R14 R14 K49 ["TextInput"]
      162 DUPTABLE                         R15 K55 [{["LayoutOrder"], ["label"] = "", ["text"], ["placeholder"], ["onChanged"], ["onReturnPressed"], ["width"], ["size"]}]
      163 MOVE                             R16 R5
      164 CALL                             R16 0 1
      165 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      167 SETTABLEKS                       R1 R15 K34 ["text"]
      169 GETUPVAL                         R16 5
      170 LOADK                            R18 K23 ["TextureGen"]
      171 LOADK                            R19 K56 ["InputPromptTitle"]
      172 NAMECALL                         R16 R16 K25 ["getText"]
      174 CALL                             R16 3 1
      175 SETTABLEKS                       R16 R15 K51 ["placeholder"]
      177 SETTABLEKS                       R2 R15 K52 ["onChanged"]
      179 SETTABLEKS                       R7 R15 K53 ["onReturnPressed"]
      181 GETIMPORT                        R16 K59 [UDim.new]
      183 LOADN                            R17 1
      184 LOADN                            R18 0
      185 CALL                             R16 2 1
      186 SETTABLEKS                       R16 R15 K54 ["width"]
      188 GETUPVAL                         R16 4
      189 GETTABLEKS                       R16 R16 K40 ["Enums"]
      191 GETTABLEKS                       R16 R16 K41 ["InputSize"]
      193 GETTABLEKS                       R16 R16 K60 ["Medium"]
      195 SETTABLEKS                       R16 R15 K31 ["size"]
      197 CALL                             R13 2 1
      198 SETTABLEKS                       R13 R12 K45 ["Prompt"]
      200 SETTABLEKS                       R8 R12 K46 ["ModelSelector"]
      202 GETUPVAL                         R13 0
      203 GETTABLEKS                       R13 R13 K10 ["createElement"]
      205 GETUPVAL                         R14 4
      206 GETTABLEKS                       R14 R14 K61 ["Button"]
      208 DUPTABLE                         R15 K64 [{"LayoutOrder", "text", "onActivated", "isDisabled", "variant", "size", "width"}]
      209 MOVE                             R16 R5
      210 CALL                             R16 0 1
      211 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      213 GETUPVAL                         R16 5
      214 LOADK                            R18 K23 ["TextureGen"]
      215 LOADK                            R19 K65 ["InputGenerateTexture"]
      216 NAMECALL                         R16 R16 K25 ["getText"]
      218 CALL                             R16 3 1
      219 SETTABLEKS                       R16 R15 K34 ["text"]
      221 SETTABLEKS                       R7 R15 K30 ["onActivated"]
      223 SETTABLEKS                       R6 R15 K62 ["isDisabled"]
      225 GETUPVAL                         R16 4
      226 GETTABLEKS                       R16 R16 K40 ["Enums"]
      228 GETTABLEKS                       R16 R16 K66 ["ButtonVariant"]
      230 GETTABLEKS                       R16 R16 K67 ["Emphasis"]
      232 SETTABLEKS                       R16 R15 K63 ["variant"]
      234 GETUPVAL                         R16 4
      235 GETTABLEKS                       R16 R16 K40 ["Enums"]
      237 GETTABLEKS                       R16 R16 K41 ["InputSize"]
      239 GETTABLEKS                       R16 R16 K60 ["Medium"]
      241 SETTABLEKS                       R16 R15 K31 ["size"]
      243 GETIMPORT                        R16 K59 [UDim.new]
      245 LOADN                            R17 1
      246 LOADN                            R18 0
      247 CALL                             R16 2 1
      248 SETTABLEKS                       R16 R15 K54 ["width"]
      250 CALL                             R13 2 1
      251 SETTABLEKS                       R13 R12 K47 ["Generate"]
      253 CALL                             R9 3 -1
      254 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["AssistantUI"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["Gen3dCore"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Bin"]
       46 GETTABLEKS                       R7 R7 K13 ["Common"]
       48 GETTABLEKS                       R7 R7 K14 ["defineLuaFlags"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R4 K15 ["Resources"]
       53 GETTABLEKS                       R7 R7 K16 ["Localization"]
       55 GETTABLEKS                       R7 R7 K17 ["Translator"]
       57 GETTABLEKS                       R8 R5 K18 ["Constants"]
       59 GETTABLEKS                       R8 R8 K19 ["Enums"]
       61 GETTABLEKS                       R8 R8 K20 ["TextureGenModel"]
       63 DUPCLOSURE                       R9 K21 [PROTO_2]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R8
       71 RETURN                           R9 1
