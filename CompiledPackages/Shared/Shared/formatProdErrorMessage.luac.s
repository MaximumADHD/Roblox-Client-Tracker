PROTO_0:
  PREPVARARGS 1
  LOADK R2 K0 ["https://reactjs.org/docs/error-decoder.html?invariant="]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K2 [tostring]
  CALL R3 1 1
  CONCAT R1 R2 R3
  LOADK R3 K3 ["#"]
  FASTCALL1 SELECT_VARARG R3 [+3]
  GETIMPORT R2 K5 [select]
  GETVARARGS R4 -1
  CALL R2 -1 1
  LOADN R5 1
  MOVE R3 R2
  LOADN R4 1
  FORNPREP R3
  MOVE R6 R1
  LOADK R7 K6 ["&args[]="]
  GETUPVAL R8 0
  GETIMPORT R10 K5 [select]
  MOVE R11 R5
  GETVARARGS R12 -1
  CALL R10 -1 -1
  NAMECALL R8 R8 K7 ["UrlEncode"]
  CALL R8 -1 1
  CONCAT R1 R6 R8
  FORNLOOP R3
  GETIMPORT R3 K10 [string.format]
  LOADK R5 K11 ["Minified React error #%d; visit %s for the full message or "]
  LOADK R6 K12 ["use the non-minified dev environment for full errors and additional "]
  LOADK R7 K13 ["helpful warnings."]
  CONCAT R4 R5 R7
  MOVE R5 R0
  MOVE R6 R1
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
