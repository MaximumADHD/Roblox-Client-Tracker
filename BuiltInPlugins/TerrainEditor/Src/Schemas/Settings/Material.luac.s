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
       88 DUPTABLE                         R12 K18 [{"Hidden", "Id", "Label", "Layout", "Schema"}]
       89 GETUPVAL                         R14 0
       90 GETTABLEKS                       R14 R14 K7 ["AutoMaterial"]
       92 GETTABLE                         R13 R1 R14
       93 SETTABLEKS                       R13 R12 K15 ["Hidden"]
       95 GETUPVAL                         R13 0
       96 GETTABLEKS                       R13 R13 K19 ["SourceMaterial"]
       98 SETTABLEKS                       R13 R12 K4 ["Id"]
      100 GETUPVAL                         R14 7
      101 CALL                             R14 0 1
      102 JUMPIFNOT                        R14 ; [+13]
      103 JUMPIFNOT                        R5 ; [+6]
      104 GETUPVAL                         R15 8
      105 LOADK                            R16 K2 ["Replace"]
      106 NAMECALL                         R13 R4 K20 ["getText"]
      108 CALL                             R13 3 1
      109 JUMP                             ; [+7]
      110 LOADK                            R15 K21 ["Brush"]
      111 LOADK                            R16 K22 ["Material"]
      112 NAMECALL                         R13 R4 K20 ["getText"]
      114 CALL                             R13 3 1
      115 JUMP                             ; [+1]
      116 LOADNIL                          R13
      117 SETTABLEKS                       R13 R12 K16 ["Label"]
      119 GETIMPORT                        R13 K26 [Enum.FillDirection.Vertical]
      121 SETTABLEKS                       R13 R12 K17 ["Layout"]
      123 DUPTABLE                         R13 K29 [{["AllowAir"] = True, ["Type"] = "Material"}]
      124 SETTABLEKS                       R13 R12 K5 ["Schema"]
      126 DUPTABLE                         R13 K18 [{"Hidden", "Id", "Label", "Layout", "Schema"}]
      127 GETUPVAL                         R16 0
      128 GETTABLEKS                       R16 R16 K1 ["MaterialMode"]
      130 GETTABLE                         R15 R1 R16
      131 JUMPIFEQKNIL                     R15 ; [+11]
      133 LOADB                            R14 0
      134 GETUPVAL                         R16 0
      135 GETTABLEKS                       R16 R16 K1 ["MaterialMode"]
      137 GETTABLE                         R15 R1 R16
      138 GETUPVAL                         R16 1
      139 GETTABLEKS                       R16 R16 K30 ["Paint"]
      141 JUMPIFNOTEQ                      R15 R16 ; [+19]
      143 LOADB                            R14 1
      144 GETUPVAL                         R16 0
      145 GETTABLEKS                       R16 R16 K3 ["FillMode"]
      147 GETTABLE                         R15 R1 R16
      148 JUMPIFEQKNIL                     R15 ; [+12]
      150 GETUPVAL                         R16 0
      151 GETTABLEKS                       R16 R16 K3 ["FillMode"]
      153 GETTABLE                         R15 R1 R16
      154 GETUPVAL                         R16 2
      155 GETTABLEKS                       R16 R16 K31 ["Fill"]
      157 JUMPIFEQ                         R15 R16 ; [+2]
      159 LOADB                            R14 0 +1
      160 LOADB                            R14 1
      161 SETTABLEKS                       R14 R13 K15 ["Hidden"]
      163 GETUPVAL                         R14 0
      164 GETTABLEKS                       R14 R14 K32 ["TargetMaterial"]
      166 SETTABLEKS                       R14 R13 K4 ["Id"]
      168 GETUPVAL                         R15 7
      169 CALL                             R15 0 1
      170 JUMPIFNOT                        R15 ; [+6]
      171 GETUPVAL                         R16 8
      172 LOADK                            R17 K33 ["With"]
      173 NAMECALL                         R14 R4 K20 ["getText"]
      175 CALL                             R14 3 1
      176 JUMP                             ; [+1]
      177 LOADNIL                          R14
      178 SETTABLEKS                       R14 R13 K16 ["Label"]
      180 GETIMPORT                        R14 K26 [Enum.FillDirection.Vertical]
      182 SETTABLEKS                       R14 R13 K17 ["Layout"]
      184 DUPTABLE                         R14 K29 [{["AllowAir"] = True, ["Type"] = "Material"}]
      185 SETTABLEKS                       R14 R13 K5 ["Schema"]
      187 DUPTABLE                         R14 K34 [{"Hidden", "Id", "Layout", "Label", "Schema"}]
      188 GETUPVAL                         R16 9
      189 GETTABLEKS                       R16 R16 K30 ["Paint"]
      191 JUMPIFNOTEQ                      R2 R16 ; [+2]
      193 LOADB                            R15 0 +1
      194 LOADB                            R15 1
      195 SETTABLEKS                       R15 R14 K15 ["Hidden"]
      197 GETUPVAL                         R15 0
      198 GETTABLEKS                       R15 R15 K35 ["Apply"]
      200 SETTABLEKS                       R15 R14 K4 ["Id"]
      202 GETIMPORT                        R15 K26 [Enum.FillDirection.Vertical]
      204 SETTABLEKS                       R15 R14 K17 ["Layout"]
      206 GETUPVAL                         R17 0
      207 GETTABLEKS                       R17 R17 K1 ["MaterialMode"]
      209 GETTABLE                         R16 R1 R17
      210 JUMPIF                           R16 ; [+5]
      211 GETUPVAL                         R17 0
      212 GETTABLEKS                       R17 R17 K3 ["FillMode"]
      214 GETTABLE                         R16 R1 R17
      215 JUMPIFNOT                        R16 ; [+14]
      216 GETUPVAL                         R17 8
      217 GETUPVAL                         R19 0
      218 GETTABLEKS                       R19 R19 K1 ["MaterialMode"]
      220 GETTABLE                         R18 R1 R19
      221 JUMPIF                           R18 ; [+4]
      222 GETUPVAL                         R19 0
      223 GETTABLEKS                       R19 R19 K3 ["FillMode"]
      225 GETTABLE                         R18 R1 R19
      226 NAMECALL                         R15 R4 K20 ["getText"]
      228 CALL                             R15 3 1
      229 JUMP                             ; [+1]
      230 LOADNIL                          R15
      231 SETTABLEKS                       R15 R14 K16 ["Label"]
      233 DUPTABLE                         R15 K37 [{["Label"], ["Type"] = "Button"}]
      234 GETUPVAL                         R18 0
      235 GETTABLEKS                       R18 R18 K1 ["MaterialMode"]
      237 GETTABLE                         R17 R1 R18
      238 JUMPIF                           R17 ; [+5]
      239 GETUPVAL                         R18 0
      240 GETTABLEKS                       R18 R18 K3 ["FillMode"]
      242 GETTABLE                         R17 R1 R18
      243 JUMPIFNOT                        R17 ; [+14]
      244 GETUPVAL                         R18 8
      245 GETUPVAL                         R20 0
      246 GETTABLEKS                       R20 R20 K1 ["MaterialMode"]
      248 GETTABLE                         R19 R1 R20
      249 JUMPIF                           R19 ; [+4]
      250 GETUPVAL                         R20 0
      251 GETTABLEKS                       R20 R20 K3 ["FillMode"]
      253 GETTABLE                         R19 R1 R20
      254 NAMECALL                         R16 R4 K20 ["getText"]
      256 CALL                             R16 3 1
      257 JUMP                             ; [+1]
      258 LOADNIL                          R16
      259 SETTABLEKS                       R16 R15 K16 ["Label"]
      261 SETTABLEKS                       R15 R14 K5 ["Schema"]
      263 SETLIST                          R8 R9 6 [1]
      265 DUPTABLE                         R9 K41 [{"Category", "Data", "Overrides"}]
      266 GETUPVAL                         R10 8
      267 SETTABLEKS                       R10 R9 K38 ["Category"]
      269 SETTABLEKS                       R1 R9 K39 ["Data"]
      271 SETTABLEKS                       R3 R9 K40 ["Overrides"]
      273 CALL                             R6 3 -1
      274 RETURN                           R6 -1

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
