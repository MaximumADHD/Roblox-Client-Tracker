PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R2 ; [+11]
        4 GETIMPORT                        R2 K2 [print]
        6 LOADK                            R4 K3 ["[JobStore] setJob %* %*"]
        7 MOVE                             R6 R0
        8 GETTABLEKS                       R7 R1 K4 ["status"]
       10 NAMECALL                         R4 R4 K5 ["format"]
       12 CALL                             R4 3 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 1
       16 SETTABLE                         R1 R2 R0
       17 GETUPVAL                         R2 2
       18 MOVE                             R4 R0
       19 NAMECALL                         R2 R2 K6 ["Fire"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 RETURN                           R1 1

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R2
        2 JUMP                             ; [+2]
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R0
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["FFlagDebugLogAssistantUI"]
       10 JUMPIFNOT                        R3 ; [+11]
       11 GETIMPORT                        R3 K2 [print]
       13 LOADK                            R5 K3 ["[JobStore] updateJob %* %*"]
       14 MOVE                             R7 R0
       15 GETTABLEKS                       R8 R2 K4 ["status"]
       17 NAMECALL                         R5 R5 K5 ["format"]
       19 CALL                             R5 3 1
       20 MOVE                             R4 R5
       21 CALL                             R3 1 0
       22 MOVE                             R3 R1
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 SETTABLE                         R7 R2 R6
       27 FORGLOOP                         R3 2 ; [-2]
       29 GETUPVAL                         R3 2
       30 MOVE                             R5 R0
       31 NAMECALL                         R3 R3 K6 ["Fire"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R3 K3 ["[JobStore] removeJob %*"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K4 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 1
       14 LOADNIL                          R2
       15 SETTABLE                         R2 R1 R0
       16 GETUPVAL                         R1 2
       17 LOADNIL                          R2
       18 SETTABLE                         R2 R1 R0
       19 GETUPVAL                         R1 3
       20 MOVE                             R3 R0
       21 NAMECALL                         R1 R1 K5 ["Fire"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R2 0
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["FFlagDebugLogAssistantUI"]
        8 JUMPIFNOT                        R2 ; [+9]
        9 GETIMPORT                        R2 K2 [print]
       11 LOADK                            R4 K3 ["[JobStore] cancelJob %*"]
       12 MOVE                             R6 R0
       13 NAMECALL                         R4 R4 K4 ["format"]
       15 CALL                             R4 2 1
       16 MOVE                             R3 R4
       17 CALL                             R2 1 0
       18 LOADK                            R4 K5 ["Cancelled by user"]
       19 NAMECALL                         R2 R1 K6 ["abort"]
       21 CALL                             R2 2 0
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K0 ["Connect"]
        6 CALL                             R2 2 1
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R2
        9 RETURN                           R3 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["Connect"]
        5 CALL                             R1 2 1
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R7 R5 K0 ["status"]
        8 GETUPVAL                         R9 1
        9 GETTABLE                         R8 R9 R7
       10 JUMPIFEQKB                       R8 TRUE ; [+2]
       12 LOADB                            R6 0 +1
       13 LOADB                            R6 1
       14 JUMPIFNOT                        R6 ; [+2]
       15 LOADB                            R6 1
       16 SETTABLE                         R6 R0 R4
       17 FORGLOOP                         R1 2 ; [-12]
       19 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_15:
        0 LOADNIL                          R3
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          REF R3
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["abortSignal"]
        6 NEWCLOSURE                       R7 P1
        7 CAPTURE                          REF R3
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R5 R5 K1 ["Connect"]
       11 CALL                             R5 2 1
       12 MOVE                             R3 R5
       13 MOVE                             R5 R2
       14 MOVE                             R6 R4
       15 CALL                             R5 1 0
       16 CLOSEUPVALS                      R3
       17 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R0
        3 JUMP                             ; [+2]
        4 GETUPVAL                         R2 1
        5 GETTABLE                         R0 R2 R1
        6 JUMPIFNOT                        R0 ; [+9]
        7 GETTABLEKS                       R2 R0 K0 ["status"]
        9 GETUPVAL                         R4 2
       10 GETTABLE                         R3 R4 R2
       11 JUMPIFEQKB                       R3 TRUE ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 JUMPIFNOT                        R1 ; [+8]
       16 GETUPVAL                         R1 3
       17 JUMPIFNOT                        R1 ; [+4]
       18 GETUPVAL                         R1 3
       19 CALL                             R1 0 0
       20 LOADNIL                          R1
       21 SETUPVAL                         R1 3
       22 GETUPVAL                         R1 4
       23 CALL                             R1 0 0
       24 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_19:
        0 LOADNIL                          R3
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          REF R3
        3 CAPTURE                          VAL R0
        4 GETUPVAL                         R6 0
        5 JUMPIF                           R6 ; [+2]
        6 LOADNIL                          R5
        7 JUMP                             ; [+2]
        8 GETUPVAL                         R7 1
        9 GETTABLE                         R5 R7 R6
       10 JUMPIFNOT                        R5 ; [+9]
       11 GETTABLEKS                       R7 R5 K0 ["status"]
       13 GETUPVAL                         R9 2
       14 GETTABLE                         R8 R9 R7
       15 JUMPIFEQKB                       R8 TRUE ; [+2]
       17 LOADB                            R6 0 +1
       18 LOADB                            R6 1
       19 JUMPIFNOT                        R6 ; [+8]
       20 JUMPIFNOT                        R3 ; [+3]
       21 MOVE                             R6 R3
       22 CALL                             R6 0 0
       23 LOADNIL                          R3
       24 MOVE                             R6 R0
       25 CALL                             R6 0 0
       26 CLOSEUPVALS                      R3
       27 RETURN                           R0 0
       28 GETUPVAL                         R6 0
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          REF R3
       34 CAPTURE                          VAL R0
       35 GETUPVAL                         R8 3
       36 NEWCLOSURE                       R10 P2
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R7
       39 NAMECALL                         R8 R8 K1 ["Connect"]
       41 CALL                             R8 2 1
       42 NEWCLOSURE                       R3 P3
       43 CAPTURE                          VAL R8
       44 MOVE                             R6 R2
       45 NEWCLOSURE                       R7 P4
       46 CAPTURE                          REF R3
       47 CALL                             R6 1 0
       48 CLOSEUPVALS                      R3
       49 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R3 K2 [table.create]
        2 LOADN                            R4 3
        3 CALL                             R3 1 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 MOVE                             R5 R3
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K3 ["delay"]
        9 MOVE                             R7 R1
       10 CALL                             R6 1 -1
       11 FASTCALL                         TABLE_INSERT ; [+2]
       12 GETIMPORT                        R4 K5 [table.insert]
       14 CALL                             R4 -1 0
       15 JUMPIFNOT                        R2 ; [+15]
       16 GETTABLEKS                       R4 R2 K6 ["aborted"]
       18 JUMPIFNOT                        R4 ; [+1]
       19 RETURN                           R0 0
       20 MOVE                             R5 R3
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K7 ["new"]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R2
       26 CALL                             R6 1 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R4 K5 [table.insert]
       30 CALL                             R4 -1 0
       31 MOVE                             R5 R3
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K7 ["new"]
       35 NEWCLOSURE                       R7 P1
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CALL                             R6 1 -1
       41 FASTCALL                         TABLE_INSERT ; [+2]
       42 GETIMPORT                        R4 K5 [table.insert]
       44 CALL                             R4 -1 0
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K8 ["race"]
       48 MOVE                             R5 R3
       49 CALL                             R4 1 1
       50 NAMECALL                         R4 R4 K9 ["await"]
       52 CALL                             R4 1 0
       53 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["aborted"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R0 K0 ["aborted"]
        7 ORK                              R2 R1 K1 ["Aborted"]
        8 SETTABLEKS                       R2 R0 K2 ["reason"]
       10 GETTABLEKS                       R2 R0 K3 ["abortSignal"]
       12 GETTABLEKS                       R4 R0 K2 ["reason"]
       14 NAMECALL                         R2 R2 K4 ["Fire"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 DUPTABLE                         R2 K6 [{[1] = False, ["reason"] = , ["abortSignal"], ["abort"]}]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K7 ["new"]
        8 CALL                             R3 0 1
        9 SETTABLEKS                       R3 R2 K4 ["abortSignal"]
       11 DUPCLOSURE                       R3 K8 [PROTO_21]
       12 SETTABLEKS                       R3 R2 K5 ["abort"]
       14 GETUPVAL                         R3 0
       15 SETTABLE                         R2 R3 R0
       16 RETURN                           R2 1

PROTO_23:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K2 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["Promise"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["Signal"]
       32 CALL                             R4 1 1
       33 DUPTABLE                         R5 K16 [{["Running"] = "Running", ["Completed"] = "Completed", ["Failed"] = "Failed", ["Cancelled"] = "Cancelled", ["Timeout"] = "Timeout"}]
       34 NEWTABLE                         R6 4 0
       36 GETTABLEKS                       R7 R5 K12 ["Completed"]
       38 LOADB                            R8 1
       39 SETTABLE                         R8 R6 R7
       40 GETTABLEKS                       R7 R5 K13 ["Failed"]
       42 LOADB                            R8 1
       43 SETTABLE                         R8 R6 R7
       44 GETTABLEKS                       R7 R5 K14 ["Cancelled"]
       46 LOADB                            R8 1
       47 SETTABLE                         R8 R6 R7
       48 GETTABLEKS                       R7 R4 K17 ["new"]
       50 CALL                             R7 0 1
       51 NEWTABLE                         R8 0 0
       53 NEWTABLE                         R9 0 0
       55 DUPCLOSURE                       R10 K18 [PROTO_0]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R7
       59 DUPCLOSURE                       R11 K19 [PROTO_1]
       60 CAPTURE                          VAL R8
       61 DUPCLOSURE                       R12 K20 [PROTO_2]
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R7
       65 DUPCLOSURE                       R13 K21 [PROTO_3]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R7
       70 DUPCLOSURE                       R14 K22 [PROTO_4]
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R1
       73 DUPCLOSURE                       R15 K23 [PROTO_7]
       74 CAPTURE                          VAL R7
       75 DUPCLOSURE                       R16 K24 [PROTO_10]
       76 CAPTURE                          VAL R7
       77 DUPCLOSURE                       R17 K25 [PROTO_11]
       78 CAPTURE                          VAL R6
       79 DUPCLOSURE                       R18 K26 [PROTO_12]
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R6
       82 DUPCLOSURE                       R19 K27 [PROTO_20]
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 DUPCLOSURE                       R20 K28 [PROTO_22]
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R4
       90 DUPCLOSURE                       R21 K29 [PROTO_23]
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R9
       93 DUPTABLE                         R22 K43 [{"JobStatus", "setJob", "getJob", "updateJob", "removeJob", "cancelJob", "subscribe", "subscribeAll", "isTerminal", "getTerminalJobIds", "waitForTerminal", "getOrCreateController", "clear"}]
       94 SETTABLEKS                       R5 R22 K30 ["JobStatus"]
       96 SETTABLEKS                       R10 R22 K31 ["setJob"]
       98 SETTABLEKS                       R11 R22 K32 ["getJob"]
      100 SETTABLEKS                       R12 R22 K33 ["updateJob"]
      102 SETTABLEKS                       R13 R22 K34 ["removeJob"]
      104 SETTABLEKS                       R14 R22 K35 ["cancelJob"]
      106 SETTABLEKS                       R15 R22 K36 ["subscribe"]
      108 SETTABLEKS                       R16 R22 K37 ["subscribeAll"]
      110 SETTABLEKS                       R17 R22 K38 ["isTerminal"]
      112 SETTABLEKS                       R18 R22 K39 ["getTerminalJobIds"]
      114 SETTABLEKS                       R19 R22 K40 ["waitForTerminal"]
      116 SETTABLEKS                       R20 R22 K41 ["getOrCreateController"]
      118 SETTABLEKS                       R21 R22 K42 ["clear"]
      120 RETURN                           R22 1
