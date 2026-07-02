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
        9 DUPTABLE                         R6 K14 [{["Expanded"] = True, ["HorizontalAlignment"], ["LayoutOrder"], ["Text"]}]
       10 GETIMPORT                        R7 K17 [Enum.HorizontalAlignment.Left]
       12 SETTABLEKS                       R7 R6 K11 ["HorizontalAlignment"]
       14 GETUPVAL                         R7 2
       15 NAMECALL                         R7 R7 K18 ["getNextOrder"]
       17 CALL                             R7 1 1
       18 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       20 LOADK                            R9 K19 ["QualityFilterOptions"]
       21 LOADK                            R10 K2 ["TriangleCount"]
       22 NAMECALL                         R7 R2 K20 ["getText"]
       24 CALL                             R7 3 1
       25 SETTABLEKS                       R7 R6 K13 ["Text"]
       27 GETUPVAL                         R9 3
       28 LOADK                            R10 K21 ["triangle"]
       29 LOADK                            R11 K22 ["Buckets"]
       30 MOVE                             R12 R2
       31 NAMECALL                         R7 R0 K23 ["getControls"]
       33 CALL                             R7 5 -1
       34 CALL                             R4 -1 1
       35 SETTABLEKS                       R4 R3 K2 ["TriangleCount"]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K8 ["createElement"]
       40 GETUPVAL                         R5 1
       41 DUPTABLE                         R6 K14 [{["Expanded"] = True, ["HorizontalAlignment"], ["LayoutOrder"], ["Text"]}]
       42 GETIMPORT                        R7 K17 [Enum.HorizontalAlignment.Left]
       44 SETTABLEKS                       R7 R6 K11 ["HorizontalAlignment"]
       46 GETUPVAL                         R7 2
       47 NAMECALL                         R7 R7 K18 ["getNextOrder"]
       49 CALL                             R7 1 1
       50 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       52 LOADK                            R9 K19 ["QualityFilterOptions"]
       53 LOADK                            R10 K3 ["Contains"]
       54 NAMECALL                         R7 R2 K20 ["getText"]
       56 CALL                             R7 3 1
       57 SETTABLEKS                       R7 R6 K13 ["Text"]
       59 GETUPVAL                         R9 4
       60 LOADK                            R10 K24 ["contains"]
       61 LOADNIL                          R11
       62 LOADNIL                          R12
       63 NAMECALL                         R7 R0 K23 ["getControls"]
       65 CALL                             R7 5 -1
       66 CALL                             R4 -1 1
       67 SETTABLEKS                       R4 R3 K3 ["Contains"]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K8 ["createElement"]
       72 GETUPVAL                         R5 1
       73 DUPTABLE                         R6 K14 [{["Expanded"] = True, ["HorizontalAlignment"], ["LayoutOrder"], ["Text"]}]
       74 GETIMPORT                        R7 K17 [Enum.HorizontalAlignment.Left]
       76 SETTABLEKS                       R7 R6 K11 ["HorizontalAlignment"]
       78 GETUPVAL                         R7 2
       79 NAMECALL                         R7 R7 K18 ["getNextOrder"]
       81 CALL                             R7 1 1
       82 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       84 LOADK                            R9 K19 ["QualityFilterOptions"]
       85 LOADK                            R10 K25 ["VisualStyles"]
       86 NAMECALL                         R7 R2 K20 ["getText"]
       88 CALL                             R7 3 1
       89 SETTABLEKS                       R7 R6 K13 ["Text"]
       91 GETUPVAL                         R9 5
       92 LOADK                            R10 K26 ["visual_styles"]
       93 LOADK                            R11 K25 ["VisualStyles"]
       94 MOVE                             R12 R2
       95 NAMECALL                         R7 R0 K23 ["getControls"]
       97 CALL                             R7 5 -1
       98 CALL                             R4 -1 1
       99 SETTABLEKS                       R4 R3 K4 ["VisualStyle"]
      101 GETUPVAL                         R4 0
      102 GETTABLEKS                       R4 R4 K8 ["createElement"]
      104 GETUPVAL                         R5 1
      105 DUPTABLE                         R6 K28 [{["Expanded"] = False, ["HorizontalAlignment"], ["LayoutOrder"], ["Text"]}]
      106 GETIMPORT                        R7 K17 [Enum.HorizontalAlignment.Left]
      108 SETTABLEKS                       R7 R6 K11 ["HorizontalAlignment"]
      110 GETUPVAL                         R7 2
      111 NAMECALL                         R7 R7 K18 ["getNextOrder"]
      113 CALL                             R7 1 1
      114 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
      116 LOADK                            R9 K19 ["QualityFilterOptions"]
      117 LOADK                            R10 K5 ["Graphics"]
      118 NAMECALL                         R7 R2 K20 ["getText"]
      120 CALL                             R7 3 1
      121 SETTABLEKS                       R7 R6 K13 ["Text"]
      123 GETUPVAL                         R9 6
      124 LOADK                            R10 K29 ["graphics"]
      125 LOADK                            R11 K5 ["Graphics"]
      126 MOVE                             R12 R2
      127 NAMECALL                         R7 R0 K23 ["getControls"]
      129 CALL                             R7 5 -1
      130 CALL                             R4 -1 1
      131 SETTABLEKS                       R4 R3 K5 ["Graphics"]
      133 GETUPVAL                         R4 0
      134 GETTABLEKS                       R4 R4 K8 ["createElement"]
      136 GETUPVAL                         R5 1
      137 DUPTABLE                         R6 K28 [{["Expanded"] = False, ["HorizontalAlignment"], ["LayoutOrder"], ["Text"]}]
      138 GETIMPORT                        R7 K17 [Enum.HorizontalAlignment.Left]
      140 SETTABLEKS                       R7 R6 K11 ["HorizontalAlignment"]
      142 GETUPVAL                         R7 2
      143 NAMECALL                         R7 R7 K18 ["getNextOrder"]
      145 CALL                             R7 1 1
      146 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
      148 LOADK                            R9 K19 ["QualityFilterOptions"]
      149 LOADK                            R10 K6 ["Holidays"]
      150 NAMECALL                         R7 R2 K20 ["getText"]
      152 CALL                             R7 3 1
      153 SETTABLEKS                       R7 R6 K13 ["Text"]
      155 GETUPVAL                         R9 7
      156 LOADK                            R10 K30 ["holidays"]
      157 LOADK                            R11 K6 ["Holidays"]
      158 MOVE                             R12 R2
      159 NAMECALL                         R7 R0 K23 ["getControls"]
      161 CALL                             R7 5 -1
      162 CALL                             R4 -1 1
      163 SETTABLEKS                       R4 R3 K6 ["Holidays"]
      165 RETURN                           R3 1

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
