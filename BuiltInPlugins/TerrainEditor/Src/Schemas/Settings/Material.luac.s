PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["Localization"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 NEWTABLE                         R7 0 6
        6 DUPTABLE                         R8 K3 [{"Id", "Schema"}]
        7 GETUPVAL                         R9 1
        8 GETTABLEKS                       R9 R9 K4 ["AutoMaterial"]
       10 SETTABLEKS                       R9 R8 K1 ["Id"]
       12 DUPTABLE                         R9 K6 [{"Type"}]
       13 LOADK                            R10 K7 ["Checkbox"]
       14 SETTABLEKS                       R10 R9 K5 ["Type"]
       16 SETTABLEKS                       R9 R8 K2 ["Schema"]
       18 DUPTABLE                         R9 K3 [{"Id", "Schema"}]
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R10 R10 K8 ["MaterialMode"]
       22 SETTABLEKS                       R10 R9 K1 ["Id"]
       24 DUPTABLE                         R10 K10 [{"Type", "Items"}]
       25 GETUPVAL                         R12 2
       26 CALL                             R12 0 1
       27 JUMPIFNOT                        R12 ; [+2]
       28 LOADK                            R11 K11 ["SegmentedControl"]
       29 JUMP                             ; [+1]
       30 LOADK                            R11 K12 ["SingleSelectButton"]
       31 SETTABLEKS                       R11 R10 K5 ["Type"]
       33 GETUPVAL                         R11 3
       34 MOVE                             R12 R4
       35 LOADNIL                          R13
       36 GETUPVAL                         R14 4
       37 GETTABLEKS                       R14 R14 K8 ["MaterialMode"]
       39 CALL                             R11 3 1
       40 SETTABLEKS                       R11 R10 K9 ["Items"]
       42 SETTABLEKS                       R10 R9 K2 ["Schema"]
       44 DUPTABLE                         R10 K3 [{"Id", "Schema"}]
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R11 R11 K13 ["FillMode"]
       48 SETTABLEKS                       R11 R10 K1 ["Id"]
       50 DUPTABLE                         R11 K10 [{"Type", "Items"}]
       51 GETUPVAL                         R13 2
       52 CALL                             R13 0 1
       53 JUMPIFNOT                        R13 ; [+2]
       54 LOADK                            R12 K11 ["SegmentedControl"]
       55 JUMP                             ; [+1]
       56 LOADK                            R12 K12 ["SingleSelectButton"]
       57 SETTABLEKS                       R12 R11 K5 ["Type"]
       59 GETUPVAL                         R12 3
       60 MOVE                             R13 R4
       61 LOADNIL                          R14
       62 GETUPVAL                         R15 4
       63 GETTABLEKS                       R15 R15 K13 ["FillMode"]
       65 CALL                             R12 3 1
       66 SETTABLEKS                       R12 R11 K9 ["Items"]
       68 SETTABLEKS                       R11 R10 K2 ["Schema"]
       70 DUPTABLE                         R11 K16 [{"Hidden", "Id", "Layout", "Schema"}]
       71 GETUPVAL                         R13 1
       72 GETTABLEKS                       R13 R13 K4 ["AutoMaterial"]
       74 GETTABLE                         R12 R1 R13
       75 SETTABLEKS                       R12 R11 K14 ["Hidden"]
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R12 R12 K17 ["SourceMaterial"]
       80 SETTABLEKS                       R12 R11 K1 ["Id"]
       82 GETIMPORT                        R12 K21 [Enum.FillDirection.Vertical]
       84 SETTABLEKS                       R12 R11 K15 ["Layout"]
       86 DUPTABLE                         R12 K23 [{"AllowAir", "Type"}]
       87 LOADB                            R13 1
       88 SETTABLEKS                       R13 R12 K22 ["AllowAir"]
       90 LOADK                            R13 K24 ["Material"]
       91 SETTABLEKS                       R13 R12 K5 ["Type"]
       93 SETTABLEKS                       R12 R11 K2 ["Schema"]
       95 DUPTABLE                         R12 K16 [{"Hidden", "Id", "Layout", "Schema"}]
       96 GETUPVAL                         R15 1
       97 GETTABLEKS                       R15 R15 K8 ["MaterialMode"]
       99 GETTABLE                         R14 R1 R15
      100 JUMPIFEQKNIL                     R14 ; [+11]
      102 LOADB                            R13 0
      103 GETUPVAL                         R15 1
      104 GETTABLEKS                       R15 R15 K8 ["MaterialMode"]
      106 GETTABLE                         R14 R1 R15
      107 GETUPVAL                         R15 5
      108 GETTABLEKS                       R15 R15 K25 ["Paint"]
      110 JUMPIFNOTEQ                      R14 R15 ; [+19]
      112 LOADB                            R13 1
      113 GETUPVAL                         R15 1
      114 GETTABLEKS                       R15 R15 K13 ["FillMode"]
      116 GETTABLE                         R14 R1 R15
      117 JUMPIFEQKNIL                     R14 ; [+12]
      119 GETUPVAL                         R15 1
      120 GETTABLEKS                       R15 R15 K13 ["FillMode"]
      122 GETTABLE                         R14 R1 R15
      123 GETUPVAL                         R15 6
      124 GETTABLEKS                       R15 R15 K26 ["Fill"]
      126 JUMPIFEQ                         R14 R15 ; [+2]
      128 LOADB                            R13 0 +1
      129 LOADB                            R13 1
      130 SETTABLEKS                       R13 R12 K14 ["Hidden"]
      132 GETUPVAL                         R13 1
      133 GETTABLEKS                       R13 R13 K27 ["TargetMaterial"]
      135 SETTABLEKS                       R13 R12 K1 ["Id"]
      137 GETIMPORT                        R13 K21 [Enum.FillDirection.Vertical]
      139 SETTABLEKS                       R13 R12 K15 ["Layout"]
      141 DUPTABLE                         R13 K23 [{"AllowAir", "Type"}]
      142 LOADB                            R14 1
      143 SETTABLEKS                       R14 R13 K22 ["AllowAir"]
      145 LOADK                            R14 K24 ["Material"]
      146 SETTABLEKS                       R14 R13 K5 ["Type"]
      148 SETTABLEKS                       R13 R12 K2 ["Schema"]
      150 DUPTABLE                         R13 K29 [{"Hidden", "Id", "Layout", "Label", "Schema"}]
      151 GETUPVAL                         R15 7
      152 GETTABLEKS                       R15 R15 K25 ["Paint"]
      154 JUMPIFNOTEQ                      R2 R15 ; [+2]
      156 LOADB                            R14 0 +1
      157 LOADB                            R14 1
      158 SETTABLEKS                       R14 R13 K14 ["Hidden"]
      160 GETUPVAL                         R14 1
      161 GETTABLEKS                       R14 R14 K30 ["Apply"]
      163 SETTABLEKS                       R14 R13 K1 ["Id"]
      165 GETIMPORT                        R14 K21 [Enum.FillDirection.Vertical]
      167 SETTABLEKS                       R14 R13 K15 ["Layout"]
      169 GETUPVAL                         R16 1
      170 GETTABLEKS                       R16 R16 K8 ["MaterialMode"]
      172 GETTABLE                         R15 R1 R16
      173 JUMPIF                           R15 ; [+5]
      174 GETUPVAL                         R16 1
      175 GETTABLEKS                       R16 R16 K13 ["FillMode"]
      177 GETTABLE                         R15 R1 R16
      178 JUMPIFNOT                        R15 ; [+14]
      179 GETUPVAL                         R16 8
      180 GETUPVAL                         R18 1
      181 GETTABLEKS                       R18 R18 K8 ["MaterialMode"]
      183 GETTABLE                         R17 R1 R18
      184 JUMPIF                           R17 ; [+4]
      185 GETUPVAL                         R18 1
      186 GETTABLEKS                       R18 R18 K13 ["FillMode"]
      188 GETTABLE                         R17 R1 R18
      189 NAMECALL                         R14 R4 K31 ["getText"]
      191 CALL                             R14 3 1
      192 JUMP                             ; [+1]
      193 LOADNIL                          R14
      194 SETTABLEKS                       R14 R13 K28 ["Label"]
      196 DUPTABLE                         R14 K32 [{"Label", "Type"}]
      197 GETUPVAL                         R17 1
      198 GETTABLEKS                       R17 R17 K8 ["MaterialMode"]
      200 GETTABLE                         R16 R1 R17
      201 JUMPIF                           R16 ; [+5]
      202 GETUPVAL                         R17 1
      203 GETTABLEKS                       R17 R17 K13 ["FillMode"]
      205 GETTABLE                         R16 R1 R17
      206 JUMPIFNOT                        R16 ; [+14]
      207 GETUPVAL                         R17 8
      208 GETUPVAL                         R19 1
      209 GETTABLEKS                       R19 R19 K8 ["MaterialMode"]
      211 GETTABLE                         R18 R1 R19
      212 JUMPIF                           R18 ; [+4]
      213 GETUPVAL                         R19 1
      214 GETTABLEKS                       R19 R19 K13 ["FillMode"]
      216 GETTABLE                         R18 R1 R19
      217 NAMECALL                         R15 R4 K31 ["getText"]
      219 CALL                             R15 3 1
      220 JUMP                             ; [+1]
      221 LOADNIL                          R15
      222 SETTABLEKS                       R15 R14 K28 ["Label"]
      224 LOADK                            R15 K33 ["Button"]
      225 SETTABLEKS                       R15 R14 K5 ["Type"]
      227 SETTABLEKS                       R14 R13 K2 ["Schema"]
      229 SETLIST                          R7 R8 6 [1]
      231 DUPTABLE                         R8 K37 [{"Category", "Data", "Overrides"}]
      232 GETUPVAL                         R9 8
      233 SETTABLEKS                       R9 R8 K34 ["Category"]
      235 SETTABLEKS                       R1 R8 K35 ["Data"]
      237 SETTABLEKS                       R3 R8 K36 ["Overrides"]
      239 CALL                             R5 3 -1
      240 RETURN                           R5 -1

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
