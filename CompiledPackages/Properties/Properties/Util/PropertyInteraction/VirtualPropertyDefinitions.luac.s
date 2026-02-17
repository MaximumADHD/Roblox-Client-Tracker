MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R6 R0 K6 ["Util"]
  GETTABLEKS R5 R6 K7 ["PropertyInteraction"]
  GETTABLEKS R4 R5 K8 ["Interactors"]
  GETTABLEKS R3 R4 K9 ["VirtualInteractor"]
  GETTABLEKS R2 R3 K10 ["InstanceSelf"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R7 R0 K6 ["Util"]
  GETTABLEKS R6 R7 K7 ["PropertyInteraction"]
  GETTABLEKS R5 R6 K8 ["Interactors"]
  GETTABLEKS R4 R5 K9 ["VirtualInteractor"]
  GETTABLEKS R3 R4 K11 ["MeshId"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["Util"]
  GETTABLEKS R6 R7 K7 ["PropertyInteraction"]
  GETTABLEKS R5 R6 K12 ["PropertyId"]
  GETTABLEKS R4 R5 K13 ["fromClass"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Util"]
  GETTABLEKS R6 R7 K7 ["PropertyInteraction"]
  GETTABLEKS R5 R6 K14 ["PropertyInfo"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R0 K15 ["PropertyTypes"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R11 R0 K6 ["Util"]
  GETTABLEKS R10 R11 K7 ["PropertyInteraction"]
  GETTABLEKS R9 R10 K8 ["Interactors"]
  GETTABLEKS R8 R9 K9 ["VirtualInteractor"]
  GETTABLEKS R7 R8 K16 ["VirtualPropertyDataTypes"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R12 R0 K6 ["Util"]
  GETTABLEKS R11 R12 K7 ["PropertyInteraction"]
  GETTABLEKS R10 R11 K8 ["Interactors"]
  GETTABLEKS R9 R10 K9 ["VirtualInteractor"]
  GETTABLEKS R8 R9 K17 ["createCombinedColor"]
  CALL R7 1 1
  NEWTABLE R8 32 0
  MOVE R9 R3
  LOADK R10 K18 ["Self"]
  LOADK R11 K19 ["Instance"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K24 ["fromInstanceRefType"]
  LOADB R12 1
  LOADK R13 K19 ["Instance"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  SETTABLEKS R1 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K11 ["MeshId"]
  LOADK R11 K25 ["MeshPart"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K27 ["string"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  SETTABLEKS R2 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K28 ["CombinedColor"]
  LOADK R11 K29 ["BasePart"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K30 ["Color"]
  LOADK R14 K29 ["BasePart"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  MOVE R13 R3
  LOADK R14 K32 ["BrickColor"]
  LOADK R15 K29 ["BasePart"]
  LOADK R16 K31 ["Property"]
  CALL R13 3 1
  MOVE R14 R3
  LOADK R15 K33 ["Transparency"]
  LOADK R16 K29 ["BasePart"]
  LOADK R17 K31 ["Property"]
  CALL R14 3 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K34 ["CombinedHeadColor"]
  LOADK R11 K35 ["BodyColors"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K36 ["HeadColor3"]
  LOADK R14 K35 ["BodyColors"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  MOVE R13 R3
  LOADK R14 K37 ["HeadColor"]
  LOADK R15 K35 ["BodyColors"]
  LOADK R16 K31 ["Property"]
  CALL R13 3 1
  LOADNIL R14
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K38 ["CombinedLeftArmColor"]
  LOADK R11 K35 ["BodyColors"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K39 ["LeftArmColor3"]
  LOADK R14 K35 ["BodyColors"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  MOVE R13 R3
  LOADK R14 K40 ["LeftArmColor"]
  LOADK R15 K35 ["BodyColors"]
  LOADK R16 K31 ["Property"]
  CALL R13 3 1
  LOADNIL R14
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K41 ["CombinedLeftLegColor"]
  LOADK R11 K35 ["BodyColors"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K42 ["LeftLegColor3"]
  LOADK R14 K35 ["BodyColors"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  MOVE R13 R3
  LOADK R14 K43 ["LeftLegColor"]
  LOADK R15 K35 ["BodyColors"]
  LOADK R16 K31 ["Property"]
  CALL R13 3 1
  LOADNIL R14
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K44 ["CombinedRightArmColor"]
  LOADK R11 K35 ["BodyColors"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K45 ["RightArmColor3"]
  LOADK R14 K35 ["BodyColors"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  MOVE R13 R3
  LOADK R14 K46 ["RightArmColor"]
  LOADK R15 K35 ["BodyColors"]
  LOADK R16 K31 ["Property"]
  CALL R13 3 1
  LOADNIL R14
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K47 ["CombinedRightLegColor"]
  LOADK R11 K35 ["BodyColors"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K48 ["RightLegColor3"]
  LOADK R14 K35 ["BodyColors"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  MOVE R13 R3
  LOADK R14 K49 ["RightLegColor"]
  LOADK R15 K35 ["BodyColors"]
  LOADK R16 K31 ["Property"]
  CALL R13 3 1
  LOADNIL R14
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K50 ["CombinedTorsoColor"]
  LOADK R11 K35 ["BodyColors"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K51 ["TorsoColor3"]
  LOADK R14 K35 ["BodyColors"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  MOVE R13 R3
  LOADK R14 K52 ["TorsoColor"]
  LOADK R15 K35 ["BodyColors"]
  LOADK R16 K31 ["Property"]
  CALL R13 3 1
  LOADNIL R14
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K53 ["CombinedFillColor"]
  LOADK R11 K54 ["Highlight"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K55 ["FillColor"]
  LOADK R14 K54 ["Highlight"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  MOVE R14 R3
  LOADK R15 K56 ["FillTransparency"]
  LOADK R16 K54 ["Highlight"]
  LOADK R17 K31 ["Property"]
  CALL R14 3 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K57 ["CombinedOutlineColor"]
  LOADK R11 K54 ["Highlight"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K58 ["OutlineColor"]
  LOADK R14 K54 ["Highlight"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  MOVE R14 R3
  LOADK R15 K59 ["OutlineTransparency"]
  LOADK R16 K54 ["Highlight"]
  LOADK R17 K31 ["Property"]
  CALL R14 3 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K60 ["CombinedBackgroundColor"]
  LOADK R11 K61 ["GuiObject"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K62 ["BackgroundColor3"]
  LOADK R14 K61 ["GuiObject"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  MOVE R13 R3
  LOADK R14 K63 ["BackgroundColor"]
  LOADK R15 K61 ["GuiObject"]
  LOADK R16 K31 ["Property"]
  CALL R13 3 1
  MOVE R14 R3
  LOADK R15 K64 ["BackgroundTransparency"]
  LOADK R16 K61 ["GuiObject"]
  LOADK R17 K31 ["Property"]
  CALL R14 3 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K65 ["CombinedImageColor"]
  LOADK R11 K66 ["ImageButton"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K67 ["ImageColor3"]
  LOADK R14 K66 ["ImageButton"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  MOVE R14 R3
  LOADK R15 K68 ["ImageTransparency"]
  LOADK R16 K66 ["ImageButton"]
  LOADK R17 K31 ["Property"]
  CALL R14 3 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K65 ["CombinedImageColor"]
  LOADK R11 K69 ["ImageLabel"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K67 ["ImageColor3"]
  LOADK R14 K69 ["ImageLabel"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  MOVE R14 R3
  LOADK R15 K68 ["ImageTransparency"]
  LOADK R16 K69 ["ImageLabel"]
  LOADK R17 K31 ["Property"]
  CALL R14 3 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K70 ["CombinedTextColor"]
  LOADK R11 K71 ["TextBox"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K72 ["TextColor3"]
  LOADK R14 K71 ["TextBox"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  MOVE R14 R3
  LOADK R15 K73 ["TextTransparency"]
  LOADK R16 K71 ["TextBox"]
  LOADK R17 K31 ["Property"]
  CALL R14 3 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K74 ["CombinedTextStrokeColor"]
  LOADK R11 K71 ["TextBox"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K75 ["TextStrokeColor3"]
  LOADK R14 K71 ["TextBox"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  MOVE R14 R3
  LOADK R15 K76 ["TextStrokeTransparency"]
  LOADK R16 K71 ["TextBox"]
  LOADK R17 K31 ["Property"]
  CALL R14 3 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K70 ["CombinedTextColor"]
  LOADK R11 K77 ["TextButton"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K72 ["TextColor3"]
  LOADK R14 K77 ["TextButton"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  MOVE R14 R3
  LOADK R15 K73 ["TextTransparency"]
  LOADK R16 K77 ["TextButton"]
  LOADK R17 K31 ["Property"]
  CALL R14 3 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K74 ["CombinedTextStrokeColor"]
  LOADK R11 K77 ["TextButton"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K75 ["TextStrokeColor3"]
  LOADK R14 K77 ["TextButton"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  MOVE R14 R3
  LOADK R15 K76 ["TextStrokeTransparency"]
  LOADK R16 K77 ["TextButton"]
  LOADK R17 K31 ["Property"]
  CALL R14 3 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K70 ["CombinedTextColor"]
  LOADK R11 K78 ["TextLabel"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K72 ["TextColor3"]
  LOADK R14 K78 ["TextLabel"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  MOVE R14 R3
  LOADK R15 K73 ["TextTransparency"]
  LOADK R16 K78 ["TextLabel"]
  LOADK R17 K31 ["Property"]
  CALL R14 3 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  MOVE R9 R3
  LOADK R10 K74 ["CombinedTextStrokeColor"]
  LOADK R11 K78 ["TextLabel"]
  LOADK R12 K20 ["Virtual"]
  CALL R9 3 1
  DUPTABLE R10 K23 [{"info", "interactor"}]
  GETTABLEKS R11 R4 K26 ["fromType"]
  LOADK R12 K28 ["CombinedColor"]
  LOADB R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["info"]
  MOVE R11 R7
  MOVE R12 R3
  LOADK R13 K75 ["TextStrokeColor3"]
  LOADK R14 K78 ["TextLabel"]
  LOADK R15 K31 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  MOVE R14 R3
  LOADK R15 K76 ["TextStrokeTransparency"]
  LOADK R16 K78 ["TextLabel"]
  LOADK R17 K31 ["Property"]
  CALL R14 3 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K22 ["interactor"]
  SETTABLE R10 R8 R9
  RETURN R8 1
