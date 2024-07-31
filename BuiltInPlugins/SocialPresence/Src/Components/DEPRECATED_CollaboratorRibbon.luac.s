PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["use"]
  CALL R2 0 1
  LOADN R3 0
  JUMPIFNOTLT R3 R0 [+24]
  FASTCALL2K MATH_MIN R0 K1 [+5]
  MOVE R4 R0
  LOADK R5 K1 [5]
  GETIMPORT R3 K4 [math.min]
  CALL R3 2 1
  LOADN R6 24
  MUL R5 R6 R3
  SUBK R7 R3 K6 [1]
  MULK R6 R7 K5 [6]
  SUB R4 R5 R6
  LOADN R5 24
  JUMPIFNOT R1 [+1]
  ADDK R4 R4 K7 [24]
  ADDK R4 R4 K8 [4]
  ADDK R5 R5 K8 [4]
  GETIMPORT R6 K11 [Vector2.new]
  MOVE R7 R4
  MOVE R8 R5
  CALL R6 2 -1
  RETURN R6 -1
  LOADN R6 24
  GETUPVAL R8 1
  LOADK R12 K12 ["Ribbon"]
  LOADK R13 K13 ["Collaborate"]
  NAMECALL R10 R2 K14 ["getText"]
  CALL R10 3 1
  LOADN R11 18
  GETIMPORT R12 K18 [Enum.Font.SourceSansBold]
  GETUPVAL R13 2
  NAMECALL R8 R8 K19 ["GetTextSize"]
  CALL R8 5 1
  GETTABLEKS R7 R8 K20 ["X"]
  ADD R5 R6 R7
  ADDK R4 R5 K8 [4]
  ADDK R3 R4 K8 [4]
  GETIMPORT R4 K11 [Vector2.new]
  MOVE R5 R3
  LOADN R6 28
  CALL R4 2 -1
  RETURN R4 -1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetCollaboratorsList"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetCollaboratorsList"]
  CALL R0 1 1
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["CollaboratorInstanceCreatedSignal"]
  MOVE R4 R1
  NAMECALL R2 R2 K2 ["Connect"]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["CollaboratorInstanceDestroyedSignal"]
  MOVE R5 R1
  NAMECALL R3 R3 K2 ["Connect"]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["CollaboratorIdleUpdate"]
  MOVE R6 R1
  NAMECALL R4 R4 K2 ["Connect"]
  CALL R4 2 1
  NEWCLOSURE R5 P1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnClick"]
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADK R2 K0 ["manageCollaboratorsPressed"]
  NAMECALL R0 R0 K1 ["report"]
  CALL R0 2 0
  GETUPVAL R0 1
  LOADK R2 K2 ["ToggleManageCollaborators"]
  NAMECALL R0 R0 K3 ["Fire"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["new"]
  LOADK R4 K2 ["ManageCollaborators"]
  CALL R3 1 1
  GETUPVAL R4 2
  NAMECALL R4 R4 K3 ["use"]
  CALL R4 1 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["use"]
  CALL R5 0 1
  GETUPVAL R6 4
  NAMECALL R6 R6 K3 ["use"]
  CALL R6 1 1
  GETUPVAL R7 5
  NAMECALL R7 R7 K3 ["use"]
  CALL R7 1 1
  NAMECALL R7 R7 K4 ["get"]
  CALL R7 1 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["useState"]
  NEWTABLE R9 0 0
  CALL R8 1 2
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["useEffect"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R7
  CAPTURE VAL R9
  NEWTABLE R12 0 0
  CALL R10 2 0
  DUPTABLE R10 K8 [{"Layout", "HoverArea"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["createElement"]
  LOADK R12 K10 ["UIListLayout"]
  DUPTABLE R13 K13 [{"SortOrder", "FillDirection"}]
  GETIMPORT R14 K16 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K11 ["SortOrder"]
  GETIMPORT R14 K18 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K12 ["FillDirection"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K6 ["Layout"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K21 [{"AutomaticSize", "Cursor"}]
  GETIMPORT R14 K23 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K19 ["AutomaticSize"]
  LOADK R14 K24 ["PointingHand"]
  SETTABLEKS R14 R13 K20 ["Cursor"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K7 ["HoverArea"]
  MOVE R11 R8
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  LOADN R16 4
  JUMPIFLT R16 R14 [+80]
  GETTABLEKS R16 R15 K25 ["UserId"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K9 ["createElement"]
  GETUPVAL R18 7
  DUPTABLE R19 K28 [{"Size", "OnClick"}]
  GETIMPORT R20 K31 [UDim2.fromOffset]
  LOADN R21 18
  LOADN R22 24
  CALL R20 2 1
  SETTABLEKS R20 R19 K26 ["Size"]
  NEWCLOSURE R20 P1
  CAPTURE VAL R0
  SETTABLEKS R20 R19 K27 ["OnClick"]
  DUPTABLE R20 K34 [{"Avatar", "Corner"}]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K9 ["createElement"]
  GETUPVAL R22 8
  DUPTABLE R23 K40 [{"Id", "IsIdle", "Size", "RingColor", "BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R24 R15 K25 ["UserId"]
  SETTABLEKS R24 R23 K35 ["Id"]
  GETTABLEKS R24 R15 K36 ["IsIdle"]
  SETTABLEKS R24 R23 K36 ["IsIdle"]
  GETTABLEKS R25 R4 K41 ["ribbonItem"]
  GETTABLEKS R24 R25 K42 ["size"]
  SETTABLEKS R24 R23 K26 ["Size"]
  GETTABLEKS R24 R15 K43 ["CollaboratorColor3"]
  SETTABLEKS R24 R23 K37 ["RingColor"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R25 R4 K41 ["ribbonItem"]
  GETTABLEKS R24 R25 K44 ["buttonHover"]
  JUMPIF R24 [+4]
  GETTABLEKS R25 R4 K41 ["ribbonItem"]
  GETTABLEKS R24 R25 K45 ["background"]
  SETTABLEKS R24 R23 K38 ["BackgroundColor3"]
  LOADN R24 0
  SETTABLEKS R24 R23 K39 ["BackgroundTransparency"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K32 ["Avatar"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K9 ["createElement"]
  LOADK R22 K46 ["UICorner"]
  DUPTABLE R23 K48 [{"CornerRadius"}]
  GETIMPORT R24 K50 [UDim.new]
  LOADK R25 K51 [0.5]
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K47 ["CornerRadius"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K33 ["Corner"]
  CALL R17 3 1
  SETTABLE R17 R10 R16
  FORGLOOP R11 2 [-81]
  LENGTH R11 R8
  LOADN R12 4
  JUMPIFNOTLT R12 R11 [+84]
  MOVE R12 R10
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K9 ["createElement"]
  GETUPVAL R14 7
  DUPTABLE R15 K53 [{"Size", "BackgroundColor3", "BackgroundTransparency", "LayoutOrder", "ZIndex", "OnClick"}]
  GETTABLEKS R17 R4 K41 ["ribbonItem"]
  GETTABLEKS R16 R17 K42 ["size"]
  SETTABLEKS R16 R15 K26 ["Size"]
  GETTABLEKS R17 R4 K41 ["ribbonItem"]
  GETTABLEKS R16 R17 K54 ["overflowBackground"]
  SETTABLEKS R16 R15 K38 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K39 ["BackgroundTransparency"]
  LOADN R16 4
  SETTABLEKS R16 R15 K15 ["LayoutOrder"]
  LOADN R16 4
  SETTABLEKS R16 R15 K52 ["ZIndex"]
  GETTABLEKS R16 R0 K27 ["OnClick"]
  SETTABLEKS R16 R15 K27 ["OnClick"]
  DUPTABLE R16 K56 [{"Corner", "Text"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K9 ["createElement"]
  LOADK R18 K46 ["UICorner"]
  DUPTABLE R19 K48 [{"CornerRadius"}]
  GETIMPORT R20 K50 [UDim.new]
  LOADK R21 K51 [0.5]
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K47 ["CornerRadius"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K33 ["Corner"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K9 ["createElement"]
  GETUPVAL R18 9
  DUPTABLE R19 K60 [{"Text", "Position", "TextSize", "Font", "ZIndex"}]
  LOADK R21 K61 ["+"]
  LENGTH R23 R8
  SUBK R22 R23 K62 [4]
  CONCAT R20 R21 R22
  SETTABLEKS R20 R19 K55 ["Text"]
  GETIMPORT R20 K31 [UDim2.fromOffset]
  LOADN R21 255
  LOADN R22 255
  CALL R20 2 1
  SETTABLEKS R20 R19 K57 ["Position"]
  LOADN R20 13
  SETTABLEKS R20 R19 K58 ["TextSize"]
  GETIMPORT R20 K64 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R20 R19 K59 ["Font"]
  LOADN R20 5
  SETTABLEKS R20 R19 K52 ["ZIndex"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K55 ["Text"]
  CALL R13 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R11 K67 [table.insert]
  CALL R11 -1 0
  GETTABLEKS R11 R0 K68 ["Widget"]
  JUMPIFNOT R11 [+38]
  GETIMPORT R11 K70 [game]
  LOADK R13 K71 ["StudioWidgetsService"]
  NAMECALL R11 R11 K72 ["GetService"]
  CALL R11 2 1
  GETIMPORT R12 K70 [game]
  LOADK R14 K73 ["RunService"]
  NAMECALL R12 R12 K72 ["GetService"]
  CALL R12 2 1
  GETTABLEKS R15 R0 K68 ["Widget"]
  NAMECALL R13 R11 K74 ["GetWidgetFromPluginGui"]
  CALL R13 2 1
  NAMECALL R14 R12 K75 ["IsEdit"]
  CALL R14 1 1
  JUMPIFNOT R14 [+12]
  GETUPVAL R14 10
  LENGTH R15 R8
  LOADB R16 1
  CALL R14 2 1
  GETTABLEKS R17 R14 K76 ["X"]
  GETTABLEKS R18 R14 K77 ["Y"]
  NAMECALL R15 R13 K78 ["SetFixedSize"]
  CALL R15 3 0
  JUMP [+5]
  LOADN R16 1
  LOADN R17 24
  NAMECALL R14 R13 K78 ["SetFixedSize"]
  CALL R14 3 0
  GETUPVAL R11 10
  LENGTH R12 R8
  LOADB R13 0
  CALL R11 2 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K80 [{"Spacing", "BackgroundColor3"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K79 ["Spacing"]
  GETTABLEKS R16 R4 K41 ["ribbonItem"]
  GETTABLEKS R15 R16 K45 ["background"]
  SETTABLEKS R15 R14 K38 ["BackgroundColor3"]
  NEWTABLE R15 1 1
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K9 ["createElement"]
  GETUPVAL R17 7
  NEWTABLE R18 8 0
  LOADK R19 K81 ["Box"]
  SETTABLEKS R19 R18 K82 ["Style"]
  GETIMPORT R19 K83 [UDim2.new]
  LOADN R20 0
  GETTABLEKS R21 R11 K76 ["X"]
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K26 ["Size"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R20 R4 K41 ["ribbonItem"]
  GETTABLEKS R19 R20 K44 ["buttonHover"]
  JUMPIF R19 [+4]
  GETTABLEKS R20 R4 K41 ["ribbonItem"]
  GETTABLEKS R19 R20 K45 ["background"]
  SETTABLEKS R19 R18 K38 ["BackgroundColor3"]
  LENGTH R20 R8
  LOADN R21 0
  JUMPIFNOTLT R21 R20 [+3]
  LOADN R19 2
  JUMP [+1]
  LOADN R19 0
  SETTABLEKS R19 R18 K84 ["Padding"]
  GETTABLEKS R19 R0 K27 ["OnClick"]
  SETTABLEKS R19 R18 K27 ["OnClick"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K85 ["Event"]
  GETTABLEKS R19 R20 K86 ["MouseEnter"]
  NEWCLOSURE R20 P2
  CAPTURE VAL R2
  SETTABLE R20 R18 R19
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K85 ["Event"]
  GETTABLEKS R19 R20 K87 ["MouseLeave"]
  NEWCLOSURE R20 P3
  CAPTURE VAL R2
  SETTABLE R20 R18 R19
  MOVE R19 R10
  CALL R16 3 1
  SETLIST R15 R16 1 [1]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K9 ["createElement"]
  GETUPVAL R18 7
  DUPTABLE R19 K88 [{"LayoutOrder"}]
  LOADN R20 100
  SETTABLEKS R20 R19 K15 ["LayoutOrder"]
  NEWTABLE R20 0 1
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K9 ["createElement"]
  GETUPVAL R22 11
  DUPTABLE R23 K94 [{"AutomaticSize", "Size", "Position", "AnchorPoint", "LeftIcon", "OnClick", "Spacing", "Padding", "HoverColor", "Text", "BackgroundStyle", "BackgroundColor"}]
  GETIMPORT R24 K95 [Enum.AutomaticSize.X]
  SETTABLEKS R24 R23 K19 ["AutomaticSize"]
  GETTABLEKS R25 R4 K41 ["ribbonItem"]
  GETTABLEKS R24 R25 K42 ["size"]
  SETTABLEKS R24 R23 K26 ["Size"]
  LENGTH R25 R8
  LOADN R26 0
  JUMPIFNOTLT R26 R25 [+9]
  GETIMPORT R24 K83 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  JUMPIF R24 [+7]
  GETIMPORT R24 K83 [UDim2.new]
  LOADN R25 1
  LOADN R26 250
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K57 ["Position"]
  GETIMPORT R24 K97 [Vector2.new]
  LOADN R25 1
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K89 ["AnchorPoint"]
  GETTABLEKS R25 R4 K41 ["ribbonItem"]
  GETTABLEKS R24 R25 K98 ["addIcon"]
  SETTABLEKS R24 R23 K90 ["LeftIcon"]
  NEWCLOSURE R24 P4
  CAPTURE VAL R6
  CAPTURE VAL R3
  SETTABLEKS R24 R23 K27 ["OnClick"]
  LOADN R24 4
  SETTABLEKS R24 R23 K79 ["Spacing"]
  LOADN R24 4
  SETTABLEKS R24 R23 K84 ["Padding"]
  GETTABLEKS R25 R4 K41 ["ribbonItem"]
  GETTABLEKS R24 R25 K44 ["buttonHover"]
  SETTABLEKS R24 R23 K91 ["HoverColor"]
  LENGTH R25 R8
  JUMPIFNOTEQKN R25 K99 [0] [+7]
  LOADK R26 K100 ["Ribbon"]
  LOADK R27 K101 ["Collaborate"]
  NAMECALL R24 R5 K102 ["getText"]
  CALL R24 3 1
  JUMPIF R24 [+1]
  LOADNIL R24
  SETTABLEKS R24 R23 K55 ["Text"]
  LOADK R24 K103 ["RoundBox"]
  SETTABLEKS R24 R23 K92 ["BackgroundStyle"]
  GETTABLEKS R25 R4 K41 ["ribbonItem"]
  GETTABLEKS R24 R25 K45 ["background"]
  SETTABLEKS R24 R23 K93 ["BackgroundColor"]
  CALL R21 2 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  SETTABLEKS R17 R15 K104 ["AddCollaboratorButton"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["UI"]
  GETTABLEKS R4 R3 K9 ["Pane"]
  GETTABLEKS R5 R3 K10 ["TextLabel"]
  GETTABLEKS R6 R3 K11 ["IconButton"]
  GETTABLEKS R7 R3 K12 ["HoverArea"]
  GETTABLEKS R8 R2 K13 ["ContextServices"]
  GETTABLEKS R9 R8 K14 ["Localization"]
  GETTABLEKS R10 R8 K15 ["Analytics"]
  GETTABLEKS R12 R2 K16 ["Util"]
  GETTABLEKS R11 R12 K17 ["CrossPluginCommunication"]
  GETTABLEKS R13 R2 K18 ["Style"]
  GETTABLEKS R12 R13 K19 ["Stylizer"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K20 ["Src"]
  GETTABLEKS R15 R16 K13 ["ContextServices"]
  GETTABLEKS R14 R15 K21 ["CollaboratorsServiceContext"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R18 R0 K20 ["Src"]
  GETTABLEKS R17 R18 K22 ["Components"]
  GETTABLEKS R16 R17 K23 ["Thumbnails"]
  GETTABLEKS R15 R16 K24 ["CollaboratorActivityThumbnail"]
  CALL R14 1 1
  GETIMPORT R15 K26 [game]
  LOADK R17 K27 ["TextService"]
  NAMECALL R15 R15 K28 ["GetService"]
  CALL R15 2 1
  GETIMPORT R16 K31 [Vector2.new]
  LOADN R17 232
  LOADN R18 1
  CALL R16 2 1
  DUPCLOSURE R17 K32 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R15
  CAPTURE VAL R16
  DUPCLOSURE R18 K33 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R14
  CAPTURE VAL R5
  CAPTURE VAL R17
  CAPTURE VAL R6
  RETURN R18 1
