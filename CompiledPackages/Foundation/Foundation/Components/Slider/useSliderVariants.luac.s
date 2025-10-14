PROTO_0:
  DUPTABLE R1 K2 [{"bar", "fill"}]
  DUPTABLE R2 K4 [{"tag"}]
  LOADK R3 K5 ["anchor-center-center position-center-center size-full-100 radius-small"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K0 ["bar"]
  DUPTABLE R2 K4 [{"tag"}]
  LOADK R3 K6 ["radius-small"]
  SETTABLEKS R3 R2 K3 ["tag"]
  SETTABLEKS R2 R1 K1 ["fill"]
  NEWTABLE R2 4 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["Emphasis"]
  DUPTABLE R4 K9 [{"bar", "fill", "knob"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K10 ["bg-shift-400"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["bar"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K11 ["bg-emphasis"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["fill"]
  DUPTABLE R5 K15 [{"style", "dragStyle", "hasShadow"}]
  GETTABLEKS R9 R0 K16 ["Color"]
  GETTABLEKS R8 R9 K17 ["Extended"]
  GETTABLEKS R7 R8 K18 ["White"]
  GETTABLEKS R6 R7 K19 ["White_100"]
  SETTABLEKS R6 R5 K12 ["style"]
  GETTABLEKS R8 R0 K16 ["Color"]
  GETTABLEKS R7 R8 K20 ["ActionEmphasis"]
  GETTABLEKS R6 R7 K21 ["Background"]
  SETTABLEKS R6 R5 K13 ["dragStyle"]
  LOADB R6 1
  SETTABLEKS R6 R5 K14 ["hasShadow"]
  SETTABLEKS R5 R4 K8 ["knob"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K22 ["Standard"]
  DUPTABLE R4 K9 [{"bar", "fill", "knob"}]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K10 ["bg-shift-400"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K0 ["bar"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K23 ["bg-system-contrast"]
  SETTABLEKS R6 R5 K3 ["tag"]
  SETTABLEKS R5 R4 K1 ["fill"]
  DUPTABLE R5 K15 [{"style", "dragStyle", "hasShadow"}]
  GETTABLEKS R8 R0 K16 ["Color"]
  GETTABLEKS R7 R8 K24 ["System"]
  GETTABLEKS R6 R7 K25 ["Contrast"]
  SETTABLEKS R6 R5 K12 ["style"]
  GETTABLEKS R8 R0 K16 ["Color"]
  GETTABLEKS R7 R8 K24 ["System"]
  GETTABLEKS R6 R7 K25 ["Contrast"]
  SETTABLEKS R6 R5 K13 ["dragStyle"]
  LOADB R6 0
  SETTABLEKS R6 R5 K14 ["hasShadow"]
  SETTABLEKS R5 R4 K8 ["knob"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K26 ["Utility"]
  DUPTABLE R4 K27 [{"knob"}]
  DUPTABLE R5 K29 [{"style", "dragStyle", "stroke", "hasShadow"}]
  GETTABLEKS R7 R0 K16 ["Color"]
  GETTABLEKS R6 R7 K30 ["None"]
  SETTABLEKS R6 R5 K12 ["style"]
  GETTABLEKS R7 R0 K16 ["Color"]
  GETTABLEKS R6 R7 K30 ["None"]
  SETTABLEKS R6 R5 K13 ["dragStyle"]
  DUPTABLE R6 K33 [{"Color", "Transparency", "Thickness"}]
  GETTABLEKS R10 R0 K16 ["Color"]
  GETTABLEKS R9 R10 K24 ["System"]
  GETTABLEKS R8 R9 K25 ["Contrast"]
  GETTABLEKS R7 R8 K34 ["Color3"]
  SETTABLEKS R7 R6 K16 ["Color"]
  GETTABLEKS R10 R0 K16 ["Color"]
  GETTABLEKS R9 R10 K24 ["System"]
  GETTABLEKS R8 R9 K25 ["Contrast"]
  GETTABLEKS R7 R8 K31 ["Transparency"]
  SETTABLEKS R7 R6 K31 ["Transparency"]
  GETTABLEKS R8 R0 K35 ["Stroke"]
  GETTABLEKS R7 R8 K36 ["Thicker"]
  SETTABLEKS R7 R6 K32 ["Thickness"]
  SETTABLEKS R6 R5 K28 ["stroke"]
  LOADB R6 1
  SETTABLEKS R6 R5 K14 ["hasShadow"]
  SETTABLEKS R5 R4 K8 ["knob"]
  SETTABLE R4 R2 R3
  NEWTABLE R3 4 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K37 ["XSmall"]
  DUPTABLE R5 K39 [{"hitbox"}]
  DUPTABLE R6 K41 [{"height"}]
  GETTABLEKS R8 R0 K42 ["Size"]
  GETTABLEKS R7 R8 K43 ["Size_300"]
  SETTABLEKS R7 R6 K40 ["height"]
  SETTABLEKS R6 R5 K38 ["hitbox"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K44 ["Small"]
  DUPTABLE R5 K39 [{"hitbox"}]
  DUPTABLE R6 K41 [{"height"}]
  GETTABLEKS R8 R0 K42 ["Size"]
  GETTABLEKS R7 R8 K45 ["Size_400"]
  SETTABLEKS R7 R6 K40 ["height"]
  SETTABLEKS R6 R5 K38 ["hitbox"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K46 ["Medium"]
  DUPTABLE R5 K39 [{"hitbox"}]
  DUPTABLE R6 K41 [{"height"}]
  GETTABLEKS R8 R0 K42 ["Size"]
  GETTABLEKS R7 R8 K47 ["Size_500"]
  SETTABLEKS R7 R6 K40 ["height"]
  SETTABLEKS R6 R5 K38 ["hitbox"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K48 ["Large"]
  DUPTABLE R5 K39 [{"hitbox"}]
  DUPTABLE R6 K41 [{"height"}]
  GETTABLEKS R8 R0 K42 ["Size"]
  GETTABLEKS R7 R8 K49 ["Size_600"]
  SETTABLEKS R7 R6 K40 ["height"]
  SETTABLEKS R6 R5 K38 ["hitbox"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K53 [{"common", "variants", "sizes"}]
  SETTABLEKS R1 R4 K50 ["common"]
  SETTABLEKS R2 R4 K51 ["variants"]
  SETTABLEKS R3 R4 K52 ["sizes"]
  RETURN R4 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useVariants"]
  LOADK R4 K1 ["Slider"]
  GETUPVAL R5 1
  MOVE R6 R0
  CALL R3 3 1
  GETUPVAL R4 2
  GETTABLEKS R5 R3 K2 ["common"]
  GETTABLEKS R7 R3 K3 ["variants"]
  GETTABLE R6 R7 R2
  GETTABLEKS R8 R3 K4 ["sizes"]
  GETTABLE R7 R8 R1
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Enums"]
  GETTABLEKS R2 R3 K7 ["InputSize"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Enums"]
  GETTABLEKS R3 R4 K8 ["SliderVariant"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Utility"]
  GETTABLEKS R4 R5 K10 ["composeStyleVariant"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Providers"]
  GETTABLEKS R6 R7 K12 ["Style"]
  GETTABLEKS R5 R6 K13 ["Tokens"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Providers"]
  GETTABLEKS R7 R8 K12 ["Style"]
  GETTABLEKS R6 R7 K14 ["VariantsContext"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K15 ["Components"]
  GETTABLEKS R7 R8 K16 ["Types"]
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  DUPCLOSURE R8 K18 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R3
  RETURN R8 1
