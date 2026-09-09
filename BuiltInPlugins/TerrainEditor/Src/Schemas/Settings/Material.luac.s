PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["Localization"]
        2 LOADB                            R5 1
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R7 R7 K1 ["MaterialMode"]
        6 GETTABLE                         R6 R1 R7
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K2 ["Replace"]
       10 JUMPIFEQ                         R6 R7 ; [+12]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K3 ["FillMode"]
       15 GETTABLE                         R6 R1 R7
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K2 ["Replace"]
       19 JUMPIFEQ                         R6 R7 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 GETUPVAL                         R6 3
       24 MOVE                             R7 R0
       25 NEWTABLE                         R8 0 6
       27 DUPTABLE                         R9 K6 [{"Id", "Schema"}]
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R10 R10 K7 ["AutoMaterial"]
       31 SETTABLEKS                       R10 R9 K4 ["Id"]
       33 DUPTABLE                         R10 K10 [{["Type"] = "Checkbox"}]
       34 SETTABLEKS                       R10 R9 K5 ["Schema"]
       36 DUPTABLE                         R10 K6 [{"Id", "Schema"}]
       37 GETUPVAL                         R11 0
       38 GETTABLEKS                       R11 R11 K1 ["MaterialMode"]
       40 SETTABLEKS                       R11 R10 K4 ["Id"]
       42 DUPTABLE                         R11 K12 [{"Type", "Items"}]
       43 GETUPVAL                         R13 4
       44 CALL                             R13 0 1
       45 JUMPIFNOT                        R13 ; [+2]
       46 LOADK                            R12 K13 ["SegmentedControl"]
       47 JUMP                             ; [+1]
       48 LOADK                            R12 K14 ["SingleSelectButton"]
       49 SETTABLEKS                       R12 R11 K8 ["Type"]
       51 GETUPVAL                         R12 5
       52 MOVE                             R13 R4
       53 LOADNIL                          R14
       54 GETUPVAL                         R15 6
       55 GETTABLEKS                       R15 R15 K1 ["MaterialMode"]
       57 CALL                             R12 3 1
       58 SETTABLEKS                       R12 R11 K11 ["Items"]
       60 SETTABLEKS                       R11 R10 K5 ["Schema"]
       62 DUPTABLE                         R11 K6 [{"Id", "Schema"}]
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R12 R12 K3 ["FillMode"]
       66 SETTABLEKS                       R12 R11 K4 ["Id"]
       68 DUPTABLE                         R12 K12 [{"Type", "Items"}]
       69 GETUPVAL                         R14 4
       70 CALL                             R14 0 1
       71 JUMPIFNOT                        R14 ; [+2]
       72 LOADK                            R13 K13 ["SegmentedControl"]
       73 JUMP                             ; [+1]
       74 LOADK                            R13 K14 ["SingleSelectButton"]
       75 SETTABLEKS                       R13 R12 K8 ["Type"]
       77 GETUPVAL                         R13 5
       78 MOVE                             R14 R4
       79 LOADNIL                          R15
       80 GETUPVAL                         R16 6
       81 GETTABLEKS                       R16 R16 K3 ["FillMode"]
       83 CALL                             R13 3 1
       84 SETTABLEKS                       R13 R12 K11 ["Items"]
       86 SETTABLEKS                       R12 R11 K5 ["Schema"]
       88 DUPTABLE                         R12 K19 [{"Disabled", "Hidden", "Id", "Label", "Layout", "Schema"}]
       89 GETUPVAL                         R14 7
       90 CALL                             R14 0 1
       91 JUMPIFNOT                        R14 ; [+5]
       92 GETUPVAL                         R14 0
       93 GETTABLEKS                       R14 R14 K7 ["AutoMaterial"]
       95 GETTABLE                         R13 R1 R14
       96 JUMP                             ; [+1]
       97 LOADNIL                          R13
       98 SETTABLEKS                       R13 R12 K15 ["Disabled"]
      100 GETUPVAL                         R14 7
      101 CALL                             R14 0 1
      102 JUMPIFNOT                        R14 ; [+2]
      103 LOADNIL                          R13
      104 JUMP                             ; [+4]
      105 GETUPVAL                         R14 0
      106 GETTABLEKS                       R14 R14 K7 ["AutoMaterial"]
      108 GETTABLE                         R13 R1 R14
      109 SETTABLEKS                       R13 R12 K16 ["Hidden"]
      111 GETUPVAL                         R13 0
      112 GETTABLEKS                       R13 R13 K20 ["SourceMaterial"]
      114 SETTABLEKS                       R13 R12 K4 ["Id"]
      116 GETUPVAL                         R14 7
      117 CALL                             R14 0 1
      118 JUMPIFNOT                        R14 ; [+13]
      119 JUMPIFNOT                        R5 ; [+6]
      120 GETUPVAL                         R15 8
      121 LOADK                            R16 K2 ["Replace"]
      122 NAMECALL                         R13 R4 K21 ["getText"]
      124 CALL                             R13 3 1
      125 JUMP                             ; [+7]
      126 LOADK                            R15 K22 ["Brush"]
      127 LOADK                            R16 K23 ["Material"]
      128 NAMECALL                         R13 R4 K21 ["getText"]
      130 CALL                             R13 3 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R13
      133 SETTABLEKS                       R13 R12 K17 ["Label"]
      135 GETIMPORT                        R13 K27 [Enum.FillDirection.Vertical]
      137 SETTABLEKS                       R13 R12 K18 ["Layout"]
      139 DUPTABLE                         R13 K30 [{["AllowAir"] = True, ["Type"] = "Material"}]
      140 SETTABLEKS                       R13 R12 K5 ["Schema"]
      142 DUPTABLE                         R13 K31 [{"Hidden", "Id", "Label", "Layout", "Schema"}]
      143 GETUPVAL                         R16 0
      144 GETTABLEKS                       R16 R16 K1 ["MaterialMode"]
      146 GETTABLE                         R15 R1 R16
      147 JUMPIFEQKNIL                     R15 ; [+11]
      149 LOADB                            R14 0
      150 GETUPVAL                         R16 0
      151 GETTABLEKS                       R16 R16 K1 ["MaterialMode"]
      153 GETTABLE                         R15 R1 R16
      154 GETUPVAL                         R16 1
      155 GETTABLEKS                       R16 R16 K32 ["Paint"]
      157 JUMPIFNOTEQ                      R15 R16 ; [+19]
      159 LOADB                            R14 1
      160 GETUPVAL                         R16 0
      161 GETTABLEKS                       R16 R16 K3 ["FillMode"]
      163 GETTABLE                         R15 R1 R16
      164 JUMPIFEQKNIL                     R15 ; [+12]
      166 GETUPVAL                         R16 0
      167 GETTABLEKS                       R16 R16 K3 ["FillMode"]
      169 GETTABLE                         R15 R1 R16
      170 GETUPVAL                         R16 2
      171 GETTABLEKS                       R16 R16 K33 ["Fill"]
      173 JUMPIFEQ                         R15 R16 ; [+2]
      175 LOADB                            R14 0 +1
      176 LOADB                            R14 1
      177 SETTABLEKS                       R14 R13 K16 ["Hidden"]
      179 GETUPVAL                         R14 0
      180 GETTABLEKS                       R14 R14 K34 ["TargetMaterial"]
      182 SETTABLEKS                       R14 R13 K4 ["Id"]
      184 GETUPVAL                         R15 7
      185 CALL                             R15 0 1
      186 JUMPIFNOT                        R15 ; [+6]
      187 GETUPVAL                         R16 8
      188 LOADK                            R17 K35 ["With"]
      189 NAMECALL                         R14 R4 K21 ["getText"]
      191 CALL                             R14 3 1
      192 JUMP                             ; [+1]
      193 LOADNIL                          R14
      194 SETTABLEKS                       R14 R13 K17 ["Label"]
      196 GETIMPORT                        R14 K27 [Enum.FillDirection.Vertical]
      198 SETTABLEKS                       R14 R13 K18 ["Layout"]
      200 DUPTABLE                         R14 K30 [{["AllowAir"] = True, ["Type"] = "Material"}]
      201 SETTABLEKS                       R14 R13 K5 ["Schema"]
      203 DUPTABLE                         R14 K36 [{"Hidden", "Id", "Layout", "Label", "Schema"}]
      204 GETUPVAL                         R16 9
      205 GETTABLEKS                       R16 R16 K32 ["Paint"]
      207 JUMPIFNOTEQ                      R2 R16 ; [+2]
      209 LOADB                            R15 0 +1
      210 LOADB                            R15 1
      211 SETTABLEKS                       R15 R14 K16 ["Hidden"]
      213 GETUPVAL                         R15 0
      214 GETTABLEKS                       R15 R15 K37 ["Apply"]
      216 SETTABLEKS                       R15 R14 K4 ["Id"]
      218 GETIMPORT                        R15 K27 [Enum.FillDirection.Vertical]
      220 SETTABLEKS                       R15 R14 K18 ["Layout"]
      222 GETUPVAL                         R17 0
      223 GETTABLEKS                       R17 R17 K1 ["MaterialMode"]
      225 GETTABLE                         R16 R1 R17
      226 JUMPIF                           R16 ; [+5]
      227 GETUPVAL                         R17 0
      228 GETTABLEKS                       R17 R17 K3 ["FillMode"]
      230 GETTABLE                         R16 R1 R17
      231 JUMPIFNOT                        R16 ; [+14]
      232 GETUPVAL                         R17 8
      233 GETUPVAL                         R19 0
      234 GETTABLEKS                       R19 R19 K1 ["MaterialMode"]
      236 GETTABLE                         R18 R1 R19
      237 JUMPIF                           R18 ; [+4]
      238 GETUPVAL                         R19 0
      239 GETTABLEKS                       R19 R19 K3 ["FillMode"]
      241 GETTABLE                         R18 R1 R19
      242 NAMECALL                         R15 R4 K21 ["getText"]
      244 CALL                             R15 3 1
      245 JUMP                             ; [+1]
      246 LOADNIL                          R15
      247 SETTABLEKS                       R15 R14 K17 ["Label"]
      249 DUPTABLE                         R15 K39 [{["Label"], ["Type"] = "Button"}]
      250 GETUPVAL                         R18 0
      251 GETTABLEKS                       R18 R18 K1 ["MaterialMode"]
      253 GETTABLE                         R17 R1 R18
      254 JUMPIF                           R17 ; [+5]
      255 GETUPVAL                         R18 0
      256 GETTABLEKS                       R18 R18 K3 ["FillMode"]
      258 GETTABLE                         R17 R1 R18
      259 JUMPIFNOT                        R17 ; [+14]
      260 GETUPVAL                         R18 8
      261 GETUPVAL                         R20 0
      262 GETTABLEKS                       R20 R20 K1 ["MaterialMode"]
      264 GETTABLE                         R19 R1 R20
      265 JUMPIF                           R19 ; [+4]
      266 GETUPVAL                         R20 0
      267 GETTABLEKS                       R20 R20 K3 ["FillMode"]
      269 GETTABLE                         R19 R1 R20
      270 NAMECALL                         R16 R4 K21 ["getText"]
      272 CALL                             R16 3 1
      273 JUMP                             ; [+1]
      274 LOADNIL                          R16
      275 SETTABLEKS                       R16 R15 K17 ["Label"]
      277 SETTABLEKS                       R15 R14 K5 ["Schema"]
      279 SETLIST                          R8 R9 6 [1]
      281 DUPTABLE                         R9 K43 [{"Category", "Data", "Overrides"}]
      282 GETUPVAL                         R10 8
      283 SETTABLEKS                       R10 R9 K40 ["Category"]
      285 SETTABLEKS                       R1 R9 K41 ["Data"]
      287 SETTABLEKS                       R3 R9 K42 ["Overrides"]
      289 CALL                             R6 3 -1
      290 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["getItems"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["ApplyById"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Flags"]
       38 GETTABLEKS                       R5 R5 K12 ["getFFlagEnableTerrainPalette"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K11 ["Flags"]
       47 GETTABLEKS                       R6 R6 K13 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R1 K14 ["Category"]
       52 GETTABLEKS                       R7 R1 K15 ["EnumType"]
       54 GETTABLEKS                       R8 R1 K16 ["FillMode"]
       56 GETTABLEKS                       R9 R1 K17 ["MaterialMode"]
       58 GETTABLEKS                       R10 R1 K18 ["MaterialSettings"]
       60 GETTABLEKS                       R11 R1 K19 ["Storage"]
       62 GETTABLEKS                       R12 R1 K20 ["Tool"]
       64 GETTABLEKS                       R13 R6 K18 ["MaterialSettings"]
       66 NEWTABLE                         R14 2 0
       68 NEWTABLE                         R15 8 0
       70 GETTABLEKS                       R16 R10 K21 ["AutoMaterial"]
       72 GETTABLEKS                       R17 R11 K22 ["LocalPersistent"]
       74 SETTABLE                         R17 R15 R16
       75 GETTABLEKS                       R16 R10 K16 ["FillMode"]
       77 GETTABLEKS                       R17 R11 K22 ["LocalPersistent"]
       79 SETTABLE                         R17 R15 R16
       80 GETTABLEKS                       R16 R10 K17 ["MaterialMode"]
       82 GETTABLEKS                       R17 R11 K22 ["LocalPersistent"]
       84 SETTABLE                         R17 R15 R16
       85 GETTABLEKS                       R16 R10 K23 ["SourceMaterial"]
       87 GETTABLEKS                       R17 R11 K22 ["LocalPersistent"]
       89 SETTABLE                         R17 R15 R16
       90 GETTABLEKS                       R16 R10 K24 ["SourceMaterialSlot"]
       92 GETTABLEKS                       R17 R11 K25 ["PlacePersistent"]
       94 SETTABLE                         R17 R15 R16
       95 GETTABLEKS                       R16 R10 K26 ["TargetMaterial"]
       97 GETTABLEKS                       R17 R11 K22 ["LocalPersistent"]
       99 SETTABLE                         R17 R15 R16
      100 GETTABLEKS                       R16 R10 K27 ["TargetMaterialSlot"]
      102 GETTABLEKS                       R17 R11 K25 ["PlacePersistent"]
      104 SETTABLE                         R17 R15 R16
      105 SETTABLEKS                       R15 R14 K19 ["Storage"]
      107 DUPCLOSURE                       R15 K28 [PROTO_0]
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R12
      118 SETTABLEKS                       R15 R14 K29 ["Generator"]
      120 RETURN                           R14 1
