PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K7 [{"tag", "Size", "backgroundStyle", "BorderSizePixel", "BorderColor3", "LayoutOrder"}]
  LOADK R5 K8 ["%* auto-y clip"]
  GETTABLEKS R7 R0 K1 ["tag"]
  NAMECALL R5 R5 K9 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  SETTABLEKS R4 R3 K1 ["tag"]
  GETTABLEKS R4 R0 K2 ["Size"]
  SETTABLEKS R4 R3 K2 ["Size"]
  DUPTABLE R4 K11 [{"Transparency"}]
  LOADK R5 K12 [0.15]
  SETTABLEKS R5 R4 K10 ["Transparency"]
  SETTABLEKS R4 R3 K3 ["backgroundStyle"]
  GETTABLEKS R5 R0 K13 ["debug"]
  JUMPIF R5 [+2]
  LOADN R4 1
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K4 ["BorderSizePixel"]
  GETTABLEKS R5 R0 K13 ["debug"]
  JUMPIF R5 [+2]
  GETUPVAL R4 2
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K5 ["BorderColor3"]
  GETTABLEKS R4 R0 K6 ["LayoutOrder"]
  SETTABLEKS R4 R3 K6 ["LayoutOrder"]
  DUPTABLE R4 K15 [{"Label"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K17 [{"tag", "Text"}]
  LOADK R8 K18 ["size-full-2000 text-wrap text-label-small position-center-center anchor-center-center"]
  SETTABLEKS R8 R7 K1 ["tag"]
  LOADK R9 K19 ["%* %*"]
  GETTABLEKS R11 R0 K20 ["name"]
  GETTABLEKS R12 R0 K1 ["tag"]
  LOADK R14 K21 ["%-col%-"]
  LOADK R15 K22 [":"]
  NAMECALL R12 R12 K23 ["gsub"]
  CALL R12 3 1
  NAMECALL R9 R9 K9 ["format"]
  CALL R9 3 1
  MOVE R8 R9
  SETTABLEKS R8 R7 K16 ["Text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K14 ["Label"]
  GETTABLEKS R5 R0 K24 ["children"]
  CALL R1 4 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K7 [{"tag", "size", "backgroundStyle", "BorderSizePixel", "BorderColor3", "LayoutOrder"}]
  LOADK R4 K8 ["auto-y clip"]
  SETTABLEKS R4 R3 K1 ["tag"]
  GETTABLEKS R4 R0 K2 ["size"]
  SETTABLEKS R4 R3 K2 ["size"]
  DUPTABLE R4 K10 [{"Transparency"}]
  LOADK R5 K11 [0.15]
  SETTABLEKS R5 R4 K9 ["Transparency"]
  SETTABLEKS R4 R3 K3 ["backgroundStyle"]
  GETTABLEKS R5 R0 K12 ["debug"]
  JUMPIF R5 [+2]
  LOADN R4 1
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K4 ["BorderSizePixel"]
  GETTABLEKS R5 R0 K12 ["debug"]
  JUMPIF R5 [+2]
  GETUPVAL R4 2
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K5 ["BorderColor3"]
  GETTABLEKS R4 R0 K6 ["LayoutOrder"]
  SETTABLEKS R4 R3 K6 ["LayoutOrder"]
  DUPTABLE R4 K14 [{"Label"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K16 [{"tag", "Text"}]
  LOADK R8 K17 ["size-full-2000 text-wrap text-label-small position-center-center anchor-center-center"]
  SETTABLEKS R8 R7 K1 ["tag"]
  LOADK R9 K18 ["%* %*"]
  GETTABLEKS R11 R0 K19 ["name"]
  GETUPVAL R12 4
  GETTABLEKS R13 R0 K2 ["size"]
  CALL R12 1 1
  LOADK R14 K20 ["%-col%-"]
  LOADK R15 K21 [":"]
  NAMECALL R12 R12 K22 ["gsub"]
  CALL R12 3 1
  NAMECALL R9 R9 K23 ["format"]
  CALL R9 3 1
  MOVE R8 R9
  SETTABLEKS R8 R7 K15 ["Text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K13 ["Label"]
  GETTABLEKS R5 R0 K24 ["children"]
  CALL R1 4 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"align", "Wraps"}]
  GETTABLEKS R5 R0 K4 ["controls"]
  GETTABLEKS R4 R5 K1 ["align"]
  SETTABLEKS R4 R3 K1 ["align"]
  GETTABLEKS R5 R0 K4 ["controls"]
  GETTABLEKS R4 R5 K5 ["wraps"]
  SETTABLEKS R4 R3 K2 ["Wraps"]
  DUPTABLE R4 K12 [{"Child1", "Child2", "Child3", "Child4", "Child5", "Child6"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K17 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K18 ["xs-col-1 sm-col-4 md-col-6 lg-col-8 xl-col-8"]
  SETTABLEKS R8 R7 K13 ["tag"]
  LOADK R8 K19 ["C1"]
  SETTABLEKS R8 R7 K14 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K15 ["debug"]
  SETTABLEKS R8 R7 K15 ["debug"]
  LOADN R8 1
  SETTABLEKS R8 R7 K16 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Child1"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K17 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K20 ["xs-col-1 sm-col-4 md-col-6 lg-col-4 xl-col-4"]
  SETTABLEKS R8 R7 K13 ["tag"]
  LOADK R8 K21 ["C2"]
  SETTABLEKS R8 R7 K14 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K15 ["debug"]
  SETTABLEKS R8 R7 K15 ["debug"]
  LOADN R8 2
  SETTABLEKS R8 R7 K16 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["Child2"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K17 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K22 ["xs-col-1 sm-col-5 md-col-7 lg-col-10 xl-col-10"]
  SETTABLEKS R8 R7 K13 ["tag"]
  LOADK R8 K23 ["C3"]
  SETTABLEKS R8 R7 K14 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K15 ["debug"]
  SETTABLEKS R8 R7 K15 ["debug"]
  LOADN R8 3
  SETTABLEKS R8 R7 K16 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Child3"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K17 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K24 ["xs-col-3 sm-col-1 md-col-5 lg-col-2 xl-col-2"]
  SETTABLEKS R8 R7 K13 ["tag"]
  LOADK R8 K25 ["C4"]
  SETTABLEKS R8 R7 K14 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K15 ["debug"]
  SETTABLEKS R8 R7 K15 ["debug"]
  LOADN R8 4
  SETTABLEKS R8 R7 K16 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["Child4"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K17 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K26 ["xs-col-1 sm-col-4 md-col-1 lg-col-3 xl-col-3"]
  SETTABLEKS R8 R7 K13 ["tag"]
  LOADK R8 K27 ["C5"]
  SETTABLEKS R8 R7 K14 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K15 ["debug"]
  SETTABLEKS R8 R7 K15 ["debug"]
  LOADN R8 5
  SETTABLEKS R8 R7 K16 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["Child5"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K17 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K28 ["xs-col-1 sm-col-3 md-col-11 lg-col-9 xl-col-9"]
  SETTABLEKS R8 R7 K13 ["tag"]
  LOADK R8 K29 ["C6"]
  SETTABLEKS R8 R7 K14 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K15 ["debug"]
  SETTABLEKS R8 R7 K15 ["debug"]
  LOADN R8 6
  SETTABLEKS R8 R7 K16 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["Child6"]
  CALL R1 3 1
  GETTABLEKS R4 R0 K4 ["controls"]
  GETTABLEKS R3 R4 K15 ["debug"]
  JUMPIFNOT R3 [+14]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K30 [{"align"}]
  GETTABLEKS R6 R0 K4 ["controls"]
  GETTABLEKS R5 R6 K1 ["align"]
  SETTABLEKS R5 R4 K1 ["align"]
  MOVE R5 R1
  CALL R2 3 1
  RETURN R2 1
  MOVE R2 R1
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"align", "Wraps"}]
  GETTABLEKS R5 R0 K4 ["controls"]
  GETTABLEKS R4 R5 K1 ["align"]
  SETTABLEKS R4 R3 K1 ["align"]
  GETTABLEKS R5 R0 K4 ["controls"]
  GETTABLEKS R4 R5 K5 ["wraps"]
  SETTABLEKS R4 R3 K2 ["Wraps"]
  DUPTABLE R4 K12 [{"Child1", "Child2", "Child3", "Child4", "Child5", "Child6"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K17 [{"name", "size", "debug", "LayoutOrder"}]
  LOADK R8 K18 ["C1"]
  SETTABLEKS R8 R7 K13 ["name"]
  DUPTABLE R8 K24 [{"xs", "sm", "md", "lg", "xl"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K19 ["xs"]
  LOADN R9 4
  SETTABLEKS R9 R8 K20 ["sm"]
  LOADN R9 8
  SETTABLEKS R9 R8 K21 ["md"]
  LOADN R9 8
  SETTABLEKS R9 R8 K22 ["lg"]
  LOADN R9 8
  SETTABLEKS R9 R8 K23 ["xl"]
  SETTABLEKS R8 R7 K14 ["size"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K15 ["debug"]
  SETTABLEKS R8 R7 K15 ["debug"]
  LOADN R8 1
  SETTABLEKS R8 R7 K16 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Child1"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K17 [{"name", "size", "debug", "LayoutOrder"}]
  LOADK R8 K25 ["C2"]
  SETTABLEKS R8 R7 K13 ["name"]
  DUPTABLE R8 K27 [{"xs", "sm", "md", "lg", "xl", "xxl"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K19 ["xs"]
  LOADN R9 2
  SETTABLEKS R9 R8 K20 ["sm"]
  LOADN R9 4
  SETTABLEKS R9 R8 K21 ["md"]
  LOADN R9 4
  SETTABLEKS R9 R8 K22 ["lg"]
  LOADN R9 4
  SETTABLEKS R9 R8 K23 ["xl"]
  LOADN R9 4
  SETTABLEKS R9 R8 K26 ["xxl"]
  SETTABLEKS R8 R7 K14 ["size"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K15 ["debug"]
  SETTABLEKS R8 R7 K15 ["debug"]
  LOADN R8 2
  SETTABLEKS R8 R7 K16 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["Child2"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K17 [{"name", "size", "debug", "LayoutOrder"}]
  LOADK R8 K28 ["C3"]
  SETTABLEKS R8 R7 K13 ["name"]
  DUPTABLE R8 K24 [{"xs", "sm", "md", "lg", "xl"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K19 ["xs"]
  LOADN R9 5
  SETTABLEKS R9 R8 K20 ["sm"]
  LOADN R9 7
  SETTABLEKS R9 R8 K21 ["md"]
  LOADN R9 10
  SETTABLEKS R9 R8 K22 ["lg"]
  LOADN R9 10
  SETTABLEKS R9 R8 K23 ["xl"]
  SETTABLEKS R8 R7 K14 ["size"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K15 ["debug"]
  SETTABLEKS R8 R7 K15 ["debug"]
  LOADN R8 3
  SETTABLEKS R8 R7 K16 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Child3"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K17 [{"name", "size", "debug", "LayoutOrder"}]
  LOADK R8 K29 ["C4"]
  SETTABLEKS R8 R7 K13 ["name"]
  DUPTABLE R8 K24 [{"xs", "sm", "md", "lg", "xl"}]
  LOADN R9 3
  SETTABLEKS R9 R8 K19 ["xs"]
  LOADN R9 1
  SETTABLEKS R9 R8 K20 ["sm"]
  LOADN R9 5
  SETTABLEKS R9 R8 K21 ["md"]
  LOADN R9 2
  SETTABLEKS R9 R8 K22 ["lg"]
  LOADN R9 2
  SETTABLEKS R9 R8 K23 ["xl"]
  SETTABLEKS R8 R7 K14 ["size"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K15 ["debug"]
  SETTABLEKS R8 R7 K15 ["debug"]
  LOADN R8 4
  SETTABLEKS R8 R7 K16 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["Child4"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K17 [{"name", "size", "debug", "LayoutOrder"}]
  LOADK R8 K30 ["C5"]
  SETTABLEKS R8 R7 K13 ["name"]
  DUPTABLE R8 K24 [{"xs", "sm", "md", "lg", "xl"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K19 ["xs"]
  LOADN R9 4
  SETTABLEKS R9 R8 K20 ["sm"]
  LOADN R9 1
  SETTABLEKS R9 R8 K21 ["md"]
  LOADN R9 3
  SETTABLEKS R9 R8 K22 ["lg"]
  LOADN R9 3
  SETTABLEKS R9 R8 K23 ["xl"]
  SETTABLEKS R8 R7 K14 ["size"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K15 ["debug"]
  SETTABLEKS R8 R7 K15 ["debug"]
  LOADN R8 5
  SETTABLEKS R8 R7 K16 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["Child5"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K17 [{"name", "size", "debug", "LayoutOrder"}]
  LOADK R8 K31 ["C6"]
  SETTABLEKS R8 R7 K13 ["name"]
  DUPTABLE R8 K24 [{"xs", "sm", "md", "lg", "xl"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K19 ["xs"]
  LOADN R9 3
  SETTABLEKS R9 R8 K20 ["sm"]
  LOADN R9 11
  SETTABLEKS R9 R8 K21 ["md"]
  LOADN R9 9
  SETTABLEKS R9 R8 K22 ["lg"]
  LOADN R9 9
  SETTABLEKS R9 R8 K23 ["xl"]
  SETTABLEKS R8 R7 K14 ["size"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K15 ["debug"]
  SETTABLEKS R8 R7 K15 ["debug"]
  LOADN R8 6
  SETTABLEKS R8 R7 K16 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["Child6"]
  CALL R1 3 1
  GETTABLEKS R4 R0 K4 ["controls"]
  GETTABLEKS R3 R4 K15 ["debug"]
  JUMPIFNOT R3 [+14]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K32 [{"align"}]
  GETTABLEKS R6 R0 K4 ["controls"]
  GETTABLEKS R5 R6 K1 ["align"]
  SETTABLEKS R5 R4 K1 ["align"]
  MOVE R5 R1
  CALL R2 3 1
  RETURN R2 1
  MOVE R2 R1
  RETURN R2 1

PROTO_4:
  NEWTABLE R0 0 0
  LOADN R3 1
  LOADN R1 12
  LOADN R2 1
  FORNPREP R1
  MOVE R5 R0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K3 [{"tag", "LayoutOrder"}]
  LOADK R9 K4 ["xs-col-1 sm-col-2 md-col-3 lg-col-4 xl-col-6 size-full-full aspect-2-1  margin-bottom-large"]
  SETTABLEKS R9 R8 K1 ["tag"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K2 ["LayoutOrder"]
  SETTABLEKS R9 R8 K2 ["LayoutOrder"]
  DUPTABLE R9 K6 [{"Frame"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R11 1
  DUPTABLE R12 K7 [{"tag"}]
  LOADK R13 K8 ["size-full-full bg-action-emphasis"]
  SETTABLEKS R13 R12 K1 ["tag"]
  DUPTABLE R13 K10 [{"Label"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K0 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K12 [{"tag", "Text"}]
  LOADK R17 K13 ["size-full-full text-wrap text-label-small position-center-center anchor-center-center"]
  SETTABLEKS R17 R16 K1 ["tag"]
  LOADK R18 K14 ["%*"]
  MOVE R20 R3
  NAMECALL R18 R18 K15 ["format"]
  CALL R18 2 1
  MOVE R17 R18
  SETTABLEKS R17 R16 K11 ["Text"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K9 ["Label"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K5 ["Frame"]
  CALL R6 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K18 [table.insert]
  CALL R4 -1 0
  FORNLOOP R1
  RETURN R0 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useMemo"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWTABLE R3 0 1
  LOADN R4 12
  SETLIST R3 R4 1 [1]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K4 [{"align", "Wraps"}]
  GETTABLEKS R6 R0 K5 ["controls"]
  GETTABLEKS R5 R6 K2 ["align"]
  SETTABLEKS R5 R4 K2 ["align"]
  GETTABLEKS R6 R0 K5 ["controls"]
  GETTABLEKS R5 R6 K6 ["wraps"]
  SETTABLEKS R5 R4 K3 ["Wraps"]
  MOVE R5 R1
  CALL R2 3 1
  GETTABLEKS R5 R0 K5 ["controls"]
  GETTABLEKS R4 R5 K7 ["debug"]
  JUMPIFNOT R4 [+14]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R4 4
  DUPTABLE R5 K8 [{"align"}]
  GETTABLEKS R7 R0 K5 ["controls"]
  GETTABLEKS R6 R7 K2 ["align"]
  SETTABLEKS R6 R5 K2 ["align"]
  MOVE R6 R2
  CALL R3 3 1
  RETURN R3 1
  MOVE R3 R2
  RETURN R3 1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"align", "Wraps"}]
  GETTABLEKS R5 R0 K4 ["controls"]
  GETTABLEKS R4 R5 K1 ["align"]
  SETTABLEKS R4 R3 K1 ["align"]
  GETTABLEKS R5 R0 K4 ["controls"]
  GETTABLEKS R4 R5 K5 ["wraps"]
  SETTABLEKS R4 R3 K2 ["Wraps"]
  DUPTABLE R4 K22 [{"Child1", "Child2", "Child3", "Child4", "Child5", "Child6", "Child7", "Child8", "Child9", "Child10", "Child11", "Child12", "Child13", "Child14", "Child15", "Child16"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K28 ["xs-col-3 sm-col-6 md-col-12 lg-col-12 xl-col-12"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K29 ["C1"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 1
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Child1"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K30 ["xs-col-1 sm-col-3 md-col-6 lg-col-6 xl-col-6"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K31 ["C3"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 3
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["Child2"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K30 ["xs-col-1 sm-col-3 md-col-6 lg-col-6 xl-col-6"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K31 ["C3"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 3
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Child3"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K32 ["xs-col-1 sm-col-2 md-col-4 lg-col-4 xl-col-4"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K33 ["C4"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 4
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K9 ["Child4"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K32 ["xs-col-1 sm-col-2 md-col-4 lg-col-4 xl-col-4"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K34 ["C5"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 5
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["Child5"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K32 ["xs-col-1 sm-col-2 md-col-4 lg-col-4 xl-col-4"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K35 ["C6"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 6
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K11 ["Child6"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K36 ["xs-col-0 sm-col-1 md-col-3 lg-col-3 xl-col-3"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K31 ["C3"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 7
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["Child7"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K37 ["xs-col-0 sm-col-2 md-col-3 lg-col-3 xl-col-3"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K33 ["C4"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 8
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K13 ["Child8"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K37 ["xs-col-0 sm-col-2 md-col-3 lg-col-3 xl-col-3"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K34 ["C5"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 9
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K14 ["Child9"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K36 ["xs-col-0 sm-col-1 md-col-3 lg-col-3 xl-col-3"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K35 ["C6"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 10
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K15 ["Child10"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K38 ["xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K31 ["C3"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 11
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K16 ["Child11"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K38 ["xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K33 ["C4"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 12
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K17 ["Child12"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K38 ["xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K34 ["C5"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 13
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K18 ["Child13"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K38 ["xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K35 ["C6"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 14
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K19 ["Child14"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K38 ["xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K35 ["C6"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 15
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K20 ["Child15"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
  LOADK R8 K38 ["xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2"]
  SETTABLEKS R8 R7 K23 ["tag"]
  LOADK R8 K35 ["C6"]
  SETTABLEKS R8 R7 K24 ["name"]
  GETTABLEKS R9 R0 K4 ["controls"]
  GETTABLEKS R8 R9 K25 ["debug"]
  SETTABLEKS R8 R7 K25 ["debug"]
  LOADN R8 16
  SETTABLEKS R8 R7 K26 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K21 ["Child16"]
  CALL R1 3 1
  GETTABLEKS R4 R0 K4 ["controls"]
  GETTABLEKS R3 R4 K25 ["debug"]
  JUMPIFNOT R3 [+14]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K39 [{"align"}]
  GETTABLEKS R6 R0 K4 ["controls"]
  GETTABLEKS R5 R6 K1 ["align"]
  SETTABLEKS R5 R4 K1 ["align"]
  MOVE R5 R1
  CALL R2 3 1
  RETURN R2 1
  MOVE R2 R1
  RETURN R2 1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K4 [{"align", "Wraps", "LayoutOrder"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["controls"]
  GETTABLEKS R3 R4 K1 ["align"]
  SETTABLEKS R3 R2 K1 ["align"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["controls"]
  GETTABLEKS R3 R4 K6 ["wraps"]
  SETTABLEKS R3 R2 K2 ["Wraps"]
  LOADN R3 1
  SETTABLEKS R3 R2 K3 ["LayoutOrder"]
  DUPTABLE R3 K9 [{"SubChildL1", "SubChildL2"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K14 [{"tag", "name", "Size", "debug", "LayoutOrder"}]
  LOADK R7 K15 ["xs-col-2 sm-col-3 md-col-6 lg-col-8 xl-col-8"]
  SETTABLEKS R7 R6 K10 ["tag"]
  LOADK R7 K16 ["SC1"]
  SETTABLEKS R7 R6 K11 ["name"]
  GETIMPORT R7 K19 [UDim2.fromOffset]
  LOADN R8 0
  LOADN R9 250
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["Size"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["controls"]
  GETTABLEKS R7 R8 K13 ["debug"]
  SETTABLEKS R7 R6 K13 ["debug"]
  LOADN R7 1
  SETTABLEKS R7 R6 K3 ["LayoutOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["SubChildL1"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K14 [{"tag", "name", "Size", "debug", "LayoutOrder"}]
  LOADK R7 K20 ["xs-col-1 sm-col-3 md-col-6 lg-col-4 xl-col-4"]
  SETTABLEKS R7 R6 K10 ["tag"]
  LOADK R7 K16 ["SC1"]
  SETTABLEKS R7 R6 K11 ["name"]
  GETIMPORT R7 K19 [UDim2.fromOffset]
  LOADN R8 0
  LOADN R9 250
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["Size"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["controls"]
  GETTABLEKS R7 R8 K13 ["debug"]
  SETTABLEKS R7 R6 K13 ["debug"]
  LOADN R7 1
  SETTABLEKS R7 R6 K3 ["LayoutOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K8 ["SubChildL2"]
  CALL R0 3 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["controls"]
  GETTABLEKS R2 R3 K13 ["debug"]
  JUMPIFNOT R2 [+15]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 4
  DUPTABLE R3 K21 [{"align"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["controls"]
  GETTABLEKS R4 R5 K1 ["align"]
  SETTABLEKS R4 R3 K1 ["align"]
  MOVE R4 R0
  CALL R1 3 1
  RETURN R1 1
  MOVE R1 R0
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K4 [{"align", "Wraps", "LayoutOrder"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["controls"]
  GETTABLEKS R3 R4 K1 ["align"]
  SETTABLEKS R3 R2 K1 ["align"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["controls"]
  GETTABLEKS R3 R4 K6 ["wraps"]
  SETTABLEKS R3 R2 K2 ["Wraps"]
  LOADN R3 1
  SETTABLEKS R3 R2 K3 ["LayoutOrder"]
  DUPTABLE R3 K8 [{"SubChildR1"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K13 [{"tag", "name", "Size", "debug", "LayoutOrder"}]
  LOADK R7 K14 ["xs-col-3 sm-col-6 md-col-12 lg-col-12 xl-col-12"]
  SETTABLEKS R7 R6 K9 ["tag"]
  LOADK R7 K15 ["SC1"]
  SETTABLEKS R7 R6 K10 ["name"]
  GETIMPORT R7 K18 [UDim2.fromOffset]
  LOADN R8 0
  LOADN R9 125
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["Size"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["controls"]
  GETTABLEKS R7 R8 K12 ["debug"]
  SETTABLEKS R7 R6 K12 ["debug"]
  LOADN R7 1
  SETTABLEKS R7 R6 K3 ["LayoutOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["SubChildR1"]
  CALL R0 3 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["controls"]
  GETTABLEKS R2 R3 K12 ["debug"]
  JUMPIFNOT R2 [+15]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 4
  DUPTABLE R3 K19 [{"align"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["controls"]
  GETTABLEKS R4 R5 K1 ["align"]
  SETTABLEKS R4 R3 K1 ["align"]
  MOVE R4 R0
  CALL R1 3 1
  RETURN R1 1
  MOVE R1 R0
  RETURN R1 1

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K4 [{"align", "Wraps", "LayoutOrder"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["controls"]
  GETTABLEKS R3 R4 K1 ["align"]
  SETTABLEKS R3 R2 K1 ["align"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["controls"]
  GETTABLEKS R3 R4 K6 ["wraps"]
  SETTABLEKS R3 R2 K2 ["Wraps"]
  LOADN R3 1
  SETTABLEKS R3 R2 K3 ["LayoutOrder"]
  DUPTABLE R3 K8 [{"SubChildR2"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K13 [{"tag", "name", "Size", "debug", "LayoutOrder"}]
  LOADK R7 K14 ["xs-col-3 sm-col-6 md-col-12 lg-col-12 xl-col-12"]
  SETTABLEKS R7 R6 K9 ["tag"]
  LOADK R7 K15 ["SC2"]
  SETTABLEKS R7 R6 K10 ["name"]
  GETIMPORT R7 K18 [UDim2.fromOffset]
  LOADN R8 0
  LOADN R9 125
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["Size"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["controls"]
  GETTABLEKS R7 R8 K12 ["debug"]
  SETTABLEKS R7 R6 K12 ["debug"]
  LOADN R7 1
  SETTABLEKS R7 R6 K3 ["LayoutOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["SubChildR2"]
  CALL R0 3 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["controls"]
  GETTABLEKS R2 R3 K12 ["debug"]
  JUMPIFNOT R2 [+15]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 4
  DUPTABLE R3 K19 [{"align"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["controls"]
  GETTABLEKS R4 R5 K1 ["align"]
  SETTABLEKS R4 R3 K1 ["align"]
  MOVE R4 R0
  CALL R1 3 1
  RETURN R1 1
  MOVE R1 R0
  RETURN R1 1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"tag"}]
  LOADK R4 K3 ["size-full-3000 row auto-y"]
  SETTABLEKS R4 R3 K1 ["tag"]
  DUPTABLE R4 K6 [{"Left", "Right"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K8 [{"tag", "Size"}]
  LOADK R8 K9 ["col flex-y-fill items-stretch auto-y"]
  SETTABLEKS R8 R7 K1 ["tag"]
  GETIMPORT R8 K12 [UDim2.new]
  LOADK R9 K13 [0.666]
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K7 ["Size"]
  DUPTABLE R8 K15 [{"ChildL1"}]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R9 0 1
  SETTABLEKS R9 R8 K14 ["ChildL1"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["Left"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K8 [{"tag", "Size"}]
  LOADK R8 K16 ["col flex-y-fill auto-y"]
  SETTABLEKS R8 R7 K1 ["tag"]
  GETIMPORT R8 K12 [UDim2.new]
  LOADK R9 K17 [0.333]
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K7 ["Size"]
  DUPTABLE R8 K20 [{"ChildR1", "ChildR2"}]
  NEWCLOSURE R9 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R9 0 1
  SETTABLEKS R9 R8 K18 ["ChildR1"]
  NEWCLOSURE R9 P2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R9 0 1
  SETTABLEKS R9 R8 K19 ["ChildR2"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K5 ["Right"]
  CALL R1 3 -1
  RETURN R1 -1

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
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["View"]
  CALL R3 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K8 ["Components"]
  GETTABLEKS R6 R7 K10 ["Grid"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K11 ["Root"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K8 ["Components"]
  GETTABLEKS R7 R8 K10 ["Grid"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K12 ["Cell"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K8 ["Components"]
  GETTABLEKS R7 R8 K13 ["Text"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K14 ["Utility"]
  GETTABLEKS R8 R9 K15 ["getGridMetrics"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K14 ["Utility"]
  GETTABLEKS R9 R10 K16 ["getGridSizeTag"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K8 ["Components"]
  GETTABLEKS R10 R11 K17 ["Types"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R0 K8 ["Components"]
  GETTABLEKS R12 R13 K10 ["Grid"]
  GETTABLEKS R11 R12 K18 ["Debug"]
  CALL R10 1 1
  GETIMPORT R11 K21 [Color3.fromRGB]
  LOADN R12 255
  LOADN R13 255
  LOADN R14 255
  CALL R11 3 1
  DUPCLOSURE R12 K22 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R6
  DUPCLOSURE R13 K23 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R8
  DUPTABLE R14 K27 [{"summary", "stories", "controls"}]
  LOADK R15 K10 ["Grid"]
  SETTABLEKS R15 R14 K24 ["summary"]
  NEWTABLE R15 0 5
  DUPTABLE R16 K30 [{"name", "story"}]
  LOADK R17 K31 ["Base"]
  SETTABLEKS R17 R16 K28 ["name"]
  DUPCLOSURE R17 K32 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R10
  SETTABLEKS R17 R16 K29 ["story"]
  DUPTABLE R17 K30 [{"name", "story"}]
  LOADK R18 K33 ["Base w/ GridCell"]
  SETTABLEKS R18 R17 K28 ["name"]
  DUPCLOSURE R18 K34 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R10
  SETTABLEKS R18 R17 K29 ["story"]
  DUPTABLE R18 K30 [{"name", "story"}]
  LOADK R19 K10 ["Grid"]
  SETTABLEKS R19 R18 K28 ["name"]
  DUPCLOSURE R19 K35 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R10
  SETTABLEKS R19 R18 K29 ["story"]
  DUPTABLE R19 K30 [{"name", "story"}]
  LOADK R20 K36 ["Fluid"]
  SETTABLEKS R20 R19 K28 ["name"]
  DUPCLOSURE R20 K37 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R10
  SETTABLEKS R20 R19 K29 ["story"]
  DUPTABLE R20 K30 [{"name", "story"}]
  LOADK R21 K38 ["Template"]
  SETTABLEKS R21 R20 K28 ["name"]
  DUPCLOSURE R21 K39 [PROTO_10]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R10
  SETTABLEKS R21 R20 K29 ["story"]
  SETLIST R15 R16 5 [1]
  SETTABLEKS R15 R14 K25 ["stories"]
  DUPTABLE R15 K43 [{"align", "wraps", "debug"}]
  NEWTABLE R16 0 3
  GETIMPORT R17 K47 [Enum.ItemLineAlignment.Center]
  GETIMPORT R18 K49 [Enum.ItemLineAlignment.Start]
  GETIMPORT R19 K51 [Enum.ItemLineAlignment.End]
  SETLIST R16 R17 3 [1]
  SETTABLEKS R16 R15 K40 ["align"]
  LOADB R16 1
  SETTABLEKS R16 R15 K41 ["wraps"]
  LOADB R16 1
  SETTABLEKS R16 R15 K42 ["debug"]
  SETTABLEKS R15 R14 K26 ["controls"]
  RETURN R14 1
