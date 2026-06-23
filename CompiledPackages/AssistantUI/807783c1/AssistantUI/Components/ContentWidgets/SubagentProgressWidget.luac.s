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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getStreamTransform"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getStreamTransform"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 JUMPIFNOT                        R4 ; [+2]
        6 JUMPIFNOTEQKS                    R4 K1 ["none"] ; [+3]
        8 LOADNIL                          R3
        9 JUMP                             ; [+1]
       10 MOVE                             R3 R4
       11 JUMPIF                           R3 ; [+1]
       12 RETURN                           R1 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K2 ["Dictionary"]
       16 GETTABLEKS                       R4 R4 K3 ["join"]
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
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K5 ["toolUseId"]
       18 SETTABLEKS                       R5 R4 K5 ["toolUseId"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K6 ["toolName"]
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
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K5 ["toolUseId"]
       17 JUMPIFNOTEQ                      R7 R8 ; [+25]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K6 ["Dictionary"]
       22 GETTABLEKS                       R7 R7 K7 ["join"]
       24 MOVE                             R8 R6
       25 DUPTABLE                         R9 K10 [{"contentProps", "generating"}]
       26 GETUPVAL                         R10 2
       27 GETTABLEKS                       R11 R6 K11 ["toolName"]
       29 GETTABLEKS                       R12 R6 K8 ["contentProps"]
       31 GETUPVAL                         R13 0
       32 GETTABLEKS                       R13 R13 K12 ["toolResult"]
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
       38 JUMPIF                           R2 ; [+20]
       39 DUPTABLE                         R5 K10 [{"kind", "contentId", "text"}]
       40 LOADK                            R6 K4 ["text"]
       41 SETTABLEKS                       R6 R5 K3 ["kind"]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K6 ["textContentId"]
       46 SETTABLEKS                       R6 R5 K5 ["contentId"]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K4 ["text"]
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
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K9 ["getStreamTransform"]
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
       70 GETUPVAL                         R9 2
       71 GETTABLEKS                       R9 R9 K15 ["useMemo"]
       73 DUPCLOSURE                       R10 K16 [PROTO_11]
       74 CAPTURE                          UPVAL U8
       75 NEWTABLE                         R11 0 1
       77 GETUPVAL                         R12 8
       78 GETTABLEKS                       R12 R12 K17 ["locale"]
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
      101 JUMPIFNOTEQKS                    R17 K22 ["tool"] ; [+47]
      103 GETUPVAL                         R18 9
      104 CALL                             R18 0 1
      105 JUMPIFNOT                        R18 ; [+7]
      106 GETUPVAL                         R17 10
      107 GETTABLEKS                       R17 R17 K23 ["get"]
      109 GETTABLEKS                       R18 R16 K24 ["contentType"]
      111 CALL                             R17 1 1
      112 JUMP                             ; [+6]
      113 GETUPVAL                         R17 11
      114 GETTABLEKS                       R17 R17 K23 ["get"]
      116 GETTABLEKS                       R18 R16 K24 ["contentType"]
      118 CALL                             R17 1 1
      119 JUMPIFNOT                        R17 ; [+46]
      120 GETUPVAL                         R18 3
      121 GETTABLEKS                       R18 R18 K25 ["Dictionary"]
      123 GETTABLEKS                       R18 R18 K26 ["join"]
      125 GETTABLEKS                       R19 R16 K27 ["contentProps"]
      127 DUPTABLE                         R20 K31 [{"contentId", "editThisContent", "LayoutOrder", "generating"}]
      128 GETTABLEKS                       R21 R16 K11 ["contentId"]
      130 SETTABLEKS                       R21 R20 K11 ["contentId"]
      132 SETTABLEKS                       R6 R20 K28 ["editThisContent"]
      134 SETTABLEKS                       R15 R20 K29 ["LayoutOrder"]
      136 GETTABLEKS                       R21 R16 K30 ["generating"]
      138 SETTABLEKS                       R21 R20 K30 ["generating"]
      140 CALL                             R18 2 1
      141 GETTABLEKS                       R19 R16 K11 ["contentId"]
      143 GETUPVAL                         R20 12
      144 MOVE                             R21 R17
      145 MOVE                             R22 R18
      146 CALL                             R20 2 1
      147 SETTABLE                         R20 R11 R19
      148 JUMP                             ; [+17]
      149 GETTABLEKS                       R17 R16 K21 ["kind"]
      151 JUMPIFNOTEQKS                    R17 K32 ["text"] ; [+14]
      153 GETTABLEKS                       R17 R16 K11 ["contentId"]
      155 GETUPVAL                         R18 12
      156 GETUPVAL                         R19 13
      157 DUPTABLE                         R20 K34 [{"markdown", "LayoutOrder"}]
      158 GETTABLEKS                       R21 R16 K32 ["text"]
      160 SETTABLEKS                       R21 R20 K33 ["markdown"]
      162 SETTABLEKS                       R15 R20 K29 ["LayoutOrder"]
      164 CALL                             R18 2 1
      165 SETTABLE                         R18 R11 R17
      166 FORGLOOP                         R12 2 ; [-68]
      168 GETUPVAL                         R12 2
      169 GETTABLEKS                       R12 R12 K35 ["useBinding"]
      171 LOADN                            R13 0
      172 CALL                             R12 1 2
      173 GETUPVAL                         R14 2
      174 GETTABLEKS                       R14 R14 K9 ["useCallback"]
      176 NEWCLOSURE                       R15 P3
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R7
      179 NEWTABLE                         R16 0 2
      181 MOVE                             R17 R7
      182 MOVE                             R18 R13
      183 SETLIST                          R16 R17 2 [1]
      185 CALL                             R14 2 1
      186 LOADNIL                          R15
      187 JUMPIFNOT                        R7 ; [+62]
      188 GETIMPORT                        R16 K37 [next]
      190 MOVE                             R17 R11
      191 CALL                             R16 1 1
      192 JUMPIFEQKNIL                     R16 ; [+57]
      194 DUPTABLE                         R16 K39 [{"RollingWindow"}]
      195 GETUPVAL                         R17 12
      196 GETUPVAL                         R18 14
      197 DUPTABLE                         R19 K44 [{"Size", "layout", "scroll", "onAbsoluteCanvasSizeChanged"}]
      198 DUPCLOSURE                       R22 K45 [PROTO_13]
      199 NAMECALL                         R20 R12 K46 ["map"]
      201 CALL                             R20 2 1
      202 SETTABLEKS                       R20 R19 K40 ["Size"]
      204 DUPTABLE                         R20 K49 [{"FillDirection", "SortOrder", "Padding"}]
      205 GETIMPORT                        R21 K52 [Enum.FillDirection.Vertical]
      207 SETTABLEKS                       R21 R20 K47 ["FillDirection"]
      209 GETIMPORT                        R21 K53 [Enum.SortOrder.LayoutOrder]
      211 SETTABLEKS                       R21 R20 K48 ["SortOrder"]
      213 GETIMPORT                        R21 K56 [UDim.new]
      215 LOADN                            R22 0
      216 MOVE                             R23 R3
      217 CALL                             R21 2 1
      218 SETTABLEKS                       R21 R20 K1 ["Padding"]
      220 SETTABLEKS                       R20 R19 K41 ["layout"]
      222 DUPTABLE                         R20 K60 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      223 GETIMPORT                        R21 K63 [Enum.AutomaticSize.Y]
      225 SETTABLEKS                       R21 R20 K57 ["AutomaticCanvasSize"]
      227 GETIMPORT                        R21 K65 [UDim2.new]
      229 LOADN                            R22 0
      230 LOADN                            R23 0
      231 LOADN                            R24 0
      232 LOADN                            R25 0
      233 CALL                             R21 4 1
      234 SETTABLEKS                       R21 R20 K58 ["CanvasSize"]
      236 GETIMPORT                        R21 K66 [Enum.ScrollingDirection.Y]
      238 SETTABLEKS                       R21 R20 K59 ["ScrollingDirection"]
      240 SETTABLEKS                       R20 R19 K42 ["scroll"]
      242 SETTABLEKS                       R14 R19 K43 ["onAbsoluteCanvasSizeChanged"]
      244 MOVE                             R20 R11
      245 CALL                             R17 3 1
      246 SETTABLEKS                       R17 R16 K38 ["RollingWindow"]
      248 MOVE                             R15 R16
      249 JUMP                             ; [+1]
      250 MOVE                             R15 R11
      251 JUMPIFNOT                        R8 ; [+17]
      252 GETUPVAL                         R16 12
      253 GETUPVAL                         R17 15
      254 DUPTABLE                         R18 K69 [{"tag", "Text", "LayoutOrder"}]
      255 LOADK                            R19 K70 ["size-full-0 auto-y text-caption-medium content-alert text-truncate-end"]
      256 SETTABLEKS                       R19 R18 K67 ["tag"]
      258 GETTABLEKS                       R19 R0 K13 ["errorMessage"]
      260 SETTABLEKS                       R19 R18 K68 ["Text"]
      262 LENGTH                           R20 R4
      263 ADDK                             R19 R20 K71 [1]
      264 SETTABLEKS                       R19 R18 K29 ["LayoutOrder"]
      266 CALL                             R16 2 1
      267 SETTABLEKS                       R16 R15 K72 ["Error"]
      269 LOADB                            R16 0
      270 JUMPIFEQKNIL                     R15 ; [+9]
      272 GETIMPORT                        R17 K37 [next]
      274 MOVE                             R18 R15
      275 CALL                             R17 1 1
      276 JUMPIFNOTEQKNIL                  R17 ; [+2]
      278 LOADB                            R16 0 +1
      279 LOADB                            R16 1
      280 GETUPVAL                         R17 12
      281 GETUPVAL                         R18 16
      282 GETTABLEKS                       R18 R18 K73 ["Root"]
      284 DUPTABLE                         R19 K75 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      285 GETTABLEKS                       R20 R0 K29 ["LayoutOrder"]
      287 SETTABLEKS                       R20 R19 K29 ["LayoutOrder"]
      289 GETTABLEKS                       R20 R0 K74 ["expanded"]
      291 SETTABLEKS                       R20 R19 K74 ["expanded"]
      293 GETTABLEKS                       R20 R0 K11 ["contentId"]
      295 SETTABLEKS                       R20 R19 K11 ["contentId"]
      297 GETTABLEKS                       R20 R0 K28 ["editThisContent"]
      299 SETTABLEKS                       R20 R19 K28 ["editThisContent"]
      301 DUPTABLE                         R20 K78 [{"Header", "Content"}]
      302 GETUPVAL                         R21 12
      303 GETUPVAL                         R22 16
      304 GETTABLEKS                       R22 R22 K76 ["Header"]
      306 DUPTABLE                         R23 K79 [{"LayoutOrder"}]
      307 MOVE                             R24 R1
      308 CALL                             R24 0 1
      309 SETTABLEKS                       R24 R23 K29 ["LayoutOrder"]
      311 DUPTABLE                         R24 K81 [{"HeaderText"}]
      312 GETUPVAL                         R25 12
      313 GETUPVAL                         R26 15
      314 DUPTABLE                         R27 K69 [{"tag", "Text", "LayoutOrder"}]
      315 LOADK                            R28 K82 ["auto-xy text-label-small content-default text-truncate-end"]
      316 SETTABLEKS                       R28 R27 K67 ["tag"]
      318 SETTABLEKS                       R10 R27 K68 ["Text"]
      320 MOVE                             R28 R1
      321 CALL                             R28 0 1
      322 SETTABLEKS                       R28 R27 K29 ["LayoutOrder"]
      324 DUPTABLE                         R28 K84 [{"Shimmer"}]
      325 MOVE                             R29 R7
      326 JUMPIFNOT                        R29 ; [+3]
      327 GETUPVAL                         R29 12
      328 GETUPVAL                         R30 17
      329 CALL                             R29 1 1
      330 SETTABLEKS                       R29 R28 K83 ["Shimmer"]
      332 CALL                             R25 3 1
      333 SETTABLEKS                       R25 R24 K80 ["HeaderText"]
      335 CALL                             R21 3 1
      336 SETTABLEKS                       R21 R20 K76 ["Header"]
      338 MOVE                             R21 R16
      339 JUMPIFNOT                        R21 ; [+17]
      340 GETUPVAL                         R21 12
      341 GETUPVAL                         R22 16
      342 GETTABLEKS                       R22 R22 K77 ["Content"]
      344 DUPTABLE                         R23 K86 [{"tag", "LayoutOrder", "UseVisible"}]
      345 LOADK                            R24 K87 ["col size-0-0 fill auto-y gap-xsmall"]
      346 SETTABLEKS                       R24 R23 K67 ["tag"]
      348 MOVE                             R24 R1
      349 CALL                             R24 0 1
      350 SETTABLEKS                       R24 R23 K29 ["LayoutOrder"]
      352 LOADB                            R24 1
      353 SETTABLEKS                       R24 R23 K85 ["UseVisible"]
      355 MOVE                             R24 R15
      356 CALL                             R21 3 1
      357 SETTABLEKS                       R21 R20 K77 ["Content"]
      359 CALL                             R17 3 -1
      360 RETURN                           R17 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K8 [{"description", "subagentType", "inProgress", "finalAnswer", "errorMessage"}]
        9 GETTABLEKS                       R2 R0 K3 ["description"]
       11 SETTABLEKS                       R2 R1 K3 ["description"]
       13 GETTABLEKS                       R2 R0 K4 ["subagentType"]
       15 SETTABLEKS                       R2 R1 K4 ["subagentType"]
       17 GETTABLEKS                       R2 R0 K5 ["inProgress"]
       19 SETTABLEKS                       R2 R1 K5 ["inProgress"]
       21 GETTABLEKS                       R2 R0 K6 ["finalAnswer"]
       23 SETTABLEKS                       R2 R1 K6 ["finalAnswer"]
       25 GETTABLEKS                       R2 R0 K7 ["errorMessage"]
       27 SETTABLEKS                       R2 R1 K7 ["errorMessage"]
       29 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 DUPTABLE                         R2 K10 [{"type", "description", "subagentType", "inProgress", "expanded", "finalAnswer", "errorMessage"}]
        9 LOADK                            R3 K11 ["SubagentProgress"]
       10 SETTABLEKS                       R3 R2 K3 ["type"]
       12 GETTABLEKS                       R4 R0 K4 ["description"]
       14 ORK                              R3 R4 K12 ["UNKNOWN_DESCRIPTION"]
       15 SETTABLEKS                       R3 R2 K4 ["description"]
       17 GETTABLEKS                       R3 R0 K5 ["subagentType"]
       19 SETTABLEKS                       R3 R2 K5 ["subagentType"]
       21 GETTABLEKS                       R3 R0 K6 ["inProgress"]
       23 SETTABLEKS                       R3 R2 K6 ["inProgress"]
       25 LOADB                            R3 0
       26 SETTABLEKS                       R3 R2 K7 ["expanded"]
       28 GETTABLEKS                       R3 R0 K8 ["finalAnswer"]
       30 SETTABLEKS                       R3 R2 K8 ["finalAnswer"]
       32 GETTABLEKS                       R3 R0 K9 ["errorMessage"]
       34 SETTABLEKS                       R3 R2 K9 ["errorMessage"]
       36 RETURN                           R2 1

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
       47 GETTABLEKS                       R7 R7 K18 ["Foundation"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K10 ["Components"]
       54 GETTABLEKS                       R8 R8 K19 ["MarkdownText"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R0 K15 ["Parent"]
       61 GETTABLEKS                       R9 R9 K20 ["React"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R0 K15 ["Parent"]
       68 GETTABLEKS                       R10 R10 K21 ["ReactUtils"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R11 R0 K12 ["Util"]
       75 GETTABLEKS                       R11 R11 K22 ["Serializer"]
       77 GETTABLEKS                       R11 R11 K23 ["SerializerTypes"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R12 R0 K10 ["Components"]
       84 GETTABLEKS                       R12 R12 K24 ["ShimmerGradient"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETTABLEKS                       R13 R0 K25 ["Subagents"]
       91 GETTABLEKS                       R13 R13 K26 ["SubagentProgressEvents"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K9 [require]
       96 GETTABLEKS                       R14 R0 K27 ["Resources"]
       98 GETTABLEKS                       R14 R14 K28 ["Localization"]
      100 GETTABLEKS                       R14 R14 K29 ["Translator"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K9 [require]
      105 GETTABLEKS                       R15 R0 K30 ["Types"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K9 [require]
      110 GETTABLEKS                       R16 R0 K10 ["Components"]
      112 GETTABLEKS                       R16 R16 K31 ["UIToolRegistry"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K9 [require]
      117 GETTABLEKS                       R17 R0 K32 ["Flags"]
      119 GETTABLEKS                       R17 R17 K33 ["FFlagAssistantMultipleChatPersistence"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K9 [require]
      124 GETTABLEKS                       R18 R0 K32 ["Flags"]
      126 GETTABLEKS                       R18 R18 K34 ["FFlagAssistantSplitToolsAndWidgets"]
      128 CALL                             R17 1 1
      129 GETTABLEKS                       R18 R6 K35 ["ScrollView"]
      131 GETTABLEKS                       R19 R6 K36 ["Text"]
      133 GETTABLEKS                       R20 R6 K37 ["Hooks"]
      135 GETTABLEKS                       R20 R20 K38 ["useTokens"]
      137 GETTABLEKS                       R21 R9 K39 ["createNextOrder"]
      139 GETTABLEKS                       R22 R8 K40 ["createElement"]
      141 DUPCLOSURE                       R23 K41 [PROTO_0]
      142 CAPTURE                          VAL R15
      143 DUPCLOSURE                       R24 K42 [PROTO_1]
      144 CAPTURE                          VAL R15
      145 DUPCLOSURE                       R25 K43 [PROTO_2]
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R4
      148 DUPCLOSURE                       R26 K44 [PROTO_14]
      149 CAPTURE                          VAL R21
      150 CAPTURE                          VAL R20
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R25
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R11
      167 DUPTABLE                         R27 K47 [{"toMeta", "fromMeta"}]
      168 DUPCLOSURE                       R28 K48 [PROTO_15]
      169 CAPTURE                          VAL R16
      170 SETTABLEKS                       R28 R27 K45 ["toMeta"]
      172 DUPCLOSURE                       R28 K49 [PROTO_16]
      173 CAPTURE                          VAL R16
      174 SETTABLEKS                       R28 R27 K46 ["fromMeta"]
      176 DUPTABLE                         R28 K54 [{"Type", "ContentWidget", "Serialization", "AutoExpand"}]
      177 LOADK                            R29 K55 ["SubagentProgress"]
      178 SETTABLEKS                       R29 R28 K50 ["Type"]
      180 GETTABLEKS                       R29 R8 K56 ["memo"]
      182 MOVE                             R30 R26
      183 CALL                             R29 1 1
      184 SETTABLEKS                       R29 R28 K51 ["ContentWidget"]
      186 SETTABLEKS                       R27 R28 K52 ["Serialization"]
      188 DUPTABLE                         R29 K59 [{"expandWhileGenerating", "collapseOnComplete"}]
      189 LOADB                            R30 1
      190 SETTABLEKS                       R30 R29 K57 ["expandWhileGenerating"]
      192 LOADB                            R30 1
      193 SETTABLEKS                       R30 R29 K58 ["collapseOnComplete"]
      195 SETTABLEKS                       R29 R28 K53 ["AutoExpand"]
      197 RETURN                           R28 1
