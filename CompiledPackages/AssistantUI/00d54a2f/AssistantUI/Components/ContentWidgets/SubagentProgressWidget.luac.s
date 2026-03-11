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
        8 GETTABLEKS                       R7 R6 K3 ["contentId"]
       10 GETUPVAL                         R8 0
       11 JUMPIFNOTEQ                      R7 R8 ; [+21]
       13 GETIMPORT                        R7 K2 [table.clone]
       15 GETTABLEKS                       R8 R6 K4 ["contentProps"]
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 1
       19 MOVE                             R9 R7
       20 CALL                             R8 1 0
       21 GETUPVAL                         R10 2
       22 GETTABLEKS                       R9 R10 K5 ["Dictionary"]
       24 GETTABLEKS                       R8 R9 K6 ["join"]
       26 MOVE                             R9 R6
       27 DUPTABLE                         R10 K7 [{"contentProps"}]
       28 SETTABLEKS                       R7 R10 K4 ["contentProps"]
       30 CALL                             R8 2 1
       31 SETTABLE                         R8 R1 R5
       32 RETURN                           R1 1
       33 FORGLOOP                         R2 2 ; [-26]
       35 RETURN                           R1 1

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
        4 DUPTABLE                         R4 K9 [{"contentId", "toolUseId", "toolName", "contentType", "contentProps", "generating"}]
        5 GETUPVAL                         R5 0
        6 LOADB                            R7 0
        7 NAMECALL                         R5 R5 K10 ["GenerateGUID"]
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K3 ["contentId"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K4 ["toolUseId"]
       15 SETTABLEKS                       R5 R4 K4 ["toolUseId"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K5 ["toolName"]
       20 SETTABLEKS                       R5 R4 K5 ["toolName"]
       22 GETUPVAL                         R5 2
       23 SETTABLEKS                       R5 R4 K6 ["contentType"]
       25 GETUPVAL                         R5 3
       26 SETTABLEKS                       R5 R4 K7 ["contentProps"]
       28 LOADB                            R5 1
       29 SETTABLEKS                       R5 R4 K8 ["generating"]
       31 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       33 MOVE                             R3 R1
       34 GETIMPORT                        R2 K12 [table.insert]
       36 CALL                             R2 2 0
       37 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K3 ["toolUseId"]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R8 R9 K3 ["toolUseId"]
       13 JUMPIFNOTEQ                      R7 R8 ; [+25]
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R8 R9 K4 ["Dictionary"]
       18 GETTABLEKS                       R7 R8 K5 ["join"]
       20 MOVE                             R8 R6
       21 DUPTABLE                         R9 K8 [{"contentProps", "generating"}]
       22 GETUPVAL                         R10 2
       23 GETTABLEKS                       R11 R6 K9 ["toolName"]
       25 GETTABLEKS                       R12 R6 K6 ["contentProps"]
       27 GETUPVAL                         R14 0
       28 GETTABLEKS                       R13 R14 K10 ["toolResult"]
       30 CALL                             R10 3 1
       31 SETTABLEKS                       R10 R9 K6 ["contentProps"]
       33 LOADB                            R10 0
       34 SETTABLEKS                       R10 R9 K7 ["generating"]
       36 CALL                             R7 2 1
       37 SETTABLE                         R7 R1 R5
       38 RETURN                           R1 1
       39 FORGLOOP                         R2 2 ; [-32]
       41 RETURN                           R1 1

PROTO_7:
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
       57 JUMPIFNOT                        R3 ; [+17]
       58 JUMPIFNOT                        R4 ; [+16]
       59 GETUPVAL                         R5 1
       60 NEWCLOSURE                       R6 P0
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 CALL                             R5 1 0
       66 RETURN                           R0 0
       67 JUMPIFNOTEQKS                    R0 K13 ["toolComplete"] ; [+7]
       69 GETUPVAL                         R2 1
       70 NEWCLOSURE                       R3 P1
       71 CAPTURE                          VAL R1
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          UPVAL U4
       74 CALL                             R2 1 0
       75 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_13:
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
       73 DUPCLOSURE                       R10 K16 [PROTO_10]
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
       99 GETUPVAL                         R18 9
      100 GETTABLEKS                       R17 R18 K21 ["get"]
      102 GETTABLEKS                       R18 R16 K22 ["contentType"]
      104 CALL                             R17 1 1
      105 JUMPIFNOT                        R17 ; [+28]
      106 GETTABLEKS                       R18 R16 K11 ["contentId"]
      108 GETUPVAL                         R21 3
      109 GETTABLEKS                       R20 R21 K23 ["Dictionary"]
      111 GETTABLEKS                       R19 R20 K24 ["join"]
      113 GETTABLEKS                       R20 R16 K25 ["contentProps"]
      115 DUPTABLE                         R21 K29 [{"contentId", "editThisContent", "LayoutOrder", "generating"}]
      116 GETTABLEKS                       R22 R16 K11 ["contentId"]
      118 SETTABLEKS                       R22 R21 K11 ["contentId"]
      120 SETTABLEKS                       R6 R21 K26 ["editThisContent"]
      122 SETTABLEKS                       R15 R21 K27 ["LayoutOrder"]
      124 GETTABLEKS                       R22 R16 K28 ["generating"]
      126 SETTABLEKS                       R22 R21 K28 ["generating"]
      128 CALL                             R19 2 1
      129 GETUPVAL                         R20 10
      130 MOVE                             R21 R17
      131 MOVE                             R22 R19
      132 CALL                             R20 2 1
      133 SETTABLE                         R20 R11 R18
      134 FORGLOOP                         R12 2 ; [-36]
      136 GETUPVAL                         R13 2
      137 GETTABLEKS                       R12 R13 K30 ["useBinding"]
      139 LOADN                            R13 0
      140 CALL                             R12 1 2
      141 GETUPVAL                         R15 2
      142 GETTABLEKS                       R14 R15 K9 ["useCallback"]
      144 NEWCLOSURE                       R15 P3
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R7
      147 NEWTABLE                         R16 0 2
      149 MOVE                             R17 R7
      150 MOVE                             R18 R13
      151 SETLIST                          R16 R17 2 [1]
      153 CALL                             R14 2 1
      154 LOADNIL                          R15
      155 JUMPIFNOT                        R7 ; [+62]
      156 GETIMPORT                        R16 K32 [next]
      158 MOVE                             R17 R11
      159 CALL                             R16 1 1
      160 JUMPIFEQKNIL                     R16 ; [+57]
      162 DUPTABLE                         R16 K34 [{"RollingWindow"}]
      163 GETUPVAL                         R17 10
      164 GETUPVAL                         R18 11
      165 DUPTABLE                         R19 K39 [{"Size", "layout", "scroll", "onAbsoluteCanvasSizeChanged"}]
      166 DUPCLOSURE                       R22 K40 [PROTO_12]
      167 NAMECALL                         R20 R12 K41 ["map"]
      169 CALL                             R20 2 1
      170 SETTABLEKS                       R20 R19 K35 ["Size"]
      172 DUPTABLE                         R20 K44 [{"FillDirection", "SortOrder", "Padding"}]
      173 GETIMPORT                        R21 K47 [Enum.FillDirection.Vertical]
      175 SETTABLEKS                       R21 R20 K42 ["FillDirection"]
      177 GETIMPORT                        R21 K48 [Enum.SortOrder.LayoutOrder]
      179 SETTABLEKS                       R21 R20 K43 ["SortOrder"]
      181 GETIMPORT                        R21 K51 [UDim.new]
      183 LOADN                            R22 0
      184 MOVE                             R23 R3
      185 CALL                             R21 2 1
      186 SETTABLEKS                       R21 R20 K1 ["Padding"]
      188 SETTABLEKS                       R20 R19 K36 ["layout"]
      190 DUPTABLE                         R20 K55 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      191 GETIMPORT                        R21 K58 [Enum.AutomaticSize.Y]
      193 SETTABLEKS                       R21 R20 K52 ["AutomaticCanvasSize"]
      195 GETIMPORT                        R21 K60 [UDim2.new]
      197 LOADN                            R22 0
      198 LOADN                            R23 0
      199 LOADN                            R24 0
      200 LOADN                            R25 0
      201 CALL                             R21 4 1
      202 SETTABLEKS                       R21 R20 K53 ["CanvasSize"]
      204 GETIMPORT                        R21 K61 [Enum.ScrollingDirection.Y]
      206 SETTABLEKS                       R21 R20 K54 ["ScrollingDirection"]
      208 SETTABLEKS                       R20 R19 K37 ["scroll"]
      210 SETTABLEKS                       R14 R19 K38 ["onAbsoluteCanvasSizeChanged"]
      212 MOVE                             R20 R11
      213 CALL                             R17 3 1
      214 SETTABLEKS                       R17 R16 K33 ["RollingWindow"]
      216 MOVE                             R15 R16
      217 JUMP                             ; [+1]
      218 MOVE                             R15 R11
      219 JUMPIFNOT                        R8 ; [+17]
      220 GETUPVAL                         R16 10
      221 GETUPVAL                         R17 12
      222 DUPTABLE                         R18 K64 [{"tag", "Text", "LayoutOrder"}]
      223 LOADK                            R19 K65 ["size-full-0 auto-y text-caption-medium content-alert text-truncate-end"]
      224 SETTABLEKS                       R19 R18 K62 ["tag"]
      226 GETTABLEKS                       R19 R0 K13 ["errorMessage"]
      228 SETTABLEKS                       R19 R18 K63 ["Text"]
      230 LENGTH                           R20 R4
      231 ADDK                             R19 R20 K66 [1]
      232 SETTABLEKS                       R19 R18 K27 ["LayoutOrder"]
      234 CALL                             R16 2 1
      235 SETTABLEKS                       R16 R15 K67 ["Error"]
      237 LOADB                            R16 0
      238 JUMPIFEQKNIL                     R15 ; [+9]
      240 GETIMPORT                        R17 K32 [next]
      242 MOVE                             R18 R15
      243 CALL                             R17 1 1
      244 JUMPIFNOTEQKNIL                  R17 ; [+2]
      246 LOADB                            R16 0 +1
      247 LOADB                            R16 1
      248 GETUPVAL                         R17 10
      249 GETUPVAL                         R19 13
      250 GETTABLEKS                       R18 R19 K68 ["Root"]
      252 DUPTABLE                         R19 K70 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      253 GETTABLEKS                       R20 R0 K27 ["LayoutOrder"]
      255 SETTABLEKS                       R20 R19 K27 ["LayoutOrder"]
      257 GETTABLEKS                       R20 R0 K69 ["expanded"]
      259 SETTABLEKS                       R20 R19 K69 ["expanded"]
      261 GETTABLEKS                       R20 R0 K11 ["contentId"]
      263 SETTABLEKS                       R20 R19 K11 ["contentId"]
      265 GETTABLEKS                       R20 R0 K26 ["editThisContent"]
      267 SETTABLEKS                       R20 R19 K26 ["editThisContent"]
      269 DUPTABLE                         R20 K73 [{"Header", "Content"}]
      270 GETUPVAL                         R21 10
      271 GETUPVAL                         R23 13
      272 GETTABLEKS                       R22 R23 K71 ["Header"]
      274 DUPTABLE                         R23 K74 [{"LayoutOrder"}]
      275 MOVE                             R24 R1
      276 CALL                             R24 0 1
      277 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      279 DUPTABLE                         R24 K76 [{"HeaderText"}]
      280 GETUPVAL                         R25 10
      281 GETUPVAL                         R26 12
      282 DUPTABLE                         R27 K64 [{"tag", "Text", "LayoutOrder"}]
      283 LOADK                            R28 K77 ["auto-xy text-label-small content-default text-truncate-end"]
      284 SETTABLEKS                       R28 R27 K62 ["tag"]
      286 SETTABLEKS                       R10 R27 K63 ["Text"]
      288 MOVE                             R28 R1
      289 CALL                             R28 0 1
      290 SETTABLEKS                       R28 R27 K27 ["LayoutOrder"]
      292 DUPTABLE                         R28 K79 [{"Shimmer"}]
      293 MOVE                             R29 R7
      294 JUMPIFNOT                        R29 ; [+3]
      295 GETUPVAL                         R29 10
      296 GETUPVAL                         R30 14
      297 CALL                             R29 1 1
      298 SETTABLEKS                       R29 R28 K78 ["Shimmer"]
      300 CALL                             R25 3 1
      301 SETTABLEKS                       R25 R24 K75 ["HeaderText"]
      303 CALL                             R21 3 1
      304 SETTABLEKS                       R21 R20 K71 ["Header"]
      306 MOVE                             R21 R16
      307 JUMPIFNOT                        R21 ; [+17]
      308 GETUPVAL                         R21 10
      309 GETUPVAL                         R23 13
      310 GETTABLEKS                       R22 R23 K72 ["Content"]
      312 DUPTABLE                         R23 K81 [{"tag", "LayoutOrder", "UseVisible"}]
      313 LOADK                            R24 K82 ["col size-0-0 fill auto-y gap-xsmall"]
      314 SETTABLEKS                       R24 R23 K62 ["tag"]
      316 MOVE                             R24 R1
      317 CALL                             R24 0 1
      318 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      320 LOADB                            R24 1
      321 SETTABLEKS                       R24 R23 K80 ["UseVisible"]
      323 MOVE                             R24 R15
      324 CALL                             R21 3 1
      325 SETTABLEKS                       R21 R20 K72 ["Content"]
      327 CALL                             R17 3 -1
      328 RETURN                           R17 -1

PROTO_14:
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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["ContentWidgetRegistry"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K14 [game]
       37 LOADK                            R7 K15 ["HttpService"]
       38 NAMECALL                         R5 R5 K16 ["GetService"]
       40 CALL                             R5 2 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R8 R0 K10 ["Parent"]
       45 GETTABLEKS                       R7 R8 K17 ["React"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R9 R0 K10 ["Parent"]
       52 GETTABLEKS                       R8 R9 K18 ["ReactUtils"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R10 R0 K6 ["Components"]
       59 GETTABLEKS                       R9 R10 K19 ["ShimmerGradient"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K5 [require]
       64 GETTABLEKS                       R11 R0 K20 ["Subagents"]
       66 GETTABLEKS                       R10 R11 K21 ["SubagentProgressEvents"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R13 R0 K22 ["Resources"]
       73 GETTABLEKS                       R12 R13 K23 ["Localization"]
       75 GETTABLEKS                       R11 R12 K24 ["Translator"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K5 [require]
       80 GETTABLEKS                       R12 R0 K25 ["Types"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K5 [require]
       85 GETTABLEKS                       R14 R0 K6 ["Components"]
       87 GETTABLEKS                       R13 R14 K26 ["UIToolRegistry"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R15 R0 K27 ["Flags"]
       94 GETTABLEKS                       R14 R15 K28 ["FFlagAssistantPersistConversations"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K5 [require]
       99 GETTABLEKS                       R16 R0 K27 ["Flags"]
      101 GETTABLEKS                       R15 R16 K29 ["FFlagAssistantRegisterWidgetsThroughTools"]
      103 CALL                             R14 1 1
      104 GETTABLEKS                       R15 R4 K30 ["ScrollView"]
      106 GETTABLEKS                       R16 R4 K31 ["Text"]
      108 GETTABLEKS                       R18 R4 K32 ["Hooks"]
      110 GETTABLEKS                       R17 R18 K33 ["useTokens"]
      112 GETTABLEKS                       R18 R7 K34 ["createNextOrder"]
      114 GETTABLEKS                       R19 R6 K35 ["createElement"]
      116 DUPCLOSURE                       R20 K36 [PROTO_0]
      117 CAPTURE                          VAL R12
      118 DUPCLOSURE                       R21 K37 [PROTO_1]
      119 CAPTURE                          VAL R12
      120 DUPCLOSURE                       R22 K38 [PROTO_2]
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R3
      123 DUPCLOSURE                       R23 K39 [PROTO_13]
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R22
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R8
      139 DUPCLOSURE                       R24 K40 [PROTO_14]
      140 CAPTURE                          VAL R13
      141 DUPCLOSURE                       R25 K41 [PROTO_15]
      142 CAPTURE                          VAL R13
      143 DUPTABLE                         R26 K46 [{"Type", "ContentWidget", "Serialization", "AutoExpand"}]
      144 LOADK                            R27 K47 ["SubagentProgress"]
      145 SETTABLEKS                       R27 R26 K42 ["Type"]
      147 GETTABLEKS                       R27 R6 K48 ["memo"]
      149 MOVE                             R28 R23
      150 CALL                             R27 1 1
      151 SETTABLEKS                       R27 R26 K43 ["ContentWidget"]
      153 DUPTABLE                         R27 K51 [{"serialize", "deserialize"}]
      154 SETTABLEKS                       R24 R27 K49 ["serialize"]
      156 SETTABLEKS                       R25 R27 K50 ["deserialize"]
      158 SETTABLEKS                       R27 R26 K44 ["Serialization"]
      160 DUPTABLE                         R27 K54 [{"expandWhileGenerating", "collapseOnComplete"}]
      161 LOADB                            R28 1
      162 SETTABLEKS                       R28 R27 K52 ["expandWhileGenerating"]
      164 LOADB                            R28 1
      165 SETTABLEKS                       R28 R27 K53 ["collapseOnComplete"]
      167 SETTABLEKS                       R27 R26 K45 ["AutoExpand"]
      169 MOVE                             R27 R14
      170 CALL                             R27 0 1
      171 JUMPIF                           R27 ; [+7]
      172 GETTABLEKS                       R27 R2 K55 ["registerWidget_DEPRECATED"]
      174 GETTABLEKS                       R28 R26 K42 ["Type"]
      176 GETTABLEKS                       R29 R26 K43 ["ContentWidget"]
      178 CALL                             R27 2 0
      179 RETURN                           R26 1
