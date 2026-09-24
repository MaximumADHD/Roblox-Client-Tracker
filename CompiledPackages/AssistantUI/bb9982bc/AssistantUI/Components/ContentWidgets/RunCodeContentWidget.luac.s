PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantUseMarkdownPackage"]
        3 NOT                              R3 R4
        4 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        6 LOADK                            R4 K1 ["FFlagAssistantUseMarkdownPackage is enabled!"]
        7 GETIMPORT                        R2 K3 [assert]
        9 CALL                             R2 2 0
       10 NAMECALL                         R2 R0 K4 ["GetDescendants"]
       12 CALL                             R2 1 3
       13 FORGPREP                         R2
       14 MOVE                             R9 R1
       15 NAMECALL                         R7 R6 K5 ["HasTag"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+1]
       19 RETURN                           R6 1
       20 FORGLOOP                         R2 2 ; [-7]
       22 LOADNIL                          R2
       23 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantUseMarkdownPackage"]
        3 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        5 LOADK                            R4 K1 ["FFlagAssistantUseMarkdownPackage is not enabled!"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 NAMECALL                         R2 R0 K4 ["GetDescendants"]
       11 CALL                             R2 1 3
       12 FORGPREP                         R2
       13 MOVE                             R9 R1
       14 NAMECALL                         R7 R6 K5 ["IsA"]
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+1]
       18 RETURN                           R6 1
       19 FORGLOOP                         R2 2 ; [-7]
       21 LOADNIL                          R2
       22 RETURN                           R2 1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["copyToClipboard"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+13]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["loadCodeAsync"]
        7 DUPTABLE                         R2 K3 [{"code"}]
        8 GETUPVAL                         R3 2
        9 SETTABLEKS                       R3 R2 K2 ["code"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R0 R1 K4 ["id"]
       14 GETUPVAL                         R2 0
       15 SETTABLEKS                       R0 R2 K0 ["current"]
       17 FASTCALL2K                       ASSERT R0 K5 ; [+5]
       19 MOVE                             R2 R0
       20 LOADK                            R3 K5 ["Loaded code ID is nil"]
       21 GETIMPORT                        R1 K7 [assert]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K8 ["runCodeAsync"]
       27 DUPTABLE                         R2 K9 [{"id"}]
       28 SETTABLEKS                       R0 R2 K4 ["id"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 LOADB                            R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["stopCode"]
       11 DUPTABLE                         R2 K3 [{"id"}]
       12 SETTABLEKS                       R0 R2 K2 ["id"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["expanded"]
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 LOADNIL                          R1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["FFlagAssistantUseMarkdownPackage"]
       14 JUMPIFNOT                        R2 ; [+6]
       15 GETUPVAL                         R2 3
       16 MOVE                             R3 R0
       17 LOADK                            R4 K3 ["ScrollingFrame"]
       18 CALL                             R2 2 1
       19 MOVE                             R1 R2
       20 JUMP                             ; [+20]
       21 GETUPVAL                         R2 4
       22 MOVE                             R3 R0
       23 LOADK                            R4 K4 ["Component-ScrollingFrame"]
       24 CALL                             R2 2 1
       25 JUMPIF                           R2 ; [+2]
       26 CLOSEUPVALS                      R1
       27 RETURN                           R0 0
       28 LOADK                            R5 K3 ["ScrollingFrame"]
       29 NAMECALL                         R3 R2 K5 ["FindFirstChildWhichIsA"]
       31 CALL                             R3 2 1
       32 MOVE                             R1 R3
       33 JUMPIFNOT                        R1 ; [+5]
       34 LOADK                            R5 K3 ["ScrollingFrame"]
       35 NAMECALL                         R3 R1 K6 ["IsA"]
       37 CALL                             R3 2 1
       38 JUMPIF                           R3 ; [+2]
       39 CLOSEUPVALS                      R1
       40 RETURN                           R0 0
       41 MOVE                             R3 R1
       42 JUMPIFNOT                        R3 ; [+4]
       43 LOADK                            R5 K3 ["ScrollingFrame"]
       44 NAMECALL                         R3 R1 K6 ["IsA"]
       46 CALL                             R3 2 1
       47 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       49 LOADK                            R4 K7 ["Code scroller not found"]
       50 GETIMPORT                        R2 K9 [assert]
       52 CALL                             R2 2 0
       53 GETIMPORT                        R2 K12 [UDim2.new]
       55 CALL                             R2 0 1
       56 SETTABLEKS                       R2 R1 K13 ["CanvasSize"]
       58 LOADB                            R2 0
       59 SETTABLEKS                       R2 R1 K14 ["ScrollingEnabled"]
       61 LOADN                            R2 0
       62 SETTABLEKS                       R2 R1 K15 ["ScrollBarThickness"]
       64 LOADN                            R2 1
       65 SETTABLEKS                       R2 R1 K16 ["ScrollBarImageTransparency"]
       67 GETIMPORT                        R2 K20 [Enum.AutomaticSize.XY]
       69 SETTABLEKS                       R2 R1 K18 ["AutomaticSize"]
       71 GETIMPORT                        R2 K22 [UDim2.fromOffset]
       73 LOADN                            R3 1
       74 LOADN                            R4 1
       75 CALL                             R2 2 1
       76 SETTABLEKS                       R2 R1 K23 ["Size"]
       78 LOADK                            R4 K24 ["AbsoluteSize"]
       79 NAMECALL                         R2 R0 K25 ["GetPropertyChangedSignal"]
       81 CALL                             R2 2 1
       82 NEWCLOSURE                       R4 P0
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U6
       86 CAPTURE                          UPVAL U7
       87 NAMECALL                         R2 R2 K26 ["Connect"]
       89 CALL                             R2 2 1
       90 LOADK                            R5 K27 ["AbsoluteCanvasSize"]
       91 NAMECALL                         R3 R1 K25 ["GetPropertyChangedSignal"]
       93 CALL                             R3 2 1
       94 NEWCLOSURE                       R5 P1
       95 CAPTURE                          UPVAL U8
       96 CAPTURE                          REF R1
       97 NAMECALL                         R3 R3 K26 ["Connect"]
       99 CALL                             R3 2 1
      100 NEWCLOSURE                       R4 P2
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R3
      103 CLOSEUPVALS                      R1
      104 RETURN                           R4 1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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
      116 DUPCLOSURE                       R15 K14 [PROTO_9]
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
      155 CAPTURE                          UPVAL U7
      156 CAPTURE                          UPVAL U8
      157 CAPTURE                          UPVAL U9
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R16
      162 NEWTABLE                         R24 0 1
      164 GETTABLEKS                       R25 R0 K24 ["expanded"]
      166 SETLIST                          R24 R25 1 [1]
      168 CALL                             R22 2 0
      169 GETUPVAL                         R22 1
      170 GETTABLEKS                       R22 R22 K10 ["useMemo"]
      172 NEWCLOSURE                       R23 P7
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R17
      175 CAPTURE                          UPVAL U0
      176 NEWTABLE                         R24 0 0
      178 CALL                             R22 2 1
      179 GETTABLEKS                       R23 R0 K7 ["toolUse"]
      181 JUMPIFNOT                        R23 ; [+3]
      182 GETTABLEKS                       R24 R0 K25 ["toolResult"]
      184 NOT                              R23 R24
      185 OR                               R24 R23 R2
      186 GETUPVAL                         R25 10
      187 CALL                             R25 0 1
      188 JUMPIFNOT                        R25 ; [+13]
      189 LOADB                            R25 0
      190 GETTABLEKS                       R26 R0 K7 ["toolUse"]
      192 JUMPIFEQKNIL                     R26 ; [+9]
      194 GETUPVAL                         R25 11
      195 GETTABLEKS                       R25 R25 K26 ["isCloudTool"]
      197 GETTABLEKS                       R26 R0 K7 ["toolUse"]
      199 GETTABLEKS                       R26 R26 K27 ["name"]
      201 CALL                             R25 1 1
      202 GETUPVAL                         R26 12
      203 CALL                             R26 0 1
      204 GETUPVAL                         R27 13
      205 GETUPVAL                         R28 14
      206 GETTABLEKS                       R28 R28 K28 ["Root"]
      208 DUPTABLE                         R29 K32 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      209 GETTABLEKS                       R30 R0 K29 ["LayoutOrder"]
      211 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      213 GETTABLEKS                       R30 R0 K24 ["expanded"]
      215 SETTABLEKS                       R30 R29 K24 ["expanded"]
      217 GETTABLEKS                       R30 R0 K30 ["contentId"]
      219 SETTABLEKS                       R30 R29 K30 ["contentId"]
      221 GETTABLEKS                       R30 R0 K31 ["editThisContent"]
      223 SETTABLEKS                       R30 R29 K31 ["editThisContent"]
      225 DUPTABLE                         R30 K35 [{"Header", "Content"}]
      226 GETUPVAL                         R31 13
      227 GETUPVAL                         R32 14
      228 GETTABLEKS                       R32 R32 K33 ["Header"]
      230 DUPTABLE                         R33 K37 [{"LayoutOrder", "testId"}]
      231 MOVE                             R34 R26
      232 CALL                             R34 0 1
      233 SETTABLEKS                       R34 R33 K29 ["LayoutOrder"]
      235 GETUPVAL                         R34 15
      236 GETTABLEKS                       R34 R34 K38 ["RunCode"]
      238 GETTABLEKS                       R34 R34 K39 ["Expand"]
      240 SETTABLEKS                       R34 R33 K36 ["testId"]
      242 DUPTABLE                         R34 K42 [{"CloudIcon", "Text"}]
      243 MOVE                             R35 R25
      244 JUMPIFNOT                        R35 ; [+41]
      245 GETUPVAL                         R35 13
      246 GETUPVAL                         R36 16
      247 DUPTABLE                         R37 K45 [{"name", "size", "style", "LayoutOrder", "testId"}]
      248 GETUPVAL                         R38 0
      249 GETTABLEKS                       R38 R38 K46 ["Enums"]
      251 GETTABLEKS                       R38 R38 K47 ["IconName"]
      253 GETTABLEKS                       R38 R38 K48 ["Cloud"]
      255 SETTABLEKS                       R38 R37 K27 ["name"]
      257 GETUPVAL                         R38 0
      258 GETTABLEKS                       R38 R38 K46 ["Enums"]
      260 GETTABLEKS                       R38 R38 K49 ["IconSize"]
      262 GETTABLEKS                       R38 R38 K50 ["XSmall"]
      264 SETTABLEKS                       R38 R37 K43 ["size"]
      266 GETTABLEKS                       R38 R1 K51 ["Color"]
      268 GETTABLEKS                       R38 R38 K34 ["Content"]
      270 GETTABLEKS                       R38 R38 K52 ["Muted"]
      272 SETTABLEKS                       R38 R37 K44 ["style"]
      274 MOVE                             R38 R26
      275 CALL                             R38 0 1
      276 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      278 GETUPVAL                         R38 15
      279 GETTABLEKS                       R38 R38 K38 ["RunCode"]
      281 GETTABLEKS                       R38 R38 K40 ["CloudIcon"]
      283 SETTABLEKS                       R38 R37 K36 ["testId"]
      285 CALL                             R35 2 1
      286 SETTABLEKS                       R35 R34 K40 ["CloudIcon"]
      288 GETUPVAL                         R35 13
      289 GETUPVAL                         R36 17
      290 DUPTABLE                         R37 K55 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      291 GETTABLEKS                       R39 R0 K7 ["toolUse"]
      293 JUMPIF                           R39 ; [+3]
      294 GETTABLEKS                       R38 R14 K56 ["Generating"]
      296 JUMP                             ; [+6]
      297 JUMPIFNOT                        R24 ; [+3]
      298 GETTABLEKS                       R38 R14 K57 ["Running"]
      300 JUMP                             ; [+2]
      301 GETTABLEKS                       R38 R14 K58 ["Title"]
      303 SETTABLEKS                       R38 R37 K41 ["Text"]
      305 MOVE                             R38 R26
      306 CALL                             R38 0 1
      307 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      309 DUPTABLE                         R38 K60 [{"Shimmer"}]
      310 GETTABLEKS                       R40 R0 K7 ["toolUse"]
      312 JUMPIFNOT                        R40 ; [+2]
      313 MOVE                             R39 R24
      314 JUMPIFNOT                        R39 ; [+3]
      315 GETUPVAL                         R39 13
      316 GETUPVAL                         R40 18
      317 CALL                             R39 1 1
      318 SETTABLEKS                       R39 R38 K59 ["Shimmer"]
      320 CALL                             R35 3 1
      321 SETTABLEKS                       R35 R34 K41 ["Text"]
      323 CALL                             R31 3 1
      324 SETTABLEKS                       R31 R30 K33 ["Header"]
      326 GETUPVAL                         R31 13
      327 GETUPVAL                         R32 14
      328 GETTABLEKS                       R32 R32 K34 ["Content"]
      330 DUPTABLE                         R33 K62 [{["tag"] = "col fill size-0-0 auto-y radius-small bg-shift-300", ["LayoutOrder"]}]
      331 MOVE                             R34 R26
      332 CALL                             R34 0 1
      333 SETTABLEKS                       R34 R33 K29 ["LayoutOrder"]
      335 DUPTABLE                         R34 K65 [{"Header", "Divider", "CodeView"}]
      336 GETUPVAL                         R35 13
      337 GETUPVAL                         R36 19
      338 DUPTABLE                         R37 K67 [{["tag"] = "row align-x-right gap-none size-full-0 auto-y padding-xsmall", ["LayoutOrder"]}]
      339 MOVE                             R38 R26
      340 CALL                             R38 0 1
      341 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      343 DUPTABLE                         R38 K71 [{"CopyButton", "RunButton", "StopButton"}]
      344 GETTABLEKS                       R39 R0 K25 ["toolResult"]
      346 JUMPIFNOT                        R39 ; [+44]
      347 GETUPVAL                         R39 13
      348 GETUPVAL                         R40 20
      349 DUPTABLE                         R41 K75 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      350 GETUPVAL                         R42 0
      351 GETTABLEKS                       R42 R42 K46 ["Enums"]
      353 GETTABLEKS                       R42 R42 K47 ["IconName"]
      355 GETTABLEKS                       R42 R42 K76 ["TwoStackedSquares"]
      357 SETTABLEKS                       R42 R41 K72 ["icon"]
      359 GETUPVAL                         R42 0
      360 GETTABLEKS                       R42 R42 K46 ["Enums"]
      362 GETTABLEKS                       R42 R42 K77 ["InputSize"]
      364 GETTABLEKS                       R42 R42 K50 ["XSmall"]
      366 SETTABLEKS                       R42 R41 K43 ["size"]
      368 GETUPVAL                         R42 0
      369 GETTABLEKS                       R42 R42 K46 ["Enums"]
      371 GETTABLEKS                       R42 R42 K78 ["ButtonVariant"]
      373 GETTABLEKS                       R42 R42 K79 ["Utility"]
      375 SETTABLEKS                       R42 R41 K73 ["variant"]
      377 SETTABLEKS                       R10 R41 K74 ["onActivated"]
      379 MOVE                             R42 R26
      380 CALL                             R42 0 1
      381 SETTABLEKS                       R42 R41 K29 ["LayoutOrder"]
      383 GETUPVAL                         R42 15
      384 GETTABLEKS                       R42 R42 K38 ["RunCode"]
      386 GETTABLEKS                       R42 R42 K80 ["Copy"]
      388 SETTABLEKS                       R42 R41 K36 ["testId"]
      390 CALL                             R39 2 1
      391 SETTABLEKS                       R39 R38 K68 ["CopyButton"]
      393 NOT                              R39 R25
      394 JUMPIFNOT                        R39 ; [+49]
      395 GETTABLEKS                       R39 R0 K25 ["toolResult"]
      397 JUMPIFNOT                        R39 ; [+46]
      398 NOT                              R39 R24
      399 JUMPIFNOT                        R39 ; [+44]
      400 GETUPVAL                         R39 13
      401 GETUPVAL                         R40 20
      402 DUPTABLE                         R41 K75 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      403 GETUPVAL                         R42 0
      404 GETTABLEKS                       R42 R42 K46 ["Enums"]
      406 GETTABLEKS                       R42 R42 K47 ["IconName"]
      408 GETTABLEKS                       R42 R42 K81 ["PlayLarge"]
      410 SETTABLEKS                       R42 R41 K72 ["icon"]
      412 GETUPVAL                         R42 0
      413 GETTABLEKS                       R42 R42 K46 ["Enums"]
      415 GETTABLEKS                       R42 R42 K77 ["InputSize"]
      417 GETTABLEKS                       R42 R42 K50 ["XSmall"]
      419 SETTABLEKS                       R42 R41 K43 ["size"]
      421 GETUPVAL                         R42 0
      422 GETTABLEKS                       R42 R42 K46 ["Enums"]
      424 GETTABLEKS                       R42 R42 K78 ["ButtonVariant"]
      426 GETTABLEKS                       R42 R42 K79 ["Utility"]
      428 SETTABLEKS                       R42 R41 K73 ["variant"]
      430 SETTABLEKS                       R12 R41 K74 ["onActivated"]
      432 MOVE                             R42 R26
      433 CALL                             R42 0 1
      434 SETTABLEKS                       R42 R41 K29 ["LayoutOrder"]
      436 GETUPVAL                         R42 15
      437 GETTABLEKS                       R42 R42 K38 ["RunCode"]
      439 GETTABLEKS                       R42 R42 K82 ["Run"]
      441 SETTABLEKS                       R42 R41 K36 ["testId"]
      443 CALL                             R39 2 1
      444 SETTABLEKS                       R39 R38 K69 ["RunButton"]
      446 NOT                              R39 R25
      447 JUMPIFNOT                        R39 ; [+49]
      448 GETTABLEKS                       R39 R0 K25 ["toolResult"]
      450 JUMPIFNOT                        R39 ; [+46]
      451 MOVE                             R39 R2
      452 JUMPIFNOT                        R39 ; [+44]
      453 GETUPVAL                         R39 13
      454 GETUPVAL                         R40 20
      455 DUPTABLE                         R41 K75 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      456 GETUPVAL                         R42 0
      457 GETTABLEKS                       R42 R42 K46 ["Enums"]
      459 GETTABLEKS                       R42 R42 K47 ["IconName"]
      461 GETTABLEKS                       R42 R42 K83 ["StopSmall"]
      463 SETTABLEKS                       R42 R41 K72 ["icon"]
      465 GETUPVAL                         R42 0
      466 GETTABLEKS                       R42 R42 K46 ["Enums"]
      468 GETTABLEKS                       R42 R42 K77 ["InputSize"]
      470 GETTABLEKS                       R42 R42 K50 ["XSmall"]
      472 SETTABLEKS                       R42 R41 K43 ["size"]
      474 GETUPVAL                         R42 0
      475 GETTABLEKS                       R42 R42 K46 ["Enums"]
      477 GETTABLEKS                       R42 R42 K78 ["ButtonVariant"]
      479 GETTABLEKS                       R42 R42 K79 ["Utility"]
      481 SETTABLEKS                       R42 R41 K73 ["variant"]
      483 SETTABLEKS                       R13 R41 K74 ["onActivated"]
      485 MOVE                             R42 R26
      486 CALL                             R42 0 1
      487 SETTABLEKS                       R42 R41 K29 ["LayoutOrder"]
      489 GETUPVAL                         R42 15
      490 GETTABLEKS                       R42 R42 K38 ["RunCode"]
      492 GETTABLEKS                       R42 R42 K84 ["Stop"]
      494 SETTABLEKS                       R42 R41 K36 ["testId"]
      496 CALL                             R39 2 1
      497 SETTABLEKS                       R39 R38 K70 ["StopButton"]
      499 CALL                             R35 3 1
      500 SETTABLEKS                       R35 R34 K33 ["Header"]
      502 GETUPVAL                         R35 13
      503 GETUPVAL                         R36 21
      504 DUPTABLE                         R37 K85 [{"LayoutOrder"}]
      505 MOVE                             R38 R26
      506 CALL                             R38 0 1
      507 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      509 CALL                             R35 2 1
      510 SETTABLEKS                       R35 R34 K63 ["Divider"]
      512 GETUPVAL                         R35 13
      513 GETUPVAL                         R36 22
      514 DUPTABLE                         R37 K90 [{"scroll", "layout", "LayoutOrder", "Size", "scrollingFrameRef"}]
      515 SETTABLEKS                       R22 R37 K86 ["scroll"]
      517 GETUPVAL                         R38 23
      518 SETTABLEKS                       R38 R37 K87 ["layout"]
      520 MOVE                             R38 R26
      521 CALL                             R38 0 1
      522 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      524 NEWCLOSURE                       R40 P8
      525 CAPTURE                          VAL R19
      526 CAPTURE                          VAL R17
      527 CAPTURE                          VAL R1
      528 NAMECALL                         R38 R15 K91 ["map"]
      530 CALL                             R38 2 1
      531 SETTABLEKS                       R38 R37 K88 ["Size"]
      533 SETTABLEKS                       R21 R37 K89 ["scrollingFrameRef"]
      535 DUPTABLE                         R38 K93 [{"MarkdownText"}]
      536 GETUPVAL                         R39 13
      537 GETUPVAL                         R40 24
      538 DUPTABLE                         R41 K96 [{"markdown", "messageId"}]
      539 LOADK                            R43 K97 ["```lua\n"]
      540 MOVE                             R44 R9
      541 LOADK                            R45 K98 ["\n```"]
      542 CONCAT                           R42 R43 R45
      543 SETTABLEKS                       R42 R41 K94 ["markdown"]
      545 GETTABLEKS                       R42 R0 K95 ["messageId"]
      547 SETTABLEKS                       R42 R41 K95 ["messageId"]
      549 CALL                             R39 2 1
      550 SETTABLEKS                       R39 R38 K92 ["MarkdownText"]
      552 CALL                             R35 3 1
      553 SETTABLEKS                       R35 R34 K64 ["CodeView"]
      555 CALL                             R31 3 1
      556 SETTABLEKS                       R31 R30 K34 ["Content"]
      558 CALL                             R27 3 -1
      559 RETURN                           R27 -1

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
       41 GETTABLEKS                       R6 R0 K15 ["Flags"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Parent"]
       48 GETTABLEKS                       R7 R7 K16 ["Foundation"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K17 ["MarkdownText"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K18 ["Util"]
       62 GETTABLEKS                       R9 R9 K19 ["OutputParser"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K8 ["Parent"]
       69 GETTABLEKS                       R10 R10 K20 ["React"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K8 ["Parent"]
       76 GETTABLEKS                       R11 R11 K21 ["ReactUtils"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K6 ["Components"]
       83 GETTABLEKS                       R12 R12 K22 ["ShimmerGradient"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K18 ["Util"]
       90 GETTABLEKS                       R13 R13 K23 ["TestIds"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K24 ["Resources"]
       97 GETTABLEKS                       R14 R14 K25 ["Localization"]
       99 GETTABLEKS                       R14 R14 K26 ["Translator"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K27 ["Types"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K28 ["FlagUtils"]
      111 GETTABLEKS                       R16 R16 K29 ["getIsAssistantUseRemoteService"]
      113 CALL                             R15 1 1
      114 GETTABLEKS                       R15 R15 K30 ["get"]
      116 GETTABLEKS                       R16 R2 K31 ["ToolNaming"]
      118 GETTABLEKS                       R17 R6 K32 ["Divider"]
      120 GETTABLEKS                       R18 R6 K33 ["Icon"]
      122 GETTABLEKS                       R19 R6 K34 ["IconButton"]
      124 GETTABLEKS                       R20 R6 K35 ["ScrollView"]
      126 GETTABLEKS                       R21 R6 K36 ["Text"]
      128 GETTABLEKS                       R22 R6 K37 ["View"]
      130 GETTABLEKS                       R23 R10 K38 ["createNextOrder"]
      132 GETTABLEKS                       R24 R9 K39 ["createElement"]
      134 DUPTABLE                         R25 K41 [{"FillDirection"}]
      135 GETIMPORT                        R26 K44 [Enum.FillDirection.Vertical]
      137 SETTABLEKS                       R26 R25 K40 ["FillDirection"]
      139 NEWTABLE                         R26 0 0
      141 DUPCLOSURE                       R27 K45 [PROTO_0]
      142 CAPTURE                          VAL R5
      143 DUPCLOSURE                       R28 K46 [PROTO_1]
      144 CAPTURE                          VAL R5
      145 DUPCLOSURE                       R29 K47 [PROTO_16]
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R26
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R28
      155 CAPTURE                          VAL R27
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R23
      159 CAPTURE                          VAL R24
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R21
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R22
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R25
      170 CAPTURE                          VAL R7
      171 DUPTABLE                         R30 K53 [{["Type"] = "RunCode", ["ContentWidget"], ["StreamToolUse"] = True}]
      172 GETTABLEKS                       R31 R9 K54 ["memo"]
      174 MOVE                             R32 R29
      175 CALL                             R31 1 1
      176 SETTABLEKS                       R31 R30 K50 ["ContentWidget"]
      178 RETURN                           R30 1
