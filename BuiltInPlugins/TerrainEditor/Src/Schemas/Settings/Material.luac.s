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
       88 DUPTABLE                         R12 K20 [{["Disabled"] = False, ["Hidden"], ["Id"], ["Label"], ["Layout"], ["Schema"]}]
       89 GETUPVAL                         R14 0
       90 GETTABLEKS                       R14 R14 K7 ["AutoMaterial"]
       92 GETTABLE                         R13 R1 R14
       93 SETTABLEKS                       R13 R12 K17 ["Hidden"]
       95 GETUPVAL                         R13 0
       96 GETTABLEKS                       R13 R13 K21 ["SourceMaterial"]
       98 SETTABLEKS                       R13 R12 K4 ["Id"]
      100 GETUPVAL                         R14 7
      101 CALL                             R14 0 1
      102 JUMPIFNOT                        R14 ; [+13]
      103 JUMPIFNOT                        R5 ; [+6]
      104 GETUPVAL                         R15 8
      105 LOADK                            R16 K2 ["Replace"]
      106 NAMECALL                         R13 R4 K22 ["getText"]
      108 CALL                             R13 3 1
      109 JUMP                             ; [+7]
      110 LOADK                            R15 K23 ["Brush"]
      111 LOADK                            R16 K24 ["Material"]
      112 NAMECALL                         R13 R4 K22 ["getText"]
      114 CALL                             R13 3 1
      115 JUMP                             ; [+1]
      116 LOADNIL                          R13
      117 SETTABLEKS                       R13 R12 K18 ["Label"]
      119 GETIMPORT                        R13 K28 [Enum.FillDirection.Vertical]
      121 SETTABLEKS                       R13 R12 K19 ["Layout"]
      123 DUPTABLE                         R13 K33 [{["AllowAir"] = True, ["InvalidSourceLabel"], ["InvalidSourceSelected"], ["Type"] = "Material"}]
      124 GETUPVAL                         R16 8
      125 GETUPVAL                         R17 0
      126 GETTABLEKS                       R17 R17 K34 ["InvalidSourceMode"]
      128 NAMECALL                         R14 R4 K22 ["getText"]
      130 CALL                             R14 3 1
      131 SETTABLEKS                       R14 R13 K31 ["InvalidSourceLabel"]
      133 MOVE                             R14 R5
      134 JUMPIFNOT                        R14 ; [+8]
      135 GETUPVAL                         R16 0
      136 GETTABLEKS                       R16 R16 K34 ["InvalidSourceMode"]
      138 GETTABLE                         R15 R1 R16
      139 JUMPIFEQKB                       R15 TRUE ; [+2]
      141 LOADB                            R14 0 +1
      142 LOADB                            R14 1
      143 SETTABLEKS                       R14 R13 K32 ["InvalidSourceSelected"]
      145 SETTABLEKS                       R13 R12 K5 ["Schema"]
      147 DUPTABLE                         R13 K35 [{"Hidden", "Id", "Label", "Layout", "Schema"}]
      148 GETUPVAL                         R16 0
      149 GETTABLEKS                       R16 R16 K1 ["MaterialMode"]
      151 GETTABLE                         R15 R1 R16
      152 JUMPIFEQKNIL                     R15 ; [+11]
      154 LOADB                            R14 0
      155 GETUPVAL                         R16 0
      156 GETTABLEKS                       R16 R16 K1 ["MaterialMode"]
      158 GETTABLE                         R15 R1 R16
      159 GETUPVAL                         R16 1
      160 GETTABLEKS                       R16 R16 K36 ["Paint"]
      162 JUMPIFNOTEQ                      R15 R16 ; [+19]
      164 LOADB                            R14 1
      165 GETUPVAL                         R16 0
      166 GETTABLEKS                       R16 R16 K3 ["FillMode"]
      168 GETTABLE                         R15 R1 R16
      169 JUMPIFEQKNIL                     R15 ; [+12]
      171 GETUPVAL                         R16 0
      172 GETTABLEKS                       R16 R16 K3 ["FillMode"]
      174 GETTABLE                         R15 R1 R16
      175 GETUPVAL                         R16 2
      176 GETTABLEKS                       R16 R16 K37 ["Fill"]
      178 JUMPIFEQ                         R15 R16 ; [+2]
      180 LOADB                            R14 0 +1
      181 LOADB                            R14 1
      182 SETTABLEKS                       R14 R13 K17 ["Hidden"]
      184 GETUPVAL                         R14 0
      185 GETTABLEKS                       R14 R14 K38 ["TargetMaterial"]
      187 SETTABLEKS                       R14 R13 K4 ["Id"]
      189 GETUPVAL                         R15 7
      190 CALL                             R15 0 1
      191 JUMPIFNOT                        R15 ; [+6]
      192 GETUPVAL                         R16 8
      193 LOADK                            R17 K39 ["With"]
      194 NAMECALL                         R14 R4 K22 ["getText"]
      196 CALL                             R14 3 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R14
      199 SETTABLEKS                       R14 R13 K18 ["Label"]
      201 GETIMPORT                        R14 K28 [Enum.FillDirection.Vertical]
      203 SETTABLEKS                       R14 R13 K19 ["Layout"]
      205 DUPTABLE                         R14 K40 [{["AllowAir"] = True, ["Type"] = "Material"}]
      206 SETTABLEKS                       R14 R13 K5 ["Schema"]
      208 DUPTABLE                         R14 K41 [{"Hidden", "Id", "Layout", "Label", "Schema"}]
      209 GETUPVAL                         R16 9
      210 GETTABLEKS                       R16 R16 K36 ["Paint"]
      212 JUMPIFNOTEQ                      R2 R16 ; [+2]
      214 LOADB                            R15 0 +1
      215 LOADB                            R15 1
      216 SETTABLEKS                       R15 R14 K17 ["Hidden"]
      218 GETUPVAL                         R15 0
      219 GETTABLEKS                       R15 R15 K42 ["Apply"]
      221 SETTABLEKS                       R15 R14 K4 ["Id"]
      223 GETIMPORT                        R15 K28 [Enum.FillDirection.Vertical]
      225 SETTABLEKS                       R15 R14 K19 ["Layout"]
      227 GETUPVAL                         R17 0
      228 GETTABLEKS                       R17 R17 K1 ["MaterialMode"]
      230 GETTABLE                         R16 R1 R17
      231 JUMPIF                           R16 ; [+5]
      232 GETUPVAL                         R17 0
      233 GETTABLEKS                       R17 R17 K3 ["FillMode"]
      235 GETTABLE                         R16 R1 R17
      236 JUMPIFNOT                        R16 ; [+14]
      237 GETUPVAL                         R17 8
      238 GETUPVAL                         R19 0
      239 GETTABLEKS                       R19 R19 K1 ["MaterialMode"]
      241 GETTABLE                         R18 R1 R19
      242 JUMPIF                           R18 ; [+4]
      243 GETUPVAL                         R19 0
      244 GETTABLEKS                       R19 R19 K3 ["FillMode"]
      246 GETTABLE                         R18 R1 R19
      247 NAMECALL                         R15 R4 K22 ["getText"]
      249 CALL                             R15 3 1
      250 JUMP                             ; [+1]
      251 LOADNIL                          R15
      252 SETTABLEKS                       R15 R14 K18 ["Label"]
      254 DUPTABLE                         R15 K44 [{["Label"], ["Type"] = "Button"}]
      255 GETUPVAL                         R18 0
      256 GETTABLEKS                       R18 R18 K1 ["MaterialMode"]
      258 GETTABLE                         R17 R1 R18
      259 JUMPIF                           R17 ; [+5]
      260 GETUPVAL                         R18 0
      261 GETTABLEKS                       R18 R18 K3 ["FillMode"]
      263 GETTABLE                         R17 R1 R18
      264 JUMPIFNOT                        R17 ; [+14]
      265 GETUPVAL                         R18 8
      266 GETUPVAL                         R20 0
      267 GETTABLEKS                       R20 R20 K1 ["MaterialMode"]
      269 GETTABLE                         R19 R1 R20
      270 JUMPIF                           R19 ; [+4]
      271 GETUPVAL                         R20 0
      272 GETTABLEKS                       R20 R20 K3 ["FillMode"]
      274 GETTABLE                         R19 R1 R20
      275 NAMECALL                         R16 R4 K22 ["getText"]
      277 CALL                             R16 3 1
      278 JUMP                             ; [+1]
      279 LOADNIL                          R16
      280 SETTABLEKS                       R16 R15 K18 ["Label"]
      282 SETTABLEKS                       R15 R14 K5 ["Schema"]
      284 SETLIST                          R8 R9 6 [1]
      286 DUPTABLE                         R9 K48 [{"Category", "Data", "Overrides"}]
      287 GETUPVAL                         R10 8
      288 SETTABLEKS                       R10 R9 K45 ["Category"]
      290 SETTABLEKS                       R1 R9 K46 ["Data"]
      292 SETTABLEKS                       R3 R9 K47 ["Overrides"]
      294 CALL                             R6 3 -1
      295 RETURN                           R6 -1

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
       80 GETTABLEKS                       R16 R10 K23 ["InvalidSourceMode"]
       82 GETTABLEKS                       R17 R11 K24 ["LocalSession"]
       84 SETTABLE                         R17 R15 R16
       85 GETTABLEKS                       R16 R10 K17 ["MaterialMode"]
       87 GETTABLEKS                       R17 R11 K22 ["LocalPersistent"]
       89 SETTABLE                         R17 R15 R16
       90 GETTABLEKS                       R16 R10 K25 ["SourceMaterial"]
       92 GETTABLEKS                       R17 R11 K22 ["LocalPersistent"]
       94 SETTABLE                         R17 R15 R16
       95 GETTABLEKS                       R16 R10 K26 ["SourceMaterialSlot"]
       97 GETTABLEKS                       R17 R11 K27 ["PlacePersistent"]
       99 SETTABLE                         R17 R15 R16
      100 GETTABLEKS                       R16 R10 K28 ["TargetMaterial"]
      102 GETTABLEKS                       R17 R11 K22 ["LocalPersistent"]
      104 SETTABLE                         R17 R15 R16
      105 GETTABLEKS                       R16 R10 K29 ["TargetMaterialSlot"]
      107 GETTABLEKS                       R17 R11 K27 ["PlacePersistent"]
      109 SETTABLE                         R17 R15 R16
      110 SETTABLEKS                       R15 R14 K19 ["Storage"]
      112 DUPCLOSURE                       R15 K30 [PROTO_0]
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R12
      123 SETTABLEKS                       R15 R14 K31 ["Generator"]
      125 RETURN                           R14 1
