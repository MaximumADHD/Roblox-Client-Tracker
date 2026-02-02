PROTO_0:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R1
  RETURN R1 1
  NEWTABLE R1 0 0
  LOADB R2 0
  LOADK R5 K0 ["
"]
  NAMECALL R3 R0 K1 ["split"]
  CALL R3 2 3
  FORGPREP R3
  LOADK R10 K2 ["[%w_%-]+%.[%w_%-%.]+%:%d+[%w 	_]*"]
  JUMPIFNOT R2 [+2]
  LOADK R11 K3 [""]
  JUMP [+1]
  GETUPVAL R11 0
  NAMECALL R8 R7 K4 ["gsub"]
  CALL R8 3 1
  LOADK R10 K5 ["[%w_%-]+%.[%w_%-%.]+%:%d+%:[%w 	_]*"]
  JUMPIFNOT R2 [+2]
  LOADK R11 K3 [""]
  JUMP [+1]
  LOADK R11 K6 ["Redacted.Stack.Trace:1337: The epic duck is coming!"]
  NAMECALL R8 R8 K4 ["gsub"]
  CALL R8 3 1
  JUMPIFNOTEQ R7 R8 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R2 [+5]
  LOADK R11 K7 ["%S"]
  NAMECALL R9 R8 K8 ["match"]
  CALL R9 2 1
  JUMPIFNOT R9 [+7]
  FASTCALL2 TABLE_INSERT R1 R8 [+5]
  MOVE R10 R1
  MOVE R11 R8
  GETIMPORT R9 K11 [table.insert]
  CALL R9 2 0
  FORGLOOP R3 2 [-34]
  GETIMPORT R3 K13 [table.concat]
  MOVE R4 R1
  LOADK R5 K0 ["
"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  LOADK R0 K0 ["
Redacted.Stack.Trace:1337 function epicDuck"]
  LOADN R2 4
  NAMECALL R0 R0 K1 ["rep"]
  CALL R0 2 1
  LOADN R2 2
  NAMECALL R0 R0 K2 ["sub"]
  CALL R0 2 1
  DUPCLOSURE R1 K3 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
