PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getStreamTransform"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 JUMPIFNOTEQKS                    R1 K1 ["none"] ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getStreamTransform"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+2]
        6 JUMPIFNOTEQKS                    R3 K1 ["none"] ; [+3]
        8 LOADNIL                          R2
        9 JUMP                             ; [+1]
       10 MOVE                             R2 R3
       11 JUMPIF                           R2 ; [+3]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 RETURN                           R3 2
       15 GETTABLEKS                       R3 R2 K2 ["transformInitialContent"]
       17 MOVE                             R4 R1
       18 CALL                             R3 1 1
       19 JUMPIF                           R3 ; [+3]
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 RETURN                           R4 2
       23 GETTABLEKS                       R4 R2 K3 ["getTransformPreExecuteFn"]
       25 JUMPIFNOT                        R4 ; [+8]
       26 GETTABLEKS                       R4 R2 K3 ["getTransformPreExecuteFn"]
       28 MOVE                             R5 R1
       29 CALL                             R4 1 1
       30 JUMPIFNOT                        R4 ; [+3]
       31 MOVE                             R5 R4
       32 MOVE                             R6 R3
       33 CALL                             R5 1 0
       34 GETTABLEKS                       R4 R3 K4 ["type"]
       36 MOVE                             R5 R3
       37 RETURN                           R4 2

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["getStreamTransform"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 JUMPIFNOT                        R4 ; [+2]
        6 JUMPIFNOTEQKS                    R4 K1 ["none"] ; [+3]
        8 LOADNIL                          R3
        9 JUMP                             ; [+1]
       10 MOVE                             R3 R4
       11 JUMPIF                           R3 ; [+1]
       12 RETURN                           R1 1
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K2 ["Dictionary"]
       16 GETTABLEKS                       R4 R5 K3 ["join"]
       18 MOVE                             R5 R1
       19 DUPTABLE                         R6 K5 [{"toolResult"}]
       20 SETTABLEKS                       R2 R6 K4 ["toolResult"]
       22 CALL                             R4 2 1
       23 GETTABLEKS                       R5 R3 K6 ["getTransformResultFn"]
       25 JUMPIFNOT                        R5 ; [+8]
       26 GETTABLEKS                       R5 R3 K6 ["getTransformResultFn"]
       28 MOVE                             R6 R2
       29 CALL                             R5 1 1
       30 JUMPIFNOT                        R5 ; [+3]
       31 MOVE                             R6 R5
       32 MOVE                             R7 R4
       33 CALL                             R6 1 0
       34 RETURN                           R4 1

PROTO_3:
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
       25 GETUPVAL                         R10 2
       26 GETTABLEKS                       R9 R10 K7 ["Dictionary"]
       28 GETTABLEKS                       R8 R9 K8 ["join"]
       30 MOVE                             R9 R6
       31 DUPTABLE                         R10 K9 [{"contentProps"}]
       32 SETTABLEKS                       R7 R10 K6 ["contentProps"]
       34 CALL                             R8 2 1
       35 SETTABLE                         R8 R1 R5
       36 RETURN                           R1 1
       37 FORGLOOP                         R2 2 ; [-30]
       39 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 DUPTABLE                         R4 K10 [{"kind", "contentId", "toolUseId", "toolName", "contentType", "contentProps", "generating"}]
        5 LOADK                            R5 K11 ["tool"]
        6 SETTABLEKS                       R5 R4 K3 ["kind"]
        8 GETUPVAL                         R5 0
        9 LOADB                            R7 0
       10 NAMECALL                         R5 R5 K12 ["GenerateGUID"]
       12 CALL                             R5 2 1
       13 SETTABLEKS                       R5 R4 K4 ["contentId"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K5 ["toolUseId"]
       18 SETTABLEKS                       R5 R4 K5 ["toolUseId"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K6 ["toolName"]
       23 SETTABLEKS                       R5 R4 K6 ["toolName"]
       25 GETUPVAL                         R5 2
       26 SETTABLEKS                       R5 R4 K7 ["contentType"]
       28 GETUPVAL                         R5 3
       29 SETTABLEKS                       R5 R4 K8 ["contentProps"]
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K9 ["generating"]
       34 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       36 MOVE                             R3 R1
       37 GETIMPORT                        R2 K14 [table.insert]
       39 CALL                             R2 2 0
       40 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K3 ["kind"]
       10 JUMPIFNOTEQKS                    R7 K4 ["tool"] ; [+32]
       12 GETTABLEKS                       R7 R6 K5 ["toolUseId"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K5 ["toolUseId"]
       17 JUMPIFNOTEQ                      R7 R8 ; [+25]
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R8 R9 K6 ["Dictionary"]
       22 GETTABLEKS                       R7 R8 K7 ["join"]
       24 MOVE                             R8 R6
       25 DUPTABLE                         R9 K10 [{"contentProps", "generating"}]
       26 GETUPVAL                         R10 2
       27 GETTABLEKS                       R11 R6 K11 ["toolName"]
       29 GETTABLEKS                       R12 R6 K8 ["contentProps"]
       31 GETUPVAL                         R14 0
       32 GETTABLEKS                       R13 R14 K12 ["toolResult"]
       34 CALL                             R10 3 1
       35 SETTABLEKS                       R10 R9 K8 ["contentProps"]
       37 LOADB                            R10 0
       38 SETTABLEKS                       R10 R9 K9 ["generating"]
       40 CALL                             R7 2 1
       41 SETTABLE                         R7 R1 R5
       42 RETURN                           R1 1
       43 FORGLOOP                         R2 2 ; [-36]
       45 RETURN                           R1 1

PROTO_7:
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
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R9 R10 K6 ["textContentId"]
       18 JUMPIFNOTEQ                      R8 R9 ; [+17]
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R9 R10 K7 ["Dictionary"]
       23 GETTABLEKS                       R8 R9 K8 ["join"]
       25 MOVE                             R9 R7
       26 DUPTABLE                         R10 K9 [{"text"}]
       27 GETUPVAL                         R12 0
       28 GETTABLEKS                       R11 R12 K4 ["text"]
       30 SETTABLEKS                       R11 R10 K4 ["text"]
       32 CALL                             R8 2 1
       33 SETTABLE                         R8 R1 R6
       34 LOADB                            R2 1
       35 JUMP                             ; [+2]
       36 FORGLOOP                         R3 2 ; [-28]
       38 JUMPIF                           R2 ; [+20]
       39 DUPTABLE                         R5 K10 [{"kind", "contentId", "text"}]
       40 LOADK                            R6 K4 ["text"]
       41 SETTABLEKS                       R6 R5 K3 ["kind"]
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R6 R7 K6 ["textContentId"]
       46 SETTABLEKS                       R6 R5 K5 ["contentId"]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R6 R7 K4 ["text"]
       51 SETTABLEKS                       R6 R5 K4 ["text"]
       53 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       55 MOVE                             R4 R1
       56 GETIMPORT                        R3 K12 [table.insert]
       58 CALL                             R3 2 0
       59 RETURN                           R1 1

PROTO_8:
        0 JUMPIFNOTEQKS                    R0 K0 ["toolStart"] ; [+66]
        2 DUPTABLE                         R2 K5 [{"type", "id", "name", "input"}]
        3 LOADK                            R3 K6 ["tool_use"]
        4 SETTABLEKS                       R3 R2 K1 ["type"]
        6 GETTABLEKS                       R3 R1 K7 ["toolUseId"]
        8 SETTABLEKS                       R3 R2 K2 ["id"]
       10 GETTABLEKS                       R3 R1 K8 ["toolName"]
       12 SETTABLEKS                       R3 R2 K3 ["name"]
       14 GETTABLEKS                       R3 R1 K4 ["input"]
       16 SETTABLEKS                       R3 R2 K4 ["input"]
       18 GETTABLEKS                       R5 R1 K8 ["toolName"]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K9 ["getStreamTransform"]
       23 MOVE                             R8 R5
       24 CALL                             R7 1 1
       25 JUMPIFNOT                        R7 ; [+2]
       26 JUMPIFNOTEQKS                    R7 K10 ["none"] ; [+3]
       28 LOADNIL                          R6
       29 JUMP                             ; [+1]
       30 MOVE                             R6 R7
       31 JUMPIF                           R6 ; [+3]
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 JUMP                             ; [+22]
       35 GETTABLEKS                       R7 R6 K11 ["transformInitialContent"]
       37 MOVE                             R8 R2
       38 CALL                             R7 1 1
       39 JUMPIF                           R7 ; [+3]
       40 LOADNIL                          R3
       41 LOADNIL                          R4
       42 JUMP                             ; [+14]
       43 GETTABLEKS                       R8 R6 K12 ["getTransformPreExecuteFn"]
       45 JUMPIFNOT                        R8 ; [+8]
       46 GETTABLEKS                       R8 R6 K12 ["getTransformPreExecuteFn"]
       48 MOVE                             R9 R2
       49 CALL                             R8 1 1
       50 JUMPIFNOT                        R8 ; [+3]
       51 MOVE                             R9 R8
       52 MOVE                             R10 R7
       53 CALL                             R9 1 0
       54 GETTABLEKS                       R3 R7 K1 ["type"]
       56 MOVE                             R4 R7
       57 JUMPIFNOT                        R3 ; [+25]
       58 JUMPIFNOT                        R4 ; [+24]
       59 GETUPVAL                         R5 1
       60 NEWCLOSURE                       R6 P0
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 CALL                             R5 1 0
       66 RETURN                           R0 0
       67 JUMPIFNOTEQKS                    R0 K13 ["toolComplete"] ; [+8]
       69 GETUPVAL                         R2 1
       70 NEWCLOSURE                       R3 P1
       71 CAPTURE                          VAL R1
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          UPVAL U4
       74 CALL                             R2 1 0
       75 RETURN                           R0 0
       76 JUMPIFNOTEQKS                    R0 K14 ["textDelta"] ; [+6]
       78 GETUPVAL                         R2 1
       79 NEWCLOSURE                       R3 P2
       80 CAPTURE                          VAL R1
       81 CAPTURE                          UPVAL U3
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["contentId"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["getSignal"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K0 ["contentId"]
       11 CALL                             R0 1 1
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 NAMECALL                         R1 R0 K2 ["Connect"]
       20 CALL                             R1 2 1
       21 NEWCLOSURE                       R2 P1
       22 CAPTURE                          VAL R1
       23 RETURN                           R2 1

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R4 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R3 R4 K1 ["Y"]
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
       18 GETTABLEKS                       R7 R0 K0 ["AbsoluteCanvasSize"]
       20 GETTABLEKS                       R6 R7 K1 ["Y"]
       22 GETTABLEKS                       R8 R0 K9 ["AbsoluteSize"]
       24 GETTABLEKS                       R7 R8 K1 ["Y"]
       26 SUB                              R5 R6 R7
       27 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       29 GETIMPORT                        R3 K11 [math.max]
       31 CALL                             R3 2 1
       32 CALL                             R1 2 1
       33 SETTABLEKS                       R1 R0 K12 ["CanvasPosition"]
       35 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 LOADN                            R4 2
        5 GETTABLEKS                       R9 R2 K1 ["Padding"]
        7 GETTABLEKS                       R8 R9 K2 ["Small"]
        9 MULK                             R7 R8 K0 [0.5]
       10 ADDK                             R6 R7 K0 [0.5]
       11 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       12 GETIMPORT                        R5 K5 [math.floor]
       14 CALL                             R5 1 1
       15 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       17 GETIMPORT                        R3 K7 [math.max]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K8 ["useState"]
       23 NEWTABLE                         R5 0 0
       25 CALL                             R4 1 2
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R6 R7 K9 ["useCallback"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R5
       31 CAPTURE                          UPVAL U3
       32 NEWTABLE                         R8 0 0
       34 CALL                             R6 2 1
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R7 R8 K10 ["useEffect"]
       38 NEWCLOSURE                       R8 P1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          VAL R5
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U7
       46 NEWTABLE                         R9 0 1
       48 GETTABLEKS                       R10 R0 K11 ["contentId"]
       50 SETLIST                          R9 R10 1 [1]
       52 CALL                             R7 2 0
       53 GETTABLEKS                       R8 R0 K12 ["inProgress"]
       55 JUMPIFEQKB                       R8 TRUE ; [+2]
       57 LOADB                            R7 0 +1
       58 LOADB                            R7 1
       59 LOADB                            R8 0
       60 GETTABLEKS                       R9 R0 K13 ["errorMessage"]
       62 JUMPIFEQKNIL                     R9 ; [+7]
       64 GETTABLEKS                       R9 R0 K13 ["errorMessage"]
       66 JUMPIFNOTEQKS                    R9 K14 [""] ; [+2]
       68 LOADB                            R8 0 +1
       69 LOADB                            R8 1
       70 GETUPVAL                         R10 2
       71 GETTABLEKS                       R9 R10 K15 ["useMemo"]
       73 DUPCLOSURE                       R10 K16 [PROTO_11]
       74 CAPTURE                          UPVAL U8
       75 NEWTABLE                         R11 0 1
       77 GETUPVAL                         R13 8
       78 GETTABLEKS                       R12 R13 K17 ["locale"]
       80 SETLIST                          R11 R12 1 [1]
       82 CALL                             R9 2 1
       83 GETTABLEKS                       R10 R0 K18 ["description"]
       85 JUMPIFNOTEQKS                    R10 K14 [""] ; [+7]
       87 JUMPIFNOT                        R7 ; [+3]
       88 GETTABLEKS                       R10 R9 K19 ["Running"]
       90 JUMP                             ; [+2]
       91 GETTABLEKS                       R10 R9 K20 ["Completed"]
       93 NEWTABLE                         R11 0 0
       95 MOVE                             R12 R4
       96 LOADNIL                          R13
       97 LOADNIL                          R14
       98 FORGPREP                         R12
       99 GETTABLEKS                       R17 R16 K21 ["kind"]
      101 JUMPIFNOTEQKS                    R17 K22 ["tool"] ; [+37]
      103 GETUPVAL                         R18 9
      104 GETTABLEKS                       R17 R18 K23 ["get"]
      106 GETTABLEKS                       R18 R16 K24 ["contentType"]
      108 CALL                             R17 1 1
      109 JUMPIFNOT                        R17 ; [+46]
      110 GETUPVAL                         R20 3
      111 GETTABLEKS                       R19 R20 K25 ["Dictionary"]
      113 GETTABLEKS                       R18 R19 K26 ["join"]
      115 GETTABLEKS                       R19 R16 K27 ["contentProps"]
      117 DUPTABLE                         R20 K31 [{"contentId", "editThisContent", "LayoutOrder", "generating"}]
      118 GETTABLEKS                       R21 R16 K11 ["contentId"]
      120 SETTABLEKS                       R21 R20 K11 ["contentId"]
      122 SETTABLEKS                       R6 R20 K28 ["editThisContent"]
      124 SETTABLEKS                       R15 R20 K29 ["LayoutOrder"]
      126 GETTABLEKS                       R21 R16 K30 ["generating"]
      128 SETTABLEKS                       R21 R20 K30 ["generating"]
      130 CALL                             R18 2 1
      131 GETTABLEKS                       R19 R16 K11 ["contentId"]
      133 GETUPVAL                         R20 10
      134 MOVE                             R21 R17
      135 MOVE                             R22 R18
      136 CALL                             R20 2 1
      137 SETTABLE                         R20 R11 R19
      138 JUMP                             ; [+17]
      139 GETTABLEKS                       R17 R16 K21 ["kind"]
      141 JUMPIFNOTEQKS                    R17 K32 ["text"] ; [+14]
      143 GETTABLEKS                       R17 R16 K11 ["contentId"]
      145 GETUPVAL                         R18 10
      146 GETUPVAL                         R19 11
      147 DUPTABLE                         R20 K34 [{"markdown", "LayoutOrder"}]
      148 GETTABLEKS                       R21 R16 K32 ["text"]
      150 SETTABLEKS                       R21 R20 K33 ["markdown"]
      152 SETTABLEKS                       R15 R20 K29 ["LayoutOrder"]
      154 CALL                             R18 2 1
      155 SETTABLE                         R18 R11 R17
      156 FORGLOOP                         R12 2 ; [-58]
      158 GETUPVAL                         R13 2
      159 GETTABLEKS                       R12 R13 K35 ["useBinding"]
      161 LOADN                            R13 0
      162 CALL                             R12 1 2
      163 GETUPVAL                         R15 2
      164 GETTABLEKS                       R14 R15 K9 ["useCallback"]
      166 NEWCLOSURE                       R15 P3
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R7
      169 NEWTABLE                         R16 0 2
      171 MOVE                             R17 R7
      172 MOVE                             R18 R13
      173 SETLIST                          R16 R17 2 [1]
      175 CALL                             R14 2 1
      176 LOADNIL                          R15
      177 JUMPIFNOT                        R7 ; [+62]
      178 GETIMPORT                        R16 K37 [next]
      180 MOVE                             R17 R11
      181 CALL                             R16 1 1
      182 JUMPIFEQKNIL                     R16 ; [+57]
      184 DUPTABLE                         R16 K39 [{"RollingWindow"}]
      185 GETUPVAL                         R17 10
      186 GETUPVAL                         R18 12
      187 DUPTABLE                         R19 K44 [{"Size", "layout", "scroll", "onAbsoluteCanvasSizeChanged"}]
      188 DUPCLOSURE                       R22 K45 [PROTO_13]
      189 NAMECALL                         R20 R12 K46 ["map"]
      191 CALL                             R20 2 1
      192 SETTABLEKS                       R20 R19 K40 ["Size"]
      194 DUPTABLE                         R20 K49 [{"FillDirection", "SortOrder", "Padding"}]
      195 GETIMPORT                        R21 K52 [Enum.FillDirection.Vertical]
      197 SETTABLEKS                       R21 R20 K47 ["FillDirection"]
      199 GETIMPORT                        R21 K53 [Enum.SortOrder.LayoutOrder]
      201 SETTABLEKS                       R21 R20 K48 ["SortOrder"]
      203 GETIMPORT                        R21 K56 [UDim.new]
      205 LOADN                            R22 0
      206 MOVE                             R23 R3
      207 CALL                             R21 2 1
      208 SETTABLEKS                       R21 R20 K1 ["Padding"]
      210 SETTABLEKS                       R20 R19 K41 ["layout"]
      212 DUPTABLE                         R20 K60 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      213 GETIMPORT                        R21 K63 [Enum.AutomaticSize.Y]
      215 SETTABLEKS                       R21 R20 K57 ["AutomaticCanvasSize"]
      217 GETIMPORT                        R21 K65 [UDim2.new]
      219 LOADN                            R22 0
      220 LOADN                            R23 0
      221 LOADN                            R24 0
      222 LOADN                            R25 0
      223 CALL                             R21 4 1
      224 SETTABLEKS                       R21 R20 K58 ["CanvasSize"]
      226 GETIMPORT                        R21 K66 [Enum.ScrollingDirection.Y]
      228 SETTABLEKS                       R21 R20 K59 ["ScrollingDirection"]
      230 SETTABLEKS                       R20 R19 K42 ["scroll"]
      232 SETTABLEKS                       R14 R19 K43 ["onAbsoluteCanvasSizeChanged"]
      234 MOVE                             R20 R11
      235 CALL                             R17 3 1
      236 SETTABLEKS                       R17 R16 K38 ["RollingWindow"]
      238 MOVE                             R15 R16
      239 JUMP                             ; [+1]
      240 MOVE                             R15 R11
      241 JUMPIFNOT                        R8 ; [+17]
      242 GETUPVAL                         R16 10
      243 GETUPVAL                         R17 13
      244 DUPTABLE                         R18 K69 [{"tag", "Text", "LayoutOrder"}]
      245 LOADK                            R19 K70 ["size-full-0 auto-y text-caption-medium content-alert text-truncate-end"]
      246 SETTABLEKS                       R19 R18 K67 ["tag"]
      248 GETTABLEKS                       R19 R0 K13 ["errorMessage"]
      250 SETTABLEKS                       R19 R18 K68 ["Text"]
      252 LENGTH                           R20 R4
      253 ADDK                             R19 R20 K71 [1]
      254 SETTABLEKS                       R19 R18 K29 ["LayoutOrder"]
      256 CALL                             R16 2 1
      257 SETTABLEKS                       R16 R15 K72 ["Error"]
      259 LOADB                            R16 0
      260 JUMPIFEQKNIL                     R15 ; [+9]
      262 GETIMPORT                        R17 K37 [next]
      264 MOVE                             R18 R15
      265 CALL                             R17 1 1
      266 JUMPIFNOTEQKNIL                  R17 ; [+2]
      268 LOADB                            R16 0 +1
      269 LOADB                            R16 1
      270 GETUPVAL                         R17 10
      271 GETUPVAL                         R19 14
      272 GETTABLEKS                       R18 R19 K73 ["Root"]
      274 DUPTABLE                         R19 K75 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      275 GETTABLEKS                       R20 R0 K29 ["LayoutOrder"]
      277 SETTABLEKS                       R20 R19 K29 ["LayoutOrder"]
      279 GETTABLEKS                       R20 R0 K74 ["expanded"]
      281 SETTABLEKS                       R20 R19 K74 ["expanded"]
      283 GETTABLEKS                       R20 R0 K11 ["contentId"]
      285 SETTABLEKS                       R20 R19 K11 ["contentId"]
      287 GETTABLEKS                       R20 R0 K28 ["editThisContent"]
      289 SETTABLEKS                       R20 R19 K28 ["editThisContent"]
      291 DUPTABLE                         R20 K78 [{"Header", "Content"}]
      292 GETUPVAL                         R21 10
      293 GETUPVAL                         R23 14
      294 GETTABLEKS                       R22 R23 K76 ["Header"]
      296 DUPTABLE                         R23 K79 [{"LayoutOrder"}]
      297 MOVE                             R24 R1
      298 CALL                             R24 0 1
      299 SETTABLEKS                       R24 R23 K29 ["LayoutOrder"]
      301 DUPTABLE                         R24 K81 [{"HeaderText"}]
      302 GETUPVAL                         R25 10
      303 GETUPVAL                         R26 13
      304 DUPTABLE                         R27 K69 [{"tag", "Text", "LayoutOrder"}]
      305 LOADK                            R28 K82 ["auto-xy text-label-small content-default text-truncate-end"]
      306 SETTABLEKS                       R28 R27 K67 ["tag"]
      308 SETTABLEKS                       R10 R27 K68 ["Text"]
      310 MOVE                             R28 R1
      311 CALL                             R28 0 1
      312 SETTABLEKS                       R28 R27 K29 ["LayoutOrder"]
      314 DUPTABLE                         R28 K84 [{"Shimmer"}]
      315 MOVE                             R29 R7
      316 JUMPIFNOT                        R29 ; [+3]
      317 GETUPVAL                         R29 10
      318 GETUPVAL                         R30 15
      319 CALL                             R29 1 1
      320 SETTABLEKS                       R29 R28 K83 ["Shimmer"]
      322 CALL                             R25 3 1
      323 SETTABLEKS                       R25 R24 K80 ["HeaderText"]
      325 CALL                             R21 3 1
      326 SETTABLEKS                       R21 R20 K76 ["Header"]
      328 MOVE                             R21 R16
      329 JUMPIFNOT                        R21 ; [+17]
      330 GETUPVAL                         R21 10
      331 GETUPVAL                         R23 14
      332 GETTABLEKS                       R22 R23 K77 ["Content"]
      334 DUPTABLE                         R23 K86 [{"tag", "LayoutOrder", "UseVisible"}]
      335 LOADK                            R24 K87 ["col size-0-0 fill auto-y gap-xsmall"]
      336 SETTABLEKS                       R24 R23 K67 ["tag"]
      338 MOVE                             R24 R1
      339 CALL                             R24 0 1
      340 SETTABLEKS                       R24 R23 K29 ["LayoutOrder"]
      342 LOADB                            R24 1
      343 SETTABLEKS                       R24 R23 K85 ["UseVisible"]
      345 MOVE                             R24 R15
      346 CALL                             R21 3 1
      347 SETTABLEKS                       R21 R20 K77 ["Content"]
      349 CALL                             R17 3 -1
      350 RETURN                           R17 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K10 [{"type", "description", "subagentType", "inProgress", "expanded", "finalAnswer", "errorMessage"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["description"]
       15 SETTABLEKS                       R2 R1 K4 ["description"]
       17 GETTABLEKS                       R2 R0 K5 ["subagentType"]
       19 SETTABLEKS                       R2 R1 K5 ["subagentType"]
       21 GETTABLEKS                       R2 R0 K6 ["inProgress"]
       23 SETTABLEKS                       R2 R1 K6 ["inProgress"]
       25 GETTABLEKS                       R2 R0 K7 ["expanded"]
       27 SETTABLEKS                       R2 R1 K7 ["expanded"]
       29 GETTABLEKS                       R2 R0 K8 ["finalAnswer"]
       31 SETTABLEKS                       R2 R1 K8 ["finalAnswer"]
       33 GETTABLEKS                       R2 R0 K9 ["errorMessage"]
       35 SETTABLEKS                       R2 R1 K9 ["errorMessage"]
       37 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K10 [{"type", "description", "subagentType", "inProgress", "expanded", "finalAnswer", "errorMessage"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["description"]
       15 SETTABLEKS                       R2 R1 K4 ["description"]
       17 GETTABLEKS                       R2 R0 K5 ["subagentType"]
       19 SETTABLEKS                       R2 R1 K5 ["subagentType"]
       21 GETTABLEKS                       R2 R0 K6 ["inProgress"]
       23 SETTABLEKS                       R2 R1 K6 ["inProgress"]
       25 GETTABLEKS                       R2 R0 K7 ["expanded"]
       27 SETTABLEKS                       R2 R1 K7 ["expanded"]
       29 GETTABLEKS                       R2 R0 K8 ["finalAnswer"]
       31 SETTABLEKS                       R2 R1 K8 ["finalAnswer"]
       33 GETTABLEKS                       R2 R0 K9 ["errorMessage"]
       35 SETTABLEKS                       R2 R1 K9 ["errorMessage"]
       37 RETURN                           R1 1

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
       15 GETTABLEKS                       R4 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R4 K11 ["Accordion"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Util"]
       24 GETTABLEKS                       R4 R5 K13 ["ContentWidgetRegistry"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K14 ["Parent"]
       31 GETTABLEKS                       R5 R6 K15 ["Cryo"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K14 ["Parent"]
       38 GETTABLEKS                       R6 R7 K16 ["Foundation"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R0 K10 ["Components"]
       45 GETTABLEKS                       R7 R8 K17 ["MarkdownText"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R9 R0 K14 ["Parent"]
       52 GETTABLEKS                       R8 R9 K18 ["React"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R10 R0 K14 ["Parent"]
       59 GETTABLEKS                       R9 R10 K19 ["ReactUtils"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R11 R0 K10 ["Components"]
       66 GETTABLEKS                       R10 R11 K20 ["ShimmerGradient"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R12 R0 K21 ["Subagents"]
       73 GETTABLEKS                       R11 R12 K22 ["SubagentProgressEvents"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R14 R0 K23 ["Resources"]
       80 GETTABLEKS                       R13 R14 K24 ["Localization"]
       82 GETTABLEKS                       R12 R13 K25 ["Translator"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K9 [require]
       87 GETTABLEKS                       R13 R0 K26 ["Types"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K9 [require]
       92 GETTABLEKS                       R15 R0 K10 ["Components"]
       94 GETTABLEKS                       R14 R15 K27 ["UIToolRegistry"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K9 [require]
       99 GETTABLEKS                       R16 R0 K28 ["Flags"]
      101 GETTABLEKS                       R15 R16 K29 ["FFlagAssistantPersistConversations"]
      103 CALL                             R14 1 1
      104 GETTABLEKS                       R15 R5 K30 ["ScrollView"]
      106 GETTABLEKS                       R16 R5 K31 ["Text"]
      108 GETTABLEKS                       R18 R5 K32 ["Hooks"]
      110 GETTABLEKS                       R17 R18 K33 ["useTokens"]
      112 GETTABLEKS                       R18 R8 K34 ["createNextOrder"]
      114 GETTABLEKS                       R19 R7 K35 ["createElement"]
      116 DUPCLOSURE                       R20 K36 [PROTO_0]
      117 CAPTURE                          VAL R13
      118 DUPCLOSURE                       R21 K37 [PROTO_1]
      119 CAPTURE                          VAL R13
      120 DUPCLOSURE                       R22 K38 [PROTO_2]
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R4
      123 DUPCLOSURE                       R23 K39 [PROTO_14]
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R22
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R9
      140 DUPCLOSURE                       R24 K40 [PROTO_15]
      141 CAPTURE                          VAL R14
      142 DUPCLOSURE                       R25 K41 [PROTO_16]
      143 CAPTURE                          VAL R14
      144 DUPTABLE                         R26 K46 [{"Type", "ContentWidget", "Serialization", "AutoExpand"}]
      145 LOADK                            R27 K47 ["SubagentProgress"]
      146 SETTABLEKS                       R27 R26 K42 ["Type"]
      148 GETTABLEKS                       R27 R7 K48 ["memo"]
      150 MOVE                             R28 R23
      151 CALL                             R27 1 1
      152 SETTABLEKS                       R27 R26 K43 ["ContentWidget"]
      154 DUPTABLE                         R27 K51 [{"serialize", "deserialize"}]
      155 SETTABLEKS                       R24 R27 K49 ["serialize"]
      157 SETTABLEKS                       R25 R27 K50 ["deserialize"]
      159 SETTABLEKS                       R27 R26 K44 ["Serialization"]
      161 DUPTABLE                         R27 K54 [{"expandWhileGenerating", "collapseOnComplete"}]
      162 LOADB                            R28 1
      163 SETTABLEKS                       R28 R27 K52 ["expandWhileGenerating"]
      165 LOADB                            R28 1
      166 SETTABLEKS                       R28 R27 K53 ["collapseOnComplete"]
      168 SETTABLEKS                       R27 R26 K45 ["AutoExpand"]
      170 RETURN                           R26 1
