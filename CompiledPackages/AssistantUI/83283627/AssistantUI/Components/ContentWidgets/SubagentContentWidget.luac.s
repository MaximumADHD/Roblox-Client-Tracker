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
       54 LOADNIL                          R7
       55 LOADNIL                          R8
       56 LOADNIL                          R9
       57 LOADNIL                          R10
       58 GETUPVAL                         R11 7
       59 GETTABLEKS                       R11 R11 K12 ["FFlagAssistantSplitToolsAndWidgets"]
       61 JUMPIFNOT                        R11 ; [+47]
       62 GETTABLEKS                       R12 R0 K13 ["toolUse"]
       64 JUMPIFNOT                        R12 ; [+5]
       65 GETTABLEKS                       R11 R0 K13 ["toolUse"]
       67 GETTABLEKS                       R11 R11 K14 ["input"]
       69 JUMPIF                           R11 ; [+1]
       70 GETUPVAL                         R11 9
       71 GETTABLEKS                       R12 R11 K16 ["description"]
       73 ORK                              R7 R12 K15 [""]
       74 GETTABLEKS                       R12 R0 K17 ["toolResult"]
       76 JUMPIFEQKNIL                     R12 ; [+2]
       78 LOADB                            R8 0 +1
       79 LOADB                            R8 1
       80 GETTABLEKS                       R12 R0 K17 ["toolResult"]
       82 JUMPIFNOT                        R12 ; [+38]
       83 GETTABLEKS                       R12 R0 K17 ["toolResult"]
       85 GETTABLEKS                       R12 R12 K18 ["content"]
       87 JUMPIFNOT                        R12 ; [+5]
       88 GETTABLEKS                       R13 R0 K17 ["toolResult"]
       90 GETTABLEKS                       R13 R13 K18 ["content"]
       92 GETTABLEN                        R12 R13 1
       93 JUMPIFNOT                        R12 ; [+27]
       94 GETTABLEKS                       R13 R12 K19 ["type"]
       96 JUMPIFNOTEQKS                    R13 K20 ["text"] ; [+24]
       98 GETTABLEKS                       R13 R0 K17 ["toolResult"]
      100 GETTABLEKS                       R13 R13 K21 ["isError"]
      102 JUMPIFNOT                        R13 ; [+3]
      103 GETTABLEKS                       R9 R12 K20 ["text"]
      105 JUMP                             ; [+15]
      106 GETTABLEKS                       R10 R12 K20 ["text"]
      108 JUMP                             ; [+12]
      109 GETTABLEKS                       R7 R0 K16 ["description"]
      111 GETTABLEKS                       R11 R0 K22 ["inProgress"]
      113 JUMPIFEQKB                       R11 TRUE ; [+2]
      115 LOADB                            R8 0 +1
      116 LOADB                            R8 1
      117 GETTABLEKS                       R9 R0 K23 ["errorMessage"]
      119 GETTABLEKS                       R10 R0 K24 ["finalAnswer"]
      121 LOADB                            R11 0
      122 JUMPIFEQKNIL                     R9 ; [+5]
      124 JUMPIFNOTEQKS                    R9 K15 [""] ; [+2]
      126 LOADB                            R11 0 +1
      127 LOADB                            R11 1
      128 GETUPVAL                         R12 2
      129 GETTABLEKS                       R12 R12 K25 ["useMemo"]
      131 DUPCLOSURE                       R13 K26 [PROTO_13]
      132 CAPTURE                          UPVAL U10
      133 NEWTABLE                         R14 0 1
      135 GETUPVAL                         R15 10
      136 GETTABLEKS                       R15 R15 K27 ["locale"]
      138 SETLIST                          R14 R15 1 [1]
      140 CALL                             R12 2 1
      141 MOVE                             R13 R7
      142 JUMPIFNOTEQKS                    R13 K15 [""] ; [+7]
      144 JUMPIFNOT                        R8 ; [+3]
      145 GETTABLEKS                       R13 R12 K28 ["Running"]
      147 JUMP                             ; [+2]
      148 GETTABLEKS                       R13 R12 K29 ["Completed"]
      150 NEWTABLE                         R14 0 0
      152 MOVE                             R15 R4
      153 LOADNIL                          R16
      154 LOADNIL                          R17
      155 FORGPREP                         R15
      156 GETTABLEKS                       R20 R19 K30 ["kind"]
      158 JUMPIFNOTEQKS                    R20 K31 ["tool"] ; [+75]
      160 GETUPVAL                         R21 7
      161 GETTABLEKS                       R21 R21 K12 ["FFlagAssistantSplitToolsAndWidgets"]
      163 JUMPIFNOT                        R21 ; [+7]
      164 GETUPVAL                         R20 11
      165 GETTABLEKS                       R20 R20 K32 ["get"]
      167 GETTABLEKS                       R21 R19 K33 ["contentType"]
      169 CALL                             R20 1 1
      170 JUMP                             ; [+6]
      171 GETUPVAL                         R20 12
      172 GETTABLEKS                       R20 R20 K32 ["get"]
      174 GETTABLEKS                       R21 R19 K33 ["contentType"]
      176 CALL                             R20 1 1
      177 JUMPIFNOT                        R20 ; [+73]
      178 LOADNIL                          R21
      179 GETUPVAL                         R22 7
      180 GETTABLEKS                       R22 R22 K12 ["FFlagAssistantSplitToolsAndWidgets"]
      182 JUMPIFNOT                        R22 ; [+21]
      183 GETUPVAL                         R22 13
      184 GETTABLEKS                       R22 R22 K34 ["join"]
      186 GETTABLEKS                       R23 R19 K35 ["contentProps"]
      188 DUPTABLE                         R24 K39 [{"contentId", "editThisContent", "LayoutOrder", "streaming"}]
      189 GETTABLEKS                       R25 R19 K11 ["contentId"]
      191 SETTABLEKS                       R25 R24 K11 ["contentId"]
      193 SETTABLEKS                       R6 R24 K36 ["editThisContent"]
      195 SETTABLEKS                       R18 R24 K37 ["LayoutOrder"]
      197 GETTABLEKS                       R25 R19 K38 ["streaming"]
      199 SETTABLEKS                       R25 R24 K38 ["streaming"]
      201 CALL                             R22 2 1
      202 MOVE                             R21 R22
      203 JUMP                             ; [+22]
      204 GETUPVAL                         R22 3
      205 GETTABLEKS                       R22 R22 K40 ["Dictionary"]
      207 GETTABLEKS                       R22 R22 K34 ["join"]
      209 GETTABLEKS                       R23 R19 K35 ["contentProps"]
      211 DUPTABLE                         R24 K42 [{"contentId", "editThisContent", "LayoutOrder", "generating"}]
      212 GETTABLEKS                       R25 R19 K11 ["contentId"]
      214 SETTABLEKS                       R25 R24 K11 ["contentId"]
      216 SETTABLEKS                       R6 R24 K36 ["editThisContent"]
      218 SETTABLEKS                       R18 R24 K37 ["LayoutOrder"]
      220 GETTABLEKS                       R25 R19 K41 ["generating"]
      222 SETTABLEKS                       R25 R24 K41 ["generating"]
      224 CALL                             R22 2 1
      225 MOVE                             R21 R22
      226 GETTABLEKS                       R22 R19 K11 ["contentId"]
      228 GETUPVAL                         R23 14
      229 MOVE                             R24 R20
      230 MOVE                             R25 R21
      231 CALL                             R23 2 1
      232 SETTABLE                         R23 R14 R22
      233 JUMP                             ; [+17]
      234 GETTABLEKS                       R20 R19 K30 ["kind"]
      236 JUMPIFNOTEQKS                    R20 K20 ["text"] ; [+14]
      238 GETTABLEKS                       R20 R19 K11 ["contentId"]
      240 GETUPVAL                         R21 14
      241 GETUPVAL                         R22 15
      242 DUPTABLE                         R23 K44 [{"markdown", "LayoutOrder"}]
      243 GETTABLEKS                       R24 R19 K20 ["text"]
      245 SETTABLEKS                       R24 R23 K43 ["markdown"]
      247 SETTABLEKS                       R18 R23 K37 ["LayoutOrder"]
      249 CALL                             R21 2 1
      250 SETTABLE                         R21 R14 R20
      251 FORGLOOP                         R15 2 ; [-96]
      253 GETUPVAL                         R15 2
      254 GETTABLEKS                       R15 R15 K45 ["useBinding"]
      256 LOADN                            R16 0
      257 CALL                             R15 1 2
      258 GETUPVAL                         R17 2
      259 GETTABLEKS                       R17 R17 K9 ["useCallback"]
      261 NEWCLOSURE                       R18 P3
      262 CAPTURE                          VAL R16
      263 CAPTURE                          REF R8
      264 NEWTABLE                         R19 0 2
      266 MOVE                             R20 R8
      267 MOVE                             R21 R16
      268 SETLIST                          R19 R20 2 [1]
      270 CALL                             R17 2 1
      271 LOADNIL                          R18
      272 JUMPIFNOT                        R8 ; [+62]
      273 GETIMPORT                        R19 K47 [next]
      275 MOVE                             R20 R14
      276 CALL                             R19 1 1
      277 JUMPIFEQKNIL                     R19 ; [+57]
      279 DUPTABLE                         R19 K49 [{"RollingWindow"}]
      280 GETUPVAL                         R20 14
      281 GETUPVAL                         R21 16
      282 DUPTABLE                         R22 K54 [{"Size", "layout", "scroll", "onAbsoluteCanvasSizeChanged"}]
      283 DUPCLOSURE                       R25 K55 [PROTO_15]
      284 NAMECALL                         R23 R15 K56 ["map"]
      286 CALL                             R23 2 1
      287 SETTABLEKS                       R23 R22 K50 ["Size"]
      289 DUPTABLE                         R23 K59 [{"FillDirection", "SortOrder", "Padding"}]
      290 GETIMPORT                        R24 K62 [Enum.FillDirection.Vertical]
      292 SETTABLEKS                       R24 R23 K57 ["FillDirection"]
      294 GETIMPORT                        R24 K63 [Enum.SortOrder.LayoutOrder]
      296 SETTABLEKS                       R24 R23 K58 ["SortOrder"]
      298 GETIMPORT                        R24 K66 [UDim.new]
      300 LOADN                            R25 0
      301 MOVE                             R26 R3
      302 CALL                             R24 2 1
      303 SETTABLEKS                       R24 R23 K1 ["Padding"]
      305 SETTABLEKS                       R23 R22 K51 ["layout"]
      307 DUPTABLE                         R23 K70 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      308 GETIMPORT                        R24 K73 [Enum.AutomaticSize.Y]
      310 SETTABLEKS                       R24 R23 K67 ["AutomaticCanvasSize"]
      312 GETIMPORT                        R24 K75 [UDim2.new]
      314 LOADN                            R25 0
      315 LOADN                            R26 0
      316 LOADN                            R27 0
      317 LOADN                            R28 0
      318 CALL                             R24 4 1
      319 SETTABLEKS                       R24 R23 K68 ["CanvasSize"]
      321 GETIMPORT                        R24 K76 [Enum.ScrollingDirection.Y]
      323 SETTABLEKS                       R24 R23 K69 ["ScrollingDirection"]
      325 SETTABLEKS                       R23 R22 K52 ["scroll"]
      327 SETTABLEKS                       R17 R22 K53 ["onAbsoluteCanvasSizeChanged"]
      329 MOVE                             R23 R14
      330 CALL                             R20 3 1
      331 SETTABLEKS                       R20 R19 K48 ["RollingWindow"]
      333 MOVE                             R18 R19
      334 JUMP                             ; [+1]
      335 MOVE                             R18 R14
      336 JUMPIFNOT                        R11 ; [+12]
      337 GETUPVAL                         R19 14
      338 GETUPVAL                         R20 17
      339 DUPTABLE                         R21 K80 [{["tag"] = "size-full-0 auto-y text-caption-medium text-truncate-end content-alert", ["Text"], ["LayoutOrder"]}]
      340 SETTABLEKS                       R9 R21 K79 ["Text"]
      342 LENGTH                           R23 R4
      343 ADDK                             R22 R23 K81 [1]
      344 SETTABLEKS                       R22 R21 K37 ["LayoutOrder"]
      346 CALL                             R19 2 1
      347 SETTABLEKS                       R19 R18 K82 ["Error"]
      349 JUMPIF                           R8 ; [+21]
      350 GETIMPORT                        R19 K47 [next]
      352 MOVE                             R20 R14
      353 CALL                             R19 1 1
      354 JUMPIFNOTEQKNIL                  R19 ; [+16]
      356 JUMPIFNOT                        R10 ; [+14]
      357 JUMPIFEQKS                       R10 K15 [""] ; [+13]
      359 GETUPVAL                         R19 14
      360 GETUPVAL                         R20 15
      361 DUPTABLE                         R21 K44 [{"markdown", "LayoutOrder"}]
      362 SETTABLEKS                       R10 R21 K43 ["markdown"]
      364 LENGTH                           R23 R4
      365 ADDK                             R22 R23 K83 [2]
      366 SETTABLEKS                       R22 R21 K37 ["LayoutOrder"]
      368 CALL                             R19 2 1
      369 SETTABLEKS                       R19 R18 K84 ["FinalAnswer"]
      371 LOADB                            R19 0
      372 JUMPIFEQKNIL                     R18 ; [+9]
      374 GETIMPORT                        R20 K47 [next]
      376 MOVE                             R21 R18
      377 CALL                             R20 1 1
      378 JUMPIFNOTEQKNIL                  R20 ; [+2]
      380 LOADB                            R19 0 +1
      381 LOADB                            R19 1
      382 GETUPVAL                         R20 14
      383 GETUPVAL                         R21 18
      384 GETTABLEKS                       R21 R21 K85 ["Root"]
      386 DUPTABLE                         R22 K87 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      387 GETTABLEKS                       R23 R0 K37 ["LayoutOrder"]
      389 SETTABLEKS                       R23 R22 K37 ["LayoutOrder"]
      391 GETTABLEKS                       R23 R0 K86 ["expanded"]
      393 SETTABLEKS                       R23 R22 K86 ["expanded"]
      395 GETTABLEKS                       R23 R0 K11 ["contentId"]
      397 SETTABLEKS                       R23 R22 K11 ["contentId"]
      399 GETTABLEKS                       R23 R0 K36 ["editThisContent"]
      401 SETTABLEKS                       R23 R22 K36 ["editThisContent"]
      403 DUPTABLE                         R23 K90 [{"Header", "Content"}]
      404 GETUPVAL                         R24 14
      405 GETUPVAL                         R25 18
      406 GETTABLEKS                       R25 R25 K88 ["Header"]
      408 DUPTABLE                         R26 K91 [{"LayoutOrder"}]
      409 MOVE                             R27 R1
      410 CALL                             R27 0 1
      411 SETTABLEKS                       R27 R26 K37 ["LayoutOrder"]
      413 DUPTABLE                         R27 K93 [{"HeaderText"}]
      414 GETUPVAL                         R28 14
      415 GETUPVAL                         R29 17
      416 DUPTABLE                         R30 K95 [{["tag"] = "auto-xy text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      417 SETTABLEKS                       R13 R30 K79 ["Text"]
      419 MOVE                             R31 R1
      420 CALL                             R31 0 1
      421 SETTABLEKS                       R31 R30 K37 ["LayoutOrder"]
      423 DUPTABLE                         R31 K97 [{"Shimmer"}]
      424 MOVE                             R32 R8
      425 JUMPIFNOT                        R32 ; [+3]
      426 GETUPVAL                         R32 14
      427 GETUPVAL                         R33 19
      428 CALL                             R32 1 1
      429 SETTABLEKS                       R32 R31 K96 ["Shimmer"]
      431 CALL                             R28 3 1
      432 SETTABLEKS                       R28 R27 K92 ["HeaderText"]
      434 CALL                             R24 3 1
      435 SETTABLEKS                       R24 R23 K88 ["Header"]
      437 MOVE                             R24 R19
      438 JUMPIFNOT                        R24 ; [+11]
      439 GETUPVAL                         R24 14
      440 GETUPVAL                         R25 18
      441 GETTABLEKS                       R25 R25 K89 ["Content"]
      443 DUPTABLE                         R26 K101 [{["tag"] = "col fill gap-xsmall size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      444 MOVE                             R27 R1
      445 CALL                             R27 0 1
      446 SETTABLEKS                       R27 R26 K37 ["LayoutOrder"]
      448 MOVE                             R27 R18
      449 CALL                             R24 3 1
      450 SETTABLEKS                       R24 R23 K89 ["Content"]
      452 CALL                             R20 3 -1
      453 CLOSEUPVALS                      R8
      454 RETURN                           R20 -1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAcpHistoryCompatibility"]
        3 JUMPIF                           R2 ; [+23]
        4 DUPTABLE                         R2 K10 [{["type"] = "SubagentProgress", ["description"], ["subagentType"], ["inProgress"], ["expanded"] = False, ["finalAnswer"], ["errorMessage"]}]
        5 GETTABLEKS                       R4 R0 K3 ["description"]
        7 ORK                              R3 R4 K11 ["UNKNOWN_DESCRIPTION"]
        8 SETTABLEKS                       R3 R2 K3 ["description"]
       10 GETTABLEKS                       R3 R0 K4 ["subagentType"]
       12 SETTABLEKS                       R3 R2 K4 ["subagentType"]
       14 GETTABLEKS                       R3 R0 K5 ["inProgress"]
       16 SETTABLEKS                       R3 R2 K5 ["inProgress"]
       18 GETTABLEKS                       R3 R0 K8 ["finalAnswer"]
       20 SETTABLEKS                       R3 R2 K8 ["finalAnswer"]
       22 GETTABLEKS                       R3 R0 K9 ["errorMessage"]
       24 SETTABLEKS                       R3 R2 K9 ["errorMessage"]
       26 RETURN                           R2 1
       27 GETTABLEKS                       R2 R1 K12 ["toolUseContent"]
       29 JUMPIFNOT                        R2 ; [+9]
       30 GETTABLEKS                       R4 R2 K13 ["input"]
       32 FASTCALL2K                       RAWGET R4 K3 ; [+4]
       34 LOADK                            R5 K3 ["description"]
       35 GETIMPORT                        R3 K15 [rawget]
       37 CALL                             R3 2 1
       38 JUMP                             ; [+1]
       39 LOADNIL                          R3
       40 JUMPIFNOT                        R2 ; [+9]
       41 GETTABLEKS                       R5 R2 K13 ["input"]
       43 FASTCALL2K                       RAWGET R5 K16 ; [+4]
       45 LOADK                            R6 K16 ["subagent_type"]
       46 GETIMPORT                        R4 K15 [rawget]
       48 CALL                             R4 2 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R4
       51 FASTCALL1                        TYPEOF R3 ; [+3]
       52 MOVE                             R7 R3
       53 GETIMPORT                        R6 K18 [typeof]
       55 CALL                             R6 1 1
       56 JUMPIFNOTEQKS                    R6 K19 ["string"] ; [+3]
       58 MOVE                             R5 R3
       59 JUMP                             ; [+1]
       60 LOADNIL                          R5
       61 FASTCALL1                        TYPEOF R4 ; [+3]
       62 MOVE                             R8 R4
       63 GETIMPORT                        R7 K18 [typeof]
       65 CALL                             R7 1 1
       66 JUMPIFNOTEQKS                    R7 K19 ["string"] ; [+3]
       68 MOVE                             R6 R4
       69 JUMP                             ; [+1]
       70 LOADNIL                          R6
       71 GETTABLEKS                       R7 R0 K5 ["inProgress"]
       73 JUMPIFNOTEQKNIL                  R7 ; [+7]
       75 GETTABLEKS                       R8 R1 K20 ["toolResultContent"]
       77 JUMPIFEQKNIL                     R8 ; [+2]
       79 LOADB                            R7 0 +1
       80 LOADB                            R7 1
       81 DUPTABLE                         R8 K10 [{["type"] = "SubagentProgress", ["description"], ["subagentType"], ["inProgress"], ["expanded"] = False, ["finalAnswer"], ["errorMessage"]}]
       82 GETTABLEKS                       R9 R0 K3 ["description"]
       84 JUMPIF                           R9 ; [+3]
       85 MOVE                             R9 R5
       86 JUMPIF                           R9 ; [+1]
       87 LOADK                            R9 K21 [""]
       88 SETTABLEKS                       R9 R8 K3 ["description"]
       90 GETTABLEKS                       R10 R0 K4 ["subagentType"]
       92 OR                               R9 R10 R6
       93 SETTABLEKS                       R9 R8 K4 ["subagentType"]
       95 SETTABLEKS                       R7 R8 K5 ["inProgress"]
       97 GETTABLEKS                       R9 R0 K8 ["finalAnswer"]
       99 SETTABLEKS                       R9 R8 K8 ["finalAnswer"]
      101 GETTABLEKS                       R9 R0 K9 ["errorMessage"]
      103 SETTABLEKS                       R9 R8 K9 ["errorMessage"]
      105 RETURN                           R8 1

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
      148 NEWTABLE                         R24 0 0
      150 DUPCLOSURE                       R25 K41 [PROTO_0]
      151 CAPTURE                          VAL R18
      152 DUPCLOSURE                       R26 K42 [PROTO_2]
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R15
      156 DUPCLOSURE                       R27 K43 [PROTO_4]
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R6
      161 DUPCLOSURE                       R28 K44 [PROTO_16]
      162 CAPTURE                          VAL R22
      163 CAPTURE                          VAL R21
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R26
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R27
      171 CAPTURE                          VAL R24
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R23
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R19
      179 CAPTURE                          VAL R20
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R13
      182 DUPTABLE                         R29 K47 [{"toMeta", "fromMeta"}]
      183 DUPCLOSURE                       R30 K48 [PROTO_17]
      184 SETTABLEKS                       R30 R29 K45 ["toMeta"]
      186 DUPCLOSURE                       R30 K49 [PROTO_18]
      187 CAPTURE                          VAL R7
      188 SETTABLEKS                       R30 R29 K46 ["fromMeta"]
      190 DUPTABLE                         R30 K55 [{["Type"] = "SubagentProgress", ["ContentWidget"], ["Serialization"], ["AutoExpand"]}]
      191 GETTABLEKS                       R31 R10 K56 ["memo"]
      193 MOVE                             R32 R28
      194 CALL                             R31 1 1
      195 SETTABLEKS                       R31 R30 K52 ["ContentWidget"]
      197 GETTABLEKS                       R32 R7 K57 ["FFlagAssistantSplitToolsAndWidgets"]
      199 JUMPIFNOT                        R32 ; [+2]
      200 LOADNIL                          R31
      201 JUMP                             ; [+1]
      202 MOVE                             R31 R29
      203 SETTABLEKS                       R31 R30 K53 ["Serialization"]
      205 DUPTABLE                         R31 K61 [{["expandWhileGenerating"] = True, ["collapseOnComplete"] = True}]
      206 SETTABLEKS                       R31 R30 K54 ["AutoExpand"]
      208 RETURN                           R30 1
