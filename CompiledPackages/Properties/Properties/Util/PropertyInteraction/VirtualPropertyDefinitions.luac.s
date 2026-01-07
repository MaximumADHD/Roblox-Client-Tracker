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
  GETTABLEKS R6 R0 K6 ["Util"]
  GETTABLEKS R5 R6 K7 ["PropertyInteraction"]
  GETTABLEKS R4 R5 K11 ["PropertyId"]
  GETTABLEKS R3 R4 K12 ["fromClass"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Util"]
  GETTABLEKS R5 R6 K7 ["PropertyInteraction"]
  GETTABLEKS R4 R5 K13 ["PropertyInfo"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R0 K14 ["PropertyTypes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R10 R0 K6 ["Util"]
  GETTABLEKS R9 R10 K7 ["PropertyInteraction"]
  GETTABLEKS R8 R9 K8 ["Interactors"]
  GETTABLEKS R7 R8 K9 ["VirtualInteractor"]
  GETTABLEKS R6 R7 K15 ["VirtualPropertyDataTypes"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R11 R0 K6 ["Util"]
  GETTABLEKS R10 R11 K7 ["PropertyInteraction"]
  GETTABLEKS R9 R10 K8 ["Interactors"]
  GETTABLEKS R8 R9 K9 ["VirtualInteractor"]
  GETTABLEKS R7 R8 K16 ["createCombinedColor"]
  CALL R6 1 1
  NEWTABLE R7 32 0
  MOVE R8 R2
  LOADK R9 K17 ["Self"]
  LOADK R10 K18 ["Instance"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K23 ["fromInstanceRefType"]
  LOADB R11 1
  LOADK R12 K18 ["Instance"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  SETTABLEKS R1 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K24 ["CombinedColor"]
  LOADK R10 K25 ["BasePart"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K27 ["Color"]
  LOADK R13 K25 ["BasePart"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K29 ["BrickColor"]
  LOADK R14 K25 ["BasePart"]
  LOADK R15 K28 ["Property"]
  CALL R12 3 1
  MOVE R13 R2
  LOADK R14 K30 ["Transparency"]
  LOADK R15 K25 ["BasePart"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K31 ["CombinedHeadColor"]
  LOADK R10 K32 ["BodyColors"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K33 ["HeadColor3"]
  LOADK R13 K32 ["BodyColors"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K34 ["HeadColor"]
  LOADK R14 K32 ["BodyColors"]
  LOADK R15 K28 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K35 ["CombinedLeftArmColor"]
  LOADK R10 K32 ["BodyColors"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K36 ["LeftArmColor3"]
  LOADK R13 K32 ["BodyColors"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K37 ["LeftArmColor"]
  LOADK R14 K32 ["BodyColors"]
  LOADK R15 K28 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K38 ["CombinedLeftLegColor"]
  LOADK R10 K32 ["BodyColors"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K39 ["LeftLegColor3"]
  LOADK R13 K32 ["BodyColors"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K40 ["LeftLegColor"]
  LOADK R14 K32 ["BodyColors"]
  LOADK R15 K28 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K41 ["CombinedRightArmColor"]
  LOADK R10 K32 ["BodyColors"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K42 ["RightArmColor3"]
  LOADK R13 K32 ["BodyColors"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K43 ["RightArmColor"]
  LOADK R14 K32 ["BodyColors"]
  LOADK R15 K28 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K44 ["CombinedRightLegColor"]
  LOADK R10 K32 ["BodyColors"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K45 ["RightLegColor3"]
  LOADK R13 K32 ["BodyColors"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K46 ["RightLegColor"]
  LOADK R14 K32 ["BodyColors"]
  LOADK R15 K28 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K47 ["CombinedTorsoColor"]
  LOADK R10 K32 ["BodyColors"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K48 ["TorsoColor3"]
  LOADK R13 K32 ["BodyColors"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K49 ["TorsoColor"]
  LOADK R14 K32 ["BodyColors"]
  LOADK R15 K28 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K50 ["CombinedFillColor"]
  LOADK R10 K51 ["Highlight"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K52 ["FillColor"]
  LOADK R13 K51 ["Highlight"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K53 ["FillTransparency"]
  LOADK R15 K51 ["Highlight"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K54 ["CombinedOutlineColor"]
  LOADK R10 K51 ["Highlight"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K55 ["OutlineColor"]
  LOADK R13 K51 ["Highlight"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K56 ["OutlineTransparency"]
  LOADK R15 K51 ["Highlight"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K57 ["CombinedBackgroundColor"]
  LOADK R10 K58 ["GuiObject"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K59 ["BackgroundColor3"]
  LOADK R13 K58 ["GuiObject"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K60 ["BackgroundTransparency"]
  LOADK R15 K58 ["GuiObject"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K61 ["CombinedImageColor"]
  LOADK R10 K62 ["ImageButton"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K63 ["ImageColor3"]
  LOADK R13 K62 ["ImageButton"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K64 ["ImageTransparency"]
  LOADK R15 K62 ["ImageButton"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K61 ["CombinedImageColor"]
  LOADK R10 K65 ["ImageLabel"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K63 ["ImageColor3"]
  LOADK R13 K65 ["ImageLabel"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K64 ["ImageTransparency"]
  LOADK R15 K65 ["ImageLabel"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K66 ["CombinedTextColor"]
  LOADK R10 K67 ["TextBox"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K68 ["TextColor3"]
  LOADK R13 K67 ["TextBox"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K69 ["TextTransparency"]
  LOADK R15 K67 ["TextBox"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K70 ["CombinedTextStrokeColor"]
  LOADK R10 K67 ["TextBox"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K71 ["TextStrokeColor3"]
  LOADK R13 K67 ["TextBox"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K72 ["TextStrokeTransparency"]
  LOADK R15 K67 ["TextBox"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K66 ["CombinedTextColor"]
  LOADK R10 K73 ["TextButton"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K68 ["TextColor3"]
  LOADK R13 K73 ["TextButton"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K69 ["TextTransparency"]
  LOADK R15 K73 ["TextButton"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K70 ["CombinedTextStrokeColor"]
  LOADK R10 K73 ["TextButton"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K71 ["TextStrokeColor3"]
  LOADK R13 K73 ["TextButton"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K72 ["TextStrokeTransparency"]
  LOADK R15 K73 ["TextButton"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K66 ["CombinedTextColor"]
  LOADK R10 K74 ["TextLabel"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K68 ["TextColor3"]
  LOADK R13 K74 ["TextLabel"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K69 ["TextTransparency"]
  LOADK R15 K74 ["TextLabel"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K70 ["CombinedTextStrokeColor"]
  LOADK R10 K74 ["TextLabel"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K24 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K71 ["TextStrokeColor3"]
  LOADK R13 K74 ["TextLabel"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K72 ["TextStrokeTransparency"]
  LOADK R15 K74 ["TextLabel"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  RETURN R7 1
