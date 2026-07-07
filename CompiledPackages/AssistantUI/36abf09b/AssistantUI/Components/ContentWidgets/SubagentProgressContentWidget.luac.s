PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getStreamTransform"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 JUMPIFNOTEQKS                    R1 K1 ["none"] ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["getStreamTransform"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 JUMPIFNOTEQKS                    R2 K1 ["none"] ; [+3]
        9 LOADNIL                          R0
       10 JUMP                             ; [+1]
       11 MOVE                             R0 R2
       12 JUMPIF                           R0 ; [+3]
       13 LOADNIL                          R1
       14 LOADNIL                          R2
       15 RETURN                           R1 2
       16 GETTABLEKS                       R1 R0 K2 ["transformInitialContent"]
       18 GETUPVAL                         R2 2
       19 CALL                             R1 1 1
       20 JUMPIF                           R1 ; [+3]
       21 LOADNIL                          R2
       22 LOADNIL                          R3
       23 RETURN                           R2 2
       24 GETTABLEKS                       R2 R0 K3 ["getTransformPreExecuteFn"]
       26 JUMPIFNOT                        R2 ; [+8]
       27 GETTABLEKS                       R2 R0 K3 ["getTransformPreExecuteFn"]
       29 GETUPVAL                         R3 2
       30 CALL                             R2 1 1
       31 JUMPIFNOT                        R2 ; [+3]
       32 MOVE                             R3 R2
       33 MOVE                             R4 R1
       34 CALL                             R3 1 0
       35 GETTABLEKS                       R2 R1 K4 ["type"]
       37 MOVE                             R3 R1
       38 RETURN                           R2 2

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K0 ["getStreamTransform"]
        7 MOVE                             R7 R0
        8 CALL                             R6 1 1
        9 JUMPIFNOT                        R6 ; [+2]
       10 JUMPIFNOTEQKS                    R6 K1 ["none"] ; [+3]
       12 LOADNIL                          R5
       13 JUMP                             ; [+1]
       14 MOVE                             R5 R6
       15 JUMPIF                           R5 ; [+3]
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 JUMP                             ; [+22]
       19 GETTABLEKS                       R6 R5 K2 ["transformInitialContent"]
       21 MOVE                             R7 R1
       22 CALL                             R6 1 1
       23 JUMPIF                           R6 ; [+3]
       24 LOADNIL                          R3
       25 LOADNIL                          R4
       26 JUMP                             ; [+14]
       27 GETTABLEKS                       R7 R5 K3 ["getTransformPreExecuteFn"]
       29 JUMPIFNOT                        R7 ; [+8]
       30 GETTABLEKS                       R7 R5 K3 ["getTransformPreExecuteFn"]
       32 MOVE                             R8 R1
       33 CALL                             R7 1 1
       34 JUMPIFNOT                        R7 ; [+3]
       35 MOVE                             R8 R7
       36 MOVE                             R9 R6
       37 CALL                             R8 1 0
       38 GETTABLEKS                       R3 R6 K4 ["type"]
       40 MOVE                             R4 R6
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K5 ["FFlagAssistantSplitToolsAndWidgets"]
       44 JUMPIFNOT                        R5 ; [+14]
       45 JUMPIF                           R3 ; [+13]
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R5 R5 K6 ["get"]
       49 MOVE                             R6 R0
       50 CALL                             R5 1 1
       51 MOVE                             R3 R5
       52 MOVE                             R5 R3
       53 DUPTABLE                         R6 K8 [{"type", "toolUse"}]
       54 SETTABLEKS                       R3 R6 K4 ["type"]
       56 SETTABLEKS                       R1 R6 K7 ["toolUse"]
       58 RETURN                           R5 2
       59 RETURN                           R3 2

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["getStreamTransform"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 JUMPIFNOTEQKS                    R2 K1 ["none"] ; [+3]
        9 LOADNIL                          R0
       10 JUMP                             ; [+1]
       11 MOVE                             R0 R2
       12 JUMPIF                           R0 ; [+2]
       13 GETUPVAL                         R1 2
       14 RETURN                           R1 1
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K2 ["Dictionary"]
       18 GETTABLEKS                       R1 R1 K3 ["join"]
       20 GETUPVAL                         R2 2
       21 DUPTABLE                         R3 K5 [{"toolResult"}]
       22 GETUPVAL                         R4 4
       23 SETTABLEKS                       R4 R3 K4 ["toolResult"]
       25 CALL                             R1 2 1
       26 GETTABLEKS                       R2 R0 K6 ["getTransformResultFn"]
       28 JUMPIFNOT                        R2 ; [+8]
       29 GETTABLEKS                       R2 R0 K6 ["getTransformResultFn"]
       31 GETUPVAL                         R3 4
       32 CALL                             R2 1 1
       33 JUMPIFNOT                        R2 ; [+3]
       34 MOVE                             R3 R2
       35 MOVE                             R4 R1
       36 CALL                             R3 1 0
       37 RETURN                           R1 1

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R2
        6 MOVE                             R4 R3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantSplitToolsAndWidgets"]
       11 JUMPIFNOT                        R5 ; [+11]
       12 JUMPIFNOTEQ                      R4 R1 ; [+10]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K1 ["assign"]
       17 MOVE                             R6 R1
       18 DUPTABLE                         R7 K3 [{"toolResult"}]
       19 SETTABLEKS                       R2 R7 K2 ["toolResult"]
       21 CALL                             R5 2 -1
       22 RETURN                           R5 -1
       23 RETURN                           R4 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K3 ["kind"]
       10 JUMPIFNOTEQKS                    R7 K4 ["tool"] ; [+26]
       12 GETTABLEKS                       R7 R6 K5 ["contentId"]
       14 GETUPVAL                         R8 0
       15 JUMPIFNOTEQ                      R7 R8 ; [+21]
       17 GETIMPORT                        R7 K2 [table.clone]
       19 GETTABLEKS                       R8 R6 K6 ["contentProps"]
       21 CALL                             R7 1 1
       22 GETUPVAL                         R8 1
       23 MOVE                             R9 R7
       24 CALL                             R8 1 0
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K7 ["Dictionary"]
       28 GETTABLEKS                       R8 R8 K8 ["join"]
       30 MOVE                             R9 R6
       31 DUPTABLE                         R10 K9 [{"contentProps"}]
       32 SETTABLEKS                       R7 R10 K6 ["contentProps"]
       34 CALL                             R8 2 1
       35 SETTABLE                         R8 R1 R5
       36 RETURN                           R1 1
       37 FORGLOOP                         R2 2 ; [-30]
       39 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 DUPTABLE                         R4 K12 [{["kind"] = "tool", ["contentId"], ["toolUseId"], ["toolName"], ["contentType"], ["contentProps"], ["generating"], ["streaming"]}]
        5 GETUPVAL                         R5 0
        6 LOADB                            R7 0
        7 NAMECALL                         R5 R5 K13 ["GenerateGUID"]
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K5 ["contentId"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K6 ["toolUseId"]
       15 SETTABLEKS                       R5 R4 K6 ["toolUseId"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K7 ["toolName"]
       20 SETTABLEKS                       R5 R4 K7 ["toolName"]
       22 GETUPVAL                         R5 2
       23 SETTABLEKS                       R5 R4 K8 ["contentType"]
       25 GETUPVAL                         R5 3
       26 SETTABLEKS                       R5 R4 K9 ["contentProps"]
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K14 ["FFlagAssistantSplitToolsAndWidgets"]
       31 JUMPIFNOT                        R6 ; [+2]
       32 LOADNIL                          R5
       33 JUMP                             ; [+1]
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K10 ["generating"]
       37 GETUPVAL                         R6 4
       38 GETTABLEKS                       R6 R6 K14 ["FFlagAssistantSplitToolsAndWidgets"]
       40 JUMPIFNOT                        R6 ; [+3]
       41 NEWTABLE                         R5 0 0
       43 JUMP                             ; [+1]
       44 LOADNIL                          R5
       45 SETTABLEKS                       R5 R4 K11 ["streaming"]
       47 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       49 MOVE                             R3 R1
       50 GETIMPORT                        R2 K16 [table.insert]
       52 CALL                             R2 2 0
       53 RETURN                           R1 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K3 ["kind"]
       10 JUMPIFNOTEQKS                    R7 K4 ["tool"] ; [+49]
       12 GETTABLEKS                       R7 R6 K5 ["toolUseId"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K5 ["toolUseId"]
       17 JUMPIFNOTEQ                      R7 R8 ; [+42]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K6 ["Dictionary"]
       22 GETTABLEKS                       R7 R7 K7 ["join"]
       24 MOVE                             R8 R6
       25 DUPTABLE                         R9 K11 [{"contentProps", "generating", "streaming"}]
       26 GETUPVAL                         R10 2
       27 GETTABLEKS                       R11 R6 K12 ["toolName"]
       29 GETTABLEKS                       R12 R6 K8 ["contentProps"]
       31 GETUPVAL                         R13 0
       32 GETTABLEKS                       R13 R13 K13 ["toolResult"]
       34 CALL                             R10 3 1
       35 SETTABLEKS                       R10 R9 K8 ["contentProps"]
       37 GETUPVAL                         R11 3
       38 GETTABLEKS                       R11 R11 K14 ["FFlagAssistantSplitToolsAndWidgets"]
       40 JUMPIFNOT                        R11 ; [+2]
       41 LOADNIL                          R10
       42 JUMP                             ; [+1]
       43 LOADB                            R10 0
       44 SETTABLEKS                       R10 R9 K9 ["generating"]
       46 GETUPVAL                         R11 3
       47 GETTABLEKS                       R11 R11 K14 ["FFlagAssistantSplitToolsAndWidgets"]
       49 JUMPIFNOT                        R11 ; [+4]
       50 GETUPVAL                         R10 1
       51 GETTABLEKS                       R10 R10 K15 ["None"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R10
       55 SETTABLEKS                       R10 R9 K10 ["streaming"]
       57 CALL                             R7 2 1
       58 SETTABLE                         R7 R1 R5
       59 RETURN                           R1 1
       60 FORGLOOP                         R2 2 ; [-53]
       62 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADB                            R2 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R7 K3 ["kind"]
       11 JUMPIFNOTEQKS                    R8 K4 ["text"] ; [+24]
       13 GETTABLEKS                       R8 R7 K5 ["contentId"]
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R9 R9 K6 ["textContentId"]
       18 JUMPIFNOTEQ                      R8 R9 ; [+17]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K7 ["Dictionary"]
       23 GETTABLEKS                       R8 R8 K8 ["join"]
       25 MOVE                             R9 R7
       26 DUPTABLE                         R10 K9 [{"text"}]
       27 GETUPVAL                         R11 0
       28 GETTABLEKS                       R11 R11 K4 ["text"]
       30 SETTABLEKS                       R11 R10 K4 ["text"]
       32 CALL                             R8 2 1
       33 SETTABLE                         R8 R1 R6
       34 LOADB                            R2 1
       35 JUMP                             ; [+2]
       36 FORGLOOP                         R3 2 ; [-28]
       38 JUMPIF                           R2 ; [+17]
       39 DUPTABLE                         R5 K10 [{["kind"] = "text", ["contentId"], ["text"]}]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K6 ["textContentId"]
       43 SETTABLEKS                       R6 R5 K5 ["contentId"]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K4 ["text"]
       48 SETTABLEKS                       R6 R5 K4 ["text"]
       50 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       52 MOVE                             R4 R1
       53 GETIMPORT                        R3 K12 [table.insert]
       55 CALL                             R3 2 0
       56 RETURN                           R1 1

PROTO_10:
        0 JUMPIFNOTEQKS                    R0 K0 ["toolStart"] ; [+30]
        2 DUPTABLE                         R2 K6 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
        3 GETTABLEKS                       R3 R1 K7 ["toolUseId"]
        5 SETTABLEKS                       R3 R2 K3 ["id"]
        7 GETTABLEKS                       R3 R1 K8 ["toolName"]
        9 SETTABLEKS                       R3 R2 K4 ["name"]
       11 GETTABLEKS                       R3 R1 K5 ["input"]
       13 SETTABLEKS                       R3 R2 K5 ["input"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R4 R1 K8 ["toolName"]
       18 MOVE                             R5 R2
       19 CALL                             R3 2 2
       20 JUMPIFNOT                        R3 ; [+27]
       21 JUMPIFNOT                        R4 ; [+26]
       22 GETUPVAL                         R5 1
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 CAPTURE                          UPVAL U3
       29 CALL                             R5 1 0
       30 RETURN                           R0 0
       31 JUMPIFNOTEQKS                    R0 K9 ["toolComplete"] ; [+9]
       33 GETUPVAL                         R2 1
       34 NEWCLOSURE                       R3 P1
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U3
       39 CALL                             R2 1 0
       40 RETURN                           R0 0
       41 JUMPIFNOTEQKS                    R0 K10 ["textDelta"] ; [+6]
       43 GETUPVAL                         R2 1
       44 NEWCLOSURE                       R3 P2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U4
       47 CALL                             R2 1 0
       48 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["contentId"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["getSignal"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["contentId"]
       11 CALL                             R0 1 1
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U7
       19 NAMECALL                         R1 R0 K2 ["Connect"]
       21 CALL                             R1 2 1
       22 NEWCLOSURE                       R2 P1
       23 CAPTURE                          VAL R1
       24 RETURN                           R2 1

PROTO_13:
        0 DUPTABLE                         R0 K2 [{"Running", "Completed"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["Subagent"]
        3 LOADK                            R4 K0 ["Running"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Running"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["Subagent"]
       11 LOADK                            R4 K1 ["Completed"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Completed"]
       17 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R3 R3 K1 ["Y"]
        5 FASTCALL2K                       MATH_MIN R3 K2 ; [+4]
        7 LOADK                            R4 K2 [120]
        8 GETIMPORT                        R2 K5 [math.min]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 1
       13 JUMPIFNOT                        R1 ; [+21]
       14 GETIMPORT                        R1 K8 [Vector2.new]
       16 LOADN                            R2 0
       17 LOADN                            R4 0
       18 GETTABLEKS                       R6 R0 K0 ["AbsoluteCanvasSize"]
       20 GETTABLEKS                       R6 R6 K1 ["Y"]
       22 GETTABLEKS                       R7 R0 K9 ["AbsoluteSize"]
       24 GETTABLEKS                       R7 R7 K1 ["Y"]
       26 SUB                              R5 R6 R7
       27 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       29 GETIMPORT                        R3 K11 [math.max]
       31 CALL                             R3 2 1
       32 CALL                             R1 2 1
       33 SETTABLEKS                       R1 R0 K12 ["CanvasPosition"]
       35 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 LOADN                            R4 2
        5 GETTABLEKS                       R8 R2 K1 ["Padding"]
        7 GETTABLEKS                       R8 R8 K2 ["Small"]
        9 MULK                             R7 R8 K0 [0.5]
       10 ADDK                             R6 R7 K0 [0.5]
       11 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       12 GETIMPORT                        R5 K5 [math.floor]
       14 CALL                             R5 1 1
       15 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       17 GETIMPORT                        R3 K7 [math.max]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K8 ["useState"]
       23 NEWTABLE                         R5 0 0
       25 CALL                             R4 1 2
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K9 ["useCallback"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R5
       31 CAPTURE                          UPVAL U3
       32 NEWTABLE                         R8 0 0
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K10 ["useEffect"]
       38 NEWCLOSURE                       R8 P1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          VAL R5
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U8
       47 NEWTABLE                         R9 0 1
       49 GETTABLEKS                       R10 R0 K11 ["contentId"]
       51 SETLIST                          R9 R10 1 [1]
       53 CALL                             R7 2 0
       54 GETTABLEKS                       R8 R0 K12 ["inProgress"]
       56 JUMPIFEQKB                       R8 TRUE ; [+2]
       58 LOADB                            R7 0 +1
       59 LOADB                            R7 1
       60 LOADB                            R8 0
       61 GETTABLEKS                       R9 R0 K13 ["errorMessage"]
       63 JUMPIFEQKNIL                     R9 ; [+7]
       65 GETTABLEKS                       R9 R0 K13 ["errorMessage"]
       67 JUMPIFNOTEQKS                    R9 K14 [""] ; [+2]
       69 LOADB                            R8 0 +1
       70 LOADB                            R8 1
       71 GETUPVAL                         R9 2
       72 GETTABLEKS                       R9 R9 K15 ["useMemo"]
       74 DUPCLOSURE                       R10 K16 [PROTO_13]
       75 CAPTURE                          UPVAL U9
       76 NEWTABLE                         R11 0 1
       78 GETUPVAL                         R12 9
       79 GETTABLEKS                       R12 R12 K17 ["locale"]
       81 SETLIST                          R11 R12 1 [1]
       83 CALL                             R9 2 1
       84 GETTABLEKS                       R10 R0 K18 ["description"]
       86 JUMPIFNOTEQKS                    R10 K14 [""] ; [+7]
       88 JUMPIFNOT                        R7 ; [+3]
       89 GETTABLEKS                       R10 R9 K19 ["Running"]
       91 JUMP                             ; [+2]
       92 GETTABLEKS                       R10 R9 K20 ["Completed"]
       94 NEWTABLE                         R11 0 0
       96 MOVE                             R12 R4
       97 LOADNIL                          R13
       98 LOADNIL                          R14
       99 FORGPREP                         R12
      100 GETTABLEKS                       R17 R16 K21 ["kind"]
      102 JUMPIFNOTEQKS                    R17 K22 ["tool"] ; [+75]
      104 GETUPVAL                         R18 7
      105 GETTABLEKS                       R18 R18 K23 ["FFlagAssistantSplitToolsAndWidgets"]
      107 JUMPIFNOT                        R18 ; [+7]
      108 GETUPVAL                         R17 10
      109 GETTABLEKS                       R17 R17 K24 ["get"]
      111 GETTABLEKS                       R18 R16 K25 ["contentType"]
      113 CALL                             R17 1 1
      114 JUMP                             ; [+6]
      115 GETUPVAL                         R17 11
      116 GETTABLEKS                       R17 R17 K24 ["get"]
      118 GETTABLEKS                       R18 R16 K25 ["contentType"]
      120 CALL                             R17 1 1
      121 JUMPIFNOT                        R17 ; [+73]
      122 LOADNIL                          R18
      123 GETUPVAL                         R19 7
      124 GETTABLEKS                       R19 R19 K23 ["FFlagAssistantSplitToolsAndWidgets"]
      126 JUMPIFNOT                        R19 ; [+21]
      127 GETUPVAL                         R19 12
      128 GETTABLEKS                       R19 R19 K26 ["join"]
      130 GETTABLEKS                       R20 R16 K27 ["contentProps"]
      132 DUPTABLE                         R21 K31 [{"contentId", "editThisContent", "LayoutOrder", "streaming"}]
      133 GETTABLEKS                       R22 R16 K11 ["contentId"]
      135 SETTABLEKS                       R22 R21 K11 ["contentId"]
      137 SETTABLEKS                       R6 R21 K28 ["editThisContent"]
      139 SETTABLEKS                       R15 R21 K29 ["LayoutOrder"]
      141 GETTABLEKS                       R22 R16 K30 ["streaming"]
      143 SETTABLEKS                       R22 R21 K30 ["streaming"]
      145 CALL                             R19 2 1
      146 MOVE                             R18 R19
      147 JUMP                             ; [+22]
      148 GETUPVAL                         R19 3
      149 GETTABLEKS                       R19 R19 K32 ["Dictionary"]
      151 GETTABLEKS                       R19 R19 K26 ["join"]
      153 GETTABLEKS                       R20 R16 K27 ["contentProps"]
      155 DUPTABLE                         R21 K34 [{"contentId", "editThisContent", "LayoutOrder", "generating"}]
      156 GETTABLEKS                       R22 R16 K11 ["contentId"]
      158 SETTABLEKS                       R22 R21 K11 ["contentId"]
      160 SETTABLEKS                       R6 R21 K28 ["editThisContent"]
      162 SETTABLEKS                       R15 R21 K29 ["LayoutOrder"]
      164 GETTABLEKS                       R22 R16 K33 ["generating"]
      166 SETTABLEKS                       R22 R21 K33 ["generating"]
      168 CALL                             R19 2 1
      169 MOVE                             R18 R19
      170 GETTABLEKS                       R19 R16 K11 ["contentId"]
      172 GETUPVAL                         R20 13
      173 MOVE                             R21 R17
      174 MOVE                             R22 R18
      175 CALL                             R20 2 1
      176 SETTABLE                         R20 R11 R19
      177 JUMP                             ; [+17]
      178 GETTABLEKS                       R17 R16 K21 ["kind"]
      180 JUMPIFNOTEQKS                    R17 K35 ["text"] ; [+14]
      182 GETTABLEKS                       R17 R16 K11 ["contentId"]
      184 GETUPVAL                         R18 13
      185 GETUPVAL                         R19 14
      186 DUPTABLE                         R20 K37 [{"markdown", "LayoutOrder"}]
      187 GETTABLEKS                       R21 R16 K35 ["text"]
      189 SETTABLEKS                       R21 R20 K36 ["markdown"]
      191 SETTABLEKS                       R15 R20 K29 ["LayoutOrder"]
      193 CALL                             R18 2 1
      194 SETTABLE                         R18 R11 R17
      195 FORGLOOP                         R12 2 ; [-96]
      197 GETUPVAL                         R12 2
      198 GETTABLEKS                       R12 R12 K38 ["useBinding"]
      200 LOADN                            R13 0
      201 CALL                             R12 1 2
      202 GETUPVAL                         R14 2
      203 GETTABLEKS                       R14 R14 K9 ["useCallback"]
      205 NEWCLOSURE                       R15 P3
      206 CAPTURE                          VAL R13
      207 CAPTURE                          VAL R7
      208 NEWTABLE                         R16 0 2
      210 MOVE                             R17 R7
      211 MOVE                             R18 R13
      212 SETLIST                          R16 R17 2 [1]
      214 CALL                             R14 2 1
      215 LOADNIL                          R15
      216 JUMPIFNOT                        R7 ; [+62]
      217 GETIMPORT                        R16 K40 [next]
      219 MOVE                             R17 R11
      220 CALL                             R16 1 1
      221 JUMPIFEQKNIL                     R16 ; [+57]
      223 DUPTABLE                         R16 K42 [{"RollingWindow"}]
      224 GETUPVAL                         R17 13
      225 GETUPVAL                         R18 15
      226 DUPTABLE                         R19 K47 [{"Size", "layout", "scroll", "onAbsoluteCanvasSizeChanged"}]
      227 DUPCLOSURE                       R22 K48 [PROTO_15]
      228 NAMECALL                         R20 R12 K49 ["map"]
      230 CALL                             R20 2 1
      231 SETTABLEKS                       R20 R19 K43 ["Size"]
      233 DUPTABLE                         R20 K52 [{"FillDirection", "SortOrder", "Padding"}]
      234 GETIMPORT                        R21 K55 [Enum.FillDirection.Vertical]
      236 SETTABLEKS                       R21 R20 K50 ["FillDirection"]
      238 GETIMPORT                        R21 K56 [Enum.SortOrder.LayoutOrder]
      240 SETTABLEKS                       R21 R20 K51 ["SortOrder"]
      242 GETIMPORT                        R21 K59 [UDim.new]
      244 LOADN                            R22 0
      245 MOVE                             R23 R3
      246 CALL                             R21 2 1
      247 SETTABLEKS                       R21 R20 K1 ["Padding"]
      249 SETTABLEKS                       R20 R19 K44 ["layout"]
      251 DUPTABLE                         R20 K63 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      252 GETIMPORT                        R21 K66 [Enum.AutomaticSize.Y]
      254 SETTABLEKS                       R21 R20 K60 ["AutomaticCanvasSize"]
      256 GETIMPORT                        R21 K68 [UDim2.new]
      258 LOADN                            R22 0
      259 LOADN                            R23 0
      260 LOADN                            R24 0
      261 LOADN                            R25 0
      262 CALL                             R21 4 1
      263 SETTABLEKS                       R21 R20 K61 ["CanvasSize"]
      265 GETIMPORT                        R21 K69 [Enum.ScrollingDirection.Y]
      267 SETTABLEKS                       R21 R20 K62 ["ScrollingDirection"]
      269 SETTABLEKS                       R20 R19 K45 ["scroll"]
      271 SETTABLEKS                       R14 R19 K46 ["onAbsoluteCanvasSizeChanged"]
      273 MOVE                             R20 R11
      274 CALL                             R17 3 1
      275 SETTABLEKS                       R17 R16 K41 ["RollingWindow"]
      277 MOVE                             R15 R16
      278 JUMP                             ; [+1]
      279 MOVE                             R15 R11
      280 JUMPIFNOT                        R8 ; [+14]
      281 GETUPVAL                         R16 13
      282 GETUPVAL                         R17 16
      283 DUPTABLE                         R18 K73 [{["tag"] = "size-full-0 auto-y text-caption-medium text-truncate-end content-alert", ["Text"], ["LayoutOrder"]}]
      284 GETTABLEKS                       R19 R0 K13 ["errorMessage"]
      286 SETTABLEKS                       R19 R18 K72 ["Text"]
      288 LENGTH                           R20 R4
      289 ADDK                             R19 R20 K74 [1]
      290 SETTABLEKS                       R19 R18 K29 ["LayoutOrder"]
      292 CALL                             R16 2 1
      293 SETTABLEKS                       R16 R15 K75 ["Error"]
      295 LOADB                            R16 0
      296 JUMPIFEQKNIL                     R15 ; [+9]
      298 GETIMPORT                        R17 K40 [next]
      300 MOVE                             R18 R15
      301 CALL                             R17 1 1
      302 JUMPIFNOTEQKNIL                  R17 ; [+2]
      304 LOADB                            R16 0 +1
      305 LOADB                            R16 1
      306 GETUPVAL                         R17 13
      307 GETUPVAL                         R18 17
      308 GETTABLEKS                       R18 R18 K76 ["Root"]
      310 DUPTABLE                         R19 K78 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      311 GETTABLEKS                       R20 R0 K29 ["LayoutOrder"]
      313 SETTABLEKS                       R20 R19 K29 ["LayoutOrder"]
      315 GETTABLEKS                       R20 R0 K77 ["expanded"]
      317 SETTABLEKS                       R20 R19 K77 ["expanded"]
      319 GETTABLEKS                       R20 R0 K11 ["contentId"]
      321 SETTABLEKS                       R20 R19 K11 ["contentId"]
      323 GETTABLEKS                       R20 R0 K28 ["editThisContent"]
      325 SETTABLEKS                       R20 R19 K28 ["editThisContent"]
      327 DUPTABLE                         R20 K81 [{"Header", "Content"}]
      328 GETUPVAL                         R21 13
      329 GETUPVAL                         R22 17
      330 GETTABLEKS                       R22 R22 K79 ["Header"]
      332 DUPTABLE                         R23 K82 [{"LayoutOrder"}]
      333 MOVE                             R24 R1
      334 CALL                             R24 0 1
      335 SETTABLEKS                       R24 R23 K29 ["LayoutOrder"]
      337 DUPTABLE                         R24 K84 [{"HeaderText"}]
      338 GETUPVAL                         R25 13
      339 GETUPVAL                         R26 16
      340 DUPTABLE                         R27 K86 [{["tag"] = "auto-xy text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      341 SETTABLEKS                       R10 R27 K72 ["Text"]
      343 MOVE                             R28 R1
      344 CALL                             R28 0 1
      345 SETTABLEKS                       R28 R27 K29 ["LayoutOrder"]
      347 DUPTABLE                         R28 K88 [{"Shimmer"}]
      348 MOVE                             R29 R7
      349 JUMPIFNOT                        R29 ; [+3]
      350 GETUPVAL                         R29 13
      351 GETUPVAL                         R30 18
      352 CALL                             R29 1 1
      353 SETTABLEKS                       R29 R28 K87 ["Shimmer"]
      355 CALL                             R25 3 1
      356 SETTABLEKS                       R25 R24 K83 ["HeaderText"]
      358 CALL                             R21 3 1
      359 SETTABLEKS                       R21 R20 K79 ["Header"]
      361 MOVE                             R21 R16
      362 JUMPIFNOT                        R21 ; [+11]
      363 GETUPVAL                         R21 13
      364 GETUPVAL                         R22 17
      365 GETTABLEKS                       R22 R22 K80 ["Content"]
      367 DUPTABLE                         R23 K92 [{["tag"] = "col fill gap-xsmall size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      368 MOVE                             R24 R1
      369 CALL                             R24 0 1
      370 SETTABLEKS                       R24 R23 K29 ["LayoutOrder"]
      372 MOVE                             R24 R15
      373 CALL                             R21 3 1
      374 SETTABLEKS                       R21 R20 K80 ["Content"]
      376 CALL                             R17 3 -1
      377 RETURN                           R17 -1

PROTO_17:
        0 DUPTABLE                         R1 K5 [{"description", "subagentType", "inProgress", "finalAnswer", "errorMessage"}]
        1 GETTABLEKS                       R2 R0 K0 ["description"]
        3 SETTABLEKS                       R2 R1 K0 ["description"]
        5 GETTABLEKS                       R2 R0 K1 ["subagentType"]
        7 SETTABLEKS                       R2 R1 K1 ["subagentType"]
        9 GETTABLEKS                       R2 R0 K2 ["inProgress"]
       11 SETTABLEKS                       R2 R1 K2 ["inProgress"]
       13 GETTABLEKS                       R2 R0 K3 ["finalAnswer"]
       15 SETTABLEKS                       R2 R1 K3 ["finalAnswer"]
       17 GETTABLEKS                       R2 R0 K4 ["errorMessage"]
       19 SETTABLEKS                       R2 R1 K4 ["errorMessage"]
       21 RETURN                           R1 1

PROTO_18:
        0 DUPTABLE                         R2 K9 [{[1] = "SubagentProgress", ["description"], ["subagentType"], ["inProgress"], ["expanded"] = False, ["finalAnswer"], ["errorMessage"]}]
        1 GETTABLEKS                       R4 R0 K2 ["description"]
        3 ORK                              R3 R4 K10 ["UNKNOWN_DESCRIPTION"]
        4 SETTABLEKS                       R3 R2 K2 ["description"]
        6 GETTABLEKS                       R3 R0 K3 ["subagentType"]
        8 SETTABLEKS                       R3 R2 K3 ["subagentType"]
       10 GETTABLEKS                       R3 R0 K4 ["inProgress"]
       12 SETTABLEKS                       R3 R2 K4 ["inProgress"]
       14 GETTABLEKS                       R3 R0 K7 ["finalAnswer"]
       16 SETTABLEKS                       R3 R2 K7 ["finalAnswer"]
       18 GETTABLEKS                       R3 R0 K8 ["errorMessage"]
       20 SETTABLEKS                       R3 R2 K8 ["errorMessage"]
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["Accordion"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Util"]
       24 GETTABLEKS                       R4 R4 K13 ["ContentWidgets"]
       26 GETTABLEKS                       R4 R4 K14 ["ContentWidgetRegistry"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["Parent"]
       33 GETTABLEKS                       R5 R5 K16 ["Cryo"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K12 ["Util"]
       40 GETTABLEKS                       R6 R6 K17 ["DEPRECATED_ContentWidgetRegistry"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K15 ["Parent"]
       47 GETTABLEKS                       R7 R7 K18 ["Dash"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K19 ["Flags"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R0 K15 ["Parent"]
       59 GETTABLEKS                       R9 R9 K20 ["Foundation"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R0 K10 ["Components"]
       66 GETTABLEKS                       R10 R10 K21 ["MarkdownText"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R0 K15 ["Parent"]
       73 GETTABLEKS                       R11 R11 K22 ["React"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R0 K15 ["Parent"]
       80 GETTABLEKS                       R12 R12 K23 ["ReactUtils"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K9 [require]
       85 GETTABLEKS                       R13 R0 K12 ["Util"]
       87 GETTABLEKS                       R13 R13 K24 ["Serializer"]
       89 GETTABLEKS                       R13 R13 K25 ["SerializerTypes"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K9 [require]
       94 GETTABLEKS                       R14 R0 K10 ["Components"]
       96 GETTABLEKS                       R14 R14 K26 ["ShimmerGradient"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K9 [require]
      101 GETTABLEKS                       R15 R0 K27 ["Subagents"]
      103 GETTABLEKS                       R15 R15 K28 ["SubagentProgressEvents"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K9 [require]
      108 GETTABLEKS                       R16 R0 K12 ["Util"]
      110 GETTABLEKS                       R16 R16 K13 ["ContentWidgets"]
      112 GETTABLEKS                       R16 R16 K29 ["ToolWidgetMappingRegistry"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K9 [require]
      117 GETTABLEKS                       R17 R0 K30 ["Resources"]
      119 GETTABLEKS                       R17 R17 K31 ["Localization"]
      121 GETTABLEKS                       R17 R17 K32 ["Translator"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K9 [require]
      126 GETTABLEKS                       R18 R0 K33 ["Types"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K9 [require]
      131 GETTABLEKS                       R19 R0 K10 ["Components"]
      133 GETTABLEKS                       R19 R19 K34 ["UIToolRegistry"]
      135 CALL                             R18 1 1
      136 GETTABLEKS                       R19 R8 K35 ["ScrollView"]
      138 GETTABLEKS                       R20 R8 K36 ["Text"]
      140 GETTABLEKS                       R21 R8 K37 ["Hooks"]
      142 GETTABLEKS                       R21 R21 K38 ["useTokens"]
      144 GETTABLEKS                       R22 R11 K39 ["createNextOrder"]
      146 GETTABLEKS                       R23 R10 K40 ["createElement"]
      148 DUPCLOSURE                       R24 K41 [PROTO_0]
      149 CAPTURE                          VAL R18
      150 DUPCLOSURE                       R25 K42 [PROTO_2]
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R15
      154 DUPCLOSURE                       R26 K43 [PROTO_4]
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R6
      159 DUPCLOSURE                       R27 K44 [PROTO_16]
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R21
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R25
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R26
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R13
      179 DUPTABLE                         R28 K47 [{"toMeta", "fromMeta"}]
      180 DUPCLOSURE                       R29 K48 [PROTO_17]
      181 SETTABLEKS                       R29 R28 K45 ["toMeta"]
      183 DUPCLOSURE                       R29 K49 [PROTO_18]
      184 SETTABLEKS                       R29 R28 K46 ["fromMeta"]
      186 DUPTABLE                         R29 K55 [{["Type"] = "SubagentProgress", ["ContentWidget"], ["Serialization"], ["AutoExpand"]}]
      187 GETTABLEKS                       R30 R10 K56 ["memo"]
      189 MOVE                             R31 R27
      190 CALL                             R30 1 1
      191 SETTABLEKS                       R30 R29 K52 ["ContentWidget"]
      193 SETTABLEKS                       R28 R29 K53 ["Serialization"]
      195 DUPTABLE                         R30 K60 [{["expandWhileGenerating"] = True, ["collapseOnComplete"] = True}]
      196 SETTABLEKS                       R30 R29 K54 ["AutoExpand"]
      198 RETURN                           R29 1
