PROTO_0:
  DUPTABLE R2 K7 [{"changeDescriptions", "duration", "fiberActualDurations", "fiberSelfDurations", "interactionIDs", "priorityLevel", "timestamp"}]
  GETTABLEKS R4 R0 K0 ["changeDescriptions"]
  JUMPIFEQKNIL R4 [+8]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["new"]
  GETTABLEKS R4 R0 K0 ["changeDescriptions"]
  CALL R3 1 1
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K0 ["changeDescriptions"]
  GETTABLEKS R3 R0 K1 ["duration"]
  SETTABLEKS R3 R2 K1 ["duration"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["new"]
  GETTABLEKS R4 R0 K2 ["fiberActualDurations"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["fiberActualDurations"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["new"]
  GETTABLEKS R4 R0 K3 ["fiberSelfDurations"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["fiberSelfDurations"]
  GETTABLEKS R3 R0 K4 ["interactionIDs"]
  SETTABLEKS R3 R2 K4 ["interactionIDs"]
  GETTABLEKS R3 R0 K5 ["priorityLevel"]
  SETTABLEKS R3 R2 K5 ["priorityLevel"]
  GETTABLEKS R3 R0 K6 ["timestamp"]
  SETTABLEKS R3 R2 K6 ["timestamp"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["new"]
  CALL R3 0 1
  MOVE R4 R0
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R8 K1 ["dataForRoots"]
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETTABLEKS R14 R13 K2 ["commitData"]
  GETTABLEKS R15 R13 K3 ["displayName"]
  GETTABLEKS R16 R13 K4 ["initialTreeBaseDurations"]
  GETTABLEKS R17 R13 K5 ["interactionCommits"]
  GETTABLEKS R18 R13 K6 ["interactions"]
  GETTABLEKS R19 R13 K7 ["rootID"]
  MOVE R22 R19
  NAMECALL R20 R1 K8 ["get"]
  CALL R20 2 1
  JUMPIFNOTEQKNIL R20 [+17]
  GETIMPORT R21 K10 [error]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K0 ["new"]
  GETIMPORT R23 K13 [string.format]
  LOADK R24 K14 ["Could not find profiling operations for root %s"]
  FASTCALL1 TOSTRING R19 [+3]
  MOVE R26 R19
  GETIMPORT R25 K16 [tostring]
  CALL R25 1 1
  CALL R23 2 -1
  CALL R22 -1 -1
  CALL R21 -1 0
  MOVE R23 R19
  NAMECALL R21 R2 K8 ["get"]
  CALL R21 2 1
  JUMPIFNOTEQKNIL R21 [+17]
  GETIMPORT R22 K10 [error]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K0 ["new"]
  GETIMPORT R24 K13 [string.format]
  LOADK R25 K17 ["Could not find profiling snapshots for root %s"]
  FASTCALL1 TOSTRING R19 [+3]
  MOVE R27 R19
  GETIMPORT R26 K16 [tostring]
  CALL R26 1 1
  CALL R24 2 -1
  CALL R23 -1 -1
  CALL R22 -1 0
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K18 ["map"]
  MOVE R23 R14
  DUPCLOSURE R24 K19 [PROTO_0]
  CAPTURE UPVAL U0
  CALL R22 2 1
  MOVE R25 R19
  DUPTABLE R26 K22 [{"commitData", "displayName", "initialTreeBaseDurations", "interactionCommits", "interactions", "operations", "rootID", "snapshots"}]
  SETTABLEKS R22 R26 K2 ["commitData"]
  SETTABLEKS R15 R26 K3 ["displayName"]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K0 ["new"]
  MOVE R28 R16
  CALL R27 1 1
  SETTABLEKS R27 R26 K4 ["initialTreeBaseDurations"]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K0 ["new"]
  MOVE R28 R17
  CALL R27 1 1
  SETTABLEKS R27 R26 K5 ["interactionCommits"]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K0 ["new"]
  MOVE R28 R18
  CALL R27 1 1
  SETTABLEKS R27 R26 K6 ["interactions"]
  SETTABLEKS R20 R26 K20 ["operations"]
  SETTABLEKS R19 R26 K7 ["rootID"]
  SETTABLEKS R21 R26 K21 ["snapshots"]
  NAMECALL R23 R3 K23 ["set"]
  CALL R23 3 0
  FORGLOOP R9 2 [-100]
  FORGLOOP R4 2 [-107]
  DUPTABLE R4 K25 [{"dataForRoots", "imported"}]
  SETTABLEKS R3 R4 K1 ["dataForRoots"]
  LOADB R5 0
  SETTABLEKS R5 R4 K24 ["imported"]
  RETURN R4 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["changeDescriptions"]
  GETTABLEKS R2 R0 K1 ["duration"]
  GETTABLEKS R3 R0 K2 ["fiberActualDurations"]
  GETTABLEKS R4 R0 K3 ["fiberSelfDurations"]
  GETTABLEKS R5 R0 K4 ["interactionIDs"]
  GETTABLEKS R6 R0 K5 ["priorityLevel"]
  GETTABLEKS R7 R0 K6 ["timestamp"]
  DUPTABLE R8 K7 [{"changeDescriptions", "duration", "fiberActualDurations", "fiberSelfDurations", "interactionIDs", "priorityLevel", "timestamp"}]
  JUMPIFEQKNIL R1 [+7]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["new"]
  MOVE R10 R1
  CALL R9 1 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K0 ["changeDescriptions"]
  SETTABLEKS R2 R8 K1 ["duration"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["new"]
  MOVE R10 R3
  CALL R9 1 1
  SETTABLEKS R9 R8 K2 ["fiberActualDurations"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["new"]
  MOVE R10 R4
  CALL R9 1 1
  SETTABLEKS R9 R8 K3 ["fiberSelfDurations"]
  SETTABLEKS R5 R8 K4 ["interactionIDs"]
  SETTABLEKS R6 R8 K5 ["priorityLevel"]
  SETTABLEKS R7 R8 K6 ["timestamp"]
  RETURN R8 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["commitData"]
  GETTABLEKS R2 R0 K1 ["displayName"]
  GETTABLEKS R3 R0 K2 ["initialTreeBaseDurations"]
  GETTABLEKS R4 R0 K3 ["interactionCommits"]
  GETTABLEKS R5 R0 K4 ["interactions"]
  GETTABLEKS R6 R0 K5 ["operations"]
  GETTABLEKS R7 R0 K6 ["rootID"]
  GETTABLEKS R8 R0 K7 ["snapshots"]
  GETUPVAL R9 0
  MOVE R11 R7
  DUPTABLE R12 K8 [{"commitData", "displayName", "initialTreeBaseDurations", "interactionCommits", "interactions", "operations", "rootID", "snapshots"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["map"]
  MOVE R14 R1
  DUPCLOSURE R15 K10 [PROTO_2]
  CAPTURE UPVAL U2
  CALL R13 2 1
  SETTABLEKS R13 R12 K0 ["commitData"]
  SETTABLEKS R2 R12 K1 ["displayName"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K11 ["new"]
  MOVE R14 R3
  CALL R13 1 1
  SETTABLEKS R13 R12 K2 ["initialTreeBaseDurations"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K11 ["new"]
  MOVE R14 R4
  CALL R13 1 1
  SETTABLEKS R13 R12 K3 ["interactionCommits"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K11 ["new"]
  MOVE R14 R5
  CALL R13 1 1
  SETTABLEKS R13 R12 K4 ["interactions"]
  SETTABLEKS R6 R12 K5 ["operations"]
  SETTABLEKS R7 R12 K6 ["rootID"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K11 ["new"]
  MOVE R14 R8
  CALL R13 1 1
  SETTABLEKS R13 R12 K7 ["snapshots"]
  NAMECALL R9 R9 K12 ["set"]
  CALL R9 3 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["version"]
  GETUPVAL R2 0
  JUMPIFEQ R1 R2 [+13]
  GETIMPORT R2 K2 [error]
  GETIMPORT R3 K5 [string.format]
  LOADK R4 K6 ["Unsupported profiler export version \"%s\""]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K8 [tostring]
  CALL R5 1 1
  CALL R3 2 -1
  CALL R2 -1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["new"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K10 ["forEach"]
  GETTABLEKS R4 R0 K11 ["dataForRoots"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  CALL R3 2 0
  DUPTABLE R3 K13 [{"dataForRoots", "imported"}]
  SETTABLEKS R2 R3 K11 ["dataForRoots"]
  LOADB R4 1
  SETTABLEKS R4 R3 K12 ["imported"]
  RETURN R3 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["changeDescriptions"]
  GETTABLEKS R2 R0 K1 ["duration"]
  GETTABLEKS R3 R0 K2 ["fiberActualDurations"]
  GETTABLEKS R4 R0 K3 ["fiberSelfDurations"]
  GETTABLEKS R5 R0 K4 ["interactionIDs"]
  GETTABLEKS R6 R0 K5 ["priorityLevel"]
  GETTABLEKS R7 R0 K6 ["timestamp"]
  DUPTABLE R8 K7 [{"changeDescriptions", "duration", "fiberActualDurations", "fiberSelfDurations", "interactionIDs", "priorityLevel", "timestamp"}]
  JUMPIFEQKNIL R1 [+9]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["from"]
  NAMECALL R10 R1 K9 ["entries"]
  CALL R10 1 -1
  CALL R9 -1 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K0 ["changeDescriptions"]
  SETTABLEKS R2 R8 K1 ["duration"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["from"]
  NAMECALL R10 R3 K9 ["entries"]
  CALL R10 1 -1
  CALL R9 -1 1
  SETTABLEKS R9 R8 K2 ["fiberActualDurations"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["from"]
  NAMECALL R10 R4 K9 ["entries"]
  CALL R10 1 -1
  CALL R9 -1 1
  SETTABLEKS R9 R8 K3 ["fiberSelfDurations"]
  SETTABLEKS R5 R8 K4 ["interactionIDs"]
  SETTABLEKS R6 R8 K5 ["priorityLevel"]
  SETTABLEKS R7 R8 K6 ["timestamp"]
  RETURN R8 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["commitData"]
  GETTABLEKS R2 R0 K1 ["displayName"]
  GETTABLEKS R3 R0 K2 ["initialTreeBaseDurations"]
  GETTABLEKS R4 R0 K3 ["interactionCommits"]
  GETTABLEKS R5 R0 K4 ["interactions"]
  GETTABLEKS R6 R0 K5 ["operations"]
  GETTABLEKS R7 R0 K6 ["rootID"]
  GETTABLEKS R8 R0 K7 ["snapshots"]
  GETUPVAL R10 0
  DUPTABLE R11 K8 [{"commitData", "displayName", "initialTreeBaseDurations", "interactionCommits", "interactions", "operations", "rootID", "snapshots"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K9 ["map"]
  MOVE R13 R1
  DUPCLOSURE R14 K10 [PROTO_5]
  CAPTURE UPVAL U1
  CALL R12 2 1
  SETTABLEKS R12 R11 K0 ["commitData"]
  SETTABLEKS R2 R11 K1 ["displayName"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K11 ["from"]
  NAMECALL R13 R3 K12 ["entries"]
  CALL R13 1 -1
  CALL R12 -1 1
  SETTABLEKS R12 R11 K2 ["initialTreeBaseDurations"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K11 ["from"]
  NAMECALL R13 R4 K12 ["entries"]
  CALL R13 1 -1
  CALL R12 -1 1
  SETTABLEKS R12 R11 K3 ["interactionCommits"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K11 ["from"]
  NAMECALL R13 R5 K12 ["entries"]
  CALL R13 1 -1
  CALL R12 -1 1
  SETTABLEKS R12 R11 K4 ["interactions"]
  SETTABLEKS R6 R11 K5 ["operations"]
  SETTABLEKS R7 R11 K6 ["rootID"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K11 ["from"]
  NAMECALL R13 R8 K12 ["entries"]
  CALL R13 1 -1
  CALL R12 -1 1
  SETTABLEKS R12 R11 K7 ["snapshots"]
  FASTCALL2 TABLE_INSERT R10 R11 [+3]
  GETIMPORT R9 K15 [table.insert]
  CALL R9 2 0
  RETURN R0 0

PROTO_7:
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["dataForRoots"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  NAMECALL R2 R2 K1 ["forEach"]
  CALL R2 2 0
  DUPTABLE R2 K3 [{"version", "dataForRoots"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K2 ["version"]
  SETTABLEKS R1 R2 K0 ["dataForRoots"]
  RETURN R2 1

PROTO_8:
  GETUPVAL R2 0
  LENGTH R1 R2
  LOADNIL R2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["isNaN"]
  MOVE R4 R0
  CALL R3 1 1
  JUMPIFNOT R3 [+2]
  LOADN R2 0
  JUMP [+22]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["isFinite"]
  MOVE R4 R0
  CALL R3 1 1
  JUMPIF R3 [+2]
  MOVE R2 R1
  JUMP [+14]
  LOADN R4 0
  FASTCALL2 MATH_MIN R1 R0 [+5]
  MOVE R6 R1
  MOVE R7 R0
  GETIMPORT R5 K4 [math.min]
  CALL R5 2 1
  FASTCALL2 MATH_MAX R4 R5 [+3]
  GETIMPORT R3 K6 [math.max]
  CALL R3 2 1
  MUL R2 R3 R1
  GETUPVAL R4 0
  FASTCALL1 MATH_ROUND R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K8 [math.round]
  CALL R5 1 1
  GETTABLE R3 R4 R5
  RETURN R3 1

PROTO_9:
  MULK R3 R0 K0 [10]
  FASTCALL1 MATH_ROUND R3 [+2]
  GETIMPORT R2 K3 [math.round]
  CALL R2 1 1
  DIVK R1 R2 K0 [10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["toJSBoolean"]
  MOVE R4 R1
  CALL R3 1 1
  JUMPIFNOT R3 [+2]
  MOVE R2 R1
  RETURN R2 1
  LOADK R2 K5 ["<0.1"]
  RETURN R2 1

PROTO_10:
  MULK R2 R0 K0 [100]
  FASTCALL1 MATH_ROUND R2 [+2]
  GETIMPORT R1 K3 [math.round]
  CALL R1 1 1
  RETURN R1 1

PROTO_11:
  FASTCALL1 MATH_ROUND R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K4 [math.round]
  CALL R4 1 1
  DIVK R3 R4 K1 [100]
  FASTCALL1 MATH_ROUND R3 [+2]
  GETIMPORT R2 K4 [math.round]
  CALL R2 1 1
  DIVK R1 R2 K0 [10]
  RETURN R1 1

PROTO_12:
  GETUPVAL R4 0
  GETUPVAL R5 1
  SUB R3 R4 R5
  JUMPIFNOTEQKN R3 K0 [0] [+3]
  MOVE R2 R1
  RETURN R2 1
  GETUPVAL R5 1
  SUB R4 R0 R5
  GETUPVAL R6 0
  GETUPVAL R7 1
  SUB R5 R6 R7
  DIV R3 R4 R5
  GETUPVAL R5 2
  GETUPVAL R6 3
  SUB R4 R5 R6
  MUL R2 R3 R4
  RETURN R2 1

PROTO_13:
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K6 ["Array"]
  GETTABLEKS R3 R1 K7 ["Boolean"]
  GETTABLEKS R4 R1 K8 ["Error"]
  GETTABLEKS R5 R1 K9 ["Map"]
  GETTABLEKS R6 R1 K10 ["Number"]
  NEWTABLE R7 8 0
  GETIMPORT R9 K4 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K2 ["Parent"]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K11 ["constants"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K12 ["PROFILER_EXPORT_VERSION"]
  GETIMPORT R9 K4 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K2 ["Parent"]
  GETTABLEKS R14 R15 K2 ["Parent"]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K13 ["backend"]
  GETTABLEKS R10 R11 K14 ["types"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K14 ["types"]
  CALL R10 1 1
  NEWTABLE R11 0 10
  LOADK R12 K15 ["var(--color-commit-gradient-0)"]
  LOADK R13 K16 ["var(--color-commit-gradient-1)"]
  LOADK R14 K17 ["var(--color-commit-gradient-2)"]
  LOADK R15 K18 ["var(--color-commit-gradient-3)"]
  LOADK R16 K19 ["var(--color-commit-gradient-4)"]
  LOADK R17 K20 ["var(--color-commit-gradient-5)"]
  LOADK R18 K21 ["var(--color-commit-gradient-6)"]
  LOADK R19 K22 ["var(--color-commit-gradient-7)"]
  LOADK R20 K23 ["var(--color-commit-gradient-8)"]
  LOADK R21 K24 ["var(--color-commit-gradient-9)"]
  SETLIST R11 R12 10 [1]
  DUPCLOSURE R12 K25 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R12 R7 K26 ["prepareProfilingDataFrontendFromBackendAndStore"]
  DUPCLOSURE R13 K27 [PROTO_4]
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R13 R7 K28 ["prepareProfilingDataFrontendFromExport"]
  DUPCLOSURE R14 K29 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R8
  SETTABLEKS R14 R7 K30 ["prepareProfilingDataExport"]
  DUPCLOSURE R15 K31 [PROTO_8]
  CAPTURE VAL R11
  CAPTURE VAL R6
  SETTABLEKS R15 R7 K32 ["getGradientColor"]
  DUPCLOSURE R16 K33 [PROTO_9]
  CAPTURE VAL R3
  SETTABLEKS R16 R7 K34 ["formatDuration"]
  DUPCLOSURE R17 K35 [PROTO_10]
  SETTABLEKS R17 R7 K36 ["formatPercentage"]
  DUPCLOSURE R18 K37 [PROTO_11]
  SETTABLEKS R18 R7 K38 ["formatTime"]
  DUPCLOSURE R19 K39 [PROTO_13]
  SETTABLEKS R19 R7 K40 ["scale"]
  RETURN R7 1
