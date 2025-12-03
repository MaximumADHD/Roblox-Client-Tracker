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
  LOADK R9 K24 ["Color"]
  LOADK R10 K25 ["BasePart"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K24 ["Color"]
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
  LOADK R9 K31 ["HeadColor"]
  LOADK R10 K32 ["BodyColors"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
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
  LOADK R13 K31 ["HeadColor"]
  LOADK R14 K32 ["BodyColors"]
  LOADK R15 K28 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K34 ["LeftArmColor"]
  LOADK R10 K32 ["BodyColors"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K35 ["LeftArmColor3"]
  LOADK R13 K32 ["BodyColors"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K34 ["LeftArmColor"]
  LOADK R14 K32 ["BodyColors"]
  LOADK R15 K28 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K36 ["LeftLegColor"]
  LOADK R10 K32 ["BodyColors"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K37 ["LeftLegColor3"]
  LOADK R13 K32 ["BodyColors"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K36 ["LeftLegColor"]
  LOADK R14 K32 ["BodyColors"]
  LOADK R15 K28 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K38 ["RightArmColor"]
  LOADK R10 K32 ["BodyColors"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K39 ["RightArmColor3"]
  LOADK R13 K32 ["BodyColors"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K38 ["RightArmColor"]
  LOADK R14 K32 ["BodyColors"]
  LOADK R15 K28 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K40 ["RightLegColor"]
  LOADK R10 K32 ["BodyColors"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K41 ["RightLegColor3"]
  LOADK R13 K32 ["BodyColors"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K40 ["RightLegColor"]
  LOADK R14 K32 ["BodyColors"]
  LOADK R15 K28 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K42 ["TorsoColor"]
  LOADK R10 K32 ["BodyColors"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K43 ["TorsoColor3"]
  LOADK R13 K32 ["BodyColors"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  MOVE R12 R2
  LOADK R13 K42 ["TorsoColor"]
  LOADK R14 K32 ["BodyColors"]
  LOADK R15 K28 ["Property"]
  CALL R12 3 1
  LOADNIL R13
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K44 ["FillColor"]
  LOADK R10 K45 ["Highlight"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K44 ["FillColor"]
  LOADK R13 K45 ["Highlight"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K46 ["FillTransparency"]
  LOADK R15 K45 ["Highlight"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K47 ["OutlineColor"]
  LOADK R10 K45 ["Highlight"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K47 ["OutlineColor"]
  LOADK R13 K45 ["Highlight"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K48 ["OutlineTransparency"]
  LOADK R15 K45 ["Highlight"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K49 ["BackgroundColor"]
  LOADK R10 K50 ["GuiObject"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K51 ["BackgroundColor3"]
  LOADK R13 K50 ["GuiObject"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K52 ["BackgroundTransparency"]
  LOADK R15 K50 ["GuiObject"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K53 ["ImageColor"]
  LOADK R10 K54 ["ImageButton"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K55 ["ImageColor3"]
  LOADK R13 K54 ["ImageButton"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K56 ["ImageTransparency"]
  LOADK R15 K54 ["ImageButton"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K53 ["ImageColor"]
  LOADK R10 K57 ["ImageLabel"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K55 ["ImageColor3"]
  LOADK R13 K57 ["ImageLabel"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K56 ["ImageTransparency"]
  LOADK R15 K57 ["ImageLabel"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K58 ["TextColor"]
  LOADK R10 K59 ["TextBox"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K60 ["TextColor3"]
  LOADK R13 K59 ["TextBox"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K61 ["TextTransparency"]
  LOADK R15 K59 ["TextBox"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K62 ["TextStrokeColor"]
  LOADK R10 K59 ["TextBox"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K63 ["TextStrokeColor3"]
  LOADK R13 K59 ["TextBox"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K64 ["TextStrokeTransparency"]
  LOADK R15 K59 ["TextBox"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K58 ["TextColor"]
  LOADK R10 K65 ["TextButton"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K60 ["TextColor3"]
  LOADK R13 K65 ["TextButton"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K61 ["TextTransparency"]
  LOADK R15 K65 ["TextButton"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K62 ["TextStrokeColor"]
  LOADK R10 K65 ["TextButton"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K63 ["TextStrokeColor3"]
  LOADK R13 K65 ["TextButton"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K64 ["TextStrokeTransparency"]
  LOADK R15 K65 ["TextButton"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K58 ["TextColor"]
  LOADK R10 K66 ["TextLabel"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K60 ["TextColor3"]
  LOADK R13 K66 ["TextLabel"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K61 ["TextTransparency"]
  LOADK R15 K66 ["TextLabel"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  MOVE R8 R2
  LOADK R9 K62 ["TextStrokeColor"]
  LOADK R10 K66 ["TextLabel"]
  LOADK R11 K19 ["Virtual"]
  CALL R8 3 1
  DUPTABLE R9 K22 [{"info", "interactor"}]
  GETTABLEKS R10 R3 K26 ["fromType"]
  LOADK R11 K27 ["CombinedColor"]
  LOADB R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["info"]
  MOVE R10 R6
  MOVE R11 R2
  LOADK R12 K63 ["TextStrokeColor3"]
  LOADK R13 K66 ["TextLabel"]
  LOADK R14 K28 ["Property"]
  CALL R11 3 1
  LOADNIL R12
  MOVE R13 R2
  LOADK R14 K64 ["TextStrokeTransparency"]
  LOADK R15 K66 ["TextLabel"]
  LOADK R16 K28 ["Property"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K21 ["interactor"]
  SETTABLE R9 R7 R8
  RETURN R7 1
