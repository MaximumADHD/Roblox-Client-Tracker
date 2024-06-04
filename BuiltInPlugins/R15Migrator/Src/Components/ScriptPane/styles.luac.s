MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETTABLEKS R3 R1 K10 ["SharedFlags"]
  GETTABLEKS R4 R3 K11 ["getFFlagDevFrameworkTreeTableCellPadding"]
  CALL R4 0 1
  GETTABLEKS R5 R3 K12 ["getFFlagDevFrameworkFixTreeTableHoverScroll"]
  MOVE R6 R2
  LOADK R7 K13 [".Component-TreeTable"]
  NEWTABLE R8 0 0
  NEWTABLE R9 0 1
  MOVE R10 R2
  LOADK R11 K14 [">> .Component-CellComponent"]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 2
  MOVE R14 R2
  LOADK R15 K15 ["> .Left ::UIPadding"]
  JUMPIFNOT R4 [+30]
  DUPTABLE R16 K20 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R17 K23 [UDim.new]
  LOADN R18 0
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K16 ["PaddingTop"]
  GETIMPORT R17 K23 [UDim.new]
  LOADN R18 0
  LOADN R19 1
  CALL R17 2 1
  SETTABLEKS R17 R16 K17 ["PaddingBottom"]
  GETIMPORT R17 K23 [UDim.new]
  LOADN R18 0
  LOADN R19 5
  CALL R17 2 1
  SETTABLEKS R17 R16 K18 ["PaddingLeft"]
  GETIMPORT R17 K23 [UDim.new]
  LOADN R18 0
  LOADN R19 5
  CALL R17 2 1
  SETTABLEKS R17 R16 K19 ["PaddingRight"]
  JUMP [+16]
  DUPTABLE R16 K25 [{"Padding"}]
  DUPTABLE R17 K30 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K26 ["Top"]
  LOADN R18 1
  SETTABLEKS R18 R17 K27 ["Bottom"]
  LOADN R18 5
  SETTABLEKS R18 R17 K28 ["Left"]
  LOADN R18 5
  SETTABLEKS R18 R17 K29 ["Right"]
  SETTABLEKS R17 R16 K24 ["Padding"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K31 [">> .Arrow"]
  MOVE R18 R5
  CALL R18 0 1
  JUMPIFNOT R18 [+15]
  DUPTABLE R17 K35 [{"BackgroundTransparency", "Image", "Size"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K32 ["BackgroundTransparency"]
  LOADK R18 K36 ["$ArrowRightImage"]
  SETTABLEKS R18 R17 K33 ["Image"]
  GETIMPORT R18 K39 [UDim2.fromOffset]
  LOADN R19 16
  LOADN R20 16
  CALL R18 2 1
  SETTABLEKS R18 R17 K34 ["Size"]
  JUMP [+31]
  DUPTABLE R17 K43 [{"BackgroundTransparency", "Image", "ImageColor3", "ImageRectSize", "ImageRectOffset", "Size"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K32 ["BackgroundTransparency"]
  LOADK R18 K44 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R18 R17 K33 ["Image"]
  LOADK R18 K45 ["$TextPrimary"]
  SETTABLEKS R18 R17 K40 ["ImageColor3"]
  GETIMPORT R18 K47 [Vector2.new]
  LOADN R19 12
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K41 ["ImageRectSize"]
  GETIMPORT R18 K47 [Vector2.new]
  LOADN R19 12
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K42 ["ImageRectOffset"]
  GETIMPORT R18 K39 [UDim2.fromOffset]
  LOADN R19 12
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K34 ["Size"]
  NEWTABLE R18 0 1
  JUMPIFNOT R4 [+8]
  MOVE R19 R2
  LOADK R20 K48 [".Invisible"]
  DUPTABLE R21 K50 [{"ImageTransparency"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K49 ["ImageTransparency"]
  CALL R19 2 1
  JUMP [+1]
  LOADNIL R19
  SETLIST R18 R19 1 [1]
  CALL R15 3 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R9 R10 -1 [1]
  DUPTABLE R10 K54 [{"ArrowSize", "CellPadding", "Indent"}]
  MOVE R12 R5
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADN R11 16
  JUMP [+1]
  LOADN R11 12
  SETTABLEKS R11 R10 K51 ["ArrowSize"]
  LOADN R11 5
  SETTABLEKS R11 R10 K52 ["CellPadding"]
  LOADN R11 20
  SETTABLEKS R11 R10 K53 ["Indent"]
  CALL R6 4 -1
  RETURN R6 -1
