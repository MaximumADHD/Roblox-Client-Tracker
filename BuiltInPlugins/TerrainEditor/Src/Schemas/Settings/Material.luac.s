PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["Localization"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 NEWTABLE                         R7 0 6
        6 DUPTABLE                         R8 K3 [{"Id", "Schema"}]
        7 GETUPVAL                         R9 1
        8 GETTABLEKS                       R9 R9 K4 ["AutoMaterial"]
       10 SETTABLEKS                       R9 R8 K1 ["Id"]
       12 DUPTABLE                         R9 K7 [{["Type"] = "Checkbox"}]
       13 SETTABLEKS                       R9 R8 K2 ["Schema"]
       15 DUPTABLE                         R9 K3 [{"Id", "Schema"}]
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R10 R10 K8 ["MaterialMode"]
       19 SETTABLEKS                       R10 R9 K1 ["Id"]
       21 DUPTABLE                         R10 K10 [{"Type", "Items"}]
       22 GETUPVAL                         R12 2
       23 CALL                             R12 0 1
       24 JUMPIFNOT                        R12 ; [+2]
       25 LOADK                            R11 K11 ["SegmentedControl"]
       26 JUMP                             ; [+1]
       27 LOADK                            R11 K12 ["SingleSelectButton"]
       28 SETTABLEKS                       R11 R10 K5 ["Type"]
       30 GETUPVAL                         R11 3
       31 MOVE                             R12 R4
       32 LOADNIL                          R13
       33 GETUPVAL                         R14 4
       34 GETTABLEKS                       R14 R14 K8 ["MaterialMode"]
       36 CALL                             R11 3 1
       37 SETTABLEKS                       R11 R10 K9 ["Items"]
       39 SETTABLEKS                       R10 R9 K2 ["Schema"]
       41 DUPTABLE                         R10 K3 [{"Id", "Schema"}]
       42 GETUPVAL                         R11 1
       43 GETTABLEKS                       R11 R11 K13 ["FillMode"]
       45 SETTABLEKS                       R11 R10 K1 ["Id"]
       47 DUPTABLE                         R11 K10 [{"Type", "Items"}]
       48 GETUPVAL                         R13 2
       49 CALL                             R13 0 1
       50 JUMPIFNOT                        R13 ; [+2]
       51 LOADK                            R12 K11 ["SegmentedControl"]
       52 JUMP                             ; [+1]
       53 LOADK                            R12 K12 ["SingleSelectButton"]
       54 SETTABLEKS                       R12 R11 K5 ["Type"]
       56 GETUPVAL                         R12 3
       57 MOVE                             R13 R4
       58 LOADNIL                          R14
       59 GETUPVAL                         R15 4
       60 GETTABLEKS                       R15 R15 K13 ["FillMode"]
       62 CALL                             R12 3 1
       63 SETTABLEKS                       R12 R11 K9 ["Items"]
       65 SETTABLEKS                       R11 R10 K2 ["Schema"]
       67 DUPTABLE                         R11 K16 [{"Hidden", "Id", "Layout", "Schema"}]
       68 GETUPVAL                         R13 1
       69 GETTABLEKS                       R13 R13 K4 ["AutoMaterial"]
       71 GETTABLE                         R12 R1 R13
       72 SETTABLEKS                       R12 R11 K14 ["Hidden"]
       74 GETUPVAL                         R12 1
       75 GETTABLEKS                       R12 R12 K17 ["SourceMaterial"]
       77 SETTABLEKS                       R12 R11 K1 ["Id"]
       79 GETIMPORT                        R12 K21 [Enum.FillDirection.Vertical]
       81 SETTABLEKS                       R12 R11 K15 ["Layout"]
       83 DUPTABLE                         R12 K25 [{["AllowAir"] = True, ["Type"] = "Material"}]
       84 SETTABLEKS                       R12 R11 K2 ["Schema"]
       86 DUPTABLE                         R12 K16 [{"Hidden", "Id", "Layout", "Schema"}]
       87 GETUPVAL                         R15 1
       88 GETTABLEKS                       R15 R15 K8 ["MaterialMode"]
       90 GETTABLE                         R14 R1 R15
       91 JUMPIFEQKNIL                     R14 ; [+11]
       93 LOADB                            R13 0
       94 GETUPVAL                         R15 1
       95 GETTABLEKS                       R15 R15 K8 ["MaterialMode"]
       97 GETTABLE                         R14 R1 R15
       98 GETUPVAL                         R15 5
       99 GETTABLEKS                       R15 R15 K26 ["Paint"]
      101 JUMPIFNOTEQ                      R14 R15 ; [+19]
      103 LOADB                            R13 1
      104 GETUPVAL                         R15 1
      105 GETTABLEKS                       R15 R15 K13 ["FillMode"]
      107 GETTABLE                         R14 R1 R15
      108 JUMPIFEQKNIL                     R14 ; [+12]
      110 GETUPVAL                         R15 1
      111 GETTABLEKS                       R15 R15 K13 ["FillMode"]
      113 GETTABLE                         R14 R1 R15
      114 GETUPVAL                         R15 6
      115 GETTABLEKS                       R15 R15 K27 ["Fill"]
      117 JUMPIFEQ                         R14 R15 ; [+2]
      119 LOADB                            R13 0 +1
      120 LOADB                            R13 1
      121 SETTABLEKS                       R13 R12 K14 ["Hidden"]
      123 GETUPVAL                         R13 1
      124 GETTABLEKS                       R13 R13 K28 ["TargetMaterial"]
      126 SETTABLEKS                       R13 R12 K1 ["Id"]
      128 GETIMPORT                        R13 K21 [Enum.FillDirection.Vertical]
      130 SETTABLEKS                       R13 R12 K15 ["Layout"]
      132 DUPTABLE                         R13 K25 [{["AllowAir"] = True, ["Type"] = "Material"}]
      133 SETTABLEKS                       R13 R12 K2 ["Schema"]
      135 DUPTABLE                         R13 K30 [{"Hidden", "Id", "Layout", "Label", "Schema"}]
      136 GETUPVAL                         R15 7
      137 GETTABLEKS                       R15 R15 K26 ["Paint"]
      139 JUMPIFNOTEQ                      R2 R15 ; [+2]
      141 LOADB                            R14 0 +1
      142 LOADB                            R14 1
      143 SETTABLEKS                       R14 R13 K14 ["Hidden"]
      145 GETUPVAL                         R14 1
      146 GETTABLEKS                       R14 R14 K31 ["Apply"]
      148 SETTABLEKS                       R14 R13 K1 ["Id"]
      150 GETIMPORT                        R14 K21 [Enum.FillDirection.Vertical]
      152 SETTABLEKS                       R14 R13 K15 ["Layout"]
      154 GETUPVAL                         R16 1
      155 GETTABLEKS                       R16 R16 K8 ["MaterialMode"]
      157 GETTABLE                         R15 R1 R16
      158 JUMPIF                           R15 ; [+5]
      159 GETUPVAL                         R16 1
      160 GETTABLEKS                       R16 R16 K13 ["FillMode"]
      162 GETTABLE                         R15 R1 R16
      163 JUMPIFNOT                        R15 ; [+14]
      164 GETUPVAL                         R16 8
      165 GETUPVAL                         R18 1
      166 GETTABLEKS                       R18 R18 K8 ["MaterialMode"]
      168 GETTABLE                         R17 R1 R18
      169 JUMPIF                           R17 ; [+4]
      170 GETUPVAL                         R18 1
      171 GETTABLEKS                       R18 R18 K13 ["FillMode"]
      173 GETTABLE                         R17 R1 R18
      174 NAMECALL                         R14 R4 K32 ["getText"]
      176 CALL                             R14 3 1
      177 JUMP                             ; [+1]
      178 LOADNIL                          R14
      179 SETTABLEKS                       R14 R13 K29 ["Label"]
      181 DUPTABLE                         R14 K34 [{["Label"], ["Type"] = "Button"}]
      182 GETUPVAL                         R17 1
      183 GETTABLEKS                       R17 R17 K8 ["MaterialMode"]
      185 GETTABLE                         R16 R1 R17
      186 JUMPIF                           R16 ; [+5]
      187 GETUPVAL                         R17 1
      188 GETTABLEKS                       R17 R17 K13 ["FillMode"]
      190 GETTABLE                         R16 R1 R17
      191 JUMPIFNOT                        R16 ; [+14]
      192 GETUPVAL                         R17 8
      193 GETUPVAL                         R19 1
      194 GETTABLEKS                       R19 R19 K8 ["MaterialMode"]
      196 GETTABLE                         R18 R1 R19
      197 JUMPIF                           R18 ; [+4]
      198 GETUPVAL                         R19 1
      199 GETTABLEKS                       R19 R19 K13 ["FillMode"]
      201 GETTABLE                         R18 R1 R19
      202 NAMECALL                         R15 R4 K32 ["getText"]
      204 CALL                             R15 3 1
      205 JUMP                             ; [+1]
      206 LOADNIL                          R15
      207 SETTABLEKS                       R15 R14 K29 ["Label"]
      209 SETTABLEKS                       R14 R13 K2 ["Schema"]
      211 SETLIST                          R7 R8 6 [1]
      213 DUPTABLE                         R8 K38 [{"Category", "Data", "Overrides"}]
      214 GETUPVAL                         R9 8
      215 SETTABLEKS                       R9 R8 K35 ["Category"]
      217 SETTABLEKS                       R1 R8 K36 ["Data"]
      219 SETTABLEKS                       R3 R8 K37 ["Overrides"]
      221 CALL                             R5 3 -1
      222 RETURN                           R5 -1

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
       38 GETTABLEKS                       R5 R5 K12 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R1 K13 ["Category"]
       43 GETTABLEKS                       R6 R1 K14 ["EnumType"]
       45 GETTABLEKS                       R7 R1 K15 ["FillMode"]
       47 GETTABLEKS                       R8 R1 K16 ["MaterialMode"]
       49 GETTABLEKS                       R9 R1 K17 ["MaterialSettings"]
       51 GETTABLEKS                       R10 R1 K18 ["Storage"]
       53 GETTABLEKS                       R11 R1 K19 ["Tool"]
       55 GETTABLEKS                       R12 R5 K17 ["MaterialSettings"]
       57 NEWTABLE                         R13 2 0
       59 NEWTABLE                         R14 8 0
       61 GETTABLEKS                       R15 R9 K20 ["AutoMaterial"]
       63 GETTABLEKS                       R16 R10 K21 ["LocalPersistent"]
       65 SETTABLE                         R16 R14 R15
       66 GETTABLEKS                       R15 R9 K15 ["FillMode"]
       68 GETTABLEKS                       R16 R10 K21 ["LocalPersistent"]
       70 SETTABLE                         R16 R14 R15
       71 GETTABLEKS                       R15 R9 K16 ["MaterialMode"]
       73 GETTABLEKS                       R16 R10 K21 ["LocalPersistent"]
       75 SETTABLE                         R16 R14 R15
       76 GETTABLEKS                       R15 R9 K22 ["SourceMaterial"]
       78 GETTABLEKS                       R16 R10 K21 ["LocalPersistent"]
       80 SETTABLE                         R16 R14 R15
       81 GETTABLEKS                       R15 R9 K23 ["TargetMaterial"]
       83 GETTABLEKS                       R16 R10 K21 ["LocalPersistent"]
       85 SETTABLE                         R16 R14 R15
       86 SETTABLEKS                       R14 R13 K18 ["Storage"]
       88 DUPCLOSURE                       R14 K24 [PROTO_0]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R12
       98 SETTABLEKS                       R14 R13 K25 ["Generator"]
      100 RETURN                           R13 1
