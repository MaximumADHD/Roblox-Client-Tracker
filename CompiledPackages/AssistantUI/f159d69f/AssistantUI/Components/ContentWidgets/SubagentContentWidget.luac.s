PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 DUPTABLE                         R4 K11 [{["kind"] = "tool", ["contentId"], ["toolUseId"], ["toolName"], ["contentType"], ["contentProps"], ["streaming"]}]
        5 GETUPVAL                         R5 0
        6 LOADB                            R7 0
        7 NAMECALL                         R5 R5 K12 ["GenerateGUID"]
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
       25 DUPTABLE                         R5 K15 [{"type", "toolUse"}]
       26 GETUPVAL                         R6 2
       27 SETTABLEKS                       R6 R5 K13 ["type"]
       29 GETUPVAL                         R6 3
       30 SETTABLEKS                       R6 R5 K14 ["toolUse"]
       32 SETTABLEKS                       R5 R4 K9 ["contentProps"]
       34 NEWTABLE                         R5 0 0
       36 SETTABLEKS                       R5 R4 K10 ["streaming"]
       38 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       40 MOVE                             R3 R1
       41 GETIMPORT                        R2 K17 [table.insert]
       43 CALL                             R2 2 0
       44 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K3 ["kind"]
       10 JUMPIFNOTEQKS                    R7 K4 ["tool"] ; [+37]
       12 GETTABLEKS                       R7 R6 K5 ["toolUseId"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K5 ["toolUseId"]
       17 JUMPIFNOTEQ                      R7 R8 ; [+30]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K6 ["Dictionary"]
       22 GETTABLEKS                       R7 R7 K7 ["join"]
       24 MOVE                             R8 R6
       25 DUPTABLE                         R9 K10 [{"contentProps", "streaming"}]
       26 GETUPVAL                         R10 2
       27 GETTABLEKS                       R10 R10 K11 ["assign"]
       29 GETTABLEKS                       R11 R6 K8 ["contentProps"]
       31 DUPTABLE                         R12 K13 [{"toolResult"}]
       32 GETUPVAL                         R13 0
       33 GETTABLEKS                       R13 R13 K12 ["toolResult"]
       35 SETTABLEKS                       R13 R12 K12 ["toolResult"]
       37 CALL                             R10 2 1
       38 SETTABLEKS                       R10 R9 K8 ["contentProps"]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R10 R10 K14 ["None"]
       43 SETTABLEKS                       R10 R9 K9 ["streaming"]
       45 CALL                             R7 2 1
       46 SETTABLE                         R7 R1 R5
       47 RETURN                           R1 1
       48 FORGLOOP                         R2 2 ; [-41]
       50 RETURN                           R1 1

PROTO_4:
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

PROTO_5:
        0 JUMPIFNOTEQKS                    R0 K0 ["toolStart"] ; [+29]
        2 DUPTABLE                         R2 K6 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
        3 GETTABLEKS                       R3 R1 K7 ["toolUseId"]
        5 SETTABLEKS                       R3 R2 K3 ["id"]
        7 GETTABLEKS                       R3 R1 K8 ["toolName"]
        9 SETTABLEKS                       R3 R2 K4 ["name"]
       11 GETTABLEKS                       R3 R1 K5 ["input"]
       13 SETTABLEKS                       R3 R2 K5 ["input"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K9 ["get"]
       18 GETTABLEKS                       R4 R1 K8 ["toolName"]
       20 CALL                             R3 1 1
       21 JUMPIFNOT                        R3 ; [+24]
       22 GETUPVAL                         R4 1
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 CALL                             R4 1 0
       29 RETURN                           R0 0
       30 JUMPIFNOTEQKS                    R0 K10 ["toolComplete"] ; [+8]
       32 GETUPVAL                         R2 1
       33 NEWCLOSURE                       R3 P1
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 CALL                             R2 1 0
       38 RETURN                           R0 0
       39 JUMPIFNOTEQKS                    R0 K11 ["textDelta"] ; [+6]
       41 GETUPVAL                         R2 1
       42 NEWCLOSURE                       R3 P2
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U3
       45 CALL                             R2 1 0
       46 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_11:
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
       53 LOADNIL                          R7
       54 LOADNIL                          R8
       55 LOADNIL                          R9
       56 LOADNIL                          R10
       57 GETTABLEKS                       R12 R0 K12 ["toolUse"]
       59 JUMPIFNOT                        R12 ; [+5]
       60 GETTABLEKS                       R11 R0 K12 ["toolUse"]
       62 GETTABLEKS                       R11 R11 K13 ["input"]
       64 JUMPIF                           R11 ; [+1]
       65 GETUPVAL                         R11 8
       66 GETTABLEKS                       R12 R11 K15 ["description"]
       68 ORK                              R7 R12 K14 [""]
       69 GETTABLEKS                       R12 R0 K16 ["toolResult"]
       71 JUMPIFEQKNIL                     R12 ; [+2]
       73 LOADB                            R8 0 +1
       74 LOADB                            R8 1
       75 GETTABLEKS                       R12 R0 K16 ["toolResult"]
       77 JUMPIFNOT                        R12 ; [+25]
       78 GETTABLEKS                       R12 R0 K16 ["toolResult"]
       80 GETTABLEKS                       R12 R12 K17 ["content"]
       82 JUMPIFNOT                        R12 ; [+5]
       83 GETTABLEKS                       R13 R0 K16 ["toolResult"]
       85 GETTABLEKS                       R13 R13 K17 ["content"]
       87 GETTABLEN                        R12 R13 1
       88 JUMPIFNOT                        R12 ; [+14]
       89 GETTABLEKS                       R13 R12 K18 ["type"]
       91 JUMPIFNOTEQKS                    R13 K19 ["text"] ; [+11]
       93 GETTABLEKS                       R13 R0 K16 ["toolResult"]
       95 GETTABLEKS                       R13 R13 K20 ["isError"]
       97 JUMPIFNOT                        R13 ; [+3]
       98 GETTABLEKS                       R9 R12 K19 ["text"]
      100 JUMP                             ; [+2]
      101 GETTABLEKS                       R10 R12 K19 ["text"]
      103 LOADB                            R12 0
      104 JUMPIFEQKNIL                     R9 ; [+5]
      106 JUMPIFNOTEQKS                    R9 K14 [""] ; [+2]
      108 LOADB                            R12 0 +1
      109 LOADB                            R12 1
      110 GETUPVAL                         R13 2
      111 GETTABLEKS                       R13 R13 K21 ["useMemo"]
      113 DUPCLOSURE                       R14 K22 [PROTO_8]
      114 CAPTURE                          UPVAL U9
      115 NEWTABLE                         R15 0 1
      117 GETUPVAL                         R16 9
      118 GETTABLEKS                       R16 R16 K23 ["locale"]
      120 SETLIST                          R15 R16 1 [1]
      122 CALL                             R13 2 1
      123 MOVE                             R14 R7
      124 JUMPIFNOTEQKS                    R14 K14 [""] ; [+7]
      126 JUMPIFNOT                        R8 ; [+3]
      127 GETTABLEKS                       R14 R13 K24 ["Running"]
      129 JUMP                             ; [+2]
      130 GETTABLEKS                       R14 R13 K25 ["Completed"]
      132 NEWTABLE                         R15 0 0
      134 MOVE                             R16 R4
      135 LOADNIL                          R17
      136 LOADNIL                          R18
      137 FORGPREP                         R16
      138 GETTABLEKS                       R21 R20 K26 ["kind"]
      140 JUMPIFNOTEQKS                    R21 K27 ["tool"] ; [+33]
      142 GETUPVAL                         R21 10
      143 GETTABLEKS                       R22 R20 K28 ["contentProps"]
      145 CALL                             R21 1 1
      146 JUMPIFNOT                        R21 ; [+59]
      147 GETUPVAL                         R22 7
      148 GETTABLEKS                       R22 R22 K29 ["join"]
      150 GETTABLEKS                       R23 R20 K28 ["contentProps"]
      152 DUPTABLE                         R24 K33 [{"contentId", "editThisContent", "LayoutOrder", "streaming"}]
      153 GETTABLEKS                       R25 R20 K11 ["contentId"]
      155 SETTABLEKS                       R25 R24 K11 ["contentId"]
      157 SETTABLEKS                       R6 R24 K30 ["editThisContent"]
      159 SETTABLEKS                       R19 R24 K31 ["LayoutOrder"]
      161 GETTABLEKS                       R25 R20 K32 ["streaming"]
      163 SETTABLEKS                       R25 R24 K32 ["streaming"]
      165 CALL                             R22 2 1
      166 GETTABLEKS                       R23 R20 K11 ["contentId"]
      168 GETUPVAL                         R24 11
      169 MOVE                             R25 R21
      170 MOVE                             R26 R22
      171 CALL                             R24 2 1
      172 SETTABLE                         R24 R15 R23
      173 JUMP                             ; [+32]
      174 GETTABLEKS                       R21 R20 K26 ["kind"]
      176 JUMPIFNOTEQKS                    R21 K19 ["text"] ; [+29]
      178 GETTABLEKS                       R21 R20 K11 ["contentId"]
      180 GETUPVAL                         R22 11
      181 GETUPVAL                         R23 12
      182 DUPTABLE                         R24 K36 [{"markdown", "isStreaming", "LayoutOrder"}]
      183 GETTABLEKS                       R25 R20 K19 ["text"]
      185 SETTABLEKS                       R25 R24 K34 ["markdown"]
      187 GETUPVAL                         R26 13
      188 GETTABLEKS                       R26 R26 K37 ["FFlagAssistantMarkdownStreaming"]
      190 JUMPIFNOT                        R26 ; [+8]
      191 MOVE                             R25 R8
      192 JUMPIFNOT                        R25 ; [+7]
      193 LENGTH                           R26 R4
      194 JUMPIFEQ                         R19 R26 ; [+2]
      196 LOADB                            R25 0 +1
      197 LOADB                            R25 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R25
      200 SETTABLEKS                       R25 R24 K35 ["isStreaming"]
      202 SETTABLEKS                       R19 R24 K31 ["LayoutOrder"]
      204 CALL                             R22 2 1
      205 SETTABLE                         R22 R15 R21
      206 FORGLOOP                         R16 2 ; [-69]
      208 GETUPVAL                         R16 2
      209 GETTABLEKS                       R16 R16 K38 ["useBinding"]
      211 LOADN                            R17 0
      212 CALL                             R16 1 2
      213 GETUPVAL                         R18 2
      214 GETTABLEKS                       R18 R18 K9 ["useCallback"]
      216 NEWCLOSURE                       R19 P3
      217 CAPTURE                          VAL R17
      218 CAPTURE                          REF R8
      219 NEWTABLE                         R20 0 2
      221 MOVE                             R21 R8
      222 MOVE                             R22 R17
      223 SETLIST                          R20 R21 2 [1]
      225 CALL                             R18 2 1
      226 LOADNIL                          R19
      227 JUMPIFNOT                        R8 ; [+62]
      228 GETIMPORT                        R20 K40 [next]
      230 MOVE                             R21 R15
      231 CALL                             R20 1 1
      232 JUMPIFEQKNIL                     R20 ; [+57]
      234 DUPTABLE                         R20 K42 [{"RollingWindow"}]
      235 GETUPVAL                         R21 11
      236 GETUPVAL                         R22 14
      237 DUPTABLE                         R23 K47 [{"Size", "layout", "scroll", "onAbsoluteCanvasSizeChanged"}]
      238 DUPCLOSURE                       R26 K48 [PROTO_10]
      239 NAMECALL                         R24 R16 K49 ["map"]
      241 CALL                             R24 2 1
      242 SETTABLEKS                       R24 R23 K43 ["Size"]
      244 DUPTABLE                         R24 K52 [{"FillDirection", "SortOrder", "Padding"}]
      245 GETIMPORT                        R25 K55 [Enum.FillDirection.Vertical]
      247 SETTABLEKS                       R25 R24 K50 ["FillDirection"]
      249 GETIMPORT                        R25 K56 [Enum.SortOrder.LayoutOrder]
      251 SETTABLEKS                       R25 R24 K51 ["SortOrder"]
      253 GETIMPORT                        R25 K59 [UDim.new]
      255 LOADN                            R26 0
      256 MOVE                             R27 R3
      257 CALL                             R25 2 1
      258 SETTABLEKS                       R25 R24 K1 ["Padding"]
      260 SETTABLEKS                       R24 R23 K44 ["layout"]
      262 DUPTABLE                         R24 K63 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      263 GETIMPORT                        R25 K66 [Enum.AutomaticSize.Y]
      265 SETTABLEKS                       R25 R24 K60 ["AutomaticCanvasSize"]
      267 GETIMPORT                        R25 K68 [UDim2.new]
      269 LOADN                            R26 0
      270 LOADN                            R27 0
      271 LOADN                            R28 0
      272 LOADN                            R29 0
      273 CALL                             R25 4 1
      274 SETTABLEKS                       R25 R24 K61 ["CanvasSize"]
      276 GETIMPORT                        R25 K69 [Enum.ScrollingDirection.Y]
      278 SETTABLEKS                       R25 R24 K62 ["ScrollingDirection"]
      280 SETTABLEKS                       R24 R23 K45 ["scroll"]
      282 SETTABLEKS                       R18 R23 K46 ["onAbsoluteCanvasSizeChanged"]
      284 MOVE                             R24 R15
      285 CALL                             R21 3 1
      286 SETTABLEKS                       R21 R20 K41 ["RollingWindow"]
      288 MOVE                             R19 R20
      289 JUMP                             ; [+1]
      290 MOVE                             R19 R15
      291 JUMPIFNOT                        R12 ; [+12]
      292 GETUPVAL                         R20 11
      293 GETUPVAL                         R21 15
      294 DUPTABLE                         R22 K73 [{["tag"] = "size-full-0 auto-y text-caption-medium text-truncate-end content-alert", ["Text"], ["LayoutOrder"]}]
      295 SETTABLEKS                       R9 R22 K72 ["Text"]
      297 LENGTH                           R24 R4
      298 ADDK                             R23 R24 K74 [1]
      299 SETTABLEKS                       R23 R22 K31 ["LayoutOrder"]
      301 CALL                             R20 2 1
      302 SETTABLEKS                       R20 R19 K75 ["Error"]
      304 JUMPIF                           R8 ; [+21]
      305 GETIMPORT                        R20 K40 [next]
      307 MOVE                             R21 R15
      308 CALL                             R20 1 1
      309 JUMPIFNOTEQKNIL                  R20 ; [+16]
      311 JUMPIFNOT                        R10 ; [+14]
      312 JUMPIFEQKS                       R10 K14 [""] ; [+13]
      314 GETUPVAL                         R20 11
      315 GETUPVAL                         R21 12
      316 DUPTABLE                         R22 K76 [{"markdown", "LayoutOrder"}]
      317 SETTABLEKS                       R10 R22 K34 ["markdown"]
      319 LENGTH                           R24 R4
      320 ADDK                             R23 R24 K77 [2]
      321 SETTABLEKS                       R23 R22 K31 ["LayoutOrder"]
      323 CALL                             R20 2 1
      324 SETTABLEKS                       R20 R19 K78 ["FinalAnswer"]
      326 LOADB                            R20 0
      327 JUMPIFEQKNIL                     R19 ; [+9]
      329 GETIMPORT                        R21 K40 [next]
      331 MOVE                             R22 R19
      332 CALL                             R21 1 1
      333 JUMPIFNOTEQKNIL                  R21 ; [+2]
      335 LOADB                            R20 0 +1
      336 LOADB                            R20 1
      337 GETUPVAL                         R21 11
      338 GETUPVAL                         R22 16
      339 GETTABLEKS                       R22 R22 K79 ["Root"]
      341 DUPTABLE                         R23 K81 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      342 GETTABLEKS                       R24 R0 K31 ["LayoutOrder"]
      344 SETTABLEKS                       R24 R23 K31 ["LayoutOrder"]
      346 GETTABLEKS                       R24 R0 K80 ["expanded"]
      348 SETTABLEKS                       R24 R23 K80 ["expanded"]
      350 GETTABLEKS                       R24 R0 K11 ["contentId"]
      352 SETTABLEKS                       R24 R23 K11 ["contentId"]
      354 GETTABLEKS                       R24 R0 K30 ["editThisContent"]
      356 SETTABLEKS                       R24 R23 K30 ["editThisContent"]
      358 DUPTABLE                         R24 K84 [{"Header", "Content"}]
      359 GETUPVAL                         R25 11
      360 GETUPVAL                         R26 16
      361 GETTABLEKS                       R26 R26 K82 ["Header"]
      363 DUPTABLE                         R27 K85 [{"LayoutOrder"}]
      364 MOVE                             R28 R1
      365 CALL                             R28 0 1
      366 SETTABLEKS                       R28 R27 K31 ["LayoutOrder"]
      368 DUPTABLE                         R28 K87 [{"HeaderText"}]
      369 GETUPVAL                         R29 11
      370 GETUPVAL                         R30 15
      371 DUPTABLE                         R31 K89 [{["tag"] = "auto-xy text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      372 SETTABLEKS                       R14 R31 K72 ["Text"]
      374 MOVE                             R32 R1
      375 CALL                             R32 0 1
      376 SETTABLEKS                       R32 R31 K31 ["LayoutOrder"]
      378 DUPTABLE                         R32 K91 [{"Shimmer"}]
      379 MOVE                             R33 R8
      380 JUMPIFNOT                        R33 ; [+3]
      381 GETUPVAL                         R33 11
      382 GETUPVAL                         R34 17
      383 CALL                             R33 1 1
      384 SETTABLEKS                       R33 R32 K90 ["Shimmer"]
      386 CALL                             R29 3 1
      387 SETTABLEKS                       R29 R28 K86 ["HeaderText"]
      389 CALL                             R25 3 1
      390 SETTABLEKS                       R25 R24 K82 ["Header"]
      392 MOVE                             R25 R20
      393 JUMPIFNOT                        R25 ; [+11]
      394 GETUPVAL                         R25 11
      395 GETUPVAL                         R26 16
      396 GETTABLEKS                       R26 R26 K83 ["Content"]
      398 DUPTABLE                         R27 K95 [{["tag"] = "col fill gap-xsmall size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      399 MOVE                             R28 R1
      400 CALL                             R28 0 1
      401 SETTABLEKS                       R28 R27 K31 ["LayoutOrder"]
      403 MOVE                             R28 R19
      404 CALL                             R25 3 1
      405 SETTABLEKS                       R25 R24 K83 ["Content"]
      407 CALL                             R21 3 -1
      408 CLOSEUPVALS                      R8
      409 RETURN                           R21 -1

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
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Cryo"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["Dash"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["Foundation"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R2 K14 ["React"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K10 [require]
       37 GETTABLEKS                       R8 R2 K15 ["ReactUtils"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K10 [require]
       42 GETTABLEKS                       R9 R0 K16 ["Components"]
       44 GETTABLEKS                       R9 R9 K17 ["Accordion"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K10 [require]
       49 GETTABLEKS                       R10 R0 K18 ["Flags"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K10 [require]
       54 GETTABLEKS                       R11 R0 K16 ["Components"]
       56 GETTABLEKS                       R11 R11 K19 ["MarkdownText"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K10 [require]
       61 GETTABLEKS                       R12 R0 K16 ["Components"]
       63 GETTABLEKS                       R12 R12 K20 ["ShimmerGradient"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K10 [require]
       68 GETTABLEKS                       R13 R0 K21 ["Subagents"]
       70 GETTABLEKS                       R13 R13 K22 ["SubagentProgressEvents"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K10 [require]
       75 GETTABLEKS                       R14 R0 K23 ["Util"]
       77 GETTABLEKS                       R14 R14 K24 ["ContentWidgets"]
       79 GETTABLEKS                       R14 R14 K25 ["ToolWidgetMappingRegistry"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K10 [require]
       84 GETTABLEKS                       R15 R0 K26 ["Resources"]
       86 GETTABLEKS                       R15 R15 K27 ["Localization"]
       88 GETTABLEKS                       R15 R15 K28 ["Translator"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K10 [require]
       93 GETTABLEKS                       R16 R0 K29 ["Types"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K10 [require]
       98 GETTABLEKS                       R17 R0 K23 ["Util"]
      100 GETTABLEKS                       R17 R17 K24 ["ContentWidgets"]
      102 GETTABLEKS                       R17 R17 K30 ["resolveContentComponent"]
      104 CALL                             R16 1 1
      105 GETTABLEKS                       R17 R5 K31 ["ScrollView"]
      107 GETTABLEKS                       R18 R5 K32 ["Text"]
      109 GETTABLEKS                       R19 R5 K33 ["Hooks"]
      111 GETTABLEKS                       R19 R19 K34 ["useTokens"]
      113 GETTABLEKS                       R20 R7 K35 ["createNextOrder"]
      115 GETTABLEKS                       R21 R6 K36 ["createElement"]
      117 NEWTABLE                         R22 0 0
      119 DUPCLOSURE                       R23 K37 [PROTO_11]
      120 CAPTURE                          VAL R20
      121 CAPTURE                          VAL R19
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R22
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R21
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R11
      138 DUPTABLE                         R24 K42 [{["Type"] = "SubagentProgress", ["ContentWidget"], ["AutoExpand"]}]
      139 GETTABLEKS                       R25 R6 K43 ["memo"]
      141 MOVE                             R26 R23
      142 CALL                             R25 1 1
      143 SETTABLEKS                       R25 R24 K40 ["ContentWidget"]
      145 DUPTABLE                         R25 K47 [{["expandWhileGenerating"] = True, ["collapseOnComplete"] = True}]
      146 SETTABLEKS                       R25 R24 K41 ["AutoExpand"]
      148 RETURN                           R24 1
