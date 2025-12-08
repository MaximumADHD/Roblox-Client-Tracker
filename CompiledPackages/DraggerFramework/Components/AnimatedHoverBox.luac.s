PROTO_0:
  DIV R8 R3 R2
  MULK R7 R8 K1 [3.14159265358979]
  FASTCALL1 MATH_SIN R7 [+2]
  GETIMPORT R6 K4 [math.sin]
  CALL R6 1 1
  MULK R5 R6 K0 [0.5]
  ADDK R4 R5 K0 [0.5]
  MOVE R7 R0
  MOVE R8 R4
  NAMECALL R5 R1 K5 ["lerp"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["AnimatePeriod"]
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_2:
  GETTABLEKS R3 R1 K0 ["HoverTarget"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Missing required property 'HoverTarget'."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETTABLEKS R3 R1 K4 ["SelectColor"]
  FASTCALL2K ASSERT R3 K5 [+4]
  LOADK R4 K5 ["Missing required property 'SelectColor'."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETTABLEKS R3 R1 K6 ["HoverColor"]
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Missing required property 'HoverColor'."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETTABLEKS R3 R1 K8 ["LineThickness"]
  FASTCALL2K ASSERT R3 K9 [+4]
  LOADK R4 K9 ["Missing required property 'LineThickness'."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETTABLEKS R3 R1 K10 ["SelectionBoxComponent"]
  FASTCALL2K ASSERT R3 K11 [+4]
  LOADK R4 K11 ["Missing required property 'SelectionBoxComponent'."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  DUPTABLE R4 K13 [{"currentColor"}]
  GETTABLEKS R5 R1 K4 ["SelectColor"]
  SETTABLEKS R5 R4 K12 ["currentColor"]
  NAMECALL R2 R0 K14 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K15 ["shouldAnimate"]
  LOADB R2 0
  SETTABLEKS R2 R0 K16 ["_isMounted"]
  LOADN R2 0
  SETTABLEKS R2 R0 K17 ["_startTime"]
  GETUPVAL R2 0
  LOADB R4 0
  NAMECALL R2 R2 K18 ["GenerateGUID"]
  CALL R2 2 1
  LOADK R4 K19 ["AnimatedHoverBoxUpdate"]
  LOADK R5 K20 ["_"]
  MOVE R6 R2
  CONCAT R3 R4 R6
  SETTABLEKS R3 R0 K21 ["_bindName"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_isMounted"]
  JUMPIFNOT R0 [+42]
  GETIMPORT R1 K2 [tick]
  CALL R1 0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["_startTime"]
  SUB R0 R1 R2
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["props"]
  GETTABLEKS R3 R1 K5 ["AnimatePeriod"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R1 K5 ["AnimatePeriod"]
  JUMP [+1]
  LOADN R2 0
  GETTABLEKS R4 R1 K6 ["SelectColor"]
  GETTABLEKS R5 R1 K7 ["HoverColor"]
  DIV R10 R0 R2
  MULK R9 R10 K9 [3.14159265358979]
  FASTCALL1 MATH_SIN R9 [+2]
  GETIMPORT R8 K12 [math.sin]
  CALL R8 1 1
  MULK R7 R8 K8 [0.5]
  ADDK R6 R7 K8 [0.5]
  MOVE R9 R4
  MOVE R10 R6
  NAMECALL R7 R5 K13 ["lerp"]
  CALL R7 3 1
  MOVE R3 R7
  GETUPVAL R4 0
  DUPTABLE R6 K15 [{"currentColor"}]
  SETTABLEKS R3 R6 K14 ["currentColor"]
  NAMECALL R4 R4 K16 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_4:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["_isMounted"]
  GETTABLEKS R1 R0 K1 ["shouldAnimate"]
  CALL R1 0 1
  JUMPIFNOT R1 [+17]
  GETIMPORT R1 K3 [tick]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["_startTime"]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K5 ["_bindName"]
  GETIMPORT R5 K9 [Enum.RenderPriority.First]
  GETTABLEKS R4 R5 K10 ["Value"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K11 ["BindToRenderStep"]
  CALL R1 4 0
  RETURN R0 0

PROTO_5:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_isMounted"]
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K1 ["_bindName"]
  NAMECALL R1 R1 K2 ["UnbindFromRenderStep"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["HoverTarget"]
  JUMPIF R2 [+2]
  LOADNIL R3
  RETURN R3 1
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["Thickness"]
  GETTABLEKS R5 R0 K3 ["shouldAnimate"]
  CALL R5 0 1
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R0 K4 ["state"]
  GETTABLEKS R4 R5 K5 ["currentColor"]
  JUMP [+2]
  GETTABLEKS R4 R1 K6 ["HoverColor"]
  LOADK R7 K7 ["PVInstance"]
  NAMECALL R5 R2 K8 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+64]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["createFragment"]
  DUPTABLE R6 K12 [{"Outline", "BoundingBox"}]
  GETTABLEKS R8 R1 K13 ["ShowOutline"]
  JUMPIFNOT R8 [+27]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K14 ["createElement"]
  LOADK R8 K15 ["Highlight"]
  DUPTABLE R9 K23 [{"Adornee", "FillTransparency", "FillColor", "LineThickness", "OutlineTransparency", "OutlineColor", "ReservedId"}]
  SETTABLEKS R2 R9 K16 ["Adornee"]
  LOADN R10 1
  SETTABLEKS R10 R9 K17 ["FillTransparency"]
  SETTABLEKS R4 R9 K18 ["FillColor"]
  GETTABLEKS R10 R1 K19 ["LineThickness"]
  SETTABLEKS R10 R9 K19 ["LineThickness"]
  LOADN R10 0
  SETTABLEKS R10 R9 K20 ["OutlineTransparency"]
  SETTABLEKS R4 R9 K21 ["OutlineColor"]
  GETIMPORT R10 K27 [Enum.ReservedHighlightId.Hover]
  SETTABLEKS R10 R9 K22 ["ReservedId"]
  CALL R7 2 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K10 ["Outline"]
  GETTABLEKS R8 R1 K28 ["ShowHoverBox"]
  JUMPIFNOT R8 [+19]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K14 ["createElement"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K29 ["SelectionBoxComponent"]
  DUPTABLE R9 K32 [{"Adornee", "Color3", "LineThickness", "StudioSelectionBox"}]
  SETTABLEKS R2 R9 K16 ["Adornee"]
  SETTABLEKS R4 R9 K30 ["Color3"]
  SETTABLEKS R3 R9 K19 ["LineThickness"]
  LOADB R10 1
  SETTABLEKS R10 R9 K31 ["StudioSelectionBox"]
  CALL R7 2 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K11 ["BoundingBox"]
  CALL R5 1 -1
  RETURN R5 -1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R4 K6 [script]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETTABLEKS R4 R2 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R3 K10 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Roact"]
  CALL R4 1 1
  DUPCLOSURE R5 K12 [PROTO_0]
  GETTABLEKS R6 R4 K13 ["PureComponent"]
  LOADK R8 K14 ["AnimatedHoverBox"]
  NAMECALL R6 R6 K15 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K16 [PROTO_2]
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K17 ["init"]
  DUPCLOSURE R7 K18 [PROTO_4]
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K19 ["didMount"]
  DUPCLOSURE R7 K20 [PROTO_5]
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K21 ["willUnmount"]
  DUPCLOSURE R7 K22 [PROTO_6]
  CAPTURE VAL R4
  SETTABLEKS R7 R6 K23 ["render"]
  RETURN R6 1
