PROTO_0:
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  JUMPIFNOTEQ R5 R0 [+3]
  LOADB R6 1
  RETURN R6 1
  FORGLOOP R1 2 [-5]
  LOADB R1 0
  RETURN R1 1

PROTO_1:
  LOADB R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["AuthorizationPending"]
  JUMPIFEQ R0 R2 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["UnsupportedProtocolVersion"]
  JUMPIFEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K6 [{"Connected", "Disconnected", "UnexpectedError", "AuthorizationPending", "UnexpectedServerResponse", "UnsupportedProtocolVersion"}]
  LOADK R1 K7 ["connected"]
  SETTABLEKS R1 R0 K0 ["Connected"]
  LOADK R1 K8 ["disconnected"]
  SETTABLEKS R1 R0 K1 ["Disconnected"]
  LOADK R1 K9 ["unexpected_error"]
  SETTABLEKS R1 R0 K2 ["UnexpectedError"]
  LOADK R1 K10 ["authorization_pending"]
  SETTABLEKS R1 R0 K3 ["AuthorizationPending"]
  LOADK R1 K11 ["unexpected_server_response"]
  SETTABLEKS R1 R0 K4 ["UnexpectedServerResponse"]
  LOADK R1 K12 ["unsupported_protocol_version"]
  SETTABLEKS R1 R0 K5 ["UnsupportedProtocolVersion"]
  DUPCLOSURE R1 K13 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["is"]
  DUPCLOSURE R1 K15 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["isFatal"]
  RETURN R0 1
