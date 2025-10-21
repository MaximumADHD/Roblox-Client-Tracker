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
  GETUPVAL R1 0
  RETURN R1 1

PROTO_3:
  SETUPVAL R1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  LENGTH R1 R2
  JUMPIFNOTLT R1 R0 [+3]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  RETURN R1 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["render"]
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["provideMockContext"]
  GETUPVAL R4 3
  GETUPVAL R5 4
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K2 ["ContextStack"]
  DUPTABLE R7 K4 [{"providers"}]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K5 ["values"]
  GETUPVAL R9 7
  CALL R8 1 1
  SETTABLEKS R8 R7 K3 ["providers"]
  DUPTABLE R8 K7 [{"Node"}]
  SETTABLEKS R0 R8 K6 ["Node"]
  CALL R5 3 -1
  CALL R4 -1 -1
  CALL R2 -1 -1
  CALL R1 -1 1
  GETTABLEKS R2 R1 K8 ["container"]
  SETUPVAL R2 8
  GETUPVAL R2 8
  JUMPIFNOT R2 [+9]
  GETUPVAL R2 8
  LOADK R4 K9 ["ScreenGui"]
  NAMECALL R2 R2 K10 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R3 R2 K11 ["Parent"]
  SETUPVAL R3 9
  RETURN R0 0

PROTO_6:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["UserInputService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  NAMECALL R2 R1 K4 ["GetFocusedTextBox"]
  CALL R2 1 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K5 ["TextBox"]
  NAMECALL R4 R2 K6 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K7 [+4]
  LOADK R5 K7 ["Focused instance not found"]
  GETIMPORT R3 K9 [assert]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K10 ["change"]
  MOVE R4 R2
  DUPTABLE R5 K12 [{"target"}]
  DUPTABLE R6 K14 [{"Text"}]
  SETTABLEKS R0 R6 K13 ["Text"]
  SETTABLEKS R6 R5 K11 ["target"]
  CALL R3 2 0
  RETURN R0 0

PROTO_7:
  SETUPVAL R0 0
  GETIMPORT R1 K2 [coroutine.status]
  GETUPVAL R2 1
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K3 ["suspended"] [+5]
  GETIMPORT R1 K6 [task.spawn]
  GETUPVAL R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  RETURN R0 0

PROTO_9:
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
  DUPCLOSURE R3 K5 [PROTO_8]
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
  GETTABLEKS R4 R0 K0 ["messageContainer"]
  GETTABLEKS R3 R4 K1 ["LayoutOrder"]
  GETTABLEKS R5 R1 K0 ["messageContainer"]
  GETTABLEKS R4 R5 K1 ["LayoutOrder"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_20:
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
  DUPCLOSURE R4 K18 [PROTO_19]
  CALL R2 2 0
  RETURN R1 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setModelQuality"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["CaptureFocus"]
  CALL R0 1 0
  RETURN R0 0

PROTO_28:
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

PROTO_29:
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

PROTO_30:
  GETUPVAL R0 0
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K0 ["CursorPosition"]
  RETURN R0 0

PROTO_31:
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

PROTO_33:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["screen"]
  GETTABLEKS R1 R2 K1 ["debug"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_34:
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

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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
  GETTABLEKS R1 R0 K10 ["Visible"]
  JUMPIFNOT R1 [+2]
  GETTABLEKS R1 R0 K11 ["TextEditable"]
  RETURN R1 1

PROTO_40:
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

PROTO_41:
  GETUPVAL R1 0
  CALL R1 0 1
  LENGTH R0 R1
  RETURN R0 1

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
  GETIMPORT R0 K1 [error]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_59:
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

PROTO_60:
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

PROTO_61:
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

PROTO_62:
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

PROTO_63:
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

PROTO_64:
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

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
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

PROTO_74:
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

PROTO_75:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setConversations"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_76:
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

PROTO_77:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setConversationId"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_78:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getConversationId"]
  CALL R1 0 1
  GETUPVAL R2 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R1 1

PROTO_79:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setThreadId"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_80:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getThreadId"]
  CALL R1 0 1
  GETUPVAL R2 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R1 1

PROTO_81:
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

PROTO_82:
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

PROTO_83:
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

PROTO_84:
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

PROTO_85:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["wasToolInvoked"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_86:
  GETIMPORT R0 K1 [error]
  GETUPVAL R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_87:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["overrideMethod"]
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_88:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getClientObject"]
  CALL R1 0 1
  MOVE R4 R0
  NAMECALL R2 R1 K1 ["getClient"]
  CALL R2 2 1
  FASTCALL2K ASSERT R2 K2 [+5]
  MOVE R4 R2
  LOADK R5 K2 ["Client not found"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  NAMECALL R3 R2 K5 ["getStatus"]
  CALL R3 1 1
  NAMECALL R3 R3 K6 ["get"]
  CALL R3 1 1
  RETURN R3 1

PROTO_89:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["wasRequestHandlerCalled"]
  CALL R0 0 -1
  RETURN R0 -1

PROTO_90:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getLastRequestHandlerBody"]
  CALL R1 0 1
  JUMPIFNOT R1 [+2]
  GETTABLE R2 R1 R0
  JUMPIF R2 [+1]
  LOADNIL R2
  RETURN R2 1

PROTO_91:
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

PROTO_92:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  LOADK R3 K0 ["GuiObject"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_93:
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

PROTO_94:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setInputOverride"]
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_95:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_96:
  GETUPVAL R1 0
  GETUPVAL R4 0
  GETUPVAL R8 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K0 [+4]
  LOADK R8 K0 ["GUI root not available, ensure render is called"]
  GETIMPORT R6 K2 [assert]
  CALL R6 2 0
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLEKS R3 R4 K3 ["getByTestId"]
  LOADK R4 K4 ["Assistant-SettingsContent"]
  CALL R3 1 1
  FASTCALL2K ASSERT R3 K5 [+5]
  MOVE R5 R3
  LOADK R6 K5 ["Settings content not found"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  MOVE R2 R3
  CALL R1 1 1
  GETTABLEKS R0 R1 K6 ["queryByTestId"]
  LOADK R1 K7 ["Assistant-EditAPIKeyButton"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K8 [+5]
  MOVE R2 R0
  LOADK R3 K8 ["Edit API Key button not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K9 ["click"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_97:
  GETUPVAL R1 0
  GETUPVAL R4 0
  GETUPVAL R8 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K0 [+4]
  LOADK R8 K0 ["GUI root not available, ensure render is called"]
  GETIMPORT R6 K2 [assert]
  CALL R6 2 0
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLEKS R3 R4 K3 ["getByTestId"]
  LOADK R4 K4 ["Assistant-SettingsContent"]
  CALL R3 1 1
  FASTCALL2K ASSERT R3 K5 [+5]
  MOVE R5 R3
  LOADK R6 K5 ["Settings content not found"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  MOVE R2 R3
  CALL R1 1 1
  GETTABLEKS R0 R1 K6 ["queryByTestId"]
  LOADK R1 K7 ["Assistant-SaveAPIKeyButton"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K8 [+5]
  MOVE R2 R0
  LOADK R3 K8 ["Save API Key button not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K9 ["click"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_98:
  GETUPVAL R1 0
  GETUPVAL R4 0
  GETUPVAL R8 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K0 [+4]
  LOADK R8 K0 ["GUI root not available, ensure render is called"]
  GETIMPORT R6 K2 [assert]
  CALL R6 2 0
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLEKS R3 R4 K3 ["getByTestId"]
  LOADK R4 K4 ["Assistant-SettingsContent"]
  CALL R3 1 1
  FASTCALL2K ASSERT R3 K5 [+5]
  MOVE R5 R3
  LOADK R6 K5 ["Settings content not found"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  MOVE R2 R3
  CALL R1 1 1
  GETTABLEKS R0 R1 K6 ["queryByTestId"]
  LOADK R1 K7 ["Assistant-CancelAPIKeyButton"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K8 [+5]
  MOVE R2 R0
  LOADK R3 K8 ["Cancel API Key button not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K9 ["click"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_99:
  GETUPVAL R1 0
  GETUPVAL R4 0
  GETUPVAL R8 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K0 [+4]
  LOADK R8 K0 ["GUI root not available, ensure render is called"]
  GETIMPORT R6 K2 [assert]
  CALL R6 2 0
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLEKS R3 R4 K3 ["getByTestId"]
  LOADK R4 K4 ["Assistant-SettingsContent"]
  CALL R3 1 1
  FASTCALL2K ASSERT R3 K5 [+5]
  MOVE R5 R3
  LOADK R6 K5 ["Settings content not found"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  MOVE R2 R3
  CALL R1 1 1
  GETTABLEKS R0 R1 K6 ["queryByTestId"]
  LOADK R1 K7 ["Assistant-APIKeyInput"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K8 [+5]
  MOVE R2 R0
  LOADK R3 K8 ["API Key input container not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  LOADK R3 K9 ["TextBox"]
  LOADB R4 1
  NAMECALL R1 R0 K10 ["FindFirstChildWhichIsA"]
  CALL R1 3 1
  FASTCALL2K ASSERT R1 K11 [+5]
  MOVE R3 R1
  LOADK R4 K11 ["TextBox not found within input container"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R1 K12 ["Text"]
  RETURN R2 1

PROTO_100:
  GETUPVAL R2 0
  GETUPVAL R5 0
  GETUPVAL R9 1
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  FASTCALL2K ASSERT R8 K0 [+4]
  LOADK R9 K0 ["GUI root not available, ensure render is called"]
  GETIMPORT R7 K2 [assert]
  CALL R7 2 0
  GETUPVAL R6 1
  CALL R5 1 1
  GETTABLEKS R4 R5 K3 ["getByTestId"]
  LOADK R5 K4 ["Assistant-SettingsContent"]
  CALL R4 1 1
  FASTCALL2K ASSERT R4 K5 [+5]
  MOVE R6 R4
  LOADK R7 K5 ["Settings content not found"]
  GETIMPORT R5 K2 [assert]
  CALL R5 2 0
  MOVE R3 R4
  CALL R2 1 1
  GETTABLEKS R1 R2 K6 ["queryByTestId"]
  LOADK R2 K7 ["Assistant-APIKeyInput"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K8 [+5]
  MOVE R3 R1
  LOADK R4 K8 ["API Key input container not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  LOADK R4 K9 ["TextBox"]
  LOADB R5 1
  NAMECALL R2 R1 K10 ["FindFirstChildWhichIsA"]
  CALL R2 3 1
  FASTCALL2K ASSERT R2 K11 [+5]
  MOVE R4 R2
  LOADK R5 K11 ["TextBox not found within input container"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K12 ["change"]
  MOVE R4 R2
  DUPTABLE R5 K14 [{"target"}]
  DUPTABLE R6 K16 [{"Text"}]
  SETTABLEKS R0 R6 K15 ["Text"]
  SETTABLEKS R6 R5 K13 ["target"]
  CALL R3 2 0
  RETURN R0 0

PROTO_101:
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
  LOADK R2 K4 ["Assistant-SettingsButton"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K5 [+5]
  MOVE R3 R1
  LOADK R4 K5 ["Settings button not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 0
  GETUPVAL R5 0
  GETUPVAL R9 3
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  FASTCALL2K ASSERT R8 K7 [+4]
  LOADK R9 K7 ["GUI root not available, ensure render is called"]
  GETIMPORT R7 K2 [assert]
  CALL R7 2 0
  GETUPVAL R6 3
  CALL R5 1 1
  GETTABLEKS R4 R5 K3 ["getByTestId"]
  LOADK R5 K8 ["Assistant-SettingsContent"]
  CALL R4 1 1
  FASTCALL2K ASSERT R4 K9 [+5]
  MOVE R6 R4
  LOADK R7 K9 ["Settings content not found"]
  GETIMPORT R5 K2 [assert]
  CALL R5 2 0
  MOVE R3 R4
  CALL R2 1 1
  GETTABLEKS R1 R2 K10 ["queryByTestId"]
  LOADK R2 K11 ["Assistant-EditAPIKeyButton"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K12 [+5]
  MOVE R3 R1
  LOADK R4 K12 ["Edit API Key button not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R3 0
  GETUPVAL R6 0
  GETUPVAL R10 3
  JUMPIFNOTEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  FASTCALL2K ASSERT R9 K7 [+4]
  LOADK R10 K7 ["GUI root not available, ensure render is called"]
  GETIMPORT R8 K2 [assert]
  CALL R8 2 0
  GETUPVAL R7 3
  CALL R6 1 1
  GETTABLEKS R5 R6 K3 ["getByTestId"]
  LOADK R6 K8 ["Assistant-SettingsContent"]
  CALL R5 1 1
  FASTCALL2K ASSERT R5 K9 [+5]
  MOVE R7 R5
  LOADK R8 K9 ["Settings content not found"]
  GETIMPORT R6 K2 [assert]
  CALL R6 2 0
  MOVE R4 R5
  CALL R3 1 1
  GETTABLEKS R2 R3 K10 ["queryByTestId"]
  LOADK R3 K13 ["Assistant-APIKeyInput"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K14 [+5]
  MOVE R4 R2
  LOADK R5 K14 ["API Key input container not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  LOADK R5 K15 ["TextBox"]
  LOADB R6 1
  NAMECALL R3 R2 K16 ["FindFirstChildWhichIsA"]
  CALL R3 3 1
  FASTCALL2K ASSERT R3 K17 [+5]
  MOVE R5 R3
  LOADK R6 K17 ["TextBox not found within input container"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  GETTABLEKS R1 R3 K18 ["Text"]
  GETUPVAL R3 0
  GETUPVAL R6 0
  GETUPVAL R10 3
  JUMPIFNOTEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  FASTCALL2K ASSERT R9 K7 [+4]
  LOADK R10 K7 ["GUI root not available, ensure render is called"]
  GETIMPORT R8 K2 [assert]
  CALL R8 2 0
  GETUPVAL R7 3
  CALL R6 1 1
  GETTABLEKS R5 R6 K3 ["getByTestId"]
  LOADK R6 K8 ["Assistant-SettingsContent"]
  CALL R5 1 1
  FASTCALL2K ASSERT R5 K9 [+5]
  MOVE R7 R5
  LOADK R8 K9 ["Settings content not found"]
  GETIMPORT R6 K2 [assert]
  CALL R6 2 0
  MOVE R4 R5
  CALL R3 1 1
  GETTABLEKS R2 R3 K10 ["queryByTestId"]
  LOADK R3 K19 ["Assistant-CancelAPIKeyButton"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K20 [+5]
  MOVE R4 R2
  LOADK R5 K20 ["Cancel API Key button not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["click"]
  MOVE R4 R2
  CALL R3 1 0
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
  LOADK R3 K4 ["Assistant-SettingsButton"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K5 [+5]
  MOVE R4 R2
  LOADK R5 K5 ["Settings button not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["click"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R1 1

PROTO_102:
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
  LOADK R3 K4 ["Assistant-SettingsButton"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K5 [+5]
  MOVE R4 R2
  LOADK R5 K5 ["Settings button not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["click"]
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R3 0
  GETUPVAL R6 0
  GETUPVAL R10 3
  JUMPIFNOTEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  FASTCALL2K ASSERT R9 K7 [+4]
  LOADK R10 K7 ["GUI root not available, ensure render is called"]
  GETIMPORT R8 K2 [assert]
  CALL R8 2 0
  GETUPVAL R7 3
  CALL R6 1 1
  GETTABLEKS R5 R6 K3 ["getByTestId"]
  LOADK R6 K8 ["Assistant-SettingsContent"]
  CALL R5 1 1
  FASTCALL2K ASSERT R5 K9 [+5]
  MOVE R7 R5
  LOADK R8 K9 ["Settings content not found"]
  GETIMPORT R6 K2 [assert]
  CALL R6 2 0
  MOVE R4 R5
  CALL R3 1 1
  GETTABLEKS R2 R3 K10 ["queryByTestId"]
  LOADK R3 K11 ["Assistant-EditAPIKeyButton"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K12 [+5]
  MOVE R4 R2
  LOADK R5 K12 ["Edit API Key button not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["click"]
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R2 4
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R3 0
  GETUPVAL R6 0
  GETUPVAL R10 3
  JUMPIFNOTEQKNIL R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  FASTCALL2K ASSERT R9 K7 [+4]
  LOADK R10 K7 ["GUI root not available, ensure render is called"]
  GETIMPORT R8 K2 [assert]
  CALL R8 2 0
  GETUPVAL R7 3
  CALL R6 1 1
  GETTABLEKS R5 R6 K3 ["getByTestId"]
  LOADK R6 K8 ["Assistant-SettingsContent"]
  CALL R5 1 1
  FASTCALL2K ASSERT R5 K9 [+5]
  MOVE R7 R5
  LOADK R8 K9 ["Settings content not found"]
  GETIMPORT R6 K2 [assert]
  CALL R6 2 0
  MOVE R4 R5
  CALL R3 1 1
  GETTABLEKS R2 R3 K10 ["queryByTestId"]
  LOADK R3 K13 ["Assistant-SaveAPIKeyButton"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K14 [+5]
  MOVE R4 R2
  LOADK R5 K14 ["Save API Key button not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["click"]
  MOVE R4 R2
  CALL R3 1 0
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
  LOADK R3 K4 ["Assistant-SettingsButton"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K5 [+5]
  MOVE R4 R2
  LOADK R5 K5 ["Settings button not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["click"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_103:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_104:
  GETUPVAL R1 0
  GETUPVAL R4 0
  GETUPVAL R8 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K0 [+4]
  LOADK R8 K0 ["GUI root not available, ensure render is called"]
  GETIMPORT R6 K2 [assert]
  CALL R6 2 0
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLEKS R3 R4 K3 ["getByTestId"]
  LOADK R4 K4 ["Assistant-SettingsContent"]
  CALL R3 1 1
  FASTCALL2K ASSERT R3 K5 [+5]
  MOVE R5 R3
  LOADK R6 K5 ["Settings content not found"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  MOVE R2 R3
  CALL R1 1 1
  GETTABLEKS R0 R1 K6 ["queryByTestId"]
  LOADK R1 K7 ["Assistant-LLMProviderCheckbox"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K8 [+5]
  MOVE R2 R0
  LOADK R3 K8 ["LLM Provider checkbox not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  RETURN R0 1

PROTO_105:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["click"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_106:
  GETUPVAL R2 0
  GETUPVAL R5 0
  GETUPVAL R9 1
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  FASTCALL2K ASSERT R8 K0 [+4]
  LOADK R9 K0 ["GUI root not available, ensure render is called"]
  GETIMPORT R7 K2 [assert]
  CALL R7 2 0
  GETUPVAL R6 1
  CALL R5 1 1
  GETTABLEKS R4 R5 K3 ["getByTestId"]
  LOADK R5 K4 ["Assistant-SettingsContent"]
  CALL R4 1 1
  FASTCALL2K ASSERT R4 K5 [+5]
  MOVE R6 R4
  LOADK R7 K5 ["Settings content not found"]
  GETIMPORT R5 K2 [assert]
  CALL R5 2 0
  MOVE R3 R4
  CALL R2 1 1
  GETTABLEKS R1 R2 K6 ["queryByTestId"]
  LOADK R2 K7 ["Assistant-LLMProviderCheckbox"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K8 [+5]
  MOVE R3 R1
  LOADK R4 K8 ["LLM Provider checkbox not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  MOVE R0 R1
  GETUPVAL R1 2
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_107:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getSelectedLLMProvider"]
  CALL R0 0 -1
  RETURN R0 -1

PROTO_108:
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

PROTO_109:
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

PROTO_110:
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

PROTO_111:
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

PROTO_112:
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

PROTO_113:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["get"]
  GETUPVAL R4 1
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["GUI root not available, ensure render is called"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R1 1
  LOADK R2 K4 ["data-testid=Assistant-AddIntegrationDialog"]
  CALL R0 2 1
  MOVE R2 R0
  JUMPIFNOT R2 [+4]
  LOADK R4 K5 ["GuiObject"]
  NAMECALL R2 R0 K6 ["IsA"]
  CALL R2 2 1
  FASTCALL2K ASSERT R2 K7 [+4]
  LOADK R3 K7 ["Add integration dialog not found"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  RETURN R0 1

PROTO_114:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["get"]
  GETUPVAL R4 1
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["GUI root not available, ensure render is called"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R1 1
  LOADK R2 K4 ["data-testid=Assistant-IntegrationItem-Dialog"]
  CALL R0 2 1
  MOVE R2 R0
  JUMPIFNOT R2 [+4]
  LOADK R4 K5 ["GuiObject"]
  NAMECALL R2 R0 K6 ["IsA"]
  CALL R2 2 1
  FASTCALL2K ASSERT R2 K7 [+4]
  LOADK R3 K7 ["Integration item dialog not found"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  RETURN R0 1

PROTO_115:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["get"]
  GETUPVAL R4 1
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["GUI root not available, ensure render is called"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R1 1
  LOADK R2 K4 ["data-testid=Assistant-IntegrationMenuEmptyState"]
  CALL R0 2 1
  MOVE R2 R0
  JUMPIFNOT R2 [+4]
  LOADK R4 K5 ["GuiObject"]
  NAMECALL R2 R0 K6 ["IsA"]
  CALL R2 2 1
  FASTCALL2K ASSERT R2 K7 [+4]
  LOADK R3 K7 ["Integration menu empty state not found"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  RETURN R0 1

PROTO_116:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-IntegrationItemActions-Toggle"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Toggle button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_117:
  GETUPVAL R3 0
  MOVE R4 R1
  CALL R3 1 1
  GETTABLEKS R2 R3 K0 ["getByText"]
  MOVE R3 R0
  CALL R2 1 1
  MOVE R4 R2
  JUMPIFNOT R4 [+4]
  LOADK R6 K1 ["GuiObject"]
  NAMECALL R4 R2 K2 ["IsA"]
  CALL R4 2 1
  FASTCALL2K ASSERT R4 K3 [+4]
  LOADK R5 K3 ["Label text not found"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["firstAncestorWithTag"]
  MOVE R4 R2
  LOADK R5 K7 ["data-testid=Assistant-IntegrationItem-Header"]
  CALL R3 2 1
  MOVE R5 R3
  JUMPIFNOT R5 [+4]
  LOADK R7 K1 ["GuiObject"]
  NAMECALL R5 R3 K2 ["IsA"]
  CALL R5 2 1
  FASTCALL2K ASSERT R5 K8 [+4]
  LOADK R6 K8 ["Integration item not found"]
  GETIMPORT R4 K5 [assert]
  CALL R4 2 0
  RETURN R3 1

PROTO_118:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["getByTestId"]
  LOADK R2 K1 ["Assistant-IntegrationItemActions-OverflowButton"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Overflow button not found"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["click"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_119:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["queryAll"]
  GETUPVAL R4 1
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["GUI root not available, ensure render is called"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R1 1
  LOADK R2 K4 ["data-testid=Assistant-IntegrationItemActions-OverflowContent"]
  CALL R0 2 1
  MOVE R1 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  LOADK R8 K5 ["GuiObject"]
  NAMECALL R6 R5 K6 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+5]
  GETUPVAL R6 2
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFNOT R6 [+1]
  RETURN R5 1
  FORGLOOP R1 2 [-11]
  GETIMPORT R1 K8 [error]
  LOADK R2 K9 ["Overflow content not found"]
  CALL R1 1 0
  RETURN R0 0

PROTO_120:
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

PROTO_121:
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

PROTO_122:
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

PROTO_123:
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

PROTO_124:
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

PROTO_125:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getProcessEvent"]
  CALL R0 0 1
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_126:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_127:
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

PROTO_128:
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

PROTO_129:
  DUPTABLE R0 K1 [{"type"}]
  LOADK R1 K2 ["message_start"]
  SETTABLEKS R1 R0 K0 ["type"]
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_130:
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

PROTO_131:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["spyOn"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["get"]
  CALL R3 0 1
  GETTABLEKS R2 R3 K2 ["EventLogger"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_132:
  GETUPVAL R4 0
  MOVE R5 R0
  CALL R4 1 1
  GETTABLEKS R3 R4 K0 ["getByText"]
  MOVE R4 R1
  DUPTABLE R5 K2 [{"exact"}]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R6 R2 K1 ["exact"]
  JUMPIF R6 [+1]
  LOADB R6 0
  SETTABLEKS R6 R5 K1 ["exact"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K3 [+5]
  MOVE R5 R3
  LOADK R6 K3 ["Text object not found"]
  GETIMPORT R4 K5 [assert]
  CALL R4 2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["click"]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_133:
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

PROTO_134:
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

PROTO_135:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setOptions"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_136:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_137:
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

PROTO_138:
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
  CALL R1 0 1
  GETUPVAL R2 1
  CALL R2 0 2
  GETUPVAL R4 2
  CALL R4 0 2
  GETUPVAL R6 3
  CALL R6 0 2
  GETUPVAL R8 4
  CALL R8 0 2
  GETUPVAL R10 5
  CALL R10 0 2
  GETUPVAL R12 6
  CALL R12 0 2
  GETUPVAL R14 7
  CALL R14 0 2
  GETUPVAL R16 8
  CALL R16 0 2
  GETUPVAL R18 9
  CALL R18 0 2
  DUPTABLE R20 K14 [{"SettingsContext", "ConversationProvider", "ConversationIdContext", "InputStateContext", "ThreadIdContext", "McpClientContext", "LLMPackageContext", "ModelQualityContext", "PopoutWidgetContext", "OptionsContext", "WindowInputContext"}]
  GETUPVAL R21 10
  MOVE R22 R1
  CALL R21 1 1
  SETTABLEKS R21 R20 K3 ["SettingsContext"]
  GETUPVAL R21 10
  MOVE R22 R2
  CALL R21 1 1
  SETTABLEKS R21 R20 K4 ["ConversationProvider"]
  GETUPVAL R21 10
  MOVE R22 R4
  CALL R21 1 1
  SETTABLEKS R21 R20 K5 ["ConversationIdContext"]
  GETUPVAL R21 10
  MOVE R22 R6
  CALL R21 1 1
  SETTABLEKS R21 R20 K6 ["InputStateContext"]
  GETUPVAL R21 10
  MOVE R22 R8
  CALL R21 1 1
  SETTABLEKS R21 R20 K7 ["ThreadIdContext"]
  GETUPVAL R21 10
  MOVE R22 R10
  CALL R21 1 1
  SETTABLEKS R21 R20 K8 ["McpClientContext"]
  GETUPVAL R21 10
  MOVE R22 R12
  CALL R21 1 1
  SETTABLEKS R21 R20 K9 ["LLMPackageContext"]
  GETUPVAL R21 10
  MOVE R22 R14
  CALL R21 1 1
  SETTABLEKS R21 R20 K10 ["ModelQualityContext"]
  GETUPVAL R21 10
  MOVE R22 R18
  CALL R21 1 1
  SETTABLEKS R21 R20 K11 ["PopoutWidgetContext"]
  GETUPVAL R21 10
  MOVE R22 R16
  CALL R21 1 1
  SETTABLEKS R21 R20 K12 ["OptionsContext"]
  GETUPVAL R21 10
  GETUPVAL R23 11
  GETTABLEKS R22 R23 K15 ["StandardProvider"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K13 ["WindowInputContext"]
  GETUPVAL R22 12
  GETTABLEKS R21 R22 K16 ["join"]
  MOVE R22 R20
  GETTABLEKS R23 R0 K17 ["overrideProviders"]
  JUMPIF R23 [+2]
  NEWTABLE R23 0 0
  CALL R21 2 1
  GETUPVAL R23 13
  GETTABLEKS R22 R23 K18 ["get"]
  CALL R22 0 1
  NEWTABLE R23 0 0
  NEWCLOSURE R24 P0
  CAPTURE VAL R23
  SETTABLEKS R24 R22 K19 ["copyToClipboard"]
  GETIMPORT R24 K22 [table.clone]
  GETUPVAL R25 14
  CALL R24 1 1
  SETTABLEKS R24 R22 K23 ["EventLogger"]
  DUPCLOSURE R24 K24 [PROTO_1]
  SETTABLEKS R24 R22 K25 ["convertImageDataToTempIdAsync"]
  GETUPVAL R25 15
  GETTABLEKS R24 R25 K26 ["fn"]
  CALL R24 0 1
  SETTABLEKS R24 R22 K27 ["releaseTempIdAsync"]
  NEWTABLE R24 1 0
  GETUPVAL R26 16
  GETTABLEKS R25 R26 K28 ["CLAUDE_API_KEY"]
  LOADK R26 K29 ["initial-test-api-key"]
  SETTABLE R26 R24 R25
  NEWCLOSURE R25 P2
  CAPTURE REF R24
  SETTABLEKS R25 R22 K30 ["getSecureSettingsAsync"]
  NEWCLOSURE R25 P3
  CAPTURE REF R24
  SETTABLEKS R25 R22 K31 ["setSecureSettingsAsync"]
  GETUPVAL R26 13
  GETTABLEKS R25 R26 K32 ["set"]
  MOVE R26 R22
  CALL R25 1 0
  NEWCLOSURE R25 P4
  CAPTURE VAL R23
  LOADNIL R26
  LOADNIL R27
  NEWCLOSURE R28 P5
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE REF R0
  CAPTURE UPVAL U19
  CAPTURE UPVAL U10
  CAPTURE UPVAL U20
  CAPTURE UPVAL U12
  CAPTURE VAL R21
  CAPTURE REF R26
  CAPTURE REF R27
  DUPCLOSURE R29 K33 [PROTO_6]
  CAPTURE UPVAL U21
  DUPCLOSURE R30 K34 [PROTO_9]
  CAPTURE UPVAL U22
  CAPTURE UPVAL U23
  NEWCLOSURE R31 P8
  CAPTURE REF R26
  NEWCLOSURE R32 P9
  CAPTURE REF R27
  NEWCLOSURE R33 P10
  CAPTURE UPVAL U24
  CAPTURE REF R26
  NEWCLOSURE R34 P11
  CAPTURE UPVAL U24
  CAPTURE REF R26
  NEWCLOSURE R35 P12
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U25
  NEWCLOSURE R36 P13
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U25
  NEWCLOSURE R37 P14
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U25
  NEWCLOSURE R38 P15
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U25
  NEWCLOSURE R39 P16
  CAPTURE UPVAL U25
  CAPTURE REF R26
  NEWCLOSURE R40 P17
  CAPTURE REF R26
  CAPTURE UPVAL U24
  NEWCLOSURE R41 P18
  CAPTURE UPVAL U24
  CAPTURE REF R26
  NEWCLOSURE R42 P19
  CAPTURE UPVAL U23
  CAPTURE VAL R15
  NEWCLOSURE R43 P20
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U23
  NEWCLOSURE R44 P21
  CAPTURE UPVAL U21
  CAPTURE UPVAL U24
  CAPTURE REF R26
  NEWCLOSURE R45 P22
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U23
  NEWCLOSURE R46 P23
  CAPTURE UPVAL U24
  CAPTURE REF R26
  DUPCLOSURE R47 K35 [PROTO_33]
  CAPTURE UPVAL U17
  NEWCLOSURE R48 P25
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U21
  NEWCLOSURE R49 P26
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U21
  NEWCLOSURE R50 P27
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U23
  CAPTURE VAL R44
  CAPTURE VAL R49
  NEWCLOSURE R51 P28
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U21
  DUPCLOSURE R52 K36 [PROTO_38]
  CAPTURE UPVAL U21
  NEWCLOSURE R53 P30
  CAPTURE UPVAL U24
  CAPTURE REF R26
  NEWCLOSURE R54 P31
  CAPTURE VAL R39
  CAPTURE UPVAL U24
  NEWCLOSURE R55 P32
  CAPTURE VAL R39
  NEWCLOSURE R56 P33
  CAPTURE UPVAL U24
  CAPTURE REF R26
  DUPCLOSURE R57 K37 [PROTO_43]
  DUPCLOSURE R58 K38 [PROTO_44]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R59 K39 [PROTO_45]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R60 K40 [PROTO_46]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R61 K41 [PROTO_47]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R62 K42 [PROTO_48]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R63 K43 [PROTO_49]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R64 K44 [PROTO_50]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R65 K45 [PROTO_51]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R66 K46 [PROTO_52]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R67 K47 [PROTO_53]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R68 K48 [PROTO_54]
  CAPTURE UPVAL U24
  DUPCLOSURE R69 K49 [PROTO_55]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R70 K50 [PROTO_56]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R71 K51 [PROTO_57]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R72 K52 [PROTO_59]
  CAPTURE UPVAL U15
  CAPTURE UPVAL U26
  DUPCLOSURE R73 K53 [PROTO_60]
  CAPTURE UPVAL U24
  DUPCLOSURE R74 K54 [PROTO_61]
  DUPCLOSURE R75 K55 [PROTO_62]
  DUPCLOSURE R76 K56 [PROTO_63]
  CAPTURE UPVAL U24
  CAPTURE VAL R75
  DUPCLOSURE R77 K57 [PROTO_64]
  CAPTURE VAL R74
  CAPTURE VAL R75
  CAPTURE UPVAL U21
  DUPCLOSURE R78 K58 [PROTO_65]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R79 K59 [PROTO_66]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R80 K60 [PROTO_67]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R81 K61 [PROTO_68]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R82 K62 [PROTO_69]
  CAPTURE UPVAL U24
  DUPCLOSURE R83 K63 [PROTO_70]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R84 K64 [PROTO_71]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R85 K65 [PROTO_72]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R86 K66 [PROTO_73]
  CAPTURE UPVAL U24
  DUPCLOSURE R87 K67 [PROTO_74]
  CAPTURE UPVAL U24
  NEWCLOSURE R88 P65
  CAPTURE VAL R3
  CAPTURE UPVAL U23
  NEWCLOSURE R89 P66
  CAPTURE VAL R5
  CAPTURE UPVAL U23
  NEWCLOSURE R90 P67
  CAPTURE VAL R9
  CAPTURE UPVAL U23
  NEWCLOSURE R91 P68
  CAPTURE UPVAL U27
  CAPTURE VAL R3
  CAPTURE UPVAL U23
  CAPTURE VAL R5
  CAPTURE VAL R9
  NEWCLOSURE R92 P69
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U21
  NEWCLOSURE R93 P70
  CAPTURE UPVAL U24
  CAPTURE REF R27
  NEWCLOSURE R94 P71
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U21
  CAPTURE REF R27
  NEWCLOSURE R95 P72
  CAPTURE VAL R11
  NEWCLOSURE R96 P73
  CAPTURE VAL R11
  NEWCLOSURE R97 P74
  CAPTURE VAL R11
  NEWCLOSURE R98 P75
  CAPTURE VAL R13
  NEWCLOSURE R99 P76
  CAPTURE VAL R13
  NEWCLOSURE R100 P77
  CAPTURE UPVAL U23
  CAPTURE VAL R7
  CAPTURE UPVAL U28
  CAPTURE UPVAL U29
  CAPTURE VAL R37
  NEWCLOSURE R101 P78
  CAPTURE UPVAL U23
  CAPTURE VAL R7
  NEWCLOSURE R102 P79
  CAPTURE UPVAL U24
  CAPTURE REF R27
  CAPTURE UPVAL U21
  NEWCLOSURE R103 P80
  CAPTURE UPVAL U24
  CAPTURE REF R27
  CAPTURE UPVAL U21
  NEWCLOSURE R104 P81
  CAPTURE UPVAL U24
  CAPTURE REF R27
  CAPTURE UPVAL U21
  NEWCLOSURE R105 P82
  CAPTURE UPVAL U24
  CAPTURE REF R27
  NEWCLOSURE R106 P83
  CAPTURE UPVAL U24
  CAPTURE REF R27
  CAPTURE UPVAL U21
  NEWCLOSURE R107 P84
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U21
  CAPTURE REF R27
  NEWCLOSURE R108 P85
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U21
  CAPTURE REF R27
  CAPTURE VAL R106
  NEWCLOSURE R109 P86
  CAPTURE REF R24
  NEWCLOSURE R110 P87
  CAPTURE UPVAL U24
  CAPTURE REF R27
  NEWCLOSURE R111 P88
  CAPTURE UPVAL U24
  CAPTURE REF R27
  CAPTURE UPVAL U23
  CAPTURE UPVAL U21
  NEWCLOSURE R112 P89
  CAPTURE VAL R17
  NEWCLOSURE R113 P90
  CAPTURE UPVAL U24
  CAPTURE REF R26
  NEWCLOSURE R114 P91
  CAPTURE UPVAL U24
  CAPTURE REF R26
  NEWCLOSURE R115 P92
  CAPTURE UPVAL U24
  CAPTURE REF R26
  DUPCLOSURE R116 K68 [PROTO_111]
  CAPTURE UPVAL U25
  NEWCLOSURE R117 P94
  CAPTURE UPVAL U24
  CAPTURE REF R26
  CAPTURE UPVAL U21
  NEWCLOSURE R118 P95
  CAPTURE UPVAL U25
  CAPTURE REF R27
  NEWCLOSURE R119 P96
  CAPTURE UPVAL U25
  CAPTURE REF R27
  NEWCLOSURE R120 P97
  CAPTURE UPVAL U25
  CAPTURE REF R27
  DUPCLOSURE R121 K69 [PROTO_116]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R122 K70 [PROTO_117]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U25
  DUPCLOSURE R123 K71 [PROTO_118]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  NEWCLOSURE R124 P101
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U30
  DUPCLOSURE R125 K72 [PROTO_120]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R126 K73 [PROTO_121]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R127 K74 [PROTO_122]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R128 K75 [PROTO_123]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  DUPCLOSURE R129 K76 [PROTO_124]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  NEWCLOSURE R130 P107
  CAPTURE UPVAL U23
  CAPTURE VAL R13
  NEWCLOSURE R131 P108
  CAPTURE UPVAL U23
  CAPTURE VAL R13
  NEWCLOSURE R132 P109
  CAPTURE UPVAL U23
  CAPTURE VAL R13
  NEWCLOSURE R133 P110
  CAPTURE UPVAL U23
  CAPTURE VAL R13
  NEWCLOSURE R134 P111
  CAPTURE UPVAL U23
  CAPTURE VAL R13
  DUPCLOSURE R135 K77 [PROTO_131]
  CAPTURE UPVAL U15
  CAPTURE UPVAL U13
  DUPCLOSURE R136 K78 [PROTO_132]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U21
  NEWCLOSURE R137 P114
  CAPTURE UPVAL U24
  CAPTURE REF R27
  DUPCLOSURE R138 K79 [PROTO_134]
  CAPTURE UPVAL U24
  NEWCLOSURE R139 P116
  CAPTURE UPVAL U23
  CAPTURE VAL R17
  DUPCLOSURE R140 K80 [PROTO_137]
  CAPTURE UPVAL U24
  CAPTURE UPVAL U25
  CAPTURE UPVAL U21
  MOVE R141 R28
  GETUPVAL R142 10
  LOADK R143 K81 ["Frame"]
  DUPTABLE R144 K83 [{"Size"}]
  GETIMPORT R145 K86 [UDim2.fromScale]
  LOADN R146 1
  LOADN R147 1
  CALL R145 2 1
  SETTABLEKS R145 R144 K82 ["Size"]
  DUPTABLE R145 K89 [{"UIListLayout", "MainView"}]
  GETUPVAL R146 10
  LOADK R147 K87 ["UIListLayout"]
  DUPTABLE R148 K91 [{"FillDirection"}]
  GETIMPORT R149 K94 [Enum.FillDirection.Vertical]
  SETTABLEKS R149 R148 K90 ["FillDirection"]
  CALL R146 2 1
  SETTABLEKS R146 R145 K87 ["UIListLayout"]
  GETUPVAL R146 10
  GETUPVAL R147 31
  CALL R146 1 1
  SETTABLEKS R146 R145 K88 ["MainView"]
  CALL R142 3 -1
  CALL R141 -1 0
  NEWTABLE R141 128 0
  SETTABLEKS R28 R141 K95 ["render"]
  SETTABLEKS R29 R141 K96 ["typeText"]
  SETTABLEKS R30 R141 K97 ["getCurrentConversationThread"]
  SETTABLEKS R31 R141 K98 ["getContainer"]
  SETTABLEKS R34 R141 K99 ["getTextBox"]
  SETTABLEKS R35 R141 K100 ["getMessageScrollArea"]
  SETTABLEKS R36 R141 K101 ["getContainingMessageWidget"]
  SETTABLEKS R37 R141 K102 ["getContainingContentWidget"]
  SETTABLEKS R38 R141 K103 ["getMessageActionsWidget"]
  SETTABLEKS R40 R141 K104 ["getTextObjectWithMessage"]
  SETTABLEKS R25 R141 K105 ["getClipboardTextAtIndex"]
  SETTABLEKS R43 R141 K106 ["focusTextBox"]
  SETTABLEKS R44 R141 K107 ["setInputText"]
  SETTABLEKS R45 R141 K108 ["setCursorPosition"]
  SETTABLEKS R46 R141 K109 ["getInputScrollArea"]
  SETTABLEKS R47 R141 K110 ["printScreen"]
  SETTABLEKS R48 R141 K111 ["clickStopGenerationButton"]
  SETTABLEKS R49 R141 K112 ["enterTextBox"]
  SETTABLEKS R50 R141 K113 ["enterUserMessage"]
  SETTABLEKS R51 R141 K114 ["pressKeyInInput"]
  SETTABLEKS R52 R141 K115 ["setKeyDown"]
  SETTABLEKS R53 R141 K116 ["isInputEnabled"]
  SETTABLEKS R54 R141 K117 ["lastUserTextMatches"]
  SETTABLEKS R55 R141 K118 ["getMessageCount"]
  SETTABLEKS R56 R141 K119 ["isResponding"]
  SETTABLEKS R100 R141 K120 ["setExternalInputOverride"]
  SETTABLEKS R101 R141 K121 ["clearExternalInputOverride"]
  SETTABLEKS R107 R141 K122 ["getAPIKey"]
  SETTABLEKS R108 R141 K123 ["setAPIKey"]
  SETTABLEKS R109 R141 K124 ["getEnvironmentProviderKeys"]
  SETTABLEKS R92 R141 K125 ["clickSettingsButton"]
  SETTABLEKS R93 R141 K126 ["getSettingsContent"]
  SETTABLEKS R102 R141 K127 ["clickEditAPIKeyButton"]
  SETTABLEKS R103 R141 K128 ["clickSaveAPIKeyButton"]
  SETTABLEKS R104 R141 K129 ["clickCancelAPIKeyButton"]
  SETTABLEKS R105 R141 K130 ["getAPIKeyInputText"]
  SETTABLEKS R106 R141 K131 ["setAPIKeyInputText"]
  SETTABLEKS R110 R141 K132 ["getLLMProviderCheckbox"]
  SETTABLEKS R111 R141 K133 ["clickLLMProviderCheckbox"]
  SETTABLEKS R112 R141 K134 ["getSelectedLLMProvider"]
  SETTABLEKS R114 R141 K135 ["hasFooterText"]
  SETTABLEKS R115 R141 K136 ["hasFooterIcon"]
  SETTABLEKS R116 R141 K137 ["getToolMenuView"]
  SETTABLEKS R117 R141 K138 ["clickServerManagementButton"]
  SETTABLEKS R118 R141 K139 ["getManageIntegrationsDialog"]
  SETTABLEKS R119 R141 K140 ["getIntegrationItemDialog"]
  SETTABLEKS R120 R141 K141 ["getIntegrationMenuEmptyState"]
  SETTABLEKS R122 R141 K142 ["getIntegrationItemForLabel"]
  SETTABLEKS R121 R141 K143 ["clickIntegrationItemActionsToggle"]
  SETTABLEKS R123 R141 K144 ["clickIntegrationItemActionsOverflowButton"]
  SETTABLEKS R124 R141 K145 ["getIntegrationItemActionsOverflowContent"]
  SETTABLEKS R72 R141 K146 ["throwMarkdownParserError"]
  SETTABLEKS R73 R141 K147 ["getCarousel"]
  SETTABLEKS R74 R141 K148 ["getCarouselItem"]
  SETTABLEKS R76 R141 K149 ["getSelectedCarouselItem"]
  SETTABLEKS R77 R141 K150 ["clickCarouselItem"]
  SETTABLEKS R125 R141 K151 ["clickAlertCloseButton"]
  SETTABLEKS R126 R141 K152 ["clickAlertContinueButton"]
  SETTABLEKS R127 R141 K153 ["clickToolConfirmationAcceptButton"]
  SETTABLEKS R128 R141 K154 ["clickToolConfirmationRejectButton"]
  SETTABLEKS R129 R141 K155 ["clickToolConfirmationAlwaysAcceptButton"]
  SETTABLEKS R58 R141 K156 ["clickRunCodeExpandButton"]
  SETTABLEKS R78 R141 K157 ["clickCopyButton"]
  SETTABLEKS R79 R141 K158 ["clickRunButton"]
  SETTABLEKS R80 R141 K159 ["clickStopButton"]
  SETTABLEKS R81 R141 K160 ["clickImageExpandButton"]
  SETTABLEKS R82 R141 K161 ["getImageContentImage"]
  SETTABLEKS R59 R141 K162 ["clickAssetVariationExpandButton"]
  SETTABLEKS R60 R141 K163 ["clickMaterialGenExpandButton"]
  SETTABLEKS R61 R141 K164 ["clickMaterialGenStudsPerTileValueBar"]
  SETTABLEKS R62 R141 K165 ["clickMaterialGenOrganicPatternToggle"]
  SETTABLEKS R63 R141 K166 ["clickMeshGenExpandButton"]
  SETTABLEKS R64 R141 K167 ["clickMeshGenRegenerateButton"]
  SETTABLEKS R65 R141 K168 ["clickMeshGenCancelGenerationButton"]
  SETTABLEKS R66 R141 K169 ["clickMeshGenPublishButton"]
  SETTABLEKS R67 R141 K170 ["clickMeshGenInsertButton"]
  SETTABLEKS R68 R141 K171 ["getMeshGenPreviewImage"]
  SETTABLEKS R69 R141 K172 ["clickMeshGenLastPreviewButton"]
  SETTABLEKS R70 R141 K173 ["clickMeshGenNextPreviewButton"]
  SETTABLEKS R71 R141 K174 ["clickMeshGenSelectionToggle"]
  SETTABLEKS R83 R141 K175 ["clickRetryButton"]
  SETTABLEKS R84 R141 K176 ["clickThumbsUpButton"]
  SETTABLEKS R85 R141 K177 ["clickThumbsDownButton"]
  SETTABLEKS R86 R141 K178 ["getThumbsUpButtonIcon"]
  SETTABLEKS R87 R141 K179 ["getThumbsDownButtonIcon"]
  SETTABLEKS R88 R141 K180 ["addConversation"]
  SETTABLEKS R89 R141 K181 ["setConversationId"]
  SETTABLEKS R90 R141 K182 ["setThreadId"]
  SETTABLEKS R91 R141 K183 ["applyConversation"]
  SETTABLEKS R94 R141 K184 ["clearConversation"]
  SETTABLEKS R95 R141 K185 ["wasToolInvoked"]
  SETTABLEKS R96 R141 K186 ["overrideMethodWithError"]
  SETTABLEKS R98 R141 K187 ["wasRequestHandlerCalled"]
  SETTABLEKS R99 R141 K188 ["getLastRequestField"]
  SETTABLEKS R97 R141 K189 ["getClientStatusForIdentifier"]
  SETTABLEKS R130 R141 K190 ["streamEvent"]
  SETTABLEKS R131 R141 K191 ["addToolCall"]
  SETTABLEKS R132 R141 K192 ["streamText"]
  SETTABLEKS R133 R141 K193 ["startMessage"]
  SETTABLEKS R134 R141 K194 ["sendMessageDeltaAndStop"]
  SETTABLEKS R135 R141 K195 ["mockEventLoggerCall"]
  SETTABLEKS R136 R141 K196 ["clickTextWithin"]
  SETTABLEKS R41 R141 K197 ["getModelQualityWarning"]
  SETTABLEKS R42 R141 K198 ["setModelQuality"]
  SETTABLEKS R137 R141 K199 ["getSlashCommandMenu"]
  SETTABLEKS R138 R141 K200 ["getSlashCommandItems"]
  SETTABLEKS R139 R141 K201 ["setOptions"]
  SETTABLEKS R140 R141 K202 ["clickOptionWithDisplayName"]
  CLOSEUPVALS R0
  RETURN R141 1

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
  GETTABLEKS R30 R31 K43 ["createMockSettingsContext"]
  CALL R29 1 1
  GETIMPORT R30 K6 [require]
  GETTABLEKS R33 R0 K30 ["TestUtils"]
  GETTABLEKS R32 R33 K34 ["setup"]
  GETTABLEKS R31 R32 K44 ["createMockThreadIdContext"]
  CALL R30 1 1
  GETIMPORT R31 K6 [require]
  GETTABLEKS R33 R0 K30 ["TestUtils"]
  GETTABLEKS R32 R33 K45 ["isVisibleGuiObject"]
  CALL R31 1 1
  GETTABLEKS R32 R15 K46 ["createElement"]
  GETTABLEKS R34 R7 K47 ["TestHelpers"]
  GETTABLEKS R33 R34 K48 ["provideMockContext"]
  GETTABLEKS R35 R6 K49 ["Utility"]
  GETTABLEKS R34 R35 K50 ["mockComponent"]
  GETTABLEKS R35 R16 K51 ["act"]
  GETTABLEKS R36 R16 K52 ["fireEvent"]
  GETTABLEKS R37 R16 K53 ["waitFor"]
  GETTABLEKS R38 R16 K54 ["within"]
  GETTABLEKS R39 R9 K55 ["jest"]
  DUPCLOSURE R40 K56 [PROTO_138]
  CAPTURE VAL R29
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R30
  CAPTURE VAL R25
  CAPTURE VAL R24
  CAPTURE VAL R26
  CAPTURE VAL R27
  CAPTURE VAL R28
  CAPTURE VAL R32
  CAPTURE VAL R20
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R39
  CAPTURE VAL R19
  CAPTURE VAL R16
  CAPTURE VAL R33
  CAPTURE VAL R34
  CAPTURE VAL R17
  CAPTURE VAL R36
  CAPTURE VAL R5
  CAPTURE VAL R35
  CAPTURE VAL R38
  CAPTURE VAL R18
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R37
  CAPTURE VAL R31
  CAPTURE VAL R10
  RETURN R40 1
