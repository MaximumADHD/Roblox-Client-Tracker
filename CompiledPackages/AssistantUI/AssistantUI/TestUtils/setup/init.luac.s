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
  GETUPVAL R8 6
  SETTABLEKS R8 R7 K3 ["providers"]
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
  LOADK R2 K0 ["Assistant-ProviderCheckbox-%*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R3 0
  GETUPVAL R7 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K2 [+4]
  LOADK R7 K2 ["GUI root not available, ensure render is called"]
  GETIMPORT R5 K4 [assert]
  CALL R5 2 0
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLEKS R2 R3 K5 ["queryByTestId"]
  MOVE R3 R1
  CALL R2 1 1
  LOADK R6 K6 ["Provider checkbox not found for %* (testId: %*)"]
  MOVE R8 R0
  MOVE R9 R1
  NAMECALL R6 R6 K1 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  FASTCALL2 ASSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  RETURN R2 1

PROTO_97:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["click"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_98:
  LOADK R3 K0 ["Assistant-ProviderCheckbox-%*"]
  MOVE R5 R0
  NAMECALL R3 R3 K1 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  GETUPVAL R4 0
  GETUPVAL R8 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K2 [+4]
  LOADK R8 K2 ["GUI root not available, ensure render is called"]
  GETIMPORT R6 K4 [assert]
  CALL R6 2 0
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLEKS R3 R4 K5 ["queryByTestId"]
  MOVE R4 R2
  CALL R3 1 1
  LOADK R7 K6 ["Provider checkbox not found for %* (testId: %*)"]
  MOVE R9 R0
  MOVE R10 R2
  NAMECALL R7 R7 K1 ["format"]
  CALL R7 3 1
  MOVE R6 R7
  FASTCALL2 ASSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K4 [assert]
  CALL R4 2 0
  MOVE R1 R3
  GETUPVAL R2 2
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_99:
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
  GETTABLEKS R0 R1 K3 ["queryByTestId"]
  LOADK R1 K4 ["Assistant-ModelPickerDropdown"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K5 [+5]
  MOVE R2 R0
  LOADK R3 K5 ["Model picker dropdown not found"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  RETURN R0 1

PROTO_100:
  GETUPVAL R2 0
  GETUPVAL R6 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K0 [+4]
  LOADK R6 K0 ["GUI root not available, ensure render is called"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  GETUPVAL R3 1
  CALL R2 1 1
  GETTABLEKS R1 R2 K3 ["queryByTestId"]
  LOADK R2 K4 ["Assistant-ModelPickerDropdown"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K5 [+5]
  MOVE R3 R1
  LOADK R4 K5 ["Model picker dropdown not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  MOVE R0 R1
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K3 ["queryByTestId"]
  LOADK R2 K6 ["Assistant-ModelDropdown"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K7 [+5]
  MOVE R3 R1
  LOADK R4 K7 ["Model dropdown not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  NAMECALL R2 R1 K8 ["GetDescendants"]
  CALL R2 1 1
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  LOADK R10 K9 ["TextLabel"]
  NAMECALL R8 R7 K10 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+24]
  GETTABLEKS R8 R7 K11 ["Text"]
  JUMPIFNOT R8 [+21]
  FASTCALL1 STRING_LEN R8 [+3]
  MOVE R10 R8
  GETIMPORT R9 K14 [string.len]
  CALL R9 1 1
  LOADN R10 0
  JUMPIFNOTLT R10 R9 [+14]
  GETIMPORT R9 K16 [string.find]
  MOVE R10 R8
  LOADK R11 K17 ["chevron"]
  CALL R9 2 1
  JUMPIF R9 [+7]
  GETIMPORT R9 K16 [string.find]
  MOVE R10 R8
  LOADK R11 K18 ["icon"]
  CALL R9 2 1
  JUMPIF R9 [+1]
  RETURN R8 1
  FORGLOOP R3 2 [-30]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K19 ["DEFAULT_STUDIO_MODEL"]
  RETURN R3 1

PROTO_101:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["click"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_102:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["click"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_103:
  GETUPVAL R3 0
  GETUPVAL R7 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K0 [+4]
  LOADK R7 K0 ["GUI root not available, ensure render is called"]
  GETIMPORT R5 K2 [assert]
  CALL R5 2 0
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLEKS R2 R3 K3 ["queryByTestId"]
  LOADK R3 K4 ["Assistant-ModelPickerDropdown"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K5 [+5]
  MOVE R4 R2
  LOADK R5 K5 ["Model picker dropdown not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  MOVE R1 R2
  GETUPVAL R3 0
  MOVE R4 R1
  CALL R3 1 1
  GETTABLEKS R2 R3 K3 ["queryByTestId"]
  LOADK R3 K6 ["Assistant-ModelDropdown"]
  CALL R2 1 1
  FASTCALL2K ASSERT R2 K7 [+5]
  MOVE R4 R2
  LOADK R5 K7 ["Model dropdown not found"]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  LOADNIL R3
  NAMECALL R4 R2 K8 ["GetDescendants"]
  CALL R4 1 3
  FORGPREP R4
  LOADK R11 K9 ["ImageButton"]
  NAMECALL R9 R8 K10 ["IsA"]
  CALL R9 2 1
  JUMPIF R9 [+5]
  LOADK R11 K11 ["TextButton"]
  NAMECALL R9 R8 K10 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+2]
  MOVE R3 R8
  JUMP [+2]
  FORGLOOP R4 2 [-13]
  FASTCALL2K ASSERT R3 K12 [+5]
  MOVE R5 R3
  LOADK R6 K12 ["No clickable button found in dropdown"]
  GETIMPORT R4 K2 [assert]
  CALL R4 2 0
  GETUPVAL R4 2
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U3
  CAPTURE REF R3
  CALL R4 1 0
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
  GETTABLEKS R4 R5 K13 ["queryByText"]
  MOVE R5 R0
  DUPTABLE R6 K15 [{"exact"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K14 ["exact"]
  CALL R4 2 1
  LOADK R8 K16 ["Model option not found: %*"]
  MOVE R10 R0
  NAMECALL R8 R8 K17 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  FASTCALL2 ASSERT R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K2 [assert]
  CALL R5 2 0
  GETUPVAL R5 2
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  CALL R5 1 0
  CLOSEUPVALS R3
  RETURN R0 0

PROTO_104:
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
  LOADK R1 K4 ["Assistant-InputArea-ModelChip"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K5 [+5]
  MOVE R2 R0
  LOADK R3 K5 ["Model chip not found"]
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
  GETTABLEKS R1 R2 K3 ["queryByTestId"]
  LOADK R2 K4 ["Assistant-InputArea-ModelChip"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K5 [+5]
  MOVE R3 R1
  LOADK R4 K5 ["Model chip not found"]
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
  GETTABLEKS R1 R2 K3 ["queryByTestId"]
  LOADK R2 K4 ["Assistant-InputArea-ModelChip"]
  CALL R1 1 1
  FASTCALL2K ASSERT R1 K5 [+5]
  MOVE R3 R1
  LOADK R4 K5 ["Model chip not found"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  MOVE R0 R1
  NAMECALL R1 R0 K6 ["GetDescendants"]
  CALL R1 1 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  LOADK R9 K7 ["TextLabel"]
  NAMECALL R7 R6 K8 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+12]
  GETTABLEKS R7 R6 K9 ["Text"]
  JUMPIFNOT R7 [+9]
  FASTCALL1 STRING_LEN R7 [+3]
  MOVE R9 R7
  GETIMPORT R8 K12 [string.len]
  CALL R8 1 1
  LOADN R9 0
  JUMPIFNOTLT R9 R8 [+2]
  RETURN R7 1
  FORGLOOP R2 2 [-18]
  GETIMPORT R2 K14 [error]
  LOADK R3 K15 ["No text found in model chip"]
  CALL R2 1 0
  RETURN R0 0

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
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["click"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_117:
  LOADK R2 K0 ["Assistant-APIKey-EditButton-%*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R3 0
  GETUPVAL R7 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K2 [+4]
  LOADK R7 K2 ["GUI root not available, ensure render is called"]
  GETIMPORT R5 K4 [assert]
  CALL R5 2 0
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLEKS R2 R3 K5 ["queryByTestId"]
  MOVE R3 R1
  CALL R2 1 1
  LOADK R6 K6 ["Edit button not found for %* (testId: %*)"]
  MOVE R8 R0
  MOVE R9 R1
  NAMECALL R6 R6 K1 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  FASTCALL2 ASSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETUPVAL R3 2
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  CALL R3 1 0
  RETURN R0 0

PROTO_118:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["click"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_119:
  LOADK R2 K0 ["Assistant-APIKey-SaveButton-%*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R3 0
  GETUPVAL R7 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K2 [+4]
  LOADK R7 K2 ["GUI root not available, ensure render is called"]
  GETIMPORT R5 K4 [assert]
  CALL R5 2 0
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLEKS R2 R3 K5 ["queryByTestId"]
  MOVE R3 R1
  CALL R2 1 1
  LOADK R6 K6 ["Save button not found for %* (testId: %*)"]
  MOVE R8 R0
  MOVE R9 R1
  NAMECALL R6 R6 K1 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  FASTCALL2 ASSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETUPVAL R3 2
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  CALL R3 1 0
  RETURN R0 0

PROTO_120:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["click"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_121:
  LOADK R2 K0 ["Assistant-APIKey-CancelButton-%*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R3 0
  GETUPVAL R7 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K2 [+4]
  LOADK R7 K2 ["GUI root not available, ensure render is called"]
  GETIMPORT R5 K4 [assert]
  CALL R5 2 0
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLEKS R2 R3 K5 ["queryByTestId"]
  MOVE R3 R1
  CALL R2 1 1
  LOADK R6 K6 ["Cancel button not found for %* (testId: %*)"]
  MOVE R8 R0
  MOVE R9 R1
  NAMECALL R6 R6 K1 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  FASTCALL2 ASSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  GETUPVAL R3 2
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  CALL R3 1 0
  RETURN R0 0

PROTO_122:
  LOADK R2 K0 ["Assistant-APIKey-Input-%*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R3 0
  GETUPVAL R7 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K2 [+4]
  LOADK R7 K2 ["GUI root not available, ensure render is called"]
  GETIMPORT R5 K4 [assert]
  CALL R5 2 0
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLEKS R2 R3 K5 ["queryByTestId"]
  MOVE R3 R1
  CALL R2 1 1
  LOADK R6 K6 ["API Key input not found for %* (testId: %*)"]
  MOVE R8 R0
  MOVE R9 R1
  NAMECALL R6 R6 K1 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  FASTCALL2 ASSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  NAMECALL R3 R2 K7 ["GetDescendants"]
  CALL R3 1 3
  FORGPREP R3
  LOADK R10 K8 ["TextBox"]
  NAMECALL R8 R7 K9 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+3]
  GETTABLEKS R8 R7 K10 ["Text"]
  RETURN R8 1
  FORGLOOP R3 2 [-9]
  GETIMPORT R3 K12 [error]
  LOADK R5 K13 ["No TextBox found in API key input for %*"]
  MOVE R7 R0
  NAMECALL R5 R5 K1 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 0
  RETURN R0 0

PROTO_123:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["change"]
  GETUPVAL R1 1
  DUPTABLE R2 K2 [{"target"}]
  DUPTABLE R3 K4 [{"Text"}]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K3 ["Text"]
  SETTABLEKS R3 R2 K1 ["target"]
  CALL R0 2 0
  RETURN R0 0

PROTO_124:
  LOADK R3 K0 ["Assistant-APIKey-Input-%*"]
  MOVE R5 R0
  NAMECALL R3 R3 K1 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  GETUPVAL R4 0
  GETUPVAL R8 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K2 [+4]
  LOADK R8 K2 ["GUI root not available, ensure render is called"]
  GETIMPORT R6 K4 [assert]
  CALL R6 2 0
  GETUPVAL R5 1
  CALL R4 1 1
  GETTABLEKS R3 R4 K5 ["queryByTestId"]
  MOVE R4 R2
  CALL R3 1 1
  LOADK R7 K6 ["API Key input not found for %* (testId: %*)"]
  MOVE R9 R0
  MOVE R10 R2
  NAMECALL R7 R7 K1 ["format"]
  CALL R7 3 1
  MOVE R6 R7
  FASTCALL2 ASSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K4 [assert]
  CALL R4 2 0
  NAMECALL R4 R3 K7 ["GetDescendants"]
  CALL R4 1 3
  FORGPREP R4
  LOADK R11 K8 ["TextBox"]
  NAMECALL R9 R8 K9 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+7]
  GETUPVAL R9 2
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R8
  CAPTURE VAL R1
  CALL R9 1 0
  RETURN R0 0
  FORGLOOP R4 2 [-13]
  GETIMPORT R4 K11 [error]
  LOADK R6 K12 ["No TextBox found in API key input for %*"]
  MOVE R8 R0
  NAMECALL R6 R6 K1 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R4 1 0
  RETURN R0 0

PROTO_125:
  LOADK R2 K0 ["Assistant-APIKey-Display-%*"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R3 0
  GETUPVAL R7 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K2 [+4]
  LOADK R7 K2 ["GUI root not available, ensure render is called"]
  GETIMPORT R5 K4 [assert]
  CALL R5 2 0
  GETUPVAL R4 1
  CALL R3 1 1
  GETTABLEKS R2 R3 K5 ["queryByTestId"]
  MOVE R3 R1
  CALL R2 1 1
  LOADK R6 K6 ["Displayed API key not found for %* (testId: %*)"]
  MOVE R8 R0
  MOVE R9 R1
  NAMECALL R6 R6 K1 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  FASTCALL2 ASSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  LOADK R5 K7 ["TextLabel"]
  NAMECALL R3 R2 K8 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R3 R2 K9 ["Text"]
  RETURN R3 1
  GETIMPORT R3 K11 [error]
  LOADK R5 K12 ["Displayed API key element is not a TextLabel for %*"]
  MOVE R7 R0
  NAMECALL R5 R5 K1 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 0
  RETURN R0 0

PROTO_126:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["get"]
  CALL R1 0 1
  GETTABLEKS R2 R1 K1 ["getSecureSettingsAsync"]
  LOADK R3 K2 ["ProviderKeys"]
  CALL R2 1 1
  GETTABLE R3 R2 R0
  RETURN R3 1

PROTO_127:
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

PROTO_128:
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

PROTO_129:
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

PROTO_130:
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

PROTO_131:
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

PROTO_132:
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

PROTO_133:
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

PROTO_134:
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

PROTO_135:
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

PROTO_136:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getProcessEvent"]
  CALL R0 0 1
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_137:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_138:
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

PROTO_139:
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

PROTO_140:
  DUPTABLE R0 K1 [{"type"}]
  LOADK R1 K2 ["message_start"]
  SETTABLEKS R1 R0 K0 ["type"]
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_141:
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

PROTO_142:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["spyOn"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["get"]
  CALL R3 0 1
  GETTABLEKS R2 R3 K2 ["EventLogger"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_143:
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

PROTO_144:
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

PROTO_145:
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

PROTO_146:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setOptions"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_147:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_148:
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

PROTO_149:
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
  DUPTABLE R20 K15 [{"SettingsContext", "ConversationProvider", "ConversationIdContext", "InputStateContext", "ThreadIdContext", "McpClientContext", "LLMPackageContext", "ModelQualityContext", "PopoutWidgetContext", "OptionsContext", "WindowInputContext", "LLMProviderSelectionContext"}]
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
  GETTABLEKS R22 R23 K16 ["StandardProvider"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K13 ["WindowInputContext"]
  GETUPVAL R21 10
  GETUPVAL R23 12
  GETTABLEKS R22 R23 K17 ["Provider"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K14 ["LLMProviderSelectionContext"]
  GETUPVAL R22 13
  GETTABLEKS R21 R22 K18 ["join"]
  MOVE R22 R20
  GETTABLEKS R23 R0 K19 ["overrideProviders"]
  JUMPIF R23 [+2]
  NEWTABLE R23 0 0
  CALL R21 2 1
  GETUPVAL R23 14
  GETTABLEKS R22 R23 K20 ["get"]
  CALL R22 0 1
  NEWTABLE R23 0 0
  NEWCLOSURE R24 P0
  CAPTURE VAL R23
  SETTABLEKS R24 R22 K21 ["copyToClipboard"]
  GETIMPORT R24 K24 [table.clone]
  GETUPVAL R25 15
  CALL R24 1 1
  SETTABLEKS R24 R22 K25 ["EventLogger"]
  DUPCLOSURE R24 K26 [PROTO_1]
  SETTABLEKS R24 R22 K27 ["convertImageDataToTempIdAsync"]
  GETUPVAL R25 16
  GETTABLEKS R24 R25 K28 ["fn"]
  CALL R24 0 1
  SETTABLEKS R24 R22 K29 ["releaseTempIdAsync"]
  NEWTABLE R24 1 0
  GETUPVAL R26 17
  GETTABLEKS R25 R26 K30 ["CLAUDE_API_KEY"]
  LOADK R26 K31 ["initial-test-api-key"]
  SETTABLE R26 R24 R25
  NEWCLOSURE R25 P2
  CAPTURE REF R24
  SETTABLEKS R25 R22 K32 ["getSecureSettingsAsync"]
  NEWCLOSURE R25 P3
  CAPTURE REF R24
  SETTABLEKS R25 R22 K33 ["setSecureSettingsAsync"]
  GETTABLEKS R25 R0 K34 ["overrideEnvironment"]
  JUMPIFNOT R25 [+8]
  GETTABLEKS R25 R0 K34 ["overrideEnvironment"]
  LOADNIL R26
  LOADNIL R27
  FORGPREP R25
  SETTABLE R29 R22 R28
  FORGLOOP R25 2 [-2]
  GETUPVAL R26 14
  GETTABLEKS R25 R26 K35 ["set"]
  MOVE R26 R22
  CALL R25 1 0
  NEWCLOSURE R25 P4
  CAPTURE VAL R23
  GETUPVAL R27 13
  GETTABLEKS R26 R27 K36 ["values"]
  MOVE R27 R21
  CALL R26 1 1
  GETTABLEKS R27 R0 K37 ["orderedOverrideProviders"]
  JUMPIFNOT R27 [+14]
  GETTABLEKS R27 R0 K37 ["orderedOverrideProviders"]
  LOADNIL R28
  LOADNIL R29
  FORGPREP R27
  FASTCALL2 TABLE_INSERT R26 R31 [+5]
  MOVE R33 R26
  MOVE R34 R31
  GETIMPORT R32 K39 [table.insert]
  CALL R32 2 0
  FORGLOOP R27 2 [-8]
  LOADNIL R27
  LOADNIL R28
  NEWCLOSURE R29 P5
  CAPTURE UPVAL U18
  CAPTURE UPVAL U19
  CAPTURE REF R0
  CAPTURE UPVAL U20
  CAPTURE UPVAL U10
  CAPTURE UPVAL U21
  CAPTURE VAL R26
  CAPTURE REF R27
  CAPTURE REF R28
  DUPCLOSURE R30 K40 [PROTO_6]
  CAPTURE UPVAL U22
  DUPCLOSURE R31 K41 [PROTO_9]
  CAPTURE UPVAL U23
  CAPTURE UPVAL U24
  NEWCLOSURE R32 P8
  CAPTURE REF R27
  NEWCLOSURE R33 P9
  CAPTURE REF R28
  NEWCLOSURE R34 P10
  CAPTURE UPVAL U25
  CAPTURE REF R27
  NEWCLOSURE R35 P11
  CAPTURE UPVAL U25
  CAPTURE REF R27
  NEWCLOSURE R36 P12
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U26
  NEWCLOSURE R37 P13
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U26
  NEWCLOSURE R38 P14
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U26
  NEWCLOSURE R39 P15
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U26
  NEWCLOSURE R40 P16
  CAPTURE UPVAL U26
  CAPTURE REF R27
  NEWCLOSURE R41 P17
  CAPTURE REF R27
  CAPTURE UPVAL U25
  NEWCLOSURE R42 P18
  CAPTURE UPVAL U25
  CAPTURE REF R27
  NEWCLOSURE R43 P19
  CAPTURE UPVAL U24
  CAPTURE VAL R15
  NEWCLOSURE R44 P20
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U24
  NEWCLOSURE R45 P21
  CAPTURE UPVAL U22
  CAPTURE UPVAL U25
  CAPTURE REF R27
  NEWCLOSURE R46 P22
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U24
  NEWCLOSURE R47 P23
  CAPTURE UPVAL U25
  CAPTURE REF R27
  DUPCLOSURE R48 K42 [PROTO_33]
  CAPTURE UPVAL U18
  NEWCLOSURE R49 P25
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U22
  NEWCLOSURE R50 P26
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U22
  NEWCLOSURE R51 P27
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U24
  CAPTURE VAL R45
  CAPTURE VAL R50
  NEWCLOSURE R52 P28
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U22
  DUPCLOSURE R53 K43 [PROTO_38]
  CAPTURE UPVAL U22
  NEWCLOSURE R54 P30
  CAPTURE UPVAL U25
  CAPTURE REF R27
  NEWCLOSURE R55 P31
  CAPTURE VAL R40
  CAPTURE UPVAL U25
  NEWCLOSURE R56 P32
  CAPTURE VAL R40
  NEWCLOSURE R57 P33
  CAPTURE UPVAL U25
  CAPTURE REF R27
  DUPCLOSURE R58 K44 [PROTO_43]
  DUPCLOSURE R59 K45 [PROTO_44]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R60 K46 [PROTO_45]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R61 K47 [PROTO_46]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R62 K48 [PROTO_47]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R63 K49 [PROTO_48]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R64 K50 [PROTO_49]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R65 K51 [PROTO_50]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R66 K52 [PROTO_51]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R67 K53 [PROTO_52]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R68 K54 [PROTO_53]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R69 K55 [PROTO_54]
  CAPTURE UPVAL U25
  DUPCLOSURE R70 K56 [PROTO_55]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R71 K57 [PROTO_56]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R72 K58 [PROTO_57]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R73 K59 [PROTO_59]
  CAPTURE UPVAL U16
  CAPTURE UPVAL U27
  DUPCLOSURE R74 K60 [PROTO_60]
  CAPTURE UPVAL U25
  DUPCLOSURE R75 K61 [PROTO_61]
  DUPCLOSURE R76 K62 [PROTO_62]
  DUPCLOSURE R77 K63 [PROTO_63]
  CAPTURE UPVAL U25
  CAPTURE VAL R76
  DUPCLOSURE R78 K64 [PROTO_64]
  CAPTURE VAL R75
  CAPTURE VAL R76
  CAPTURE UPVAL U22
  DUPCLOSURE R79 K65 [PROTO_65]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R80 K66 [PROTO_66]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R81 K67 [PROTO_67]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R82 K68 [PROTO_68]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R83 K69 [PROTO_69]
  CAPTURE UPVAL U25
  DUPCLOSURE R84 K70 [PROTO_70]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R85 K71 [PROTO_71]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R86 K72 [PROTO_72]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R87 K73 [PROTO_73]
  CAPTURE UPVAL U25
  DUPCLOSURE R88 K74 [PROTO_74]
  CAPTURE UPVAL U25
  NEWCLOSURE R89 P65
  CAPTURE VAL R3
  CAPTURE UPVAL U24
  NEWCLOSURE R90 P66
  CAPTURE VAL R5
  CAPTURE UPVAL U24
  NEWCLOSURE R91 P67
  CAPTURE VAL R9
  CAPTURE UPVAL U24
  NEWCLOSURE R92 P68
  CAPTURE UPVAL U28
  CAPTURE VAL R3
  CAPTURE UPVAL U24
  CAPTURE VAL R5
  CAPTURE VAL R9
  NEWCLOSURE R93 P69
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U22
  NEWCLOSURE R94 P70
  CAPTURE UPVAL U25
  CAPTURE REF R28
  NEWCLOSURE R95 P71
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U22
  CAPTURE REF R28
  NEWCLOSURE R96 P72
  CAPTURE VAL R11
  NEWCLOSURE R97 P73
  CAPTURE VAL R11
  NEWCLOSURE R98 P74
  CAPTURE VAL R11
  NEWCLOSURE R99 P75
  CAPTURE VAL R13
  NEWCLOSURE R100 P76
  CAPTURE VAL R13
  NEWCLOSURE R101 P77
  CAPTURE UPVAL U24
  CAPTURE VAL R7
  CAPTURE UPVAL U29
  CAPTURE UPVAL U30
  CAPTURE VAL R38
  NEWCLOSURE R102 P78
  CAPTURE UPVAL U24
  CAPTURE VAL R7
  NEWCLOSURE R103 P79
  CAPTURE UPVAL U25
  CAPTURE REF R28
  NEWCLOSURE R104 P80
  CAPTURE UPVAL U25
  CAPTURE REF R28
  CAPTURE UPVAL U24
  CAPTURE UPVAL U22
  NEWCLOSURE R105 P81
  CAPTURE UPVAL U25
  CAPTURE REF R28
  NEWCLOSURE R106 P82
  CAPTURE UPVAL U25
  CAPTURE REF R28
  CAPTURE UPVAL U17
  NEWCLOSURE R107 P83
  CAPTURE UPVAL U25
  CAPTURE REF R28
  CAPTURE UPVAL U24
  CAPTURE UPVAL U22
  NEWCLOSURE R108 P84
  CAPTURE UPVAL U25
  CAPTURE REF R27
  NEWCLOSURE R109 P85
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U24
  CAPTURE UPVAL U22
  NEWCLOSURE R110 P86
  CAPTURE UPVAL U25
  CAPTURE REF R27
  NEWCLOSURE R111 P87
  CAPTURE UPVAL U25
  CAPTURE REF R27
  NEWCLOSURE R112 P88
  CAPTURE UPVAL U25
  CAPTURE REF R27
  NEWCLOSURE R113 P89
  CAPTURE UPVAL U25
  CAPTURE REF R27
  DUPCLOSURE R114 K75 [PROTO_111]
  CAPTURE UPVAL U26
  NEWCLOSURE R115 P91
  CAPTURE UPVAL U25
  CAPTURE REF R27
  CAPTURE UPVAL U22
  NEWCLOSURE R116 P92
  CAPTURE UPVAL U26
  CAPTURE REF R28
  NEWCLOSURE R117 P93
  CAPTURE UPVAL U26
  CAPTURE REF R28
  NEWCLOSURE R118 P94
  CAPTURE UPVAL U26
  CAPTURE REF R28
  NEWCLOSURE R119 P95
  CAPTURE UPVAL U25
  CAPTURE REF R28
  CAPTURE UPVAL U24
  CAPTURE UPVAL U22
  NEWCLOSURE R120 P96
  CAPTURE UPVAL U25
  CAPTURE REF R28
  CAPTURE UPVAL U24
  CAPTURE UPVAL U22
  NEWCLOSURE R121 P97
  CAPTURE UPVAL U25
  CAPTURE REF R28
  CAPTURE UPVAL U24
  CAPTURE UPVAL U22
  NEWCLOSURE R122 P98
  CAPTURE UPVAL U25
  CAPTURE REF R28
  NEWCLOSURE R123 P99
  CAPTURE UPVAL U25
  CAPTURE REF R28
  CAPTURE UPVAL U24
  CAPTURE UPVAL U22
  NEWCLOSURE R124 P100
  CAPTURE UPVAL U25
  CAPTURE REF R28
  DUPCLOSURE R125 K76 [PROTO_126]
  CAPTURE UPVAL U14
  DUPCLOSURE R126 K77 [PROTO_127]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R127 K78 [PROTO_128]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U26
  DUPCLOSURE R128 K79 [PROTO_129]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  NEWCLOSURE R129 P105
  CAPTURE UPVAL U26
  CAPTURE REF R28
  CAPTURE UPVAL U31
  DUPCLOSURE R130 K80 [PROTO_131]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R131 K81 [PROTO_132]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R132 K82 [PROTO_133]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R133 K83 [PROTO_134]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  DUPCLOSURE R134 K84 [PROTO_135]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  NEWCLOSURE R135 P111
  CAPTURE UPVAL U24
  CAPTURE VAL R13
  NEWCLOSURE R136 P112
  CAPTURE UPVAL U24
  CAPTURE VAL R13
  NEWCLOSURE R137 P113
  CAPTURE UPVAL U24
  CAPTURE VAL R13
  NEWCLOSURE R138 P114
  CAPTURE UPVAL U24
  CAPTURE VAL R13
  NEWCLOSURE R139 P115
  CAPTURE UPVAL U24
  CAPTURE VAL R13
  DUPCLOSURE R140 K85 [PROTO_142]
  CAPTURE UPVAL U16
  CAPTURE UPVAL U14
  DUPCLOSURE R141 K86 [PROTO_143]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U22
  NEWCLOSURE R142 P118
  CAPTURE UPVAL U25
  CAPTURE REF R28
  DUPCLOSURE R143 K87 [PROTO_145]
  CAPTURE UPVAL U25
  NEWCLOSURE R144 P120
  CAPTURE UPVAL U24
  CAPTURE VAL R17
  DUPCLOSURE R145 K88 [PROTO_148]
  CAPTURE UPVAL U25
  CAPTURE UPVAL U26
  CAPTURE UPVAL U22
  MOVE R146 R29
  GETUPVAL R147 10
  LOADK R148 K89 ["Frame"]
  DUPTABLE R149 K91 [{"Size"}]
  GETIMPORT R150 K94 [UDim2.fromScale]
  LOADN R151 1
  LOADN R152 1
  CALL R150 2 1
  SETTABLEKS R150 R149 K90 ["Size"]
  DUPTABLE R150 K97 [{"UIListLayout", "MainView"}]
  GETUPVAL R151 10
  LOADK R152 K95 ["UIListLayout"]
  DUPTABLE R153 K99 [{"FillDirection"}]
  GETIMPORT R154 K102 [Enum.FillDirection.Vertical]
  SETTABLEKS R154 R153 K98 ["FillDirection"]
  CALL R151 2 1
  SETTABLEKS R151 R150 K95 ["UIListLayout"]
  GETUPVAL R151 10
  GETUPVAL R152 32
  CALL R151 1 1
  SETTABLEKS R151 R150 K96 ["MainView"]
  CALL R147 3 -1
  CALL R146 -1 0
  NEWTABLE R146 128 0
  SETTABLEKS R29 R146 K103 ["render"]
  SETTABLEKS R30 R146 K104 ["typeText"]
  SETTABLEKS R31 R146 K105 ["getCurrentConversationThread"]
  SETTABLEKS R32 R146 K106 ["getContainer"]
  SETTABLEKS R35 R146 K107 ["getTextBox"]
  SETTABLEKS R36 R146 K108 ["getMessageScrollArea"]
  SETTABLEKS R37 R146 K109 ["getContainingMessageWidget"]
  SETTABLEKS R38 R146 K110 ["getContainingContentWidget"]
  SETTABLEKS R39 R146 K111 ["getMessageActionsWidget"]
  SETTABLEKS R41 R146 K112 ["getTextObjectWithMessage"]
  SETTABLEKS R25 R146 K113 ["getClipboardTextAtIndex"]
  SETTABLEKS R44 R146 K114 ["focusTextBox"]
  SETTABLEKS R45 R146 K115 ["setInputText"]
  SETTABLEKS R46 R146 K116 ["setCursorPosition"]
  SETTABLEKS R47 R146 K117 ["getInputScrollArea"]
  SETTABLEKS R48 R146 K118 ["printScreen"]
  SETTABLEKS R49 R146 K119 ["clickStopGenerationButton"]
  SETTABLEKS R50 R146 K120 ["enterTextBox"]
  SETTABLEKS R51 R146 K121 ["enterUserMessage"]
  SETTABLEKS R52 R146 K122 ["pressKeyInInput"]
  SETTABLEKS R53 R146 K123 ["setKeyDown"]
  SETTABLEKS R54 R146 K124 ["isInputEnabled"]
  SETTABLEKS R55 R146 K125 ["lastUserTextMatches"]
  SETTABLEKS R56 R146 K126 ["getMessageCount"]
  SETTABLEKS R57 R146 K127 ["isResponding"]
  SETTABLEKS R101 R146 K128 ["setExternalInputOverride"]
  SETTABLEKS R102 R146 K129 ["clearExternalInputOverride"]
  SETTABLEKS R93 R146 K130 ["clickSettingsButton"]
  SETTABLEKS R94 R146 K131 ["getSettingsContent"]
  SETTABLEKS R103 R146 K132 ["getProviderCheckbox"]
  SETTABLEKS R104 R146 K133 ["clickProviderCheckbox"]
  SETTABLEKS R105 R146 K134 ["getModelPickerDropdown"]
  SETTABLEKS R106 R146 K135 ["getSelectedModelFromPicker"]
  SETTABLEKS R107 R146 K136 ["selectModelFromPicker"]
  SETTABLEKS R108 R146 K137 ["getModelChip"]
  SETTABLEKS R109 R146 K138 ["clickModelChip"]
  SETTABLEKS R110 R146 K139 ["getSelectedModelFromChip"]
  SETTABLEKS R119 R146 K140 ["clickEditAPIKeyButton"]
  SETTABLEKS R120 R146 K141 ["clickSaveAPIKeyButton"]
  SETTABLEKS R121 R146 K142 ["clickCancelAPIKeyButton"]
  SETTABLEKS R122 R146 K143 ["getAPIKeyInputText"]
  SETTABLEKS R123 R146 K144 ["setAPIKeyInputText"]
  SETTABLEKS R124 R146 K145 ["getDisplayedAPIKey"]
  SETTABLEKS R125 R146 K146 ["getAPIKeySetting"]
  SETTABLEKS R112 R146 K147 ["hasFooterText"]
  SETTABLEKS R113 R146 K148 ["hasFooterIcon"]
  SETTABLEKS R114 R146 K149 ["getToolMenuView"]
  SETTABLEKS R115 R146 K150 ["clickServerManagementButton"]
  SETTABLEKS R116 R146 K151 ["getManageIntegrationsDialog"]
  SETTABLEKS R117 R146 K152 ["getIntegrationItemDialog"]
  SETTABLEKS R118 R146 K153 ["getIntegrationMenuEmptyState"]
  SETTABLEKS R127 R146 K154 ["getIntegrationItemForLabel"]
  SETTABLEKS R126 R146 K155 ["clickIntegrationItemActionsToggle"]
  SETTABLEKS R128 R146 K156 ["clickIntegrationItemActionsOverflowButton"]
  SETTABLEKS R129 R146 K157 ["getIntegrationItemActionsOverflowContent"]
  SETTABLEKS R73 R146 K158 ["throwMarkdownParserError"]
  SETTABLEKS R74 R146 K159 ["getCarousel"]
  SETTABLEKS R75 R146 K160 ["getCarouselItem"]
  SETTABLEKS R77 R146 K161 ["getSelectedCarouselItem"]
  SETTABLEKS R78 R146 K162 ["clickCarouselItem"]
  SETTABLEKS R130 R146 K163 ["clickAlertCloseButton"]
  SETTABLEKS R131 R146 K164 ["clickAlertContinueButton"]
  SETTABLEKS R132 R146 K165 ["clickToolConfirmationAcceptButton"]
  SETTABLEKS R133 R146 K166 ["clickToolConfirmationRejectButton"]
  SETTABLEKS R134 R146 K167 ["clickToolConfirmationAlwaysAcceptButton"]
  SETTABLEKS R59 R146 K168 ["clickRunCodeExpandButton"]
  SETTABLEKS R79 R146 K169 ["clickCopyButton"]
  SETTABLEKS R80 R146 K170 ["clickRunButton"]
  SETTABLEKS R81 R146 K171 ["clickStopButton"]
  SETTABLEKS R82 R146 K172 ["clickImageExpandButton"]
  SETTABLEKS R83 R146 K173 ["getImageContentImage"]
  SETTABLEKS R60 R146 K174 ["clickAssetVariationExpandButton"]
  SETTABLEKS R61 R146 K175 ["clickMaterialGenExpandButton"]
  SETTABLEKS R62 R146 K176 ["clickMaterialGenStudsPerTileValueBar"]
  SETTABLEKS R63 R146 K177 ["clickMaterialGenOrganicPatternToggle"]
  SETTABLEKS R64 R146 K178 ["clickMeshGenExpandButton"]
  SETTABLEKS R65 R146 K179 ["clickMeshGenRegenerateButton"]
  SETTABLEKS R66 R146 K180 ["clickMeshGenCancelGenerationButton"]
  SETTABLEKS R67 R146 K181 ["clickMeshGenPublishButton"]
  SETTABLEKS R68 R146 K182 ["clickMeshGenInsertButton"]
  SETTABLEKS R69 R146 K183 ["getMeshGenPreviewImage"]
  SETTABLEKS R70 R146 K184 ["clickMeshGenLastPreviewButton"]
  SETTABLEKS R71 R146 K185 ["clickMeshGenNextPreviewButton"]
  SETTABLEKS R72 R146 K186 ["clickMeshGenSelectionToggle"]
  SETTABLEKS R84 R146 K187 ["clickRetryButton"]
  SETTABLEKS R85 R146 K188 ["clickThumbsUpButton"]
  SETTABLEKS R86 R146 K189 ["clickThumbsDownButton"]
  SETTABLEKS R87 R146 K190 ["getThumbsUpButtonIcon"]
  SETTABLEKS R88 R146 K191 ["getThumbsDownButtonIcon"]
  SETTABLEKS R89 R146 K192 ["addConversation"]
  SETTABLEKS R90 R146 K193 ["setConversationId"]
  SETTABLEKS R91 R146 K194 ["setThreadId"]
  SETTABLEKS R92 R146 K195 ["applyConversation"]
  SETTABLEKS R95 R146 K196 ["clearConversation"]
  SETTABLEKS R96 R146 K197 ["wasToolInvoked"]
  SETTABLEKS R97 R146 K198 ["overrideMethodWithError"]
  SETTABLEKS R99 R146 K199 ["wasRequestHandlerCalled"]
  SETTABLEKS R100 R146 K200 ["getLastRequestField"]
  SETTABLEKS R98 R146 K201 ["getClientStatusForIdentifier"]
  SETTABLEKS R135 R146 K202 ["streamEvent"]
  SETTABLEKS R136 R146 K203 ["addToolCall"]
  SETTABLEKS R137 R146 K204 ["streamText"]
  SETTABLEKS R138 R146 K205 ["startMessage"]
  SETTABLEKS R139 R146 K206 ["sendMessageDeltaAndStop"]
  SETTABLEKS R140 R146 K207 ["mockEventLoggerCall"]
  SETTABLEKS R141 R146 K208 ["clickTextWithin"]
  SETTABLEKS R42 R146 K209 ["getModelQualityWarning"]
  SETTABLEKS R43 R146 K210 ["setModelQuality"]
  SETTABLEKS R142 R146 K211 ["getSlashCommandMenu"]
  SETTABLEKS R143 R146 K212 ["getSlashCommandItems"]
  SETTABLEKS R144 R146 K213 ["setOptions"]
  SETTABLEKS R145 R146 K214 ["clickOptionWithDisplayName"]
  CLOSEUPVALS R0
  RETURN R146 1

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
  GETTABLEKS R13 R0 K16 ["Components"]
  GETTABLEKS R12 R13 K17 ["Contexts"]
  GETTABLEKS R11 R12 K21 ["LLMProviderSelectionContext"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R0 K16 ["Components"]
  GETTABLEKS R12 R13 K22 ["MainView"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R0 K23 ["Util"]
  GETTABLEKS R13 R14 K24 ["MessageLayoutOrder"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R0 K13 ["Parent"]
  GETTABLEKS R14 R15 K25 ["ModelContextProtocol"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R17 R0 K16 ["Components"]
  GETTABLEKS R16 R17 K17 ["Contexts"]
  GETTABLEKS R15 R16 K26 ["ModelQualityContext"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R18 R0 K16 ["Components"]
  GETTABLEKS R17 R18 K17 ["Contexts"]
  GETTABLEKS R16 R17 K27 ["OptionsContext"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R18 R0 K13 ["Parent"]
  GETTABLEKS R17 R18 K28 ["React"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R19 R1 K19 ["Dev"]
  GETTABLEKS R18 R19 K29 ["ReactTestingLibrary"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R20 R0 K13 ["Parent"]
  GETTABLEKS R19 R20 K30 ["ReactUtils"]
  CALL R18 1 1
  GETIMPORT R19 K6 [require]
  GETTABLEKS R21 R0 K31 ["TestUtils"]
  GETTABLEKS R20 R21 K32 ["TagSearch"]
  CALL R19 1 1
  GETIMPORT R20 K6 [require]
  GETTABLEKS R21 R0 K33 ["Types"]
  CALL R20 1 1
  GETIMPORT R21 K6 [require]
  GETTABLEKS R24 R0 K16 ["Components"]
  GETTABLEKS R23 R24 K17 ["Contexts"]
  GETTABLEKS R22 R23 K34 ["WindowInputContext"]
  CALL R21 1 1
  GETIMPORT R22 K6 [require]
  GETTABLEKS R25 R0 K31 ["TestUtils"]
  GETTABLEKS R24 R25 K35 ["setup"]
  GETTABLEKS R23 R24 K36 ["createMockConversationContext"]
  CALL R22 1 1
  GETIMPORT R23 K6 [require]
  GETTABLEKS R26 R0 K31 ["TestUtils"]
  GETTABLEKS R25 R26 K35 ["setup"]
  GETTABLEKS R24 R25 K37 ["createMockConversationIdContext"]
  CALL R23 1 1
  GETIMPORT R24 K6 [require]
  GETTABLEKS R27 R0 K31 ["TestUtils"]
  GETTABLEKS R26 R27 K35 ["setup"]
  GETTABLEKS R25 R26 K38 ["createMockInputStateContext"]
  CALL R24 1 1
  GETIMPORT R25 K6 [require]
  GETTABLEKS R28 R0 K31 ["TestUtils"]
  GETTABLEKS R27 R28 K35 ["setup"]
  GETTABLEKS R26 R27 K39 ["createMockLLMPackageContext"]
  CALL R25 1 1
  GETIMPORT R26 K6 [require]
  GETTABLEKS R29 R0 K31 ["TestUtils"]
  GETTABLEKS R28 R29 K35 ["setup"]
  GETTABLEKS R27 R28 K40 ["createMockMcpClientContext"]
  CALL R26 1 1
  GETIMPORT R27 K6 [require]
  GETTABLEKS R30 R0 K31 ["TestUtils"]
  GETTABLEKS R29 R30 K35 ["setup"]
  GETTABLEKS R28 R29 K41 ["createMockModelQualityContext"]
  CALL R27 1 1
  GETIMPORT R28 K6 [require]
  GETTABLEKS R31 R0 K31 ["TestUtils"]
  GETTABLEKS R30 R31 K35 ["setup"]
  GETTABLEKS R29 R30 K42 ["createMockOptionsContext"]
  CALL R28 1 1
  GETIMPORT R29 K6 [require]
  GETTABLEKS R32 R0 K31 ["TestUtils"]
  GETTABLEKS R31 R32 K35 ["setup"]
  GETTABLEKS R30 R31 K43 ["createMockPopoutWidgetContext"]
  CALL R29 1 1
  GETIMPORT R30 K6 [require]
  GETTABLEKS R33 R0 K31 ["TestUtils"]
  GETTABLEKS R32 R33 K35 ["setup"]
  GETTABLEKS R31 R32 K44 ["createMockSettingsContext"]
  CALL R30 1 1
  GETIMPORT R31 K6 [require]
  GETTABLEKS R34 R0 K31 ["TestUtils"]
  GETTABLEKS R33 R34 K35 ["setup"]
  GETTABLEKS R32 R33 K45 ["createMockThreadIdContext"]
  CALL R31 1 1
  GETIMPORT R32 K6 [require]
  GETTABLEKS R34 R0 K31 ["TestUtils"]
  GETTABLEKS R33 R34 K46 ["isVisibleGuiObject"]
  CALL R32 1 1
  GETTABLEKS R33 R16 K47 ["createElement"]
  GETTABLEKS R35 R7 K48 ["TestHelpers"]
  GETTABLEKS R34 R35 K49 ["provideMockContext"]
  GETTABLEKS R36 R6 K50 ["Utility"]
  GETTABLEKS R35 R36 K51 ["mockComponent"]
  GETTABLEKS R36 R17 K52 ["act"]
  GETTABLEKS R37 R17 K53 ["fireEvent"]
  GETTABLEKS R38 R17 K54 ["waitFor"]
  GETTABLEKS R39 R17 K55 ["within"]
  GETTABLEKS R40 R9 K56 ["jest"]
  DUPCLOSURE R41 K57 [PROTO_149]
  CAPTURE VAL R30
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R31
  CAPTURE VAL R26
  CAPTURE VAL R25
  CAPTURE VAL R27
  CAPTURE VAL R28
  CAPTURE VAL R29
  CAPTURE VAL R33
  CAPTURE VAL R21
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R40
  CAPTURE VAL R20
  CAPTURE VAL R17
  CAPTURE VAL R34
  CAPTURE VAL R35
  CAPTURE VAL R18
  CAPTURE VAL R37
  CAPTURE VAL R5
  CAPTURE VAL R36
  CAPTURE VAL R39
  CAPTURE VAL R19
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R38
  CAPTURE VAL R32
  CAPTURE VAL R11
  RETURN R41 1
