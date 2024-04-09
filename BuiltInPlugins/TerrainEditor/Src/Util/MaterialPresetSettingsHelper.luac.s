PROTO_0:
  NEWTABLE R2 0 1
  DUPTABLE R3 K3 [{"Id", "Label", "Children"}]
  LOADK R4 K4 ["MaterialSettings"]
  SETTABLEKS R4 R3 K0 ["Id"]
  LOADK R6 K5 ["Category"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["MaterialPresetSettings"]
  NAMECALL R4 R1 K7 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["Label"]
  NEWTABLE R4 0 5
  DUPTABLE R5 K10 [{"Id", "Label", "Schema", "Value"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K11 ["Unit"]
  SETTABLEKS R6 R5 K0 ["Id"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["MaterialPresetSettings"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["Unit"]
  NAMECALL R6 R1 K7 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K1 ["Label"]
  DUPTABLE R6 K14 [{"Items", "Type"}]
  GETUPVAL R7 2
  MOVE R8 R1
  LOADNIL R9
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K15 ["MaterialUnit"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K12 ["Items"]
  LOADK R7 K16 ["Select"]
  SETTABLEKS R7 R6 K13 ["Type"]
  SETTABLEKS R6 R5 K8 ["Schema"]
  GETTABLEKS R6 R0 K11 ["Unit"]
  SETTABLEKS R6 R5 K9 ["Value"]
  DUPTABLE R6 K18 [{"Id", "Label", "Layout", "Schema", "Value"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K19 ["Elevation"]
  SETTABLEKS R7 R6 K0 ["Id"]
  LOADK R7 K20 [""]
  SETTABLEKS R7 R6 K1 ["Label"]
  GETIMPORT R7 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K17 ["Layout"]
  DUPTABLE R7 K25 [{"Type"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K19 ["Elevation"]
  SETTABLEKS R8 R7 K13 ["Type"]
  SETTABLEKS R7 R6 K8 ["Schema"]
  SETTABLEKS R0 R6 K9 ["Value"]
  GETTABLEKS R8 R0 K26 ["MaterialIndex"]
  JUMPIFNOT R8 [+36]
  DUPTABLE R7 K10 [{"Id", "Label", "Schema", "Value"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K27 ["Material"]
  SETTABLEKS R8 R7 K0 ["Id"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["MaterialPresetSettings"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K27 ["Material"]
  NAMECALL R8 R1 K7 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K1 ["Label"]
  DUPTABLE R8 K29 [{"Dropdown", "Type"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K28 ["Dropdown"]
  LOADK R9 K27 ["Material"]
  SETTABLEKS R9 R8 K13 ["Type"]
  SETTABLEKS R8 R7 K8 ["Schema"]
  GETTABLEKS R10 R0 K30 ["MaterialList"]
  GETTABLEKS R11 R0 K26 ["MaterialIndex"]
  GETTABLE R9 R10 R11
  GETTABLEKS R8 R9 K27 ["Material"]
  SETTABLEKS R8 R7 K9 ["Value"]
  JUMP [+1]
  LOADNIL R7
  GETTABLEKS R9 R0 K26 ["MaterialIndex"]
  JUMPIFNOT R9 [+45]
  DUPTABLE R8 K10 [{"Id", "Label", "Schema", "Value"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K31 ["Slope"]
  SETTABLEKS R9 R8 K0 ["Id"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["MaterialPresetSettings"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K31 ["Slope"]
  NAMECALL R9 R1 K7 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K1 ["Label"]
  DUPTABLE R9 K25 [{"Type"}]
  LOADK R10 K31 ["Slope"]
  SETTABLEKS R10 R9 K13 ["Type"]
  SETTABLEKS R9 R8 K8 ["Schema"]
  DUPTABLE R9 K34 [{"Min", "Max"}]
  GETTABLEKS R12 R0 K30 ["MaterialList"]
  GETTABLEKS R13 R0 K26 ["MaterialIndex"]
  GETTABLE R11 R12 R13
  GETTABLEKS R10 R11 K35 ["MinSlope"]
  SETTABLEKS R10 R9 K32 ["Min"]
  GETTABLEKS R12 R0 K30 ["MaterialList"]
  GETTABLEKS R13 R0 K26 ["MaterialIndex"]
  GETTABLE R11 R12 R13
  GETTABLEKS R10 R11 K36 ["MaxSlope"]
  SETTABLEKS R10 R9 K33 ["Max"]
  SETTABLEKS R9 R8 K9 ["Value"]
  JUMP [+1]
  LOADNIL R8
  GETTABLEKS R10 R0 K37 ["FillMaterial"]
  JUMPIFNOT R10 [+31]
  DUPTABLE R9 K10 [{"Id", "Label", "Schema", "Value"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K37 ["FillMaterial"]
  SETTABLEKS R10 R9 K0 ["Id"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["MaterialPresetSettings"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K37 ["FillMaterial"]
  NAMECALL R10 R1 K7 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K1 ["Label"]
  DUPTABLE R10 K29 [{"Dropdown", "Type"}]
  LOADB R11 1
  SETTABLEKS R11 R10 K28 ["Dropdown"]
  LOADK R11 K27 ["Material"]
  SETTABLEKS R11 R10 K13 ["Type"]
  SETTABLEKS R10 R9 K8 ["Schema"]
  GETTABLEKS R10 R0 K37 ["FillMaterial"]
  SETTABLEKS R10 R9 K9 ["Value"]
  JUMP [+1]
  LOADNIL R9
  SETLIST R4 R5 5 [1]
  SETTABLEKS R4 R3 K2 ["Children"]
  SETLIST R2 R3 1 [1]
  RETURN R2 1

PROTO_1:
  GETTABLEN R4 R0 1
  JUMPIFNOT R4 [+3]
  GETTABLEN R5 R0 1
  GETTABLEKS R4 R5 K0 ["Children"]
  FASTCALL2K ASSERT R4 K1 [+4]
  LOADK R5 K1 ["Cannot update from nothing."]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  NEWTABLE R3 0 0
  GETTABLEN R7 R0 1
  GETTABLEKS R4 R7 K0 ["Children"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R8 K4 ["Id"]
  GETTABLEKS R10 R8 K5 ["Value"]
  SETTABLE R10 R3 R9
  FORGLOOP R4 2 [-6]
  GETUPVAL R4 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["Elevation"]
  GETTABLE R5 R3 R6
  CALL R4 1 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["Unit"]
  GETTABLE R5 R3 R6
  GETTABLEKS R6 R4 K7 ["Unit"]
  JUMPIFEQ R6 R5 [+69]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["Stud"]
  JUMPIFNOTEQ R5 R6 [+24]
  GETTABLEKS R6 R4 K9 ["MaterialList"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R12 R10 K10 ["MinHeight"]
  MUL R11 R2 R12
  SETTABLEKS R11 R10 K10 ["MinHeight"]
  GETTABLEKS R12 R10 K11 ["MaxHeight"]
  MUL R11 R2 R12
  SETTABLEKS R11 R10 K11 ["MaxHeight"]
  FORGLOOP R6 2 [-11]
  LOADN R6 0
  SETTABLEKS R6 R4 K12 ["Min"]
  SETTABLEKS R2 R4 K13 ["Max"]
  JUMP [+40]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K14 ["Percentage"]
  JUMPIFNOTEQ R5 R6 [+36]
  GETTABLEKS R6 R4 K9 ["MaterialList"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R13 R10 K10 ["MinHeight"]
  LOADN R14 0
  MOVE R15 R2
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R12 K17 [math.clamp]
  CALL R12 3 1
  DIV R11 R12 R2
  SETTABLEKS R11 R10 K10 ["MinHeight"]
  GETTABLEKS R13 R10 K11 ["MaxHeight"]
  LOADN R14 0
  MOVE R15 R2
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R12 K17 [math.clamp]
  CALL R12 3 1
  DIV R11 R12 R2
  SETTABLEKS R11 R10 K11 ["MaxHeight"]
  FORGLOOP R6 2 [-23]
  LOADN R6 0
  SETTABLEKS R6 R4 K12 ["Min"]
  LOADN R6 1
  SETTABLEKS R6 R4 K13 ["Max"]
  SETTABLEKS R5 R4 K7 ["Unit"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K18 ["FillMaterial"]
  GETTABLE R6 R3 R7
  SETTABLEKS R6 R4 K18 ["FillMaterial"]
  GETTABLEKS R6 R4 K19 ["MaterialIndex"]
  GETTABLEKS R7 R1 K19 ["MaterialIndex"]
  JUMPIFNOTEQ R6 R7 [+36]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K20 ["Material"]
  GETTABLE R6 R3 R7
  JUMPIFNOT R6 [+7]
  GETTABLEKS R8 R4 K9 ["MaterialList"]
  GETTABLEKS R9 R4 K19 ["MaterialIndex"]
  GETTABLE R7 R8 R9
  SETTABLEKS R6 R7 K20 ["Material"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K21 ["Slope"]
  GETTABLE R7 R3 R8
  JUMPIFNOT R7 [+18]
  GETTABLEKS R9 R4 K9 ["MaterialList"]
  GETTABLEKS R10 R4 K19 ["MaterialIndex"]
  GETTABLE R8 R9 R10
  GETTABLEKS R9 R7 K12 ["Min"]
  SETTABLEKS R9 R8 K22 ["MinSlope"]
  GETTABLEKS R9 R4 K9 ["MaterialList"]
  GETTABLEKS R10 R4 K19 ["MaterialIndex"]
  GETTABLE R8 R9 R10
  GETTABLEKS R9 R7 K13 ["Max"]
  SETTABLEKS R9 R8 K23 ["MaxSlope"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["deepCopy"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K11 ["getItems"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["Category"]
  GETTABLEKS R6 R4 K14 ["EnumType"]
  GETTABLEKS R7 R4 K15 ["MaterialPresetSettings"]
  GETTABLEKS R8 R4 K16 ["MaterialUnit"]
  NEWTABLE R9 2 0
  DUPCLOSURE R10 K17 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K18 ["Get"]
  DUPCLOSURE R10 K19 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K20 ["Set"]
  RETURN R9 1
