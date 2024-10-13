MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["StudioUri"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K10 ["fromAction"]
  GETTABLEKS R4 R1 K11 ["fromSetting"]
  NEWTABLE R5 0 25
  DUPTABLE R6 K15 [{"Id", "Type", "Action"}]
  LOADK R7 K16 ["Select"]
  SETTABLEKS R7 R6 K12 ["Id"]
  LOADK R7 K17 ["IconButton"]
  SETTABLEKS R7 R6 K13 ["Type"]
  MOVE R7 R3
  LOADK R8 K18 ["BuilderTools"]
  LOADK R9 K16 ["Select"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Action"]
  DUPTABLE R7 K15 [{"Id", "Type", "Action"}]
  LOADK R8 K19 ["Move"]
  SETTABLEKS R8 R7 K12 ["Id"]
  LOADK R8 K17 ["IconButton"]
  SETTABLEKS R8 R7 K13 ["Type"]
  MOVE R8 R3
  LOADK R9 K18 ["BuilderTools"]
  LOADK R10 K19 ["Move"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["Action"]
  DUPTABLE R8 K15 [{"Id", "Type", "Action"}]
  LOADK R9 K20 ["Scale"]
  SETTABLEKS R9 R8 K12 ["Id"]
  LOADK R9 K17 ["IconButton"]
  SETTABLEKS R9 R8 K13 ["Type"]
  MOVE R9 R3
  LOADK R10 K18 ["BuilderTools"]
  LOADK R11 K20 ["Scale"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["Action"]
  DUPTABLE R9 K15 [{"Id", "Type", "Action"}]
  LOADK R10 K21 ["Rotate"]
  SETTABLEKS R10 R9 K12 ["Id"]
  LOADK R10 K17 ["IconButton"]
  SETTABLEKS R10 R9 K13 ["Type"]
  MOVE R10 R3
  LOADK R11 K18 ["BuilderTools"]
  LOADK R12 K21 ["Rotate"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["Action"]
  DUPTABLE R10 K15 [{"Id", "Type", "Action"}]
  LOADK R11 K22 ["Transform"]
  SETTABLEKS R11 R10 K12 ["Id"]
  LOADK R11 K17 ["IconButton"]
  SETTABLEKS R11 R10 K13 ["Type"]
  MOVE R11 R3
  LOADK R12 K18 ["BuilderTools"]
  LOADK R13 K22 ["Transform"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Action"]
  DUPTABLE R11 K24 [{"Type", "Size"}]
  LOADK R12 K25 ["Separator"]
  SETTABLEKS R12 R11 K13 ["Type"]
  LOADK R12 K26 ["Large"]
  SETTABLEKS R12 R11 K23 ["Size"]
  DUPTABLE R12 K29 [{"Id", "Type", "Setting", "Children"}]
  LOADK R13 K30 ["DraggerMode"]
  SETTABLEKS R13 R12 K12 ["Id"]
  LOADK R13 K31 ["SplitButton"]
  SETTABLEKS R13 R12 K13 ["Type"]
  MOVE R13 R4
  LOADK R14 K18 ["BuilderTools"]
  LOADK R15 K30 ["DraggerMode"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K27 ["Setting"]
  NEWTABLE R13 0 1
  DUPTABLE R14 K33 [{"Type", "Tags", "Children"}]
  LOADK R15 K34 ["Column"]
  SETTABLEKS R15 R14 K13 ["Type"]
  LOADK R15 K35 ["X-ColumnSpace100"]
  SETTABLEKS R15 R14 K32 ["Tags"]
  NEWTABLE R15 0 3
  DUPTABLE R16 K36 [{"Id", "Type", "Setting"}]
  LOADK R17 K30 ["DraggerMode"]
  SETTABLEKS R17 R16 K12 ["Id"]
  LOADK R17 K37 ["SegmentedButton"]
  SETTABLEKS R17 R16 K13 ["Type"]
  MOVE R17 R4
  LOADK R18 K18 ["BuilderTools"]
  LOADK R19 K30 ["DraggerMode"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K27 ["Setting"]
  DUPTABLE R17 K36 [{"Id", "Type", "Setting"}]
  LOADK R18 K38 ["Collisions"]
  SETTABLEKS R18 R17 K12 ["Id"]
  LOADK R18 K39 ["Checkbox"]
  SETTABLEKS R18 R17 K13 ["Type"]
  MOVE R18 R4
  LOADK R19 K18 ["BuilderTools"]
  LOADK R20 K38 ["Collisions"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K27 ["Setting"]
  DUPTABLE R18 K36 [{"Id", "Type", "Setting"}]
  LOADK R19 K40 ["JoinSurfaces"]
  SETTABLEKS R19 R18 K12 ["Id"]
  LOADK R19 K39 ["Checkbox"]
  SETTABLEKS R19 R18 K13 ["Type"]
  MOVE R19 R4
  LOADK R20 K18 ["BuilderTools"]
  LOADK R21 K40 ["JoinSurfaces"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K27 ["Setting"]
  SETLIST R15 R16 3 [1]
  SETTABLEKS R15 R14 K28 ["Children"]
  SETLIST R13 R14 1 [1]
  SETTABLEKS R13 R12 K28 ["Children"]
  DUPTABLE R13 K33 [{"Type", "Tags", "Children"}]
  LOADK R14 K41 ["Row"]
  SETTABLEKS R14 R13 K13 ["Type"]
  LOADK R14 K42 ["X-RowSpace200"]
  SETTABLEKS R14 R13 K32 ["Tags"]
  NEWTABLE R14 0 2
  DUPTABLE R15 K33 [{"Type", "Tags", "Children"}]
  LOADK R16 K34 ["Column"]
  SETTABLEKS R16 R15 K13 ["Type"]
  LOADK R16 K35 ["X-ColumnSpace100"]
  SETTABLEKS R16 R15 K32 ["Tags"]
  NEWTABLE R16 0 2
  DUPTABLE R17 K36 [{"Id", "Type", "Setting"}]
  LOADK R18 K43 ["MoveGrid"]
  SETTABLEKS R18 R17 K12 ["Id"]
  LOADK R18 K39 ["Checkbox"]
  SETTABLEKS R18 R17 K13 ["Type"]
  MOVE R18 R4
  LOADK R19 K18 ["BuilderTools"]
  LOADK R20 K43 ["MoveGrid"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K27 ["Setting"]
  DUPTABLE R18 K36 [{"Id", "Type", "Setting"}]
  LOADK R19 K44 ["RotateGrid"]
  SETTABLEKS R19 R18 K12 ["Id"]
  LOADK R19 K39 ["Checkbox"]
  SETTABLEKS R19 R18 K13 ["Type"]
  MOVE R19 R4
  LOADK R20 K18 ["BuilderTools"]
  LOADK R21 K44 ["RotateGrid"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K27 ["Setting"]
  SETLIST R16 R17 2 [1]
  SETTABLEKS R16 R15 K28 ["Children"]
  DUPTABLE R16 K33 [{"Type", "Tags", "Children"}]
  LOADK R17 K34 ["Column"]
  SETTABLEKS R17 R16 K13 ["Type"]
  LOADK R17 K35 ["X-ColumnSpace100"]
  SETTABLEKS R17 R16 K32 ["Tags"]
  NEWTABLE R17 0 2
  DUPTABLE R18 K36 [{"Id", "Type", "Setting"}]
  LOADK R19 K45 ["MoveGridSize"]
  SETTABLEKS R19 R18 K12 ["Id"]
  LOADK R19 K46 ["Spinbox"]
  SETTABLEKS R19 R18 K13 ["Type"]
  MOVE R19 R4
  LOADK R20 K18 ["BuilderTools"]
  LOADK R21 K45 ["MoveGridSize"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K27 ["Setting"]
  DUPTABLE R19 K36 [{"Id", "Type", "Setting"}]
  LOADK R20 K47 ["RotateGridSize"]
  SETTABLEKS R20 R19 K12 ["Id"]
  LOADK R20 K46 ["Spinbox"]
  SETTABLEKS R20 R19 K13 ["Type"]
  MOVE R20 R4
  LOADK R21 K18 ["BuilderTools"]
  LOADK R22 K47 ["RotateGridSize"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K27 ["Setting"]
  SETLIST R17 R18 2 [1]
  SETTABLEKS R17 R16 K28 ["Children"]
  SETLIST R14 R15 2 [1]
  SETTABLEKS R14 R13 K28 ["Children"]
  DUPTABLE R14 K24 [{"Type", "Size"}]
  LOADK R15 K25 ["Separator"]
  SETTABLEKS R15 R14 K13 ["Type"]
  LOADK R15 K26 ["Large"]
  SETTABLEKS R15 R14 K23 ["Size"]
  DUPTABLE R15 K50 [{"Id", "Type", "DefaultAction", "Setting", "ShowSettingOptions"}]
  LOADK R16 K51 ["Part"]
  SETTABLEKS R16 R15 K12 ["Id"]
  LOADK R16 K31 ["SplitButton"]
  SETTABLEKS R16 R15 K13 ["Type"]
  MOVE R16 R3
  LOADK R17 K18 ["BuilderTools"]
  LOADK R18 K52 ["Insert/Block"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K48 ["DefaultAction"]
  MOVE R16 R4
  LOADK R17 K18 ["BuilderTools"]
  LOADK R18 K53 ["PartShape"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K27 ["Setting"]
  LOADB R16 1
  SETTABLEKS R16 R15 K49 ["ShowSettingOptions"]
  DUPTABLE R16 K15 [{"Id", "Type", "Action"}]
  LOADK R17 K54 ["Terrain"]
  SETTABLEKS R17 R16 K12 ["Id"]
  LOADK R17 K17 ["IconButton"]
  SETTABLEKS R17 R16 K13 ["Type"]
  MOVE R17 R3
  LOADK R18 K55 ["TerrainTools"]
  LOADK R19 K56 ["Toggle"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K14 ["Action"]
  DUPTABLE R17 K15 [{"Id", "Type", "Action"}]
  LOADK R18 K57 ["Character"]
  SETTABLEKS R18 R17 K12 ["Id"]
  LOADK R18 K17 ["IconButton"]
  SETTABLEKS R18 R17 K13 ["Type"]
  MOVE R18 R3
  LOADK R19 K57 ["Character"]
  LOADK R20 K56 ["Toggle"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K14 ["Action"]
  DUPTABLE R18 K58 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R19 K59 ["GUI"]
  SETTABLEKS R19 R18 K12 ["Id"]
  LOADK R19 K31 ["SplitButton"]
  SETTABLEKS R19 R18 K13 ["Type"]
  MOVE R19 R4
  LOADK R20 K18 ["BuilderTools"]
  LOADK R21 K60 ["InsertGui"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K27 ["Setting"]
  MOVE R19 R3
  LOADK R20 K18 ["BuilderTools"]
  LOADK R21 K61 ["Insert/ScreenGui"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K48 ["DefaultAction"]
  LOADB R19 1
  SETTABLEKS R19 R18 K49 ["ShowSettingOptions"]
  DUPTABLE R19 K58 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R20 K62 ["Script"]
  SETTABLEKS R20 R19 K12 ["Id"]
  LOADK R20 K31 ["SplitButton"]
  SETTABLEKS R20 R19 K13 ["Type"]
  MOVE R20 R4
  LOADK R21 K63 ["ScriptTools"]
  LOADK R22 K64 ["CreateScript"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K27 ["Setting"]
  MOVE R20 R3
  LOADK R21 K63 ["ScriptTools"]
  LOADK R22 K65 ["Insert/Script"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K48 ["DefaultAction"]
  LOADB R20 1
  SETTABLEKS R20 R19 K49 ["ShowSettingOptions"]
  DUPTABLE R20 K24 [{"Type", "Size"}]
  LOADK R21 K25 ["Separator"]
  SETTABLEKS R21 R20 K13 ["Type"]
  LOADK R21 K26 ["Large"]
  SETTABLEKS R21 R20 K23 ["Size"]
  DUPTABLE R21 K15 [{"Id", "Type", "Action"}]
  LOADK R22 K66 ["Material"]
  SETTABLEKS R22 R21 K12 ["Id"]
  LOADK R22 K17 ["IconButton"]
  SETTABLEKS R22 R21 K13 ["Type"]
  MOVE R22 R3
  LOADK R23 K67 ["MaterialManager"]
  LOADK R24 K56 ["Toggle"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K14 ["Action"]
  SETLIST R5 R6 16 [1]
  DUPTABLE R6 K69 [{"Id", "Type", "Action", "FastFlag"}]
  LOADK R7 K70 ["Color"]
  SETTABLEKS R7 R6 K12 ["Id"]
  LOADK R7 K17 ["IconButton"]
  SETTABLEKS R7 R6 K13 ["Type"]
  MOVE R7 R3
  LOADK R8 K18 ["BuilderTools"]
  LOADK R9 K71 ["SelectColor"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Action"]
  LOADK R7 K72 ["!ColorPickerSplitButton"]
  SETTABLEKS R7 R6 K68 ["FastFlag"]
  DUPTABLE R7 K75 [{"Id", "Type", "Action", "ChildAction", "FastFlag", "DEPRECATED_FastFlag"}]
  LOADK R8 K70 ["Color"]
  SETTABLEKS R8 R7 K12 ["Id"]
  LOADK R8 K31 ["SplitButton"]
  SETTABLEKS R8 R7 K13 ["Type"]
  MOVE R8 R3
  LOADK R9 K18 ["BuilderTools"]
  LOADK R10 K76 ["ApplyColor"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["Action"]
  MOVE R8 R3
  LOADK R9 K18 ["BuilderTools"]
  LOADK R10 K71 ["SelectColor"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K73 ["ChildAction"]
  LOADK R8 K77 ["ColorPickerSplitButton"]
  SETTABLEKS R8 R7 K68 ["FastFlag"]
  LOADK R8 K77 ["ColorPickerSplitButton"]
  SETTABLEKS R8 R7 K74 ["DEPRECATED_FastFlag"]
  DUPTABLE R8 K58 [{"Id", "Type", "Setting", "DefaultAction", "ShowSettingOptions"}]
  LOADK R9 K78 ["Group"]
  SETTABLEKS R9 R8 K12 ["Id"]
  LOADK R9 K31 ["SplitButton"]
  SETTABLEKS R9 R8 K13 ["Type"]
  MOVE R9 R4
  LOADK R10 K18 ["BuilderTools"]
  LOADK R11 K78 ["Group"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K27 ["Setting"]
  MOVE R9 R3
  LOADK R10 K18 ["BuilderTools"]
  LOADK R11 K79 ["GroupAsModel"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K48 ["DefaultAction"]
  LOADB R9 1
  SETTABLEKS R9 R8 K49 ["ShowSettingOptions"]
  DUPTABLE R9 K80 [{"Id", "Type", "Action", "Children"}]
  LOADK R10 K81 ["Lock"]
  SETTABLEKS R10 R9 K12 ["Id"]
  LOADK R10 K31 ["SplitButton"]
  SETTABLEKS R10 R9 K13 ["Type"]
  MOVE R10 R3
  LOADK R11 K18 ["BuilderTools"]
  LOADK R12 K81 ["Lock"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["Action"]
  NEWTABLE R10 0 1
  DUPTABLE R11 K82 [{"Type", "Children"}]
  LOADK R12 K41 ["Row"]
  SETTABLEKS R12 R11 K13 ["Type"]
  NEWTABLE R12 0 1
  DUPTABLE R13 K15 [{"Id", "Type", "Action"}]
  LOADK R14 K83 ["LockMode"]
  SETTABLEKS R14 R13 K12 ["Id"]
  LOADK R14 K84 ["RibbonToggle"]
  SETTABLEKS R14 R13 K13 ["Type"]
  MOVE R14 R3
  LOADK R15 K18 ["BuilderTools"]
  LOADK R16 K83 ["LockMode"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["Action"]
  SETLIST R12 R13 1 [1]
  SETTABLEKS R12 R11 K28 ["Children"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K28 ["Children"]
  DUPTABLE R10 K80 [{"Id", "Type", "Action", "Children"}]
  LOADK R11 K85 ["Anchor"]
  SETTABLEKS R11 R10 K12 ["Id"]
  LOADK R11 K31 ["SplitButton"]
  SETTABLEKS R11 R10 K13 ["Type"]
  MOVE R11 R3
  LOADK R12 K18 ["BuilderTools"]
  LOADK R13 K85 ["Anchor"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Action"]
  NEWTABLE R11 0 1
  DUPTABLE R12 K82 [{"Type", "Children"}]
  LOADK R13 K41 ["Row"]
  SETTABLEKS R13 R12 K13 ["Type"]
  NEWTABLE R13 0 1
  DUPTABLE R14 K15 [{"Id", "Type", "Action"}]
  LOADK R15 K86 ["AnchorMode"]
  SETTABLEKS R15 R14 K12 ["Id"]
  LOADK R15 K84 ["RibbonToggle"]
  SETTABLEKS R15 R14 K13 ["Type"]
  MOVE R15 R3
  LOADK R16 K18 ["BuilderTools"]
  LOADK R17 K86 ["AnchorMode"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K14 ["Action"]
  SETLIST R13 R14 1 [1]
  SETTABLEKS R13 R12 K28 ["Children"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K28 ["Children"]
  DUPTABLE R11 K24 [{"Type", "Size"}]
  LOADK R12 K25 ["Separator"]
  SETTABLEKS R12 R11 K13 ["Type"]
  LOADK R12 K26 ["Large"]
  SETTABLEKS R12 R11 K23 ["Size"]
  DUPTABLE R12 K15 [{"Id", "Type", "Action"}]
  LOADK R13 K87 ["Explorer"]
  SETTABLEKS R13 R12 K12 ["Id"]
  LOADK R13 K17 ["IconButton"]
  SETTABLEKS R13 R12 K13 ["Type"]
  MOVE R13 R3
  LOADK R14 K87 ["Explorer"]
  LOADK R15 K56 ["Toggle"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["Action"]
  DUPTABLE R13 K15 [{"Id", "Type", "Action"}]
  LOADK R14 K88 ["Properties"]
  SETTABLEKS R14 R13 K12 ["Id"]
  LOADK R14 K17 ["IconButton"]
  SETTABLEKS R14 R13 K13 ["Type"]
  MOVE R14 R3
  LOADK R15 K88 ["Properties"]
  LOADK R16 K56 ["Toggle"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["Action"]
  DUPTABLE R14 K15 [{"Id", "Type", "Action"}]
  LOADK R22 K89 ["Toolbox"]
  SETTABLEKS R22 R14 K12 ["Id"]
  LOADK R22 K17 ["IconButton"]
  SETTABLEKS R22 R14 K13 ["Type"]
  MOVE R22 R3
  LOADK R23 K89 ["Toolbox"]
  LOADK R24 K56 ["Toggle"]
  CALL R22 2 1
  SETTABLEKS R22 R14 K14 ["Action"]
  SETLIST R5 R6 9 [17]
  RETURN R5 1
