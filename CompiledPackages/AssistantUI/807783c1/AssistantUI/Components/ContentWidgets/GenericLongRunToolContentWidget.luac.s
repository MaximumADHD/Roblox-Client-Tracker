PROTO_0:
        0 DUPTABLE                         R1 K2 [{"type", "message"}]
        1 LOADK                            R2 K3 ["infoMessage"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["message"]
        6 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"type", "image"}]
        1 LOADK                            R2 K1 ["image"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["image"]
        6 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"type", "code"}]
        1 LOADK                            R2 K3 ["luaCode"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["code"]
        6 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"type", "message"}]
        1 LOADK                            R2 K3 ["errorMessage"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["message"]
        6 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"type", "stage"}]
        1 LOADK                            R2 K1 ["stage"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["stage"]
        6 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["luaCode"]
        3 JUMPIFNOT                        R0 ; [+21]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["luaCode"]
        7 LENGTH                           R0 R1
        8 LOADN                            R1 0
        9 JUMPIFNOTLT                      R1 R0 ; [+15]
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["luaCode"]
       15 LOADN                            R2 168
       16 CALL                             R0 2 2
       17 LOADK                            R3 K1 ["```lua\n%*\n```"]
       18 MOVE                             R5 R0
       19 NAMECALL                         R3 R3 K2 ["format"]
       21 CALL                             R3 2 1
       22 MOVE                             R2 R3
       23 MOVE                             R3 R1
       24 RETURN                           R2 2
       25 LOADNIL                          R0
       26 LOADB                            R1 0
       27 RETURN                           R0 2

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["luaCode"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["copyToClipboard"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["luaCode"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getValue"]
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R2 R0 K1 ["X"]
        6 GETTABLEKS                       R2 R2 K2 ["Offset"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["AbsoluteSize"]
       11 GETTABLEKS                       R3 R3 K1 ["X"]
       13 JUMPIFLT                         R3 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 GETTABLEKS                       R3 R0 K4 ["Y"]
       19 GETTABLEKS                       R3 R3 K2 ["Offset"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K3 ["AbsoluteSize"]
       24 GETTABLEKS                       R4 R4 K4 ["Y"]
       26 JUMPIFLT                         R4 R3 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 GETUPVAL                         R3 2
       31 OR                               R4 R1 R2
       32 CALL                             R3 1 0
       33 JUMPIFNOTEQ                      R1 R2 ; [+4]
       35 GETIMPORT                        R3 K8 [Enum.ScrollingDirection.XY]
       37 JUMP                             ; [+6]
       38 JUMPIFNOT                        R1 ; [+3]
       39 GETIMPORT                        R3 K9 [Enum.ScrollingDirection.X]
       41 JUMP                             ; [+2]
       42 GETIMPORT                        R3 K10 [Enum.ScrollingDirection.Y]
       44 GETUPVAL                         R4 3
       45 MOVE                             R5 R3
       46 CALL                             R4 1 0
       47 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K3 ["AbsoluteCanvasSize"]
        6 GETTABLEKS                       R2 R2 K4 ["X"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["AbsoluteCanvasSize"]
       11 GETTABLEKS                       R3 R3 K5 ["Y"]
       13 CALL                             R1 2 -1
       14 CALL                             R0 -1 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 LOADNIL                          R1
        6 NAMECALL                         R2 R0 K1 ["GetDescendants"]
        8 CALL                             R2 1 3
        9 FORGPREP                         R2
       10 LOADK                            R9 K2 ["ScrollingFrame"]
       11 NAMECALL                         R7 R6 K3 ["IsA"]
       13 CALL                             R7 2 1
       14 JUMPIFNOT                        R7 ; [+2]
       15 MOVE                             R1 R6
       16 JUMP                             ; [+2]
       17 FORGLOOP                         R2 2 ; [-8]
       19 JUMPIF                           R1 ; [+2]
       20 CLOSEUPVALS                      R1
       21 RETURN                           R0 0
       22 GETIMPORT                        R2 K6 [UDim2.new]
       24 CALL                             R2 0 1
       25 SETTABLEKS                       R2 R1 K7 ["CanvasSize"]
       27 LOADB                            R2 0
       28 SETTABLEKS                       R2 R1 K8 ["ScrollingEnabled"]
       30 LOADN                            R2 0
       31 SETTABLEKS                       R2 R1 K9 ["ScrollBarThickness"]
       33 LOADN                            R2 1
       34 SETTABLEKS                       R2 R1 K10 ["ScrollBarImageTransparency"]
       36 GETIMPORT                        R2 K14 [Enum.AutomaticSize.XY]
       38 SETTABLEKS                       R2 R1 K12 ["AutomaticSize"]
       40 GETIMPORT                        R2 K16 [UDim2.fromOffset]
       42 LOADN                            R3 1
       43 LOADN                            R4 1
       44 CALL                             R2 2 1
       45 SETTABLEKS                       R2 R1 K17 ["Size"]
       47 LOADK                            R4 K18 ["AbsoluteSize"]
       48 NAMECALL                         R2 R0 K19 ["GetPropertyChangedSignal"]
       50 CALL                             R2 2 1
       51 NEWCLOSURE                       R4 P0
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          UPVAL U3
       56 NAMECALL                         R2 R2 K20 ["Connect"]
       58 CALL                             R2 2 1
       59 LOADK                            R5 K21 ["AbsoluteCanvasSize"]
       60 NAMECALL                         R3 R1 K19 ["GetPropertyChangedSignal"]
       62 CALL                             R3 2 1
       63 NEWCLOSURE                       R5 P1
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          REF R1
       66 NAMECALL                         R3 R3 K20 ["Connect"]
       68 CALL                             R3 2 1
       69 NEWCLOSURE                       R4 P2
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 CLOSEUPVALS                      R1
       73 RETURN                           R4 1

PROTO_11:
        0 DUPTABLE                         R0 K8 [{"AutomaticCanvasSize", "AutomaticSize", "CanvasSize", "ScrollingDirection", "ScrollingEnabled", "VerticalScrollBarInset", "HorizontalScrollBarInset", "scrollBarVisibility"}]
        1 GETIMPORT                        R1 K11 [Enum.AutomaticSize.None]
        3 SETTABLEKS                       R1 R0 K0 ["AutomaticCanvasSize"]
        5 GETIMPORT                        R1 K11 [Enum.AutomaticSize.None]
        7 SETTABLEKS                       R1 R0 K1 ["AutomaticSize"]
        9 GETUPVAL                         R1 0
       10 SETTABLEKS                       R1 R0 K2 ["CanvasSize"]
       12 GETUPVAL                         R1 1
       13 SETTABLEKS                       R1 R0 K3 ["ScrollingDirection"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K4 ["ScrollingEnabled"]
       18 GETIMPORT                        R1 K14 [Enum.ScrollBarInset.ScrollBar]
       20 SETTABLEKS                       R1 R0 K5 ["VerticalScrollBarInset"]
       22 GETIMPORT                        R1 K14 [Enum.ScrollBarInset.ScrollBar]
       24 SETTABLEKS                       R1 R0 K6 ["HorizontalScrollBarInset"]
       26 GETUPVAL                         R1 2
       27 GETTABLEKS                       R1 R1 K15 ["Enums"]
       29 GETTABLEKS                       R1 R1 K16 ["Visibility"]
       31 GETTABLEKS                       R1 R1 K17 ["Always"]
       33 SETTABLEKS                       R1 R0 K7 ["scrollBarVisibility"]
       35 RETURN                           R0 1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["Y"]
        2 GETTABLEKS                       R2 R2 K1 ["Offset"]
        4 FASTCALL2K                       MATH_MIN R2 K2 ; [+4]
        6 LOADK                            R3 K2 [300]
        7 GETIMPORT                        R1 K5 [math.min]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 JUMPIFNOT                        R2 ; [+14]
       12 GETUPVAL                         R2 1
       13 NAMECALL                         R2 R2 K6 ["getValue"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K9 [Enum.ScrollingDirection.Y]
       18 JUMPIFEQ                         R2 R3 ; [+7]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K10 ["Size"]
       23 GETTABLEKS                       R2 R2 K11 ["Size_300"]
       25 ADD                              R1 R1 R2
       26 GETIMPORT                        R2 K14 [UDim2.new]
       28 LOADN                            R3 1
       29 LOADN                            R4 0
       30 LOADN                            R5 0
       31 MOVE                             R6 R1
       32 CALL                             R2 4 -1
       33 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Config"]
        4 GETTABLEKS                       R2 R2 K1 ["ColorMode"]
        6 GETTABLEKS                       R2 R2 K2 ["Name"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["get"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K4 ["useBinding"]
       15 GETIMPORT                        R5 K7 [UDim2.new]
       17 CALL                             R5 0 -1
       18 CALL                             R4 -1 2
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K4 ["useBinding"]
       22 GETIMPORT                        R7 K11 [Enum.ScrollingDirection.XY]
       24 CALL                             R6 1 2
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K12 ["useState"]
       28 LOADB                            R9 0
       29 CALL                             R8 1 2
       30 GETUPVAL                         R10 2
       31 GETTABLEKS                       R10 R10 K13 ["useRef"]
       33 LOADNIL                          R11
       34 CALL                             R10 1 1
       35 GETUPVAL                         R11 2
       36 GETTABLEKS                       R11 R11 K14 ["useMemo"]
       38 NEWCLOSURE                       R12 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U3
       41 NEWTABLE                         R13 0 1
       43 GETTABLEKS                       R14 R0 K15 ["luaCode"]
       45 SETLIST                          R13 R14 1 [1]
       47 CALL                             R11 2 2
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R13 R13 K16 ["useCallback"]
       51 NEWCLOSURE                       R14 P1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R3
       54 NEWTABLE                         R15 0 2
       56 MOVE                             R16 R3
       57 GETTABLEKS                       R17 R0 K15 ["luaCode"]
       59 SETLIST                          R15 R16 2 [1]
       61 CALL                             R13 2 1
       62 GETUPVAL                         R14 2
       63 GETTABLEKS                       R14 R14 K17 ["useEffect"]
       65 NEWCLOSURE                       R15 P2
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R5
       71 NEWTABLE                         R16 0 1
       73 MOVE                             R17 R11
       74 SETLIST                          R16 R17 1 [1]
       76 CALL                             R14 2 0
       77 GETUPVAL                         R14 2
       78 GETTABLEKS                       R14 R14 K14 ["useMemo"]
       80 NEWCLOSURE                       R15 P3
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R6
       83 CAPTURE                          UPVAL U4
       84 NEWTABLE                         R16 0 0
       86 CALL                             R14 2 1
       87 JUMPIF                           R11 ; [+2]
       88 LOADNIL                          R15
       89 RETURN                           R15 1
       90 GETUPVAL                         R15 5
       91 CALL                             R15 0 1
       92 GETUPVAL                         R16 6
       93 GETUPVAL                         R17 7
       94 DUPTABLE                         R18 K20 [{"tag", "LayoutOrder"}]
       95 LOADK                            R19 K21 ["col size-full-0 auto-y radius-small bg-shift-300"]
       96 SETTABLEKS                       R19 R18 K18 ["tag"]
       98 GETTABLEKS                       R19 R0 K19 ["LayoutOrder"]
      100 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      102 DUPTABLE                         R19 K26 [{"CodeHeader", "Divider", "CodeView", "TruncationNotice"}]
      103 GETUPVAL                         R20 6
      104 GETUPVAL                         R21 7
      105 DUPTABLE                         R22 K20 [{"tag", "LayoutOrder"}]
      106 LOADK                            R23 K27 ["row size-full-0 auto-y padding-xsmall gap-none align-x-right"]
      107 SETTABLEKS                       R23 R22 K18 ["tag"]
      109 MOVE                             R23 R15
      110 CALL                             R23 0 1
      111 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      113 DUPTABLE                         R23 K29 [{"CopyButton"}]
      114 GETUPVAL                         R25 8
      115 CALL                             R25 0 1
      116 JUMPIFNOT                        R25 ; [+38]
      117 GETUPVAL                         R24 6
      118 GETUPVAL                         R25 9
      119 DUPTABLE                         R26 K34 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      120 GETUPVAL                         R27 4
      121 GETTABLEKS                       R27 R27 K35 ["Enums"]
      123 GETTABLEKS                       R27 R27 K36 ["IconName"]
      125 GETTABLEKS                       R27 R27 K37 ["TwoStackedSquares"]
      127 SETTABLEKS                       R27 R26 K30 ["icon"]
      129 GETUPVAL                         R27 4
      130 GETTABLEKS                       R27 R27 K35 ["Enums"]
      132 GETTABLEKS                       R27 R27 K38 ["InputSize"]
      134 GETTABLEKS                       R27 R27 K39 ["XSmall"]
      136 SETTABLEKS                       R27 R26 K31 ["size"]
      138 GETUPVAL                         R27 4
      139 GETTABLEKS                       R27 R27 K35 ["Enums"]
      141 GETTABLEKS                       R27 R27 K40 ["ButtonVariant"]
      143 GETTABLEKS                       R27 R27 K41 ["Utility"]
      145 SETTABLEKS                       R27 R26 K32 ["variant"]
      147 SETTABLEKS                       R13 R26 K33 ["onActivated"]
      149 MOVE                             R27 R15
      150 CALL                             R27 0 1
      151 SETTABLEKS                       R27 R26 K19 ["LayoutOrder"]
      153 CALL                             R24 2 1
      154 JUMP                             ; [+20]
      155 GETUPVAL                         R24 6
      156 GETUPVAL                         R25 10
      157 DUPTABLE                         R26 K43 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder"}]
      158 GETUPVAL                         R28 11
      159 GETTABLE                         R27 R28 R2
      160 SETTABLEKS                       R27 R26 K30 ["icon"]
      162 LOADK                            R27 K44 ["size-600-600 radius-small align-x-center align-y-center"]
      163 SETTABLEKS                       R27 R26 K18 ["tag"]
      165 LOADK                            R27 K45 ["size-300-300 content-emphasis"]
      166 SETTABLEKS                       R27 R26 K42 ["iconTag"]
      168 SETTABLEKS                       R13 R26 K33 ["onActivated"]
      170 MOVE                             R27 R15
      171 CALL                             R27 0 1
      172 SETTABLEKS                       R27 R26 K19 ["LayoutOrder"]
      174 CALL                             R24 2 1
      175 SETTABLEKS                       R24 R23 K28 ["CopyButton"]
      177 CALL                             R20 3 1
      178 SETTABLEKS                       R20 R19 K22 ["CodeHeader"]
      180 GETUPVAL                         R20 6
      181 GETUPVAL                         R21 12
      182 DUPTABLE                         R22 K46 [{"LayoutOrder"}]
      183 MOVE                             R23 R15
      184 CALL                             R23 0 1
      185 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      187 CALL                             R20 2 1
      188 SETTABLEKS                       R20 R19 K23 ["Divider"]
      190 GETUPVAL                         R20 6
      191 GETUPVAL                         R21 13
      192 DUPTABLE                         R22 K51 [{"scroll", "layout", "LayoutOrder", "Size", "scrollingFrameRef"}]
      193 SETTABLEKS                       R14 R22 K47 ["scroll"]
      195 GETUPVAL                         R23 14
      196 SETTABLEKS                       R23 R22 K48 ["layout"]
      198 MOVE                             R23 R15
      199 CALL                             R23 0 1
      200 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      202 NEWCLOSURE                       R25 P4
      203 CAPTURE                          VAL R8
      204 CAPTURE                          VAL R6
      205 CAPTURE                          VAL R1
      206 NAMECALL                         R23 R4 K52 ["map"]
      208 CALL                             R23 2 1
      209 SETTABLEKS                       R23 R22 K49 ["Size"]
      211 SETTABLEKS                       R10 R22 K50 ["scrollingFrameRef"]
      213 DUPTABLE                         R23 K54 [{"MarkdownText"}]
      214 GETUPVAL                         R24 6
      215 GETUPVAL                         R25 15
      216 DUPTABLE                         R26 K57 [{"markdown", "messageId"}]
      217 SETTABLEKS                       R11 R26 K55 ["markdown"]
      219 GETTABLEKS                       R27 R0 K56 ["messageId"]
      221 SETTABLEKS                       R27 R26 K56 ["messageId"]
      223 CALL                             R24 2 1
      224 SETTABLEKS                       R24 R23 K53 ["MarkdownText"]
      226 CALL                             R20 3 1
      227 SETTABLEKS                       R20 R19 K24 ["CodeView"]
      229 MOVE                             R20 R12
      230 JUMPIFNOT                        R20 ; [+40]
      231 GETUPVAL                         R20 6
      232 GETUPVAL                         R21 7
      233 DUPTABLE                         R22 K20 [{"tag", "LayoutOrder"}]
      234 LOADK                            R23 K58 ["size-full-0 auto-y padding-small"]
      235 SETTABLEKS                       R23 R22 K18 ["tag"]
      237 MOVE                             R23 R15
      238 CALL                             R23 0 1
      239 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      241 DUPTABLE                         R23 K60 [{"NoticeText"}]
      242 GETUPVAL                         R24 6
      243 GETUPVAL                         R25 16
      244 DUPTABLE                         R26 K62 [{"tag", "Text"}]
      245 LOADK                            R27 K63 ["text-body-small content-secondary text-align-x-left size-full-0 auto-y"]
      246 SETTABLEKS                       R27 R26 K18 ["tag"]
      248 GETUPVAL                         R27 17
      249 LOADK                            R29 K64 ["GenericLongRunToolContentWidget"]
      250 LOADK                            R30 K65 ["CodeTruncated"]
      251 DUPTABLE                         R31 K67 [{"charCount"}]
      252 GETTABLEKS                       R33 R0 K15 ["luaCode"]
      254 JUMPIFNOT                        R33 ; [+4]
      255 GETTABLEKS                       R33 R0 K15 ["luaCode"]
      257 LENGTH                           R32 R33
      258 JUMPIF                           R32 ; [+1]
      259 LOADN                            R32 0
      260 SETTABLEKS                       R32 R31 K66 ["charCount"]
      262 NAMECALL                         R27 R27 K68 ["getText"]
      264 CALL                             R27 4 1
      265 SETTABLEKS                       R27 R26 K61 ["Text"]
      267 CALL                             R24 2 1
      268 SETTABLEKS                       R24 R23 K59 ["NoticeText"]
      270 CALL                             R20 3 1
      271 SETTABLEKS                       R20 R19 K25 ["TruncationNotice"]
      273 CALL                             R16 3 -1
      274 RETURN                           R16 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["content"]
        2 GETTABLEKS                       R2 R1 K1 ["type"]
        4 JUMPIFNOTEQKS                    R2 K2 ["infoMessage"] ; [+17]
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K6 [{"tag", "Text", "LayoutOrder"}]
        9 LOADK                            R5 K7 ["size-full-0 auto-y text-body-small text-align-x-left content-default"]
       10 SETTABLEKS                       R5 R4 K3 ["tag"]
       12 GETTABLEKS                       R5 R1 K8 ["message"]
       14 SETTABLEKS                       R5 R4 K4 ["Text"]
       16 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       18 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1
       22 GETTABLEKS                       R2 R1 K1 ["type"]
       24 JUMPIFNOTEQKS                    R2 K9 ["image"] ; [+21]
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R3 2
       28 DUPTABLE                         R4 K12 [{"imageContent", "maxSize", "LayoutOrder"}]
       29 GETTABLEKS                       R5 R1 K9 ["image"]
       31 SETTABLEKS                       R5 R4 K10 ["imageContent"]
       33 GETIMPORT                        R5 K15 [Vector2.new]
       35 LOADN                            R6 100
       36 LOADN                            R7 100
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K11 ["maxSize"]
       40 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       42 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1
       46 GETTABLEKS                       R2 R1 K1 ["type"]
       48 JUMPIFNOTEQKS                    R2 K16 ["luaCode"] ; [+18]
       50 GETUPVAL                         R2 0
       51 GETUPVAL                         R3 3
       52 DUPTABLE                         R4 K18 [{"luaCode", "messageId", "LayoutOrder"}]
       53 GETTABLEKS                       R5 R1 K19 ["code"]
       55 SETTABLEKS                       R5 R4 K16 ["luaCode"]
       57 GETTABLEKS                       R5 R0 K17 ["messageId"]
       59 SETTABLEKS                       R5 R4 K17 ["messageId"]
       61 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       63 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       65 CALL                             R2 2 -1
       66 RETURN                           R2 -1
       67 GETTABLEKS                       R2 R1 K1 ["type"]
       69 JUMPIFNOTEQKS                    R2 K20 ["errorMessage"] ; [+27]
       71 GETUPVAL                         R2 0
       72 GETUPVAL                         R3 4
       73 DUPTABLE                         R4 K21 [{"tag", "LayoutOrder"}]
       74 LOADK                            R5 K22 ["col size-full-0 auto-y gap-xsmall bg-surface-200 radius-small padding-small"]
       75 SETTABLEKS                       R5 R4 K3 ["tag"]
       77 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       79 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       81 DUPTABLE                         R5 K24 [{"ErrorText"}]
       82 GETUPVAL                         R6 0
       83 GETUPVAL                         R7 1
       84 DUPTABLE                         R8 K25 [{"tag", "Text"}]
       85 LOADK                            R9 K26 ["size-full-0 auto-y text-body-small text-align-x-left content-alert"]
       86 SETTABLEKS                       R9 R8 K3 ["tag"]
       88 GETTABLEKS                       R9 R1 K8 ["message"]
       90 SETTABLEKS                       R9 R8 K4 ["Text"]
       92 CALL                             R6 2 1
       93 SETTABLEKS                       R6 R5 K23 ["ErrorText"]
       95 CALL                             R2 3 -1
       96 RETURN                           R2 -1
       97 GETTABLEKS                       R2 R1 K1 ["type"]
       99 JUMPIFNOTEQKS                    R2 K27 ["stage"] ; [+17]
      101 GETUPVAL                         R2 0
      102 GETUPVAL                         R3 1
      103 DUPTABLE                         R4 K6 [{"tag", "Text", "LayoutOrder"}]
      104 LOADK                            R5 K28 ["size-full-0 auto-y text-label-small content-emphasis text-align-x-left"]
      105 SETTABLEKS                       R5 R4 K3 ["tag"]
      107 GETTABLEKS                       R5 R1 K27 ["stage"]
      109 SETTABLEKS                       R5 R4 K4 ["Text"]
      111 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
      113 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
      115 CALL                             R2 2 -1
      116 RETURN                           R2 -1
      117 LOADNIL                          R2
      118 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+28]
        2 GETIMPORT                        R2 K2 [os.clock]
        4 CALL                             R2 0 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K3 ["startTime"]
        8 SUB                              R1 R2 R3
        9 FASTCALL1                        MATH_FLOOR R1 ; [+2]
       10 GETIMPORT                        R0 K6 [math.floor]
       12 CALL                             R0 1 1
       13 LOADN                            R1 0
       14 JUMPIFNOTLT                      R1 R0 ; [+10]
       16 GETUPVAL                         R1 2
       17 LOADK                            R3 K7 ["%* (%*s)"]
       18 GETUPVAL                         R5 3
       19 MOVE                             R6 R0
       20 NAMECALL                         R3 R3 K8 ["format"]
       22 CALL                             R3 3 1
       23 MOVE                             R2 R3
       24 CALL                             R1 1 0
       25 GETIMPORT                        R1 K11 [task.wait]
       27 LOADN                            R2 1
       28 CALL                             R1 1 0
       29 JUMPBACK                         ; [-30]
       30 RETURN                           R0 0

PROTO_16:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["startTime"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 LOADB                            R0 0
        8 GETIMPORT                        R1 K3 [task.spawn]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          REF R0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CALL                             R1 1 0
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          REF R0
       18 CLOSEUPVALS                      R0
       19 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["inProgress"]
        2 GETTABLEKS                       R3 R0 K1 ["isFailed"]
        4 JUMPIFEQKB                       R3 TRUE ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 GETTABLEKS                       R3 R0 K2 ["stage"]
       10 JUMPIF                           R3 ; [+6]
       11 GETUPVAL                         R3 0
       12 LOADK                            R5 K3 ["GenericLongRunToolContentWidget"]
       13 LOADK                            R6 K4 ["Processing"]
       14 NAMECALL                         R3 R3 K5 ["getText"]
       16 CALL                             R3 3 1
       17 GETUPVAL                         R4 1
       18 CALL                             R4 0 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K6 ["useBinding"]
       22 MOVE                             R6 R3
       23 CALL                             R5 1 2
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K7 ["useEffect"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R6
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R9 0 3
       34 MOVE                             R10 R1
       35 GETTABLEKS                       R11 R0 K8 ["startTime"]
       37 MOVE                             R12 R3
       38 SETLIST                          R9 R10 3 [1]
       40 CALL                             R7 2 0
       41 GETUPVAL                         R7 3
       42 CALL                             R7 0 1
       43 NEWTABLE                         R8 0 0
       45 GETTABLEKS                       R9 R0 K9 ["progressContents"]
       47 JUMPIFNOT                        R9 ; [+29]
       48 GETIMPORT                        R9 K11 [ipairs]
       50 GETTABLEKS                       R10 R0 K9 ["progressContents"]
       52 CALL                             R9 1 3
       53 FORGPREP_INEXT                   R9
       54 LOADK                            R15 K12 ["ProgressContent_%*"]
       55 MOVE                             R17 R12
       56 NAMECALL                         R15 R15 K13 ["format"]
       58 CALL                             R15 2 1
       59 MOVE                             R14 R15
       60 GETUPVAL                         R15 4
       61 GETUPVAL                         R16 5
       62 DUPTABLE                         R17 K17 [{"content", "messageId", "LayoutOrder"}]
       63 SETTABLEKS                       R13 R17 K14 ["content"]
       65 GETTABLEKS                       R18 R0 K15 ["messageId"]
       67 SETTABLEKS                       R18 R17 K15 ["messageId"]
       69 MOVE                             R18 R7
       70 CALL                             R18 0 1
       71 SETTABLEKS                       R18 R17 K16 ["LayoutOrder"]
       73 CALL                             R15 2 1
       74 SETTABLE                         R15 R8 R14
       75 FORGLOOP                         R9 2 [inext] ; [-22]
       77 GETUPVAL                         R9 4
       78 GETUPVAL                         R10 6
       79 GETTABLEKS                       R10 R10 K18 ["Root"]
       81 DUPTABLE                         R11 K22 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       82 GETTABLEKS                       R12 R0 K16 ["LayoutOrder"]
       84 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
       86 GETTABLEKS                       R12 R0 K19 ["expanded"]
       88 SETTABLEKS                       R12 R11 K19 ["expanded"]
       90 GETTABLEKS                       R12 R0 K20 ["contentId"]
       92 SETTABLEKS                       R12 R11 K20 ["contentId"]
       94 GETTABLEKS                       R12 R0 K21 ["editThisContent"]
       96 SETTABLEKS                       R12 R11 K21 ["editThisContent"]
       98 DUPTABLE                         R12 K25 [{"Header", "Content"}]
       99 GETUPVAL                         R13 4
      100 GETUPVAL                         R14 6
      101 GETTABLEKS                       R14 R14 K23 ["Header"]
      103 DUPTABLE                         R15 K26 [{"LayoutOrder"}]
      104 MOVE                             R16 R7
      105 CALL                             R16 0 1
      106 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      108 DUPTABLE                         R16 K29 [{"StatusIcon", "Text"}]
      109 MOVE                             R17 R2
      110 JUMPIFNOT                        R17 ; [+39]
      111 GETUPVAL                         R17 4
      112 GETUPVAL                         R18 7
      113 DUPTABLE                         R19 K33 [{"name", "style", "size", "LayoutOrder"}]
      114 GETUPVAL                         R21 8
      115 CALL                             R21 0 1
      116 JUMPIFNOT                        R21 ; [+8]
      117 GETUPVAL                         R20 9
      118 GETTABLEKS                       R20 R20 K34 ["Enums"]
      120 GETTABLEKS                       R20 R20 K35 ["IconName"]
      122 GETTABLEKS                       R20 R20 K36 ["TriangleExclamation"]
      124 JUMP                             ; [+1]
      125 LOADK                            R20 K37 ["icons/status/warning"]
      126 SETTABLEKS                       R20 R19 K30 ["name"]
      128 GETTABLEKS                       R20 R4 K38 ["Color"]
      130 GETTABLEKS                       R20 R20 K39 ["System"]
      132 GETTABLEKS                       R20 R20 K40 ["Alert"]
      134 SETTABLEKS                       R20 R19 K31 ["style"]
      136 GETUPVAL                         R20 9
      137 GETTABLEKS                       R20 R20 K34 ["Enums"]
      139 GETTABLEKS                       R20 R20 K41 ["IconSize"]
      141 GETTABLEKS                       R20 R20 K42 ["Small"]
      143 SETTABLEKS                       R20 R19 K32 ["size"]
      145 MOVE                             R20 R7
      146 CALL                             R20 0 1
      147 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      149 CALL                             R17 2 1
      150 SETTABLEKS                       R17 R16 K27 ["StatusIcon"]
      152 GETUPVAL                         R17 4
      153 GETUPVAL                         R18 10
      154 DUPTABLE                         R19 K44 [{"tag", "Text", "LayoutOrder"}]
      155 NEWTABLE                         R20 4 0
      157 LOADB                            R21 1
      158 SETTABLEKS                       R21 R20 K45 ["size-0-full auto-x text-label-small text-truncate-end"]
      160 SETTABLEKS                       R2 R20 K46 ["content-alert"]
      162 NOT                              R21 R2
      163 SETTABLEKS                       R21 R20 K47 ["content-default"]
      165 SETTABLEKS                       R20 R19 K43 ["tag"]
      167 SETTABLEKS                       R5 R19 K28 ["Text"]
      169 MOVE                             R20 R7
      170 CALL                             R20 0 1
      171 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      173 DUPTABLE                         R20 K49 [{"Shimmer"}]
      174 MOVE                             R21 R1
      175 JUMPIFNOT                        R21 ; [+3]
      176 GETUPVAL                         R21 4
      177 GETUPVAL                         R22 11
      178 CALL                             R21 1 1
      179 SETTABLEKS                       R21 R20 K48 ["Shimmer"]
      181 CALL                             R17 3 1
      182 SETTABLEKS                       R17 R16 K28 ["Text"]
      184 CALL                             R13 3 1
      185 SETTABLEKS                       R13 R12 K23 ["Header"]
      187 GETUPVAL                         R13 4
      188 GETUPVAL                         R14 6
      189 GETTABLEKS                       R14 R14 K24 ["Content"]
      191 DUPTABLE                         R15 K51 [{"tag", "LayoutOrder", "UseVisible"}]
      192 LOADK                            R16 K52 ["col size-0-0 fill auto-y gap-small padding-small"]
      193 SETTABLEKS                       R16 R15 K43 ["tag"]
      195 MOVE                             R16 R7
      196 CALL                             R16 0 1
      197 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      199 LOADB                            R16 1
      200 SETTABLEKS                       R16 R15 K50 ["UseVisible"]
      202 MOVE                             R16 R8
      203 CALL                             R13 3 1
      204 SETTABLEKS                       R13 R12 K24 ["Content"]
      206 CALL                             R9 3 -1
      207 RETURN                           R9 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K7 [{"stage", "progressContents", "inProgress", "isFailed"}]
        9 GETTABLEKS                       R2 R0 K3 ["stage"]
       11 SETTABLEKS                       R2 R1 K3 ["stage"]
       13 GETTABLEKS                       R2 R0 K4 ["progressContents"]
       15 SETTABLEKS                       R2 R1 K4 ["progressContents"]
       17 GETTABLEKS                       R2 R0 K5 ["inProgress"]
       19 SETTABLEKS                       R2 R1 K5 ["inProgress"]
       21 GETTABLEKS                       R2 R0 K6 ["isFailed"]
       23 SETTABLEKS                       R2 R1 K6 ["isFailed"]
       25 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 DUPTABLE                         R2 K9 [{"type", "stage", "progressContents", "inProgress", "isFailed", "expanded"}]
        9 LOADK                            R3 K10 ["GenericLongRunTool"]
       10 SETTABLEKS                       R3 R2 K3 ["type"]
       12 GETTABLEKS                       R4 R0 K4 ["stage"]
       14 ORK                              R3 R4 K11 ["UNKNOWN_STAGE"]
       15 SETTABLEKS                       R3 R2 K4 ["stage"]
       17 GETTABLEKS                       R3 R0 K5 ["progressContents"]
       19 SETTABLEKS                       R3 R2 K5 ["progressContents"]
       21 GETTABLEKS                       R4 R0 K6 ["inProgress"]
       23 ORK                              R3 R4 K12 [False]
       24 SETTABLEKS                       R3 R2 K6 ["inProgress"]
       26 GETTABLEKS                       R3 R0 K7 ["isFailed"]
       28 SETTABLEKS                       R3 R2 K7 ["isFailed"]
       30 LOADB                            R3 0
       31 SETTABLEKS                       R3 R2 K8 ["expanded"]
       33 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["CustomIconButton"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Guest"]
       25 GETTABLEKS                       R4 R4 K10 ["Environment"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["ImageContent"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R7 K14 ["MarkdownText"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K11 ["Parent"]
       53 GETTABLEKS                       R8 R8 K15 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K11 ["Parent"]
       60 GETTABLEKS                       R9 R9 K16 ["ReactUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K17 ["Util"]
       67 GETTABLEKS                       R10 R10 K18 ["Serializer"]
       69 GETTABLEKS                       R10 R10 K19 ["SerializerTypes"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K6 ["Components"]
       76 GETTABLEKS                       R11 R11 K20 ["ShimmerGradient"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K21 ["Resources"]
       83 GETTABLEKS                       R12 R12 K22 ["Localization"]
       85 GETTABLEKS                       R12 R12 K23 ["Translator"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K24 ["Types"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K17 ["Util"]
       97 GETTABLEKS                       R14 R14 K25 ["truncateUtf8Safe"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K26 ["Flags"]
      104 GETTABLEKS                       R15 R15 K27 ["FFlagAssistantMultipleChatPersistence"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K26 ["Flags"]
      111 GETTABLEKS                       R16 R16 K28 ["FFlagAssistantUseBuilderIcons"]
      113 CALL                             R15 1 1
      114 GETTABLEKS                       R16 R4 K29 ["Divider"]
      116 GETTABLEKS                       R17 R4 K30 ["Icon"]
      118 GETTABLEKS                       R18 R4 K31 ["IconButton"]
      120 GETTABLEKS                       R19 R4 K32 ["ScrollView"]
      122 GETTABLEKS                       R20 R4 K33 ["Text"]
      124 GETTABLEKS                       R21 R4 K34 ["View"]
      126 GETTABLEKS                       R22 R4 K35 ["Hooks"]
      128 GETTABLEKS                       R22 R22 K36 ["useTokens"]
      130 GETTABLEKS                       R23 R8 K37 ["createNextOrder"]
      132 GETTABLEKS                       R24 R7 K38 ["createElement"]
      134 DUPTABLE                         R25 K41 [{"Dark", "Light"}]
      135 LOADK                            R26 K42 ["rbxasset://studio_svg_textures/Shared/Clipboard/Dark/Standard/Copy.png"]
      136 SETTABLEKS                       R26 R25 K39 ["Dark"]
      138 LOADK                            R26 K43 ["rbxasset://studio_svg_textures/Shared/Clipboard/Light/Standard/Copy.png"]
      139 SETTABLEKS                       R26 R25 K40 ["Light"]
      141 DUPTABLE                         R26 K45 [{"FillDirection"}]
      142 GETIMPORT                        R27 K48 [Enum.FillDirection.Vertical]
      144 SETTABLEKS                       R27 R26 K44 ["FillDirection"]
      146 DUPCLOSURE                       R27 K49 [PROTO_0]
      147 DUPCLOSURE                       R28 K50 [PROTO_1]
      148 DUPCLOSURE                       R29 K51 [PROTO_2]
      149 DUPCLOSURE                       R30 K52 [PROTO_3]
      150 DUPCLOSURE                       R31 K53 [PROTO_4]
      151 DUPCLOSURE                       R32 K54 [PROTO_13]
      152 CAPTURE                          VAL R22
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R23
      158 CAPTURE                          VAL R24
      159 CAPTURE                          VAL R21
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R25
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R26
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R11
      170 GETTABLEKS                       R33 R7 K55 ["memo"]
      172 DUPCLOSURE                       R34 K56 [PROTO_14]
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R32
      177 CAPTURE                          VAL R21
      178 CALL                             R33 1 1
      179 DUPCLOSURE                       R34 K57 [PROTO_18]
      180 CAPTURE                          VAL R11
      181 CAPTURE                          VAL R22
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R23
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R33
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R4
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R10
      192 DUPTABLE                         R35 K60 [{"toMeta", "fromMeta"}]
      193 DUPCLOSURE                       R36 K61 [PROTO_19]
      194 CAPTURE                          VAL R14
      195 SETTABLEKS                       R36 R35 K58 ["toMeta"]
      197 DUPCLOSURE                       R36 K62 [PROTO_20]
      198 CAPTURE                          VAL R14
      199 SETTABLEKS                       R36 R35 K59 ["fromMeta"]
      201 DUPTABLE                         R36 K71 [{"Type", "ContentWidget", "Serialization", "infoMessage", "imageContent", "luaCode", "errorMessage", "stageUpdate", "truncateUtf8Safe"}]
      202 LOADK                            R37 K72 ["GenericLongRunTool"]
      203 SETTABLEKS                       R37 R36 K63 ["Type"]
      205 GETTABLEKS                       R37 R7 K55 ["memo"]
      207 MOVE                             R38 R34
      208 CALL                             R37 1 1
      209 SETTABLEKS                       R37 R36 K64 ["ContentWidget"]
      211 SETTABLEKS                       R35 R36 K65 ["Serialization"]
      213 SETTABLEKS                       R27 R36 K66 ["infoMessage"]
      215 SETTABLEKS                       R28 R36 K67 ["imageContent"]
      217 SETTABLEKS                       R29 R36 K68 ["luaCode"]
      219 SETTABLEKS                       R30 R36 K69 ["errorMessage"]
      221 SETTABLEKS                       R31 R36 K70 ["stageUpdate"]
      223 SETTABLEKS                       R13 R36 K25 ["truncateUtf8Safe"]
      225 RETURN                           R36 1
