PROTO_0:
  NEWTABLE R1 4 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Small"]
  GETIMPORT R3 K3 [UDim.new]
  LOADN R4 0
  GETTABLEKS R6 R0 K4 ["Padding"]
  GETTABLEKS R5 R6 K0 ["Small"]
  CALL R3 2 1
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["Medium"]
  GETIMPORT R3 K3 [UDim.new]
  LOADN R4 0
  GETTABLEKS R6 R0 K4 ["Padding"]
  GETTABLEKS R5 R6 K5 ["Medium"]
  CALL R3 2 1
  SETTABLE R3 R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["Large"]
  GETIMPORT R3 K3 [UDim.new]
  LOADN R4 0
  GETTABLEKS R6 R0 K4 ["Padding"]
  GETTABLEKS R5 R6 K6 ["Large"]
  CALL R3 2 1
  SETTABLE R3 R1 R2
  DUPTABLE R2 K9 [{"chip", "text"}]
  DUPTABLE R3 K11 [{"tag"}]
  LOADK R4 K12 ["row auto-x align-y-center align-x-center clip radius-circle"]
  SETTABLEKS R4 R3 K10 ["tag"]
  SETTABLEKS R3 R2 K7 ["chip"]
  DUPTABLE R3 K11 [{"tag"}]
  LOADK R4 K13 ["auto-x size-0-full shrink text-truncate-end"]
  SETTABLEKS R4 R3 K10 ["tag"]
  SETTABLEKS R3 R2 K8 ["text"]
  NEWTABLE R3 4 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Small"]
  DUPTABLE R5 K9 [{"chip", "text"}]
  DUPTABLE R6 K11 [{"tag"}]
  LOADK R7 K14 ["size-0-600"]
  SETTABLEKS R7 R6 K10 ["tag"]
  SETTABLEKS R6 R5 K7 ["chip"]
  DUPTABLE R6 K11 [{"tag"}]
  LOADK R7 K15 ["text-label-small"]
  SETTABLEKS R7 R6 K10 ["tag"]
  SETTABLEKS R6 R5 K8 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["Medium"]
  DUPTABLE R5 K9 [{"chip", "text"}]
  DUPTABLE R6 K11 [{"tag"}]
  LOADK R7 K16 ["size-0-800"]
  SETTABLEKS R7 R6 K10 ["tag"]
  SETTABLEKS R6 R5 K7 ["chip"]
  DUPTABLE R6 K11 [{"tag"}]
  LOADK R7 K17 ["text-label-medium"]
  SETTABLEKS R7 R6 K10 ["tag"]
  SETTABLEKS R6 R5 K8 ["text"]
  SETTABLE R5 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["Large"]
  DUPTABLE R5 K9 [{"chip", "text"}]
  DUPTABLE R6 K11 [{"tag"}]
  LOADK R7 K18 ["size-0-1000"]
  SETTABLEKS R7 R6 K10 ["tag"]
  SETTABLEKS R6 R5 K7 ["chip"]
  DUPTABLE R6 K11 [{"tag"}]
  LOADK R7 K17 ["text-label-medium"]
  SETTABLEKS R7 R6 K10 ["tag"]
  SETTABLEKS R6 R5 K8 ["text"]
  SETTABLE R5 R3 R4
  NEWTABLE R4 2 0
  LOADB R5 1
  DUPTABLE R6 K9 [{"chip", "text"}]
  DUPTABLE R7 K20 [{"backgroundStyle"}]
  GETTABLEKS R10 R0 K21 ["Inverse"]
  GETTABLEKS R9 R10 K22 ["Surface"]
  GETTABLEKS R8 R9 K23 ["Surface_0"]
  SETTABLEKS R8 R7 K19 ["backgroundStyle"]
  SETTABLEKS R7 R6 K7 ["chip"]
  DUPTABLE R7 K25 [{"contentStyle"}]
  GETTABLEKS R10 R0 K21 ["Inverse"]
  GETTABLEKS R9 R10 K26 ["Content"]
  GETTABLEKS R8 R9 K27 ["Emphasis"]
  SETTABLEKS R8 R7 K24 ["contentStyle"]
  SETTABLEKS R7 R6 K8 ["text"]
  SETTABLE R6 R4 R5
  LOADB R5 0
  DUPTABLE R6 K9 [{"chip", "text"}]
  DUPTABLE R7 K20 [{"backgroundStyle"}]
  GETTABLEKS R10 R0 K28 ["Color"]
  GETTABLEKS R9 R10 K29 ["ActionStandard"]
  GETTABLEKS R8 R9 K30 ["Background"]
  SETTABLEKS R8 R7 K19 ["backgroundStyle"]
  SETTABLEKS R7 R6 K7 ["chip"]
  DUPTABLE R7 K25 [{"contentStyle"}]
  GETTABLEKS R10 R0 K28 ["Color"]
  GETTABLEKS R9 R10 K29 ["ActionStandard"]
  GETTABLEKS R8 R9 K31 ["Foreground"]
  SETTABLEKS R8 R7 K24 ["contentStyle"]
  SETTABLEKS R7 R6 K8 ["text"]
  SETTABLE R6 R4 R5
  DUPTABLE R5 K36 [{"common", "sizes", "isChecked", "textSpacing"}]
  SETTABLEKS R2 R5 K32 ["common"]
  SETTABLEKS R3 R5 K33 ["sizes"]
  SETTABLEKS R4 R5 K34 ["isChecked"]
  SETTABLEKS R1 R5 K35 ["textSpacing"]
  RETURN R5 1

PROTO_1:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["useVariants"]
  LOADK R6 K1 ["Chip"]
  GETUPVAL R7 1
  MOVE R8 R0
  CALL R5 3 1
  GETUPVAL R6 2
  GETTABLEKS R7 R5 K2 ["common"]
  GETTABLEKS R9 R5 K3 ["sizes"]
  GETTABLE R8 R9 R1
  DUPTABLE R9 K5 [{"text"}]
  DUPTABLE R10 K7 [{"padding"}]
  DUPTABLE R11 K10 [{"left", "right"}]
  JUMPIFNOT R3 [+2]
  LOADNIL R12
  JUMP [+3]
  GETTABLEKS R13 R5 K11 ["textSpacing"]
  GETTABLE R12 R13 R1
  SETTABLEKS R12 R11 K8 ["left"]
  JUMPIFNOT R4 [+2]
  LOADNIL R12
  JUMP [+3]
  GETTABLEKS R13 R5 K11 ["textSpacing"]
  GETTABLE R12 R13 R1
  SETTABLEKS R12 R11 K9 ["right"]
  SETTABLEKS R11 R10 K6 ["padding"]
  SETTABLEKS R10 R9 K4 ["text"]
  GETTABLEKS R11 R5 K12 ["isChecked"]
  GETTABLE R10 R11 R2
  CALL R6 4 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Enums"]
  GETTABLEKS R2 R3 K7 ["ChipSize"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Utility"]
  GETTABLEKS R3 R4 K9 ["composeStyleVariant"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Providers"]
  GETTABLEKS R5 R6 K11 ["Style"]
  GETTABLEKS R4 R5 K12 ["Tokens"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Providers"]
  GETTABLEKS R6 R7 K11 ["Style"]
  GETTABLEKS R5 R6 K13 ["VariantsContext"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R1
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R6 1
