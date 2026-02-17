PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ContextServices"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  NAMECALL R1 R1 K2 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["createNextOrder"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K5 ["View"]
  DUPTABLE R5 K8 [{"tag", "LayoutOrder"}]
  LOADK R6 K9 ["auto-xy"]
  SETTABLEKS R6 R5 K6 ["tag"]
  GETTABLEKS R6 R0 K10 ["layoutOrder"]
  SETTABLEKS R6 R5 K7 ["LayoutOrder"]
  NEWTABLE R6 0 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K11 ["Popover"]
  GETTABLEKS R8 R9 K12 ["Root"]
  DUPTABLE R9 K14 [{"isOpen"}]
  GETTABLEKS R10 R0 K15 ["isPopoverOpen"]
  SETTABLEKS R10 R9 K13 ["isOpen"]
  DUPTABLE R10 K18 [{"Anchor", "Content"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K11 ["Popover"]
  GETTABLEKS R12 R13 K16 ["Anchor"]
  NEWTABLE R13 0 0
  DUPTABLE R14 K20 [{"Dropdown"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K4 ["createElement"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K5 ["View"]
  DUPTABLE R17 K24 [{"tag", "isDisabled", "Size", "onActivated"}]
  LOADK R18 K25 ["row align-y-center bg-shift-200 radius-small padding-x-small"]
  SETTABLEKS R18 R17 K6 ["tag"]
  GETTABLEKS R18 R0 K21 ["isDisabled"]
  SETTABLEKS R18 R17 K21 ["isDisabled"]
  GETTABLEKS R18 R0 K26 ["size"]
  SETTABLEKS R18 R17 K22 ["Size"]
  GETTABLEKS R18 R0 K23 ["onActivated"]
  SETTABLEKS R18 R17 K23 ["onActivated"]
  DUPTABLE R18 K29 [{"Text", "Arrow"}]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K4 ["createElement"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K27 ["Text"]
  DUPTABLE R21 K30 [{"tag", "LayoutOrder", "Text"}]
  NEWTABLE R22 2 0
  LOADB R23 1
  SETTABLEKS R23 R22 K31 ["auto-xy fill text-body-small text-align-x-left text-truncate-split"]
  GETTABLEKS R23 R0 K21 ["isDisabled"]
  SETTABLEKS R23 R22 K32 ["content-muted"]
  SETTABLEKS R22 R21 K6 ["tag"]
  MOVE R22 R2
  CALL R22 0 1
  SETTABLEKS R22 R21 K7 ["LayoutOrder"]
  GETTABLEKS R23 R0 K33 ["text"]
  JUMPIFNOTEQKNIL R23 [+9]
  LOADK R24 K34 ["Common"]
  LOADK R25 K35 ["AnimationEditor"]
  LOADK R26 K34 ["Common"]
  LOADK R27 K36 ["None"]
  NAMECALL R22 R1 K37 ["getExternalText"]
  CALL R22 5 1
  JUMP [+2]
  GETTABLEKS R22 R0 K33 ["text"]
  SETTABLEKS R22 R21 K27 ["Text"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K27 ["Text"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K4 ["createElement"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K38 ["Image"]
  DUPTABLE R21 K39 [{"tag", "LayoutOrder", "Image"}]
  NEWTABLE R22 2 0
  LOADB R23 1
  SETTABLEKS R23 R22 K40 ["size-400-400"]
  GETTABLEKS R23 R0 K21 ["isDisabled"]
  SETTABLEKS R23 R22 K32 ["content-muted"]
  SETTABLEKS R22 R21 K6 ["tag"]
  MOVE R22 R2
  CALL R22 0 1
  SETTABLEKS R22 R21 K7 ["LayoutOrder"]
  LOADK R22 K41 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/expanded.png"]
  SETTABLEKS R22 R21 K38 ["Image"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K28 ["Arrow"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K19 ["Dropdown"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K16 ["Anchor"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K11 ["Popover"]
  GETTABLEKS R12 R13 K17 ["Content"]
  DUPTABLE R13 K46 [{"hasArrow", "onPressedOutside", "align", "side"}]
  LOADB R14 0
  SETTABLEKS R14 R13 K42 ["hasArrow"]
  GETTABLEKS R14 R0 K43 ["onPressedOutside"]
  SETTABLEKS R14 R13 K43 ["onPressedOutside"]
  DUPTABLE R14 K49 [{"position", "offset"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K50 ["Enums"]
  GETTABLEKS R16 R17 K51 ["PopoverAlign"]
  GETTABLEKS R15 R16 K52 ["Start"]
  SETTABLEKS R15 R14 K47 ["position"]
  LOADN R15 0
  SETTABLEKS R15 R14 K48 ["offset"]
  SETTABLEKS R14 R13 K44 ["align"]
  DUPTABLE R14 K49 [{"position", "offset"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K50 ["Enums"]
  GETTABLEKS R16 R17 K53 ["PopoverSide"]
  GETTABLEKS R15 R16 K54 ["Bottom"]
  SETTABLEKS R15 R14 K47 ["position"]
  LOADN R15 8
  SETTABLEKS R15 R14 K48 ["offset"]
  SETTABLEKS R14 R13 K45 ["side"]
  GETTABLEKS R15 R0 K15 ["isPopoverOpen"]
  JUMPIFNOT R15 [+3]
  GETTABLEKS R14 R0 K55 ["children"]
  JUMP [+1]
  LOADNIL R14
  CALL R11 3 1
  SETTABLEKS R11 R10 K17 ["Content"]
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K10 ["ReactUtils"]
  CALL R5 1 1
  DUPCLOSURE R6 K11 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  RETURN R6 1
