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
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K6 ["Array"]
  GETTABLEKS R3 R1 K7 ["Boolean"]
  NEWTABLE R4 1 0
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R0 K8 ["ChalkLua"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R0 K9 ["JestTypes"]
  CALL R6 1 1
  GETIMPORT R8 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K10 ["getProjectDisplayName"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K11 ["default"]
  LOADNIL R8
  LOADNIL R9
  LOADNIL R10
  NEWCLOSURE R11 P0
  CAPTURE REF R8
  CAPTURE REF R9
  SETTABLEKS R11 R4 K11 ["default"]
  DUPCLOSURE R8 K12 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R5
  NEWCLOSURE R9 P2
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE REF R10
  DUPCLOSURE R10 K13 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R5
  CLOSEUPVALS R8
  RETURN R4 1
