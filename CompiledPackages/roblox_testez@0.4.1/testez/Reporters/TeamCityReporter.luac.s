PROTO_0:
  GETIMPORT R1 K2 [string.gsub]
  MOVE R2 R0
  LOADK R3 K3 ["([]|'[])"]
  LOADK R4 K4 ["|%1"]
  CALL R1 3 1
  MOVE R0 R1
  GETIMPORT R1 K2 [string.gsub]
  MOVE R2 R0
  LOADK R3 K5 [""]
  LOADK R4 K6 ["|r"]
  CALL R1 3 1
  MOVE R0 R1
  GETIMPORT R1 K2 [string.gsub]
  MOVE R2 R0
  LOADK R3 K7 ["
"]
  LOADK R4 K8 ["|n"]
  CALL R1 3 1
  MOVE R0 R1
  RETURN R0 1

PROTO_1:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["##teamcity[testSuiteStarted name='%s']"]
  MOVE R4 R0
  GETIMPORT R5 K5 [string.gsub]
  MOVE R6 R4
  LOADK R7 K6 ["([]|'[])"]
  LOADK R8 K7 ["|%1"]
  CALL R5 3 1
  MOVE R4 R5
  GETIMPORT R5 K5 [string.gsub]
  MOVE R6 R4
  LOADK R7 K8 [""]
  LOADK R8 K9 ["|r"]
  CALL R5 3 1
  MOVE R4 R5
  GETIMPORT R5 K5 [string.gsub]
  MOVE R6 R4
  LOADK R7 K10 ["
"]
  LOADK R8 K11 ["|n"]
  CALL R5 3 1
  MOVE R4 R5
  MOVE R3 R4
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["##teamcity[testSuiteFinished name='%s']"]
  MOVE R4 R0
  GETIMPORT R5 K5 [string.gsub]
  MOVE R6 R4
  LOADK R7 K6 ["([]|'[])"]
  LOADK R8 K7 ["|%1"]
  CALL R5 3 1
  MOVE R4 R5
  GETIMPORT R5 K5 [string.gsub]
  MOVE R6 R4
  LOADK R7 K8 [""]
  LOADK R8 K9 ["|r"]
  CALL R5 3 1
  MOVE R4 R5
  GETIMPORT R5 K5 [string.gsub]
  MOVE R6 R4
  LOADK R7 K10 ["
"]
  LOADK R8 K11 ["|n"]
  CALL R5 3 1
  MOVE R4 R5
  MOVE R3 R4
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["##teamcity[testStarted name='%s']"]
  MOVE R4 R0
  GETIMPORT R5 K5 [string.gsub]
  MOVE R6 R4
  LOADK R7 K6 ["([]|'[])"]
  LOADK R8 K7 ["|%1"]
  CALL R5 3 1
  MOVE R4 R5
  GETIMPORT R5 K5 [string.gsub]
  MOVE R6 R4
  LOADK R7 K8 [""]
  LOADK R8 K9 ["|r"]
  CALL R5 3 1
  MOVE R4 R5
  GETIMPORT R5 K5 [string.gsub]
  MOVE R6 R4
  LOADK R7 K10 ["
"]
  LOADK R8 K11 ["|n"]
  CALL R5 3 1
  MOVE R4 R5
  MOVE R3 R4
  CALL R1 2 -1
  RETURN R1 -1

PROTO_4:
  GETIMPORT R1 K2 [string.format]
  LOADK R2 K3 ["##teamcity[testFinished name='%s']"]
  MOVE R4 R0
  GETIMPORT R5 K5 [string.gsub]
  MOVE R6 R4
  LOADK R7 K6 ["([]|'[])"]
  LOADK R8 K7 ["|%1"]
  CALL R5 3 1
  MOVE R4 R5
  GETIMPORT R5 K5 [string.gsub]
  MOVE R6 R4
  LOADK R7 K8 [""]
  LOADK R8 K9 ["|r"]
  CALL R5 3 1
  MOVE R4 R5
  GETIMPORT R5 K5 [string.gsub]
  MOVE R6 R4
  LOADK R7 K10 ["
"]
  LOADK R8 K11 ["|n"]
  CALL R5 3 1
  MOVE R4 R5
  MOVE R3 R4
  CALL R1 2 -1
  RETURN R1 -1

PROTO_5:
  GETIMPORT R2 K2 [string.format]
  LOADK R3 K3 ["##teamcity[testFailed name='%s' message='%s']"]
  MOVE R5 R0
  GETIMPORT R6 K5 [string.gsub]
  MOVE R7 R5
  LOADK R8 K6 ["([]|'[])"]
  LOADK R9 K7 ["|%1"]
  CALL R6 3 1
  MOVE R5 R6
  GETIMPORT R6 K5 [string.gsub]
  MOVE R7 R5
  LOADK R8 K8 [""]
  LOADK R9 K9 ["|r"]
  CALL R6 3 1
  MOVE R5 R6
  GETIMPORT R6 K5 [string.gsub]
  MOVE R7 R5
  LOADK R8 K10 ["
"]
  LOADK R9 K11 ["|n"]
  CALL R6 3 1
  MOVE R5 R6
  MOVE R4 R5
  MOVE R6 R1
  GETIMPORT R7 K5 [string.gsub]
  MOVE R8 R6
  LOADK R9 K6 ["([]|'[])"]
  LOADK R10 K7 ["|%1"]
  CALL R7 3 1
  MOVE R6 R7
  GETIMPORT R7 K5 [string.gsub]
  MOVE R8 R6
  LOADK R9 K8 [""]
  LOADK R10 K9 ["|r"]
  CALL R7 3 1
  MOVE R6 R7
  GETIMPORT R7 K5 [string.gsub]
  MOVE R8 R6
  LOADK R9 K10 ["
"]
  LOADK R10 K11 ["|n"]
  CALL R7 3 1
  MOVE R6 R7
  MOVE R5 R6
  CALL R2 3 -1
  RETURN R2 -1

PROTO_6:
  MOVE R3 R1
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  MOVE R1 R3
  ORK R2 R2 K0 [0]
  GETTABLEKS R3 R0 K1 ["status"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["TestStatus"]
  GETTABLEKS R4 R5 K3 ["Skipped"]
  JUMPIFNOTEQ R3 R4 [+2]
  RETURN R1 1
  GETTABLEKS R4 R0 K4 ["planNode"]
  GETTABLEKS R3 R4 K5 ["type"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["NodeType"]
  GETTABLEKS R4 R5 K7 ["Describe"]
  JUMPIFNOTEQ R3 R4 [+37]
  MOVE R4 R1
  GETUPVAL R5 1
  GETTABLEKS R7 R0 K4 ["planNode"]
  GETTABLEKS R6 R7 K8 ["phrase"]
  CALL R5 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K11 [table.insert]
  CALL R3 -1 0
  GETIMPORT R3 K13 [ipairs]
  GETTABLEKS R4 R0 K14 ["children"]
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETUPVAL R8 2
  MOVE R9 R7
  MOVE R10 R1
  ADDK R11 R2 K15 [1]
  CALL R8 3 0
  FORGLOOP R3 2 [inext] [-6]
  MOVE R4 R1
  GETUPVAL R5 3
  GETTABLEKS R7 R0 K4 ["planNode"]
  GETTABLEKS R6 R7 K8 ["phrase"]
  CALL R5 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K11 [table.insert]
  CALL R3 -1 0
  RETURN R0 0
  MOVE R4 R1
  GETUPVAL R5 4
  GETTABLEKS R7 R0 K4 ["planNode"]
  GETTABLEKS R6 R7 K8 ["phrase"]
  CALL R5 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K11 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K1 ["status"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["TestStatus"]
  GETTABLEKS R4 R5 K16 ["Failure"]
  JUMPIFNOTEQ R3 R4 [+18]
  MOVE R4 R1
  GETUPVAL R5 5
  GETTABLEKS R7 R0 K4 ["planNode"]
  GETTABLEKS R6 R7 K8 ["phrase"]
  GETIMPORT R7 K18 [table.concat]
  GETTABLEKS R8 R0 K19 ["errors"]
  LOADK R9 K20 ["
"]
  CALL R7 2 -1
  CALL R5 -1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K11 [table.insert]
  CALL R3 -1 0
  MOVE R4 R1
  GETUPVAL R5 6
  GETTABLEKS R7 R0 K4 ["planNode"]
  GETTABLEKS R6 R7 K8 ["phrase"]
  CALL R5 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K11 [table.insert]
  CALL R3 -1 0
  RETURN R0 0

PROTO_7:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [ipairs]
  GETTABLEKS R3 R0 K2 ["children"]
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETUPVAL R7 0
  MOVE R8 R6
  MOVE R9 R1
  LOADN R10 0
  CALL R7 3 0
  FORGLOOP R2 2 [inext] [-6]
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETIMPORT R2 K2 [table.concat]
  MOVE R3 R1
  LOADK R4 K3 ["
"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  NEWTABLE R1 0 3
  LOADK R2 K0 ["Test results:"]
  GETUPVAL R4 0
  MOVE R5 R0
  CALL R4 1 1
  GETIMPORT R5 K3 [table.concat]
  MOVE R6 R4
  LOADK R7 K4 ["
"]
  CALL R5 2 1
  MOVE R3 R5
  LOADK R4 K5 ["%d passed, %d failed, %d skipped"]
  GETTABLEKS R6 R0 K6 ["successCount"]
  GETTABLEKS R7 R0 K7 ["failureCount"]
  GETTABLEKS R8 R0 K8 ["skippedCount"]
  NAMECALL R4 R4 K9 ["format"]
  CALL R4 4 -1
  SETLIST R1 R2 -1 [1]
  GETIMPORT R2 K11 [print]
  GETIMPORT R3 K3 [table.concat]
  MOVE R4 R1
  LOADK R5 K4 ["
"]
  CALL R3 2 -1
  CALL R2 -1 0
  GETTABLEKS R2 R0 K7 ["failureCount"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+10]
  GETIMPORT R2 K11 [print]
  LOADK R3 K12 ["%d test nodes reported failures."]
  GETTABLEKS R5 R0 K7 ["failureCount"]
  NAMECALL R3 R3 K9 ["format"]
  CALL R3 2 -1
  CALL R2 -1 0
  GETTABLEKS R3 R0 K13 ["errors"]
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+26]
  GETIMPORT R2 K11 [print]
  LOADK R3 K14 ["Errors reported by tests:"]
  CALL R2 1 0
  GETIMPORT R2 K11 [print]
  LOADK R3 K15 [""]
  CALL R2 1 0
  GETIMPORT R2 K17 [ipairs]
  GETTABLEKS R3 R0 K13 ["errors"]
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETUPVAL R7 1
  MOVE R9 R6
  NAMECALL R7 R7 K18 ["Error"]
  CALL R7 2 0
  GETIMPORT R7 K11 [print]
  LOADK R8 K15 [""]
  CALL R7 1 0
  FORGLOOP R2 2 [inext] [-10]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TestService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R5 K7 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R2 R3 K9 ["TestEnum"]
  CALL R1 1 1
  NEWTABLE R2 1 0
  DUPCLOSURE R3 K10 [PROTO_0]
  DUPCLOSURE R4 K11 [PROTO_1]
  DUPCLOSURE R5 K12 [PROTO_2]
  DUPCLOSURE R6 K13 [PROTO_3]
  DUPCLOSURE R7 K14 [PROTO_4]
  DUPCLOSURE R8 K15 [PROTO_5]
  DUPCLOSURE R9 K16 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  DUPCLOSURE R10 K17 [PROTO_7]
  CAPTURE VAL R9
  DUPCLOSURE R11 K18 [PROTO_8]
  CAPTURE VAL R10
  DUPCLOSURE R12 K19 [PROTO_9]
  CAPTURE VAL R10
  CAPTURE VAL R0
  SETTABLEKS R12 R2 K20 ["report"]
  RETURN R2 1
