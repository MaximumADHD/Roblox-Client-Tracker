PROTO_0:
        0 DUPTABLE                         R4 K4 [{"Id", "Text", "Data", "OnItemClicked"}]
        1 SETTABLEKS                       R1 R4 K0 ["Id"]
        3 LOADK                            R7 K5 ["Common"]
        4 MOVE                             R8 R1
        5 NAMECALL                         R5 R0 K6 ["getText"]
        7 CALL                             R5 3 1
        8 SETTABLEKS                       R5 R4 K1 ["Text"]
       10 SETTABLEKS                       R2 R4 K2 ["Data"]
       12 SETTABLEKS                       R3 R4 K3 ["OnItemClicked"]
       14 RETURN                           R4 1

PROTO_1:
        0 DUPTABLE                         R2 K3 [{"id", "text", "allowBinding"}]
        1 SETTABLEKS                       R1 R2 K0 ["id"]
        3 LOADK                            R5 K4 ["Common"]
        4 MOVE                             R6 R1
        5 NAMECALL                         R3 R0 K5 ["getText"]
        7 CALL                             R3 3 1
        8 SETTABLEKS                       R3 R2 K1 ["text"]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K2 ["allowBinding"]
       13 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["StepActionIds"]
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 DUPTABLE                         R7 K6 [{"id", "text", "allowBinding"}]
       10 SETTABLEKS                       R6 R7 K3 ["id"]
       12 LOADK                            R10 K7 ["Common"]
       13 MOVE                             R11 R6
       14 NAMECALL                         R8 R0 K8 ["getText"]
       16 CALL                             R8 3 1
       17 SETTABLEKS                       R8 R7 K4 ["text"]
       19 LOADB                            R8 0
       20 SETTABLEKS                       R8 R7 K5 ["allowBinding"]
       22 SETTABLE                         R7 R1 R6
       23 FORGLOOP                         R2 2 ; [-15]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K2 ["StepActionIds"]
       28 GETTABLEKS                       R3 R3 K9 ["stepOverActionV2"]
       30 GETTABLE                         R2 R1 R3
       31 LOADK                            R3 K10 ["F10"]
       32 SETTABLEKS                       R3 R2 K11 ["defaultShortcut"]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K2 ["StepActionIds"]
       37 GETTABLEKS                       R3 R3 K12 ["stepIntoActionV2"]
       39 GETTABLE                         R2 R1 R3
       40 LOADK                            R3 K13 ["F11"]
       41 SETTABLEKS                       R3 R2 K11 ["defaultShortcut"]
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K2 ["StepActionIds"]
       46 GETTABLEKS                       R3 R3 K14 ["stepOutActionV2"]
       48 GETTABLE                         R2 R1 R3
       49 LOADK                            R3 K15 ["Shift+F11"]
       50 SETTABLEKS                       R3 R2 K11 ["defaultShortcut"]
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K2 ["StepActionIds"]
       55 GETTABLEKS                       R3 R3 K16 ["simulationResumeActionV2"]
       57 GETTABLE                         R2 R1 R3
       58 LOADK                            R3 K17 ["F5"]
       59 SETTABLEKS                       R3 R2 K11 ["defaultShortcut"]
       61 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["CallstackActionIds"]
        7 CALL                             R3 1 3
        8 FORGPREP_NEXT                    R3
        9 DUPTABLE                         R8 K7 [{"Id", "Text", "Data", "OnItemClicked"}]
       10 SETTABLEKS                       R7 R8 K3 ["Id"]
       12 LOADK                            R11 K8 ["Common"]
       13 MOVE                             R12 R7
       14 NAMECALL                         R9 R0 K9 ["getText"]
       16 CALL                             R9 3 1
       17 SETTABLEKS                       R9 R8 K4 ["Text"]
       19 LOADNIL                          R9
       20 SETTABLEKS                       R9 R8 K5 ["Data"]
       22 SETTABLEKS                       R1 R8 K6 ["OnItemClicked"]
       24 SETTABLE                         R8 R2 R7
       25 FORGLOOP                         R3 2 ; [-17]
       27 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["WatchActionIds"]
        7 CALL                             R4 1 3
        8 FORGPREP_NEXT                    R4
        9 DUPTABLE                         R9 K7 [{"Id", "Text", "Data", "OnItemClicked"}]
       10 SETTABLEKS                       R8 R9 K3 ["Id"]
       12 LOADK                            R12 K8 ["Common"]
       13 MOVE                             R13 R8
       14 NAMECALL                         R10 R0 K9 ["getText"]
       16 CALL                             R10 3 1
       17 SETTABLEKS                       R10 R9 K4 ["Text"]
       19 SETTABLEKS                       R1 R9 K5 ["Data"]
       21 SETTABLEKS                       R2 R9 K6 ["OnItemClicked"]
       23 SETTABLE                         R9 R3 R8
       24 FORGLOOP                         R4 2 ; [-16]
       26 RETURN                           R3 1

PROTO_5:
        0 NEWTABLE                         R5 0 0
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K0 ["BreakpointActions"]
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K1 ["LogpointActions"]
        9 GETIMPORT                        R7 K3 [pairs]
       11 MOVE                             R8 R6
       12 CALL                             R7 1 3
       13 FORGPREP_NEXT                    R7
       14 DUPTABLE                         R12 K8 [{"Id", "Text", "Data", "OnItemClicked"}]
       15 SETTABLEKS                       R11 R12 K4 ["Id"]
       17 LOADK                            R15 K9 ["Common"]
       18 MOVE                             R16 R11
       19 NAMECALL                         R13 R0 K10 ["getText"]
       21 CALL                             R13 3 1
       22 SETTABLEKS                       R13 R12 K5 ["Text"]
       24 SETTABLEKS                       R3 R12 K6 ["Data"]
       26 SETTABLEKS                       R4 R12 K7 ["OnItemClicked"]
       28 SETTABLE                         R12 R5 R11
       29 FORGLOOP                         R7 2 ; [-16]
       31 GETIMPORT                        R7 K3 [pairs]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K11 ["CommonActions"]
       36 CALL                             R7 1 3
       37 FORGPREP_NEXT                    R7
       38 DUPTABLE                         R12 K8 [{"Id", "Text", "Data", "OnItemClicked"}]
       39 SETTABLEKS                       R11 R12 K4 ["Id"]
       41 LOADK                            R15 K9 ["Common"]
       42 MOVE                             R16 R11
       43 NAMECALL                         R13 R0 K10 ["getText"]
       45 CALL                             R13 3 1
       46 SETTABLEKS                       R13 R12 K5 ["Text"]
       48 SETTABLEKS                       R3 R12 K6 ["Data"]
       50 SETTABLEKS                       R4 R12 K7 ["OnItemClicked"]
       52 SETTABLE                         R12 R5 R11
       53 FORGLOOP                         R7 2 ; [-16]
       55 JUMPIFNOT                        R1 ; [+17]
       56 JUMPIFNOT                        R2 ; [+8]
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K1 ["LogpointActions"]
       60 GETTABLEKS                       R7 R7 K12 ["EnableLogpoint"]
       62 LOADNIL                          R8
       63 SETTABLE                         R8 R5 R7
       64 RETURN                           R5 1
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K0 ["BreakpointActions"]
       68 GETTABLEKS                       R7 R7 K13 ["EnableBreakpoint"]
       70 LOADNIL                          R8
       71 SETTABLE                         R8 R5 R7
       72 RETURN                           R5 1
       73 JUMPIFNOT                        R2 ; [+8]
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R7 R7 K1 ["LogpointActions"]
       77 GETTABLEKS                       R7 R7 K14 ["DisableLogpoint"]
       79 LOADNIL                          R8
       80 SETTABLE                         R8 R5 R7
       81 RETURN                           R5 1
       82 GETUPVAL                         R7 0
       83 GETTABLEKS                       R7 R7 K0 ["BreakpointActions"]
       85 GETTABLEKS                       R7 R7 K15 ["DisableBreakpoint"]
       87 LOADNIL                          R8
       88 SETTABLE                         R8 R5 R7
       89 RETURN                           R5 1

PROTO_6:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["LogpointActionsOrder"]
        5 CALL                             R2 1 1
        6 JUMP                             ; [+5]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["BreakpointActionsOrder"]
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R0 ; [+8]
       13 GETIMPORT                        R3 K4 [table.remove]
       15 MOVE                             R4 R2
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K5 ["EnableKey"]
       19 CALL                             R3 2 0
       20 RETURN                           R2 1
       21 GETIMPORT                        R3 K4 [table.remove]
       23 MOVE                             R4 R2
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K6 ["DisableKey"]
       27 CALL                             R3 2 0
       28 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K1 [pairs]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 3
        9 FORGPREP_NEXT                    R3
       10 SETTABLE                         R7 R1 R6
       11 FORGLOOP                         R3 2 ; [-2]
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETTABLEKS                       R3 R2 K8 ["deepCopy"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETIMPORT                        R5 K1 [script]
       24 GETTABLEKS                       R5 R5 K2 ["Parent"]
       26 GETTABLEKS                       R5 R5 K9 ["Constants"]
       28 CALL                             R4 1 1
       29 DUPCLOSURE                       R5 K10 [PROTO_0]
       30 DUPCLOSURE                       R6 K11 [PROTO_1]
       31 DUPCLOSURE                       R7 K12 [PROTO_2]
       32 CAPTURE                          VAL R4
       33 DUPCLOSURE                       R8 K13 [PROTO_3]
       34 CAPTURE                          VAL R4
       35 DUPCLOSURE                       R9 K14 [PROTO_4]
       36 CAPTURE                          VAL R4
       37 DUPCLOSURE                       R10 K15 [PROTO_5]
       38 CAPTURE                          VAL R4
       39 DUPCLOSURE                       R11 K16 [PROTO_6]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 DUPCLOSURE                       R12 K17 [PROTO_7]
       43 CAPTURE                          VAL R7
       44 DUPTABLE                         R13 K23 [{"getCallstackActions", "getWatchActions", "getBreakpointActions", "getActionsWithShortcuts", "getBreakpointActionsOrder"}]
       45 SETTABLEKS                       R8 R13 K18 ["getCallstackActions"]
       47 SETTABLEKS                       R9 R13 K19 ["getWatchActions"]
       49 SETTABLEKS                       R10 R13 K20 ["getBreakpointActions"]
       51 SETTABLEKS                       R12 R13 K21 ["getActionsWithShortcuts"]
       53 SETTABLEKS                       R11 R13 K22 ["getBreakpointActionsOrder"]
       55 RETURN                           R13 1
