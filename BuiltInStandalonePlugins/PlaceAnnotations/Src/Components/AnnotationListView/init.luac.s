PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetChildren"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetChildren"]
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
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ChildAdded"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K1 ["Connect"]
  CALL R0 2 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["ChildRemoved"]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1

PROTO_4:
  NEWTABLE R0 0 0
  GETIMPORT R1 K1 [ipairs]
  GETUPVAL R2 0
  CALL R1 1 3
  FORGPREP_INEXT R1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K5 [{"LayoutOrder", "Annotation"}]
  SETTABLEKS R4 R8 K3 ["LayoutOrder"]
  SETTABLEKS R5 R8 K4 ["Annotation"]
  CALL R6 2 1
  SETTABLE R6 R0 R4
  FORGLOOP R1 2 [inext] [-12]
  GETUPVAL R1 3
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  LOADB R2 1
  NAMECALL R0 R0 K0 ["Activate"]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["beginAddAnnotation"]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["get"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["useState"]
  GETUPVAL R4 3
  NAMECALL R4 R4 K3 ["GetChildren"]
  CALL R4 1 -1
  CALL R3 -1 2
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["useState"]
  NEWTABLE R6 0 0
  CALL R5 1 2
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["useState"]
  NEWTABLE R8 0 0
  CALL R7 1 2
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["useEffect"]
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  NEWTABLE R11 0 0
  CALL R9 2 0
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["useEffect"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CAPTURE VAL R6
  NEWTABLE R11 0 1
  MOVE R12 R3
  SETLIST R11 R12 1 [1]
  CALL R9 2 0
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K6 ["Frame"]
  NEWTABLE R11 1 0
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K7 ["Tag"]
  LOADK R13 K8 ["Component-AnnotationListView X-Fill X-Column X-Center"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K11 [{"Header", "AnnotationList"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K5 ["createElement"]
  LOADK R14 K6 ["Frame"]
  DUPTABLE R15 K13 [{"LayoutOrder"}]
  LOADN R16 0
  SETTABLEKS R16 R15 K12 ["LayoutOrder"]
  DUPTABLE R16 K15 [{"AddButton"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K5 ["createElement"]
  LOADK R18 K16 ["TextButton"]
  NEWTABLE R19 2 0
  LOADK R21 K17 ["+ %*"]
  LOADK R25 K18 ["AddAnnotation"]
  LOADK R26 K19 ["Button"]
  NAMECALL R23 R2 K20 ["getText"]
  CALL R23 3 1
  NAMECALL R21 R21 K21 ["format"]
  CALL R21 2 1
  MOVE R20 R21
  SETTABLEKS R20 R19 K22 ["Text"]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K23 ["Event"]
  GETTABLEKS R20 R21 K24 ["Activated"]
  NEWCLOSURE R21 P2
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  SETTABLE R21 R19 R20
  CALL R17 2 1
  SETTABLEKS R17 R16 K14 ["AddButton"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K9 ["Header"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K5 ["createElement"]
  LOADK R14 K6 ["Frame"]
  DUPTABLE R15 K27 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
  LOADN R16 2
  SETTABLEKS R16 R15 K12 ["LayoutOrder"]
  GETIMPORT R16 K30 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  LOADN R20 226
  CALL R16 4 1
  SETTABLEKS R16 R15 K25 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K26 ["BackgroundTransparency"]
  DUPTABLE R16 K32 [{"AnnotationScrollingFrame"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K5 ["createElement"]
  GETUPVAL R18 6
  NEWTABLE R19 0 0
  NEWTABLE R20 1 1
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K5 ["createElement"]
  LOADK R23 K6 ["Frame"]
  DUPTABLE R24 K13 [{"LayoutOrder"}]
  LENGTH R26 R5
  ADDK R25 R26 K33 [1]
  SETTABLEKS R25 R24 K12 ["LayoutOrder"]
  CALL R22 2 1
  SETTABLEKS R22 R20 K34 ["BottomPadding"]
  FASTCALL1 TABLE_UNPACK R5 [+3]
  MOVE R22 R5
  GETIMPORT R21 K37 [table.unpack]
  CALL R21 1 -1
  SETLIST R20 R21 -1 [1]
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["AnnotationScrollingFrame"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K10 ["AnnotationList"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["CrossDMCommunication"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["Standalone"]
  GETTABLEKS R4 R2 K13 ["ContextServices"]
  GETTABLEKS R5 R4 K14 ["Plugin"]
  GETTABLEKS R6 R4 K15 ["Localization"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K16 ["Components"]
  GETTABLEKS R8 R9 K17 ["AnnotationListCard"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K9 ["Src"]
  GETTABLEKS R10 R11 K16 ["Components"]
  GETTABLEKS R9 R10 K18 ["SizedScrollingFrame"]
  CALL R8 1 1
  GETIMPORT R9 K20 [game]
  LOADK R11 K21 ["AnnotationsService"]
  NAMECALL R9 R9 K22 ["GetService"]
  CALL R9 2 1
  DUPCLOSURE R10 K23 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R8
  RETURN R10 1
