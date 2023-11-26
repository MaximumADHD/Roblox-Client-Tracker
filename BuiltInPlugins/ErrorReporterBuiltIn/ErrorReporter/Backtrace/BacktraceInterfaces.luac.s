PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["table"] [+22]
  GETIMPORT R1 K4 [pairs]
  MOVE R2 R0
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETUPVAL R6 0
  MOVE R7 R5
  CALL R6 1 2
  JUMPIF R6 [+8]
  LOADB R8 0
  GETIMPORT R9 K7 [string.format]
  LOADK R10 K8 ["error when checking key: %s - %s"]
  MOVE R11 R4
  MOVE R12 R7
  CALL R9 3 -1
  RETURN R8 -1
  FORGLOOP R1 2 [-13]
  LOADB R1 1
  RETURN R1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K9 ["some"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["string"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K10 ["number"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K11 ["boolean"]
  CALL R1 3 1
  MOVE R2 R1
  MOVE R3 R0
  CALL R2 1 -1
  RETURN R2 -1

PROTO_1:
  DUPCLOSURE R1 K0 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  MOVE R2 R1
  MOVE R3 R0
  CALL R2 1 -1
  RETURN R2 -1

PROTO_2:
  LOADB R1 0
  GETTABLEKS R2 R0 K0 ["threads"]
  GETIMPORT R3 K2 [pairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R8 R7 K3 ["stack"]
  JUMPIFEQKNIL R8 [+14]
  GETIMPORT R9 K5 [ipairs]
  MOVE R10 R8
  CALL R9 1 3
  FORGPREP_INEXT R9
  GETTABLEKS R14 R13 K6 ["registers"]
  JUMPIFEQKNIL R14 [+3]
  LOADB R1 1
  JUMP [+2]
  FORGLOOP R9 2 [inext] [-7]
  JUMPIF R1 [+2]
  FORGLOOP R3 2 [-19]
  JUMPIFNOT R1 [+7]
  GETTABLEKS R3 R0 K7 ["arch"]
  JUMPIFNOTEQKNIL R3 [+4]
  LOADB R3 0
  LOADK R4 K8 ["arch must exist if you want to have registers in the stack"]
  RETURN R3 2
  LOADB R3 1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R4 R1 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Typecheck"]
  GETTABLEKS R2 R3 K9 ["t"]
  GETTABLEKS R3 R2 K10 ["strictInterface"]
  DUPTABLE R4 K21 [{"guessed_frame", "funcName", "address", "line", "column", "sourceCode", "library", "debug_identifier", "faulted", "registers"}]
  GETTABLEKS R5 R2 K22 ["optional"]
  GETTABLEKS R6 R2 K23 ["boolean"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K11 ["guessed_frame"]
  GETTABLEKS R5 R2 K22 ["optional"]
  GETTABLEKS R6 R2 K24 ["string"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K12 ["funcName"]
  GETTABLEKS R5 R2 K22 ["optional"]
  GETTABLEKS R6 R2 K24 ["string"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K13 ["address"]
  GETTABLEKS R5 R2 K22 ["optional"]
  GETTABLEKS R6 R2 K24 ["string"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K14 ["line"]
  GETTABLEKS R5 R2 K22 ["optional"]
  GETTABLEKS R6 R2 K24 ["string"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K15 ["column"]
  GETTABLEKS R5 R2 K22 ["optional"]
  GETTABLEKS R6 R2 K24 ["string"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K16 ["sourceCode"]
  GETTABLEKS R5 R2 K22 ["optional"]
  GETTABLEKS R6 R2 K24 ["string"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K17 ["library"]
  GETTABLEKS R5 R2 K22 ["optional"]
  GETTABLEKS R6 R2 K24 ["string"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K18 ["debug_identifier"]
  GETTABLEKS R5 R2 K22 ["optional"]
  GETTABLEKS R6 R2 K23 ["boolean"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K19 ["faulted"]
  GETTABLEKS R5 R2 K22 ["optional"]
  GETTABLEKS R6 R2 K25 ["map"]
  GETTABLEKS R7 R2 K24 ["string"]
  GETTABLEKS R8 R2 K26 ["some"]
  GETTABLEKS R9 R2 K24 ["string"]
  GETTABLEKS R10 R2 K27 ["number"]
  CALL R8 2 -1
  CALL R6 -1 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K20 ["registers"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["strictInterface"]
  DUPTABLE R5 K31 [{"name", "fault", "stack"}]
  GETTABLEKS R6 R2 K22 ["optional"]
  GETTABLEKS R7 R2 K24 ["string"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K28 ["name"]
  GETTABLEKS R6 R2 K22 ["optional"]
  GETTABLEKS R7 R2 K23 ["boolean"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K29 ["fault"]
  GETTABLEKS R6 R2 K22 ["optional"]
  GETTABLEKS R7 R2 K32 ["array"]
  MOVE R8 R3
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K30 ["stack"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K10 ["strictInterface"]
  DUPTABLE R6 K33 [{"name", "registers"}]
  GETTABLEKS R7 R2 K24 ["string"]
  SETTABLEKS R7 R6 K28 ["name"]
  GETTABLEKS R7 R2 K25 ["map"]
  GETTABLEKS R8 R2 K24 ["string"]
  GETTABLEKS R9 R2 K24 ["string"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K20 ["registers"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K10 ["strictInterface"]
  DUPTABLE R7 K40 [{"text", "startLine", "startColumn", "startPos", "path", "tabWidth"}]
  GETTABLEKS R8 R2 K22 ["optional"]
  GETTABLEKS R9 R2 K24 ["string"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K34 ["text"]
  GETTABLEKS R8 R2 K22 ["optional"]
  GETTABLEKS R9 R2 K27 ["number"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K35 ["startLine"]
  GETTABLEKS R8 R2 K22 ["optional"]
  GETTABLEKS R9 R2 K27 ["number"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K36 ["startColumn"]
  GETTABLEKS R8 R2 K22 ["optional"]
  GETTABLEKS R9 R2 K27 ["number"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K37 ["startPos"]
  GETTABLEKS R8 R2 K22 ["optional"]
  GETTABLEKS R9 R2 K24 ["string"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K38 ["path"]
  GETTABLEKS R8 R2 K22 ["optional"]
  GETTABLEKS R9 R2 K27 ["number"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K39 ["tabWidth"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K10 ["strictInterface"]
  DUPTABLE R8 K44 [{"read", "write", "exec"}]
  GETTABLEKS R9 R2 K23 ["boolean"]
  SETTABLEKS R9 R8 K41 ["read"]
  GETTABLEKS R9 R2 K23 ["boolean"]
  SETTABLEKS R9 R8 K42 ["write"]
  GETTABLEKS R9 R2 K23 ["boolean"]
  SETTABLEKS R9 R8 K43 ["exec"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K10 ["strictInterface"]
  DUPTABLE R9 K49 [{"start", "size", "data", "perms"}]
  GETTABLEKS R10 R2 K24 ["string"]
  SETTABLEKS R10 R9 K45 ["start"]
  GETTABLEKS R10 R2 K22 ["optional"]
  GETTABLEKS R11 R2 K27 ["number"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K46 ["size"]
  GETTABLEKS R10 R2 K22 ["optional"]
  GETTABLEKS R11 R2 K24 ["string"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K47 ["data"]
  GETTABLEKS R10 R2 K22 ["optional"]
  MOVE R11 R7
  CALL R10 1 1
  SETTABLEKS R10 R9 K48 ["perms"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K10 ["strictInterface"]
  DUPTABLE R10 K54 [{"start", "size", "code_file", "version", "debug_file", "debug_identifier", "debug_file_exists"}]
  GETTABLEKS R11 R2 K24 ["string"]
  SETTABLEKS R11 R10 K45 ["start"]
  GETTABLEKS R11 R2 K27 ["number"]
  SETTABLEKS R11 R10 K46 ["size"]
  GETTABLEKS R11 R2 K22 ["optional"]
  GETTABLEKS R12 R2 K24 ["string"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K50 ["code_file"]
  GETTABLEKS R11 R2 K22 ["optional"]
  GETTABLEKS R12 R2 K24 ["string"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K51 ["version"]
  GETTABLEKS R11 R2 K22 ["optional"]
  GETTABLEKS R12 R2 K24 ["string"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K52 ["debug_file"]
  GETTABLEKS R11 R2 K22 ["optional"]
  GETTABLEKS R12 R2 K24 ["string"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K18 ["debug_identifier"]
  GETTABLEKS R11 R2 K22 ["optional"]
  GETTABLEKS R12 R2 K23 ["boolean"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K53 ["debug_file_exists"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K22 ["optional"]
  GETTABLEKS R11 R2 K25 ["map"]
  GETTABLEKS R12 R2 K24 ["string"]
  GETTABLEKS R13 R2 K26 ["some"]
  GETTABLEKS R14 R2 K24 ["string"]
  GETTABLEKS R15 R2 K27 ["number"]
  GETTABLEKS R16 R2 K23 ["boolean"]
  CALL R13 3 -1
  CALL R11 -1 -1
  CALL R10 -1 1
  DUPCLOSURE R11 K55 [PROTO_1]
  CAPTURE VAL R2
  GETTABLEKS R12 R2 K22 ["optional"]
  GETTABLEKS R13 R2 K25 ["map"]
  GETTABLEKS R14 R2 K24 ["string"]
  MOVE R15 R11
  CALL R13 2 -1
  CALL R12 -1 1
  GETTABLEKS R13 R2 K56 ["intersection"]
  GETTABLEKS R14 R2 K10 ["strictInterface"]
  DUPTABLE R15 K74 [{"uuid", "timestamp", "lang", "langVersion", "agent", "agentVersion", "threads", "mainThread", "attributes", "annotations", "symbolication", "entryThread", "arch", "fingerprint", "classifiers", "sourceCode", "memory", "modules"}]
  GETTABLEKS R16 R2 K24 ["string"]
  SETTABLEKS R16 R15 K57 ["uuid"]
  GETTABLEKS R16 R2 K27 ["number"]
  SETTABLEKS R16 R15 K58 ["timestamp"]
  GETTABLEKS R16 R2 K24 ["string"]
  SETTABLEKS R16 R15 K59 ["lang"]
  GETTABLEKS R16 R2 K24 ["string"]
  SETTABLEKS R16 R15 K60 ["langVersion"]
  GETTABLEKS R16 R2 K24 ["string"]
  SETTABLEKS R16 R15 K61 ["agent"]
  GETTABLEKS R16 R2 K24 ["string"]
  SETTABLEKS R16 R15 K62 ["agentVersion"]
  GETTABLEKS R16 R2 K25 ["map"]
  GETTABLEKS R17 R2 K24 ["string"]
  MOVE R18 R4
  CALL R16 2 1
  SETTABLEKS R16 R15 K63 ["threads"]
  GETTABLEKS R16 R2 K24 ["string"]
  SETTABLEKS R16 R15 K64 ["mainThread"]
  SETTABLEKS R10 R15 K65 ["attributes"]
  SETTABLEKS R12 R15 K66 ["annotations"]
  GETTABLEKS R16 R2 K22 ["optional"]
  GETTABLEKS R17 R2 K75 ["literal"]
  LOADK R18 K76 ["minidump"]
  CALL R17 1 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K67 ["symbolication"]
  GETTABLEKS R16 R2 K22 ["optional"]
  GETTABLEKS R17 R2 K24 ["string"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K68 ["entryThread"]
  GETTABLEKS R16 R2 K22 ["optional"]
  MOVE R17 R5
  CALL R16 1 1
  SETTABLEKS R16 R15 K69 ["arch"]
  GETTABLEKS R16 R2 K22 ["optional"]
  GETTABLEKS R17 R2 K24 ["string"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K70 ["fingerprint"]
  GETTABLEKS R16 R2 K22 ["optional"]
  GETTABLEKS R17 R2 K32 ["array"]
  GETTABLEKS R18 R2 K24 ["string"]
  CALL R17 1 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K71 ["classifiers"]
  GETTABLEKS R16 R2 K22 ["optional"]
  GETTABLEKS R17 R2 K25 ["map"]
  GETTABLEKS R18 R2 K24 ["string"]
  MOVE R19 R6
  CALL R17 2 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K16 ["sourceCode"]
  GETTABLEKS R16 R2 K22 ["optional"]
  GETTABLEKS R17 R2 K32 ["array"]
  MOVE R18 R8
  CALL R17 1 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K72 ["memory"]
  GETTABLEKS R16 R2 K22 ["optional"]
  GETTABLEKS R17 R2 K32 ["array"]
  MOVE R18 R9
  CALL R17 1 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K73 ["modules"]
  CALL R14 1 1
  DUPCLOSURE R15 K77 [PROTO_2]
  CALL R13 2 1
  GETTABLEKS R14 R2 K10 ["strictInterface"]
  DUPTABLE R15 K84 [{"networking", "accessToken", "processErrorReportMethod", "queueOptions", "generateLogMethod", "logIntervalInSeconds"}]
  GETTABLEKS R16 R2 K85 ["interface"]
  DUPTABLE R17 K88 [{"request", "post"}]
  GETTABLEKS R18 R2 K89 ["callback"]
  SETTABLEKS R18 R17 K86 ["request"]
  GETTABLEKS R18 R2 K89 ["callback"]
  SETTABLEKS R18 R17 K87 ["post"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K78 ["networking"]
  GETTABLEKS R16 R2 K24 ["string"]
  SETTABLEKS R16 R15 K79 ["accessToken"]
  GETTABLEKS R16 R2 K22 ["optional"]
  GETTABLEKS R17 R2 K89 ["callback"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K80 ["processErrorReportMethod"]
  GETTABLEKS R16 R2 K22 ["optional"]
  GETTABLEKS R17 R2 K10 ["strictInterface"]
  DUPTABLE R18 K93 [{"queueTimeLimit", "queueErrorLimit", "queueKeyLimit"}]
  GETTABLEKS R19 R2 K22 ["optional"]
  GETTABLEKS R20 R2 K94 ["numberPositive"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K90 ["queueTimeLimit"]
  GETTABLEKS R19 R2 K22 ["optional"]
  GETTABLEKS R20 R2 K94 ["numberPositive"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K91 ["queueErrorLimit"]
  GETTABLEKS R19 R2 K22 ["optional"]
  GETTABLEKS R20 R2 K94 ["numberPositive"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K92 ["queueKeyLimit"]
  CALL R17 1 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K81 ["queueOptions"]
  GETTABLEKS R16 R2 K22 ["optional"]
  GETTABLEKS R17 R2 K89 ["callback"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K82 ["generateLogMethod"]
  GETTABLEKS R16 R2 K22 ["optional"]
  GETTABLEKS R17 R2 K94 ["numberPositive"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K83 ["logIntervalInSeconds"]
  CALL R14 1 1
  DUPTABLE R15 K107 [{"IBacktraceStack", "IBacktraceThread", "IArch", "ISourceCode", "IPerm", "IMemory", "IModule", "IAttributes", "IAnnotation", "IAnnotations", "IBacktraceReport", "IBacktraceReporter"}]
  SETTABLEKS R3 R15 K95 ["IBacktraceStack"]
  SETTABLEKS R4 R15 K96 ["IBacktraceThread"]
  SETTABLEKS R5 R15 K97 ["IArch"]
  SETTABLEKS R6 R15 K98 ["ISourceCode"]
  SETTABLEKS R7 R15 K99 ["IPerm"]
  SETTABLEKS R8 R15 K100 ["IMemory"]
  SETTABLEKS R9 R15 K101 ["IModule"]
  SETTABLEKS R10 R15 K102 ["IAttributes"]
  SETTABLEKS R11 R15 K103 ["IAnnotation"]
  SETTABLEKS R12 R15 K104 ["IAnnotations"]
  SETTABLEKS R13 R15 K105 ["IBacktraceReport"]
  SETTABLEKS R14 R15 K106 ["IBacktraceReporter"]
  RETURN R15 1
