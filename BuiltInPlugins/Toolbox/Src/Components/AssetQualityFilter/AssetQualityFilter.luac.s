PROTO_0:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 NEWTABLE                         R6 0 0
        4 GETIMPORT                        R7 K2 [ipairs]
        6 MOVE                             R8 R1
        7 CALL                             R7 1 3
        8 FORGPREP_INEXT                   R7
        9 MOVE                             R12 R11
       10 JUMPIFNOT                        R4 ; [+10]
       11 JUMPIFNOT                        R3 ; [+9]
       12 LOADK                            R15 K3 ["QualityFilterOptions"]
       13 MOVE                             R17 R3
       14 LOADK                            R18 K4 ["."]
       15 MOVE                             R19 R11
       16 CONCAT                           R16 R17 R19
       17 NAMECALL                         R13 R4 K5 ["getText"]
       19 CALL                             R13 3 1
       20 MOVE                             R12 R13
       21 MOVE                             R14 R2
       22 LOADK                            R15 K4 ["."]
       23 MOVE                             R16 R11
       24 CONCAT                           R13 R14 R16
       25 GETUPVAL                         R14 0
       26 GETTABLEKS                       R14 R14 K6 ["createElement"]
       28 GETUPVAL                         R15 1
       29 DUPTABLE                         R16 K12 [{"Checked", "Key", "LayoutOrder", "OnClick", "Text"}]
       30 GETTABLEKS                       R18 R5 K13 ["CheckedState"]
       32 GETTABLE                         R17 R18 R13
       33 SETTABLEKS                       R17 R16 K7 ["Checked"]
       35 SETTABLEKS                       R13 R16 K8 ["Key"]
       37 GETUPVAL                         R17 2
       38 NAMECALL                         R17 R17 K14 ["getNextOrder"]
       40 CALL                             R17 1 1
       41 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
       43 GETTABLEKS                       R17 R5 K15 ["OnToggleFilter"]
       45 SETTABLEKS                       R17 R16 K10 ["OnClick"]
       47 SETTABLEKS                       R12 R16 K11 ["Text"]
       49 CALL                             R14 2 1
       50 FASTCALL2                        TABLE_INSERT R6 R14 ; [+5]
       52 MOVE                             R16 R6
       53 MOVE                             R17 R14
       54 GETIMPORT                        R15 K18 [table.insert]
       56 CALL                             R15 2 0
       57 FORGLOOP                         R7 2 [inext] ; [-49]
       59 RETURN                           R6 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 DUPTABLE                         R3 K7 [{"TriangleCount", "Contains", "VisualStyle", "Graphics", "Holidays"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K8 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K13 [{"Expanded", "HorizontalAlignment", "LayoutOrder", "Text"}]
       10 LOADB                            R7 1
       11 SETTABLEKS                       R7 R6 K9 ["Expanded"]
       13 GETIMPORT                        R7 K16 [Enum.HorizontalAlignment.Left]
       15 SETTABLEKS                       R7 R6 K10 ["HorizontalAlignment"]
       17 GETUPVAL                         R7 2
       18 NAMECALL                         R7 R7 K17 ["getNextOrder"]
       20 CALL                             R7 1 1
       21 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       23 LOADK                            R9 K18 ["QualityFilterOptions"]
       24 LOADK                            R10 K2 ["TriangleCount"]
       25 NAMECALL                         R7 R2 K19 ["getText"]
       27 CALL                             R7 3 1
       28 SETTABLEKS                       R7 R6 K12 ["Text"]
       30 GETUPVAL                         R9 3
       31 LOADK                            R10 K20 ["triangle"]
       32 LOADK                            R11 K21 ["Buckets"]
       33 MOVE                             R12 R2
       34 NAMECALL                         R7 R0 K22 ["getControls"]
       36 CALL                             R7 5 -1
       37 CALL                             R4 -1 1
       38 SETTABLEKS                       R4 R3 K2 ["TriangleCount"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K8 ["createElement"]
       43 GETUPVAL                         R5 1
       44 DUPTABLE                         R6 K13 [{"Expanded", "HorizontalAlignment", "LayoutOrder", "Text"}]
       45 LOADB                            R7 1
       46 SETTABLEKS                       R7 R6 K9 ["Expanded"]
       48 GETIMPORT                        R7 K16 [Enum.HorizontalAlignment.Left]
       50 SETTABLEKS                       R7 R6 K10 ["HorizontalAlignment"]
       52 GETUPVAL                         R7 2
       53 NAMECALL                         R7 R7 K17 ["getNextOrder"]
       55 CALL                             R7 1 1
       56 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       58 LOADK                            R9 K18 ["QualityFilterOptions"]
       59 LOADK                            R10 K3 ["Contains"]
       60 NAMECALL                         R7 R2 K19 ["getText"]
       62 CALL                             R7 3 1
       63 SETTABLEKS                       R7 R6 K12 ["Text"]
       65 GETUPVAL                         R9 4
       66 LOADK                            R10 K23 ["contains"]
       67 LOADNIL                          R11
       68 LOADNIL                          R12
       69 NAMECALL                         R7 R0 K22 ["getControls"]
       71 CALL                             R7 5 -1
       72 CALL                             R4 -1 1
       73 SETTABLEKS                       R4 R3 K3 ["Contains"]
       75 GETUPVAL                         R4 0
       76 GETTABLEKS                       R4 R4 K8 ["createElement"]
       78 GETUPVAL                         R5 1
       79 DUPTABLE                         R6 K13 [{"Expanded", "HorizontalAlignment", "LayoutOrder", "Text"}]
       80 LOADB                            R7 1
       81 SETTABLEKS                       R7 R6 K9 ["Expanded"]
       83 GETIMPORT                        R7 K16 [Enum.HorizontalAlignment.Left]
       85 SETTABLEKS                       R7 R6 K10 ["HorizontalAlignment"]
       87 GETUPVAL                         R7 2
       88 NAMECALL                         R7 R7 K17 ["getNextOrder"]
       90 CALL                             R7 1 1
       91 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       93 LOADK                            R9 K18 ["QualityFilterOptions"]
       94 LOADK                            R10 K24 ["VisualStyles"]
       95 NAMECALL                         R7 R2 K19 ["getText"]
       97 CALL                             R7 3 1
       98 SETTABLEKS                       R7 R6 K12 ["Text"]
      100 GETUPVAL                         R9 5
      101 LOADK                            R10 K25 ["visual_styles"]
      102 LOADK                            R11 K24 ["VisualStyles"]
      103 MOVE                             R12 R2
      104 NAMECALL                         R7 R0 K22 ["getControls"]
      106 CALL                             R7 5 -1
      107 CALL                             R4 -1 1
      108 SETTABLEKS                       R4 R3 K4 ["VisualStyle"]
      110 GETUPVAL                         R4 0
      111 GETTABLEKS                       R4 R4 K8 ["createElement"]
      113 GETUPVAL                         R5 1
      114 DUPTABLE                         R6 K13 [{"Expanded", "HorizontalAlignment", "LayoutOrder", "Text"}]
      115 LOADB                            R7 0
      116 SETTABLEKS                       R7 R6 K9 ["Expanded"]
      118 GETIMPORT                        R7 K16 [Enum.HorizontalAlignment.Left]
      120 SETTABLEKS                       R7 R6 K10 ["HorizontalAlignment"]
      122 GETUPVAL                         R7 2
      123 NAMECALL                         R7 R7 K17 ["getNextOrder"]
      125 CALL                             R7 1 1
      126 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
      128 LOADK                            R9 K18 ["QualityFilterOptions"]
      129 LOADK                            R10 K5 ["Graphics"]
      130 NAMECALL                         R7 R2 K19 ["getText"]
      132 CALL                             R7 3 1
      133 SETTABLEKS                       R7 R6 K12 ["Text"]
      135 GETUPVAL                         R9 6
      136 LOADK                            R10 K26 ["graphics"]
      137 LOADK                            R11 K5 ["Graphics"]
      138 MOVE                             R12 R2
      139 NAMECALL                         R7 R0 K22 ["getControls"]
      141 CALL                             R7 5 -1
      142 CALL                             R4 -1 1
      143 SETTABLEKS                       R4 R3 K5 ["Graphics"]
      145 GETUPVAL                         R4 0
      146 GETTABLEKS                       R4 R4 K8 ["createElement"]
      148 GETUPVAL                         R5 1
      149 DUPTABLE                         R6 K13 [{"Expanded", "HorizontalAlignment", "LayoutOrder", "Text"}]
      150 LOADB                            R7 0
      151 SETTABLEKS                       R7 R6 K9 ["Expanded"]
      153 GETIMPORT                        R7 K16 [Enum.HorizontalAlignment.Left]
      155 SETTABLEKS                       R7 R6 K10 ["HorizontalAlignment"]
      157 GETUPVAL                         R7 2
      158 NAMECALL                         R7 R7 K17 ["getNextOrder"]
      160 CALL                             R7 1 1
      161 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
      163 LOADK                            R9 K18 ["QualityFilterOptions"]
      164 LOADK                            R10 K6 ["Holidays"]
      165 NAMECALL                         R7 R2 K19 ["getText"]
      167 CALL                             R7 3 1
      168 SETTABLEKS                       R7 R6 K12 ["Text"]
      170 GETUPVAL                         R9 7
      171 LOADK                            R10 K27 ["holidays"]
      172 LOADK                            R11 K6 ["Holidays"]
      173 MOVE                             R12 R2
      174 NAMECALL                         R7 R0 K22 ["getControls"]
      176 CALL                             R7 5 -1
      177 CALL                             R4 -1 1
      178 SETTABLEKS                       R4 R3 K6 ["Holidays"]
      180 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["UI"]
       21 GETTABLEKS                       R4 R4 K10 ["Checkbox"]
       23 GETTABLEKS                       R5 R3 K11 ["Util"]
       25 GETTABLEKS                       R5 R5 K12 ["LayoutOrderIterator"]
       27 GETTABLEKS                       R6 R3 K9 ["UI"]
       29 GETTABLEKS                       R6 R6 K13 ["SimpleExpandablePane"]
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R1 K8 ["Framework"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R7 R7 K14 ["ContextServices"]
       38 GETTABLEKS                       R8 R7 K15 ["withContext"]
       40 GETTABLEKS                       R9 R2 K16 ["PureComponent"]
       42 LOADK                            R11 K17 ["AssetQualityFilter"]
       43 NAMECALL                         R9 R9 K18 ["extend"]
       45 CALL                             R9 2 1
       46 GETTABLEKS                       R10 R5 K19 ["new"]
       48 CALL                             R10 0 1
       49 NEWTABLE                         R11 0 12
       51 LOADK                            R12 K20 ["christmas"]
       52 LOADK                            R13 K21 ["dia_de_muertos"]
       53 LOADK                            R14 K22 ["diwali"]
       54 LOADK                            R15 K23 ["easter"]
       55 LOADK                            R16 K24 ["fourth_of_july"]
       56 LOADK                            R17 K25 ["halloween"]
       57 LOADK                            R18 K26 ["hanukkah"]
       58 LOADK                            R19 K27 ["lunar_new_year"]
       59 LOADK                            R20 K28 ["new_year"]
       60 LOADK                            R21 K29 ["st_patricks_day"]
       61 LOADK                            R22 K30 ["thanksgiving"]
       62 LOADK                            R23 K31 ["valentines_day"]
       63 SETLIST                          R11 R12 12 [1]
       65 NEWTABLE                         R12 0 4
       67 LOADK                            R13 K32 ["anime"]
       68 LOADK                            R14 K33 ["cartoony"]
       69 LOADK                            R15 K34 ["realistic"]
       70 LOADK                            R16 K35 ["stylized"]
       71 SETLIST                          R12 R13 4 [1]
       73 NEWTABLE                         R13 0 1
       75 LOADK                            R14 K36 ["pbr"]
       76 SETLIST                          R13 R14 1 [1]
       78 NEWTABLE                         R14 0 5
       80 LOADK                            R15 K37 ["ultra_high"]
       81 LOADK                            R16 K38 ["high"]
       82 LOADK                            R17 K39 ["medium"]
       83 LOADK                            R18 K40 ["low"]
       84 LOADK                            R19 K41 ["ultra_low"]
       85 SETLIST                          R14 R15 5 [1]
       87 NEWTABLE                         R15 0 15
       89 LOADK                            R16 K42 ["Animation"]
       90 LOADK                            R17 K43 ["Decal"]
       91 LOADK                            R18 K44 ["Humanoid"]
       92 LOADK                            R19 K45 ["Motor"]
       93 LOADK                            R20 K46 ["Motor6D"]
       94 LOADK                            R21 K47 ["ParticleEmitter"]
       95 LOADK                            R22 K48 ["PointLight"]
       96 LOADK                            R23 K49 ["ProximityPrompt"]
       97 LOADK                            R24 K50 ["Script"]
       98 LOADK                            R25 K51 ["Seat"]
       99 LOADK                            R26 K52 ["SpawnLocation"]
      100 LOADK                            R27 K53 ["Spotlight"]
      101 LOADK                            R28 K54 ["SurfaceLight"]
      102 LOADK                            R29 K55 ["Tool"]
      103 LOADK                            R30 K56 ["VehicleSeat"]
      104 SETLIST                          R15 R16 15 [1]
      106 DUPCLOSURE                       R16 K57 [PROTO_0]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R10
      110 SETTABLEKS                       R16 R9 K58 ["getControls"]
      112 DUPCLOSURE                       R16 K59 [PROTO_1]
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R11
      121 SETTABLEKS                       R16 R9 K60 ["render"]
      123 MOVE                             R16 R8
      124 DUPTABLE                         R17 K63 [{"Localization", "Stylizer"}]
      125 GETTABLEKS                       R18 R7 K61 ["Localization"]
      127 SETTABLEKS                       R18 R17 K61 ["Localization"]
      129 GETTABLEKS                       R18 R7 K62 ["Stylizer"]
      131 SETTABLEKS                       R18 R17 K62 ["Stylizer"]
      133 CALL                             R16 1 1
      134 MOVE                             R17 R9
      135 CALL                             R16 1 1
      136 MOVE                             R9 R16
      137 RETURN                           R9 1
