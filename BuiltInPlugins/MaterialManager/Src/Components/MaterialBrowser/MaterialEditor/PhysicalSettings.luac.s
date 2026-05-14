PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["physicalProperties"]
        3 GETUPVAL                         R2 1
        4 SETTABLE                         R0 R1 R2
        5 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["MaterialVariant"]
        5 GETIMPORT                        R2 K4 [PhysicalProperties.new]
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K6 ["physicalProperties"]
       11 GETTABLEKS                       R5 R5 K7 ["Density"]
       13 CALL                             R4 1 1
       14 ORK                              R3 R4 K5 [0]
       15 GETUPVAL                         R5 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K6 ["physicalProperties"]
       19 GETTABLEKS                       R6 R6 K8 ["Friction"]
       21 CALL                             R5 1 1
       22 ORK                              R4 R5 K5 [0]
       23 GETUPVAL                         R6 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K6 ["physicalProperties"]
       27 GETTABLEKS                       R7 R7 K9 ["Elasticity"]
       29 CALL                             R6 1 1
       30 ORK                              R5 R6 K5 [0]
       31 GETUPVAL                         R7 1
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K6 ["physicalProperties"]
       35 GETTABLEKS                       R8 R8 K10 ["FrictionWeight"]
       37 CALL                             R7 1 1
       38 ORK                              R6 R7 K5 [0]
       39 GETUPVAL                         R8 1
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K6 ["physicalProperties"]
       43 GETTABLEKS                       R9 R9 K11 ["ElasticityWeight"]
       45 CALL                             R8 1 1
       46 ORK                              R7 R8 K5 [0]
       47 CALL                             R2 5 1
       48 SETTABLEKS                       R2 R1 K12 ["CustomPhysicalProperties"]
       50 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R0 K1 ["MaterialVariant"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["dispatchSetExpandedPane"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["PhysicalSettings"]
        8 GETTABLEKS                       R4 R0 K3 ["ExpandedPane"]
       10 NOT                              R3 R4
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["setPhysicalProperty"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["onFocusLost"]
        9 NEWCLOSURE                       R1 P2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R1 R0 K2 ["reset"]
       14 NEWCLOSURE                       R1 P3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R1 R0 K3 ["onExpandedChanged"]
       19 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["PhysicalSettings"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["new"]
       11 CALL                             R4 0 1
       12 GETTABLEKS                       R5 R1 K5 ["MaterialVariant"]
       14 GETTABLEKS                       R5 R5 K6 ["CustomPhysicalProperties"]
       16 JUMPIF                           R5 ; [+7]
       17 GETIMPORT                        R5 K8 [PhysicalProperties.new]
       19 GETTABLEKS                       R6 R1 K5 ["MaterialVariant"]
       21 GETTABLEKS                       R6 R6 K9 ["BaseMaterial"]
       23 CALL                             R5 1 1
       24 JUMPIFNOT                        R5 ; [+68]
       25 DUPTABLE                         R6 K15 [{"Density", "Elasticity", "ElasticityWeight", "Friction", "FrictionWeight"}]
       26 GETIMPORT                        R7 K18 [string.format]
       28 LOADK                            R8 K19 ["%.3f"]
       29 GETTABLEKS                       R9 R5 K10 ["Density"]
       31 CALL                             R7 2 1
       32 LOADK                            R9 K20 ["%.?0+$"]
       33 LOADK                            R10 K21 [""]
       34 NAMECALL                         R7 R7 K22 ["gsub"]
       36 CALL                             R7 3 1
       37 SETTABLEKS                       R7 R6 K10 ["Density"]
       39 GETIMPORT                        R7 K18 [string.format]
       41 LOADK                            R8 K19 ["%.3f"]
       42 GETTABLEKS                       R9 R5 K11 ["Elasticity"]
       44 CALL                             R7 2 1
       45 LOADK                            R9 K20 ["%.?0+$"]
       46 LOADK                            R10 K21 [""]
       47 NAMECALL                         R7 R7 K22 ["gsub"]
       49 CALL                             R7 3 1
       50 SETTABLEKS                       R7 R6 K11 ["Elasticity"]
       52 GETIMPORT                        R7 K18 [string.format]
       54 LOADK                            R8 K19 ["%.3f"]
       55 GETTABLEKS                       R9 R5 K12 ["ElasticityWeight"]
       57 CALL                             R7 2 1
       58 LOADK                            R9 K20 ["%.?0+$"]
       59 LOADK                            R10 K21 [""]
       60 NAMECALL                         R7 R7 K22 ["gsub"]
       62 CALL                             R7 3 1
       63 SETTABLEKS                       R7 R6 K12 ["ElasticityWeight"]
       65 GETIMPORT                        R7 K18 [string.format]
       67 LOADK                            R8 K19 ["%.3f"]
       68 GETTABLEKS                       R9 R5 K13 ["Friction"]
       70 CALL                             R7 2 1
       71 LOADK                            R9 K20 ["%.?0+$"]
       72 LOADK                            R10 K21 [""]
       73 NAMECALL                         R7 R7 K22 ["gsub"]
       75 CALL                             R7 3 1
       76 SETTABLEKS                       R7 R6 K13 ["Friction"]
       78 GETIMPORT                        R7 K18 [string.format]
       80 LOADK                            R8 K19 ["%.3f"]
       81 GETTABLEKS                       R9 R5 K14 ["FrictionWeight"]
       83 CALL                             R7 2 1
       84 LOADK                            R9 K20 ["%.?0+$"]
       85 LOADK                            R10 K21 [""]
       86 NAMECALL                         R7 R7 K22 ["gsub"]
       88 CALL                             R7 3 1
       89 SETTABLEKS                       R7 R6 K14 ["FrictionWeight"]
       91 SETTABLEKS                       R6 R0 K23 ["physicalProperties"]
       93 GETUPVAL                         R6 1
       94 GETTABLEKS                       R6 R6 K24 ["createElement"]
       96 GETUPVAL                         R7 2
       97 DUPTABLE                         R8 K32 [{"LayoutOrder", "ContentPadding", "ContentSpacing", "Text", "Style", "Expanded", "OnExpandedChanged"}]
       98 GETTABLEKS                       R9 R1 K25 ["LayoutOrder"]
      100 SETTABLEKS                       R9 R8 K25 ["LayoutOrder"]
      102 GETTABLEKS                       R9 R2 K26 ["ContentPadding"]
      104 SETTABLEKS                       R9 R8 K26 ["ContentPadding"]
      106 GETTABLEKS                       R9 R2 K33 ["ItemSpacing"]
      108 SETTABLEKS                       R9 R8 K27 ["ContentSpacing"]
      110 LOADK                            R11 K7 ["PhysicalProperties"]
      111 LOADK                            R12 K34 ["Physics"]
      112 NAMECALL                         R9 R3 K35 ["getText"]
      114 CALL                             R9 3 1
      115 SETTABLEKS                       R9 R8 K28 ["Text"]
      117 GETTABLEKS                       R9 R2 K36 ["CustomExpandablePane"]
      119 SETTABLEKS                       R9 R8 K29 ["Style"]
      121 GETTABLEKS                       R9 R1 K37 ["ExpandedPane"]
      123 SETTABLEKS                       R9 R8 K30 ["Expanded"]
      125 GETTABLEKS                       R9 R0 K38 ["onExpandedChanged"]
      127 SETTABLEKS                       R9 R8 K31 ["OnExpandedChanged"]
      129 DUPTABLE                         R9 K40 [{"Density", "Elasticity", "Friction", "ElasticityWeight", "FrictionWeight", "Reset"}]
      130 GETUPVAL                         R10 1
      131 GETTABLEKS                       R10 R10 K24 ["createElement"]
      133 GETUPVAL                         R11 3
      134 DUPTABLE                         R12 K42 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
      135 GETTABLEKS                       R13 R2 K41 ["LabelColumnWidth"]
      137 SETTABLEKS                       R13 R12 K41 ["LabelColumnWidth"]
      139 NAMECALL                         R13 R4 K43 ["getNextOrder"]
      141 CALL                             R13 1 1
      142 SETTABLEKS                       R13 R12 K25 ["LayoutOrder"]
      144 LOADK                            R15 K7 ["PhysicalProperties"]
      145 LOADK                            R16 K10 ["Density"]
      146 NAMECALL                         R13 R3 K35 ["getText"]
      148 CALL                             R13 3 1
      149 SETTABLEKS                       R13 R12 K28 ["Text"]
      151 NEWTABLE                         R13 0 1
      153 GETUPVAL                         R14 1
      154 GETTABLEKS                       R14 R14 K24 ["createElement"]
      156 GETUPVAL                         R15 4
      157 DUPTABLE                         R16 K47 [{"Style", "Size", "Text", "OnTextChanged", "OnFocusLost"}]
      158 LOADK                            R17 K48 ["FilledRoundedBorder"]
      159 SETTABLEKS                       R17 R16 K29 ["Style"]
      161 GETTABLEKS                       R17 R2 K49 ["DialogColumnSize"]
      163 SETTABLEKS                       R17 R16 K44 ["Size"]
      165 GETTABLEKS                       R17 R0 K23 ["physicalProperties"]
      167 GETTABLEKS                       R17 R17 K10 ["Density"]
      169 SETTABLEKS                       R17 R16 K28 ["Text"]
      171 GETTABLEKS                       R17 R0 K50 ["setPhysicalProperty"]
      173 LOADK                            R18 K10 ["Density"]
      174 CALL                             R17 1 1
      175 SETTABLEKS                       R17 R16 K45 ["OnTextChanged"]
      177 GETTABLEKS                       R17 R0 K51 ["onFocusLost"]
      179 SETTABLEKS                       R17 R16 K46 ["OnFocusLost"]
      181 CALL                             R14 2 -1
      182 SETLIST                          R13 R14 -1 [1]
      184 CALL                             R10 3 1
      185 SETTABLEKS                       R10 R9 K10 ["Density"]
      187 GETUPVAL                         R10 1
      188 GETTABLEKS                       R10 R10 K24 ["createElement"]
      190 GETUPVAL                         R11 3
      191 DUPTABLE                         R12 K42 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
      192 GETTABLEKS                       R13 R2 K41 ["LabelColumnWidth"]
      194 SETTABLEKS                       R13 R12 K41 ["LabelColumnWidth"]
      196 NAMECALL                         R13 R4 K43 ["getNextOrder"]
      198 CALL                             R13 1 1
      199 SETTABLEKS                       R13 R12 K25 ["LayoutOrder"]
      201 LOADK                            R15 K7 ["PhysicalProperties"]
      202 LOADK                            R16 K11 ["Elasticity"]
      203 NAMECALL                         R13 R3 K35 ["getText"]
      205 CALL                             R13 3 1
      206 SETTABLEKS                       R13 R12 K28 ["Text"]
      208 NEWTABLE                         R13 0 1
      210 GETUPVAL                         R14 1
      211 GETTABLEKS                       R14 R14 K24 ["createElement"]
      213 GETUPVAL                         R15 4
      214 DUPTABLE                         R16 K47 [{"Style", "Size", "Text", "OnTextChanged", "OnFocusLost"}]
      215 LOADK                            R17 K48 ["FilledRoundedBorder"]
      216 SETTABLEKS                       R17 R16 K29 ["Style"]
      218 GETTABLEKS                       R17 R2 K49 ["DialogColumnSize"]
      220 SETTABLEKS                       R17 R16 K44 ["Size"]
      222 GETTABLEKS                       R17 R0 K23 ["physicalProperties"]
      224 GETTABLEKS                       R17 R17 K11 ["Elasticity"]
      226 SETTABLEKS                       R17 R16 K28 ["Text"]
      228 GETTABLEKS                       R17 R0 K50 ["setPhysicalProperty"]
      230 LOADK                            R18 K11 ["Elasticity"]
      231 CALL                             R17 1 1
      232 SETTABLEKS                       R17 R16 K45 ["OnTextChanged"]
      234 GETTABLEKS                       R17 R0 K51 ["onFocusLost"]
      236 SETTABLEKS                       R17 R16 K46 ["OnFocusLost"]
      238 CALL                             R14 2 -1
      239 SETLIST                          R13 R14 -1 [1]
      241 CALL                             R10 3 1
      242 SETTABLEKS                       R10 R9 K11 ["Elasticity"]
      244 GETUPVAL                         R10 1
      245 GETTABLEKS                       R10 R10 K24 ["createElement"]
      247 GETUPVAL                         R11 3
      248 DUPTABLE                         R12 K42 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
      249 GETTABLEKS                       R13 R2 K41 ["LabelColumnWidth"]
      251 SETTABLEKS                       R13 R12 K41 ["LabelColumnWidth"]
      253 NAMECALL                         R13 R4 K43 ["getNextOrder"]
      255 CALL                             R13 1 1
      256 SETTABLEKS                       R13 R12 K25 ["LayoutOrder"]
      258 LOADK                            R15 K7 ["PhysicalProperties"]
      259 LOADK                            R16 K13 ["Friction"]
      260 NAMECALL                         R13 R3 K35 ["getText"]
      262 CALL                             R13 3 1
      263 SETTABLEKS                       R13 R12 K28 ["Text"]
      265 NEWTABLE                         R13 0 1
      267 GETUPVAL                         R14 1
      268 GETTABLEKS                       R14 R14 K24 ["createElement"]
      270 GETUPVAL                         R15 4
      271 DUPTABLE                         R16 K47 [{"Style", "Size", "Text", "OnTextChanged", "OnFocusLost"}]
      272 LOADK                            R17 K48 ["FilledRoundedBorder"]
      273 SETTABLEKS                       R17 R16 K29 ["Style"]
      275 GETTABLEKS                       R17 R2 K49 ["DialogColumnSize"]
      277 SETTABLEKS                       R17 R16 K44 ["Size"]
      279 GETTABLEKS                       R17 R0 K23 ["physicalProperties"]
      281 GETTABLEKS                       R17 R17 K13 ["Friction"]
      283 SETTABLEKS                       R17 R16 K28 ["Text"]
      285 GETTABLEKS                       R17 R0 K50 ["setPhysicalProperty"]
      287 LOADK                            R18 K13 ["Friction"]
      288 CALL                             R17 1 1
      289 SETTABLEKS                       R17 R16 K45 ["OnTextChanged"]
      291 GETTABLEKS                       R17 R0 K51 ["onFocusLost"]
      293 SETTABLEKS                       R17 R16 K46 ["OnFocusLost"]
      295 CALL                             R14 2 -1
      296 SETLIST                          R13 R14 -1 [1]
      298 CALL                             R10 3 1
      299 SETTABLEKS                       R10 R9 K13 ["Friction"]
      301 GETUPVAL                         R10 1
      302 GETTABLEKS                       R10 R10 K24 ["createElement"]
      304 GETUPVAL                         R11 3
      305 DUPTABLE                         R12 K42 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
      306 GETTABLEKS                       R13 R2 K41 ["LabelColumnWidth"]
      308 SETTABLEKS                       R13 R12 K41 ["LabelColumnWidth"]
      310 NAMECALL                         R13 R4 K43 ["getNextOrder"]
      312 CALL                             R13 1 1
      313 SETTABLEKS                       R13 R12 K25 ["LayoutOrder"]
      315 LOADK                            R15 K7 ["PhysicalProperties"]
      316 LOADK                            R16 K12 ["ElasticityWeight"]
      317 NAMECALL                         R13 R3 K35 ["getText"]
      319 CALL                             R13 3 1
      320 SETTABLEKS                       R13 R12 K28 ["Text"]
      322 NEWTABLE                         R13 0 1
      324 GETUPVAL                         R14 1
      325 GETTABLEKS                       R14 R14 K24 ["createElement"]
      327 GETUPVAL                         R15 4
      328 DUPTABLE                         R16 K47 [{"Style", "Size", "Text", "OnTextChanged", "OnFocusLost"}]
      329 LOADK                            R17 K48 ["FilledRoundedBorder"]
      330 SETTABLEKS                       R17 R16 K29 ["Style"]
      332 GETTABLEKS                       R17 R2 K49 ["DialogColumnSize"]
      334 SETTABLEKS                       R17 R16 K44 ["Size"]
      336 GETTABLEKS                       R17 R0 K23 ["physicalProperties"]
      338 GETTABLEKS                       R17 R17 K12 ["ElasticityWeight"]
      340 SETTABLEKS                       R17 R16 K28 ["Text"]
      342 GETTABLEKS                       R17 R0 K50 ["setPhysicalProperty"]
      344 LOADK                            R18 K12 ["ElasticityWeight"]
      345 CALL                             R17 1 1
      346 SETTABLEKS                       R17 R16 K45 ["OnTextChanged"]
      348 GETTABLEKS                       R17 R0 K51 ["onFocusLost"]
      350 SETTABLEKS                       R17 R16 K46 ["OnFocusLost"]
      352 CALL                             R14 2 -1
      353 SETLIST                          R13 R14 -1 [1]
      355 CALL                             R10 3 1
      356 SETTABLEKS                       R10 R9 K12 ["ElasticityWeight"]
      358 GETUPVAL                         R10 1
      359 GETTABLEKS                       R10 R10 K24 ["createElement"]
      361 GETUPVAL                         R11 3
      362 DUPTABLE                         R12 K42 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
      363 GETTABLEKS                       R13 R2 K41 ["LabelColumnWidth"]
      365 SETTABLEKS                       R13 R12 K41 ["LabelColumnWidth"]
      367 NAMECALL                         R13 R4 K43 ["getNextOrder"]
      369 CALL                             R13 1 1
      370 SETTABLEKS                       R13 R12 K25 ["LayoutOrder"]
      372 LOADK                            R15 K7 ["PhysicalProperties"]
      373 LOADK                            R16 K14 ["FrictionWeight"]
      374 NAMECALL                         R13 R3 K35 ["getText"]
      376 CALL                             R13 3 1
      377 SETTABLEKS                       R13 R12 K28 ["Text"]
      379 NEWTABLE                         R13 0 1
      381 GETUPVAL                         R14 1
      382 GETTABLEKS                       R14 R14 K24 ["createElement"]
      384 GETUPVAL                         R15 4
      385 DUPTABLE                         R16 K47 [{"Style", "Size", "Text", "OnTextChanged", "OnFocusLost"}]
      386 LOADK                            R17 K48 ["FilledRoundedBorder"]
      387 SETTABLEKS                       R17 R16 K29 ["Style"]
      389 GETTABLEKS                       R17 R2 K49 ["DialogColumnSize"]
      391 SETTABLEKS                       R17 R16 K44 ["Size"]
      393 GETTABLEKS                       R17 R0 K23 ["physicalProperties"]
      395 GETTABLEKS                       R17 R17 K14 ["FrictionWeight"]
      397 SETTABLEKS                       R17 R16 K28 ["Text"]
      399 GETTABLEKS                       R17 R0 K50 ["setPhysicalProperty"]
      401 LOADK                            R18 K14 ["FrictionWeight"]
      402 CALL                             R17 1 1
      403 SETTABLEKS                       R17 R16 K45 ["OnTextChanged"]
      405 GETTABLEKS                       R17 R0 K51 ["onFocusLost"]
      407 SETTABLEKS                       R17 R16 K46 ["OnFocusLost"]
      409 CALL                             R14 2 -1
      410 SETLIST                          R13 R14 -1 [1]
      412 CALL                             R10 3 1
      413 SETTABLEKS                       R10 R9 K14 ["FrictionWeight"]
      415 GETUPVAL                         R10 1
      416 GETTABLEKS                       R10 R10 K24 ["createElement"]
      418 GETUPVAL                         R11 5
      419 DUPTABLE                         R12 K53 [{"LayoutOrder", "Padding", "Size"}]
      420 NAMECALL                         R13 R4 K43 ["getNextOrder"]
      422 CALL                             R13 1 1
      423 SETTABLEKS                       R13 R12 K25 ["LayoutOrder"]
      425 DUPTABLE                         R13 K55 [{"Left"}]
      426 GETTABLEKS                       R14 R2 K56 ["ButtonPadding"]
      428 SETTABLEKS                       R14 R13 K54 ["Left"]
      430 SETTABLEKS                       R13 R12 K52 ["Padding"]
      432 GETTABLEKS                       R13 R2 K57 ["ButtonSize"]
      434 SETTABLEKS                       R13 R12 K44 ["Size"]
      436 DUPTABLE                         R13 K59 [{"Button"}]
      437 GETUPVAL                         R14 1
      438 GETTABLEKS                       R14 R14 K24 ["createElement"]
      440 GETUPVAL                         R15 6
      441 DUPTABLE                         R16 K62 [{"HorizontalAlignment", "OnClick", "Text", "Style"}]
      442 GETIMPORT                        R17 K65 [Enum.HorizontalAlignment.Center]
      444 SETTABLEKS                       R17 R16 K60 ["HorizontalAlignment"]
      446 GETTABLEKS                       R17 R0 K66 ["reset"]
      448 SETTABLEKS                       R17 R16 K61 ["OnClick"]
      450 LOADK                            R19 K7 ["PhysicalProperties"]
      451 LOADK                            R20 K39 ["Reset"]
      452 NAMECALL                         R17 R3 K35 ["getText"]
      454 CALL                             R17 3 1
      455 SETTABLEKS                       R17 R16 K28 ["Text"]
      457 LOADK                            R17 K67 ["Round"]
      458 SETTABLEKS                       R17 R16 K29 ["Style"]
      460 CALL                             R14 2 1
      461 SETTABLEKS                       R14 R13 K58 ["Button"]
      463 CALL                             R10 3 1
      464 SETTABLEKS                       R10 R9 K39 ["Reset"]
      466 CALL                             R6 3 -1
      467 RETURN                           R6 -1

PROTO_7:
        0 DUPTABLE                         R2 K2 [{"ExpandedPane", "Material"}]
        1 GETTABLEKS                       R4 R0 K3 ["MaterialBrowserReducer"]
        3 GETTABLEKS                       R4 R4 K0 ["ExpandedPane"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K4 ["PhysicalSettings"]
        8 GETTABLE                         R3 R4 R5
        9 SETTABLEKS                       R3 R2 K0 ["ExpandedPane"]
       11 GETTABLEKS                       R3 R0 K3 ["MaterialBrowserReducer"]
       13 GETTABLEKS                       R3 R3 K1 ["Material"]
       15 SETTABLEKS                       R3 R2 K1 ["Material"]
       17 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"dispatchSetExpandedPane"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetExpandedPane"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["Packages"]
       17 GETTABLEKS                       R2 R2 K6 ["Roact"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Packages"]
       24 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Packages"]
       31 GETTABLEKS                       R4 R4 K8 ["Framework"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       36 GETTABLEKS                       R5 R4 K10 ["withContext"]
       38 GETTABLEKS                       R6 R4 K11 ["Analytics"]
       40 GETTABLEKS                       R7 R4 K12 ["Localization"]
       42 GETTABLEKS                       R8 R3 K13 ["Style"]
       44 GETTABLEKS                       R8 R8 K14 ["Stylizer"]
       46 GETTABLEKS                       R9 R3 K15 ["Util"]
       48 GETTABLEKS                       R9 R9 K16 ["LayoutOrderIterator"]
       50 GETTABLEKS                       R10 R3 K17 ["UI"]
       52 GETTABLEKS                       R11 R10 K18 ["ExpandablePane"]
       54 GETTABLEKS                       R12 R10 K19 ["DEPRECATED_TextInput"]
       56 GETTABLEKS                       R13 R10 K20 ["Button"]
       58 GETTABLEKS                       R14 R10 K21 ["Pane"]
       60 GETTABLEKS                       R15 R0 K22 ["Src"]
       62 GETTABLEKS                       R15 R15 K23 ["Actions"]
       64 GETIMPORT                        R16 K4 [require]
       66 GETTABLEKS                       R17 R15 K24 ["SetExpandedPane"]
       68 CALL                             R16 1 1
       69 GETIMPORT                        R17 K4 [require]
       71 GETTABLEKS                       R18 R0 K22 ["Src"]
       73 GETTABLEKS                       R18 R18 K25 ["Reducers"]
       75 GETTABLEKS                       R18 R18 K26 ["MainReducer"]
       77 CALL                             R17 1 1
       78 GETTABLEKS                       R18 R0 K22 ["Src"]
       80 GETTABLEKS                       R18 R18 K27 ["Controllers"]
       82 GETIMPORT                        R19 K4 [require]
       84 GETTABLEKS                       R20 R18 K28 ["MaterialServiceController"]
       86 CALL                             R19 1 1
       87 GETIMPORT                        R20 K4 [require]
       89 GETTABLEKS                       R21 R18 K29 ["GeneralServiceController"]
       91 CALL                             R20 1 1
       92 GETIMPORT                        R21 K4 [require]
       94 GETTABLEKS                       R22 R0 K22 ["Src"]
       96 GETTABLEKS                       R22 R22 K30 ["Components"]
       98 GETTABLEKS                       R22 R22 K31 ["MaterialBrowser"]
      100 GETTABLEKS                       R22 R22 K32 ["MaterialEditor"]
      102 GETTABLEKS                       R22 R22 K33 ["LabeledElement"]
      104 CALL                             R21 1 1
      105 GETTABLEKS                       R22 R0 K22 ["Src"]
      107 GETTABLEKS                       R22 R22 K34 ["Resources"]
      109 GETTABLEKS                       R22 R22 K35 ["Constants"]
      111 GETIMPORT                        R23 K4 [require]
      113 GETTABLEKS                       R24 R22 K36 ["getSettingsNames"]
      115 CALL                             R23 1 1
      116 GETIMPORT                        R24 K4 [require]
      118 GETTABLEKS                       R25 R0 K22 ["Src"]
      120 GETTABLEKS                       R25 R25 K15 ["Util"]
      122 GETTABLEKS                       R25 R25 K37 ["getNumberFromText"]
      124 CALL                             R24 1 1
      125 GETIMPORT                        R25 K4 [require]
      127 GETTABLEKS                       R26 R0 K22 ["Src"]
      129 GETTABLEKS                       R26 R26 K15 ["Util"]
      131 GETTABLEKS                       R26 R26 K38 ["ResetCustomPhysicalProperties"]
      133 CALL                             R25 1 1
      134 MOVE                             R26 R23
      135 CALL                             R26 0 1
      136 GETTABLEKS                       R27 R1 K39 ["PureComponent"]
      138 LOADK                            R29 K40 ["PhysicalSettings"]
      139 NAMECALL                         R27 R27 K41 ["extend"]
      141 CALL                             R27 2 1
      142 DUPCLOSURE                       R28 K42 [PROTO_5]
      143 CAPTURE                          VAL R24
      144 CAPTURE                          VAL R25
      145 CAPTURE                          VAL R26
      146 SETTABLEKS                       R28 R27 K43 ["init"]
      148 DUPCLOSURE                       R28 K44 [PROTO_6]
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R13
      156 SETTABLEKS                       R28 R27 K45 ["render"]
      158 MOVE                             R28 R5
      159 DUPTABLE                         R29 K46 [{"Analytics", "Localization", "Stylizer", "MaterialServiceController", "GeneralServiceController"}]
      160 SETTABLEKS                       R6 R29 K11 ["Analytics"]
      162 SETTABLEKS                       R7 R29 K12 ["Localization"]
      164 SETTABLEKS                       R8 R29 K14 ["Stylizer"]
      166 SETTABLEKS                       R19 R29 K28 ["MaterialServiceController"]
      168 SETTABLEKS                       R20 R29 K29 ["GeneralServiceController"]
      170 CALL                             R28 1 1
      171 MOVE                             R29 R27
      172 CALL                             R28 1 1
      173 MOVE                             R27 R28
      174 GETTABLEKS                       R28 R2 K47 ["connect"]
      176 DUPCLOSURE                       R29 K48 [PROTO_7]
      177 CAPTURE                          VAL R26
      178 DUPCLOSURE                       R30 K49 [PROTO_9]
      179 CAPTURE                          VAL R16
      180 CALL                             R28 2 1
      181 MOVE                             R29 R27
      182 CALL                             R28 1 -1
      183 RETURN                           R28 -1
