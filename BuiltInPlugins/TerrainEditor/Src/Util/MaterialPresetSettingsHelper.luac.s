PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 1
        4 NEWTABLE                         R4 0 2
        6 DUPTABLE                         R5 K7 [{[1], ["Label"], ["Children"], ["Expandable"] = False, ["Separator"] = True}]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K8 ["ElevationSettings"]
       10 SETTABLEKS                       R6 R5 K0 ["Id"]
       12 LOADK                            R8 K9 ["Category"]
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R9 R9 K8 ["ElevationSettings"]
       16 NAMECALL                         R6 R1 K10 ["getText"]
       18 CALL                             R6 3 1
       19 SETTABLEKS                       R6 R5 K1 ["Label"]
       21 NEWTABLE                         R6 0 4
       23 DUPTABLE                         R7 K13 [{"Id", "Label", "Schema", "Value"}]
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K14 ["Unit"]
       27 SETTABLEKS                       R8 R7 K0 ["Id"]
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R10 R10 K8 ["ElevationSettings"]
       32 GETUPVAL                         R11 2
       33 GETTABLEKS                       R11 R11 K14 ["Unit"]
       35 NAMECALL                         R8 R1 K10 ["getText"]
       37 CALL                             R8 3 1
       38 SETTABLEKS                       R8 R7 K1 ["Label"]
       40 DUPTABLE                         R8 K18 [{["Items"], ["Type"] = "Select"}]
       41 GETUPVAL                         R9 3
       42 MOVE                             R10 R1
       43 LOADNIL                          R11
       44 GETUPVAL                         R12 4
       45 GETTABLEKS                       R12 R12 K19 ["MaterialUnit"]
       47 CALL                             R9 3 1
       48 SETTABLEKS                       R9 R8 K15 ["Items"]
       50 SETTABLEKS                       R8 R7 K11 ["Schema"]
       52 GETTABLEKS                       R8 R0 K14 ["Unit"]
       54 SETTABLEKS                       R8 R7 K12 ["Value"]
       56 DUPTABLE                         R8 K22 [{[1], ["Label"] = "", ["Layout"], ["Schema"], ["Value"]}]
       57 GETUPVAL                         R9 2
       58 GETTABLEKS                       R9 R9 K23 ["Elevation"]
       60 SETTABLEKS                       R9 R8 K0 ["Id"]
       62 GETIMPORT                        R9 K27 [Enum.FillDirection.Vertical]
       64 SETTABLEKS                       R9 R8 K21 ["Layout"]
       66 DUPTABLE                         R9 K28 [{"Type"}]
       67 GETUPVAL                         R10 2
       68 GETTABLEKS                       R10 R10 K23 ["Elevation"]
       70 SETTABLEKS                       R10 R9 K16 ["Type"]
       72 SETTABLEKS                       R9 R8 K11 ["Schema"]
       74 SETTABLEKS                       R0 R8 K12 ["Value"]
       76 GETTABLEKS                       R10 R0 K29 ["MaterialIndex"]
       78 JUMPIFNOT                        R10 ; [+39]
       79 GETTABLEKS                       R10 R0 K29 ["MaterialIndex"]
       81 GETTABLEKS                       R12 R0 K30 ["MaterialList"]
       83 LENGTH                           R11 R12
       84 JUMPIFNOTLE                      R10 R11 ; [+33]
       86 DUPTABLE                         R9 K32 [{"Id", "Label", "MinWidth", "Schema", "Value"}]
       87 GETUPVAL                         R10 2
       88 GETTABLEKS                       R10 R10 K33 ["Material"]
       90 SETTABLEKS                       R10 R9 K0 ["Id"]
       92 GETUPVAL                         R12 1
       93 GETTABLEKS                       R12 R12 K8 ["ElevationSettings"]
       95 GETUPVAL                         R13 2
       96 GETTABLEKS                       R13 R13 K33 ["Material"]
       98 NAMECALL                         R10 R1 K10 ["getText"]
      100 CALL                             R10 3 1
      101 SETTABLEKS                       R10 R9 K1 ["Label"]
      103 SETTABLEKS                       R3 R9 K31 ["MinWidth"]
      105 DUPTABLE                         R10 K36 [{["AllowWater"] = False, ["Dropdown"] = True, ["Type"] = "Material"}]
      106 SETTABLEKS                       R10 R9 K11 ["Schema"]
      108 GETTABLEKS                       R11 R0 K30 ["MaterialList"]
      110 GETTABLEKS                       R12 R0 K29 ["MaterialIndex"]
      112 GETTABLE                         R10 R11 R12
      113 GETTABLEKS                       R10 R10 K33 ["Material"]
      115 SETTABLEKS                       R10 R9 K12 ["Value"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R9
      119 GETTABLEKS                       R11 R0 K29 ["MaterialIndex"]
      121 JUMPIFNOT                        R11 ; [+58]
      122 GETTABLEKS                       R11 R0 K29 ["MaterialIndex"]
      124 GETTABLEKS                       R13 R0 K30 ["MaterialList"]
      126 LENGTH                           R12 R13
      127 JUMPIFNOTLE                      R11 R12 ; [+52]
      129 DUPTABLE                         R10 K38 [{"Id", "Label", "Schema", "Value", "Tooltip"}]
      130 GETUPVAL                         R11 2
      131 GETTABLEKS                       R11 R11 K39 ["Slope"]
      133 SETTABLEKS                       R11 R10 K0 ["Id"]
      135 GETUPVAL                         R13 1
      136 GETTABLEKS                       R13 R13 K8 ["ElevationSettings"]
      138 GETUPVAL                         R14 2
      139 GETTABLEKS                       R14 R14 K39 ["Slope"]
      141 NAMECALL                         R11 R1 K10 ["getText"]
      143 CALL                             R11 3 1
      144 SETTABLEKS                       R11 R10 K1 ["Label"]
      146 DUPTABLE                         R11 K40 [{["Type"] = "Slope"}]
      147 SETTABLEKS                       R11 R10 K11 ["Schema"]
      149 DUPTABLE                         R11 K43 [{"Min", "Max"}]
      150 GETTABLEKS                       R13 R0 K30 ["MaterialList"]
      152 GETTABLEKS                       R14 R0 K29 ["MaterialIndex"]
      154 GETTABLE                         R12 R13 R14
      155 GETTABLEKS                       R12 R12 K44 ["MinSlope"]
      157 SETTABLEKS                       R12 R11 K41 ["Min"]
      159 GETTABLEKS                       R13 R0 K30 ["MaterialList"]
      161 GETTABLEKS                       R14 R0 K29 ["MaterialIndex"]
      163 GETTABLE                         R12 R13 R14
      164 GETTABLEKS                       R12 R12 K45 ["MaxSlope"]
      166 SETTABLEKS                       R12 R11 K42 ["Max"]
      168 SETTABLEKS                       R11 R10 K12 ["Value"]
      170 LOADK                            R13 K37 ["Tooltip"]
      171 GETUPVAL                         R14 2
      172 GETTABLEKS                       R14 R14 K39 ["Slope"]
      174 NAMECALL                         R11 R1 K10 ["getText"]
      176 CALL                             R11 3 1
      177 SETTABLEKS                       R11 R10 K37 ["Tooltip"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R10
      181 SETLIST                          R6 R7 4 [1]
      183 SETTABLEKS                       R6 R5 K2 ["Children"]
      185 DUPTABLE                         R6 K7 [{[1], ["Label"], ["Children"], ["Expandable"] = False, ["Separator"] = True}]
      186 GETUPVAL                         R7 1
      187 GETTABLEKS                       R7 R7 K46 ["AdditionalSettings"]
      189 SETTABLEKS                       R7 R6 K0 ["Id"]
      191 LOADK                            R9 K9 ["Category"]
      192 GETUPVAL                         R10 1
      193 GETTABLEKS                       R10 R10 K46 ["AdditionalSettings"]
      195 NAMECALL                         R7 R1 K10 ["getText"]
      197 CALL                             R7 3 1
      198 SETTABLEKS                       R7 R6 K1 ["Label"]
      200 NEWTABLE                         R7 0 2
      202 GETTABLEKS                       R9 R0 K47 ["FillMaterial"]
      204 JUMPIFNOT                        R9 ; [+36]
      205 DUPTABLE                         R8 K48 [{"Id", "Label", "MinWidth", "Schema", "Value", "Tooltip"}]
      206 GETUPVAL                         R9 5
      207 GETTABLEKS                       R9 R9 K47 ["FillMaterial"]
      209 SETTABLEKS                       R9 R8 K0 ["Id"]
      211 GETUPVAL                         R11 1
      212 GETTABLEKS                       R11 R11 K46 ["AdditionalSettings"]
      214 GETUPVAL                         R12 5
      215 GETTABLEKS                       R12 R12 K47 ["FillMaterial"]
      217 NAMECALL                         R9 R1 K10 ["getText"]
      219 CALL                             R9 3 1
      220 SETTABLEKS                       R9 R8 K1 ["Label"]
      222 SETTABLEKS                       R3 R8 K31 ["MinWidth"]
      224 DUPTABLE                         R9 K49 [{["Dropdown"] = True, ["Type"] = "Material"}]
      225 SETTABLEKS                       R9 R8 K11 ["Schema"]
      227 GETTABLEKS                       R9 R0 K47 ["FillMaterial"]
      229 SETTABLEKS                       R9 R8 K12 ["Value"]
      231 LOADK                            R11 K37 ["Tooltip"]
      232 GETUPVAL                         R12 5
      233 GETTABLEKS                       R12 R12 K47 ["FillMaterial"]
      235 NAMECALL                         R9 R1 K10 ["getText"]
      237 CALL                             R9 3 1
      238 SETTABLEKS                       R9 R8 K37 ["Tooltip"]
      240 JUMP                             ; [+1]
      241 LOADNIL                          R8
      242 DUPTABLE                         R9 K48 [{"Id", "Label", "MinWidth", "Schema", "Value", "Tooltip"}]
      243 GETUPVAL                         R10 5
      244 GETTABLEKS                       R10 R10 K50 ["FallbackMaterial"]
      246 SETTABLEKS                       R10 R9 K0 ["Id"]
      248 GETUPVAL                         R12 1
      249 GETTABLEKS                       R12 R12 K46 ["AdditionalSettings"]
      251 GETUPVAL                         R13 5
      252 GETTABLEKS                       R13 R13 K50 ["FallbackMaterial"]
      254 NAMECALL                         R10 R1 K10 ["getText"]
      256 CALL                             R10 3 1
      257 SETTABLEKS                       R10 R9 K1 ["Label"]
      259 SETTABLEKS                       R3 R9 K31 ["MinWidth"]
      261 DUPTABLE                         R10 K36 [{["AllowWater"] = False, ["Dropdown"] = True, ["Type"] = "Material"}]
      262 SETTABLEKS                       R10 R9 K11 ["Schema"]
      264 GETTABLEKS                       R10 R0 K50 ["FallbackMaterial"]
      266 SETTABLEKS                       R10 R9 K12 ["Value"]
      268 LOADK                            R12 K37 ["Tooltip"]
      269 GETUPVAL                         R13 5
      270 GETTABLEKS                       R13 R13 K50 ["FallbackMaterial"]
      272 NAMECALL                         R10 R1 K10 ["getText"]
      274 CALL                             R10 3 1
      275 SETTABLEKS                       R10 R9 K37 ["Tooltip"]
      277 SETLIST                          R7 R8 2 [1]
      279 SETTABLEKS                       R7 R6 K2 ["Children"]
      281 SETLIST                          R4 R5 2 [1]
      283 RETURN                           R4 1

PROTO_1:
        0 GETTABLEN                        R4 R0 1
        1 JUMPIFNOT                        R4 ; [+9]
        2 GETTABLEN                        R4 R0 1
        3 GETTABLEKS                       R4 R4 K0 ["Children"]
        5 JUMPIFNOT                        R4 ; [+5]
        6 GETTABLEN                        R4 R0 2
        7 JUMPIFNOT                        R4 ; [+3]
        8 GETTABLEN                        R4 R0 2
        9 GETTABLEKS                       R4 R4 K0 ["Children"]
       11 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       13 LOADK                            R5 K1 ["Cannot update from nothing."]
       14 GETIMPORT                        R3 K3 [assert]
       16 CALL                             R3 2 0
       17 NEWTABLE                         R3 0 0
       19 GETTABLEN                        R4 R0 1
       20 GETTABLEKS                       R4 R4 K0 ["Children"]
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 GETTABLEKS                       R9 R8 K4 ["Id"]
       27 GETTABLEKS                       R10 R8 K5 ["Value"]
       29 SETTABLE                         R10 R3 R9
       30 FORGLOOP                         R4 2 ; [-6]
       32 GETTABLEN                        R4 R0 2
       33 GETTABLEKS                       R4 R4 K0 ["Children"]
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 FORGPREP                         R4
       38 GETTABLEKS                       R9 R8 K4 ["Id"]
       40 GETTABLEKS                       R10 R8 K5 ["Value"]
       42 SETTABLE                         R10 R3 R9
       43 FORGLOOP                         R4 2 ; [-6]
       45 GETUPVAL                         R4 0
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K6 ["Elevation"]
       49 GETTABLE                         R5 R3 R6
       50 CALL                             R4 1 1
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K7 ["Unit"]
       54 GETTABLE                         R5 R3 R6
       55 GETTABLEKS                       R6 R4 K7 ["Unit"]
       57 JUMPIFEQ                         R6 R5 ; [+71]
       59 GETUPVAL                         R6 2
       60 GETTABLEKS                       R6 R6 K8 ["Stud"]
       62 JUMPIFNOTEQ                      R5 R6 ; [+24]
       64 GETTABLEKS                       R6 R4 K9 ["MaterialList"]
       66 LOADNIL                          R7
       67 LOADNIL                          R8
       68 FORGPREP                         R6
       69 GETTABLEKS                       R12 R10 K10 ["MinHeight"]
       71 MUL                              R11 R2 R12
       72 SETTABLEKS                       R11 R10 K10 ["MinHeight"]
       74 GETTABLEKS                       R12 R10 K11 ["MaxHeight"]
       76 MUL                              R11 R2 R12
       77 SETTABLEKS                       R11 R10 K11 ["MaxHeight"]
       79 FORGLOOP                         R6 2 ; [-11]
       81 LOADN                            R6 0
       82 SETTABLEKS                       R6 R4 K12 ["Min"]
       84 SETTABLEKS                       R2 R4 K13 ["Max"]
       86 JUMP                             ; [+42]
       87 GETUPVAL                         R6 2
       88 GETTABLEKS                       R6 R6 K14 ["Percentage"]
       90 JUMPIFNOTEQ                      R5 R6 ; [+38]
       92 GETTABLEKS                       R6 R4 K9 ["MaterialList"]
       94 LOADNIL                          R7
       95 LOADNIL                          R8
       96 FORGPREP                         R6
       97 GETTABLEKS                       R13 R10 K10 ["MinHeight"]
       99 LOADN                            R14 0
      100 FASTCALL3                        MATH_CLAMP R13 R14 R2
      102 MOVE                             R15 R2
      103 GETIMPORT                        R12 K17 [math.clamp]
      105 CALL                             R12 3 1
      106 DIV                              R11 R12 R2
      107 SETTABLEKS                       R11 R10 K10 ["MinHeight"]
      109 GETTABLEKS                       R13 R10 K11 ["MaxHeight"]
      111 LOADN                            R14 0
      112 FASTCALL3                        MATH_CLAMP R13 R14 R2
      114 MOVE                             R15 R2
      115 GETIMPORT                        R12 K17 [math.clamp]
      117 CALL                             R12 3 1
      118 DIV                              R11 R12 R2
      119 SETTABLEKS                       R11 R10 K11 ["MaxHeight"]
      121 FORGLOOP                         R6 2 ; [-25]
      123 LOADN                            R6 0
      124 SETTABLEKS                       R6 R4 K12 ["Min"]
      126 LOADN                            R6 1
      127 SETTABLEKS                       R6 R4 K13 ["Max"]
      129 GETTABLEKS                       R6 R1 K18 ["MaterialIndex"]
      131 GETTABLEKS                       R8 R4 K9 ["MaterialList"]
      133 LENGTH                           R7 R8
      134 JUMPIFNOTLE                      R6 R7 ; [+58]
      136 GETTABLEKS                       R7 R1 K9 ["MaterialList"]
      138 LENGTH                           R6 R7
      139 GETTABLEKS                       R8 R4 K9 ["MaterialList"]
      141 LENGTH                           R7 R8
      142 JUMPIFNOTEQ                      R6 R7 ; [+50]
      144 SETTABLEKS                       R5 R4 K7 ["Unit"]
      146 GETUPVAL                         R7 3
      147 GETTABLEKS                       R7 R7 K19 ["FallbackMaterial"]
      149 GETTABLE                         R6 R3 R7
      150 SETTABLEKS                       R6 R4 K19 ["FallbackMaterial"]
      152 GETUPVAL                         R7 3
      153 GETTABLEKS                       R7 R7 K20 ["FillMaterial"]
      155 GETTABLE                         R6 R3 R7
      156 SETTABLEKS                       R6 R4 K20 ["FillMaterial"]
      158 GETUPVAL                         R7 1
      159 GETTABLEKS                       R7 R7 K21 ["Material"]
      161 GETTABLE                         R6 R3 R7
      162 JUMPIFNOT                        R6 ; [+7]
      163 GETTABLEKS                       R8 R4 K9 ["MaterialList"]
      165 GETTABLEKS                       R9 R1 K18 ["MaterialIndex"]
      167 GETTABLE                         R7 R8 R9
      168 SETTABLEKS                       R6 R7 K21 ["Material"]
      170 GETUPVAL                         R8 1
      171 GETTABLEKS                       R8 R8 K22 ["Slope"]
      173 GETTABLE                         R7 R3 R8
      174 JUMPIFNOT                        R7 ; [+18]
      175 GETTABLEKS                       R9 R4 K9 ["MaterialList"]
      177 GETTABLEKS                       R10 R1 K18 ["MaterialIndex"]
      179 GETTABLE                         R8 R9 R10
      180 GETTABLEKS                       R9 R7 K12 ["Min"]
      182 SETTABLEKS                       R9 R8 K23 ["MinSlope"]
      184 GETTABLEKS                       R9 R4 K9 ["MaterialList"]
      186 GETTABLEKS                       R10 R1 K18 ["MaterialIndex"]
      188 GETTABLE                         R8 R9 R10
      189 GETTABLEKS                       R9 R7 K13 ["Max"]
      191 SETTABLEKS                       R9 R8 K24 ["MaxSlope"]
      193 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["deepCopy"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K8 ["Util"]
       24 GETTABLEKS                       R4 R4 K11 ["getItems"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Src"]
       31 GETTABLEKS                       R5 R5 K8 ["Util"]
       33 GETTABLEKS                       R5 R5 K12 ["getMaterialsMinWidth"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R0 K10 ["Src"]
       40 GETTABLEKS                       R6 R6 K13 ["Types"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R5 K14 ["AdditionalSettings"]
       45 GETTABLEKS                       R7 R5 K15 ["Category"]
       47 GETTABLEKS                       R8 R5 K16 ["EnumType"]
       49 GETTABLEKS                       R9 R5 K17 ["ElevationSettings"]
       51 GETTABLEKS                       R10 R5 K18 ["MaterialUnit"]
       53 NEWTABLE                         R11 2 0
       55 DUPCLOSURE                       R12 K19 [PROTO_0]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R6
       62 SETTABLEKS                       R12 R11 K20 ["Get"]
       64 DUPCLOSURE                       R12 K21 [PROTO_1]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R6
       69 SETTABLEKS                       R12 R11 K22 ["Set"]
       71 RETURN                           R11 1
