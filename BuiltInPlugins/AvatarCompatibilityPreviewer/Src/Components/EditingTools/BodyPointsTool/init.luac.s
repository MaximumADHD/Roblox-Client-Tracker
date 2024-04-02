PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K1 [+4]
  LOADK R2 K1 ["Container isn't mounted yet"]
  GETIMPORT R0 K3 [assert]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  RETURN R0 1

PROTO_2:
  LOADB R0 0
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  GETUPVAL R1 1
  GETIMPORT R2 K2 [game]
  GETIMPORT R3 K4 [settings]
  CALL R3 0 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["current"]
  CALL R0 4 1
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K6 ["hoveredPointNames"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K7 ["getGuiParent"]
  DUPCLOSURE R1 K8 [PROTO_2]
  SETTABLEKS R1 R0 K9 ["shouldGridSnap"]
  RETURN R0 1

PROTO_4:
  GETIMPORT R2 K2 [table.find]
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K3 ["name"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["filter"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["points"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CALL R0 2 -1
  RETURN R0 -1

PROTO_6:
  NEWTABLE R0 0 0
  GETUPVAL R4 0
  GETTABLEKS R1 R4 K0 ["points"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  DUPTABLE R8 K3 [{"name", "cframe"}]
  GETTABLEKS R9 R5 K1 ["name"]
  SETTABLEKS R9 R8 K1 ["name"]
  GETTABLEKS R9 R5 K4 ["getCFrame"]
  CALL R9 0 1
  SETTABLEKS R9 R8 K2 ["cframe"]
  FASTCALL2 TABLE_INSERT R0 R8 [+4]
  MOVE R7 R0
  GETIMPORT R6 K7 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [-17]
  RETURN R0 1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["name"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["symmetricalPartner"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["onChange"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["enabled"]
  JUMPIFNOT R1 [+43]
  GETUPVAL R1 2
  JUMPIFEQKNIL R1 [+41]
  GETUPVAL R1 3
  JUMPIFEQKNIL R1 [+38]
  GETTABLEKS R2 R0 K2 ["Position"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K2 ["Position"]
  SUB R1 R2 R3
  GETUPVAL R4 4
  NAMECALL R4 R4 K3 ["Inverse"]
  CALL R4 1 1
  MUL R3 R0 R4
  GETTABLEKS R2 R3 K4 ["Rotation"]
  NAMECALL R3 R2 K5 ["ToOrientation"]
  CALL R3 1 3
  GETIMPORT R6 K8 [CFrame.fromOrientation]
  MOVE R7 R3
  MINUS R8 R4
  MINUS R9 R5
  CALL R6 3 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K0 ["onChange"]
  GETUPVAL R10 3
  LOADN R13 255
  LOADN R14 1
  LOADN R15 1
  FASTCALL VECTOR [+2]
  GETIMPORT R12 K11 [Vector3.new]
  CALL R12 3 1
  MUL R11 R1 R12
  ADD R9 R10 R11
  MUL R8 R9 R6
  CALL R7 1 0
  GETUPVAL R1 5
  GETUPVAL R2 6
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["getCFrame"]
  CALL R1 0 1
  GETTABLEKS R2 R0 K1 ["symmetricalPartner"]
  JUMPIFNOT R2 [+9]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["find"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["points"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CALL R2 2 1
  MOVE R3 R2
  JUMPIFNOT R3 [+3]
  GETTABLEKS R3 R2 K0 ["getCFrame"]
  CALL R3 0 1
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  RETURN R4 1

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  GETUPVAL R2 1
  NAMECALL R0 R0 K1 ["Set"]
  CALL R0 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  NEWTABLE R2 0 1
  GETUPVAL R3 1
  SETLIST R2 R3 1 [1]
  NAMECALL R0 R0 K1 ["Set"]
  CALL R0 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["hoveredPointNames"]
  LENGTH R3 R0
  LOADN R4 1
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["showAttachmentSelectionDropdown was called without multiple hovered points"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  NEWTABLE R1 0 1
  DUPTABLE R2 K6 [{"Text", "OnItemClicked"}]
  GETUPVAL R3 1
  LOADK R5 K7 ["BodyPointsTool"]
  LOADK R6 K8 ["SelectAll"]
  NAMECALL R3 R3 K9 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K4 ["Text"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K5 ["OnItemClicked"]
  SETLIST R1 R2 1 [1]
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R9 K6 [{"Text", "OnItemClicked"}]
  SETTABLEKS R6 R9 K4 ["Text"]
  NEWCLOSURE R10 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K5 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K12 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-15]
  GETUPVAL R2 3
  GETUPVAL R3 4
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R0 K0 ["name"]
  GETUPVAL R3 0
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["find"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["points"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R1 2 1
  GETTABLEKS R3 R1 K2 ["symmetricalPartner"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["name"]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_15:
  GETIMPORT R0 K2 [table.find]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["hoveredPointNames"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["name"]
  CALL R0 2 1
  JUMPIFEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["hoveredPointNames"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["name"]
  FASTCALL2 TABLE_INSERT R1 R2 [+3]
  GETIMPORT R0 K6 [table.insert]
  CALL R0 2 0
  RETURN R0 0

PROTO_16:
  GETIMPORT R0 K2 [table.find]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["hoveredPointNames"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["name"]
  CALL R0 2 1
  JUMPIFEQKNIL R0 [+8]
  GETIMPORT R1 K6 [table.remove]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["hoveredPointNames"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R3 0
  NAMECALL R3 R3 K0 ["Inverse"]
  CALL R3 1 1
  MUL R2 R3 R0
  GETUPVAL R3 0
  MUL R1 R2 R3
  GETUPVAL R2 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K1 ["Rotation"]
  MUL R4 R1 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["Position"]
  ADD R3 R4 R5
  CALL R2 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  GETUPVAL R1 2
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R6 3
  MOVE R7 R5
  CALL R6 1 1
  GETTABLEKS R7 R5 K0 ["getCFrame"]
  CALL R7 0 1
  GETUPVAL R9 4
  NEWCLOSURE R10 P0
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R7
  FASTCALL2 TABLE_INSERT R9 R10 [+3]
  GETIMPORT R8 K3 [table.insert]
  CALL R8 2 0
  FORGLOOP R1 2 [-17]
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R7 R6
  MOVE R8 R1
  CALL R7 1 0
  FORGLOOP R2 2 [-4]
  RETURN R1 1

PROTO_20:
  RETURN R0 0

PROTO_21:
  LOADNIL R0
  RETURN R0 1

PROTO_22:
  NEWTABLE R0 0 0
  DUPTABLE R1 K4 [{"beginDrag", "updateDrag", "endDrag", "render"}]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K0 ["beginDrag"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K1 ["updateDrag"]
  DUPCLOSURE R2 K5 [PROTO_20]
  SETTABLEKS R2 R1 K2 ["endDrag"]
  DUPCLOSURE R2 K6 [PROTO_21]
  SETTABLEKS R2 R1 K3 ["render"]
  RETURN R1 1

PROTO_23:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  GETUPVAL R1 1
  DUPTABLE R2 K4 [{"ShowBoundingBox", "Summonable", "Outset"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["ShowBoundingBox"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["Summonable"]
  LOADK R3 K5 [0.3]
  SETTABLEKS R3 R2 K3 ["Outset"]
  GETUPVAL R3 2
  CALL R0 3 -1
  RETURN R0 -1

PROTO_24:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  GETUPVAL R1 1
  DUPTABLE R2 K4 [{"ShowBoundingBox", "Summonable", "Outset"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["ShowBoundingBox"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["Summonable"]
  LOADK R3 K5 [0.3]
  SETTABLEKS R3 R2 K3 ["Outset"]
  GETUPVAL R3 2
  CALL R0 3 -1
  RETURN R0 -1

PROTO_25:
  DUPTABLE R0 K4 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["Mouse"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["current"]
  SETTABLEKS R1 R0 K1 ["DraggerContext"]
  GETUPVAL R1 2
  SETTABLEKS R1 R0 K2 ["DraggerSchema"]
  DUPTABLE R1 K8 [{"AnalyticsName", "HandlesList"}]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K9 ["name"]
  SETTABLEKS R2 R1 K6 ["AnalyticsName"]
  NEWTABLE R2 0 2
  GETUPVAL R3 4
  GETUPVAL R4 5
  SETLIST R2 R3 2 [1]
  SETTABLEKS R2 R1 K7 ["HandlesList"]
  SETTABLEKS R1 R0 K3 ["DraggerSettings"]
  RETURN R0 1

PROTO_26:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  LOADK R4 K1 ["BodyPointsTool"]
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 2 1
  NEWTABLE R3 0 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["useState"]
  NEWTABLE R5 0 0
  CALL R4 1 2
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["useRef"]
  LOADNIL R7
  CALL R6 1 1
  GETUPVAL R7 3
  NAMECALL R7 R7 K0 ["use"]
  CALL R7 1 1
  NAMECALL R7 R7 K4 ["get"]
  CALL R7 1 1
  GETUPVAL R8 4
  LOADB R9 0
  CALL R8 1 1
  GETUPVAL R9 5
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U6
  CAPTURE VAL R5
  CALL R9 1 1
  GETUPVAL R10 5
  NEWCLOSURE R11 P1
  CAPTURE UPVAL U7
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R6
  CALL R10 1 1
  GETTABLEKS R11 R10 K5 ["current"]
  GETTABLEKS R12 R9 K5 ["current"]
  SETTABLEKS R11 R12 K6 ["draggerContext"]
  GETTABLEKS R12 R0 K7 ["points"]
  SETTABLEKS R12 R11 K7 ["points"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K8 ["useMemo"]
  NEWCLOSURE R13 P2
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  CAPTURE VAL R4
  NEWTABLE R14 0 2
  GETTABLEKS R15 R0 K7 ["points"]
  MOVE R16 R4
  SETLIST R14 R15 2 [1]
  CALL R12 2 1
  SETTABLEKS R12 R11 K9 ["selectedPoints"]
  GETTABLEKS R13 R0 K10 ["worldModel"]
  SETTABLEKS R13 R11 K10 ["worldModel"]
  GETUPVAL R13 4
  LOADB R14 1
  CALL R13 1 1
  GETTABLEKS R14 R13 K11 ["enabled"]
  SETTABLEKS R14 R11 K12 ["projectionEnabled"]
  GETUPVAL R14 4
  LOADB R15 1
  CALL R14 1 1
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K13 ["useEffect"]
  GETTABLEKS R16 R8 K14 ["enable"]
  NEWTABLE R17 0 0
  CALL R15 2 0
  GETUPVAL R15 9
  NAMECALL R15 R15 K0 ["use"]
  CALL R15 1 1
  NAMECALL R15 R15 K4 ["get"]
  CALL R15 1 1
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K15 ["useCallback"]
  NEWCLOSURE R17 P3
  CAPTURE VAL R0
  NEWTABLE R18 0 1
  GETTABLEKS R19 R0 K7 ["points"]
  SETLIST R18 R19 1 [1]
  CALL R16 2 1
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K2 ["useState"]
  MOVE R18 R16
  CALL R17 1 2
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K15 ["useCallback"]
  NEWCLOSURE R20 P4
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  CAPTURE VAL R14
  CAPTURE VAL R18
  CAPTURE VAL R16
  NEWTABLE R21 0 2
  GETTABLEKS R22 R0 K7 ["points"]
  GETTABLEKS R23 R14 K11 ["enabled"]
  SETLIST R21 R22 2 [1]
  CALL R19 2 1
  SETTABLEKS R19 R11 K16 ["createUpdatePointPosition"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K15 ["useCallback"]
  NEWCLOSURE R21 P5
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE UPVAL U10
  CAPTURE VAL R7
  NEWTABLE R22 0 1
  GETTABLEKS R23 R0 K7 ["points"]
  SETLIST R22 R23 1 [1]
  CALL R20 2 1
  SETTABLEKS R20 R11 K17 ["showAttachmentSelectionDropdown"]
  MOVE R21 R17
  LOADNIL R22
  LOADNIL R23
  FORGPREP R21
  GETIMPORT R27 K20 [table.find]
  MOVE R28 R4
  GETTABLEKS R29 R25 K21 ["name"]
  CALL R27 2 1
  JUMPIFNOTEQKNIL R27 [+2]
  LOADB R26 0 +1
  LOADB R26 1
  NOT R27 R26
  JUMPIFNOT R27 [+12]
  GETTABLEKS R27 R14 K11 ["enabled"]
  JUMPIFNOT R27 [+9]
  GETUPVAL R28 8
  GETTABLEKS R27 R28 K19 ["find"]
  MOVE R28 R4
  NEWCLOSURE R29 P6
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  CAPTURE VAL R25
  CALL R27 2 1
  LOADK R29 K22 ["Point%*"]
  MOVE R31 R24
  NAMECALL R29 R29 K23 ["format"]
  CALL R29 2 1
  MOVE R28 R29
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K24 ["createElement"]
  LOADK R30 K25 ["SphereHandleAdornment"]
  NEWTABLE R31 8 0
  GETTABLEKS R33 R0 K10 ["worldModel"]
  GETTABLEKS R32 R33 K26 ["PrimaryPart"]
  SETTABLEKS R32 R31 K27 ["Adornee"]
  LOADB R32 1
  SETTABLEKS R32 R31 K28 ["AlwaysOnTop"]
  GETTABLEKS R32 R25 K29 ["cframe"]
  SETTABLEKS R32 R31 K30 ["CFrame"]
  JUMPIFNOT R26 [+7]
  GETIMPORT R32 K33 [Color3.new]
  LOADN R33 0
  LOADN R34 1
  LOADN R35 0
  CALL R32 3 1
  JUMP [+14]
  JUMPIFNOT R27 [+7]
  GETIMPORT R32 K33 [Color3.new]
  LOADN R33 0
  LOADN R34 0
  LOADN R35 1
  CALL R32 3 1
  JUMP [+6]
  GETIMPORT R32 K33 [Color3.new]
  LOADN R33 1
  LOADN R34 0
  LOADN R35 0
  CALL R32 3 1
  SETTABLEKS R32 R31 K31 ["Color3"]
  LOADK R32 K34 [0.1]
  SETTABLEKS R32 R31 K35 ["Radius"]
  JUMPIFNOT R26 [+2]
  LOADN R32 0
  JUMP [+1]
  LOADN R32 1
  SETTABLEKS R32 R31 K36 ["ZIndex"]
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K37 ["Event"]
  GETTABLEKS R32 R33 K38 ["MouseEnter"]
  NEWCLOSURE R33 P7
  CAPTURE VAL R11
  CAPTURE VAL R25
  SETTABLE R33 R31 R32
  GETUPVAL R34 2
  GETTABLEKS R33 R34 K37 ["Event"]
  GETTABLEKS R32 R33 K39 ["MouseLeave"]
  NEWCLOSURE R33 P8
  CAPTURE VAL R11
  CAPTURE VAL R25
  SETTABLE R33 R31 R32
  CALL R29 2 1
  SETTABLE R29 R3 R28
  FORGLOOP R21 2 [-103]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K8 ["useMemo"]
  NEWCLOSURE R22 P9
  CAPTURE UPVAL U11
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R19
  NEWTABLE R23 0 3
  MOVE R24 R12
  MOVE R25 R16
  MOVE R26 R19
  SETLIST R23 R24 3 [1]
  CALL R21 2 1
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K8 ["useMemo"]
  NEWCLOSURE R23 P10
  CAPTURE UPVAL U12
  CAPTURE VAL R11
  CAPTURE VAL R21
  NEWTABLE R24 0 1
  MOVE R25 R21
  SETLIST R24 R25 1 [1]
  CALL R22 2 1
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K8 ["useMemo"]
  NEWCLOSURE R24 P11
  CAPTURE UPVAL U13
  CAPTURE VAL R11
  CAPTURE VAL R21
  NEWTABLE R25 0 1
  MOVE R26 R21
  SETLIST R25 R26 1 [1]
  CALL R23 2 1
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K8 ["useMemo"]
  NEWCLOSURE R25 P12
  CAPTURE VAL R15
  CAPTURE VAL R10
  CAPTURE UPVAL U14
  CAPTURE VAL R0
  CAPTURE VAL R22
  CAPTURE VAL R23
  NEWTABLE R26 0 1
  MOVE R27 R22
  SETLIST R26 R27 1 [1]
  CALL R24 2 1
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K24 ["createElement"]
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K40 ["Fragment"]
  NEWTABLE R27 0 0
  NEWTABLE R28 2 0
  GETUPVAL R31 15
  GETTABLEKS R30 R31 K41 ["EDITING_TOOLS_GUI_NAMES"]
  GETTABLEKS R29 R30 K42 ["BodyPoints"]
  GETUPVAL R31 16
  GETTABLEKS R30 R31 K43 ["createPortal"]
  GETUPVAL R32 2
  GETTABLEKS R31 R32 K24 ["createElement"]
  LOADK R32 K44 ["Folder"]
  DUPTABLE R33 K46 [{"ref"}]
  SETTABLEKS R6 R33 K45 ["ref"]
  MOVE R34 R3
  DUPTABLE R35 K48 [{"Dragger"}]
  GETTABLEKS R36 R8 K11 ["enabled"]
  JUMPIFNOT R36 [+6]
  GETUPVAL R37 2
  GETTABLEKS R36 R37 K24 ["createElement"]
  GETUPVAL R37 17
  MOVE R38 R24
  CALL R36 2 1
  SETTABLEKS R36 R35 K47 ["Dragger"]
  CALL R31 4 1
  GETUPVAL R32 18
  GETUPVAL R35 15
  GETTABLEKS R34 R35 K41 ["EDITING_TOOLS_GUI_NAMES"]
  GETTABLEKS R33 R34 K42 ["BodyPoints"]
  CALL R30 3 1
  SETTABLE R30 R28 R29
  GETUPVAL R31 15
  GETTABLEKS R30 R31 K41 ["EDITING_TOOLS_GUI_NAMES"]
  GETTABLEKS R29 R30 K49 ["BodyPointsToolToolbar"]
  GETUPVAL R31 2
  GETTABLEKS R30 R31 K24 ["createElement"]
  GETUPVAL R32 19
  GETTABLEKS R31 R32 K50 ["Toolbar"]
  DUPTABLE R32 K52 [{"HorizontalItems"}]
  NEWTABLE R33 0 4
  DUPTABLE R34 K58 [{"Type", "Tooltip", "Icon", "OnClick", "Selected"}]
  LOADK R35 K59 ["Button"]
  SETTABLEKS R35 R34 K53 ["Type"]
  LOADK R35 K60 ["Projection"]
  SETTABLEKS R35 R34 K54 ["Tooltip"]
  GETTABLEKS R35 R2 K61 ["ProjectionImage"]
  SETTABLEKS R35 R34 K55 ["Icon"]
  GETTABLEKS R35 R13 K62 ["toggle"]
  SETTABLEKS R35 R34 K56 ["OnClick"]
  GETTABLEKS R35 R13 K11 ["enabled"]
  SETTABLEKS R35 R34 K57 ["Selected"]
  DUPTABLE R35 K58 [{"Type", "Tooltip", "Icon", "OnClick", "Selected"}]
  LOADK R36 K59 ["Button"]
  SETTABLEKS R36 R35 K53 ["Type"]
  LOADK R36 K63 ["Symmetrical"]
  SETTABLEKS R36 R35 K54 ["Tooltip"]
  GETTABLEKS R36 R2 K64 ["SymmetricalImage"]
  SETTABLEKS R36 R35 K55 ["Icon"]
  GETTABLEKS R36 R14 K62 ["toggle"]
  SETTABLEKS R36 R35 K56 ["OnClick"]
  GETTABLEKS R36 R14 K11 ["enabled"]
  SETTABLEKS R36 R35 K57 ["Selected"]
  DUPTABLE R36 K65 [{"Type"}]
  LOADK R37 K66 ["Separator"]
  SETTABLEKS R37 R36 K53 ["Type"]
  GETTABLEKS R38 R0 K67 ["additionalToolbarItems"]
  FASTCALL1 TABLE_UNPACK R38 [+2]
  GETIMPORT R37 K69 [unpack]
  CALL R37 1 -1
  SETLIST R33 R34 -1 [1]
  SETTABLEKS R33 R32 K51 ["HorizontalItems"]
  CALL R30 2 1
  SETTABLE R30 R28 R29
  CALL R25 3 -1
  RETURN R25 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K12 ["DraggerFramework"]
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K10 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K10 ["Packages"]
  GETTABLEKS R6 R7 K14 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R1 K10 ["Packages"]
  GETTABLEKS R7 R8 K15 ["ReactRoblox"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R1 K10 ["Packages"]
  GETTABLEKS R8 R9 K16 ["ViewportToolingFramework"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R1 K17 ["Src"]
  GETTABLEKS R9 R10 K18 ["Types"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETIMPORT R11 K5 [script]
  GETTABLEKS R10 R11 K18 ["Types"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETIMPORT R12 K5 [script]
  GETTABLEKS R11 R12 K19 ["getBoundingBox"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R13 R3 K20 ["Implementation"]
  GETTABLEKS R12 R13 K21 ["DraggerContext_PluginImpl"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETIMPORT R14 K5 [script]
  GETTABLEKS R13 R14 K22 ["DraggerSchema"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R15 R3 K23 ["DraggerTools"]
  GETTABLEKS R14 R15 K24 ["DraggerToolComponent"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETIMPORT R16 K5 [script]
  GETTABLEKS R15 R16 K25 ["DraggerSelection"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R17 R3 K26 ["Handles"]
  GETTABLEKS R16 R17 K27 ["MoveHandles"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R18 R3 K26 ["Handles"]
  GETTABLEKS R17 R18 K28 ["RotateHandles"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R20 R1 K17 ["Src"]
  GETTABLEKS R19 R20 K29 ["Util"]
  GETTABLEKS R18 R19 K30 ["Constants"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R21 R1 K17 ["Src"]
  GETTABLEKS R20 R21 K31 ["Resources"]
  GETTABLEKS R19 R20 K32 ["Theme"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R22 R1 K17 ["Src"]
  GETTABLEKS R21 R22 K33 ["Hooks"]
  GETTABLEKS R20 R21 K34 ["useRefWithInitial"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R23 R1 K17 ["Src"]
  GETTABLEKS R22 R23 K33 ["Hooks"]
  GETTABLEKS R21 R22 K35 ["useToggleState"]
  CALL R20 1 1
  GETTABLEKS R22 R4 K36 ["UI"]
  GETTABLEKS R21 R22 K37 ["showContextMenu"]
  GETTABLEKS R23 R4 K38 ["ContextServices"]
  GETTABLEKS R22 R23 K39 ["Localization"]
  GETTABLEKS R24 R4 K38 ["ContextServices"]
  GETTABLEKS R23 R24 K40 ["Mouse"]
  GETTABLEKS R25 R4 K38 ["ContextServices"]
  GETTABLEKS R24 R25 K41 ["Plugin"]
  GETTABLEKS R26 R4 K38 ["ContextServices"]
  GETTABLEKS R25 R26 K42 ["Stylizer"]
  DUPCLOSURE R26 K43 [PROTO_26]
  CAPTURE VAL R22
  CAPTURE VAL R25
  CAPTURE VAL R5
  CAPTURE VAL R24
  CAPTURE VAL R20
  CAPTURE VAL R19
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R23
  CAPTURE VAL R21
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R17
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R0
  CAPTURE VAL R7
  RETURN R26 1
