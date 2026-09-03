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
      140 JUMPIFNOTEQKS                    R21 K27 ["tool"] ; [+35]
      142 GETUPVAL                         R21 10
      143 GETTABLEKS                       R21 R21 K28 ["get"]
      145 GETTABLEKS                       R22 R20 K29 ["contentType"]
      147 CALL                             R21 1 1
      148 JUMPIFNOT                        R21 ; [+44]
      149 GETUPVAL                         R22 7
      150 GETTABLEKS                       R22 R22 K30 ["join"]
      152 GETTABLEKS                       R23 R20 K31 ["contentProps"]
      154 DUPTABLE                         R24 K35 [{"contentId", "editThisContent", "LayoutOrder", "streaming"}]
      155 GETTABLEKS                       R25 R20 K11 ["contentId"]
      157 SETTABLEKS                       R25 R24 K11 ["contentId"]
      159 SETTABLEKS                       R6 R24 K32 ["editThisContent"]
      161 SETTABLEKS                       R19 R24 K33 ["LayoutOrder"]
      163 GETTABLEKS                       R25 R20 K34 ["streaming"]
      165 SETTABLEKS                       R25 R24 K34 ["streaming"]
      167 CALL                             R22 2 1
      168 GETTABLEKS                       R23 R20 K11 ["contentId"]
      170 GETUPVAL                         R24 11
      171 MOVE                             R25 R21
      172 MOVE                             R26 R22
      173 CALL                             R24 2 1
      174 SETTABLE                         R24 R15 R23
      175 JUMP                             ; [+17]
      176 GETTABLEKS                       R21 R20 K26 ["kind"]
      178 JUMPIFNOTEQKS                    R21 K19 ["text"] ; [+14]
      180 GETTABLEKS                       R21 R20 K11 ["contentId"]
      182 GETUPVAL                         R22 11
      183 GETUPVAL                         R23 12
      184 DUPTABLE                         R24 K37 [{"markdown", "LayoutOrder"}]
      185 GETTABLEKS                       R25 R20 K19 ["text"]
      187 SETTABLEKS                       R25 R24 K36 ["markdown"]
      189 SETTABLEKS                       R19 R24 K33 ["LayoutOrder"]
      191 CALL                             R22 2 1
      192 SETTABLE                         R22 R15 R21
      193 FORGLOOP                         R16 2 ; [-56]
      195 GETUPVAL                         R16 2
      196 GETTABLEKS                       R16 R16 K38 ["useBinding"]
      198 LOADN                            R17 0
      199 CALL                             R16 1 2
      200 GETUPVAL                         R18 2
      201 GETTABLEKS                       R18 R18 K9 ["useCallback"]
      203 NEWCLOSURE                       R19 P3
      204 CAPTURE                          VAL R17
      205 CAPTURE                          REF R8
      206 NEWTABLE                         R20 0 2
      208 MOVE                             R21 R8
      209 MOVE                             R22 R17
      210 SETLIST                          R20 R21 2 [1]
      212 CALL                             R18 2 1
      213 LOADNIL                          R19
      214 JUMPIFNOT                        R8 ; [+62]
      215 GETIMPORT                        R20 K40 [next]
      217 MOVE                             R21 R15
      218 CALL                             R20 1 1
      219 JUMPIFEQKNIL                     R20 ; [+57]
      221 DUPTABLE                         R20 K42 [{"RollingWindow"}]
      222 GETUPVAL                         R21 11
      223 GETUPVAL                         R22 13
      224 DUPTABLE                         R23 K47 [{"Size", "layout", "scroll", "onAbsoluteCanvasSizeChanged"}]
      225 DUPCLOSURE                       R26 K48 [PROTO_10]
      226 NAMECALL                         R24 R16 K49 ["map"]
      228 CALL                             R24 2 1
      229 SETTABLEKS                       R24 R23 K43 ["Size"]
      231 DUPTABLE                         R24 K52 [{"FillDirection", "SortOrder", "Padding"}]
      232 GETIMPORT                        R25 K55 [Enum.FillDirection.Vertical]
      234 SETTABLEKS                       R25 R24 K50 ["FillDirection"]
      236 GETIMPORT                        R25 K56 [Enum.SortOrder.LayoutOrder]
      238 SETTABLEKS                       R25 R24 K51 ["SortOrder"]
      240 GETIMPORT                        R25 K59 [UDim.new]
      242 LOADN                            R26 0
      243 MOVE                             R27 R3
      244 CALL                             R25 2 1
      245 SETTABLEKS                       R25 R24 K1 ["Padding"]
      247 SETTABLEKS                       R24 R23 K44 ["layout"]
      249 DUPTABLE                         R24 K63 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      250 GETIMPORT                        R25 K66 [Enum.AutomaticSize.Y]
      252 SETTABLEKS                       R25 R24 K60 ["AutomaticCanvasSize"]
      254 GETIMPORT                        R25 K68 [UDim2.new]
      256 LOADN                            R26 0
      257 LOADN                            R27 0
      258 LOADN                            R28 0
      259 LOADN                            R29 0
      260 CALL                             R25 4 1
      261 SETTABLEKS                       R25 R24 K61 ["CanvasSize"]
      263 GETIMPORT                        R25 K69 [Enum.ScrollingDirection.Y]
      265 SETTABLEKS                       R25 R24 K62 ["ScrollingDirection"]
      267 SETTABLEKS                       R24 R23 K45 ["scroll"]
      269 SETTABLEKS                       R18 R23 K46 ["onAbsoluteCanvasSizeChanged"]
      271 MOVE                             R24 R15
      272 CALL                             R21 3 1
      273 SETTABLEKS                       R21 R20 K41 ["RollingWindow"]
      275 MOVE                             R19 R20
      276 JUMP                             ; [+1]
      277 MOVE                             R19 R15
      278 JUMPIFNOT                        R12 ; [+12]
      279 GETUPVAL                         R20 11
      280 GETUPVAL                         R21 14
      281 DUPTABLE                         R22 K73 [{["tag"] = "size-full-0 auto-y text-caption-medium text-truncate-end content-alert", ["Text"], ["LayoutOrder"]}]
      282 SETTABLEKS                       R9 R22 K72 ["Text"]
      284 LENGTH                           R24 R4
      285 ADDK                             R23 R24 K74 [1]
      286 SETTABLEKS                       R23 R22 K33 ["LayoutOrder"]
      288 CALL                             R20 2 1
      289 SETTABLEKS                       R20 R19 K75 ["Error"]
      291 JUMPIF                           R8 ; [+21]
      292 GETIMPORT                        R20 K40 [next]
      294 MOVE                             R21 R15
      295 CALL                             R20 1 1
      296 JUMPIFNOTEQKNIL                  R20 ; [+16]
      298 JUMPIFNOT                        R10 ; [+14]
      299 JUMPIFEQKS                       R10 K14 [""] ; [+13]
      301 GETUPVAL                         R20 11
      302 GETUPVAL                         R21 12
      303 DUPTABLE                         R22 K37 [{"markdown", "LayoutOrder"}]
      304 SETTABLEKS                       R10 R22 K36 ["markdown"]
      306 LENGTH                           R24 R4
      307 ADDK                             R23 R24 K76 [2]
      308 SETTABLEKS                       R23 R22 K33 ["LayoutOrder"]
      310 CALL                             R20 2 1
      311 SETTABLEKS                       R20 R19 K77 ["FinalAnswer"]
      313 LOADB                            R20 0
      314 JUMPIFEQKNIL                     R19 ; [+9]
      316 GETIMPORT                        R21 K40 [next]
      318 MOVE                             R22 R19
      319 CALL                             R21 1 1
      320 JUMPIFNOTEQKNIL                  R21 ; [+2]
      322 LOADB                            R20 0 +1
      323 LOADB                            R20 1
      324 GETUPVAL                         R21 11
      325 GETUPVAL                         R22 15
      326 GETTABLEKS                       R22 R22 K78 ["Root"]
      328 DUPTABLE                         R23 K80 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      329 GETTABLEKS                       R24 R0 K33 ["LayoutOrder"]
      331 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      333 GETTABLEKS                       R24 R0 K79 ["expanded"]
      335 SETTABLEKS                       R24 R23 K79 ["expanded"]
      337 GETTABLEKS                       R24 R0 K11 ["contentId"]
      339 SETTABLEKS                       R24 R23 K11 ["contentId"]
      341 GETTABLEKS                       R24 R0 K32 ["editThisContent"]
      343 SETTABLEKS                       R24 R23 K32 ["editThisContent"]
      345 DUPTABLE                         R24 K83 [{"Header", "Content"}]
      346 GETUPVAL                         R25 11
      347 GETUPVAL                         R26 15
      348 GETTABLEKS                       R26 R26 K81 ["Header"]
      350 DUPTABLE                         R27 K84 [{"LayoutOrder"}]
      351 MOVE                             R28 R1
      352 CALL                             R28 0 1
      353 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      355 DUPTABLE                         R28 K86 [{"HeaderText"}]
      356 GETUPVAL                         R29 11
      357 GETUPVAL                         R30 14
      358 DUPTABLE                         R31 K88 [{["tag"] = "auto-xy text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      359 SETTABLEKS                       R14 R31 K72 ["Text"]
      361 MOVE                             R32 R1
      362 CALL                             R32 0 1
      363 SETTABLEKS                       R32 R31 K33 ["LayoutOrder"]
      365 DUPTABLE                         R32 K90 [{"Shimmer"}]
      366 MOVE                             R33 R8
      367 JUMPIFNOT                        R33 ; [+3]
      368 GETUPVAL                         R33 11
      369 GETUPVAL                         R34 16
      370 CALL                             R33 1 1
      371 SETTABLEKS                       R33 R32 K89 ["Shimmer"]
      373 CALL                             R29 3 1
      374 SETTABLEKS                       R29 R28 K85 ["HeaderText"]
      376 CALL                             R25 3 1
      377 SETTABLEKS                       R25 R24 K81 ["Header"]
      379 MOVE                             R25 R20
      380 JUMPIFNOT                        R25 ; [+11]
      381 GETUPVAL                         R25 11
      382 GETUPVAL                         R26 15
      383 GETTABLEKS                       R26 R26 K82 ["Content"]
      385 DUPTABLE                         R27 K94 [{["tag"] = "col fill gap-xsmall size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      386 MOVE                             R28 R1
      387 CALL                             R28 0 1
      388 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      390 MOVE                             R28 R19
      391 CALL                             R25 3 1
      392 SETTABLEKS                       R25 R24 K82 ["Content"]
      394 CALL                             R21 3 -1
      395 CLOSEUPVALS                      R8
      396 RETURN                           R21 -1

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
       38 GETTABLEKS                       R6 R0 K15 ["Parent"]
       40 GETTABLEKS                       R6 R6 K17 ["Dash"]
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
       73 GETTABLEKS                       R11 R0 K10 ["Components"]
       75 GETTABLEKS                       R11 R11 K22 ["ShimmerGradient"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K9 [require]
       80 GETTABLEKS                       R12 R0 K23 ["Subagents"]
       82 GETTABLEKS                       R12 R12 K24 ["SubagentProgressEvents"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K9 [require]
       87 GETTABLEKS                       R13 R0 K12 ["Util"]
       89 GETTABLEKS                       R13 R13 K13 ["ContentWidgets"]
       91 GETTABLEKS                       R13 R13 K25 ["ToolWidgetMappingRegistry"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K9 [require]
       96 GETTABLEKS                       R14 R0 K26 ["Resources"]
       98 GETTABLEKS                       R14 R14 K27 ["Localization"]
      100 GETTABLEKS                       R14 R14 K28 ["Translator"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K9 [require]
      105 GETTABLEKS                       R15 R0 K29 ["Types"]
      107 CALL                             R14 1 1
      108 GETTABLEKS                       R15 R6 K30 ["ScrollView"]
      110 GETTABLEKS                       R16 R6 K31 ["Text"]
      112 GETTABLEKS                       R17 R6 K32 ["Hooks"]
      114 GETTABLEKS                       R17 R17 K33 ["useTokens"]
      116 GETTABLEKS                       R18 R9 K34 ["createNextOrder"]
      118 GETTABLEKS                       R19 R8 K35 ["createElement"]
      120 NEWTABLE                         R20 0 0
      122 DUPCLOSURE                       R21 K36 [PROTO_11]
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R20
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R10
      140 DUPTABLE                         R22 K41 [{["Type"] = "SubagentProgress", ["ContentWidget"], ["AutoExpand"]}]
      141 GETTABLEKS                       R23 R8 K42 ["memo"]
      143 MOVE                             R24 R21
      144 CALL                             R23 1 1
      145 SETTABLEKS                       R23 R22 K39 ["ContentWidget"]
      147 DUPTABLE                         R23 K46 [{["expandWhileGenerating"] = True, ["collapseOnComplete"] = True}]
      148 SETTABLEKS                       R23 R22 K40 ["AutoExpand"]
      150 RETURN                           R22 1
