PROTO_0:
  GETUPVAL R2 0
  FASTCALL2 TABLE_INSERT R2 R0 [+4]
  MOVE R3 R0
  GETIMPORT R1 K2 [table.insert]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K3 [{"tempId", "width", "height"}]
  SETTABLEKS R0 R1 K0 ["tempId"]
  LOADN R2 100
  SETTABLEKS R2 R1 K1 ["width"]
  LOADN R2 100
  SETTABLEKS R2 R1 K2 ["height"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  LENGTH R1 R2
  JUMPIFNOTLT R1 R0 [+3]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["render"]
  GETUPVAL R2 1
  LOADNIL R3
  GETUPVAL R4 2
  GETUPVAL R5 3
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K1 ["ContextStack"]
  DUPTABLE R7 K3 [{"providers"}]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K4 ["values"]
  GETUPVAL R9 6
  CALL R8 1 1
  SETTABLEKS R8 R7 K2 ["providers"]
  DUPTABLE R8 K6 [{"Node"}]
  SETTABLEKS R0 R8 K5 ["Node"]
  CALL R5 3 -1
  CALL R4 -1 -1
  CALL R2 -1 -1
  CALL R1 -1 1
  GETTABLEKS R2 R1 K7 ["container"]
  SETUPVAL R2 7
  GETUPVAL R2 7
  JUMPIFNOT R2 [+9]
  GETUPVAL R2 7
  LOADK R4 K8 ["ScreenGui"]
  NAMECALL R2 R2 K9 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R3 R2 K10 ["Parent"]
  SETUPVAL R3 8
  RETURN R0 0

PROTO_4:
  SETUPVAL R0 0
  GETIMPORT R1 K2 [coroutine.status]
  GETUPVAL R2 1
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K3 ["suspended"] [+5]
  GETIMPORT R1 K6 [task.spawn]
  GETUPVAL R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  RETURN R0 0

PROTO_6:
  GETIMPORT R0 K2 [coroutine.running]
  CALL R0 0 1
  LOADNIL R1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["get"]
  CALL R3 0 1
  GETTABLEKS R2 R3 K4 ["getThread"]
  NEWCLOSURE R3 P0
  CAPTURE REF R1
  CAPTURE VAL R0
  CALL R2 1 0
  GETUPVAL R2 1
  DUPCLOSURE R3 K5 [PROTO_5]
  CALL R2 1 0
  JUMPIF R1 [+4]
  GETIMPORT R2 K7 [coroutine.yield]
  MOVE R3 R0
  CALL R2 1 0
  FASTCALL2K ASSERT R1 K8 [+5]
  MOVE R3 R1
  LOADK R4 K8 ["getCurrentConversationThread: No thread returned"]
  GETIMPORT R2 K10 [assert]
  CALL R2 2 0
  CLOSEUPVALS R1
  RETURN R1 1

PROTO_7:
  GETUPVAL R2 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R0 0
  RETURN R0 1

PROTO_8:
  GETUPVAL R2 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["GUI root not available, ensure render is called"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R0 0
  RETURN R0 1

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R5 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R0 R1 K3 ["getByTestId"]
  LOADK R1 K4 ["Assistant-InputArea"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K5 [+5]
  MOVE R2 R0
  LOADK R3 K5 ["TextInput not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  RETURN R0 1

PROTO_10:
  GETUPVAL R2 0
  GETUPVAL R6 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K0 [+4]
  LOADK R6 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  GETUPVAL R3 1
  CALL R2 1 1
  GETTABLEKS R1 R2 K3 ["getByTestId"]
  LOADK R2 K4 ["Assistant-InputArea"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K5 [+5]
  MOVE R3 R1
  LOADK R4 K5 ["TextInput not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  MOVE R0 R1
  LOADK R2 K6 ["TextBox"]
  LOADB R3 1
  NAMECALL R0 R0 K7 ["FindFirstChild"]
  CALL R0 3 1
  MOVE R2 R0
  JUMPIFNOT R2 [+4]
  LOADK R4 K6 ["TextBox"]
  NAMECALL R2 R0 K8 ["IsA"]
  CALL R2 2 1
  FASTCALL2K ASSERT R2 K9 [+4]
  LOADK R3 K9 ["TextBox not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  RETURN R0 1

PROTO_11:
  GETUPVAL R2 0
  GETUPVAL R6 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K0 [+4]
  LOADK R6 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  GETUPVAL R3 1
  CALL R2 1 1
  GETTABLEKS R1 R2 K3 ["getByDisplayValue"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["firstAncestorWithTag"]
  MOVE R3 R1
  LOADK R4 K5 ["Assistant-MessageWidget"]
  CALL R2 2 1
  LOADK R6 K6 ["Message widget not found for message: "]
  MOVE R7 R0
  CONCAT R5 R6 R7
  FASTCALL2 ASSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  LOADK R5 K7 ["ScrollingFrame"]
  NAMECALL R3 R2 K8 ["FindFirstAncestorWhichIsA"]
  CALL R3 2 1
  LOADK R7 K9 ["Scroll area not found for message: "]
  MOVE R8 R0
  CONCAT R6 R7 R8
  FASTCALL2 ASSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  RETURN R3 1

PROTO_12:
  LOADNIL R2
  JUMPIFNOTEQKS R1 K0 ["user"] [+21]
  GETUPVAL R4 0
  GETUPVAL R8 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K1 [+4]
  LOADK R8 K1 ["Container not mounted, ensure render is called"]
  GETIMPORT R6 K3 [assert]
  CALL R6 2 0
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLEKS R3 R4 K4 ["getByDisplayValue"]
  MOVE R4 R0
  CALL R3 1 1
  MOVE R2 R3
  JUMP [+19]
  GETUPVAL R4 0
  GETUPVAL R8 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K1 [+4]
  LOADK R8 K1 ["Container not mounted, ensure render is called"]
  GETIMPORT R6 K3 [assert]
  CALL R6 2 0
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLEKS R3 R4 K5 ["getByText"]
  MOVE R4 R0
  CALL R3 1 1
  MOVE R2 R3
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["firstAncestorWithTag"]
  MOVE R4 R2
  LOADK R5 K7 ["Assistant-MessageWidget"]
  CALL R3 2 1
  MOVE R5 R3
  JUMPIFNOT R5 [+4]
  LOADK R7 K8 ["GuiObject"]
  NAMECALL R5 R3 K9 ["IsA"]
  CALL R5 2 1
  LOADK R7 K10 ["Message widget not found for message: "]
  MOVE R8 R0
  CONCAT R6 R7 R8
  FASTCALL2 ASSERT R5 R6 [+3]
  GETIMPORT R4 K3 [assert]
  CALL R4 2 0
  RETURN R3 1

PROTO_13:
  GETUPVAL R2 0
  GETUPVAL R6 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K0 [+4]
  LOADK R6 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  GETUPVAL R3 1
  CALL R2 1 1
  GETTABLEKS R1 R2 K3 ["getByText"]
  MOVE R2 R0
  DUPTABLE R3 K5 [{"exact"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["exact"]
  CALL R1 2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["firstAncestorWithTag"]
  MOVE R3 R1
  LOADK R4 K7 ["Assistant-MessageWidget"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K8 ["GuiObject"]
  NAMECALL R4 R2 K9 ["IsA"]
  CALL R4 2 1
  LOADK R6 K10 ["Message widget not found for message: "]
  MOVE R7 R0
  CONCAT R5 R6 R7
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  MOVE R3 R1
  GETTABLEKS R4 R3 K11 ["Parent"]
  JUMPIFEQ R4 R2 [+4]
  GETTABLEKS R3 R3 K11 ["Parent"]
  JUMPBACK [-7]
  MOVE R5 R3
  JUMPIFNOT R5 [+4]
  LOADK R7 K8 ["GuiObject"]
  NAMECALL R5 R3 K9 ["IsA"]
  CALL R5 2 1
  LOADK R7 K12 ["Content widget not found for message: "]
  MOVE R8 R0
  CONCAT R6 R7 R8
  FASTCALL2 ASSERT R5 R6 [+3]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  RETURN R3 1

PROTO_14:
  GETUPVAL R1 0
  GETUPVAL R5 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R0 R1 K3 ["getByText"]
  GETUPVAL R1 2
  DUPTABLE R2 K5 [{"exact"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["exact"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_15:
  LOADNIL R1
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R2 1 2
  JUMPIFNOT R2 [+2]
  MOVE R1 R3
  JUMP [+19]
  GETUPVAL R5 0
  GETUPVAL R9 1
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  FASTCALL2K ASSERT R8 K2 [+4]
  LOADK R9 K2 ["Container not mounted, ensure render is called"]
  GETIMPORT R7 K4 [assert]
  CALL R7 2 0
  GETUPVAL R6 1
  CALL R5 1 1
  GETTABLEKS R4 R5 K5 ["getByDisplayValue"]
  MOVE R5 R0
  CALL R4 1 1
  MOVE R1 R4
  LOADK R7 K6 ["Message content not found for message: "]
  MOVE R8 R0
  CONCAT R6 R7 R8
  FASTCALL2 ASSERT R1 R6 [+4]
  MOVE R5 R1
  GETIMPORT R4 K4 [assert]
  CALL R4 2 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["firstAncestorWithTag"]
  MOVE R5 R1
  LOADK R6 K8 ["Assistant-MessageWidget"]
  CALL R4 2 1
  LOADK R8 K9 ["Message widget not found for message: "]
  MOVE R9 R0
  CONCAT R7 R8 R9
  FASTCALL2 ASSERT R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K4 [assert]
  CALL R5 2 0
  GETUPVAL R6 0
  MOVE R7 R4
  CALL R6 1 1
  GETTABLEKS R5 R6 K10 ["queryByTestId"]
  LOADK R6 K11 ["Assistant-MessageActions-Retry"]
  CALL R5 1 1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R6 R5 K12 ["Parent"]
  RETURN R6 1
  LOADNIL R6
  RETURN R6 1

PROTO_16:
  GETTABLEKS R4 R0 K0 ["messageContainer"]
  GETTABLEKS R3 R4 K1 ["LayoutOrder"]
  GETTABLEKS R5 R1 K0 ["messageContainer"]
  GETTABLEKS R4 R5 K1 ["LayoutOrder"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_17:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["queryAll"]
  GETUPVAL R4 1
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Container not mounted, ensure render is called"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R1 1
  LOADK R2 K4 ["Assistant-MessageWidget"]
  CALL R0 2 1
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  LOADK R10 K5 ["GuiObject"]
  NAMECALL R8 R6 K6 ["IsA"]
  CALL R8 2 1
  FASTCALL2K ASSERT R8 K7 [+4]
  LOADK R9 K7 ["Message is not a GuiObject, something weird happened"]
  GETIMPORT R7 K3 [assert]
  CALL R7 2 0
  LOADK R9 K8 ["Assistant-UserMessage"]
  NAMECALL R7 R6 K9 ["HasTag"]
  CALL R7 2 1
  DUPTABLE R10 K12 [{"messageContainer", "user"}]
  SETTABLEKS R6 R10 K10 ["messageContainer"]
  SETTABLEKS R7 R10 K11 ["user"]
  FASTCALL2 TABLE_INSERT R1 R10 [+4]
  MOVE R9 R1
  GETIMPORT R8 K15 [table.insert]
  CALL R8 2 0
  FORGLOOP R2 2 [-26]
  GETIMPORT R2 K17 [table.sort]
  MOVE R3 R1
  DUPCLOSURE R4 K18 [PROTO_16]
  CALL R2 2 0
  RETURN R1 1

PROTO_18:
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R0 R1 K0 ["getByText"]
  GETUPVAL R1 2
  DUPTABLE R2 K2 [{"exact"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["exact"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_19:
  GETUPVAL R1 0
  GETUPVAL R5 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R0 R1 K3 ["getByDisplayValue"]
  GETUPVAL R1 2
  DUPTABLE R2 K5 [{"exact"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["exact"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_20:
  MOVE R2 R1
  JUMPIF R2 [+12]
  GETUPVAL R5 0
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R2 0
  MOVE R1 R2
  GETIMPORT R2 K4 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE REF R1
  CAPTURE VAL R0
  CALL R2 1 2
  JUMPIFNOT R2 [+2]
  CLOSEUPVALS R1
  RETURN R3 1
  GETIMPORT R4 K4 [pcall]
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R4 1 2
  JUMPIFNOT R4 [+2]
  CLOSEUPVALS R1
  RETURN R5 1
  GETIMPORT R6 K6 [error]
  LOADK R8 K7 ["No text object found for message \"%*\".
%*
%*"]
  MOVE R10 R0
  MOVE R11 R3
  MOVE R12 R5
  NAMECALL R8 R8 K8 ["format"]
  CALL R8 4 1
  MOVE R7 R8
  CALL R6 1 0
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  GETUPVAL R5 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R0 R1 K3 ["getByTestId"]
  LOADK R1 K4 ["Assistant-ModelQualityWarning"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K5 [+5]
  MOVE R2 R0
  LOADK R3 K5 ["ModelQuality warning not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  RETURN R0 1

PROTO_22:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setModelQuality"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["CaptureFocus"]
  CALL R0 1 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R3 0
  GETUPVAL R7 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K0 [+4]
  LOADK R7 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R5 K2 [assert]
  CALL R5 2 0
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLEKS R2 R3 K3 ["getByTestId"]
  LOADK R3 K4 ["Assistant-InputArea"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K5 [+5]
  MOVE R4 R2
  LOADK R5 K5 ["TextInput not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  MOVE R1 R2
  LOADK R3 K6 ["TextBox"]
  LOADB R4 1
  NAMECALL R1 R1 K7 ["FindFirstChild"]
  CALL R1 3 1
  MOVE R3 R1
  JUMPIFNOT R3 [+4]
  LOADK R5 K6 ["TextBox"]
  NAMECALL R3 R1 K8 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K9 [+4]
  LOADK R4 K9 ["TextBox not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  MOVE R0 R1
  GETUPVAL R1 2
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["change"]
  GETUPVAL R5 1
  GETUPVAL R9 2
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  FASTCALL2K ASSERT R8 K1 [+4]
  LOADK R9 K1 ["Container not mounted, ensure render is called"]
  GETIMPORT R7 K3 [assert]
  CALL R7 2 0
  GETUPVAL R6 2
  CALL R5 1 1
  GETTABLEKS R4 R5 K4 ["getByTestId"]
  LOADK R5 K5 ["Assistant-InputArea"]
  CALL R4 1 1
  FASTCALL2K ASSERT R4 K6 [+5]
  MOVE R6 R4
  LOADK R7 K6 ["TextInput not found"]
  GETIMPORT R5 K3 [assert]
  CALL R5 2 0
  MOVE R3 R4
  LOADK R5 K7 ["TextBox"]
  LOADB R6 1
  NAMECALL R3 R3 K8 ["FindFirstChild"]
  CALL R3 3 1
  MOVE R5 R3
  JUMPIFNOT R5 [+4]
  LOADK R7 K7 ["TextBox"]
  NAMECALL R5 R3 K9 ["IsA"]
  CALL R5 2 1
  FASTCALL2K ASSERT R5 K10 [+4]
  LOADK R6 K10 ["TextBox not found"]
  GETIMPORT R4 K3 [assert]
  CALL R4 2 0
  MOVE R2 R3
  DUPTABLE R3 K12 [{"target"}]
  DUPTABLE R4 K14 [{"Text"}]
  SETTABLEKS R0 R4 K13 ["Text"]
  SETTABLEKS R4 R3 K11 ["target"]
  CALL R1 2 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R0 0
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K0 ["CursorPosition"]
  RETURN R0 0

PROTO_28:
  GETUPVAL R4 0
  GETUPVAL R8 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K0 [+4]
  LOADK R8 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R6 K2 [assert]
  CALL R6 2 0
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLEKS R3 R4 K3 ["getByTestId"]
  LOADK R4 K4 ["Assistant-InputArea"]
  CALL R3 1 1
  FASTCALL2K ASSERT R3 K5 [+5]
  MOVE R5 R3
  LOADK R6 K5 ["TextInput not found"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  MOVE R2 R3
  LOADK R4 K6 ["TextBox"]
  LOADB R5 1
  NAMECALL R2 R2 K7 ["FindFirstChild"]
  CALL R2 3 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K6 ["TextBox"]
  NAMECALL R4 R2 K8 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K9 [+4]
  LOADK R5 K9 ["TextBox not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  MOVE R1 R2
  GETUPVAL R2 2
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_29:
  GETUPVAL R3 0
  GETUPVAL R7 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K0 [+4]
  LOADK R7 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R5 K2 [assert]
  CALL R5 2 0
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLEKS R2 R3 K3 ["getByTestId"]
  LOADK R3 K4 ["Assistant-InputArea"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K5 [+5]
  MOVE R4 R2
  LOADK R5 K5 ["TextInput not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  MOVE R1 R2
  LOADK R3 K6 ["TextBox"]
  LOADB R4 1
  NAMECALL R1 R1 K7 ["FindFirstChild"]
  CALL R1 3 1
  MOVE R3 R1
  JUMPIFNOT R3 [+4]
  LOADK R5 K6 ["TextBox"]
  NAMECALL R3 R1 K8 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K9 [+4]
  LOADK R4 K9 ["TextBox not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  MOVE R0 R1
  LOADK R3 K10 ["ScrollingFrame"]
  NAMECALL R1 R0 K11 ["FindFirstAncestorWhichIsA"]
  CALL R1 2 1
  MOVE R3 R1
  JUMPIFNOT R3 [+4]
  LOADK R5 K10 ["ScrollingFrame"]
  NAMECALL R3 R1 K8 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K12 [+4]
  LOADK R4 K12 ["Scroll area not found for text box"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  RETURN R1 1

PROTO_30:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["screen"]
  GETTABLEKS R1 R2 K1 ["debug"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_31:
  GETUPVAL R1 0
  GETUPVAL R5 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R0 R1 K3 ["queryByTestId"]
  LOADK R1 K4 ["Assistant-InputArea-StopButton"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K5 [+5]
  MOVE R2 R0
  LOADK R3 K5 ["Stop button not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K6 ["click"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_32:
  GETUPVAL R3 0
  GETUPVAL R7 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K0 [+4]
  LOADK R7 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R5 K2 [assert]
  CALL R5 2 0
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLEKS R2 R3 K3 ["getByTestId"]
  LOADK R3 K4 ["Assistant-InputArea"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K5 [+5]
  MOVE R4 R2
  LOADK R5 K5 ["TextInput not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  MOVE R1 R2
  LOADK R3 K6 ["TextBox"]
  LOADB R4 1
  NAMECALL R1 R1 K7 ["FindFirstChild"]
  CALL R1 3 1
  MOVE R3 R1
  JUMPIFNOT R3 [+4]
  LOADK R5 K6 ["TextBox"]
  NAMECALL R3 R1 K8 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K9 [+4]
  LOADK R4 K9 ["TextBox not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  MOVE R0 R1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K10 ["keyDown"]
  MOVE R2 R0
  DUPTABLE R3 K12 [{"key"}]
  GETIMPORT R4 K16 [Enum.KeyCode.Return]
  SETTABLEKS R4 R3 K11 ["key"]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K17 ["keyUp"]
  MOVE R2 R0
  DUPTABLE R3 K12 [{"key"}]
  GETIMPORT R4 K16 [Enum.KeyCode.Return]
  SETTABLEKS R4 R3 K11 ["key"]
  CALL R1 2 0
  RETURN R0 0

PROTO_33:
  GETUPVAL R4 0
  GETUPVAL R8 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K0 [+4]
  LOADK R8 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R6 K2 [assert]
  CALL R6 2 0
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLEKS R3 R4 K3 ["getByTestId"]
  LOADK R4 K4 ["Assistant-InputArea"]
  CALL R3 1 1
  FASTCALL2K ASSERT R3 K5 [+5]
  MOVE R5 R3
  LOADK R6 K5 ["TextInput not found"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  MOVE R2 R3
  LOADK R4 K6 ["TextBox"]
  LOADB R5 1
  NAMECALL R2 R2 K7 ["FindFirstChild"]
  CALL R2 3 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K6 ["TextBox"]
  NAMECALL R4 R2 K8 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K9 [+4]
  LOADK R5 K9 ["TextBox not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  MOVE R1 R2
  GETUPVAL R2 2
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CALL R2 1 0
  GETUPVAL R1 3
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 4
  CALL R1 0 0
  RETURN R0 0

PROTO_34:
  GETUPVAL R4 0
  GETUPVAL R8 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K0 [+4]
  LOADK R8 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R6 K2 [assert]
  CALL R6 2 0
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLEKS R3 R4 K3 ["getByTestId"]
  LOADK R4 K4 ["Assistant-InputArea"]
  CALL R3 1 1
  FASTCALL2K ASSERT R3 K5 [+5]
  MOVE R5 R3
  LOADK R6 K5 ["TextInput not found"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  MOVE R2 R3
  LOADK R4 K6 ["TextBox"]
  LOADB R5 1
  NAMECALL R2 R2 K7 ["FindFirstChild"]
  CALL R2 3 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K6 ["TextBox"]
  NAMECALL R4 R2 K8 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K9 [+4]
  LOADK R5 K9 ["TextBox not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  MOVE R1 R2
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K10 ["keyDown"]
  MOVE R3 R1
  DUPTABLE R4 K12 [{"key"}]
  SETTABLEKS R0 R4 K11 ["key"]
  CALL R2 2 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K13 ["keyUp"]
  MOVE R3 R1
  DUPTABLE R4 K12 [{"key"}]
  SETTABLEKS R0 R4 K11 ["key"]
  CALL R2 2 0
  RETURN R0 0

PROTO_35:
  JUMPIFNOT R2 [+9]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["keyDown"]
  MOVE R4 R0
  DUPTABLE R5 K2 [{"key"}]
  SETTABLEKS R1 R5 K1 ["key"]
  CALL R3 2 0
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["keyUp"]
  MOVE R4 R0
  DUPTABLE R5 K2 [{"key"}]
  SETTABLEKS R1 R5 K1 ["key"]
  CALL R3 2 0
  RETURN R0 0

PROTO_36:
  GETUPVAL R3 0
  GETUPVAL R7 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K0 [+4]
  LOADK R7 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R5 K2 [assert]
  CALL R5 2 0
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLEKS R2 R3 K3 ["getByTestId"]
  LOADK R3 K4 ["Assistant-InputArea"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K5 [+5]
  MOVE R4 R2
  LOADK R5 K5 ["TextInput not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  MOVE R1 R2
  LOADK R3 K6 ["TextBox"]
  LOADB R4 1
  NAMECALL R1 R1 K7 ["FindFirstChild"]
  CALL R1 3 1
  MOVE R3 R1
  JUMPIFNOT R3 [+4]
  LOADK R5 K6 ["TextBox"]
  NAMECALL R3 R1 K8 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K9 [+4]
  LOADK R4 K9 ["TextBox not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  MOVE R0 R1
  GETTABLEKS R1 R0 K10 ["Visible"]
  JUMPIFNOT R1 [+2]
  GETTABLEKS R1 R0 K11 ["TextEditable"]
  RETURN R1 1

PROTO_37:
  GETUPVAL R1 0
  CALL R1 0 1
  LENGTH R4 R1
  LOADN R2 1
  LOADN R3 255
  FORNPREP R2
  GETTABLE R5 R1 R4
  GETTABLEKS R6 R5 K0 ["user"]
  JUMPIFNOT R6 [+12]
  GETUPVAL R7 1
  GETTABLEKS R8 R5 K1 ["messageContainer"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K2 ["findByDisplayValue"]
  MOVE R7 R0
  CALL R6 1 1
  NAMECALL R6 R6 K3 ["await"]
  CALL R6 1 2
  RETURN R6 1
  FORNLOOP R2
  GETIMPORT R2 K5 [error]
  LOADK R3 K6 ["No user message found"]
  CALL R2 1 0
  RETURN R0 0

PROTO_38:
  GETUPVAL R1 0
  CALL R1 0 1
  LENGTH R0 R1
  RETURN R0 1

PROTO_39:
  GETUPVAL R3 0
  GETUPVAL R7 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K0 [+4]
  LOADK R7 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R5 K2 [assert]
  CALL R5 2 0
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLEKS R2 R3 K3 ["getByTestId"]
  LOADK R3 K4 ["Assistant-InputArea"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K5 [+5]
  MOVE R4 R2
  LOADK R5 K5 ["TextInput not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  MOVE R1 R2
  LOADK R3 K6 ["TextBox"]
  LOADB R4 1
  NAMECALL R1 R1 K7 ["FindFirstChild"]
  CALL R1 3 1
  MOVE R3 R1
  JUMPIFNOT R3 [+4]
  LOADK R5 K6 ["TextBox"]
  NAMECALL R3 R1 K8 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K9 [+4]
  LOADK R4 K9 ["TextBox not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  MOVE R0 R1
  GETTABLEKS R2 R0 K10 ["PlaceholderText"]
  JUMPIFEQKS R2 K11 ["Responding..."] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_40:
  LOADK R3 K0 ["ScrollingFrame"]
  NAMECALL R1 R0 K1 ["FindFirstAncestorWhichIsA"]
  CALL R1 2 1
  MOVE R3 R1
  JUMPIFNOT R3 [+4]
  LOADK R5 K0 ["ScrollingFrame"]
  NAMECALL R3 R1 K2 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Scroll area not found for widget"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETTABLEKS R3 R1 K6 ["AbsolutePosition"]
  GETTABLEKS R5 R0 K6 ["AbsolutePosition"]
  GETTABLEKS R7 R0 K8 ["AbsoluteSize"]
  DIVK R6 R7 K7 [2]
  ADD R4 R5 R6
  SUB R2 R3 R4
  GETTABLEKS R3 R1 K9 ["CanvasPosition"]
  SUB R3 R3 R2
  SETTABLEKS R3 R1 K9 ["CanvasPosition"]
  RETURN R0 0

PROTO_41:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-RunCode-Expand"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Expand button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_42:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-AssetVariation-Expand"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Expand button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_43:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MaterialGen-Expand"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Expand button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_44:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MaterialGen-StudsPerTileValueBar"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Expand button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_45:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MaterialGen-OrganicPatternToggle"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Organic pattern toggle not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_46:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MeshGen-Expand"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Expand button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_47:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MeshGen-Regenerate"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Regenerate button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_48:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MeshGen-Cancel"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Cancel generation button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_49:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MeshGen-Publish"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Publish button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_50:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MeshGen-Insert"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Insert button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_51:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MeshGen-PreviewImage"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["MeshGen preview image not found in content widget"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  RETURN R1 1

PROTO_52:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MeshGen-LastPreview"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Last preview button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_53:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MeshGen-NextPreview"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Next preview button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_54:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MeshGen-UseSelection"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Use selection toggle not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["GuiButton"]
  NAMECALL R2 R1 K6 ["FindFirstChildWhichIsA"]
  CALL R2 2 1
  FASTCALL2K ASSERT R2 K7 [+5]
  MOVE R4 R2
  LOADK R5 K7 ["Toggle button not found inside use selection toggle"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  LOADK R5 K8 ["ScrollingFrame"]
  NAMECALL R3 R2 K9 ["FindFirstAncestorWhichIsA"]
  CALL R3 2 1
  MOVE R5 R3
  JUMPIFNOT R5 [+4]
  LOADK R7 K8 ["ScrollingFrame"]
  NAMECALL R5 R3 K10 ["IsA"]
  CALL R5 2 1
  FASTCALL2K ASSERT R5 K11 [+4]
  LOADK R6 K11 ["Scroll area not found for widget"]
  GETIMPORT R4 K4 [assert]
  CALL R4 2 0
  GETTABLEKS R5 R3 K12 ["AbsolutePosition"]
  GETTABLEKS R7 R2 K12 ["AbsolutePosition"]
  GETTABLEKS R9 R2 K14 ["AbsoluteSize"]
  DIVK R8 R9 K13 [2]
  ADD R6 R7 R8
  SUB R4 R5 R6
  GETTABLEKS R5 R3 K15 ["CanvasPosition"]
  SUB R5 R5 R4
  SETTABLEKS R5 R3 K15 ["CanvasPosition"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K16 ["click"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_55:
  GETIMPORT R0 K1 [error]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_56:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["spyOn"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["Util"]
  GETTABLEKS R3 R4 K2 ["MarkdownParser"]
  LOADK R4 K3 ["parse"]
  CALL R2 2 1
  GETTABLEKS R1 R2 K4 ["mockImplementation"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_57:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["queryByTestId"]
  LOADK R2 K1 ["Assistant-Carousel-Container"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Carousel not found in content widget"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  RETURN R1 1

PROTO_58:
  NAMECALL R2 R0 K0 ["GetChildren"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K1 ["GuiObject"]
  NAMECALL R7 R6 K2 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+5]
  GETTABLEKS R7 R6 K3 ["LayoutOrder"]
  JUMPIFNOTEQ R7 R1 [+2]
  RETURN R6 1
  FORGLOOP R2 2 [-11]
  GETIMPORT R2 K5 [error]
  LOADK R4 K6 ["Carousel item with index %* not found"]
  MOVE R6 R1
  NAMECALL R4 R4 K7 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  RETURN R0 0

PROTO_59:
  MOVE R2 R0
  JUMPIFNOT R2 [+35]
  GETTABLEKS R3 R2 K0 ["Parent"]
  LOADK R7 K1 ["Parent not found for element: "]
  NAMECALL R8 R2 K2 ["GetFullName"]
  CALL R8 1 1
  CONCAT R6 R7 R8
  FASTCALL2 ASSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K4 [assert]
  CALL R4 2 0
  LOADK R7 K5 ["GuiObject"]
  NAMECALL R5 R3 K6 ["IsA"]
  CALL R5 2 1
  LOADK R7 K7 ["Parent is not a GuiObject: "]
  NAMECALL R8 R3 K2 ["GetFullName"]
  CALL R8 1 1
  CONCAT R6 R7 R8
  FASTCALL2 ASSERT R5 R6 [+3]
  GETIMPORT R4 K4 [assert]
  CALL R4 2 0
  MOVE R2 R3
  MOVE R6 R1
  NAMECALL R4 R2 K8 ["HasTag"]
  CALL R4 2 1
  JUMPIFNOT R4 [+1]
  RETURN R2 1
  JUMPBACK [-36]
  LOADK R6 K9 ["Ancestor with tag %* not found for element %*"]
  MOVE R8 R1
  NAMECALL R9 R0 K2 ["GetFullName"]
  CALL R9 1 1
  NAMECALL R6 R6 K10 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  FASTCALL2 ASSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  RETURN R2 1

PROTO_60:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["queryByTestId"]
  LOADK R2 K1 ["Assistant-CarouselItem-Selected"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Selected carousel item border not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETUPVAL R2 1
  MOVE R3 R1
  LOADK R4 K5 ["Component-CarouselItem"]
  CALL R2 2 1
  RETURN R2 1

PROTO_61:
  GETUPVAL R2 0
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  LOADK R6 K0 ["Carousel item not found at index: "]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K2 [tostring]
  CALL R7 1 1
  CONCAT R5 R6 R7
  FASTCALL2 ASSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETUPVAL R3 1
  MOVE R4 R0
  LOADK R5 K5 ["Component-Carousel"]
  CALL R3 2 1
  LOADK R6 K6 ["ScrollingFrame"]
  NAMECALL R4 R3 K7 ["FindFirstAncestorWhichIsA"]
  CALL R4 2 1
  MOVE R6 R4
  JUMPIFNOT R6 [+4]
  LOADK R8 K6 ["ScrollingFrame"]
  NAMECALL R6 R4 K8 ["IsA"]
  CALL R6 2 1
  FASTCALL2K ASSERT R6 K9 [+4]
  LOADK R7 K9 ["Scroll area not found for widget"]
  GETIMPORT R5 K4 [assert]
  CALL R5 2 0
  GETTABLEKS R6 R4 K10 ["AbsolutePosition"]
  GETTABLEKS R8 R3 K10 ["AbsolutePosition"]
  GETTABLEKS R10 R3 K12 ["AbsoluteSize"]
  DIVK R9 R10 K11 [2]
  ADD R7 R8 R9
  SUB R5 R6 R7
  GETTABLEKS R6 R4 K13 ["CanvasPosition"]
  SUB R6 R6 R5
  SETTABLEKS R6 R4 K13 ["CanvasPosition"]
  LOADK R6 K6 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["FindFirstAncestorWhichIsA"]
  CALL R4 2 1
  MOVE R6 R4
  JUMPIFNOT R6 [+4]
  LOADK R8 K6 ["ScrollingFrame"]
  NAMECALL R6 R4 K8 ["IsA"]
  CALL R6 2 1
  FASTCALL2K ASSERT R6 K9 [+4]
  LOADK R7 K9 ["Scroll area not found for widget"]
  GETIMPORT R5 K4 [assert]
  CALL R5 2 0
  GETTABLEKS R6 R4 K10 ["AbsolutePosition"]
  GETTABLEKS R8 R2 K10 ["AbsolutePosition"]
  GETTABLEKS R10 R2 K12 ["AbsoluteSize"]
  DIVK R9 R10 K11 [2]
  ADD R7 R8 R9
  SUB R5 R6 R7
  GETTABLEKS R6 R4 K13 ["CanvasPosition"]
  SUB R6 R6 R5
  SETTABLEKS R6 R4 K13 ["CanvasPosition"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K14 ["click"]
  MOVE R5 R2
  CALL R4 1 0
  RETURN R0 0

PROTO_62:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-RunCode-Copy"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Copy button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_63:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-RunCode-Run"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Run button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_64:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-RunCode-Stop"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Stop button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_65:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-ImageContentWidget-Expand"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Expand button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_66:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-ImageContentWidget-Image"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Image not found in content widget"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  RETURN R1 1

PROTO_67:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MessageActions-Retry"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Retry button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_68:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MessageActions-ThumbsUp"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Thumbs up button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R5 K5 ["GuiButton"]
  NAMECALL R3 R1 K6 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Thumbs up button is not a GuiButton"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K8 ["ScrollingFrame"]
  NAMECALL R2 R1 K9 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K8 ["ScrollingFrame"]
  NAMECALL R4 R2 K6 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K10 [+4]
  LOADK R5 K10 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K11 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K11 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K13 ["AbsoluteSize"]
  DIVK R7 R8 K12 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K14 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K14 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K15 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_69:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MessageActions-ThumbsDown"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Thumbs down button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R5 K5 ["GuiButton"]
  NAMECALL R3 R1 K6 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Thumbs down button is not a GuiButton"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K8 ["ScrollingFrame"]
  NAMECALL R2 R1 K9 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K8 ["ScrollingFrame"]
  NAMECALL R4 R2 K6 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K10 [+4]
  LOADK R5 K10 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K11 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K11 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K13 ["AbsoluteSize"]
  DIVK R7 R8 K12 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K14 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K14 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K15 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_70:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MessageActions-ThumbsUp"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Thumbs up button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R5 K5 ["GuiButton"]
  NAMECALL R3 R1 K6 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Thumbs up button is not a GuiButton"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K8 ["ImageLabel"]
  LOADB R5 1
  NAMECALL R2 R1 K9 ["FindFirstChildWhichIsA"]
  CALL R2 3 1
  FASTCALL2K ASSERT R2 K10 [+5]
  MOVE R4 R2
  LOADK R5 K10 ["Icon child not found in thumbs up button"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R3 R2 K11 ["Image"]
  RETURN R3 1

PROTO_71:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-MessageActions-ThumbsDown"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Thumbs down button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R5 K5 ["GuiButton"]
  NAMECALL R3 R1 K6 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Thumbs down button is not a GuiButton"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K8 ["ImageLabel"]
  LOADB R5 1
  NAMECALL R2 R1 K9 ["FindFirstChildWhichIsA"]
  CALL R2 3 1
  FASTCALL2K ASSERT R2 K10 [+5]
  MOVE R4 R2
  LOADK R5 K10 ["Icon child not found in thumbs down button"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R3 R2 K11 ["Image"]
  RETURN R3 1

PROTO_72:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setConversations"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_73:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getConversation"]
  CALL R2 0 1
  SETTABLE R1 R2 R0
  GETUPVAL R3 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CALL R3 1 0
  RETURN R0 0

PROTO_74:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setConversationId"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_75:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getConversationId"]
  CALL R1 0 1
  GETUPVAL R2 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R1 1

PROTO_76:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setThreadId"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_77:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getThreadId"]
  CALL R1 0 1
  GETUPVAL R2 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R1 1

PROTO_78:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["reset"]
  CALL R2 0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["getConversation"]
  CALL R2 0 1
  SETTABLE R1 R2 R0
  GETUPVAL R3 2
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CALL R3 1 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K2 ["getConversationId"]
  CALL R2 0 1
  GETUPVAL R3 2
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CALL R3 1 0
  GETIMPORT R2 K4 [next]
  MOVE R3 R1
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K5 [+5]
  MOVE R4 R2
  LOADK R5 K5 ["Conversation must have at least one thread"]
  GETIMPORT R3 K7 [assert]
  CALL R3 2 0
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K8 ["getThreadId"]
  CALL R3 0 1
  GETUPVAL R4 2
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  CALL R4 1 0
  RETURN R0 0

PROTO_79:
  GETUPVAL R1 0
  GETUPVAL R5 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R0 R1 K3 ["getByTestId"]
  LOADK R1 K4 ["Assistant-SettingsButton"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K5 [+5]
  MOVE R2 R0
  LOADK R3 K5 ["Settings button not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K6 ["click"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_80:
  GETUPVAL R1 0
  GETUPVAL R5 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["GUI root not available, ensure render is called"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R0 R1 K3 ["getByTestId"]
  LOADK R1 K4 ["Assistant-SettingsContent"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K5 [+5]
  MOVE R2 R0
  LOADK R3 K5 ["Settings content not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  RETURN R0 1

PROTO_81:
  GETUPVAL R1 0
  GETUPVAL R5 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R0 R1 K3 ["getByTestId"]
  LOADK R1 K4 ["Assistant-SettingsButton"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K5 [+5]
  MOVE R2 R0
  LOADK R3 K5 ["Settings button not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K6 ["click"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 0
  GETUPVAL R4 0
  GETUPVAL R8 3
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K7 [+4]
  LOADK R8 K7 ["GUI root not available, ensure render is called"]
  GETIMPORT R6 K2 [assert]
  CALL R6 2 0
  GETUPVAL R5 3
  CALL R4 1 1
  GETTABLEKS R3 R4 K3 ["getByTestId"]
  LOADK R4 K8 ["Assistant-SettingsContent"]
  CALL R3 1 1
  FASTCALL2K ASSERT R3 K9 [+5]
  MOVE R5 R3
  LOADK R6 K9 ["Settings content not found"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  MOVE R2 R3
  CALL R1 1 1
  GETTABLEKS R0 R1 K10 ["findByText"]
  LOADK R1 K11 ["Clear conversation"]
  CALL R0 1 1
  NAMECALL R0 R0 K12 ["await"]
  CALL R0 1 2
  FASTCALL2K ASSERT R1 K13 [+5]
  MOVE R3 R1
  LOADK R4 K13 ["Clear conversation text not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R1 K14 ["Parent"]
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K15 ["GuiButton"]
  NAMECALL R4 R2 K16 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K17 [+4]
  LOADK R5 K17 ["Clear conversation button not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["click"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_82:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["wasToolInvoked"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_83:
  GETIMPORT R0 K1 [error]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_84:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["overrideMethod"]
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_85:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["wasRequestHandlerCalled"]
  CALL R0 0 -1
  RETURN R0 -1

PROTO_86:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getLastRequestHandlerBody"]
  CALL R1 0 1
  JUMPIFNOT R1 [+2]
  GETTABLE R2 R1 R0
  JUMPIF R2 [+1]
  LOADNIL R2
  RETURN R2 1

PROTO_87:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setInputOverride"]
  DUPTABLE R1 K3 [{"overrideText", "iconType"}]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K1 ["overrideText"]
  GETUPVAL R3 2
  JUMPIFNOT R3 [+4]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["iconType"]
  JUMPIF R2 [+5]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K4 ["InputIconTypes"]
  GETTABLEKS R2 R3 K5 ["Error"]
  SETTABLEKS R2 R1 K2 ["iconType"]
  CALL R0 1 0
  RETURN R0 0

PROTO_88:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  LOADK R3 K0 ["GuiObject"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_89:
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CALL R2 1 0
  JUMPIFNOT R1 [+13]
  GETTABLEKS R2 R1 K0 ["expectedErrorContent"]
  JUMPIFNOT R2 [+10]
  GETTABLEKS R2 R1 K0 ["expectedErrorContent"]
  GETUPVAL R3 3
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  CALL R3 1 1
  NAMECALL R3 R3 K1 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_90:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setInputOverride"]
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_91:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_92:
  GETUPVAL R1 0
  GETUPVAL R5 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R0 R1 K3 ["getByTestId"]
  LOADK R1 K4 ["Assistant-InputArea-Footer"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K5 [+5]
  MOVE R2 R0
  LOADK R3 K5 ["Footer not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  RETURN R0 1

PROTO_93:
  GETUPVAL R3 0
  GETUPVAL R7 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K0 [+4]
  LOADK R7 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R5 K2 [assert]
  CALL R5 2 0
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLEKS R2 R3 K3 ["getByTestId"]
  LOADK R3 K4 ["Assistant-InputArea-Footer"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K5 [+5]
  MOVE R4 R2
  LOADK R5 K5 ["Footer not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  MOVE R1 R2
  GETUPVAL R4 0
  MOVE R5 R1
  CALL R4 1 1
  GETTABLEKS R3 R4 K6 ["queryByText"]
  MOVE R4 R0
  CALL R3 1 1
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_94:
  GETUPVAL R2 0
  GETUPVAL R6 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K0 [+4]
  LOADK R6 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  GETUPVAL R3 1
  CALL R2 1 1
  GETTABLEKS R1 R2 K3 ["getByTestId"]
  LOADK R2 K4 ["Assistant-InputArea-Footer"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K5 [+5]
  MOVE R3 R1
  LOADK R4 K5 ["Footer not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  MOVE R0 R1
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K6 ["queryByTestId"]
  LOADK R2 K7 ["Assistant-InputArea-Footer-Icon"]
  CALL R1 1 1
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_95:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["get"]
  GETIMPORT R1 K2 [game]
  LOADK R2 K3 ["data-testid=Assistant-ToolMenuView"]
  CALL R0 2 1
  MOVE R2 R0
  JUMPIFNOT R2 [+4]
  LOADK R4 K4 ["GuiObject"]
  NAMECALL R2 R0 K5 ["IsA"]
  CALL R2 2 1
  FASTCALL2K ASSERT R2 K6 [+4]
  LOADK R3 K6 ["ToolMenuView not found"]
  GETIMPORT R1 K8 [assert]
  CALL R1 2 0
  RETURN R0 1

PROTO_96:
  GETUPVAL R1 0
  GETUPVAL R5 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["Container not mounted, ensure render is called"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R0 R1 K3 ["getByTestId"]
  LOADK R1 K4 ["Assistant-ServerManagementButton"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K5 [+5]
  MOVE R2 R0
  LOADK R3 K5 ["Server management button not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K6 ["click"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_97:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["get"]
  GETIMPORT R1 K2 [game]
  LOADK R2 K3 ["data-testid=Assistant-AddIntegrationDialog"]
  CALL R0 2 1
  MOVE R2 R0
  JUMPIFNOT R2 [+4]
  LOADK R4 K4 ["GuiObject"]
  NAMECALL R2 R0 K5 ["IsA"]
  CALL R2 2 1
  FASTCALL2K ASSERT R2 K6 [+4]
  LOADK R3 K6 ["Add integration dialog not found"]
  GETIMPORT R1 K8 [assert]
  CALL R1 2 0
  RETURN R0 1

PROTO_98:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["queryByTestId"]
  LOADK R2 K1 ["Assistant-Alert-Close"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Close button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_99:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["queryByTestId"]
  LOADK R2 K1 ["Assistant-Alert-Continue"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Continue button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_100:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["queryByTestId"]
  LOADK R2 K1 ["Assistant-ToolConfirmation-Accept"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Accept button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_101:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["queryByTestId"]
  LOADK R2 K1 ["Assistant-ToolConfirmation-Reject"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Reject button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_102:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["queryByTestId"]
  LOADK R2 K1 ["Assistant-ToolConfirmation-AlwaysAccept"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Always Accept button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K5 ["ScrollingFrame"]
  NAMECALL R2 R1 K6 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["ScrollingFrame"]
  NAMECALL R4 R2 K7 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["Scroll area not found for widget"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETTABLEKS R4 R2 K9 ["AbsolutePosition"]
  GETTABLEKS R6 R1 K9 ["AbsolutePosition"]
  GETTABLEKS R8 R1 K11 ["AbsoluteSize"]
  DIVK R7 R8 K10 [2]
  ADD R5 R6 R7
  SUB R3 R4 R5
  GETTABLEKS R4 R2 K12 ["CanvasPosition"]
  SUB R4 R4 R3
  SETTABLEKS R4 R2 K12 ["CanvasPosition"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K13 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_103:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getProcessEvent"]
  CALL R0 0 1
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_104:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_105:
  DUPTABLE R3 K3 [{"type", "contentId", "contentBlock"}]
  LOADK R4 K4 ["content_start"]
  SETTABLEKS R4 R3 K0 ["type"]
  SETTABLEKS R2 R3 K1 ["contentId"]
  DUPTABLE R4 K8 [{"type", "id", "name", "input"}]
  LOADK R5 K9 ["tool_use"]
  SETTABLEKS R5 R4 K0 ["type"]
  MOVE R6 R0
  LOADK R7 K10 ["_"]
  MOVE R8 R2
  CONCAT R5 R6 R8
  SETTABLEKS R5 R4 K5 ["id"]
  SETTABLEKS R0 R4 K6 ["name"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K7 ["input"]
  SETTABLEKS R4 R3 K2 ["contentBlock"]
  GETUPVAL R4 0
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CALL R4 1 0
  DUPTABLE R4 K12 [{"type", "contentId", "delta"}]
  LOADK R5 K13 ["content_delta"]
  SETTABLEKS R5 R4 K0 ["type"]
  SETTABLEKS R2 R4 K1 ["contentId"]
  DUPTABLE R5 K15 [{"type", "jsonDelta"}]
  LOADK R6 K16 ["json_delta"]
  SETTABLEKS R6 R5 K0 ["type"]
  SETTABLEKS R1 R5 K14 ["jsonDelta"]
  SETTABLEKS R5 R4 K11 ["delta"]
  GETUPVAL R5 0
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  CALL R5 1 0
  DUPTABLE R5 K17 [{"type", "contentId"}]
  LOADK R6 K18 ["content_end"]
  SETTABLEKS R6 R5 K0 ["type"]
  SETTABLEKS R2 R5 K1 ["contentId"]
  GETUPVAL R6 0
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R5
  CALL R6 1 0
  RETURN R0 0

PROTO_106:
  DUPTABLE R2 K3 [{"type", "contentId", "contentBlock"}]
  LOADK R3 K4 ["content_start"]
  SETTABLEKS R3 R2 K0 ["type"]
  SETTABLEKS R1 R2 K1 ["contentId"]
  DUPTABLE R3 K6 [{"type", "text"}]
  LOADK R4 K5 ["text"]
  SETTABLEKS R4 R3 K0 ["type"]
  SETTABLEKS R0 R3 K5 ["text"]
  SETTABLEKS R3 R2 K2 ["contentBlock"]
  GETUPVAL R3 0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CALL R3 1 0
  DUPTABLE R3 K8 [{"type", "contentId", "delta"}]
  LOADK R4 K9 ["content_delta"]
  SETTABLEKS R4 R3 K0 ["type"]
  SETTABLEKS R1 R3 K1 ["contentId"]
  DUPTABLE R4 K6 [{"type", "text"}]
  LOADK R5 K10 ["text_delta"]
  SETTABLEKS R5 R4 K0 ["type"]
  SETTABLEKS R0 R4 K5 ["text"]
  SETTABLEKS R4 R3 K7 ["delta"]
  GETUPVAL R4 0
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CALL R4 1 0
  DUPTABLE R4 K11 [{"type", "contentId"}]
  LOADK R5 K12 ["content_end"]
  SETTABLEKS R5 R4 K0 ["type"]
  SETTABLEKS R1 R4 K1 ["contentId"]
  GETUPVAL R5 0
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  CALL R5 1 0
  RETURN R0 0

PROTO_107:
  DUPTABLE R0 K1 [{"type"}]
  LOADK R1 K2 ["message_start"]
  SETTABLEKS R1 R0 K0 ["type"]
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_108:
  DUPTABLE R1 K2 [{"type", "delta"}]
  LOADK R2 K3 ["message_delta"]
  SETTABLEKS R2 R1 K0 ["type"]
  DUPTABLE R2 K5 [{"stopReason"}]
  SETTABLEKS R0 R2 K4 ["stopReason"]
  SETTABLEKS R2 R1 K1 ["delta"]
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CALL R2 1 0
  DUPTABLE R1 K6 [{"type"}]
  LOADK R2 K7 ["message_stop"]
  SETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_109:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["spyOn"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["get"]
  CALL R3 0 1
  GETTABLEKS R2 R3 K2 ["EventLogger"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_110:
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 1
  GETTABLEKS R2 R3 K0 ["getByText"]
  MOVE R3 R1
  DUPTABLE R4 K2 [{"exact"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K1 ["exact"]
  CALL R2 2 1
  FASTCALL2K ASSERT R2 K3 [+5]
  MOVE R4 R2
  LOADK R5 K3 ["Text object not found"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["click"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_111:
  GETUPVAL R1 0
  GETUPVAL R5 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K0 [+4]
  LOADK R5 K0 ["GUI root not available, ensure render is called"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R0 R1 K3 ["getByTestId"]
  LOADK R1 K4 ["Assistant-SlashCommandMenu"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K5 [+5]
  MOVE R2 R0
  LOADK R3 K5 ["Slash command menu not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  RETURN R0 1

PROTO_112:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getAllByTestId"]
  LOADK R2 K1 ["Assistant-SlashCommandMenuItem"]
  CALL R1 1 1
  MOVE R3 R1
  JUMPIFNOT R3 [+6]
  LENGTH R4 R1
  LOADN R5 0
  JUMPIFLT R5 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K2 [+4]
  LOADK R4 K2 ["No slash command items found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R9 0
  MOVE R10 R7
  CALL R9 1 1
  GETTABLEKS R8 R9 K5 ["queryByTestId"]
  LOADK R9 K6 ["Assistant-SlashCommandMenuItem-Command"]
  CALL R8 1 1
  FASTCALL2K ASSERT R8 K7 [+5]
  MOVE R10 R8
  LOADK R11 K7 ["Text label not found in slash command item"]
  GETIMPORT R9 K4 [assert]
  CALL R9 2 0
  LOADK R12 K8 ["TextLabel"]
  NAMECALL R10 R8 K9 ["IsA"]
  CALL R10 2 1
  FASTCALL2K ASSERT R10 K10 [+4]
  LOADK R11 K10 ["Text is not a TextLabel"]
  GETIMPORT R9 K4 [assert]
  CALL R9 2 0
  GETTABLEKS R11 R8 K11 ["Text"]
  FASTCALL2 TABLE_INSERT R2 R11 [+4]
  MOVE R10 R2
  GETIMPORT R9 K14 [table.insert]
  CALL R9 2 0
  FORGLOOP R3 2 [-33]
  RETURN R2 1

PROTO_113:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setOptions"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_114:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_115:
  GETUPVAL R2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["get"]
  GETIMPORT R5 K2 [game]
  LOADK R6 K3 ["data-testid=Assistant-ToolMenuView"]
  CALL R4 2 1
  MOVE R6 R4
  JUMPIFNOT R6 [+4]
  LOADK R8 K4 ["GuiObject"]
  NAMECALL R6 R4 K5 ["IsA"]
  CALL R6 2 1
  FASTCALL2K ASSERT R6 K6 [+4]
  LOADK R7 K6 ["ToolMenuView not found"]
  GETIMPORT R5 K8 [assert]
  CALL R5 2 0
  MOVE R3 R4
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["getByText"]
  MOVE R2 R0
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K10 [+5]
  MOVE R3 R1
  LOADK R4 K10 ["Option not found"]
  GETIMPORT R2 K8 [assert]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K11 ["firstAncestorWithTag"]
  MOVE R3 R1
  LOADK R4 K12 ["data-testid=Assistant-ToolMenuView-Option-Container"]
  CALL R2 2 1
  FASTCALL2K ASSERT R2 K13 [+5]
  MOVE R4 R2
  LOADK R5 K13 ["Option container not found"]
  GETIMPORT R3 K8 [assert]
  CALL R3 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["get"]
  MOVE R4 R2
  LOADK R5 K14 ["data-testid=Assistant-ToolMenuView-Option-Checkbox"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K15 [+5]
  MOVE R5 R3
  LOADK R6 K15 ["Checkbox not found"]
  GETIMPORT R4 K8 [assert]
  CALL R4 2 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K16 ["click"]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_116:
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  MOVE R0 R1
  FASTCALL2K ASSERT R0 K0 [+5]
  MOVE R2 R0
  LOADK R3 K0 ["Props table is nil"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 0
  CALL R1 0 2
  GETUPVAL R3 1
  CALL R3 0 2
  GETUPVAL R5 2
  CALL R5 0 2
  GETUPVAL R7 3
  CALL R7 0 2
  GETUPVAL R9 4
  CALL R9 0 2
  GETUPVAL R11 5
  CALL R11 0 2
  GETUPVAL R13 6
  CALL R13 0 2
  GETUPVAL R15 7
  CALL R15 0 2
  GETUPVAL R17 8
  CALL R17 0 2
  DUPTABLE R19 K13 [{"ConversationProvider", "ConversationIdContext", "InputStateContext", "ThreadIdContext", "McpClientContext", "LLMPackageContext", "ModelQualityContext", "PopoutWidgetContext", "OptionsContext", "WindowInputContext"}]
  GETUPVAL R20 9
  MOVE R21 R1
  CALL R20 1 1
  SETTABLEKS R20 R19 K3 ["ConversationProvider"]
  GETUPVAL R20 9
  MOVE R21 R3
  CALL R20 1 1
  SETTABLEKS R20 R19 K4 ["ConversationIdContext"]
  GETUPVAL R20 9
  MOVE R21 R5
  CALL R20 1 1
  SETTABLEKS R20 R19 K5 ["InputStateContext"]
  GETUPVAL R20 9
  MOVE R21 R7
  CALL R20 1 1
  SETTABLEKS R20 R19 K6 ["ThreadIdContext"]
  GETUPVAL R20 9
  MOVE R21 R9
  CALL R20 1 1
  SETTABLEKS R20 R19 K7 ["McpClientContext"]
  GETUPVAL R20 9
  MOVE R21 R11
  CALL R20 1 1
  SETTABLEKS R20 R19 K8 ["LLMPackageContext"]
  GETUPVAL R20 9
  MOVE R21 R13
  CALL R20 1 1
  SETTABLEKS R20 R19 K9 ["ModelQualityContext"]
  GETUPVAL R20 9
  MOVE R21 R15
  CALL R20 1 1
  SETTABLEKS R20 R19 K10 ["PopoutWidgetContext"]
  GETUPVAL R20 9
  MOVE R21 R17
  CALL R20 1 1
  SETTABLEKS R20 R19 K11 ["OptionsContext"]
  GETUPVAL R20 9
  GETUPVAL R22 10
  GETTABLEKS R21 R22 K14 ["StandardProvider"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K12 ["WindowInputContext"]
  GETUPVAL R21 11
  GETTABLEKS R20 R21 K15 ["join"]
  MOVE R21 R19
  GETTABLEKS R22 R0 K16 ["overrideProviders"]
  JUMPIF R22 [+2]
  NEWTABLE R22 0 0
  CALL R20 2 1
  GETUPVAL R22 12
  GETTABLEKS R21 R22 K17 ["get"]
  CALL R21 0 1
  NEWTABLE R22 0 0
  NEWCLOSURE R23 P0
  CAPTURE VAL R22
  SETTABLEKS R23 R21 K18 ["copyToClipboard"]
  GETIMPORT R23 K21 [table.clone]
  GETUPVAL R24 13
  CALL R23 1 1
  SETTABLEKS R23 R21 K22 ["EventLogger"]
  DUPCLOSURE R23 K23 [PROTO_1]
  SETTABLEKS R23 R21 K24 ["convertImageDataToTempIdAsync"]
  GETUPVAL R24 14
  GETTABLEKS R23 R24 K25 ["fn"]
  CALL R23 0 1
  SETTABLEKS R23 R21 K26 ["releaseTempIdAsync"]
  GETUPVAL R24 12
  GETTABLEKS R23 R24 K27 ["set"]
  MOVE R24 R21
  CALL R23 1 0
  NEWCLOSURE R23 P2
  CAPTURE VAL R22
  LOADNIL R24
  LOADNIL R25
  NEWCLOSURE R26 P3
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U9
  CAPTURE UPVAL U18
  CAPTURE UPVAL U11
  CAPTURE VAL R20
  CAPTURE REF R24
  CAPTURE REF R25
  DUPCLOSURE R27 K28 [PROTO_6]
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  NEWCLOSURE R28 P5
  CAPTURE REF R24
  NEWCLOSURE R29 P6
  CAPTURE REF R25
  NEWCLOSURE R30 P7
  CAPTURE UPVAL U21
  CAPTURE REF R24
  NEWCLOSURE R31 P8
  CAPTURE UPVAL U21
  CAPTURE REF R24
  NEWCLOSURE R32 P9
  CAPTURE UPVAL U21
  CAPTURE REF R24
  CAPTURE UPVAL U22
  NEWCLOSURE R33 P10
  CAPTURE UPVAL U21
  CAPTURE REF R24
  CAPTURE UPVAL U22
  NEWCLOSURE R34 P11
  CAPTURE UPVAL U21
  CAPTURE REF R24
  CAPTURE UPVAL U22
  NEWCLOSURE R35 P12
  CAPTURE UPVAL U21
  CAPTURE REF R24
  CAPTURE UPVAL U22
  NEWCLOSURE R36 P13
  CAPTURE UPVAL U22
  CAPTURE REF R24
  NEWCLOSURE R37 P14
  CAPTURE REF R24
  CAPTURE UPVAL U21
  NEWCLOSURE R38 P15
  CAPTURE UPVAL U21
  CAPTURE REF R24
  NEWCLOSURE R39 P16
  CAPTURE UPVAL U20
  CAPTURE VAL R14
  NEWCLOSURE R40 P17
  CAPTURE UPVAL U21
  CAPTURE REF R24
  CAPTURE UPVAL U20
  NEWCLOSURE R41 P18
  CAPTURE UPVAL U23
  CAPTURE UPVAL U21
  CAPTURE REF R24
  NEWCLOSURE R42 P19
  CAPTURE UPVAL U21
  CAPTURE REF R24
  CAPTURE UPVAL U20
  NEWCLOSURE R43 P20
  CAPTURE UPVAL U21
  CAPTURE REF R24
  DUPCLOSURE R44 K29 [PROTO_30]
  CAPTURE UPVAL U15
  NEWCLOSURE R45 P22
  CAPTURE UPVAL U21
  CAPTURE REF R24
  CAPTURE UPVAL U23
  NEWCLOSURE R46 P23
  CAPTURE UPVAL U21
  CAPTURE REF R24
  CAPTURE UPVAL U23
  NEWCLOSURE R47 P24
  CAPTURE UPVAL U21
  CAPTURE REF R24
  CAPTURE UPVAL U20
  CAPTURE VAL R41
  CAPTURE VAL R46
  NEWCLOSURE R48 P25
  CAPTURE UPVAL U21
  CAPTURE REF R24
  CAPTURE UPVAL U23
  DUPCLOSURE R49 K30 [PROTO_35]
  CAPTURE UPVAL U23
  NEWCLOSURE R50 P27
  CAPTURE UPVAL U21
  CAPTURE REF R24
  NEWCLOSURE R51 P28
  CAPTURE VAL R36
  CAPTURE UPVAL U21
  NEWCLOSURE R52 P29
  CAPTURE VAL R36
  NEWCLOSURE R53 P30
  CAPTURE UPVAL U21
  CAPTURE REF R24
  DUPCLOSURE R54 K31 [PROTO_40]
  DUPCLOSURE R55 K32 [PROTO_41]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R56 K33 [PROTO_42]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R57 K34 [PROTO_43]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R58 K35 [PROTO_44]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R59 K36 [PROTO_45]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R60 K37 [PROTO_46]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R61 K38 [PROTO_47]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R62 K39 [PROTO_48]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R63 K40 [PROTO_49]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R64 K41 [PROTO_50]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R65 K42 [PROTO_51]
  CAPTURE UPVAL U21
  DUPCLOSURE R66 K43 [PROTO_52]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R67 K44 [PROTO_53]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R68 K45 [PROTO_54]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R69 K46 [PROTO_56]
  CAPTURE UPVAL U14
  CAPTURE UPVAL U24
  DUPCLOSURE R70 K47 [PROTO_57]
  CAPTURE UPVAL U21
  DUPCLOSURE R71 K48 [PROTO_58]
  DUPCLOSURE R72 K49 [PROTO_59]
  DUPCLOSURE R73 K50 [PROTO_60]
  CAPTURE UPVAL U21
  CAPTURE VAL R72
  DUPCLOSURE R74 K51 [PROTO_61]
  CAPTURE VAL R71
  CAPTURE VAL R72
  CAPTURE UPVAL U23
  DUPCLOSURE R75 K52 [PROTO_62]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R76 K53 [PROTO_63]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R77 K54 [PROTO_64]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R78 K55 [PROTO_65]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R79 K56 [PROTO_66]
  CAPTURE UPVAL U21
  DUPCLOSURE R80 K57 [PROTO_67]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R81 K58 [PROTO_68]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R82 K59 [PROTO_69]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R83 K60 [PROTO_70]
  CAPTURE UPVAL U21
  DUPCLOSURE R84 K61 [PROTO_71]
  CAPTURE UPVAL U21
  NEWCLOSURE R85 P62
  CAPTURE VAL R2
  CAPTURE UPVAL U20
  NEWCLOSURE R86 P63
  CAPTURE VAL R4
  CAPTURE UPVAL U20
  NEWCLOSURE R87 P64
  CAPTURE VAL R8
  CAPTURE UPVAL U20
  NEWCLOSURE R88 P65
  CAPTURE UPVAL U25
  CAPTURE VAL R2
  CAPTURE UPVAL U20
  CAPTURE VAL R4
  CAPTURE VAL R8
  NEWCLOSURE R89 P66
  CAPTURE UPVAL U21
  CAPTURE REF R24
  CAPTURE UPVAL U23
  NEWCLOSURE R90 P67
  CAPTURE UPVAL U21
  CAPTURE REF R25
  NEWCLOSURE R91 P68
  CAPTURE UPVAL U21
  CAPTURE REF R24
  CAPTURE UPVAL U23
  CAPTURE REF R25
  NEWCLOSURE R92 P69
  CAPTURE VAL R10
  NEWCLOSURE R93 P70
  CAPTURE VAL R10
  NEWCLOSURE R94 P71
  CAPTURE VAL R12
  NEWCLOSURE R95 P72
  CAPTURE VAL R12
  NEWCLOSURE R96 P73
  CAPTURE UPVAL U20
  CAPTURE VAL R6
  CAPTURE UPVAL U26
  CAPTURE UPVAL U27
  CAPTURE VAL R34
  NEWCLOSURE R97 P74
  CAPTURE UPVAL U20
  CAPTURE VAL R6
  NEWCLOSURE R98 P75
  CAPTURE UPVAL U21
  CAPTURE REF R24
  NEWCLOSURE R99 P76
  CAPTURE UPVAL U21
  CAPTURE REF R24
  NEWCLOSURE R100 P77
  CAPTURE UPVAL U21
  CAPTURE REF R24
  DUPCLOSURE R101 K62 [PROTO_95]
  CAPTURE UPVAL U22
  NEWCLOSURE R102 P79
  CAPTURE UPVAL U21
  CAPTURE REF R24
  CAPTURE UPVAL U23
  DUPCLOSURE R103 K63 [PROTO_97]
  CAPTURE UPVAL U22
  DUPCLOSURE R104 K64 [PROTO_98]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R105 K65 [PROTO_99]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R106 K66 [PROTO_100]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R107 K67 [PROTO_101]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  DUPCLOSURE R108 K68 [PROTO_102]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  NEWCLOSURE R109 P86
  CAPTURE UPVAL U20
  CAPTURE VAL R12
  NEWCLOSURE R110 P87
  CAPTURE UPVAL U20
  CAPTURE VAL R12
  NEWCLOSURE R111 P88
  CAPTURE UPVAL U20
  CAPTURE VAL R12
  NEWCLOSURE R112 P89
  CAPTURE UPVAL U20
  CAPTURE VAL R12
  NEWCLOSURE R113 P90
  CAPTURE UPVAL U20
  CAPTURE VAL R12
  DUPCLOSURE R114 K69 [PROTO_109]
  CAPTURE UPVAL U14
  CAPTURE UPVAL U12
  DUPCLOSURE R115 K70 [PROTO_110]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U23
  NEWCLOSURE R116 P93
  CAPTURE UPVAL U21
  CAPTURE REF R25
  DUPCLOSURE R117 K71 [PROTO_112]
  CAPTURE UPVAL U21
  NEWCLOSURE R118 P95
  CAPTURE UPVAL U20
  CAPTURE VAL R18
  DUPCLOSURE R119 K72 [PROTO_115]
  CAPTURE UPVAL U21
  CAPTURE UPVAL U22
  CAPTURE UPVAL U23
  MOVE R120 R26
  GETUPVAL R121 9
  LOADK R122 K73 ["Frame"]
  DUPTABLE R123 K75 [{"Size"}]
  GETIMPORT R124 K78 [UDim2.fromScale]
  LOADN R125 1
  LOADN R126 1
  CALL R124 2 1
  SETTABLEKS R124 R123 K74 ["Size"]
  DUPTABLE R124 K81 [{"UIListLayout", "MainView"}]
  GETUPVAL R125 9
  LOADK R126 K79 ["UIListLayout"]
  DUPTABLE R127 K83 [{"FillDirection"}]
  GETIMPORT R128 K86 [Enum.FillDirection.Vertical]
  SETTABLEKS R128 R127 K82 ["FillDirection"]
  CALL R125 2 1
  SETTABLEKS R125 R124 K79 ["UIListLayout"]
  GETUPVAL R125 9
  GETUPVAL R126 28
  CALL R125 1 1
  SETTABLEKS R125 R124 K80 ["MainView"]
  CALL R121 3 -1
  CALL R120 -1 0
  NEWTABLE R120 128 0
  SETTABLEKS R26 R120 K87 ["render"]
  SETTABLEKS R27 R120 K88 ["getCurrentConversationThread"]
  SETTABLEKS R28 R120 K89 ["getContainer"]
  SETTABLEKS R31 R120 K90 ["getTextBox"]
  SETTABLEKS R32 R120 K91 ["getMessageScrollArea"]
  SETTABLEKS R33 R120 K92 ["getContainingMessageWidget"]
  SETTABLEKS R34 R120 K93 ["getContainingContentWidget"]
  SETTABLEKS R35 R120 K94 ["getMessageActionsWidget"]
  SETTABLEKS R37 R120 K95 ["getTextObjectWithMessage"]
  SETTABLEKS R23 R120 K96 ["getClipboardTextAtIndex"]
  SETTABLEKS R40 R120 K97 ["focusTextBox"]
  SETTABLEKS R41 R120 K98 ["setInputText"]
  SETTABLEKS R42 R120 K99 ["setCursorPosition"]
  SETTABLEKS R43 R120 K100 ["getInputScrollArea"]
  SETTABLEKS R44 R120 K101 ["printScreen"]
  SETTABLEKS R45 R120 K102 ["clickStopGenerationButton"]
  SETTABLEKS R46 R120 K103 ["enterTextBox"]
  SETTABLEKS R47 R120 K104 ["enterUserMessage"]
  SETTABLEKS R48 R120 K105 ["pressKeyInInput"]
  SETTABLEKS R49 R120 K106 ["setKeyDown"]
  SETTABLEKS R50 R120 K107 ["isInputEnabled"]
  SETTABLEKS R51 R120 K108 ["lastUserTextMatches"]
  SETTABLEKS R52 R120 K109 ["getMessageCount"]
  SETTABLEKS R53 R120 K110 ["isResponding"]
  SETTABLEKS R96 R120 K111 ["setExternalInputOverride"]
  SETTABLEKS R97 R120 K112 ["clearExternalInputOverride"]
  SETTABLEKS R99 R120 K113 ["hasFooterText"]
  SETTABLEKS R100 R120 K114 ["hasFooterIcon"]
  SETTABLEKS R101 R120 K115 ["getToolMenuView"]
  SETTABLEKS R102 R120 K116 ["clickServerManagementButton"]
  SETTABLEKS R103 R120 K117 ["getAddIntegrationDialog"]
  SETTABLEKS R69 R120 K118 ["throwMarkdownParserError"]
  SETTABLEKS R70 R120 K119 ["getCarousel"]
  SETTABLEKS R71 R120 K120 ["getCarouselItem"]
  SETTABLEKS R73 R120 K121 ["getSelectedCarouselItem"]
  SETTABLEKS R74 R120 K122 ["clickCarouselItem"]
  SETTABLEKS R104 R120 K123 ["clickAlertCloseButton"]
  SETTABLEKS R105 R120 K124 ["clickAlertContinueButton"]
  SETTABLEKS R106 R120 K125 ["clickToolConfirmationAcceptButton"]
  SETTABLEKS R107 R120 K126 ["clickToolConfirmationRejectButton"]
  SETTABLEKS R108 R120 K127 ["clickToolConfirmationAlwaysAcceptButton"]
  SETTABLEKS R55 R120 K128 ["clickRunCodeExpandButton"]
  SETTABLEKS R75 R120 K129 ["clickCopyButton"]
  SETTABLEKS R76 R120 K130 ["clickRunButton"]
  SETTABLEKS R77 R120 K131 ["clickStopButton"]
  SETTABLEKS R78 R120 K132 ["clickImageExpandButton"]
  SETTABLEKS R79 R120 K133 ["getImageContentImage"]
  SETTABLEKS R56 R120 K134 ["clickAssetVariationExpandButton"]
  SETTABLEKS R57 R120 K135 ["clickMaterialGenExpandButton"]
  SETTABLEKS R58 R120 K136 ["clickMaterialGenStudsPerTileValueBar"]
  SETTABLEKS R59 R120 K137 ["clickMaterialGenOrganicPatternToggle"]
  SETTABLEKS R60 R120 K138 ["clickMeshGenExpandButton"]
  SETTABLEKS R61 R120 K139 ["clickMeshGenRegenerateButton"]
  SETTABLEKS R62 R120 K140 ["clickMeshGenCancelGenerationButton"]
  SETTABLEKS R63 R120 K141 ["clickMeshGenPublishButton"]
  SETTABLEKS R64 R120 K142 ["clickMeshGenInsertButton"]
  SETTABLEKS R65 R120 K143 ["getMeshGenPreviewImage"]
  SETTABLEKS R66 R120 K144 ["clickMeshGenLastPreviewButton"]
  SETTABLEKS R67 R120 K145 ["clickMeshGenNextPreviewButton"]
  SETTABLEKS R68 R120 K146 ["clickMeshGenSelectionToggle"]
  SETTABLEKS R80 R120 K147 ["clickRetryButton"]
  SETTABLEKS R81 R120 K148 ["clickThumbsUpButton"]
  SETTABLEKS R82 R120 K149 ["clickThumbsDownButton"]
  SETTABLEKS R83 R120 K150 ["getThumbsUpButtonIcon"]
  SETTABLEKS R84 R120 K151 ["getThumbsDownButtonIcon"]
  SETTABLEKS R85 R120 K152 ["addConversation"]
  SETTABLEKS R86 R120 K153 ["setConversationId"]
  SETTABLEKS R87 R120 K154 ["setThreadId"]
  SETTABLEKS R88 R120 K155 ["applyConversation"]
  SETTABLEKS R91 R120 K156 ["clearConversation"]
  SETTABLEKS R92 R120 K157 ["wasToolInvoked"]
  SETTABLEKS R93 R120 K158 ["overrideMethodWithError"]
  SETTABLEKS R94 R120 K159 ["wasRequestHandlerCalled"]
  SETTABLEKS R95 R120 K160 ["getLastRequestField"]
  SETTABLEKS R109 R120 K161 ["streamEvent"]
  SETTABLEKS R110 R120 K162 ["addToolCall"]
  SETTABLEKS R111 R120 K163 ["streamText"]
  SETTABLEKS R112 R120 K164 ["startMessage"]
  SETTABLEKS R113 R120 K165 ["sendMessageDeltaAndStop"]
  SETTABLEKS R114 R120 K166 ["mockEventLoggerCall"]
  SETTABLEKS R115 R120 K167 ["clickTextWithin"]
  SETTABLEKS R38 R120 K168 ["getModelQualityWarning"]
  SETTABLEKS R39 R120 K169 ["setModelQuality"]
  SETTABLEKS R116 R120 K170 ["getSlashCommandMenu"]
  SETTABLEKS R117 R120 K171 ["getSlashCommandItems"]
  SETTABLEKS R118 R120 K172 ["setOptions"]
  SETTABLEKS R119 R120 K173 ["clickOptionWithDisplayName"]
  CLOSEUPVALS R24
  RETURN R120 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  LOADK R3 K4 ["Packages"]
  NAMECALL R1 R0 K3 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K8 ["Guest"]
  GETTABLEKS R5 R6 K9 ["Environment"]
  GETTABLEKS R4 R5 K10 ["EventLogger"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Guest"]
  GETTABLEKS R5 R6 K9 ["Environment"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K11 ["Hooks"]
  GETTABLEKS R6 R7 K12 ["ExternalHooks"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K13 ["Parent"]
  GETTABLEKS R7 R8 K14 ["Foundation"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K13 ["Parent"]
  GETTABLEKS R8 R9 K15 ["Framework"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R0 K16 ["Components"]
  GETTABLEKS R10 R11 K17 ["Contexts"]
  GETTABLEKS R9 R10 K18 ["InputStateContext"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R1 K19 ["Dev"]
  GETTABLEKS R10 R11 K20 ["JestGlobals"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K16 ["Components"]
  GETTABLEKS R11 R12 K21 ["MainView"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R0 K22 ["Util"]
  GETTABLEKS R12 R13 K23 ["MessageLayoutOrder"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R0 K13 ["Parent"]
  GETTABLEKS R13 R14 K24 ["ModelContextProtocol"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R16 R0 K16 ["Components"]
  GETTABLEKS R15 R16 K17 ["Contexts"]
  GETTABLEKS R14 R15 K25 ["ModelQualityContext"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R17 R0 K16 ["Components"]
  GETTABLEKS R16 R17 K17 ["Contexts"]
  GETTABLEKS R15 R16 K26 ["OptionsContext"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R17 R0 K13 ["Parent"]
  GETTABLEKS R16 R17 K27 ["React"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R18 R1 K19 ["Dev"]
  GETTABLEKS R17 R18 K28 ["ReactTestingLibrary"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R19 R0 K13 ["Parent"]
  GETTABLEKS R18 R19 K29 ["ReactUtils"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R20 R0 K30 ["TestUtils"]
  GETTABLEKS R19 R20 K31 ["TagSearch"]
  CALL R18 1 1
  GETIMPORT R19 K6 [require]
  GETTABLEKS R20 R0 K32 ["Types"]
  CALL R19 1 1
  GETIMPORT R20 K6 [require]
  GETTABLEKS R23 R0 K16 ["Components"]
  GETTABLEKS R22 R23 K17 ["Contexts"]
  GETTABLEKS R21 R22 K33 ["WindowInputContext"]
  CALL R20 1 1
  GETIMPORT R21 K6 [require]
  GETTABLEKS R24 R0 K30 ["TestUtils"]
  GETTABLEKS R23 R24 K34 ["setup"]
  GETTABLEKS R22 R23 K35 ["createMockConversationContext"]
  CALL R21 1 1
  GETIMPORT R22 K6 [require]
  GETTABLEKS R25 R0 K30 ["TestUtils"]
  GETTABLEKS R24 R25 K34 ["setup"]
  GETTABLEKS R23 R24 K36 ["createMockConversationIdContext"]
  CALL R22 1 1
  GETIMPORT R23 K6 [require]
  GETTABLEKS R26 R0 K30 ["TestUtils"]
  GETTABLEKS R25 R26 K34 ["setup"]
  GETTABLEKS R24 R25 K37 ["createMockInputStateContext"]
  CALL R23 1 1
  GETIMPORT R24 K6 [require]
  GETTABLEKS R27 R0 K30 ["TestUtils"]
  GETTABLEKS R26 R27 K34 ["setup"]
  GETTABLEKS R25 R26 K38 ["createMockLLMPackageContext"]
  CALL R24 1 1
  GETIMPORT R25 K6 [require]
  GETTABLEKS R28 R0 K30 ["TestUtils"]
  GETTABLEKS R27 R28 K34 ["setup"]
  GETTABLEKS R26 R27 K39 ["createMockMcpClientContext"]
  CALL R25 1 1
  GETIMPORT R26 K6 [require]
  GETTABLEKS R29 R0 K30 ["TestUtils"]
  GETTABLEKS R28 R29 K34 ["setup"]
  GETTABLEKS R27 R28 K40 ["createMockModelQualityContext"]
  CALL R26 1 1
  GETIMPORT R27 K6 [require]
  GETTABLEKS R30 R0 K30 ["TestUtils"]
  GETTABLEKS R29 R30 K34 ["setup"]
  GETTABLEKS R28 R29 K41 ["createMockOptionsContext"]
  CALL R27 1 1
  GETIMPORT R28 K6 [require]
  GETTABLEKS R31 R0 K30 ["TestUtils"]
  GETTABLEKS R30 R31 K34 ["setup"]
  GETTABLEKS R29 R30 K42 ["createMockPopoutWidgetContext"]
  CALL R28 1 1
  GETIMPORT R29 K6 [require]
  GETTABLEKS R32 R0 K30 ["TestUtils"]
  GETTABLEKS R31 R32 K34 ["setup"]
  GETTABLEKS R30 R31 K43 ["createMockThreadIdContext"]
  CALL R29 1 1
  GETTABLEKS R30 R15 K44 ["createElement"]
  GETTABLEKS R32 R7 K45 ["TestHelpers"]
  GETTABLEKS R31 R32 K46 ["provideMockContext"]
  GETTABLEKS R33 R6 K47 ["Utility"]
  GETTABLEKS R32 R33 K48 ["mockComponent"]
  GETTABLEKS R33 R16 K49 ["act"]
  GETTABLEKS R34 R16 K50 ["fireEvent"]
  GETTABLEKS R35 R16 K51 ["waitFor"]
  GETTABLEKS R36 R16 K52 ["within"]
  GETTABLEKS R37 R9 K53 ["jest"]
  DUPCLOSURE R38 K54 [PROTO_116]
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R29
  CAPTURE VAL R25
  CAPTURE VAL R24
  CAPTURE VAL R26
  CAPTURE VAL R28
  CAPTURE VAL R27
  CAPTURE VAL R30
  CAPTURE VAL R20
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R37
  CAPTURE VAL R16
  CAPTURE VAL R31
  CAPTURE VAL R32
  CAPTURE VAL R17
  CAPTURE VAL R5
  CAPTURE VAL R33
  CAPTURE VAL R36
  CAPTURE VAL R18
  CAPTURE VAL R34
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R35
  CAPTURE VAL R10
  RETURN R38 1
