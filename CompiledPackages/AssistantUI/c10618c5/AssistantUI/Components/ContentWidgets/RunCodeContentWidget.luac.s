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
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+16]
        4 GETIMPORT                        R0 K2 [pcall]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 2
       11 JUMPIFNOT                        R0 ; [+3]
       12 GETTABLEKS                       R2 R1 K3 ["success"]
       14 JUMPIF                           R2 ; [+12]
       15 GETUPVAL                         R2 1
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R2 K4 ["current"]
       19 JUMP                             ; [+7]
       20 GETIMPORT                        R0 K2 [pcall]
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 CALL                             R0 1 0
       27 GETUPVAL                         R0 5
       28 LOADB                            R1 0
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

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
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        6 JUMPIFNOT                        R0 ; [+19]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["current"]
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["stopCode"]
       15 DUPTABLE                         R2 K5 [{"id", "targetId"}]
       16 GETTABLEKS                       R3 R0 K3 ["id"]
       18 SETTABLEKS                       R3 R2 K3 ["id"]
       20 GETTABLEKS                       R3 R0 K4 ["targetId"]
       22 SETTABLEKS                       R3 R2 K4 ["targetId"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 3
       27 GETTABLEKS                       R0 R0 K1 ["current"]
       29 JUMPIF                           R0 ; [+1]
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K2 ["stopCode"]
       34 DUPTABLE                         R2 K6 [{"id"}]
       35 SETTABLEKS                       R0 R2 K3 ["id"]
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

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
       75 GETTABLEKS                       R12 R12 K12 ["useRef"]
       77 LOADNIL                          R13
       78 CALL                             R12 1 1
       79 GETUPVAL                         R13 1
       80 GETTABLEKS                       R13 R13 K13 ["useEffect"]
       82 NEWCLOSURE                       R14 P2
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R12
       85 NEWTABLE                         R15 0 1
       87 MOVE                             R16 R9
       88 SETLIST                          R15 R16 1 [1]
       90 CALL                             R13 2 0
       91 GETUPVAL                         R13 1
       92 GETTABLEKS                       R13 R13 K11 ["useCallback"]
       94 NEWCLOSURE                       R14 P3
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R3
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R12
      101 NEWTABLE                         R15 0 2
      103 MOVE                             R16 R5
      104 MOVE                             R17 R9
      105 SETLIST                          R15 R16 2 [1]
      107 CALL                             R13 2 1
      108 GETUPVAL                         R14 1
      109 GETTABLEKS                       R14 R14 K11 ["useCallback"]
      111 NEWCLOSURE                       R15 P4
      112 CAPTURE                          VAL R5
      113 CAPTURE                          UPVAL U6
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R12
      116 NEWTABLE                         R16 0 2
      118 MOVE                             R17 R4
      119 MOVE                             R18 R5
      120 SETLIST                          R16 R17 2 [1]
      122 CALL                             R14 2 1
      123 GETUPVAL                         R15 1
      124 GETTABLEKS                       R15 R15 K10 ["useMemo"]
      126 DUPCLOSURE                       R16 K14 [PROTO_9]
      127 CAPTURE                          UPVAL U7
      128 NEWTABLE                         R17 0 1
      130 GETUPVAL                         R18 7
      131 GETTABLEKS                       R18 R18 K15 ["locale"]
      133 SETLIST                          R17 R18 1 [1]
      135 CALL                             R15 2 1
      136 GETUPVAL                         R16 1
      137 GETTABLEKS                       R16 R16 K16 ["useBinding"]
      139 GETIMPORT                        R17 K19 [UDim2.new]
      141 CALL                             R17 0 -1
      142 CALL                             R16 -1 2
      143 GETUPVAL                         R18 1
      144 GETTABLEKS                       R18 R18 K16 ["useBinding"]
      146 GETIMPORT                        R19 K23 [Enum.ScrollingDirection.XY]
      148 CALL                             R18 1 2
      149 GETUPVAL                         R20 1
      150 GETTABLEKS                       R20 R20 K2 ["useState"]
      152 LOADB                            R21 0
      153 CALL                             R20 1 2
      154 GETUPVAL                         R22 1
      155 GETTABLEKS                       R22 R22 K12 ["useRef"]
      157 LOADNIL                          R23
      158 CALL                             R22 1 1
      159 GETUPVAL                         R23 1
      160 GETTABLEKS                       R23 R23 K13 ["useEffect"]
      162 NEWCLOSURE                       R24 P6
      163 CAPTURE                          VAL R22
      164 CAPTURE                          VAL R0
      165 CAPTURE                          VAL R16
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R17
      169 NEWTABLE                         R25 0 1
      171 GETTABLEKS                       R26 R0 K24 ["expanded"]
      173 SETLIST                          R25 R26 1 [1]
      175 CALL                             R23 2 0
      176 GETUPVAL                         R23 1
      177 GETTABLEKS                       R23 R23 K10 ["useMemo"]
      179 NEWCLOSURE                       R24 P7
      180 CAPTURE                          VAL R16
      181 CAPTURE                          VAL R18
      182 CAPTURE                          UPVAL U0
      183 NEWTABLE                         R25 0 0
      185 CALL                             R23 2 1
      186 GETTABLEKS                       R24 R0 K7 ["toolUse"]
      188 JUMPIFNOT                        R24 ; [+3]
      189 GETTABLEKS                       R25 R0 K25 ["toolResult"]
      191 NOT                              R24 R25
      192 OR                               R25 R24 R2
      193 GETUPVAL                         R26 8
      194 CALL                             R26 0 1
      195 JUMPIFNOT                        R26 ; [+13]
      196 LOADB                            R26 0
      197 GETTABLEKS                       R27 R0 K7 ["toolUse"]
      199 JUMPIFEQKNIL                     R27 ; [+9]
      201 GETUPVAL                         R26 9
      202 GETTABLEKS                       R26 R26 K26 ["isCloudTool"]
      204 GETTABLEKS                       R27 R0 K7 ["toolUse"]
      206 GETTABLEKS                       R27 R27 K27 ["name"]
      208 CALL                             R26 1 1
      209 GETUPVAL                         R27 10
      210 CALL                             R27 0 1
      211 GETUPVAL                         R28 11
      212 GETUPVAL                         R29 12
      213 GETTABLEKS                       R29 R29 K28 ["Root"]
      215 DUPTABLE                         R30 K32 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      216 GETTABLEKS                       R31 R0 K29 ["LayoutOrder"]
      218 SETTABLEKS                       R31 R30 K29 ["LayoutOrder"]
      220 GETTABLEKS                       R31 R0 K24 ["expanded"]
      222 SETTABLEKS                       R31 R30 K24 ["expanded"]
      224 GETTABLEKS                       R31 R0 K30 ["contentId"]
      226 SETTABLEKS                       R31 R30 K30 ["contentId"]
      228 GETTABLEKS                       R31 R0 K31 ["editThisContent"]
      230 SETTABLEKS                       R31 R30 K31 ["editThisContent"]
      232 DUPTABLE                         R31 K35 [{"Header", "Content"}]
      233 GETUPVAL                         R32 11
      234 GETUPVAL                         R33 12
      235 GETTABLEKS                       R33 R33 K33 ["Header"]
      237 DUPTABLE                         R34 K37 [{"LayoutOrder", "testId"}]
      238 MOVE                             R35 R27
      239 CALL                             R35 0 1
      240 SETTABLEKS                       R35 R34 K29 ["LayoutOrder"]
      242 GETUPVAL                         R35 13
      243 GETTABLEKS                       R35 R35 K38 ["RunCode"]
      245 GETTABLEKS                       R35 R35 K39 ["Expand"]
      247 SETTABLEKS                       R35 R34 K36 ["testId"]
      249 DUPTABLE                         R35 K42 [{"CloudIcon", "Text"}]
      250 MOVE                             R36 R26
      251 JUMPIFNOT                        R36 ; [+41]
      252 GETUPVAL                         R36 11
      253 GETUPVAL                         R37 14
      254 DUPTABLE                         R38 K45 [{"name", "size", "style", "LayoutOrder", "testId"}]
      255 GETUPVAL                         R39 0
      256 GETTABLEKS                       R39 R39 K46 ["Enums"]
      258 GETTABLEKS                       R39 R39 K47 ["IconName"]
      260 GETTABLEKS                       R39 R39 K48 ["Cloud"]
      262 SETTABLEKS                       R39 R38 K27 ["name"]
      264 GETUPVAL                         R39 0
      265 GETTABLEKS                       R39 R39 K46 ["Enums"]
      267 GETTABLEKS                       R39 R39 K49 ["IconSize"]
      269 GETTABLEKS                       R39 R39 K50 ["XSmall"]
      271 SETTABLEKS                       R39 R38 K43 ["size"]
      273 GETTABLEKS                       R39 R1 K51 ["Color"]
      275 GETTABLEKS                       R39 R39 K34 ["Content"]
      277 GETTABLEKS                       R39 R39 K52 ["Muted"]
      279 SETTABLEKS                       R39 R38 K44 ["style"]
      281 MOVE                             R39 R27
      282 CALL                             R39 0 1
      283 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      285 GETUPVAL                         R39 13
      286 GETTABLEKS                       R39 R39 K38 ["RunCode"]
      288 GETTABLEKS                       R39 R39 K40 ["CloudIcon"]
      290 SETTABLEKS                       R39 R38 K36 ["testId"]
      292 CALL                             R36 2 1
      293 SETTABLEKS                       R36 R35 K40 ["CloudIcon"]
      295 GETUPVAL                         R36 11
      296 GETUPVAL                         R37 15
      297 DUPTABLE                         R38 K55 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      298 GETTABLEKS                       R40 R0 K7 ["toolUse"]
      300 JUMPIF                           R40 ; [+3]
      301 GETTABLEKS                       R39 R15 K56 ["Generating"]
      303 JUMP                             ; [+6]
      304 JUMPIFNOT                        R25 ; [+3]
      305 GETTABLEKS                       R39 R15 K57 ["Running"]
      307 JUMP                             ; [+2]
      308 GETTABLEKS                       R39 R15 K58 ["Title"]
      310 SETTABLEKS                       R39 R38 K41 ["Text"]
      312 MOVE                             R39 R27
      313 CALL                             R39 0 1
      314 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      316 DUPTABLE                         R39 K60 [{"Shimmer"}]
      317 GETTABLEKS                       R41 R0 K7 ["toolUse"]
      319 JUMPIFNOT                        R41 ; [+2]
      320 MOVE                             R40 R25
      321 JUMPIFNOT                        R40 ; [+3]
      322 GETUPVAL                         R40 11
      323 GETUPVAL                         R41 16
      324 CALL                             R40 1 1
      325 SETTABLEKS                       R40 R39 K59 ["Shimmer"]
      327 CALL                             R36 3 1
      328 SETTABLEKS                       R36 R35 K41 ["Text"]
      330 CALL                             R32 3 1
      331 SETTABLEKS                       R32 R31 K33 ["Header"]
      333 GETUPVAL                         R32 11
      334 GETUPVAL                         R33 12
      335 GETTABLEKS                       R33 R33 K34 ["Content"]
      337 DUPTABLE                         R34 K62 [{["tag"] = "col fill size-0-0 auto-y radius-small bg-shift-300", ["LayoutOrder"]}]
      338 MOVE                             R35 R27
      339 CALL                             R35 0 1
      340 SETTABLEKS                       R35 R34 K29 ["LayoutOrder"]
      342 DUPTABLE                         R35 K65 [{"Header", "Divider", "CodeView"}]
      343 GETUPVAL                         R36 11
      344 GETUPVAL                         R37 17
      345 DUPTABLE                         R38 K67 [{["tag"] = "row align-x-right gap-none size-full-0 auto-y padding-xsmall", ["LayoutOrder"]}]
      346 MOVE                             R39 R27
      347 CALL                             R39 0 1
      348 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      350 DUPTABLE                         R39 K71 [{"CopyButton", "RunButton", "StopButton"}]
      351 GETTABLEKS                       R40 R0 K25 ["toolResult"]
      353 JUMPIFNOT                        R40 ; [+44]
      354 GETUPVAL                         R40 11
      355 GETUPVAL                         R41 18
      356 DUPTABLE                         R42 K75 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      357 GETUPVAL                         R43 0
      358 GETTABLEKS                       R43 R43 K46 ["Enums"]
      360 GETTABLEKS                       R43 R43 K47 ["IconName"]
      362 GETTABLEKS                       R43 R43 K76 ["TwoStackedSquares"]
      364 SETTABLEKS                       R43 R42 K72 ["icon"]
      366 GETUPVAL                         R43 0
      367 GETTABLEKS                       R43 R43 K46 ["Enums"]
      369 GETTABLEKS                       R43 R43 K77 ["InputSize"]
      371 GETTABLEKS                       R43 R43 K50 ["XSmall"]
      373 SETTABLEKS                       R43 R42 K43 ["size"]
      375 GETUPVAL                         R43 0
      376 GETTABLEKS                       R43 R43 K46 ["Enums"]
      378 GETTABLEKS                       R43 R43 K78 ["ButtonVariant"]
      380 GETTABLEKS                       R43 R43 K79 ["Utility"]
      382 SETTABLEKS                       R43 R42 K73 ["variant"]
      384 SETTABLEKS                       R10 R42 K74 ["onActivated"]
      386 MOVE                             R43 R27
      387 CALL                             R43 0 1
      388 SETTABLEKS                       R43 R42 K29 ["LayoutOrder"]
      390 GETUPVAL                         R43 13
      391 GETTABLEKS                       R43 R43 K38 ["RunCode"]
      393 GETTABLEKS                       R43 R43 K80 ["Copy"]
      395 SETTABLEKS                       R43 R42 K36 ["testId"]
      397 CALL                             R40 2 1
      398 SETTABLEKS                       R40 R39 K68 ["CopyButton"]
      400 NOT                              R40 R26
      401 JUMPIFNOT                        R40 ; [+49]
      402 GETTABLEKS                       R40 R0 K25 ["toolResult"]
      404 JUMPIFNOT                        R40 ; [+46]
      405 NOT                              R40 R25
      406 JUMPIFNOT                        R40 ; [+44]
      407 GETUPVAL                         R40 11
      408 GETUPVAL                         R41 18
      409 DUPTABLE                         R42 K75 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      410 GETUPVAL                         R43 0
      411 GETTABLEKS                       R43 R43 K46 ["Enums"]
      413 GETTABLEKS                       R43 R43 K47 ["IconName"]
      415 GETTABLEKS                       R43 R43 K81 ["PlayLarge"]
      417 SETTABLEKS                       R43 R42 K72 ["icon"]
      419 GETUPVAL                         R43 0
      420 GETTABLEKS                       R43 R43 K46 ["Enums"]
      422 GETTABLEKS                       R43 R43 K77 ["InputSize"]
      424 GETTABLEKS                       R43 R43 K50 ["XSmall"]
      426 SETTABLEKS                       R43 R42 K43 ["size"]
      428 GETUPVAL                         R43 0
      429 GETTABLEKS                       R43 R43 K46 ["Enums"]
      431 GETTABLEKS                       R43 R43 K78 ["ButtonVariant"]
      433 GETTABLEKS                       R43 R43 K79 ["Utility"]
      435 SETTABLEKS                       R43 R42 K73 ["variant"]
      437 SETTABLEKS                       R13 R42 K74 ["onActivated"]
      439 MOVE                             R43 R27
      440 CALL                             R43 0 1
      441 SETTABLEKS                       R43 R42 K29 ["LayoutOrder"]
      443 GETUPVAL                         R43 13
      444 GETTABLEKS                       R43 R43 K38 ["RunCode"]
      446 GETTABLEKS                       R43 R43 K82 ["Run"]
      448 SETTABLEKS                       R43 R42 K36 ["testId"]
      450 CALL                             R40 2 1
      451 SETTABLEKS                       R40 R39 K69 ["RunButton"]
      453 NOT                              R40 R26
      454 JUMPIFNOT                        R40 ; [+49]
      455 GETTABLEKS                       R40 R0 K25 ["toolResult"]
      457 JUMPIFNOT                        R40 ; [+46]
      458 MOVE                             R40 R2
      459 JUMPIFNOT                        R40 ; [+44]
      460 GETUPVAL                         R40 11
      461 GETUPVAL                         R41 18
      462 DUPTABLE                         R42 K75 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      463 GETUPVAL                         R43 0
      464 GETTABLEKS                       R43 R43 K46 ["Enums"]
      466 GETTABLEKS                       R43 R43 K47 ["IconName"]
      468 GETTABLEKS                       R43 R43 K83 ["StopSmall"]
      470 SETTABLEKS                       R43 R42 K72 ["icon"]
      472 GETUPVAL                         R43 0
      473 GETTABLEKS                       R43 R43 K46 ["Enums"]
      475 GETTABLEKS                       R43 R43 K77 ["InputSize"]
      477 GETTABLEKS                       R43 R43 K50 ["XSmall"]
      479 SETTABLEKS                       R43 R42 K43 ["size"]
      481 GETUPVAL                         R43 0
      482 GETTABLEKS                       R43 R43 K46 ["Enums"]
      484 GETTABLEKS                       R43 R43 K78 ["ButtonVariant"]
      486 GETTABLEKS                       R43 R43 K79 ["Utility"]
      488 SETTABLEKS                       R43 R42 K73 ["variant"]
      490 SETTABLEKS                       R14 R42 K74 ["onActivated"]
      492 MOVE                             R43 R27
      493 CALL                             R43 0 1
      494 SETTABLEKS                       R43 R42 K29 ["LayoutOrder"]
      496 GETUPVAL                         R43 13
      497 GETTABLEKS                       R43 R43 K38 ["RunCode"]
      499 GETTABLEKS                       R43 R43 K84 ["Stop"]
      501 SETTABLEKS                       R43 R42 K36 ["testId"]
      503 CALL                             R40 2 1
      504 SETTABLEKS                       R40 R39 K70 ["StopButton"]
      506 CALL                             R36 3 1
      507 SETTABLEKS                       R36 R35 K33 ["Header"]
      509 GETUPVAL                         R36 11
      510 GETUPVAL                         R37 19
      511 DUPTABLE                         R38 K85 [{"LayoutOrder"}]
      512 MOVE                             R39 R27
      513 CALL                             R39 0 1
      514 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      516 CALL                             R36 2 1
      517 SETTABLEKS                       R36 R35 K63 ["Divider"]
      519 GETUPVAL                         R36 11
      520 GETUPVAL                         R37 20
      521 DUPTABLE                         R38 K90 [{"scroll", "layout", "LayoutOrder", "Size", "scrollingFrameRef"}]
      522 SETTABLEKS                       R23 R38 K86 ["scroll"]
      524 GETUPVAL                         R39 21
      525 SETTABLEKS                       R39 R38 K87 ["layout"]
      527 MOVE                             R39 R27
      528 CALL                             R39 0 1
      529 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      531 NEWCLOSURE                       R41 P8
      532 CAPTURE                          VAL R20
      533 CAPTURE                          VAL R18
      534 CAPTURE                          VAL R1
      535 NAMECALL                         R39 R16 K91 ["map"]
      537 CALL                             R39 2 1
      538 SETTABLEKS                       R39 R38 K88 ["Size"]
      540 SETTABLEKS                       R22 R38 K89 ["scrollingFrameRef"]
      542 DUPTABLE                         R39 K93 [{"MarkdownText"}]
      543 GETUPVAL                         R40 11
      544 GETUPVAL                         R41 22
      545 DUPTABLE                         R42 K96 [{"markdown", "messageId"}]
      546 LOADK                            R44 K97 ["```lua\n"]
      547 MOVE                             R45 R9
      548 LOADK                            R46 K98 ["\n```"]
      549 CONCAT                           R43 R44 R46
      550 SETTABLEKS                       R43 R42 K94 ["markdown"]
      552 GETTABLEKS                       R43 R0 K95 ["messageId"]
      554 SETTABLEKS                       R43 R42 K95 ["messageId"]
      556 CALL                             R40 2 1
      557 SETTABLEKS                       R40 R39 K92 ["MarkdownText"]
      559 CALL                             R36 3 1
      560 SETTABLEKS                       R36 R35 K64 ["CodeView"]
      562 CALL                             R32 3 1
      563 SETTABLEKS                       R32 R31 K34 ["Content"]
      565 CALL                             R28 3 -1
      566 RETURN                           R28 -1

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
       48 GETTABLEKS                       R7 R0 K17 ["Flags"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Parent"]
       55 GETTABLEKS                       R8 R8 K18 ["Foundation"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Components"]
       62 GETTABLEKS                       R9 R9 K19 ["MarkdownText"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K20 ["Util"]
       69 GETTABLEKS                       R10 R10 K21 ["OutputParser"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K8 ["Parent"]
       76 GETTABLEKS                       R11 R11 K22 ["React"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K8 ["Parent"]
       83 GETTABLEKS                       R12 R12 K23 ["ReactUtils"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K6 ["Components"]
       90 GETTABLEKS                       R13 R13 K24 ["ShimmerGradient"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K20 ["Util"]
       97 GETTABLEKS                       R14 R14 K25 ["TestIds"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K26 ["Resources"]
      104 GETTABLEKS                       R15 R15 K27 ["Localization"]
      106 GETTABLEKS                       R15 R15 K28 ["Translator"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K29 ["Types"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K30 ["FlagUtils"]
      118 GETTABLEKS                       R17 R17 K31 ["getIsAssistantUseRemoteService"]
      120 CALL                             R16 1 1
      121 GETTABLEKS                       R16 R16 K32 ["get"]
      123 GETTABLEKS                       R17 R2 K33 ["ToolNaming"]
      125 GETTABLEKS                       R18 R7 K34 ["Divider"]
      127 GETTABLEKS                       R19 R7 K35 ["Icon"]
      129 GETTABLEKS                       R20 R7 K36 ["IconButton"]
      131 GETTABLEKS                       R21 R7 K37 ["ScrollView"]
      133 GETTABLEKS                       R22 R7 K38 ["Text"]
      135 GETTABLEKS                       R23 R7 K39 ["View"]
      137 GETTABLEKS                       R24 R11 K40 ["createNextOrder"]
      139 GETTABLEKS                       R25 R10 K41 ["createElement"]
      141 DUPTABLE                         R26 K43 [{"FillDirection"}]
      142 GETIMPORT                        R27 K46 [Enum.FillDirection.Vertical]
      144 SETTABLEKS                       R27 R26 K42 ["FillDirection"]
      146 NEWTABLE                         R27 0 0
      148 DUPCLOSURE                       R28 K47 [PROTO_0]
      149 DUPCLOSURE                       R29 K48 [PROTO_16]
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R27
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R24
      161 CAPTURE                          VAL R25
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R22
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R23
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R18
      170 CAPTURE                          VAL R21
      171 CAPTURE                          VAL R26
      172 CAPTURE                          VAL R8
      173 DUPTABLE                         R30 K54 [{["Type"] = "RunCode", ["ContentWidget"], ["StreamToolUse"] = True}]
      174 GETTABLEKS                       R31 R10 K55 ["memo"]
      176 MOVE                             R32 R29
      177 CALL                             R31 1 1
      178 SETTABLEKS                       R31 R30 K51 ["ContentWidget"]
      180 RETURN                           R30 1
