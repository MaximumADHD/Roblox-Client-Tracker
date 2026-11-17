PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 MOVE                             R9 R1
        5 NAMECALL                         R7 R6 K1 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+1]
        9 RETURN                           R6 1
       10 FORGLOOP                         R2 2 ; [-7]
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["parseJSONForCode"]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 1
       11 JUMPIFNOT                        R0 ; [+1]
       12 RETURN                           R0 1
       13 LOADK                            R0 K1 [""]
       14 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["copyToClipboard"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+12]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["loadCodeAsync"]
        7 DUPTABLE                         R2 K3 [{"code"}]
        8 GETUPVAL                         R3 2
        9 SETTABLEKS                       R3 R2 K2 ["code"]
       11 CALL                             R1 1 1
       12 MOVE                             R0 R1
       13 GETUPVAL                         R1 0
       14 SETTABLEKS                       R0 R1 K0 ["current"]
       16 FASTCALL2K                       ASSERT R0 K4 ; [+5]
       18 MOVE                             R2 R0
       19 LOADK                            R3 K4 ["Loaded code is nil"]
       20 GETIMPORT                        R1 K6 [assert]
       22 CALL                             R1 2 0
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K7 ["runCodeAsync"]
       26 DUPTABLE                         R2 K10 [{"id", "targetId"}]
       27 GETTABLEKS                       R3 R0 K8 ["id"]
       29 SETTABLEKS                       R3 R2 K8 ["id"]
       31 GETTABLEKS                       R3 R0 K9 ["targetId"]
       33 SETTABLEKS                       R3 R2 K9 ["targetId"]
       35 CALL                             R1 1 -1
       36 RETURN                           R1 -1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R0 K1 [pcall]
        7 CALL                             R0 1 2
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETTABLEKS                       R2 R1 K2 ["success"]
       11 JUMPIF                           R2 ; [+4]
       12 GETUPVAL                         R2 0
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K3 ["current"]
       16 GETUPVAL                         R2 3
       17 LOADB                            R3 0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K2 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["stopCode"]
       11 DUPTABLE                         R2 K4 [{"id", "targetId"}]
       12 GETTABLEKS                       R3 R0 K2 ["id"]
       14 SETTABLEKS                       R3 R2 K2 ["id"]
       16 GETTABLEKS                       R3 R0 K3 ["targetId"]
       18 SETTABLEKS                       R3 R2 K3 ["targetId"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K3 [{"Generating", "Title", "Running"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["RunCode"]
        3 LOADK                            R4 K0 ["Generating"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Generating"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["RunCode"]
       11 LOADK                            R4 K6 ["CommandCode"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Title"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["RunCode"]
       19 LOADK                            R4 K2 ["Running"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Running"]
       25 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["expanded"]
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 NAMECALL                         R2 R0 K2 ["GetDescendants"]
       12 CALL                             R2 1 3
       13 FORGPREP                         R2
       14 LOADK                            R9 K3 ["ScrollingFrame"]
       15 NAMECALL                         R7 R6 K4 ["IsA"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+2]
       19 MOVE                             R1 R6
       20 JUMP                             ; [+3]
       21 FORGLOOP                         R2 2 ; [-8]
       23 LOADNIL                          R1
       24 MOVE                             R3 R1
       25 JUMPIFNOT                        R3 ; [+4]
       26 LOADK                            R5 K3 ["ScrollingFrame"]
       27 NAMECALL                         R3 R1 K4 ["IsA"]
       29 CALL                             R3 2 1
       30 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       32 LOADK                            R4 K5 ["Code scroller not found"]
       33 GETIMPORT                        R2 K7 [assert]
       35 CALL                             R2 2 0
       36 GETIMPORT                        R2 K10 [UDim2.new]
       38 CALL                             R2 0 1
       39 SETTABLEKS                       R2 R1 K11 ["CanvasSize"]
       41 LOADB                            R2 0
       42 SETTABLEKS                       R2 R1 K12 ["ScrollingEnabled"]
       44 LOADN                            R2 0
       45 SETTABLEKS                       R2 R1 K13 ["ScrollBarThickness"]
       47 LOADN                            R2 1
       48 SETTABLEKS                       R2 R1 K14 ["ScrollBarImageTransparency"]
       50 GETIMPORT                        R2 K18 [Enum.AutomaticSize.XY]
       52 SETTABLEKS                       R2 R1 K16 ["AutomaticSize"]
       54 GETIMPORT                        R2 K20 [UDim2.fromOffset]
       56 LOADN                            R3 1
       57 LOADN                            R4 1
       58 CALL                             R2 2 1
       59 SETTABLEKS                       R2 R1 K21 ["Size"]
       61 LOADK                            R4 K22 ["AbsoluteSize"]
       62 NAMECALL                         R2 R0 K23 ["GetPropertyChangedSignal"]
       64 CALL                             R2 2 1
       65 NEWCLOSURE                       R4 P0
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          UPVAL U4
       70 NAMECALL                         R2 R2 K24 ["Connect"]
       72 CALL                             R2 2 1
       73 LOADK                            R5 K25 ["AbsoluteCanvasSize"]
       74 NAMECALL                         R3 R1 K23 ["GetPropertyChangedSignal"]
       76 CALL                             R3 2 1
       77 NEWCLOSURE                       R5 P1
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          VAL R1
       80 NAMECALL                         R3 R3 K24 ["Connect"]
       82 CALL                             R3 2 1
       83 NEWCLOSURE                       R4 P2
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R3
       86 RETURN                           R4 1

PROTO_13:
        0 DUPTABLE                         R0 K9 [{[1], ["AutomaticSize"], ["CanvasSize"], ["ScrollingDirection"], ["ScrollingEnabled"] = , ["VerticalScrollBarInset"], ["HorizontalScrollBarInset"], ["scrollBarVisibility"]}]
        1 GETIMPORT                        R1 K12 [Enum.AutomaticSize.None]
        3 SETTABLEKS                       R1 R0 K0 ["AutomaticCanvasSize"]
        5 GETIMPORT                        R1 K12 [Enum.AutomaticSize.None]
        7 SETTABLEKS                       R1 R0 K1 ["AutomaticSize"]
        9 GETUPVAL                         R1 0
       10 SETTABLEKS                       R1 R0 K2 ["CanvasSize"]
       12 GETUPVAL                         R1 1
       13 SETTABLEKS                       R1 R0 K3 ["ScrollingDirection"]
       15 GETIMPORT                        R1 K15 [Enum.ScrollBarInset.ScrollBar]
       17 SETTABLEKS                       R1 R0 K6 ["VerticalScrollBarInset"]
       19 GETIMPORT                        R1 K15 [Enum.ScrollBarInset.ScrollBar]
       21 SETTABLEKS                       R1 R0 K7 ["HorizontalScrollBarInset"]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K16 ["Enums"]
       26 GETTABLEKS                       R1 R1 K17 ["Visibility"]
       28 GETTABLEKS                       R1 R1 K18 ["Always"]
       30 SETTABLEKS                       R1 R0 K8 ["scrollBarVisibility"]
       32 RETURN                           R0 1

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useState"]
        9 LOADB                            R3 0
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["get"]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K4 ["useContext"]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K5 ["Context"]
       21 CALL                             R5 1 1
       22 GETTABLEKS                       R7 R0 K6 ["streaming"]
       24 JUMPIFNOT                        R7 ; [+5]
       25 GETTABLEKS                       R6 R0 K6 ["streaming"]
       27 GETTABLEKS                       R6 R6 K7 ["toolUse"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R6
       31 GETTABLEKS                       R8 R0 K7 ["toolUse"]
       33 JUMPIFNOT                        R8 ; [+5]
       34 GETTABLEKS                       R7 R0 K7 ["toolUse"]
       36 GETTABLEKS                       R7 R7 K8 ["input"]
       38 JUMP                             ; [+1]
       39 GETUPVAL                         R7 4
       40 GETTABLEKS                       R8 R7 K9 ["code"]
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R9 R9 K10 ["useMemo"]
       45 NEWCLOSURE                       R10 P0
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R6
       48 CAPTURE                          UPVAL U5
       49 NEWTABLE                         R11 0 2
       51 MOVE                             R12 R6
       52 MOVE                             R13 R8
       53 SETLIST                          R11 R12 2 [1]
       55 CALL                             R9 2 1
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R10 R10 K11 ["useCallback"]
       59 NEWCLOSURE                       R11 P1
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R9
       62 NEWTABLE                         R12 0 2
       64 MOVE                             R13 R4
       65 MOVE                             R14 R9
       66 SETLIST                          R12 R13 2 [1]
       68 CALL                             R10 2 1
       69 GETUPVAL                         R11 1
       70 GETTABLEKS                       R11 R11 K12 ["useRef"]
       72 LOADNIL                          R12
       73 CALL                             R11 1 1
       74 GETUPVAL                         R12 1
       75 GETTABLEKS                       R12 R12 K13 ["useEffect"]
       77 NEWCLOSURE                       R13 P2
       78 CAPTURE                          VAL R11
       79 NEWTABLE                         R14 0 1
       81 MOVE                             R15 R9
       82 SETLIST                          R14 R15 1 [1]
       84 CALL                             R12 2 0
       85 GETUPVAL                         R12 1
       86 GETTABLEKS                       R12 R12 K11 ["useCallback"]
       88 NEWCLOSURE                       R13 P3
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R9
       93 NEWTABLE                         R14 0 2
       95 MOVE                             R15 R5
       96 MOVE                             R16 R9
       97 SETLIST                          R14 R15 2 [1]
       99 CALL                             R12 2 1
      100 GETUPVAL                         R13 1
      101 GETTABLEKS                       R13 R13 K11 ["useCallback"]
      103 NEWCLOSURE                       R14 P4
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R11
      106 NEWTABLE                         R15 0 2
      108 MOVE                             R16 R4
      109 MOVE                             R17 R5
      110 SETLIST                          R15 R16 2 [1]
      112 CALL                             R13 2 1
      113 GETUPVAL                         R14 1
      114 GETTABLEKS                       R14 R14 K10 ["useMemo"]
      116 DUPCLOSURE                       R15 K14 [PROTO_8]
      117 CAPTURE                          UPVAL U6
      118 NEWTABLE                         R16 0 1
      120 GETUPVAL                         R17 6
      121 GETTABLEKS                       R17 R17 K15 ["locale"]
      123 SETLIST                          R16 R17 1 [1]
      125 CALL                             R14 2 1
      126 GETUPVAL                         R15 1
      127 GETTABLEKS                       R15 R15 K16 ["useBinding"]
      129 GETIMPORT                        R16 K19 [UDim2.new]
      131 CALL                             R16 0 -1
      132 CALL                             R15 -1 2
      133 GETUPVAL                         R17 1
      134 GETTABLEKS                       R17 R17 K16 ["useBinding"]
      136 GETIMPORT                        R18 K23 [Enum.ScrollingDirection.XY]
      138 CALL                             R17 1 2
      139 GETUPVAL                         R19 1
      140 GETTABLEKS                       R19 R19 K2 ["useState"]
      142 LOADB                            R20 0
      143 CALL                             R19 1 2
      144 GETUPVAL                         R21 1
      145 GETTABLEKS                       R21 R21 K12 ["useRef"]
      147 LOADNIL                          R22
      148 CALL                             R21 1 1
      149 GETUPVAL                         R22 1
      150 GETTABLEKS                       R22 R22 K13 ["useEffect"]
      152 NEWCLOSURE                       R23 P6
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R20
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R16
      159 NEWTABLE                         R24 0 1
      161 GETTABLEKS                       R25 R0 K24 ["expanded"]
      163 SETLIST                          R24 R25 1 [1]
      165 CALL                             R22 2 0
      166 GETUPVAL                         R22 1
      167 GETTABLEKS                       R22 R22 K10 ["useMemo"]
      169 NEWCLOSURE                       R23 P7
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R17
      172 CAPTURE                          UPVAL U0
      173 NEWTABLE                         R24 0 0
      175 CALL                             R22 2 1
      176 GETTABLEKS                       R23 R0 K7 ["toolUse"]
      178 JUMPIFNOT                        R23 ; [+3]
      179 GETTABLEKS                       R24 R0 K25 ["toolResult"]
      181 NOT                              R23 R24
      182 OR                               R24 R23 R2
      183 GETUPVAL                         R25 7
      184 CALL                             R25 0 1
      185 JUMPIFNOT                        R25 ; [+13]
      186 LOADB                            R25 0
      187 GETTABLEKS                       R26 R0 K7 ["toolUse"]
      189 JUMPIFEQKNIL                     R26 ; [+9]
      191 GETUPVAL                         R25 8
      192 GETTABLEKS                       R25 R25 K26 ["isCloudTool"]
      194 GETTABLEKS                       R26 R0 K7 ["toolUse"]
      196 GETTABLEKS                       R26 R26 K27 ["name"]
      198 CALL                             R25 1 1
      199 GETUPVAL                         R26 9
      200 CALL                             R26 0 1
      201 GETUPVAL                         R27 10
      202 GETUPVAL                         R28 11
      203 GETTABLEKS                       R28 R28 K28 ["Root"]
      205 DUPTABLE                         R29 K32 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      206 GETTABLEKS                       R30 R0 K29 ["LayoutOrder"]
      208 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      210 GETTABLEKS                       R30 R0 K24 ["expanded"]
      212 SETTABLEKS                       R30 R29 K24 ["expanded"]
      214 GETTABLEKS                       R30 R0 K30 ["contentId"]
      216 SETTABLEKS                       R30 R29 K30 ["contentId"]
      218 GETTABLEKS                       R30 R0 K31 ["editThisContent"]
      220 SETTABLEKS                       R30 R29 K31 ["editThisContent"]
      222 DUPTABLE                         R30 K35 [{"Header", "Content"}]
      223 GETUPVAL                         R31 10
      224 GETUPVAL                         R32 11
      225 GETTABLEKS                       R32 R32 K33 ["Header"]
      227 DUPTABLE                         R33 K37 [{"LayoutOrder", "testId"}]
      228 MOVE                             R34 R26
      229 CALL                             R34 0 1
      230 SETTABLEKS                       R34 R33 K29 ["LayoutOrder"]
      232 GETUPVAL                         R34 12
      233 GETTABLEKS                       R34 R34 K38 ["RunCode"]
      235 GETTABLEKS                       R34 R34 K39 ["Expand"]
      237 SETTABLEKS                       R34 R33 K36 ["testId"]
      239 DUPTABLE                         R34 K42 [{"CloudIcon", "Text"}]
      240 MOVE                             R35 R25
      241 JUMPIFNOT                        R35 ; [+41]
      242 GETUPVAL                         R35 10
      243 GETUPVAL                         R36 13
      244 DUPTABLE                         R37 K45 [{"name", "size", "style", "LayoutOrder", "testId"}]
      245 GETUPVAL                         R38 0
      246 GETTABLEKS                       R38 R38 K46 ["Enums"]
      248 GETTABLEKS                       R38 R38 K47 ["IconName"]
      250 GETTABLEKS                       R38 R38 K48 ["Cloud"]
      252 SETTABLEKS                       R38 R37 K27 ["name"]
      254 GETUPVAL                         R38 0
      255 GETTABLEKS                       R38 R38 K46 ["Enums"]
      257 GETTABLEKS                       R38 R38 K49 ["IconSize"]
      259 GETTABLEKS                       R38 R38 K50 ["XSmall"]
      261 SETTABLEKS                       R38 R37 K43 ["size"]
      263 GETTABLEKS                       R38 R1 K51 ["Color"]
      265 GETTABLEKS                       R38 R38 K34 ["Content"]
      267 GETTABLEKS                       R38 R38 K52 ["Muted"]
      269 SETTABLEKS                       R38 R37 K44 ["style"]
      271 MOVE                             R38 R26
      272 CALL                             R38 0 1
      273 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      275 GETUPVAL                         R38 12
      276 GETTABLEKS                       R38 R38 K38 ["RunCode"]
      278 GETTABLEKS                       R38 R38 K40 ["CloudIcon"]
      280 SETTABLEKS                       R38 R37 K36 ["testId"]
      282 CALL                             R35 2 1
      283 SETTABLEKS                       R35 R34 K40 ["CloudIcon"]
      285 GETUPVAL                         R35 10
      286 GETUPVAL                         R36 14
      287 DUPTABLE                         R37 K55 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      288 GETTABLEKS                       R39 R0 K7 ["toolUse"]
      290 JUMPIF                           R39 ; [+3]
      291 GETTABLEKS                       R38 R14 K56 ["Generating"]
      293 JUMP                             ; [+6]
      294 JUMPIFNOT                        R24 ; [+3]
      295 GETTABLEKS                       R38 R14 K57 ["Running"]
      297 JUMP                             ; [+2]
      298 GETTABLEKS                       R38 R14 K58 ["Title"]
      300 SETTABLEKS                       R38 R37 K41 ["Text"]
      302 MOVE                             R38 R26
      303 CALL                             R38 0 1
      304 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      306 DUPTABLE                         R38 K60 [{"Shimmer"}]
      307 GETTABLEKS                       R40 R0 K7 ["toolUse"]
      309 JUMPIFNOT                        R40 ; [+2]
      310 MOVE                             R39 R24
      311 JUMPIFNOT                        R39 ; [+3]
      312 GETUPVAL                         R39 10
      313 GETUPVAL                         R40 15
      314 CALL                             R39 1 1
      315 SETTABLEKS                       R39 R38 K59 ["Shimmer"]
      317 CALL                             R35 3 1
      318 SETTABLEKS                       R35 R34 K41 ["Text"]
      320 CALL                             R31 3 1
      321 SETTABLEKS                       R31 R30 K33 ["Header"]
      323 GETUPVAL                         R31 10
      324 GETUPVAL                         R32 11
      325 GETTABLEKS                       R32 R32 K34 ["Content"]
      327 DUPTABLE                         R33 K62 [{["tag"] = "col fill size-0-0 auto-y radius-small bg-shift-300", ["LayoutOrder"]}]
      328 MOVE                             R34 R26
      329 CALL                             R34 0 1
      330 SETTABLEKS                       R34 R33 K29 ["LayoutOrder"]
      332 DUPTABLE                         R34 K65 [{"Header", "Divider", "CodeView"}]
      333 GETUPVAL                         R35 10
      334 GETUPVAL                         R36 16
      335 DUPTABLE                         R37 K67 [{["tag"] = "row align-x-right gap-none size-full-0 auto-y padding-xsmall", ["LayoutOrder"]}]
      336 MOVE                             R38 R26
      337 CALL                             R38 0 1
      338 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      340 DUPTABLE                         R38 K71 [{"CopyButton", "RunButton", "StopButton"}]
      341 GETTABLEKS                       R39 R0 K25 ["toolResult"]
      343 JUMPIFNOT                        R39 ; [+44]
      344 GETUPVAL                         R39 10
      345 GETUPVAL                         R40 17
      346 DUPTABLE                         R41 K75 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      347 GETUPVAL                         R42 0
      348 GETTABLEKS                       R42 R42 K46 ["Enums"]
      350 GETTABLEKS                       R42 R42 K47 ["IconName"]
      352 GETTABLEKS                       R42 R42 K76 ["TwoStackedSquares"]
      354 SETTABLEKS                       R42 R41 K72 ["icon"]
      356 GETUPVAL                         R42 0
      357 GETTABLEKS                       R42 R42 K46 ["Enums"]
      359 GETTABLEKS                       R42 R42 K77 ["InputSize"]
      361 GETTABLEKS                       R42 R42 K50 ["XSmall"]
      363 SETTABLEKS                       R42 R41 K43 ["size"]
      365 GETUPVAL                         R42 0
      366 GETTABLEKS                       R42 R42 K46 ["Enums"]
      368 GETTABLEKS                       R42 R42 K78 ["ButtonVariant"]
      370 GETTABLEKS                       R42 R42 K79 ["Utility"]
      372 SETTABLEKS                       R42 R41 K73 ["variant"]
      374 SETTABLEKS                       R10 R41 K74 ["onActivated"]
      376 MOVE                             R42 R26
      377 CALL                             R42 0 1
      378 SETTABLEKS                       R42 R41 K29 ["LayoutOrder"]
      380 GETUPVAL                         R42 12
      381 GETTABLEKS                       R42 R42 K38 ["RunCode"]
      383 GETTABLEKS                       R42 R42 K80 ["Copy"]
      385 SETTABLEKS                       R42 R41 K36 ["testId"]
      387 CALL                             R39 2 1
      388 SETTABLEKS                       R39 R38 K68 ["CopyButton"]
      390 NOT                              R39 R25
      391 JUMPIFNOT                        R39 ; [+49]
      392 GETTABLEKS                       R39 R0 K25 ["toolResult"]
      394 JUMPIFNOT                        R39 ; [+46]
      395 NOT                              R39 R24
      396 JUMPIFNOT                        R39 ; [+44]
      397 GETUPVAL                         R39 10
      398 GETUPVAL                         R40 17
      399 DUPTABLE                         R41 K75 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      400 GETUPVAL                         R42 0
      401 GETTABLEKS                       R42 R42 K46 ["Enums"]
      403 GETTABLEKS                       R42 R42 K47 ["IconName"]
      405 GETTABLEKS                       R42 R42 K81 ["PlayLarge"]
      407 SETTABLEKS                       R42 R41 K72 ["icon"]
      409 GETUPVAL                         R42 0
      410 GETTABLEKS                       R42 R42 K46 ["Enums"]
      412 GETTABLEKS                       R42 R42 K77 ["InputSize"]
      414 GETTABLEKS                       R42 R42 K50 ["XSmall"]
      416 SETTABLEKS                       R42 R41 K43 ["size"]
      418 GETUPVAL                         R42 0
      419 GETTABLEKS                       R42 R42 K46 ["Enums"]
      421 GETTABLEKS                       R42 R42 K78 ["ButtonVariant"]
      423 GETTABLEKS                       R42 R42 K79 ["Utility"]
      425 SETTABLEKS                       R42 R41 K73 ["variant"]
      427 SETTABLEKS                       R12 R41 K74 ["onActivated"]
      429 MOVE                             R42 R26
      430 CALL                             R42 0 1
      431 SETTABLEKS                       R42 R41 K29 ["LayoutOrder"]
      433 GETUPVAL                         R42 12
      434 GETTABLEKS                       R42 R42 K38 ["RunCode"]
      436 GETTABLEKS                       R42 R42 K82 ["Run"]
      438 SETTABLEKS                       R42 R41 K36 ["testId"]
      440 CALL                             R39 2 1
      441 SETTABLEKS                       R39 R38 K69 ["RunButton"]
      443 NOT                              R39 R25
      444 JUMPIFNOT                        R39 ; [+49]
      445 GETTABLEKS                       R39 R0 K25 ["toolResult"]
      447 JUMPIFNOT                        R39 ; [+46]
      448 MOVE                             R39 R2
      449 JUMPIFNOT                        R39 ; [+44]
      450 GETUPVAL                         R39 10
      451 GETUPVAL                         R40 17
      452 DUPTABLE                         R41 K75 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      453 GETUPVAL                         R42 0
      454 GETTABLEKS                       R42 R42 K46 ["Enums"]
      456 GETTABLEKS                       R42 R42 K47 ["IconName"]
      458 GETTABLEKS                       R42 R42 K83 ["StopSmall"]
      460 SETTABLEKS                       R42 R41 K72 ["icon"]
      462 GETUPVAL                         R42 0
      463 GETTABLEKS                       R42 R42 K46 ["Enums"]
      465 GETTABLEKS                       R42 R42 K77 ["InputSize"]
      467 GETTABLEKS                       R42 R42 K50 ["XSmall"]
      469 SETTABLEKS                       R42 R41 K43 ["size"]
      471 GETUPVAL                         R42 0
      472 GETTABLEKS                       R42 R42 K46 ["Enums"]
      474 GETTABLEKS                       R42 R42 K78 ["ButtonVariant"]
      476 GETTABLEKS                       R42 R42 K79 ["Utility"]
      478 SETTABLEKS                       R42 R41 K73 ["variant"]
      480 SETTABLEKS                       R13 R41 K74 ["onActivated"]
      482 MOVE                             R42 R26
      483 CALL                             R42 0 1
      484 SETTABLEKS                       R42 R41 K29 ["LayoutOrder"]
      486 GETUPVAL                         R42 12
      487 GETTABLEKS                       R42 R42 K38 ["RunCode"]
      489 GETTABLEKS                       R42 R42 K84 ["Stop"]
      491 SETTABLEKS                       R42 R41 K36 ["testId"]
      493 CALL                             R39 2 1
      494 SETTABLEKS                       R39 R38 K70 ["StopButton"]
      496 CALL                             R35 3 1
      497 SETTABLEKS                       R35 R34 K33 ["Header"]
      499 GETUPVAL                         R35 10
      500 GETUPVAL                         R36 18
      501 DUPTABLE                         R37 K85 [{"LayoutOrder"}]
      502 MOVE                             R38 R26
      503 CALL                             R38 0 1
      504 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      506 CALL                             R35 2 1
      507 SETTABLEKS                       R35 R34 K63 ["Divider"]
      509 GETUPVAL                         R35 10
      510 GETUPVAL                         R36 19
      511 DUPTABLE                         R37 K90 [{"scroll", "layout", "LayoutOrder", "Size", "scrollingFrameRef"}]
      512 SETTABLEKS                       R22 R37 K86 ["scroll"]
      514 GETUPVAL                         R38 20
      515 SETTABLEKS                       R38 R37 K87 ["layout"]
      517 MOVE                             R38 R26
      518 CALL                             R38 0 1
      519 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      521 NEWCLOSURE                       R40 P8
      522 CAPTURE                          VAL R19
      523 CAPTURE                          VAL R17
      524 CAPTURE                          VAL R1
      525 NAMECALL                         R38 R15 K91 ["map"]
      527 CALL                             R38 2 1
      528 SETTABLEKS                       R38 R37 K88 ["Size"]
      530 SETTABLEKS                       R21 R37 K89 ["scrollingFrameRef"]
      532 DUPTABLE                         R38 K93 [{"MarkdownText"}]
      533 GETUPVAL                         R39 10
      534 GETUPVAL                         R40 21
      535 DUPTABLE                         R41 K96 [{"markdown", "messageId"}]
      536 LOADK                            R43 K97 ["```lua\n"]
      537 MOVE                             R44 R9
      538 LOADK                            R45 K98 ["\n```"]
      539 CONCAT                           R42 R43 R45
      540 SETTABLEKS                       R42 R41 K94 ["markdown"]
      542 GETTABLEKS                       R42 R0 K95 ["messageId"]
      544 SETTABLEKS                       R42 R41 K95 ["messageId"]
      546 CALL                             R39 2 1
      547 SETTABLEKS                       R39 R38 K92 ["MarkdownText"]
      549 CALL                             R35 3 1
      550 SETTABLEKS                       R35 R34 K64 ["CodeView"]
      552 CALL                             R31 3 1
      553 SETTABLEKS                       R31 R30 K34 ["Content"]
      555 CALL                             R27 3 -1
      556 RETURN                           R27 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["AssistantHarness"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Guest"]
       25 GETTABLEKS                       R4 R4 K11 ["Environment"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["Actions"]
       36 GETTABLEKS                       R5 R5 K14 ["ExecuteLuauActionsContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K15 ["Remotes"]
       43 GETTABLEKS                       R6 R6 K16 ["ExecuteLuauRemotes"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K8 ["Parent"]
       50 GETTABLEKS                       R7 R7 K17 ["Foundation"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Components"]
       57 GETTABLEKS                       R8 R8 K18 ["MarkdownText"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K19 ["Util"]
       64 GETTABLEKS                       R9 R9 K20 ["OutputParser"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K8 ["Parent"]
       71 GETTABLEKS                       R10 R10 K21 ["React"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K8 ["Parent"]
       78 GETTABLEKS                       R11 R11 K22 ["ReactUtils"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K6 ["Components"]
       85 GETTABLEKS                       R12 R12 K23 ["ShimmerGradient"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K19 ["Util"]
       92 GETTABLEKS                       R13 R13 K24 ["TestIds"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K25 ["Resources"]
       99 GETTABLEKS                       R14 R14 K26 ["Localization"]
      101 GETTABLEKS                       R14 R14 K27 ["Translator"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K28 ["Types"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K29 ["FlagUtils"]
      113 GETTABLEKS                       R16 R16 K30 ["getIsAssistantUseRemoteService"]
      115 CALL                             R15 1 1
      116 GETTABLEKS                       R15 R15 K31 ["get"]
      118 GETTABLEKS                       R16 R2 K32 ["ToolNaming"]
      120 GETTABLEKS                       R17 R6 K33 ["Divider"]
      122 GETTABLEKS                       R18 R6 K34 ["Icon"]
      124 GETTABLEKS                       R19 R6 K35 ["IconButton"]
      126 GETTABLEKS                       R20 R6 K36 ["ScrollView"]
      128 GETTABLEKS                       R21 R6 K37 ["Text"]
      130 GETTABLEKS                       R22 R6 K38 ["View"]
      132 GETTABLEKS                       R23 R10 K39 ["createNextOrder"]
      134 GETTABLEKS                       R24 R9 K40 ["createElement"]
      136 DUPTABLE                         R25 K42 [{"FillDirection"}]
      137 GETIMPORT                        R26 K45 [Enum.FillDirection.Vertical]
      139 SETTABLEKS                       R26 R25 K41 ["FillDirection"]
      141 NEWTABLE                         R26 0 0
      143 DUPCLOSURE                       R27 K46 [PROTO_0]
      144 DUPCLOSURE                       R28 K47 [PROTO_15]
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R26
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R23
      155 CAPTURE                          VAL R24
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R21
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R25
      166 CAPTURE                          VAL R7
      167 DUPTABLE                         R29 K53 [{["Type"] = "RunCode", ["ContentWidget"], ["StreamToolUse"] = True}]
      168 GETTABLEKS                       R30 R9 K54 ["memo"]
      170 MOVE                             R31 R28
      171 CALL                             R30 1 1
      172 SETTABLEKS                       R30 R29 K50 ["ContentWidget"]
      174 RETURN                           R29 1
