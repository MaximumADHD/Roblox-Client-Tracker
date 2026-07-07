PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagDebuggerWatchValueTruncation is not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 LENGTH                           R1 R0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["MAX_DISPLAY_VALUE_LENGTH"]
       12 JUMPIFNOTLT                      R2 R1 ; [+17]
       14 LOADN                            R6 1
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K3 ["MAX_DISPLAY_VALUE_LENGTH"]
       18 FASTCALL3                        STRING_SUB R0 R6 R7
       20 MOVE                             R5 R0
       21 GETIMPORT                        R4 K6 [string.sub]
       23 CALL                             R4 3 1
       24 MOVE                             R2 R4
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K7 ["TRUNCATION_SUFFIX"]
       28 CONCAT                           R1 R2 R3
       29 RETURN                           R1 1
       30 RETURN                           R0 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["lower"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R1 K1 ["nameColumn"]
        5 JUMPIFEQKNIL                     R3 ; [+14]
        7 GETIMPORT                        R3 K4 [string.find]
        9 GETTABLEKS                       R4 R1 K1 ["nameColumn"]
       11 NAMECALL                         R4 R4 K0 ["lower"]
       13 CALL                             R4 1 1
       14 MOVE                             R5 R2
       15 CALL                             R3 2 1
       16 JUMPIFEQKNIL                     R3 ; [+3]
       18 LOADB                            R3 1
       19 RETURN                           R3 1
       20 GETTABLEKS                       R3 R1 K5 ["expressionColumn"]
       22 JUMPIFEQKNIL                     R3 ; [+14]
       24 GETIMPORT                        R3 K4 [string.find]
       26 GETTABLEKS                       R4 R1 K5 ["expressionColumn"]
       28 NAMECALL                         R4 R4 K0 ["lower"]
       30 CALL                             R4 1 1
       31 MOVE                             R5 R2
       32 CALL                             R3 2 1
       33 JUMPIFEQKNIL                     R3 ; [+3]
       35 LOADB                            R3 1
       36 RETURN                           R3 1
       37 GETIMPORT                        R3 K4 [string.find]
       39 GETTABLEKS                       R4 R1 K6 ["scopeColumn"]
       41 NAMECALL                         R4 R4 K0 ["lower"]
       43 CALL                             R4 1 1
       44 MOVE                             R5 R2
       45 CALL                             R3 2 1
       46 JUMPIFEQKNIL                     R3 ; [+3]
       48 LOADB                            R3 1
       49 RETURN                           R3 1
       50 GETIMPORT                        R3 K4 [string.find]
       52 GETTABLEKS                       R4 R1 K7 ["valueColumn"]
       54 NAMECALL                         R4 R4 K0 ["lower"]
       56 CALL                             R4 1 1
       57 MOVE                             R5 R2
       58 CALL                             R3 2 1
       59 JUMPIFEQKNIL                     R3 ; [+3]
       61 LOADB                            R3 1
       62 RETURN                           R3 1
       63 GETIMPORT                        R3 K4 [string.find]
       65 GETTABLEKS                       R4 R1 K8 ["dataTypeColumn"]
       67 NAMECALL                         R4 R4 K0 ["lower"]
       69 CALL                             R4 1 1
       70 MOVE                             R5 R2
       71 CALL                             R3 2 1
       72 JUMPIFEQKNIL                     R3 ; [+3]
       74 LOADB                            R3 1
       75 RETURN                           R3 1
       76 LOADB                            R3 0
       77 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 LOADK                            R4 K0 ["isScopeFiltered got a nil node for path %s"]
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R7 R1
        7 GETIMPORT                        R6 K2 [tostring]
        9 CALL                             R6 1 1
       10 NAMECALL                         R4 R4 K3 ["format"]
       12 CALL                             R4 2 -1
       13 FASTCALL                         ASSERT ; [+2]
       14 GETIMPORT                        R2 K5 [assert]
       16 CALL                             R2 -1 0
       17 GETIMPORT                        R2 K7 [ipairs]
       19 MOVE                             R3 R0
       20 CALL                             R2 1 3
       21 FORGPREP_INEXT                   R2
       22 GETIMPORT                        R7 K10 [string.find]
       24 GETTABLEKS                       R8 R1 K11 ["scopeColumn"]
       26 MOVE                             R9 R6
       27 CALL                             R7 2 1
       28 JUMPIFNOT                        R7 ; [+2]
       29 LOADB                            R7 0
       30 RETURN                           R7 1
       31 FORGLOOP                         R2 2 [inext] ; [-10]
       33 LOADB                            R2 1
       34 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["debuggerStateToken"]
        3 GETUPVAL                         R3 1
        4 NAMECALL                         R3 R3 K1 ["getState"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R3 R3 K2 ["Common"]
        9 GETTABLEKS                       R3 R3 K3 ["debuggerConnectionIdToDST"]
       11 GETTABLEKS                       R4 R1 K4 ["debuggerConnectionId"]
       13 GETTABLE                         R2 R3 R4
       14 JUMPIFEQ                         R1 R2 ; [+4]
       16 GETUPVAL                         R2 2
       17 LOADNIL                          R3
       18 CALL                             R2 1 0
       19 GETTABLEKS                       R3 R0 K5 ["Status"]
       21 FASTCALL1                        TOSTRING R3 ; [+2]
       22 GETIMPORT                        R2 K7 [tostring]
       24 CALL                             R2 1 1
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K8 ["DebuggerStatus"]
       28 GETTABLEKS                       R3 R3 K9 ["Success"]
       30 JUMPIFEQ                         R2 R3 ; [+4]
       32 GETUPVAL                         R2 2
       33 LOADNIL                          R3
       34 CALL                             R2 1 0
       35 GETUPVAL                         R2 2
       36 NAMECALL                         R3 R0 K10 ["GetArg"]
       38 CALL                             R3 1 -1
       39 CALL                             R2 -1 0
       40 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R5 R1 K0 ["debuggerStateToken"]
        2 NAMECALL                         R7 R3 K1 ["getState"]
        4 CALL                             R7 1 1
        5 GETTABLEKS                       R7 R7 K2 ["Common"]
        7 GETTABLEKS                       R7 R7 K3 ["debuggerConnectionIdToDST"]
        9 GETTABLEKS                       R8 R5 K4 ["debuggerConnectionId"]
       11 GETTABLE                         R6 R7 R8
       12 JUMPIFEQ                         R5 R6 ; [+4]
       14 MOVE                             R6 R4
       15 LOADNIL                          R7
       16 CALL                             R6 1 0
       17 JUMPIFNOTEQKNIL                  R2 ; [+6]
       19 LOADB                            R7 0
       20 FASTCALL1                        ASSERT R7 ; [+2]
       21 GETIMPORT                        R6 K6 [assert]
       23 CALL                             R6 1 0
       24 GETTABLEKS                       R8 R1 K7 ["threadId"]
       26 NAMECALL                         R6 R2 K8 ["GetThreadById"]
       28 CALL                             R6 2 1
       29 JUMPIFNOTEQKNIL                  R6 ; [+6]
       31 LOADB                            R8 0
       32 FASTCALL1                        ASSERT R8 ; [+2]
       33 GETIMPORT                        R7 K6 [assert]
       35 CALL                             R7 1 0
       36 GETTABLEKS                       R8 R1 K10 ["frameNumber"]
       38 SUBK                             R7 R8 K9 [1]
       39 MOVE                             R10 R7
       40 NAMECALL                         R8 R6 K11 ["GetFrame"]
       42 CALL                             R8 2 1
       43 JUMPIFNOTEQKNIL                  R8 ; [+6]
       45 LOADB                            R10 0
       46 FASTCALL1                        ASSERT R10 ; [+2]
       47 GETIMPORT                        R9 K6 [assert]
       49 CALL                             R9 1 0
       50 MOVE                             R11 R0
       51 MOVE                             R12 R8
       52 NEWCLOSURE                       R13 P0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          UPVAL U0
       57 NAMECALL                         R9 R2 K12 ["EvaluateWatch"]
       59 CALL                             R9 4 0
       60 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 FASTCALL1                        TYPE R3 ; [+3]
        3 MOVE                             R6 R3
        4 GETIMPORT                        R5 K1 [type]
        6 CALL                             R5 1 1
        7 JUMPIFNOTEQKS                    R5 K2 ["boolean"] ; [+12]
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADN                            R5 1
       11 JUMP                             ; [+1]
       12 LOADN                            R5 0
       13 MOVE                             R3 R5
       14 JUMPIFNOT                        R4 ; [+2]
       15 LOADN                            R5 1
       16 JUMP                             ; [+1]
       17 LOADN                            R5 0
       18 MOVE                             R4 R5
       19 JUMP                             ; [+19]
       20 FASTCALL1                        TYPE R3 ; [+3]
       21 MOVE                             R6 R3
       22 GETIMPORT                        R5 K1 [type]
       24 CALL                             R5 1 1
       25 JUMPIFNOTEQKS                    R5 K3 ["string"] ; [+13]
       27 GETIMPORT                        R5 K5 [string.lower]
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K5 [string.lower]
       33 MOVE                             R7 R4
       34 CALL                             R6 1 1
       35 JUMPIFEQ                         R5 R6 ; [+3]
       37 MOVE                             R3 R5
       38 MOVE                             R4 R6
       39 GETIMPORT                        R5 K9 [Enum.SortDirection.Ascending]
       41 JUMPIFNOTEQ                      R2 R5 ; [+6]
       43 JUMPIFLT                         R4 R3 ; [+2]
       45 LOADB                            R5 0 +1
       46 LOADB                            R5 1
       47 RETURN                           R5 1
       48 JUMPIFLT                         R3 R4 ; [+2]
       50 LOADB                            R5 0 +1
       51 LOADB                            R5 1
       52 RETURN                           R5 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R0 R3
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R1 R4
        4 JUMPIFNOTEQ                      R2 R3 ; [+26]
        6 GETUPVAL                         R3 1
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETUPVAL                         R2 1
        9 JUMP                             ; [+1]
       10 GETUPVAL                         R2 2
       11 GETIMPORT                        R3 K1 [ipairs]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 3
       15 FORGPREP_INEXT                   R3
       16 GETTABLE                         R8 R0 R7
       17 GETTABLE                         R9 R1 R7
       18 JUMPIFEQ                         R8 R9 ; [+8]
       20 GETUPVAL                         R8 3
       21 GETTABLE                         R9 R0 R7
       22 GETTABLE                         R10 R1 R7
       23 GETIMPORT                        R11 K5 [Enum.SortDirection.Descending]
       25 CALL                             R8 3 1
       26 RETURN                           R8 1
       27 FORGLOOP                         R3 2 [inext] ; [-12]
       29 LOADB                            R3 0
       30 RETURN                           R3 1
       31 GETUPVAL                         R2 3
       32 GETUPVAL                         R4 0
       33 GETTABLE                         R3 R0 R4
       34 GETUPVAL                         R5 0
       35 GETTABLE                         R4 R1 R5
       36 GETUPVAL                         R5 4
       37 CALL                             R2 3 1
       38 RETURN                           R2 1

PROTO_7:
        0 MOVE                             R6 R2
        1 JUMPIF                           R6 ; [+2]
        2 GETIMPORT                        R6 K3 [Enum.SortDirection.Descending]
        4 LOADNIL                          R7
        5 LOADB                            R8 0
        6 JUMPIFNOTEQKNIL                  R1 ; [+5]
        8 JUMPIFEQKNIL                     R2 ; [+2]
       10 LOADB                            R8 0 +1
       11 LOADB                            R8 1
       12 JUMPIFNOT                        R8 ; [+7]
       13 JUMPIFNOT                        R5 ; [+6]
       14 LENGTH                           R9 R5
       15 LOADN                            R10 0
       16 JUMPIFNOTLT                      R10 R9 ; [+3]
       18 GETTABLEN                        R7 R5 1
       19 JUMP                             ; [+11]
       20 GETTABLE                         R10 R3 R1
       21 JUMPIFNOT                        R10 ; [+2]
       22 MOVE                             R9 R1
       23 JUMPIF                           R9 ; [+1]
       24 LOADN                            R9 1
       25 GETTABLE                         R11 R3 R1
       26 JUMPIFNOT                        R11 ; [+2]
       27 GETTABLE                         R10 R3 R1
       28 JUMPIF                           R10 ; [+1]
       29 GETTABLE                         R10 R3 R9
       30 MOVE                             R7 R10
       31 DUPCLOSURE                       R9 K4 [PROTO_5]
       32 NEWCLOSURE                       R10 P1
       33 CAPTURE                          REF R7
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R9
       37 CAPTURE                          VAL R6
       38 LOADNIL                          R11
       39 JUMPIFNOT                        R4 ; [+9]
       40 LENGTH                           R12 R0
       41 LOADN                            R13 0
       42 JUMPIFNOTLT                      R13 R12 ; [+6]
       44 GETIMPORT                        R12 K7 [table.remove]
       46 MOVE                             R13 R0
       47 CALL                             R12 1 1
       48 MOVE                             R11 R12
       49 GETIMPORT                        R12 K9 [table.sort]
       51 MOVE                             R13 R0
       52 MOVE                             R14 R10
       53 CALL                             R12 2 0
       54 JUMPIFNOT                        R4 ; [+8]
       55 JUMPIFNOT                        R11 ; [+7]
       56 FASTCALL2                        TABLE_INSERT R0 R11 ; [+5]
       58 MOVE                             R13 R0
       59 MOVE                             R14 R11
       60 GETIMPORT                        R12 K11 [table.insert]
       62 CALL                             R12 2 0
       63 CLOSEUPVALS                      R7
       64 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["Constants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Models"]
       24 GETTABLEKS                       R3 R3 K9 ["StepStateBundle"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Flags"]
       33 GETTABLEKS                       R4 R4 K11 ["getFFlagDebuggerWatchValueTruncation"]
       35 CALL                             R3 1 1
       36 NEWTABLE                         R4 8 0
       38 DUPCLOSURE                       R5 K12 [PROTO_0]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R5 R4 K13 ["truncateValue"]
       43 DUPCLOSURE                       R5 K14 [PROTO_1]
       44 SETTABLEKS                       R5 R4 K15 ["textMatchRow"]
       46 DUPCLOSURE                       R5 K16 [PROTO_2]
       47 SETTABLEKS                       R5 R4 K17 ["isScopeFiltered"]
       49 DUPCLOSURE                       R5 K18 [PROTO_4]
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R5 R4 K19 ["evaluateWatchWithCallback"]
       53 DUPCLOSURE                       R5 K20 [PROTO_7]
       54 SETTABLEKS                       R5 R4 K21 ["sortTableByColumnAndOrder"]
       56 RETURN                           R4 1
