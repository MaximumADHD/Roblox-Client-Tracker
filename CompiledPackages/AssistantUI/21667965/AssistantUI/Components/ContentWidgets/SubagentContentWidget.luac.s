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
      146 JUMPIFNOT                        R21 ; [+44]
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
      173 JUMP                             ; [+17]
      174 GETTABLEKS                       R21 R20 K26 ["kind"]
      176 JUMPIFNOTEQKS                    R21 K19 ["text"] ; [+14]
      178 GETTABLEKS                       R21 R20 K11 ["contentId"]
      180 GETUPVAL                         R22 11
      181 GETUPVAL                         R23 12
      182 DUPTABLE                         R24 K35 [{"markdown", "LayoutOrder"}]
      183 GETTABLEKS                       R25 R20 K19 ["text"]
      185 SETTABLEKS                       R25 R24 K34 ["markdown"]
      187 SETTABLEKS                       R19 R24 K31 ["LayoutOrder"]
      189 CALL                             R22 2 1
      190 SETTABLE                         R22 R15 R21
      191 FORGLOOP                         R16 2 ; [-54]
      193 GETUPVAL                         R16 2
      194 GETTABLEKS                       R16 R16 K36 ["useBinding"]
      196 LOADN                            R17 0
      197 CALL                             R16 1 2
      198 GETUPVAL                         R18 2
      199 GETTABLEKS                       R18 R18 K9 ["useCallback"]
      201 NEWCLOSURE                       R19 P3
      202 CAPTURE                          VAL R17
      203 CAPTURE                          REF R8
      204 NEWTABLE                         R20 0 2
      206 MOVE                             R21 R8
      207 MOVE                             R22 R17
      208 SETLIST                          R20 R21 2 [1]
      210 CALL                             R18 2 1
      211 LOADNIL                          R19
      212 JUMPIFNOT                        R8 ; [+62]
      213 GETIMPORT                        R20 K38 [next]
      215 MOVE                             R21 R15
      216 CALL                             R20 1 1
      217 JUMPIFEQKNIL                     R20 ; [+57]
      219 DUPTABLE                         R20 K40 [{"RollingWindow"}]
      220 GETUPVAL                         R21 11
      221 GETUPVAL                         R22 13
      222 DUPTABLE                         R23 K45 [{"Size", "layout", "scroll", "onAbsoluteCanvasSizeChanged"}]
      223 DUPCLOSURE                       R26 K46 [PROTO_10]
      224 NAMECALL                         R24 R16 K47 ["map"]
      226 CALL                             R24 2 1
      227 SETTABLEKS                       R24 R23 K41 ["Size"]
      229 DUPTABLE                         R24 K50 [{"FillDirection", "SortOrder", "Padding"}]
      230 GETIMPORT                        R25 K53 [Enum.FillDirection.Vertical]
      232 SETTABLEKS                       R25 R24 K48 ["FillDirection"]
      234 GETIMPORT                        R25 K54 [Enum.SortOrder.LayoutOrder]
      236 SETTABLEKS                       R25 R24 K49 ["SortOrder"]
      238 GETIMPORT                        R25 K57 [UDim.new]
      240 LOADN                            R26 0
      241 MOVE                             R27 R3
      242 CALL                             R25 2 1
      243 SETTABLEKS                       R25 R24 K1 ["Padding"]
      245 SETTABLEKS                       R24 R23 K42 ["layout"]
      247 DUPTABLE                         R24 K61 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      248 GETIMPORT                        R25 K64 [Enum.AutomaticSize.Y]
      250 SETTABLEKS                       R25 R24 K58 ["AutomaticCanvasSize"]
      252 GETIMPORT                        R25 K66 [UDim2.new]
      254 LOADN                            R26 0
      255 LOADN                            R27 0
      256 LOADN                            R28 0
      257 LOADN                            R29 0
      258 CALL                             R25 4 1
      259 SETTABLEKS                       R25 R24 K59 ["CanvasSize"]
      261 GETIMPORT                        R25 K67 [Enum.ScrollingDirection.Y]
      263 SETTABLEKS                       R25 R24 K60 ["ScrollingDirection"]
      265 SETTABLEKS                       R24 R23 K43 ["scroll"]
      267 SETTABLEKS                       R18 R23 K44 ["onAbsoluteCanvasSizeChanged"]
      269 MOVE                             R24 R15
      270 CALL                             R21 3 1
      271 SETTABLEKS                       R21 R20 K39 ["RollingWindow"]
      273 MOVE                             R19 R20
      274 JUMP                             ; [+1]
      275 MOVE                             R19 R15
      276 JUMPIFNOT                        R12 ; [+12]
      277 GETUPVAL                         R20 11
      278 GETUPVAL                         R21 14
      279 DUPTABLE                         R22 K71 [{["tag"] = "size-full-0 auto-y text-caption-medium text-truncate-end content-alert", ["Text"], ["LayoutOrder"]}]
      280 SETTABLEKS                       R9 R22 K70 ["Text"]
      282 LENGTH                           R24 R4
      283 ADDK                             R23 R24 K72 [1]
      284 SETTABLEKS                       R23 R22 K31 ["LayoutOrder"]
      286 CALL                             R20 2 1
      287 SETTABLEKS                       R20 R19 K73 ["Error"]
      289 JUMPIF                           R8 ; [+21]
      290 GETIMPORT                        R20 K38 [next]
      292 MOVE                             R21 R15
      293 CALL                             R20 1 1
      294 JUMPIFNOTEQKNIL                  R20 ; [+16]
      296 JUMPIFNOT                        R10 ; [+14]
      297 JUMPIFEQKS                       R10 K14 [""] ; [+13]
      299 GETUPVAL                         R20 11
      300 GETUPVAL                         R21 12
      301 DUPTABLE                         R22 K35 [{"markdown", "LayoutOrder"}]
      302 SETTABLEKS                       R10 R22 K34 ["markdown"]
      304 LENGTH                           R24 R4
      305 ADDK                             R23 R24 K74 [2]
      306 SETTABLEKS                       R23 R22 K31 ["LayoutOrder"]
      308 CALL                             R20 2 1
      309 SETTABLEKS                       R20 R19 K75 ["FinalAnswer"]
      311 LOADB                            R20 0
      312 JUMPIFEQKNIL                     R19 ; [+9]
      314 GETIMPORT                        R21 K38 [next]
      316 MOVE                             R22 R19
      317 CALL                             R21 1 1
      318 JUMPIFNOTEQKNIL                  R21 ; [+2]
      320 LOADB                            R20 0 +1
      321 LOADB                            R20 1
      322 GETUPVAL                         R21 11
      323 GETUPVAL                         R22 15
      324 GETTABLEKS                       R22 R22 K76 ["Root"]
      326 DUPTABLE                         R23 K78 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      327 GETTABLEKS                       R24 R0 K31 ["LayoutOrder"]
      329 SETTABLEKS                       R24 R23 K31 ["LayoutOrder"]
      331 GETTABLEKS                       R24 R0 K77 ["expanded"]
      333 SETTABLEKS                       R24 R23 K77 ["expanded"]
      335 GETTABLEKS                       R24 R0 K11 ["contentId"]
      337 SETTABLEKS                       R24 R23 K11 ["contentId"]
      339 GETTABLEKS                       R24 R0 K30 ["editThisContent"]
      341 SETTABLEKS                       R24 R23 K30 ["editThisContent"]
      343 DUPTABLE                         R24 K81 [{"Header", "Content"}]
      344 GETUPVAL                         R25 11
      345 GETUPVAL                         R26 15
      346 GETTABLEKS                       R26 R26 K79 ["Header"]
      348 DUPTABLE                         R27 K82 [{"LayoutOrder"}]
      349 MOVE                             R28 R1
      350 CALL                             R28 0 1
      351 SETTABLEKS                       R28 R27 K31 ["LayoutOrder"]
      353 DUPTABLE                         R28 K84 [{"HeaderText"}]
      354 GETUPVAL                         R29 11
      355 GETUPVAL                         R30 14
      356 DUPTABLE                         R31 K86 [{["tag"] = "auto-xy text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      357 SETTABLEKS                       R14 R31 K70 ["Text"]
      359 MOVE                             R32 R1
      360 CALL                             R32 0 1
      361 SETTABLEKS                       R32 R31 K31 ["LayoutOrder"]
      363 DUPTABLE                         R32 K88 [{"Shimmer"}]
      364 MOVE                             R33 R8
      365 JUMPIFNOT                        R33 ; [+3]
      366 GETUPVAL                         R33 11
      367 GETUPVAL                         R34 16
      368 CALL                             R33 1 1
      369 SETTABLEKS                       R33 R32 K87 ["Shimmer"]
      371 CALL                             R29 3 1
      372 SETTABLEKS                       R29 R28 K83 ["HeaderText"]
      374 CALL                             R25 3 1
      375 SETTABLEKS                       R25 R24 K79 ["Header"]
      377 MOVE                             R25 R20
      378 JUMPIFNOT                        R25 ; [+11]
      379 GETUPVAL                         R25 11
      380 GETUPVAL                         R26 15
      381 GETTABLEKS                       R26 R26 K80 ["Content"]
      383 DUPTABLE                         R27 K92 [{["tag"] = "col fill gap-xsmall size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      384 MOVE                             R28 R1
      385 CALL                             R28 0 1
      386 SETTABLEKS                       R28 R27 K31 ["LayoutOrder"]
      388 MOVE                             R28 R19
      389 CALL                             R25 3 1
      390 SETTABLEKS                       R25 R24 K80 ["Content"]
      392 CALL                             R21 3 -1
      393 CLOSEUPVALS                      R8
      394 RETURN                           R21 -1

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
       22 GETTABLEKS                       R4 R0 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["Cryo"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Parent"]
       31 GETTABLEKS                       R5 R5 K14 ["Dash"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K12 ["Parent"]
       38 GETTABLEKS                       R6 R6 K15 ["Foundation"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Components"]
       45 GETTABLEKS                       R7 R7 K16 ["MarkdownText"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K12 ["Parent"]
       52 GETTABLEKS                       R8 R8 K17 ["React"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R0 K12 ["Parent"]
       59 GETTABLEKS                       R9 R9 K18 ["ReactUtils"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R0 K10 ["Components"]
       66 GETTABLEKS                       R10 R10 K19 ["ShimmerGradient"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R0 K20 ["Subagents"]
       73 GETTABLEKS                       R11 R11 K21 ["SubagentProgressEvents"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R0 K22 ["Util"]
       80 GETTABLEKS                       R12 R12 K23 ["ContentWidgets"]
       82 GETTABLEKS                       R12 R12 K24 ["ToolWidgetMappingRegistry"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K9 [require]
       87 GETTABLEKS                       R13 R0 K25 ["Resources"]
       89 GETTABLEKS                       R13 R13 K26 ["Localization"]
       91 GETTABLEKS                       R13 R13 K27 ["Translator"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K9 [require]
       96 GETTABLEKS                       R14 R0 K28 ["Types"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K9 [require]
      101 GETTABLEKS                       R15 R0 K22 ["Util"]
      103 GETTABLEKS                       R15 R15 K23 ["ContentWidgets"]
      105 GETTABLEKS                       R15 R15 K29 ["resolveContentComponent"]
      107 CALL                             R14 1 1
      108 GETTABLEKS                       R15 R5 K30 ["ScrollView"]
      110 GETTABLEKS                       R16 R5 K31 ["Text"]
      112 GETTABLEKS                       R17 R5 K32 ["Hooks"]
      114 GETTABLEKS                       R17 R17 K33 ["useTokens"]
      116 GETTABLEKS                       R18 R8 K34 ["createNextOrder"]
      118 GETTABLEKS                       R19 R7 K35 ["createElement"]
      120 NEWTABLE                         R20 0 0
      122 DUPCLOSURE                       R21 K36 [PROTO_11]
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R20
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R9
      140 DUPTABLE                         R22 K41 [{["Type"] = "SubagentProgress", ["ContentWidget"], ["AutoExpand"]}]
      141 GETTABLEKS                       R23 R7 K42 ["memo"]
      143 MOVE                             R24 R21
      144 CALL                             R23 1 1
      145 SETTABLEKS                       R23 R22 K39 ["ContentWidget"]
      147 DUPTABLE                         R23 K46 [{["expandWhileGenerating"] = True, ["collapseOnComplete"] = True}]
      148 SETTABLEKS                       R23 R22 K40 ["AutoExpand"]
      150 RETURN                           R22 1
