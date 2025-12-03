PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K7 [{"size", "style", "stroke", "hasShadow", "icon", "isDisabled"}]
  SETTABLEKS R0 R3 K1 ["size"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["style"]
  SETTABLEKS R4 R3 K2 ["style"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["stroke"]
  SETTABLEKS R4 R3 K3 ["stroke"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["hasShadow"]
  SETTABLEKS R4 R3 K4 ["hasShadow"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["icon"]
  SETTABLEKS R4 R3 K5 ["icon"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["isDisabled"]
  SETTABLEKS R4 R3 K6 ["isDisabled"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"tag"}]
  LOADK R4 K3 ["row gap-medium auto-y size-full-0 align-y-center"]
  SETTABLEKS R4 R3 K1 ["tag"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["map"]
  NEWTABLE R5 0 4
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["Large"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K6 ["Medium"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K7 ["Small"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K8 ["XSmall"]
  SETLIST R5 R6 4 [1]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CALL R4 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETTABLEKS R3 R1 K2 ["isInverse"]
  ORK R2 R3 K1 [False]
  GETUPVAL R3 0
  CALL R3 0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["FoundationToggleVisualUpdate"]
  JUMPIFNOT R4 [+53]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K7 [{"tag", "backgroundStyle"}]
  LOADK R7 K8 ["gap-medium auto-xy align-y-center padding-medium radius-medium"]
  SETTABLEKS R7 R6 K5 ["tag"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R9 R3 K9 ["Inverse"]
  GETTABLEKS R8 R9 K10 ["Surface"]
  GETTABLEKS R7 R8 K11 ["Surface_0"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K6 ["backgroundStyle"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K12 ["Provider"]
  DUPTABLE R9 K14 [{"value"}]
  DUPTABLE R10 K15 [{"isInverse"}]
  SETTABLEKS R2 R10 K2 ["isInverse"]
  SETTABLEKS R10 R9 K13 ["value"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 5
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K16 ["join"]
  MOVE R13 R0
  DUPTABLE R14 K19 [{"hasShadow", "isDisabled"}]
  GETTABLEKS R15 R1 K17 ["hasShadow"]
  SETTABLEKS R15 R14 K17 ["hasShadow"]
  GETTABLEKS R15 R1 K18 ["isDisabled"]
  SETTABLEKS R15 R14 K18 ["isDisabled"]
  CALL R12 2 -1
  CALL R10 -1 -1
  CALL R7 -1 -1
  CALL R4 -1 -1
  RETURN R4 -1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K20 [{"tag"}]
  LOADK R7 K8 ["gap-medium auto-xy align-y-center padding-medium radius-medium"]
  SETTABLEKS R7 R6 K5 ["tag"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R8 5
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K16 ["join"]
  MOVE R10 R0
  DUPTABLE R11 K21 [{"hasShadow"}]
  GETTABLEKS R12 R1 K17 ["hasShadow"]
  SETTABLEKS R12 R11 K17 ["hasShadow"]
  CALL R9 2 -1
  CALL R7 -1 -1
  CALL R4 -1 -1
  RETURN R4 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETTABLEKS R3 R1 K2 ["isInverse"]
  ORK R2 R3 K1 [False]
  GETUPVAL R3 0
  CALL R3 0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["FoundationToggleVisualUpdate"]
  JUMPIFNOT R4 [+103]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K7 [{"backgroundStyle", "tag"}]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R9 R3 K8 ["Inverse"]
  GETTABLEKS R8 R9 K9 ["Surface"]
  GETTABLEKS R7 R8 K10 ["Surface_0"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K5 ["backgroundStyle"]
  LOADK R7 K11 ["gap-medium auto-xy align-y-center padding-medium radius-medium"]
  SETTABLEKS R7 R6 K6 ["tag"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K12 ["Provider"]
  DUPTABLE R9 K14 [{"value"}]
  DUPTABLE R10 K15 [{"isInverse"}]
  SETTABLEKS R2 R10 K2 ["isInverse"]
  SETTABLEKS R10 R9 K13 ["value"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K20 [{"style", "stroke", "hasShadow", "isDisabled"}]
  GETTABLEKS R14 R3 K21 ["Color"]
  GETTABLEKS R13 R14 K22 ["None"]
  SETTABLEKS R13 R12 K16 ["style"]
  DUPTABLE R13 K25 [{"Color", "Thickness", "Transparency"}]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R17 R3 K8 ["Inverse"]
  GETTABLEKS R16 R17 K26 ["Content"]
  GETTABLEKS R15 R16 K27 ["Emphasis"]
  GETTABLEKS R14 R15 K28 ["Color3"]
  JUMP [+8]
  GETTABLEKS R17 R3 K21 ["Color"]
  GETTABLEKS R16 R17 K26 ["Content"]
  GETTABLEKS R15 R16 K27 ["Emphasis"]
  GETTABLEKS R14 R15 K28 ["Color3"]
  SETTABLEKS R14 R13 K21 ["Color"]
  GETTABLEKS R15 R3 K29 ["Stroke"]
  GETTABLEKS R14 R15 K30 ["Thicker"]
  SETTABLEKS R14 R13 K23 ["Thickness"]
  JUMPIFNOT R2 [+9]
  GETTABLEKS R17 R3 K8 ["Inverse"]
  GETTABLEKS R16 R17 K26 ["Content"]
  GETTABLEKS R15 R16 K27 ["Emphasis"]
  GETTABLEKS R14 R15 K24 ["Transparency"]
  JUMP [+8]
  GETTABLEKS R17 R3 K21 ["Color"]
  GETTABLEKS R16 R17 K26 ["Content"]
  GETTABLEKS R15 R16 K27 ["Emphasis"]
  GETTABLEKS R14 R15 K24 ["Transparency"]
  SETTABLEKS R14 R13 K24 ["Transparency"]
  SETTABLEKS R13 R12 K17 ["stroke"]
  GETTABLEKS R13 R1 K18 ["hasShadow"]
  SETTABLEKS R13 R12 K18 ["hasShadow"]
  GETTABLEKS R13 R1 K19 ["isDisabled"]
  SETTABLEKS R13 R12 K19 ["isDisabled"]
  CALL R10 2 -1
  CALL R7 -1 -1
  CALL R4 -1 -1
  RETURN R4 -1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K31 [{"tag"}]
  LOADK R7 K11 ["gap-medium auto-xy align-y-center padding-medium radius-medium"]
  SETTABLEKS R7 R6 K6 ["tag"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K32 [{"style", "stroke", "hasShadow"}]
  GETTABLEKS R11 R3 K21 ["Color"]
  GETTABLEKS R10 R11 K22 ["None"]
  SETTABLEKS R10 R9 K16 ["style"]
  DUPTABLE R10 K25 [{"Color", "Thickness", "Transparency"}]
  GETTABLEKS R14 R3 K21 ["Color"]
  GETTABLEKS R13 R14 K26 ["Content"]
  GETTABLEKS R12 R13 K27 ["Emphasis"]
  GETTABLEKS R11 R12 K28 ["Color3"]
  SETTABLEKS R11 R10 K21 ["Color"]
  GETTABLEKS R12 R3 K29 ["Stroke"]
  GETTABLEKS R11 R12 K30 ["Thicker"]
  SETTABLEKS R11 R10 K23 ["Thickness"]
  GETTABLEKS R14 R3 K21 ["Color"]
  GETTABLEKS R13 R14 K26 ["Content"]
  GETTABLEKS R12 R13 K27 ["Emphasis"]
  GETTABLEKS R11 R12 K24 ["Transparency"]
  SETTABLEKS R11 R10 K24 ["Transparency"]
  SETTABLEKS R10 R9 K17 ["stroke"]
  GETTABLEKS R10 R1 K18 ["hasShadow"]
  SETTABLEKS R10 R9 K18 ["hasShadow"]
  CALL R7 2 -1
  CALL R4 -1 -1
  RETURN R4 -1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETTABLEKS R3 R1 K2 ["isInverse"]
  ORK R2 R3 K1 [False]
  GETUPVAL R3 0
  CALL R3 0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K6 [{"backgroundStyle", "tag"}]
  JUMPIFNOT R2 [+2]
  LOADNIL R7
  JUMP [+6]
  GETTABLEKS R9 R3 K7 ["Inverse"]
  GETTABLEKS R8 R9 K8 ["Surface"]
  GETTABLEKS R7 R8 K9 ["Surface_0"]
  SETTABLEKS R7 R6 K4 ["backgroundStyle"]
  LOADK R7 K10 ["gap-medium auto-xy align-y-center padding-medium radius-medium"]
  SETTABLEKS R7 R6 K5 ["tag"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K11 ["Provider"]
  DUPTABLE R9 K13 [{"value"}]
  DUPTABLE R10 K14 [{"isInverse"}]
  SETTABLEKS R2 R10 K2 ["isInverse"]
  SETTABLEKS R10 R9 K12 ["value"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K18 [{"hasShadow", "isDisabled", "icon"}]
  GETTABLEKS R13 R1 K15 ["hasShadow"]
  SETTABLEKS R13 R12 K15 ["hasShadow"]
  GETTABLEKS R13 R1 K16 ["isDisabled"]
  SETTABLEKS R13 R12 K16 ["isDisabled"]
  DUPTABLE R13 K21 [{"name", "variant"}]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K22 ["Icon"]
  GETTABLEKS R14 R15 K23 ["Check"]
  SETTABLEKS R14 R13 K19 ["name"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K24 ["IconVariant"]
  GETTABLEKS R14 R15 K25 ["Regular"]
  SETTABLEKS R14 R13 K20 ["variant"]
  SETTABLEKS R13 R12 K17 ["icon"]
  CALL R10 2 -1
  CALL R7 -1 -1
  CALL R4 -1 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K12 ["Providers"]
  GETTABLEKS R8 R9 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["useTokens"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R10 R0 K12 ["Providers"]
  GETTABLEKS R9 R10 K13 ["Style"]
  GETTABLEKS R8 R9 K15 ["PresentationContext"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R1 K16 ["BuilderIcons"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K17 ["Utility"]
  GETTABLEKS R10 R11 K18 ["Flags"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K19 ["Enums"]
  GETTABLEKS R11 R12 K20 ["InputSize"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K4 ["Parent"]
  GETTABLEKS R12 R13 K21 ["Knob"]
  CALL R11 1 1
  DUPCLOSURE R12 K22 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R11
  NEWTABLE R13 0 2
  DUPTABLE R14 K26 [{"name", "summary", "story"}]
  LOADK R15 K27 ["Basic"]
  SETTABLEKS R15 R14 K23 ["name"]
  LOADK R15 K28 ["Default knob across sizes."]
  SETTABLEKS R15 R14 K24 ["summary"]
  DUPCLOSURE R15 K29 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R3
  SETTABLEKS R15 R14 K25 ["story"]
  DUPTABLE R15 K26 [{"name", "summary", "story"}]
  LOADK R16 K30 ["With Stroke"]
  SETTABLEKS R16 R15 K23 ["name"]
  LOADK R16 K31 ["Knob with transparent fill and emphasis stroke across sizes."]
  SETTABLEKS R16 R15 K24 ["summary"]
  DUPCLOSURE R16 K32 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R12
  SETTABLEKS R16 R15 K25 ["story"]
  SETLIST R13 R14 2 [1]
  GETTABLEKS R14 R9 K33 ["FoundationToggleVisualUpdate"]
  JUMPIFNOT R14 [+22]
  DUPTABLE R16 K26 [{"name", "summary", "story"}]
  LOADK R17 K34 ["With Icon"]
  SETTABLEKS R17 R16 K23 ["name"]
  LOADK R17 K35 ["Knob rendering a BuilderIcons check icon instead of the circle."]
  SETTABLEKS R17 R16 K24 ["summary"]
  DUPCLOSURE R17 K36 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R8
  SETTABLEKS R17 R16 K25 ["story"]
  FASTCALL2 TABLE_INSERT R13 R16 [+4]
  MOVE R15 R13
  GETIMPORT R14 K39 [table.insert]
  CALL R14 2 0
  DUPTABLE R14 K42 [{"controls", "summary", "stories"}]
  GETTABLEKS R16 R9 K33 ["FoundationToggleVisualUpdate"]
  JUMPIFNOT R16 [+11]
  DUPTABLE R15 K46 [{"isInverse", "hasShadow", "isDisabled"}]
  LOADB R16 0
  SETTABLEKS R16 R15 K43 ["isInverse"]
  LOADB R16 1
  SETTABLEKS R16 R15 K44 ["hasShadow"]
  LOADB R16 0
  SETTABLEKS R16 R15 K45 ["isDisabled"]
  JUMP [+4]
  DUPTABLE R15 K47 [{"hasShadow"}]
  LOADB R16 1
  SETTABLEKS R16 R15 K44 ["hasShadow"]
  SETTABLEKS R15 R14 K40 ["controls"]
  GETTABLEKS R16 R9 K33 ["FoundationToggleVisualUpdate"]
  JUMPIFNOT R16 [+2]
  LOADK R15 K48 ["Interactive circular handle used by higher-level inputs (e.g., Slider and Toggle). Typically composed by parent controls rather than used directly. Uses PresentationContext for inverse styling."]
  JUMP [+1]
  LOADK R15 K49 ["Interactive circular handle used by higher-level inputs (e.g., Slider and Toggle). Typically composed by parent controls rather than used directly."]
  SETTABLEKS R15 R14 K24 ["summary"]
  SETTABLEKS R13 R14 K41 ["stories"]
  RETURN R14 1
