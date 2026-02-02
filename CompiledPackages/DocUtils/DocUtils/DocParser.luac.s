PROTO_0:
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Source"]
  RETURN R0 1

PROTO_1:
  DUPTABLE R3 K2 [{"name", "script"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K0 ["name"]
  LOADNIL R4
  SETTABLEKS R4 R3 K1 ["script"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K4 [setmetatable]
  CALL R2 2 1
  GETTABLEKS R3 R1 K5 ["Name"]
  LOADK R5 K6 ["(%w+)%.story"]
  NAMECALL R3 R3 K7 ["match"]
  CALL R3 2 1
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIF R4 [+2]
  GETTABLEKS R3 R1 K5 ["Name"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K8 [+4]
  LOADK R7 K8 ["Component name cannot be nil in this codepath"]
  GETIMPORT R5 K10 [assert]
  CALL R5 2 0
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K12 [tostring]
  CALL R5 1 1
  SETTABLEKS R5 R2 K0 ["name"]
  JUMPIFNOT R4 [+95]
  GETUPVAL R5 1
  JUMPIF R5 [+1]
  RETURN R2 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K13 ["findFileInstanceForImport"]
  MOVE R6 R1
  MOVE R7 R3
  CALL R5 2 1
  JUMPIFNOTEQKNIL R5 [+24]
  GETTABLEKS R8 R1 K14 ["Parent"]
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K15 [+4]
  LOADK R8 K15 ["Story file cannot be orphaned"]
  GETIMPORT R6 K10 [assert]
  CALL R6 2 0
  GETTABLEKS R6 R1 K14 ["Parent"]
  GETTABLEKS R3 R6 K5 ["Name"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K13 ["findFileInstanceForImport"]
  MOVE R7 R1
  MOVE R8 R3
  CALL R6 2 1
  MOVE R5 R6
  JUMPIFNOTEQKNIL R5 [+9]
  GETIMPORT R6 K17 [print]
  LOADK R8 K18 ["😞 Unable to find component file associated with "]
  GETTABLEKS R9 R1 K5 ["Name"]
  CONCAT R7 R8 R9
  CALL R6 1 0
  RETURN R2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K19 ["_type"]
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K20 ["table"] [+12]
  GETIMPORT R6 K17 [print]
  LOADK R8 K21 ["🪑 Found table "]
  GETTABLEKS R9 R5 K5 ["Name"]
  LOADK R10 K22 [" instead of instance for "]
  GETTABLEKS R11 R1 K5 ["Name"]
  CONCAT R7 R8 R11
  CALL R6 1 0
  RETURN R2 1
  LOADK R8 K23 ["Folder"]
  NAMECALL R6 R5 K24 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+20]
  MOVE R8 R3
  NAMECALL R6 R5 K25 ["FindFirstChild"]
  CALL R6 2 1
  JUMPIFNOTEQKNIL R6 [+14]
  GETIMPORT R7 K17 [print]
  LOADK R9 K26 ["📁 Found folder "]
  NAMECALL R13 R5 K27 ["GetFullName"]
  CALL R13 1 1
  MOVE R10 R13
  LOADK R11 K22 [" instead of instance for "]
  GETTABLEKS R12 R1 K5 ["Name"]
  CONCAT R8 R9 R12
  CALL R7 1 0
  JUMP [+1]
  MOVE R5 R6
  LOADK R8 K28 ["ModuleScript"]
  NAMECALL R6 R5 K24 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+5]
  SETTABLEKS R5 R2 K1 ["script"]
  RETURN R2 1
  SETTABLEKS R1 R2 K1 ["script"]
  RETURN R2 1

PROTO_2:
  DUPTABLE R1 K3 [{"Props", "Inherits", "Typechecking"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["Props"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["Inherits"]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["Typechecking"]
  GETTABLEKS R2 R0 K4 ["script"]
  JUMPIFEQKNIL R2 [+3]
  GETUPVAL R3 0
  JUMPIF R3 [+1]
  RETURN R1 1
  GETTABLEKS R3 R2 K5 ["Source"]
  LOADNIL R4
  LOADNIL R5
  GETIMPORT R6 K8 [string.find]
  MOVE R7 R3
  LOADK R8 K9 ["t%.s?t?r?i?c?t?[iI]nterface"]
  CALL R6 2 1
  JUMPIFNOT R6 [+13]
  LOADK R4 K10 [".validateProps%s+=%s+t%.s?t?r?i?c?t?[iI]nterface%(%{
(.-)
%}%)"]
  GETTABLEKS R6 R2 K11 ["Name"]
  LOADK R7 K12 ["%.defaultProps"]
  LOADK R8 K13 ["%s+=%s+%{
(.-)
%}"]
  CONCAT R5 R6 R8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K14 ["Typecheckers"]
  GETTABLEKS R6 R7 K15 ["T"]
  SETTABLEKS R6 R1 K2 ["Typechecking"]
  LOADK R7 K16 ["local function "]
  GETTABLEKS R8 R2 K11 ["Name"]
  LOADK R9 K17 ["%(%w-[pP]rops: (%w+)"]
  CONCAT R6 R7 R9
  GETIMPORT R7 K19 [string.match]
  MOVE R8 R3
  MOVE R9 R6
  CALL R7 2 1
  JUMPIFNOT R7 [+24]
  LOADK R8 K20 ["type%s+"]
  MOVE R9 R7
  LOADK R10 K13 ["%s+=%s+%{
(.-)
%}"]
  CONCAT R4 R8 R10
  GETIMPORT R8 K8 [string.find]
  MOVE R9 R3
  MOVE R11 R4
  LOADK R12 K21 [" %& (.-)
"]
  CONCAT R10 R11 R12
  CALL R8 2 1
  JUMPIFNOT R8 [+3]
  MOVE R8 R4
  LOADK R9 K21 [" %& (.-)
"]
  CONCAT R4 R8 R9
  LOADK R5 K22 ["defaultProps:?%s*%w*%s+=%s+%{
(.-)
%}"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K14 ["Typecheckers"]
  GETTABLEKS R8 R9 K23 ["Luau"]
  SETTABLEKS R8 R1 K2 ["Typechecking"]
  JUMP [+10]
  JUMPIFNOTEQKNIL R4 [+9]
  GETIMPORT R8 K25 [print]
  LOADK R10 K26 ["📝 Unable to find props definition in "]
  GETTABLEKS R11 R2 K11 ["Name"]
  CONCAT R9 R10 R11
  CALL R8 1 0
  RETURN R1 1
  GETIMPORT R8 K19 [string.match]
  MOVE R9 R3
  MOVE R10 R4
  CALL R8 2 2
  GETIMPORT R10 K19 [string.match]
  MOVE R11 R3
  MOVE R12 R5
  CALL R10 2 1
  GETTABLEKS R11 R1 K2 ["Typechecking"]
  JUMPIFNOT R11 [+1]
  JUMPIF R8 [+8]
  GETIMPORT R11 K25 [print]
  LOADK R13 K27 ["💔 Couldn't find props for "]
  GETTABLEKS R14 R2 K11 ["Name"]
  CONCAT R12 R13 R14
  CALL R11 1 0
  JUMP [+10]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K28 ["parseProps"]
  GETTABLEKS R12 R1 K2 ["Typechecking"]
  MOVE R13 R8
  MOVE R14 R10
  CALL R11 3 1
  SETTABLEKS R11 R1 K0 ["Props"]
  JUMPIFNOT R9 [+7]
  GETIMPORT R11 K30 [string.split]
  MOVE R12 R9
  LOADK R13 K31 [" & "]
  CALL R11 2 1
  SETTABLEKS R11 R1 K1 ["Inherits"]
  NEWTABLE R11 0 0
  GETIMPORT R12 K33 [string.gmatch]
  MOVE R13 R3
  LOADK R14 K34 ["R[oe]act%.createElement%(%s*([%w%.]+)%s*,"]
  CALL R12 2 3
  FORGPREP R12
  LOADB R17 1
  SETTABLE R17 R11 R15
  FORGLOOP R12 1 [-3]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K35 ["Dictionary"]
  GETTABLEKS R12 R13 K36 ["keys"]
  MOVE R13 R11
  CALL R12 1 1
  SETTABLEKS R12 R1 K37 ["Components"]
  RETURN R1 1

PROTO_3:
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Types"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["FileUtils"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["PropParser"]
  CALL R2 1 1
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETIMPORT R4 K1 [require]
  GETTABLEKS R5 R3 K8 ["Cryo"]
  CALL R4 1 1
  NEWTABLE R5 4 0
  SETTABLEKS R5 R5 K9 ["__index"]
  GETIMPORT R6 K11 [pcall]
  DUPCLOSURE R7 K12 [PROTO_0]
  CALL R6 1 2
  JUMPIF R6 [+4]
  GETIMPORT R8 K14 [warn]
  LOADK R9 K15 ["🔌 DocParser is being used in a mode that cannot access script source. Features relying on access to plugin source may not function as expected."]
  CALL R8 1 0
  DUPCLOSURE R8 K16 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R1
  SETTABLEKS R8 R5 K17 ["new"]
  DUPCLOSURE R8 K18 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R8 R5 K19 ["parse"]
  DUPCLOSURE R8 K20 [PROTO_3]
  SETTABLEKS R8 R5 K21 ["_type"]
  RETURN R5 1
