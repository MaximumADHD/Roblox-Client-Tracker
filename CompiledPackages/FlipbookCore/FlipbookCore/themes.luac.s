MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["tailwind"]
  CALL R0 1 1
  DUPTABLE R1 K31 [{"textSize", "font", "headerTextSize", "headerFont", "buttonTextSize", "buttonFont", "background", "sidebar", "canvas", "scrollbar", "button", "buttonText", "divider", "text", "textFaded", "textSubtitle", "selection", "story", "directory", "alert", "github", "padding", "paddingSmall", "paddingLarge", "corner"}]
  LOADN R2 18
  SETTABLEKS R2 R1 K6 ["textSize"]
  GETIMPORT R2 K35 [Enum.Font.BuilderSansMedium]
  SETTABLEKS R2 R1 K7 ["font"]
  LOADN R2 32
  SETTABLEKS R2 R1 K8 ["headerTextSize"]
  GETIMPORT R2 K37 [Enum.Font.BuilderSansExtraBold]
  SETTABLEKS R2 R1 K9 ["headerFont"]
  LOADN R2 14
  SETTABLEKS R2 R1 K10 ["buttonTextSize"]
  GETIMPORT R2 K39 [Enum.Font.BuilderSansBold]
  SETTABLEKS R2 R1 K11 ["buttonFont"]
  GETTABLEKS R2 R0 K40 ["white"]
  SETTABLEKS R2 R1 K12 ["background"]
  GETTABLEKS R2 R0 K41 ["gray100"]
  SETTABLEKS R2 R1 K13 ["sidebar"]
  GETTABLEKS R2 R0 K40 ["white"]
  SETTABLEKS R2 R1 K14 ["canvas"]
  GETTABLEKS R2 R0 K42 ["gray800"]
  SETTABLEKS R2 R1 K15 ["scrollbar"]
  GETTABLEKS R2 R0 K42 ["gray800"]
  SETTABLEKS R2 R1 K16 ["button"]
  GETTABLEKS R2 R0 K40 ["white"]
  SETTABLEKS R2 R1 K17 ["buttonText"]
  GETTABLEKS R2 R0 K43 ["gray300"]
  SETTABLEKS R2 R1 K18 ["divider"]
  GETTABLEKS R2 R0 K42 ["gray800"]
  SETTABLEKS R2 R1 K19 ["text"]
  GETTABLEKS R2 R0 K44 ["gray600"]
  SETTABLEKS R2 R1 K20 ["textFaded"]
  GETTABLEKS R2 R0 K45 ["gray500"]
  SETTABLEKS R2 R1 K21 ["textSubtitle"]
  GETTABLEKS R2 R0 K46 ["purple500"]
  SETTABLEKS R2 R1 K22 ["selection"]
  GETTABLEKS R2 R0 K47 ["green500"]
  SETTABLEKS R2 R1 K23 ["story"]
  GETTABLEKS R2 R0 K46 ["purple500"]
  SETTABLEKS R2 R1 K24 ["directory"]
  GETTABLEKS R2 R0 K48 ["rose500"]
  SETTABLEKS R2 R1 K25 ["alert"]
  GETIMPORT R2 K51 [Color3.fromHex]
  LOADK R3 K52 ["#333333"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K26 ["github"]
  GETIMPORT R2 K55 [UDim.new]
  LOADN R3 0
  LOADN R4 12
  CALL R2 2 1
  SETTABLEKS R2 R1 K27 ["padding"]
  GETIMPORT R2 K55 [UDim.new]
  LOADN R3 0
  LOADN R4 6
  CALL R2 2 1
  SETTABLEKS R2 R1 K28 ["paddingSmall"]
  GETIMPORT R2 K55 [UDim.new]
  LOADN R3 0
  LOADN R4 24
  CALL R2 2 1
  SETTABLEKS R2 R1 K29 ["paddingLarge"]
  GETIMPORT R2 K55 [UDim.new]
  LOADN R3 0
  LOADN R4 4
  CALL R2 2 1
  SETTABLEKS R2 R1 K30 ["corner"]
  DUPTABLE R2 K31 [{"textSize", "font", "headerTextSize", "headerFont", "buttonTextSize", "buttonFont", "background", "sidebar", "canvas", "scrollbar", "button", "buttonText", "divider", "text", "textFaded", "textSubtitle", "selection", "story", "directory", "alert", "github", "padding", "paddingSmall", "paddingLarge", "corner"}]
  LOADN R3 18
  SETTABLEKS R3 R2 K6 ["textSize"]
  GETIMPORT R3 K35 [Enum.Font.BuilderSansMedium]
  SETTABLEKS R3 R2 K7 ["font"]
  LOADN R3 32
  SETTABLEKS R3 R2 K8 ["headerTextSize"]
  GETIMPORT R3 K37 [Enum.Font.BuilderSansExtraBold]
  SETTABLEKS R3 R2 K9 ["headerFont"]
  LOADN R3 14
  SETTABLEKS R3 R2 K10 ["buttonTextSize"]
  GETIMPORT R3 K39 [Enum.Font.BuilderSansBold]
  SETTABLEKS R3 R2 K11 ["buttonFont"]
  GETTABLEKS R3 R0 K56 ["zinc800"]
  SETTABLEKS R3 R2 K12 ["background"]
  GETTABLEKS R3 R0 K57 ["zinc900"]
  SETTABLEKS R3 R2 K13 ["sidebar"]
  GETTABLEKS R3 R0 K56 ["zinc800"]
  SETTABLEKS R3 R2 K14 ["canvas"]
  GETTABLEKS R3 R0 K58 ["zinc100"]
  SETTABLEKS R3 R2 K15 ["scrollbar"]
  GETTABLEKS R3 R0 K59 ["zinc300"]
  SETTABLEKS R3 R2 K16 ["button"]
  GETTABLEKS R3 R0 K56 ["zinc800"]
  SETTABLEKS R3 R2 K17 ["buttonText"]
  GETTABLEKS R3 R0 K60 ["zinc700"]
  SETTABLEKS R3 R2 K18 ["divider"]
  GETTABLEKS R3 R0 K61 ["zinc200"]
  SETTABLEKS R3 R2 K19 ["text"]
  GETTABLEKS R3 R0 K59 ["zinc300"]
  SETTABLEKS R3 R2 K20 ["textFaded"]
  GETTABLEKS R3 R0 K62 ["zinc400"]
  SETTABLEKS R3 R2 K21 ["textSubtitle"]
  GETTABLEKS R3 R0 K46 ["purple500"]
  SETTABLEKS R3 R2 K22 ["selection"]
  GETTABLEKS R3 R0 K47 ["green500"]
  SETTABLEKS R3 R2 K23 ["story"]
  GETTABLEKS R3 R0 K46 ["purple500"]
  SETTABLEKS R3 R2 K24 ["directory"]
  GETTABLEKS R3 R0 K48 ["rose500"]
  SETTABLEKS R3 R2 K25 ["alert"]
  GETIMPORT R3 K51 [Color3.fromHex]
  LOADK R4 K63 ["#ffffff"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K26 ["github"]
  GETIMPORT R3 K55 [UDim.new]
  LOADN R4 0
  LOADN R5 12
  CALL R3 2 1
  SETTABLEKS R3 R2 K27 ["padding"]
  GETIMPORT R3 K55 [UDim.new]
  LOADN R4 0
  LOADN R5 6
  CALL R3 2 1
  SETTABLEKS R3 R2 K28 ["paddingSmall"]
  GETIMPORT R3 K55 [UDim.new]
  LOADN R4 0
  LOADN R5 24
  CALL R3 2 1
  SETTABLEKS R3 R2 K29 ["paddingLarge"]
  GETIMPORT R3 K55 [UDim.new]
  LOADN R4 0
  LOADN R5 6
  CALL R3 2 1
  SETTABLEKS R3 R2 K30 ["corner"]
  DUPTABLE R3 K66 [{"Light", "Dark"}]
  SETTABLEKS R1 R3 K64 ["Light"]
  SETTABLEKS R2 R3 K65 ["Dark"]
  RETURN R3 1
