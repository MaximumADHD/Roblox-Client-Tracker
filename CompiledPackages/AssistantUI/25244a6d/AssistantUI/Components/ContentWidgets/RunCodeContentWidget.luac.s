PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["FFlagMCPAssistantUseNewMarkdown"]
        3 NOT                              R3 R4
        4 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        6 LOADK                            R4 K1 ["FFlagMCPAssistantUseNewMarkdown is enabled!"]
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
        1 GETTABLEKS                       R3 R3 K0 ["FFlagMCPAssistantUseNewMarkdown"]
        3 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        5 LOADK                            R4 K1 ["FFlagMCPAssistantUseNewMarkdown is not enabled!"]
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
       12 GETTABLEKS                       R2 R2 K2 ["FFlagMCPAssistantUseNewMarkdown"]
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
        6 GETTABLEKS                       R2 R1 K2 ["Config"]
        8 GETTABLEKS                       R2 R2 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R2 K4 ["Name"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K5 ["useState"]
       15 LOADB                            R4 0
       16 CALL                             R3 1 2
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K6 ["get"]
       20 CALL                             R5 0 1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K7 ["useContext"]
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K8 ["Context"]
       27 CALL                             R6 1 1
       28 GETTABLEKS                       R8 R0 K9 ["streaming"]
       30 JUMPIFNOT                        R8 ; [+5]
       31 GETTABLEKS                       R7 R0 K9 ["streaming"]
       33 GETTABLEKS                       R7 R7 K10 ["toolUse"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R7
       37 GETTABLEKS                       R9 R0 K10 ["toolUse"]
       39 JUMPIFNOT                        R9 ; [+5]
       40 GETTABLEKS                       R8 R0 K10 ["toolUse"]
       42 GETTABLEKS                       R8 R8 K11 ["input"]
       44 JUMP                             ; [+1]
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R9 R8 K12 ["code"]
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K13 ["useMemo"]
       51 NEWCLOSURE                       R11 P0
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R7
       54 CAPTURE                          UPVAL U5
       55 NEWTABLE                         R12 0 2
       57 MOVE                             R13 R7
       58 MOVE                             R14 R9
       59 SETLIST                          R12 R13 2 [1]
       61 CALL                             R10 2 1
       62 GETUPVAL                         R11 1
       63 GETTABLEKS                       R11 R11 K14 ["useCallback"]
       65 NEWCLOSURE                       R12 P1
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R10
       68 NEWTABLE                         R13 0 2
       70 MOVE                             R14 R5
       71 MOVE                             R15 R10
       72 SETLIST                          R13 R14 2 [1]
       74 CALL                             R11 2 1
       75 GETUPVAL                         R12 1
       76 GETTABLEKS                       R12 R12 K15 ["useRef"]
       78 LOADNIL                          R13
       79 CALL                             R12 1 1
       80 GETUPVAL                         R13 1
       81 GETTABLEKS                       R13 R13 K16 ["useEffect"]
       83 NEWCLOSURE                       R14 P2
       84 CAPTURE                          VAL R12
       85 NEWTABLE                         R15 0 1
       87 MOVE                             R16 R10
       88 SETLIST                          R15 R16 1 [1]
       90 CALL                             R13 2 0
       91 GETUPVAL                         R13 1
       92 GETTABLEKS                       R13 R13 K14 ["useCallback"]
       94 NEWCLOSURE                       R14 P3
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R10
       99 NEWTABLE                         R15 0 2
      101 MOVE                             R16 R6
      102 MOVE                             R17 R10
      103 SETLIST                          R15 R16 2 [1]
      105 CALL                             R13 2 1
      106 GETUPVAL                         R14 1
      107 GETTABLEKS                       R14 R14 K14 ["useCallback"]
      109 NEWCLOSURE                       R15 P4
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R12
      112 NEWTABLE                         R16 0 2
      114 MOVE                             R17 R5
      115 MOVE                             R18 R6
      116 SETLIST                          R16 R17 2 [1]
      118 CALL                             R14 2 1
      119 GETUPVAL                         R15 1
      120 GETTABLEKS                       R15 R15 K13 ["useMemo"]
      122 DUPCLOSURE                       R16 K17 [PROTO_9]
      123 CAPTURE                          UPVAL U6
      124 NEWTABLE                         R17 0 1
      126 GETUPVAL                         R18 6
      127 GETTABLEKS                       R18 R18 K18 ["locale"]
      129 SETLIST                          R17 R18 1 [1]
      131 CALL                             R15 2 1
      132 GETUPVAL                         R16 1
      133 GETTABLEKS                       R16 R16 K19 ["useBinding"]
      135 GETIMPORT                        R17 K22 [UDim2.new]
      137 CALL                             R17 0 -1
      138 CALL                             R16 -1 2
      139 GETUPVAL                         R18 1
      140 GETTABLEKS                       R18 R18 K19 ["useBinding"]
      142 GETIMPORT                        R19 K26 [Enum.ScrollingDirection.XY]
      144 CALL                             R18 1 2
      145 GETUPVAL                         R20 1
      146 GETTABLEKS                       R20 R20 K5 ["useState"]
      148 LOADB                            R21 0
      149 CALL                             R20 1 2
      150 GETUPVAL                         R22 1
      151 GETTABLEKS                       R22 R22 K15 ["useRef"]
      153 LOADNIL                          R23
      154 CALL                             R22 1 1
      155 GETUPVAL                         R23 1
      156 GETTABLEKS                       R23 R23 K16 ["useEffect"]
      158 NEWCLOSURE                       R24 P6
      159 CAPTURE                          VAL R22
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U7
      162 CAPTURE                          UPVAL U8
      163 CAPTURE                          UPVAL U9
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R21
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R17
      168 NEWTABLE                         R25 0 1
      170 GETTABLEKS                       R26 R0 K27 ["expanded"]
      172 SETLIST                          R25 R26 1 [1]
      174 CALL                             R23 2 0
      175 GETUPVAL                         R23 1
      176 GETTABLEKS                       R23 R23 K13 ["useMemo"]
      178 NEWCLOSURE                       R24 P7
      179 CAPTURE                          VAL R16
      180 CAPTURE                          VAL R18
      181 CAPTURE                          UPVAL U0
      182 NEWTABLE                         R25 0 0
      184 CALL                             R23 2 1
      185 GETTABLEKS                       R24 R0 K10 ["toolUse"]
      187 JUMPIFNOT                        R24 ; [+3]
      188 GETTABLEKS                       R25 R0 K28 ["toolResult"]
      190 NOT                              R24 R25
      191 OR                               R25 R24 R3
      192 GETUPVAL                         R26 7
      193 GETTABLEKS                       R26 R26 K29 ["FFlagAssistantUseRemoteService"]
      195 JUMPIFNOT                        R26 ; [+13]
      196 LOADB                            R26 0
      197 GETTABLEKS                       R27 R0 K10 ["toolUse"]
      199 JUMPIFEQKNIL                     R27 ; [+9]
      201 GETUPVAL                         R26 10
      202 GETTABLEKS                       R26 R26 K30 ["isCloudTool"]
      204 GETTABLEKS                       R27 R0 K10 ["toolUse"]
      206 GETTABLEKS                       R27 R27 K31 ["name"]
      208 CALL                             R26 1 1
      209 GETUPVAL                         R27 11
      210 CALL                             R27 0 1
      211 GETUPVAL                         R28 12
      212 GETUPVAL                         R29 13
      213 GETTABLEKS                       R29 R29 K32 ["Root"]
      215 DUPTABLE                         R30 K36 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      216 GETTABLEKS                       R31 R0 K33 ["LayoutOrder"]
      218 SETTABLEKS                       R31 R30 K33 ["LayoutOrder"]
      220 GETTABLEKS                       R31 R0 K27 ["expanded"]
      222 SETTABLEKS                       R31 R30 K27 ["expanded"]
      224 GETTABLEKS                       R31 R0 K34 ["contentId"]
      226 SETTABLEKS                       R31 R30 K34 ["contentId"]
      228 GETTABLEKS                       R31 R0 K35 ["editThisContent"]
      230 SETTABLEKS                       R31 R30 K35 ["editThisContent"]
      232 DUPTABLE                         R31 K39 [{"Header", "Content"}]
      233 GETUPVAL                         R32 12
      234 GETUPVAL                         R33 13
      235 GETTABLEKS                       R33 R33 K37 ["Header"]
      237 DUPTABLE                         R34 K41 [{"LayoutOrder", "testId"}]
      238 MOVE                             R35 R27
      239 CALL                             R35 0 1
      240 SETTABLEKS                       R35 R34 K33 ["LayoutOrder"]
      242 GETUPVAL                         R35 14
      243 GETTABLEKS                       R35 R35 K42 ["RunCode"]
      245 GETTABLEKS                       R35 R35 K43 ["Expand"]
      247 SETTABLEKS                       R35 R34 K40 ["testId"]
      249 DUPTABLE                         R35 K46 [{"CloudIcon", "Text"}]
      250 MOVE                             R36 R26
      251 JUMPIFNOT                        R36 ; [+41]
      252 GETUPVAL                         R36 12
      253 GETUPVAL                         R37 15
      254 DUPTABLE                         R38 K49 [{"name", "size", "style", "LayoutOrder", "testId"}]
      255 GETUPVAL                         R39 0
      256 GETTABLEKS                       R39 R39 K50 ["Enums"]
      258 GETTABLEKS                       R39 R39 K51 ["IconName"]
      260 GETTABLEKS                       R39 R39 K52 ["Cloud"]
      262 SETTABLEKS                       R39 R38 K31 ["name"]
      264 GETUPVAL                         R39 0
      265 GETTABLEKS                       R39 R39 K50 ["Enums"]
      267 GETTABLEKS                       R39 R39 K53 ["IconSize"]
      269 GETTABLEKS                       R39 R39 K54 ["XSmall"]
      271 SETTABLEKS                       R39 R38 K47 ["size"]
      273 GETTABLEKS                       R39 R1 K55 ["Color"]
      275 GETTABLEKS                       R39 R39 K38 ["Content"]
      277 GETTABLEKS                       R39 R39 K56 ["Muted"]
      279 SETTABLEKS                       R39 R38 K48 ["style"]
      281 MOVE                             R39 R27
      282 CALL                             R39 0 1
      283 SETTABLEKS                       R39 R38 K33 ["LayoutOrder"]
      285 GETUPVAL                         R39 14
      286 GETTABLEKS                       R39 R39 K42 ["RunCode"]
      288 GETTABLEKS                       R39 R39 K44 ["CloudIcon"]
      290 SETTABLEKS                       R39 R38 K40 ["testId"]
      292 CALL                             R36 2 1
      293 SETTABLEKS                       R36 R35 K44 ["CloudIcon"]
      295 GETUPVAL                         R36 12
      296 GETUPVAL                         R37 16
      297 DUPTABLE                         R38 K59 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      298 GETTABLEKS                       R40 R0 K10 ["toolUse"]
      300 JUMPIF                           R40 ; [+3]
      301 GETTABLEKS                       R39 R15 K60 ["Generating"]
      303 JUMP                             ; [+6]
      304 JUMPIFNOT                        R25 ; [+3]
      305 GETTABLEKS                       R39 R15 K61 ["Running"]
      307 JUMP                             ; [+2]
      308 GETTABLEKS                       R39 R15 K62 ["Title"]
      310 SETTABLEKS                       R39 R38 K45 ["Text"]
      312 MOVE                             R39 R27
      313 CALL                             R39 0 1
      314 SETTABLEKS                       R39 R38 K33 ["LayoutOrder"]
      316 DUPTABLE                         R39 K64 [{"Shimmer"}]
      317 GETTABLEKS                       R41 R0 K10 ["toolUse"]
      319 JUMPIFNOT                        R41 ; [+2]
      320 MOVE                             R40 R25
      321 JUMPIFNOT                        R40 ; [+3]
      322 GETUPVAL                         R40 12
      323 GETUPVAL                         R41 17
      324 CALL                             R40 1 1
      325 SETTABLEKS                       R40 R39 K63 ["Shimmer"]
      327 CALL                             R36 3 1
      328 SETTABLEKS                       R36 R35 K45 ["Text"]
      330 CALL                             R32 3 1
      331 SETTABLEKS                       R32 R31 K37 ["Header"]
      333 GETUPVAL                         R32 12
      334 GETUPVAL                         R33 13
      335 GETTABLEKS                       R33 R33 K38 ["Content"]
      337 DUPTABLE                         R34 K66 [{["tag"] = "col fill size-0-0 auto-y radius-small bg-shift-300", ["LayoutOrder"]}]
      338 MOVE                             R35 R27
      339 CALL                             R35 0 1
      340 SETTABLEKS                       R35 R34 K33 ["LayoutOrder"]
      342 DUPTABLE                         R35 K69 [{"Header", "Divider", "CodeView"}]
      343 GETUPVAL                         R36 12
      344 GETUPVAL                         R37 18
      345 DUPTABLE                         R38 K71 [{["tag"] = "row align-x-right gap-none size-full-0 auto-y padding-xsmall", ["LayoutOrder"]}]
      346 MOVE                             R39 R27
      347 CALL                             R39 0 1
      348 SETTABLEKS                       R39 R38 K33 ["LayoutOrder"]
      350 DUPTABLE                         R39 K75 [{"CopyButton", "RunButton", "StopButton"}]
      351 GETTABLEKS                       R40 R0 K28 ["toolResult"]
      353 JUMPIFNOT                        R40 ; [+70]
      354 GETUPVAL                         R41 7
      355 GETTABLEKS                       R41 R41 K76 ["FFlagAssistantUseBuilderIcons"]
      357 JUMPIFNOT                        R41 ; [+45]
      358 GETUPVAL                         R40 12
      359 GETUPVAL                         R41 19
      360 DUPTABLE                         R42 K80 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      361 GETUPVAL                         R43 0
      362 GETTABLEKS                       R43 R43 K50 ["Enums"]
      364 GETTABLEKS                       R43 R43 K51 ["IconName"]
      366 GETTABLEKS                       R43 R43 K81 ["TwoStackedSquares"]
      368 SETTABLEKS                       R43 R42 K77 ["icon"]
      370 GETUPVAL                         R43 0
      371 GETTABLEKS                       R43 R43 K50 ["Enums"]
      373 GETTABLEKS                       R43 R43 K82 ["InputSize"]
      375 GETTABLEKS                       R43 R43 K54 ["XSmall"]
      377 SETTABLEKS                       R43 R42 K47 ["size"]
      379 GETUPVAL                         R43 0
      380 GETTABLEKS                       R43 R43 K50 ["Enums"]
      382 GETTABLEKS                       R43 R43 K83 ["ButtonVariant"]
      384 GETTABLEKS                       R43 R43 K84 ["Utility"]
      386 SETTABLEKS                       R43 R42 K78 ["variant"]
      388 SETTABLEKS                       R11 R42 K79 ["onActivated"]
      390 MOVE                             R43 R27
      391 CALL                             R43 0 1
      392 SETTABLEKS                       R43 R42 K33 ["LayoutOrder"]
      394 GETUPVAL                         R43 14
      395 GETTABLEKS                       R43 R43 K42 ["RunCode"]
      397 GETTABLEKS                       R43 R43 K85 ["Copy"]
      399 SETTABLEKS                       R43 R42 K40 ["testId"]
      401 CALL                             R40 2 1
      402 JUMP                             ; [+21]
      403 GETUPVAL                         R40 12
      404 GETUPVAL                         R41 20
      405 DUPTABLE                         R42 K89 [{["icon"], ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["LayoutOrder"], ["testId"]}]
      406 GETUPVAL                         R44 21
      407 GETTABLE                         R43 R44 R2
      408 SETTABLEKS                       R43 R42 K77 ["icon"]
      410 SETTABLEKS                       R11 R42 K79 ["onActivated"]
      412 MOVE                             R43 R27
      413 CALL                             R43 0 1
      414 SETTABLEKS                       R43 R42 K33 ["LayoutOrder"]
      416 GETUPVAL                         R43 14
      417 GETTABLEKS                       R43 R43 K42 ["RunCode"]
      419 GETTABLEKS                       R43 R43 K85 ["Copy"]
      421 SETTABLEKS                       R43 R42 K40 ["testId"]
      423 CALL                             R40 2 1
      424 SETTABLEKS                       R40 R39 K72 ["CopyButton"]
      426 NOT                              R40 R26
      427 JUMPIFNOT                        R40 ; [+71]
      428 GETTABLEKS                       R40 R0 K28 ["toolResult"]
      430 JUMPIFNOT                        R40 ; [+68]
      431 NOT                              R40 R25
      432 JUMPIFNOT                        R40 ; [+66]
      433 GETUPVAL                         R41 7
      434 GETTABLEKS                       R41 R41 K76 ["FFlagAssistantUseBuilderIcons"]
      436 JUMPIFNOT                        R41 ; [+45]
      437 GETUPVAL                         R40 12
      438 GETUPVAL                         R41 19
      439 DUPTABLE                         R42 K80 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      440 GETUPVAL                         R43 0
      441 GETTABLEKS                       R43 R43 K50 ["Enums"]
      443 GETTABLEKS                       R43 R43 K51 ["IconName"]
      445 GETTABLEKS                       R43 R43 K90 ["PlayLarge"]
      447 SETTABLEKS                       R43 R42 K77 ["icon"]
      449 GETUPVAL                         R43 0
      450 GETTABLEKS                       R43 R43 K50 ["Enums"]
      452 GETTABLEKS                       R43 R43 K82 ["InputSize"]
      454 GETTABLEKS                       R43 R43 K54 ["XSmall"]
      456 SETTABLEKS                       R43 R42 K47 ["size"]
      458 GETUPVAL                         R43 0
      459 GETTABLEKS                       R43 R43 K50 ["Enums"]
      461 GETTABLEKS                       R43 R43 K83 ["ButtonVariant"]
      463 GETTABLEKS                       R43 R43 K84 ["Utility"]
      465 SETTABLEKS                       R43 R42 K78 ["variant"]
      467 SETTABLEKS                       R13 R42 K79 ["onActivated"]
      469 MOVE                             R43 R27
      470 CALL                             R43 0 1
      471 SETTABLEKS                       R43 R42 K33 ["LayoutOrder"]
      473 GETUPVAL                         R43 14
      474 GETTABLEKS                       R43 R43 K42 ["RunCode"]
      476 GETTABLEKS                       R43 R43 K91 ["Run"]
      478 SETTABLEKS                       R43 R42 K40 ["testId"]
      480 CALL                             R40 2 1
      481 JUMP                             ; [+17]
      482 GETUPVAL                         R40 12
      483 GETUPVAL                         R41 20
      484 DUPTABLE                         R42 K93 [{["icon"] = "icons/controls/media-play-small", ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["LayoutOrder"], ["testId"]}]
      485 SETTABLEKS                       R13 R42 K79 ["onActivated"]
      487 MOVE                             R43 R27
      488 CALL                             R43 0 1
      489 SETTABLEKS                       R43 R42 K33 ["LayoutOrder"]
      491 GETUPVAL                         R43 14
      492 GETTABLEKS                       R43 R43 K42 ["RunCode"]
      494 GETTABLEKS                       R43 R43 K91 ["Run"]
      496 SETTABLEKS                       R43 R42 K40 ["testId"]
      498 CALL                             R40 2 1
      499 SETTABLEKS                       R40 R39 K73 ["RunButton"]
      501 NOT                              R40 R26
      502 JUMPIFNOT                        R40 ; [+71]
      503 GETTABLEKS                       R40 R0 K28 ["toolResult"]
      505 JUMPIFNOT                        R40 ; [+68]
      506 MOVE                             R40 R3
      507 JUMPIFNOT                        R40 ; [+66]
      508 GETUPVAL                         R41 7
      509 GETTABLEKS                       R41 R41 K76 ["FFlagAssistantUseBuilderIcons"]
      511 JUMPIFNOT                        R41 ; [+45]
      512 GETUPVAL                         R40 12
      513 GETUPVAL                         R41 19
      514 DUPTABLE                         R42 K80 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      515 GETUPVAL                         R43 0
      516 GETTABLEKS                       R43 R43 K50 ["Enums"]
      518 GETTABLEKS                       R43 R43 K51 ["IconName"]
      520 GETTABLEKS                       R43 R43 K94 ["StopSmall"]
      522 SETTABLEKS                       R43 R42 K77 ["icon"]
      524 GETUPVAL                         R43 0
      525 GETTABLEKS                       R43 R43 K50 ["Enums"]
      527 GETTABLEKS                       R43 R43 K82 ["InputSize"]
      529 GETTABLEKS                       R43 R43 K54 ["XSmall"]
      531 SETTABLEKS                       R43 R42 K47 ["size"]
      533 GETUPVAL                         R43 0
      534 GETTABLEKS                       R43 R43 K50 ["Enums"]
      536 GETTABLEKS                       R43 R43 K83 ["ButtonVariant"]
      538 GETTABLEKS                       R43 R43 K84 ["Utility"]
      540 SETTABLEKS                       R43 R42 K78 ["variant"]
      542 SETTABLEKS                       R14 R42 K79 ["onActivated"]
      544 MOVE                             R43 R27
      545 CALL                             R43 0 1
      546 SETTABLEKS                       R43 R42 K33 ["LayoutOrder"]
      548 GETUPVAL                         R43 14
      549 GETTABLEKS                       R43 R43 K42 ["RunCode"]
      551 GETTABLEKS                       R43 R43 K95 ["Stop"]
      553 SETTABLEKS                       R43 R42 K40 ["testId"]
      555 CALL                             R40 2 1
      556 JUMP                             ; [+17]
      557 GETUPVAL                         R40 12
      558 GETUPVAL                         R41 20
      559 DUPTABLE                         R42 K97 [{["icon"] = "icons/controls/mediaStop_small", ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["LayoutOrder"], ["testId"]}]
      560 SETTABLEKS                       R14 R42 K79 ["onActivated"]
      562 MOVE                             R43 R27
      563 CALL                             R43 0 1
      564 SETTABLEKS                       R43 R42 K33 ["LayoutOrder"]
      566 GETUPVAL                         R43 14
      567 GETTABLEKS                       R43 R43 K42 ["RunCode"]
      569 GETTABLEKS                       R43 R43 K95 ["Stop"]
      571 SETTABLEKS                       R43 R42 K40 ["testId"]
      573 CALL                             R40 2 1
      574 SETTABLEKS                       R40 R39 K74 ["StopButton"]
      576 CALL                             R36 3 1
      577 SETTABLEKS                       R36 R35 K37 ["Header"]
      579 GETUPVAL                         R36 12
      580 GETUPVAL                         R37 22
      581 DUPTABLE                         R38 K98 [{"LayoutOrder"}]
      582 MOVE                             R39 R27
      583 CALL                             R39 0 1
      584 SETTABLEKS                       R39 R38 K33 ["LayoutOrder"]
      586 CALL                             R36 2 1
      587 SETTABLEKS                       R36 R35 K67 ["Divider"]
      589 GETUPVAL                         R36 12
      590 GETUPVAL                         R37 23
      591 DUPTABLE                         R38 K103 [{"scroll", "layout", "LayoutOrder", "Size", "scrollingFrameRef"}]
      592 SETTABLEKS                       R23 R38 K99 ["scroll"]
      594 GETUPVAL                         R39 24
      595 SETTABLEKS                       R39 R38 K100 ["layout"]
      597 MOVE                             R39 R27
      598 CALL                             R39 0 1
      599 SETTABLEKS                       R39 R38 K33 ["LayoutOrder"]
      601 NEWCLOSURE                       R41 P8
      602 CAPTURE                          VAL R20
      603 CAPTURE                          VAL R18
      604 CAPTURE                          VAL R1
      605 NAMECALL                         R39 R16 K104 ["map"]
      607 CALL                             R39 2 1
      608 SETTABLEKS                       R39 R38 K101 ["Size"]
      610 SETTABLEKS                       R22 R38 K102 ["scrollingFrameRef"]
      612 DUPTABLE                         R39 K106 [{"MarkdownText"}]
      613 GETUPVAL                         R40 12
      614 GETUPVAL                         R41 25
      615 DUPTABLE                         R42 K109 [{"markdown", "messageId"}]
      616 LOADK                            R44 K110 ["```lua\n"]
      617 MOVE                             R45 R10
      618 LOADK                            R46 K111 ["\n```"]
      619 CONCAT                           R43 R44 R46
      620 SETTABLEKS                       R43 R42 K107 ["markdown"]
      622 GETTABLEKS                       R43 R0 K108 ["messageId"]
      624 SETTABLEKS                       R43 R42 K108 ["messageId"]
      626 CALL                             R40 2 1
      627 SETTABLEKS                       R40 R39 K105 ["MarkdownText"]
      629 CALL                             R36 3 1
      630 SETTABLEKS                       R36 R35 K68 ["CodeView"]
      632 CALL                             R32 3 1
      633 SETTABLEKS                       R32 R31 K38 ["Content"]
      635 CALL                             R28 3 -1
      636 RETURN                           R28 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["CustomIconButton"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Guest"]
       32 GETTABLEKS                       R5 R5 K12 ["Environment"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K14 ["Actions"]
       43 GETTABLEKS                       R6 R6 K15 ["ExecuteLuauActionsContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K16 ["Flags"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Parent"]
       55 GETTABLEKS                       R8 R8 K17 ["Foundation"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Components"]
       62 GETTABLEKS                       R9 R9 K18 ["MarkdownText"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K19 ["Util"]
       69 GETTABLEKS                       R10 R10 K20 ["OutputParser"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K8 ["Parent"]
       76 GETTABLEKS                       R11 R11 K21 ["React"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K8 ["Parent"]
       83 GETTABLEKS                       R12 R12 K22 ["ReactUtils"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K6 ["Components"]
       90 GETTABLEKS                       R13 R13 K23 ["ShimmerGradient"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K19 ["Util"]
       97 GETTABLEKS                       R14 R14 K24 ["TestIds"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K25 ["Resources"]
      104 GETTABLEKS                       R15 R15 K26 ["Localization"]
      106 GETTABLEKS                       R15 R15 K27 ["Translator"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K28 ["Types"]
      113 CALL                             R15 1 1
      114 GETTABLEKS                       R16 R2 K29 ["ToolNaming"]
      116 GETTABLEKS                       R17 R7 K30 ["Divider"]
      118 GETTABLEKS                       R18 R7 K31 ["Icon"]
      120 GETTABLEKS                       R19 R7 K32 ["IconButton"]
      122 GETTABLEKS                       R20 R7 K33 ["ScrollView"]
      124 GETTABLEKS                       R21 R7 K34 ["Text"]
      126 GETTABLEKS                       R22 R7 K35 ["View"]
      128 GETTABLEKS                       R23 R11 K36 ["createNextOrder"]
      130 GETTABLEKS                       R24 R10 K37 ["createElement"]
      132 DUPTABLE                         R25 K42 [{["Dark"] = "rbxasset://studio_svg_textures/Shared/Clipboard/Dark/Standard/Copy.png", ["Light"] = "rbxasset://studio_svg_textures/Shared/Clipboard/Light/Standard/Copy.png"}]
      133 DUPTABLE                         R26 K44 [{"FillDirection"}]
      134 GETIMPORT                        R27 K47 [Enum.FillDirection.Vertical]
      136 SETTABLEKS                       R27 R26 K43 ["FillDirection"]
      138 NEWTABLE                         R27 0 0
      140 DUPCLOSURE                       R28 K48 [PROTO_0]
      141 CAPTURE                          VAL R6
      142 DUPCLOSURE                       R29 K49 [PROTO_1]
      143 CAPTURE                          VAL R6
      144 DUPCLOSURE                       R30 K50 [PROTO_16]
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R27
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R29
      154 CAPTURE                          VAL R28
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R23
      157 CAPTURE                          VAL R24
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R21
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R22
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R25
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R26
      170 CAPTURE                          VAL R8
      171 DUPTABLE                         R31 K56 [{["Type"] = "RunCode", ["ContentWidget"], ["StreamToolUse"] = True}]
      172 GETTABLEKS                       R32 R10 K57 ["memo"]
      174 MOVE                             R33 R30
      175 CALL                             R32 1 1
      176 SETTABLEKS                       R32 R31 K53 ["ContentWidget"]
      178 RETURN                           R31 1
