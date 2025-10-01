PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["View"]
  DUPTABLE R5 K5 [{"tag", "backgroundStyle"}]
  LOADK R6 K6 ["col padding-large size-full gap-small align-x-center align-y-top"]
  SETTABLEKS R6 R5 K3 ["tag"]
  DUPTABLE R6 K9 [{"Color3", "Transparency"}]
  GETTABLEKS R8 R2 K10 ["Name"]
  JUMPIFNOTEQKS R8 K11 ["Dark"] [+6]
  GETIMPORT R7 K13 [Color3.fromHex]
  LOADK R8 K14 ["#2C2C2C"]
  CALL R7 1 1
  JUMP [+4]
  GETIMPORT R7 K13 [Color3.fromHex]
  LOADK R8 K15 ["#FFFFFF"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K7 ["Color3"]
  LOADK R7 K16 [0.1]
  SETTABLEKS R7 R6 K8 ["Transparency"]
  SETTABLEKS R6 R5 K4 ["backgroundStyle"]
  DUPTABLE R6 K19 [{"Information", "Buttons"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K2 ["View"]
  DUPTABLE R9 K21 [{"tag", "LayoutOrder"}]
  LOADK R10 K22 ["row margin-top-small margin-left-large margin-right-large size-full-2000 gap-small align-x-center align-y-top"]
  SETTABLEKS R10 R9 K3 ["tag"]
  LOADN R10 1
  SETTABLEKS R10 R9 K20 ["LayoutOrder"]
  DUPTABLE R10 K25 [{"Icon", "TextLabel"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K23 ["Icon"]
  DUPTABLE R13 K27 [{"name", "tag", "LayoutOrder"}]
  LOADK R14 K28 ["icons/status/warning"]
  SETTABLEKS R14 R13 K26 ["name"]
  LOADK R14 K29 ["size-1000-full"]
  SETTABLEKS R14 R13 K3 ["tag"]
  LOADN R14 0
  SETTABLEKS R14 R13 K20 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["Icon"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K30 ["Text"]
  DUPTABLE R13 K31 [{"tag", "Text"}]
  LOADK R14 K32 ["auto-xy text-body-medium text-wrap text-align-x-left"]
  SETTABLEKS R14 R13 K3 ["tag"]
  GETTABLEKS R14 R0 K30 ["Text"]
  SETTABLEKS R14 R13 K30 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["TextLabel"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K17 ["Information"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K2 ["View"]
  DUPTABLE R9 K21 [{"tag", "LayoutOrder"}]
  LOADK R10 K33 ["row size-full-1000 gap-medium align-y-top align-x-right"]
  SETTABLEKS R10 R9 K3 ["tag"]
  LOADN R10 2
  SETTABLEKS R10 R9 K20 ["LayoutOrder"]
  DUPTABLE R10 K36 [{"Cancel", "Delete"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K37 ["Button"]
  DUPTABLE R13 K42 [{"LayoutOrder", "onActivated", "text", "variant", "size"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K20 ["LayoutOrder"]
  GETTABLEKS R14 R0 K43 ["OnCancel"]
  SETTABLEKS R14 R13 K38 ["onActivated"]
  LOADK R16 K44 ["AddAnnotation"]
  LOADK R17 K34 ["Cancel"]
  NAMECALL R14 R1 K45 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K39 ["text"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K46 ["Enums"]
  GETTABLEKS R15 R16 K47 ["ButtonVariant"]
  GETTABLEKS R14 R15 K48 ["Standard"]
  SETTABLEKS R14 R13 K40 ["variant"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K46 ["Enums"]
  GETTABLEKS R15 R16 K49 ["ButtonSize"]
  GETTABLEKS R14 R15 K50 ["Small"]
  SETTABLEKS R14 R13 K41 ["size"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K34 ["Cancel"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K37 ["Button"]
  DUPTABLE R13 K42 [{"LayoutOrder", "onActivated", "text", "variant", "size"}]
  LOADN R14 2
  SETTABLEKS R14 R13 K20 ["LayoutOrder"]
  GETTABLEKS R14 R0 K51 ["OnDelete"]
  SETTABLEKS R14 R13 K38 ["onActivated"]
  LOADK R16 K52 ["Dropdown"]
  LOADK R17 K35 ["Delete"]
  NAMECALL R14 R1 K45 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K39 ["text"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K46 ["Enums"]
  GETTABLEKS R15 R16 K47 ["ButtonVariant"]
  GETTABLEKS R14 R15 K53 ["Alert"]
  SETTABLEKS R14 R13 K40 ["variant"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K46 ["Enums"]
  GETTABLEKS R15 R16 K49 ["ButtonSize"]
  GETTABLEKS R14 R15 K50 ["Small"]
  SETTABLEKS R14 R13 K41 ["size"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K35 ["Delete"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K18 ["Buttons"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Foundation"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Hooks"]
  GETTABLEKS R7 R8 K14 ["useTheme"]
  CALL R6 1 1
  DUPCLOSURE R7 K15 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R5
  RETURN R7 1
