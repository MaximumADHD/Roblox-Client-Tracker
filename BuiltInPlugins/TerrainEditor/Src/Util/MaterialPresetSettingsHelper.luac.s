PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 1
        4 NEWTABLE                         R4 0 2
        6 DUPTABLE                         R5 K5 [{"Id", "Label", "Children", "Expandable", "Separator"}]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K6 ["ElevationSettings"]
       10 SETTABLEKS                       R6 R5 K0 ["Id"]
       12 LOADK                            R8 K7 ["Category"]
       13 GETUPVAL                         R10 1
       14 GETTABLEKS                       R9 R10 K6 ["ElevationSettings"]
       16 NAMECALL                         R6 R1 K8 ["getText"]
       18 CALL                             R6 3 1
       19 SETTABLEKS                       R6 R5 K1 ["Label"]
       21 NEWTABLE                         R6 0 4
       23 DUPTABLE                         R7 K11 [{"Id", "Label", "Schema", "Value"}]
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R8 R9 K12 ["Unit"]
       27 SETTABLEKS                       R8 R7 K0 ["Id"]
       29 GETUPVAL                         R11 1
       30 GETTABLEKS                       R10 R11 K6 ["ElevationSettings"]
       32 GETUPVAL                         R12 2
       33 GETTABLEKS                       R11 R12 K12 ["Unit"]
       35 NAMECALL                         R8 R1 K8 ["getText"]
       37 CALL                             R8 3 1
       38 SETTABLEKS                       R8 R7 K1 ["Label"]
       40 DUPTABLE                         R8 K15 [{"Items", "Type"}]
       41 GETUPVAL                         R9 3
       42 MOVE                             R10 R1
       43 LOADNIL                          R11
       44 GETUPVAL                         R13 4
       45 GETTABLEKS                       R12 R13 K16 ["MaterialUnit"]
       47 CALL                             R9 3 1
       48 SETTABLEKS                       R9 R8 K13 ["Items"]
       50 LOADK                            R9 K17 ["Select"]
       51 SETTABLEKS                       R9 R8 K14 ["Type"]
       53 SETTABLEKS                       R8 R7 K9 ["Schema"]
       55 GETTABLEKS                       R8 R0 K12 ["Unit"]
       57 SETTABLEKS                       R8 R7 K10 ["Value"]
       59 DUPTABLE                         R8 K19 [{"Id", "Label", "Layout", "Schema", "Value"}]
       60 GETUPVAL                         R10 2
       61 GETTABLEKS                       R9 R10 K20 ["Elevation"]
       63 SETTABLEKS                       R9 R8 K0 ["Id"]
       65 LOADK                            R9 K21 [""]
       66 SETTABLEKS                       R9 R8 K1 ["Label"]
       68 GETIMPORT                        R9 K25 [Enum.FillDirection.Vertical]
       70 SETTABLEKS                       R9 R8 K18 ["Layout"]
       72 DUPTABLE                         R9 K26 [{"Type"}]
       73 GETUPVAL                         R11 2
       74 GETTABLEKS                       R10 R11 K20 ["Elevation"]
       76 SETTABLEKS                       R10 R9 K14 ["Type"]
       78 SETTABLEKS                       R9 R8 K9 ["Schema"]
       80 SETTABLEKS                       R0 R8 K10 ["Value"]
       82 GETTABLEKS                       R10 R0 K27 ["MaterialIndex"]
       84 JUMPIFNOT                        R10 ; [+48]
       85 GETTABLEKS                       R10 R0 K27 ["MaterialIndex"]
       87 GETTABLEKS                       R12 R0 K28 ["MaterialList"]
       89 LENGTH                           R11 R12
       90 JUMPIFNOTLE                      R10 R11 ; [+42]
       92 DUPTABLE                         R9 K30 [{"Id", "Label", "MinWidth", "Schema", "Value"}]
       93 GETUPVAL                         R11 2
       94 GETTABLEKS                       R10 R11 K31 ["Material"]
       96 SETTABLEKS                       R10 R9 K0 ["Id"]
       98 GETUPVAL                         R13 1
       99 GETTABLEKS                       R12 R13 K6 ["ElevationSettings"]
      101 GETUPVAL                         R14 2
      102 GETTABLEKS                       R13 R14 K31 ["Material"]
      104 NAMECALL                         R10 R1 K8 ["getText"]
      106 CALL                             R10 3 1
      107 SETTABLEKS                       R10 R9 K1 ["Label"]
      109 SETTABLEKS                       R3 R9 K29 ["MinWidth"]
      111 DUPTABLE                         R10 K34 [{"AllowWater", "Dropdown", "Type"}]
      112 LOADB                            R11 0
      113 SETTABLEKS                       R11 R10 K32 ["AllowWater"]
      115 LOADB                            R11 1
      116 SETTABLEKS                       R11 R10 K33 ["Dropdown"]
      118 LOADK                            R11 K31 ["Material"]
      119 SETTABLEKS                       R11 R10 K14 ["Type"]
      121 SETTABLEKS                       R10 R9 K9 ["Schema"]
      123 GETTABLEKS                       R12 R0 K28 ["MaterialList"]
      125 GETTABLEKS                       R13 R0 K27 ["MaterialIndex"]
      127 GETTABLE                         R11 R12 R13
      128 GETTABLEKS                       R10 R11 K31 ["Material"]
      130 SETTABLEKS                       R10 R9 K10 ["Value"]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R9
      134 GETTABLEKS                       R11 R0 K27 ["MaterialIndex"]
      136 JUMPIFNOT                        R11 ; [+61]
      137 GETTABLEKS                       R11 R0 K27 ["MaterialIndex"]
      139 GETTABLEKS                       R13 R0 K28 ["MaterialList"]
      141 LENGTH                           R12 R13
      142 JUMPIFNOTLE                      R11 R12 ; [+55]
      144 DUPTABLE                         R10 K36 [{"Id", "Label", "Schema", "Value", "Tooltip"}]
      145 GETUPVAL                         R12 2
      146 GETTABLEKS                       R11 R12 K37 ["Slope"]
      148 SETTABLEKS                       R11 R10 K0 ["Id"]
      150 GETUPVAL                         R14 1
      151 GETTABLEKS                       R13 R14 K6 ["ElevationSettings"]
      153 GETUPVAL                         R15 2
      154 GETTABLEKS                       R14 R15 K37 ["Slope"]
      156 NAMECALL                         R11 R1 K8 ["getText"]
      158 CALL                             R11 3 1
      159 SETTABLEKS                       R11 R10 K1 ["Label"]
      161 DUPTABLE                         R11 K26 [{"Type"}]
      162 LOADK                            R12 K37 ["Slope"]
      163 SETTABLEKS                       R12 R11 K14 ["Type"]
      165 SETTABLEKS                       R11 R10 K9 ["Schema"]
      167 DUPTABLE                         R11 K40 [{"Min", "Max"}]
      168 GETTABLEKS                       R14 R0 K28 ["MaterialList"]
      170 GETTABLEKS                       R15 R0 K27 ["MaterialIndex"]
      172 GETTABLE                         R13 R14 R15
      173 GETTABLEKS                       R12 R13 K41 ["MinSlope"]
      175 SETTABLEKS                       R12 R11 K38 ["Min"]
      177 GETTABLEKS                       R14 R0 K28 ["MaterialList"]
      179 GETTABLEKS                       R15 R0 K27 ["MaterialIndex"]
      181 GETTABLE                         R13 R14 R15
      182 GETTABLEKS                       R12 R13 K42 ["MaxSlope"]
      184 SETTABLEKS                       R12 R11 K39 ["Max"]
      186 SETTABLEKS                       R11 R10 K10 ["Value"]
      188 LOADK                            R13 K35 ["Tooltip"]
      189 GETUPVAL                         R15 2
      190 GETTABLEKS                       R14 R15 K37 ["Slope"]
      192 NAMECALL                         R11 R1 K8 ["getText"]
      194 CALL                             R11 3 1
      195 SETTABLEKS                       R11 R10 K35 ["Tooltip"]
      197 JUMP                             ; [+1]
      198 LOADNIL                          R10
      199 SETLIST                          R6 R7 4 [1]
      201 SETTABLEKS                       R6 R5 K2 ["Children"]
      203 LOADB                            R6 0
      204 SETTABLEKS                       R6 R5 K3 ["Expandable"]
      206 LOADB                            R6 1
      207 SETTABLEKS                       R6 R5 K4 ["Separator"]
      209 DUPTABLE                         R6 K5 [{"Id", "Label", "Children", "Expandable", "Separator"}]
      210 GETUPVAL                         R8 1
      211 GETTABLEKS                       R7 R8 K43 ["AdditionalSettings"]
      213 SETTABLEKS                       R7 R6 K0 ["Id"]
      215 LOADK                            R9 K7 ["Category"]
      216 GETUPVAL                         R11 1
      217 GETTABLEKS                       R10 R11 K43 ["AdditionalSettings"]
      219 NAMECALL                         R7 R1 K8 ["getText"]
      221 CALL                             R7 3 1
      222 SETTABLEKS                       R7 R6 K1 ["Label"]
      224 NEWTABLE                         R7 0 2
      226 GETTABLEKS                       R9 R0 K44 ["FillMaterial"]
      228 JUMPIFNOT                        R9 ; [+42]
      229 DUPTABLE                         R8 K45 [{"Id", "Label", "MinWidth", "Schema", "Value", "Tooltip"}]
      230 GETUPVAL                         R10 5
      231 GETTABLEKS                       R9 R10 K44 ["FillMaterial"]
      233 SETTABLEKS                       R9 R8 K0 ["Id"]
      235 GETUPVAL                         R12 1
      236 GETTABLEKS                       R11 R12 K43 ["AdditionalSettings"]
      238 GETUPVAL                         R13 5
      239 GETTABLEKS                       R12 R13 K44 ["FillMaterial"]
      241 NAMECALL                         R9 R1 K8 ["getText"]
      243 CALL                             R9 3 1
      244 SETTABLEKS                       R9 R8 K1 ["Label"]
      246 SETTABLEKS                       R3 R8 K29 ["MinWidth"]
      248 DUPTABLE                         R9 K46 [{"Dropdown", "Type"}]
      249 LOADB                            R10 1
      250 SETTABLEKS                       R10 R9 K33 ["Dropdown"]
      252 LOADK                            R10 K31 ["Material"]
      253 SETTABLEKS                       R10 R9 K14 ["Type"]
      255 SETTABLEKS                       R9 R8 K9 ["Schema"]
      257 GETTABLEKS                       R9 R0 K44 ["FillMaterial"]
      259 SETTABLEKS                       R9 R8 K10 ["Value"]
      261 LOADK                            R11 K35 ["Tooltip"]
      262 GETUPVAL                         R13 5
      263 GETTABLEKS                       R12 R13 K44 ["FillMaterial"]
      265 NAMECALL                         R9 R1 K8 ["getText"]
      267 CALL                             R9 3 1
      268 SETTABLEKS                       R9 R8 K35 ["Tooltip"]
      270 JUMP                             ; [+1]
      271 LOADNIL                          R8
      272 DUPTABLE                         R9 K45 [{"Id", "Label", "MinWidth", "Schema", "Value", "Tooltip"}]
      273 GETUPVAL                         R11 5
      274 GETTABLEKS                       R10 R11 K47 ["FallbackMaterial"]
      276 SETTABLEKS                       R10 R9 K0 ["Id"]
      278 GETUPVAL                         R13 1
      279 GETTABLEKS                       R12 R13 K43 ["AdditionalSettings"]
      281 GETUPVAL                         R14 5
      282 GETTABLEKS                       R13 R14 K47 ["FallbackMaterial"]
      284 NAMECALL                         R10 R1 K8 ["getText"]
      286 CALL                             R10 3 1
      287 SETTABLEKS                       R10 R9 K1 ["Label"]
      289 SETTABLEKS                       R3 R9 K29 ["MinWidth"]
      291 DUPTABLE                         R10 K34 [{"AllowWater", "Dropdown", "Type"}]
      292 LOADB                            R11 0
      293 SETTABLEKS                       R11 R10 K32 ["AllowWater"]
      295 LOADB                            R11 1
      296 SETTABLEKS                       R11 R10 K33 ["Dropdown"]
      298 LOADK                            R11 K31 ["Material"]
      299 SETTABLEKS                       R11 R10 K14 ["Type"]
      301 SETTABLEKS                       R10 R9 K9 ["Schema"]
      303 GETTABLEKS                       R10 R0 K47 ["FallbackMaterial"]
      305 SETTABLEKS                       R10 R9 K10 ["Value"]
      307 LOADK                            R12 K35 ["Tooltip"]
      308 GETUPVAL                         R14 5
      309 GETTABLEKS                       R13 R14 K47 ["FallbackMaterial"]
      311 NAMECALL                         R10 R1 K8 ["getText"]
      313 CALL                             R10 3 1
      314 SETTABLEKS                       R10 R9 K35 ["Tooltip"]
      316 SETLIST                          R7 R8 2 [1]
      318 SETTABLEKS                       R7 R6 K2 ["Children"]
      320 LOADB                            R7 0
      321 SETTABLEKS                       R7 R6 K3 ["Expandable"]
      323 LOADB                            R7 1
      324 SETTABLEKS                       R7 R6 K4 ["Separator"]
      326 SETLIST                          R4 R5 2 [1]
      328 RETURN                           R4 1

PROTO_1:
        0 GETTABLEN                        R4 R0 1
        1 JUMPIFNOT                        R4 ; [+9]
        2 GETTABLEN                        R5 R0 1
        3 GETTABLEKS                       R4 R5 K0 ["Children"]
        5 JUMPIFNOT                        R4 ; [+5]
        6 GETTABLEN                        R4 R0 2
        7 JUMPIFNOT                        R4 ; [+3]
        8 GETTABLEN                        R5 R0 2
        9 GETTABLEKS                       R4 R5 K0 ["Children"]
       11 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       13 LOADK                            R5 K1 ["Cannot update from nothing."]
       14 GETIMPORT                        R3 K3 [assert]
       16 CALL                             R3 2 0
       17 NEWTABLE                         R3 0 0
       19 GETTABLEN                        R7 R0 1
       20 GETTABLEKS                       R4 R7 K0 ["Children"]
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 GETTABLEKS                       R9 R8 K4 ["Id"]
       27 GETTABLEKS                       R10 R8 K5 ["Value"]
       29 SETTABLE                         R10 R3 R9
       30 FORGLOOP                         R4 2 ; [-6]
       32 GETTABLEN                        R7 R0 2
       33 GETTABLEKS                       R4 R7 K0 ["Children"]
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 FORGPREP                         R4
       38 GETTABLEKS                       R9 R8 K4 ["Id"]
       40 GETTABLEKS                       R10 R8 K5 ["Value"]
       42 SETTABLE                         R10 R3 R9
       43 FORGLOOP                         R4 2 ; [-6]
       45 GETUPVAL                         R4 0
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R6 R7 K6 ["Elevation"]
       49 GETTABLE                         R5 R3 R6
       50 CALL                             R4 1 1
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R6 R7 K7 ["Unit"]
       54 GETTABLE                         R5 R3 R6
       55 GETTABLEKS                       R6 R4 K7 ["Unit"]
       57 JUMPIFEQ                         R6 R5 ; [+71]
       59 GETUPVAL                         R7 2
       60 GETTABLEKS                       R6 R7 K8 ["Stud"]
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
       87 GETUPVAL                         R7 2
       88 GETTABLEKS                       R6 R7 K14 ["Percentage"]
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
      146 GETUPVAL                         R8 3
      147 GETTABLEKS                       R7 R8 K19 ["FallbackMaterial"]
      149 GETTABLE                         R6 R3 R7
      150 SETTABLEKS                       R6 R4 K19 ["FallbackMaterial"]
      152 GETUPVAL                         R8 3
      153 GETTABLEKS                       R7 R8 K20 ["FillMaterial"]
      155 GETTABLE                         R6 R3 R7
      156 SETTABLEKS                       R6 R4 K20 ["FillMaterial"]
      158 GETUPVAL                         R8 1
      159 GETTABLEKS                       R7 R8 K21 ["Material"]
      161 GETTABLE                         R6 R3 R7
      162 JUMPIFNOT                        R6 ; [+7]
      163 GETTABLEKS                       R8 R4 K9 ["MaterialList"]
      165 GETTABLEKS                       R9 R1 K18 ["MaterialIndex"]
      167 GETTABLE                         R7 R8 R9
      168 SETTABLEKS                       R6 R7 K21 ["Material"]
      170 GETUPVAL                         R9 1
      171 GETTABLEKS                       R8 R9 K22 ["Slope"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["deepCopy"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R6 K8 ["Util"]
       24 GETTABLEKS                       R4 R5 K11 ["getItems"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R7 K8 ["Util"]
       33 GETTABLEKS                       R5 R6 K12 ["getMaterialsMinWidth"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Src"]
       40 GETTABLEKS                       R6 R7 K13 ["Types"]
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
