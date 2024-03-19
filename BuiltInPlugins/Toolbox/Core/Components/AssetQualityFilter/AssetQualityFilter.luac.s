PROTO_0:
  GETTABLEKS R5 R0 K0 ["props"]
  NEWTABLE R6 0 0
  GETIMPORT R7 K2 [ipairs]
  MOVE R8 R1
  CALL R7 1 3
  FORGPREP_INEXT R7
  MOVE R12 R11
  JUMPIFNOT R4 [+10]
  JUMPIFNOT R3 [+9]
  LOADK R15 K3 ["QualityFilterOptions"]
  MOVE R17 R3
  LOADK R18 K4 ["."]
  MOVE R19 R11
  CONCAT R16 R17 R19
  NAMECALL R13 R4 K5 ["getText"]
  CALL R13 3 1
  MOVE R12 R13
  MOVE R14 R2
  LOADK R15 K4 ["."]
  MOVE R16 R11
  CONCAT R13 R14 R16
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K6 ["createElement"]
  GETUPVAL R15 1
  DUPTABLE R16 K12 [{"Checked", "Key", "LayoutOrder", "OnClick", "Text"}]
  GETTABLEKS R18 R5 K13 ["CheckedState"]
  GETTABLE R17 R18 R13
  SETTABLEKS R17 R16 K7 ["Checked"]
  SETTABLEKS R13 R16 K8 ["Key"]
  GETUPVAL R17 2
  NAMECALL R17 R17 K14 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K9 ["LayoutOrder"]
  GETTABLEKS R17 R5 K15 ["OnToggleFilter"]
  SETTABLEKS R17 R16 K10 ["OnClick"]
  SETTABLEKS R12 R16 K11 ["Text"]
  CALL R14 2 1
  FASTCALL2 TABLE_INSERT R6 R14 [+5]
  MOVE R16 R6
  MOVE R17 R14
  GETIMPORT R15 K18 [table.insert]
  CALL R15 2 0
  FORGLOOP R7 2 [inext] [-49]
  RETURN R6 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  DUPTABLE R3 K7 [{"TriangleCount", "Contains", "VisualStyle", "Graphics", "Holidays"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K13 [{"Expanded", "HorizontalAlignment", "LayoutOrder", "Text"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K9 ["Expanded"]
  GETIMPORT R7 K16 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K10 ["HorizontalAlignment"]
  GETUPVAL R7 2
  NAMECALL R7 R7 K17 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K11 ["LayoutOrder"]
  LOADK R9 K18 ["QualityFilterOptions"]
  LOADK R10 K2 ["TriangleCount"]
  NAMECALL R7 R2 K19 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K12 ["Text"]
  GETUPVAL R9 3
  LOADK R10 K20 ["triangle"]
  LOADK R11 K21 ["Buckets"]
  MOVE R12 R2
  NAMECALL R7 R0 K22 ["getControls"]
  CALL R7 5 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K2 ["TriangleCount"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K13 [{"Expanded", "HorizontalAlignment", "LayoutOrder", "Text"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K9 ["Expanded"]
  GETIMPORT R7 K16 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K10 ["HorizontalAlignment"]
  GETUPVAL R7 2
  NAMECALL R7 R7 K17 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K11 ["LayoutOrder"]
  LOADK R9 K18 ["QualityFilterOptions"]
  LOADK R10 K3 ["Contains"]
  NAMECALL R7 R2 K19 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K12 ["Text"]
  GETUPVAL R9 4
  LOADK R10 K23 ["contains"]
  LOADNIL R11
  LOADNIL R12
  NAMECALL R7 R0 K22 ["getControls"]
  CALL R7 5 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K3 ["Contains"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K13 [{"Expanded", "HorizontalAlignment", "LayoutOrder", "Text"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K9 ["Expanded"]
  GETIMPORT R7 K16 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K10 ["HorizontalAlignment"]
  GETUPVAL R7 2
  NAMECALL R7 R7 K17 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K11 ["LayoutOrder"]
  LOADK R9 K18 ["QualityFilterOptions"]
  LOADK R10 K24 ["VisualStyles"]
  NAMECALL R7 R2 K19 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K12 ["Text"]
  GETUPVAL R9 5
  LOADK R10 K25 ["visual_styles"]
  LOADK R11 K24 ["VisualStyles"]
  MOVE R12 R2
  NAMECALL R7 R0 K22 ["getControls"]
  CALL R7 5 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K4 ["VisualStyle"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K13 [{"Expanded", "HorizontalAlignment", "LayoutOrder", "Text"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K9 ["Expanded"]
  GETIMPORT R7 K16 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K10 ["HorizontalAlignment"]
  GETUPVAL R7 2
  NAMECALL R7 R7 K17 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K11 ["LayoutOrder"]
  LOADK R9 K18 ["QualityFilterOptions"]
  LOADK R10 K5 ["Graphics"]
  NAMECALL R7 R2 K19 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K12 ["Text"]
  GETUPVAL R9 6
  LOADK R10 K26 ["graphics"]
  LOADK R11 K5 ["Graphics"]
  MOVE R12 R2
  NAMECALL R7 R0 K22 ["getControls"]
  CALL R7 5 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K5 ["Graphics"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K13 [{"Expanded", "HorizontalAlignment", "LayoutOrder", "Text"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K9 ["Expanded"]
  GETIMPORT R7 K16 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K10 ["HorizontalAlignment"]
  GETUPVAL R7 2
  NAMECALL R7 R7 K17 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K11 ["LayoutOrder"]
  LOADK R9 K18 ["QualityFilterOptions"]
  LOADK R10 K6 ["Holidays"]
  NAMECALL R7 R2 K19 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K12 ["Text"]
  GETUPVAL R9 7
  LOADK R10 K27 ["holidays"]
  LOADK R11 K6 ["Holidays"]
  MOVE R12 R2
  NAMECALL R7 R0 K22 ["getControls"]
  CALL R7 5 -1
  CALL R4 -1 1
  SETTABLEKS R4 R3 K6 ["Holidays"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K9 ["UI"]
  GETTABLEKS R4 R5 K10 ["Checkbox"]
  GETTABLEKS R6 R3 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["LayoutOrderIterator"]
  GETTABLEKS R7 R3 K9 ["UI"]
  GETTABLEKS R6 R7 K13 ["SimpleExpandablePane"]
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R1 K8 ["Framework"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K14 ["ContextServices"]
  GETTABLEKS R8 R7 K15 ["withContext"]
  GETTABLEKS R9 R2 K16 ["PureComponent"]
  LOADK R11 K17 ["AssetQualityFilter"]
  NAMECALL R9 R9 K18 ["extend"]
  CALL R9 2 1
  GETTABLEKS R10 R5 K19 ["new"]
  CALL R10 0 1
  NEWTABLE R11 0 12
  LOADK R12 K20 ["christmas"]
  LOADK R13 K21 ["dia_de_muertos"]
  LOADK R14 K22 ["diwali"]
  LOADK R15 K23 ["easter"]
  LOADK R16 K24 ["fourth_of_july"]
  LOADK R17 K25 ["halloween"]
  LOADK R18 K26 ["hanukkah"]
  LOADK R19 K27 ["lunar_new_year"]
  LOADK R20 K28 ["new_year"]
  LOADK R21 K29 ["st_patricks_day"]
  LOADK R22 K30 ["thanksgiving"]
  LOADK R23 K31 ["valentines_day"]
  SETLIST R11 R12 12 [1]
  NEWTABLE R12 0 4
  LOADK R13 K32 ["anime"]
  LOADK R14 K33 ["cartoony"]
  LOADK R15 K34 ["realistic"]
  LOADK R16 K35 ["stylized"]
  SETLIST R12 R13 4 [1]
  NEWTABLE R13 0 1
  LOADK R14 K36 ["pbr"]
  SETLIST R13 R14 1 [1]
  NEWTABLE R14 0 5
  LOADK R15 K37 ["ultra_high"]
  LOADK R16 K38 ["high"]
  LOADK R17 K39 ["medium"]
  LOADK R18 K40 ["low"]
  LOADK R19 K41 ["ultra_low"]
  SETLIST R14 R15 5 [1]
  NEWTABLE R15 0 15
  LOADK R16 K42 ["Animation"]
  LOADK R17 K43 ["Decal"]
  LOADK R18 K44 ["Humanoid"]
  LOADK R19 K45 ["Motor"]
  LOADK R20 K46 ["Motor6D"]
  LOADK R21 K47 ["ParticleEmitter"]
  LOADK R22 K48 ["PointLight"]
  LOADK R23 K49 ["ProximityPrompt"]
  LOADK R24 K50 ["Script"]
  LOADK R25 K51 ["Seat"]
  LOADK R26 K52 ["SpawnLocation"]
  LOADK R27 K53 ["Spotlight"]
  LOADK R28 K54 ["SurfaceLight"]
  LOADK R29 K55 ["Tool"]
  LOADK R30 K56 ["VehicleSeat"]
  SETLIST R15 R16 15 [1]
  DUPCLOSURE R16 K57 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R10
  SETTABLEKS R16 R9 K58 ["getControls"]
  DUPCLOSURE R16 K59 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R11
  SETTABLEKS R16 R9 K60 ["render"]
  MOVE R16 R8
  DUPTABLE R17 K63 [{"Localization", "Stylizer"}]
  GETTABLEKS R18 R7 K61 ["Localization"]
  SETTABLEKS R18 R17 K61 ["Localization"]
  GETTABLEKS R18 R7 K62 ["Stylizer"]
  SETTABLEKS R18 R17 K62 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R9
  CALL R16 1 1
  MOVE R9 R16
  RETURN R9 1
