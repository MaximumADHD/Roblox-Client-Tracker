PROTO_0:
  LENGTH R2 R0
  JUMPIFNOTEQKN R2 K0 [0] [+5]
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["toJSBoolean"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["toJSBoolean"]
  GETTABLEKS R4 R0 K1 ["ignoreProjects"]
  CALL R3 1 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R0 K2 ["selectProjects"]
  JUMP [+2]
  GETTABLEKS R2 R0 K1 ["ignoreProjects"]
  CALL R1 1 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["yellow"]
  LOADK R2 K4 ["You provided values for --selectProjects and --ignoreProjects, but no projects were found matching the selection.
Are you ignoring all the selected projects?
"]
  CALL R1 1 -1
  RETURN R1 -1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["toJSBoolean"]
  GETTABLEKS R2 R0 K1 ["ignoreProjects"]
  CALL R1 1 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["yellow"]
  LOADK R2 K5 ["You provided values for --ignoreProjects, but no projects were found matching the selection.
Are you ignoring all projects?
"]
  CALL R1 1 -1
  RETURN R1 -1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["toJSBoolean"]
  GETTABLEKS R2 R0 K2 ["selectProjects"]
  CALL R1 1 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["yellow"]
  LOADK R2 K6 ["You provided values for --selectProjects but no projects were found matching the selection.
"]
  CALL R1 1 -1
  RETURN R1 -1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["yellow"]
  LOADK R2 K7 ["No projects were found.
"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K0 [1] [+14]
  GETUPVAL R1 0
  GETTABLEN R2 R0 1
  CALL R1 1 1
  LOADK R2 K1 ["Running one project: %s
"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["bold"]
  MOVE R5 R1
  CALL R4 1 -1
  NAMECALL R2 R2 K3 ["format"]
  CALL R2 -1 -1
  RETURN R2 -1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["join"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["sort"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["map"]
  MOVE R4 R0
  GETUPVAL R5 3
  CALL R3 2 -1
  CALL R2 -1 1
  LOADK R3 K7 ["
"]
  CALL R1 2 1
  LOADK R2 K8 ["Running %s projects:
%s
"]
  LENGTH R5 R0
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K10 [tostring]
  CALL R4 1 1
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K10 [tostring]
  CALL R5 1 1
  NAMECALL R2 R2 K3 ["format"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["toJSBoolean"]
  MOVE R4 R1
  CALL R3 1 1
  JUMPIFNOT R3 [+6]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["bold"]
  MOVE R3 R1
  CALL R2 1 1
  JUMP [+1]
  LOADK R2 K2 ["<unnamed project>"]
  LOADK R3 K3 ["- %s"]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K5 [tostring]
  CALL R5 1 1
  NAMECALL R3 R3 K6 ["format"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["luau-polyfill"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETTABLEKS R1 R0 K7 ["Array"]
  GETTABLEKS R2 R0 K8 ["Boolean"]
  NEWTABLE R3 1 0
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  LOADK R7 K9 ["chalk"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K4 ["Parent"]
  LOADK R8 K10 ["jest-types"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K4 ["Parent"]
  LOADK R10 K11 ["getProjectDisplayName"]
  NAMECALL R8 R8 K6 ["WaitForChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  GETTABLEKS R6 R7 K12 ["default"]
  LOADNIL R7
  LOADNIL R8
  LOADNIL R9
  NEWCLOSURE R10 P0
  CAPTURE REF R7
  CAPTURE REF R8
  SETTABLEKS R10 R3 K12 ["default"]
  DUPCLOSURE R7 K13 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  NEWCLOSURE R8 P2
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE REF R9
  DUPCLOSURE R9 K14 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R4
  CLOSEUPVALS R7
  RETURN R3 1
