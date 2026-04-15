PROTO_0:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTLE                      R2 R1 ; [+4]
        3 MOVE                             R2 R0
        4 LOADB                            R3 0
        5 RETURN                           R2 2
        6 LOADN                            R4 1
        7 FASTCALL3                        STRING_SUB R0 R4 R1
        9 MOVE                             R3 R0
       10 MOVE                             R5 R1
       11 GETIMPORT                        R2 K2 [string.sub]
       13 CALL                             R2 3 1
       14 GETIMPORT                        R3 K5 [utf8.len]
       16 MOVE                             R4 R2
       17 CALL                             R3 1 1
       18 JUMPIF                           R3 ; [+14]
       19 LENGTH                           R3 R2
       20 LOADN                            R4 0
       21 JUMPIFNOTLT                      R4 R3 ; [+11]
       23 LOADN                            R5 1
       24 LOADN                            R6 254
       25 FASTCALL3                        STRING_SUB R2 R5 R6
       27 MOVE                             R4 R2
       28 GETIMPORT                        R3 K2 [string.sub]
       30 CALL                             R3 3 1
       31 MOVE                             R2 R3
       32 JUMPBACK                         ; [-19]
       33 MOVE                             R3 R2
       34 LOADB                            R4 1
       35 RETURN                           R3 2

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"type", "message"}]
        1 LOADK                            R2 K3 ["infoMessage"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["message"]
        6 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"type", "image"}]
        1 LOADK                            R2 K1 ["image"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["image"]
        6 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"type", "code"}]
        1 LOADK                            R2 K3 ["luaCode"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["code"]
        6 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"type", "message"}]
        1 LOADK                            R2 K3 ["errorMessage"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["message"]
        6 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"type", "stage"}]
        1 LOADK                            R2 K1 ["stage"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["stage"]
        6 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["luaCode"]
        3 JUMPIFNOT                        R0 ; [+21]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["luaCode"]
        7 LENGTH                           R0 R1
        8 LOADN                            R1 0
        9 JUMPIFNOTLT                      R1 R0 ; [+15]
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K0 ["luaCode"]
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["luaCode"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["copyToClipboard"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["luaCode"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getValue"]
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R3 R0 K1 ["X"]
        6 GETTABLEKS                       R2 R3 K2 ["Offset"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["AbsoluteSize"]
       11 GETTABLEKS                       R3 R4 K1 ["X"]
       13 JUMPIFLT                         R3 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 GETTABLEKS                       R4 R0 K4 ["Y"]
       19 GETTABLEKS                       R3 R4 K2 ["Offset"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K3 ["AbsoluteSize"]
       24 GETTABLEKS                       R4 R5 K4 ["Y"]
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K3 ["AbsoluteCanvasSize"]
        6 GETTABLEKS                       R2 R3 K4 ["X"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["AbsoluteCanvasSize"]
       11 GETTABLEKS                       R3 R4 K5 ["Y"]
       13 CALL                             R1 2 -1
       14 CALL                             R0 -1 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
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

PROTO_12:
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
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R3 R4 K15 ["Enums"]
       29 GETTABLEKS                       R2 R3 K16 ["Visibility"]
       31 GETTABLEKS                       R1 R2 K17 ["Always"]
       33 SETTABLEKS                       R1 R0 K7 ["scrollBarVisibility"]
       35 RETURN                           R0 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["Y"]
        2 GETTABLEKS                       R2 R3 K1 ["Offset"]
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
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R3 R4 K10 ["Size"]
       23 GETTABLEKS                       R2 R3 K11 ["Size_300"]
       25 ADD                              R1 R1 R2
       26 GETIMPORT                        R2 K14 [UDim2.new]
       28 LOADN                            R3 1
       29 LOADN                            R4 0
       30 LOADN                            R5 0
       31 MOVE                             R6 R1
       32 CALL                             R2 4 -1
       33 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R4 R1 K0 ["Config"]
        4 GETTABLEKS                       R3 R4 K1 ["ColorMode"]
        6 GETTABLEKS                       R2 R3 K2 ["Name"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K3 ["get"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K4 ["useBinding"]
       15 GETIMPORT                        R5 K7 [UDim2.new]
       17 CALL                             R5 0 -1
       18 CALL                             R4 -1 2
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K4 ["useBinding"]
       22 GETIMPORT                        R7 K11 [Enum.ScrollingDirection.XY]
       24 CALL                             R6 1 2
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R8 R9 K12 ["useState"]
       28 LOADB                            R9 0
       29 CALL                             R8 1 2
       30 GETUPVAL                         R11 2
       31 GETTABLEKS                       R10 R11 K13 ["useRef"]
       33 LOADNIL                          R11
       34 CALL                             R10 1 1
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R11 R12 K14 ["useMemo"]
       38 NEWCLOSURE                       R12 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U3
       41 NEWTABLE                         R13 0 1
       43 GETTABLEKS                       R14 R0 K15 ["luaCode"]
       45 SETLIST                          R13 R14 1 [1]
       47 CALL                             R11 2 2
       48 GETUPVAL                         R14 2
       49 GETTABLEKS                       R13 R14 K16 ["useCallback"]
       51 NEWCLOSURE                       R14 P1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R3
       54 NEWTABLE                         R15 0 2
       56 MOVE                             R16 R3
       57 GETTABLEKS                       R17 R0 K15 ["luaCode"]
       59 SETLIST                          R15 R16 2 [1]
       61 CALL                             R13 2 1
       62 GETUPVAL                         R15 2
       63 GETTABLEKS                       R14 R15 K17 ["useEffect"]
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
       77 GETUPVAL                         R15 2
       78 GETTABLEKS                       R14 R15 K14 ["useMemo"]
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
      114 GETUPVAL                         R24 6
      115 GETUPVAL                         R25 8
      116 DUPTABLE                         R26 K33 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder"}]
      117 GETUPVAL                         R28 9
      118 GETTABLE                         R27 R28 R2
      119 SETTABLEKS                       R27 R26 K30 ["icon"]
      121 LOADK                            R27 K34 ["size-600-600 radius-small align-x-center align-y-center"]
      122 SETTABLEKS                       R27 R26 K18 ["tag"]
      124 LOADK                            R27 K35 ["size-300-300 content-emphasis"]
      125 SETTABLEKS                       R27 R26 K31 ["iconTag"]
      127 SETTABLEKS                       R13 R26 K32 ["onActivated"]
      129 MOVE                             R27 R15
      130 CALL                             R27 0 1
      131 SETTABLEKS                       R27 R26 K19 ["LayoutOrder"]
      133 CALL                             R24 2 1
      134 SETTABLEKS                       R24 R23 K28 ["CopyButton"]
      136 CALL                             R20 3 1
      137 SETTABLEKS                       R20 R19 K22 ["CodeHeader"]
      139 GETUPVAL                         R20 6
      140 GETUPVAL                         R21 10
      141 DUPTABLE                         R22 K36 [{"LayoutOrder"}]
      142 MOVE                             R23 R15
      143 CALL                             R23 0 1
      144 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      146 CALL                             R20 2 1
      147 SETTABLEKS                       R20 R19 K23 ["Divider"]
      149 GETUPVAL                         R20 6
      150 GETUPVAL                         R21 11
      151 DUPTABLE                         R22 K41 [{"scroll", "layout", "LayoutOrder", "Size", "scrollingFrameRef"}]
      152 SETTABLEKS                       R14 R22 K37 ["scroll"]
      154 GETUPVAL                         R23 12
      155 SETTABLEKS                       R23 R22 K38 ["layout"]
      157 MOVE                             R23 R15
      158 CALL                             R23 0 1
      159 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      161 NEWCLOSURE                       R25 P4
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R1
      165 NAMECALL                         R23 R4 K42 ["map"]
      167 CALL                             R23 2 1
      168 SETTABLEKS                       R23 R22 K39 ["Size"]
      170 SETTABLEKS                       R10 R22 K40 ["scrollingFrameRef"]
      172 DUPTABLE                         R23 K44 [{"MarkdownText"}]
      173 GETUPVAL                         R24 6
      174 GETUPVAL                         R25 13
      175 DUPTABLE                         R26 K47 [{"markdown", "messageId"}]
      176 SETTABLEKS                       R11 R26 K45 ["markdown"]
      178 GETTABLEKS                       R27 R0 K46 ["messageId"]
      180 SETTABLEKS                       R27 R26 K46 ["messageId"]
      182 CALL                             R24 2 1
      183 SETTABLEKS                       R24 R23 K43 ["MarkdownText"]
      185 CALL                             R20 3 1
      186 SETTABLEKS                       R20 R19 K24 ["CodeView"]
      188 MOVE                             R20 R12
      189 JUMPIFNOT                        R20 ; [+40]
      190 GETUPVAL                         R20 6
      191 GETUPVAL                         R21 7
      192 DUPTABLE                         R22 K20 [{"tag", "LayoutOrder"}]
      193 LOADK                            R23 K48 ["size-full-0 auto-y padding-small"]
      194 SETTABLEKS                       R23 R22 K18 ["tag"]
      196 MOVE                             R23 R15
      197 CALL                             R23 0 1
      198 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      200 DUPTABLE                         R23 K50 [{"NoticeText"}]
      201 GETUPVAL                         R24 6
      202 GETUPVAL                         R25 14
      203 DUPTABLE                         R26 K52 [{"tag", "Text"}]
      204 LOADK                            R27 K53 ["text-body-small content-secondary text-align-x-left size-full-0 auto-y"]
      205 SETTABLEKS                       R27 R26 K18 ["tag"]
      207 GETUPVAL                         R27 15
      208 LOADK                            R29 K54 ["GenericLongRunToolContentWidget"]
      209 LOADK                            R30 K55 ["CodeTruncated"]
      210 DUPTABLE                         R31 K57 [{"charCount"}]
      211 GETTABLEKS                       R33 R0 K15 ["luaCode"]
      213 JUMPIFNOT                        R33 ; [+4]
      214 GETTABLEKS                       R33 R0 K15 ["luaCode"]
      216 LENGTH                           R32 R33
      217 JUMPIF                           R32 ; [+1]
      218 LOADN                            R32 0
      219 SETTABLEKS                       R32 R31 K56 ["charCount"]
      221 NAMECALL                         R27 R27 K58 ["getText"]
      223 CALL                             R27 4 1
      224 SETTABLEKS                       R27 R26 K51 ["Text"]
      226 CALL                             R24 2 1
      227 SETTABLEKS                       R24 R23 K49 ["NoticeText"]
      229 CALL                             R20 3 1
      230 SETTABLEKS                       R20 R19 K25 ["TruncationNotice"]
      232 CALL                             R16 3 -1
      233 RETURN                           R16 -1

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+28]
        2 GETIMPORT                        R2 K2 [os.clock]
        4 CALL                             R2 0 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K3 ["startTime"]
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

PROTO_17:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["startTime"]
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

PROTO_19:
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
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K6 ["useBinding"]
       22 MOVE                             R6 R3
       23 CALL                             R5 1 2
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R7 R8 K7 ["useEffect"]
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
       78 GETUPVAL                         R11 6
       79 GETTABLEKS                       R10 R11 K18 ["Root"]
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
      100 GETUPVAL                         R15 6
      101 GETTABLEKS                       R14 R15 K23 ["Header"]
      103 DUPTABLE                         R15 K26 [{"LayoutOrder"}]
      104 MOVE                             R16 R7
      105 CALL                             R16 0 1
      106 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      108 DUPTABLE                         R16 K29 [{"StatusIcon", "Text"}]
      109 MOVE                             R17 R2
      110 JUMPIFNOT                        R17 ; [+28]
      111 GETUPVAL                         R17 4
      112 GETUPVAL                         R18 7
      113 DUPTABLE                         R19 K33 [{"name", "size", "style", "LayoutOrder"}]
      114 LOADK                            R20 K34 ["icons/status/warning"]
      115 SETTABLEKS                       R20 R19 K30 ["name"]
      117 GETUPVAL                         R23 8
      118 GETTABLEKS                       R22 R23 K35 ["Enums"]
      120 GETTABLEKS                       R21 R22 K36 ["IconSize"]
      122 GETTABLEKS                       R20 R21 K37 ["Small"]
      124 SETTABLEKS                       R20 R19 K31 ["size"]
      126 GETTABLEKS                       R22 R4 K38 ["Color"]
      128 GETTABLEKS                       R21 R22 K39 ["System"]
      130 GETTABLEKS                       R20 R21 K40 ["Alert"]
      132 SETTABLEKS                       R20 R19 K32 ["style"]
      134 MOVE                             R20 R7
      135 CALL                             R20 0 1
      136 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      138 CALL                             R17 2 1
      139 SETTABLEKS                       R17 R16 K27 ["StatusIcon"]
      141 GETUPVAL                         R17 4
      142 GETUPVAL                         R18 9
      143 DUPTABLE                         R19 K42 [{"tag", "Text", "LayoutOrder"}]
      144 NEWTABLE                         R20 4 0
      146 LOADB                            R21 1
      147 SETTABLEKS                       R21 R20 K43 ["size-0-full auto-x text-label-small text-truncate-end"]
      149 SETTABLEKS                       R2 R20 K44 ["content-alert"]
      151 NOT                              R21 R2
      152 SETTABLEKS                       R21 R20 K45 ["content-default"]
      154 SETTABLEKS                       R20 R19 K41 ["tag"]
      156 SETTABLEKS                       R5 R19 K28 ["Text"]
      158 MOVE                             R20 R7
      159 CALL                             R20 0 1
      160 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
      162 DUPTABLE                         R20 K47 [{"Shimmer"}]
      163 MOVE                             R21 R1
      164 JUMPIFNOT                        R21 ; [+3]
      165 GETUPVAL                         R21 4
      166 GETUPVAL                         R22 10
      167 CALL                             R21 1 1
      168 SETTABLEKS                       R21 R20 K46 ["Shimmer"]
      170 CALL                             R17 3 1
      171 SETTABLEKS                       R17 R16 K28 ["Text"]
      173 CALL                             R13 3 1
      174 SETTABLEKS                       R13 R12 K23 ["Header"]
      176 GETUPVAL                         R13 4
      177 GETUPVAL                         R15 6
      178 GETTABLEKS                       R14 R15 K24 ["Content"]
      180 DUPTABLE                         R15 K49 [{"tag", "LayoutOrder", "UseVisible"}]
      181 LOADK                            R16 K50 ["col size-0-0 fill auto-y gap-small padding-small"]
      182 SETTABLEKS                       R16 R15 K41 ["tag"]
      184 MOVE                             R16 R7
      185 CALL                             R16 0 1
      186 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      188 LOADB                            R16 1
      189 SETTABLEKS                       R16 R15 K48 ["UseVisible"]
      191 MOVE                             R16 R8
      192 CALL                             R13 3 1
      193 SETTABLEKS                       R13 R12 K24 ["Content"]
      195 CALL                             R9 3 -1
      196 RETURN                           R9 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K8 [{"type", "stage", "progressContents", "inProgress", "isFailed"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["stage"]
       15 SETTABLEKS                       R2 R1 K4 ["stage"]
       17 GETTABLEKS                       R2 R0 K5 ["progressContents"]
       19 SETTABLEKS                       R2 R1 K5 ["progressContents"]
       21 GETTABLEKS                       R2 R0 K6 ["inProgress"]
       23 SETTABLEKS                       R2 R1 K6 ["inProgress"]
       25 GETTABLEKS                       R2 R0 K7 ["isFailed"]
       27 SETTABLEKS                       R2 R1 K7 ["isFailed"]
       29 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K9 [{"type", "stage", "progressContents", "inProgress", "isFailed", "expanded"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["stage"]
       15 SETTABLEKS                       R2 R1 K4 ["stage"]
       17 GETTABLEKS                       R2 R0 K5 ["progressContents"]
       19 SETTABLEKS                       R2 R1 K5 ["progressContents"]
       21 GETTABLEKS                       R2 R0 K6 ["inProgress"]
       23 SETTABLEKS                       R2 R1 K6 ["inProgress"]
       25 GETTABLEKS                       R2 R0 K7 ["isFailed"]
       27 SETTABLEKS                       R2 R1 K7 ["isFailed"]
       29 LOADB                            R2 0
       30 SETTABLEKS                       R2 R1 K8 ["expanded"]
       32 RETURN                           R1 1

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
       16 GETTABLEKS                       R4 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R4 K8 ["CustomIconButton"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Guest"]
       25 GETTABLEKS                       R4 R5 K10 ["Environment"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R7 K13 ["ImageContent"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R8 K14 ["MarkdownText"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K11 ["Parent"]
       53 GETTABLEKS                       R8 R9 K15 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K11 ["Parent"]
       60 GETTABLEKS                       R9 R10 K16 ["ReactUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K6 ["Components"]
       67 GETTABLEKS                       R10 R11 K17 ["ShimmerGradient"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R13 R0 K18 ["Resources"]
       74 GETTABLEKS                       R12 R13 K19 ["Localization"]
       76 GETTABLEKS                       R11 R12 K20 ["Translator"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K21 ["Types"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R14 R0 K22 ["Flags"]
       88 GETTABLEKS                       R13 R14 K23 ["FFlagAssistantMultipleChatPersistence"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R13 R4 K24 ["Divider"]
       93 GETTABLEKS                       R14 R4 K25 ["Icon"]
       95 GETTABLEKS                       R15 R4 K26 ["ScrollView"]
       97 GETTABLEKS                       R16 R4 K27 ["Text"]
       99 GETTABLEKS                       R17 R4 K28 ["View"]
      101 GETTABLEKS                       R19 R4 K29 ["Hooks"]
      103 GETTABLEKS                       R18 R19 K30 ["useTokens"]
      105 GETTABLEKS                       R19 R8 K31 ["createNextOrder"]
      107 GETTABLEKS                       R20 R7 K32 ["createElement"]
      109 DUPTABLE                         R21 K35 [{"Dark", "Light"}]
      110 LOADK                            R22 K36 ["rbxasset://studio_svg_textures/Shared/Clipboard/Dark/Standard/Copy.png"]
      111 SETTABLEKS                       R22 R21 K33 ["Dark"]
      113 LOADK                            R22 K37 ["rbxasset://studio_svg_textures/Shared/Clipboard/Light/Standard/Copy.png"]
      114 SETTABLEKS                       R22 R21 K34 ["Light"]
      116 DUPCLOSURE                       R22 K38 [PROTO_0]
      117 DUPTABLE                         R23 K40 [{"FillDirection"}]
      118 GETIMPORT                        R24 K43 [Enum.FillDirection.Vertical]
      120 SETTABLEKS                       R24 R23 K39 ["FillDirection"]
      122 DUPCLOSURE                       R24 K44 [PROTO_1]
      123 DUPCLOSURE                       R25 K45 [PROTO_2]
      124 DUPCLOSURE                       R26 K46 [PROTO_3]
      125 DUPCLOSURE                       R27 K47 [PROTO_4]
      126 DUPCLOSURE                       R28 K48 [PROTO_5]
      127 DUPCLOSURE                       R29 K49 [PROTO_14]
      128 CAPTURE                          VAL R18
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R22
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R20
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R21
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R23
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R10
      144 GETTABLEKS                       R30 R7 K50 ["memo"]
      146 DUPCLOSURE                       R31 K51 [PROTO_15]
      147 CAPTURE                          VAL R20
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R29
      151 CAPTURE                          VAL R17
      152 CALL                             R30 1 1
      153 DUPCLOSURE                       R31 K52 [PROTO_19]
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R19
      158 CAPTURE                          VAL R20
      159 CAPTURE                          VAL R30
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R9
      165 DUPCLOSURE                       R32 K53 [PROTO_20]
      166 CAPTURE                          VAL R12
      167 DUPCLOSURE                       R33 K54 [PROTO_21]
      168 CAPTURE                          VAL R12
      169 DUPTABLE                         R34 K64 [{"Type", "ContentWidget", "Serialization", "infoMessage", "imageContent", "luaCode", "errorMessage", "stageUpdate", "truncateUtf8Safe"}]
      170 LOADK                            R35 K65 ["GenericLongRunTool"]
      171 SETTABLEKS                       R35 R34 K55 ["Type"]
      173 GETTABLEKS                       R35 R7 K50 ["memo"]
      175 MOVE                             R36 R31
      176 CALL                             R35 1 1
      177 SETTABLEKS                       R35 R34 K56 ["ContentWidget"]
      179 DUPTABLE                         R35 K68 [{"serialize", "deserialize"}]
      180 SETTABLEKS                       R32 R35 K66 ["serialize"]
      182 SETTABLEKS                       R33 R35 K67 ["deserialize"]
      184 SETTABLEKS                       R35 R34 K57 ["Serialization"]
      186 SETTABLEKS                       R24 R34 K58 ["infoMessage"]
      188 SETTABLEKS                       R25 R34 K59 ["imageContent"]
      190 SETTABLEKS                       R26 R34 K60 ["luaCode"]
      192 SETTABLEKS                       R27 R34 K61 ["errorMessage"]
      194 SETTABLEKS                       R28 R34 K62 ["stageUpdate"]
      196 SETTABLEKS                       R22 R34 K63 ["truncateUtf8Safe"]
      198 RETURN                           R34 1
