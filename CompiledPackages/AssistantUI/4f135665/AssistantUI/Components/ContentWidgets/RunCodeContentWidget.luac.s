PROTO_0:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["FFlagMCPAssistantUseNewMarkdown is enabled!"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 NAMECALL                         R2 R0 K3 ["GetDescendants"]
       11 CALL                             R2 1 3
       12 FORGPREP                         R2
       13 MOVE                             R9 R1
       14 NAMECALL                         R7 R6 K4 ["HasTag"]
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+1]
       18 RETURN                           R6 1
       19 FORGLOOP                         R2 2 ; [-7]
       21 LOADNIL                          R2
       22 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagMCPAssistantUseNewMarkdown is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 NAMECALL                         R2 R0 K3 ["GetDescendants"]
       10 CALL                             R2 1 3
       11 FORGPREP                         R2
       12 MOVE                             R9 R1
       13 NAMECALL                         R7 R6 K4 ["IsA"]
       15 CALL                             R7 2 1
       16 JUMPIFNOT                        R7 ; [+1]
       17 RETURN                           R6 1
       18 FORGLOOP                         R2 2 ; [-7]
       20 LOADNIL                          R2
       21 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R0 K2 [string.format]
        2 LOADK                            R1 K3 ["```lua\n%s\n```"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K4 ["code"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["copyToClipboard"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["code"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getNetworking"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["loadAndRunCodeAsync"]
        9 LOADNIL                          R4
       10 DUPTABLE                         R5 K5 [{"contentId", "id", "code"}]
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R6 R7 K2 ["contentId"]
       14 SETTABLEKS                       R6 R5 K2 ["contentId"]
       16 GETUPVAL                         R6 3
       17 SETTABLEKS                       R6 R5 K3 ["id"]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K4 ["code"]
       22 SETTABLEKS                       R6 R5 K4 ["code"]
       24 NAMECALL                         R1 R0 K6 ["InvokeHostAsync"]
       26 CALL                             R1 4 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getNetworking"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["stopCode"]
        9 LOADNIL                          R4
       10 DUPTABLE                         R5 K3 [{"id"}]
       11 GETUPVAL                         R6 2
       12 SETTABLEKS                       R6 R5 K2 ["id"]
       14 NAMECALL                         R1 R0 K4 ["FireHost"]
       16 CALL                             R1 4 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["contentId"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["contentId"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+5]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R1 K1 ["newCodeId"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOTEQ                      R2 R3 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R3 R1 K1 ["status"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getNetworking"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["bindCodeId"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 NAMECALL                         R1 R0 K2 ["OnGuestEvent"]
       14 CALL                             R1 3 2
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K3 ["codeRunStatus"]
       18 NEWCLOSURE                       R6 P1
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 NAMECALL                         R3 R0 K2 ["OnGuestEvent"]
       23 CALL                             R3 3 2
       24 NEWCLOSURE                       R5 P2
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R4
       27 RETURN                           R5 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["expanded"]
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 LOADNIL                          R1
       11 GETUPVAL                         R2 2
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+6]
       14 GETUPVAL                         R2 3
       15 MOVE                             R3 R0
       16 LOADK                            R4 K2 ["ScrollingFrame"]
       17 CALL                             R2 2 1
       18 MOVE                             R1 R2
       19 JUMP                             ; [+20]
       20 GETUPVAL                         R2 4
       21 MOVE                             R3 R0
       22 LOADK                            R4 K3 ["Component-ScrollingFrame"]
       23 CALL                             R2 2 1
       24 JUMPIF                           R2 ; [+2]
       25 CLOSEUPVALS                      R1
       26 RETURN                           R0 0
       27 LOADK                            R5 K2 ["ScrollingFrame"]
       28 NAMECALL                         R3 R2 K4 ["FindFirstChildWhichIsA"]
       30 CALL                             R3 2 1
       31 MOVE                             R1 R3
       32 JUMPIFNOT                        R1 ; [+5]
       33 LOADK                            R5 K2 ["ScrollingFrame"]
       34 NAMECALL                         R3 R1 K5 ["IsA"]
       36 CALL                             R3 2 1
       37 JUMPIF                           R3 ; [+2]
       38 CLOSEUPVALS                      R1
       39 RETURN                           R0 0
       40 MOVE                             R3 R1
       41 JUMPIFNOT                        R3 ; [+4]
       42 LOADK                            R5 K2 ["ScrollingFrame"]
       43 NAMECALL                         R3 R1 K5 ["IsA"]
       45 CALL                             R3 2 1
       46 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       48 LOADK                            R4 K6 ["Code scroller not found"]
       49 GETIMPORT                        R2 K8 [assert]
       51 CALL                             R2 2 0
       52 GETIMPORT                        R2 K11 [UDim2.new]
       54 CALL                             R2 0 1
       55 SETTABLEKS                       R2 R1 K12 ["CanvasSize"]
       57 LOADB                            R2 0
       58 SETTABLEKS                       R2 R1 K13 ["ScrollingEnabled"]
       60 LOADN                            R2 0
       61 SETTABLEKS                       R2 R1 K14 ["ScrollBarThickness"]
       63 LOADN                            R2 1
       64 SETTABLEKS                       R2 R1 K15 ["ScrollBarImageTransparency"]
       66 GETIMPORT                        R2 K19 [Enum.AutomaticSize.XY]
       68 SETTABLEKS                       R2 R1 K17 ["AutomaticSize"]
       70 GETIMPORT                        R2 K21 [UDim2.fromOffset]
       72 LOADN                            R3 1
       73 LOADN                            R4 1
       74 CALL                             R2 2 1
       75 SETTABLEKS                       R2 R1 K22 ["Size"]
       77 LOADK                            R4 K23 ["AbsoluteSize"]
       78 NAMECALL                         R2 R0 K24 ["GetPropertyChangedSignal"]
       80 CALL                             R2 2 1
       81 NEWCLOSURE                       R4 P0
       82 CAPTURE                          UPVAL U5
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U6
       85 CAPTURE                          UPVAL U7
       86 NAMECALL                         R2 R2 K25 ["Connect"]
       88 CALL                             R2 2 1
       89 LOADK                            R5 K26 ["AbsoluteCanvasSize"]
       90 NAMECALL                         R3 R1 K24 ["GetPropertyChangedSignal"]
       92 CALL                             R3 2 1
       93 NEWCLOSURE                       R5 P1
       94 CAPTURE                          UPVAL U8
       95 CAPTURE                          REF R1
       96 NAMECALL                         R3 R3 K25 ["Connect"]
       98 CALL                             R3 2 1
       99 NEWCLOSURE                       R4 P2
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R3
      102 CLOSEUPVALS                      R1
      103 RETURN                           R4 1

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R4 R1 K2 ["Config"]
        8 GETTABLEKS                       R3 R4 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R3 K4 ["Name"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K5 ["useState"]
       15 LOADB                            R4 0
       16 CALL                             R3 1 2
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K5 ["useState"]
       20 LOADNIL                          R6
       21 CALL                             R5 1 2
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R7 R8 K6 ["get"]
       25 CALL                             R7 0 1
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R8 R9 K7 ["useMemo"]
       29 NEWCLOSURE                       R9 P0
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R10 0 1
       33 GETTABLEKS                       R11 R0 K8 ["code"]
       35 SETLIST                          R10 R11 1 [1]
       37 CALL                             R8 2 1
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R9 R10 K9 ["useCallback"]
       41 NEWCLOSURE                       R10 P1
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R11 0 2
       46 MOVE                             R12 R7
       47 GETTABLEKS                       R13 R0 K8 ["code"]
       49 SETLIST                          R11 R12 2 [1]
       51 CALL                             R9 2 1
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R10 R11 K9 ["useCallback"]
       55 NEWCLOSURE                       R11 P2
       56 CAPTURE                          VAL R7
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R5
       60 NEWTABLE                         R12 0 4
       62 MOVE                             R13 R7
       63 GETTABLEKS                       R14 R0 K10 ["contentId"]
       65 GETTABLEKS                       R15 R0 K8 ["code"]
       67 MOVE                             R16 R5
       68 SETLIST                          R12 R13 4 [1]
       70 CALL                             R10 2 1
       71 GETUPVAL                         R12 1
       72 GETTABLEKS                       R11 R12 K9 ["useCallback"]
       74 NEWCLOSURE                       R12 P3
       75 CAPTURE                          VAL R7
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          VAL R5
       78 NEWTABLE                         R13 0 2
       80 MOVE                             R14 R7
       81 MOVE                             R15 R5
       82 SETLIST                          R13 R14 2 [1]
       84 CALL                             R11 2 1
       85 GETUPVAL                         R13 1
       86 GETTABLEKS                       R12 R13 K11 ["useEffect"]
       88 NEWCLOSURE                       R13 P4
       89 CAPTURE                          VAL R7
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 NEWTABLE                         R14 0 5
       97 MOVE                             R15 R7
       98 MOVE                             R16 R6
       99 MOVE                             R17 R4
      100 GETTABLEKS                       R18 R0 K10 ["contentId"]
      102 MOVE                             R19 R5
      103 SETLIST                          R14 R15 5 [1]
      105 CALL                             R12 2 0
      106 GETUPVAL                         R13 1
      107 GETTABLEKS                       R12 R13 K7 ["useMemo"]
      109 DUPCLOSURE                       R13 K12 [PROTO_10]
      110 CAPTURE                          UPVAL U4
      111 NEWTABLE                         R14 0 1
      113 GETUPVAL                         R16 4
      114 GETTABLEKS                       R15 R16 K13 ["locale"]
      116 SETLIST                          R14 R15 1 [1]
      118 CALL                             R12 2 1
      119 GETUPVAL                         R14 1
      120 GETTABLEKS                       R13 R14 K14 ["useBinding"]
      122 GETIMPORT                        R14 K17 [UDim2.new]
      124 CALL                             R14 0 -1
      125 CALL                             R13 -1 2
      126 GETUPVAL                         R16 1
      127 GETTABLEKS                       R15 R16 K14 ["useBinding"]
      129 GETIMPORT                        R16 K21 [Enum.ScrollingDirection.XY]
      131 CALL                             R15 1 2
      132 GETUPVAL                         R18 1
      133 GETTABLEKS                       R17 R18 K5 ["useState"]
      135 LOADB                            R18 0
      136 CALL                             R17 1 2
      137 GETUPVAL                         R20 1
      138 GETTABLEKS                       R19 R20 K22 ["useRef"]
      140 LOADNIL                          R20
      141 CALL                             R19 1 1
      142 GETUPVAL                         R21 1
      143 GETTABLEKS                       R20 R21 K11 ["useEffect"]
      145 NEWCLOSURE                       R21 P6
      146 CAPTURE                          VAL R19
      147 CAPTURE                          VAL R0
      148 CAPTURE                          UPVAL U5
      149 CAPTURE                          UPVAL U6
      150 CAPTURE                          UPVAL U7
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R14
      155 NEWTABLE                         R22 0 1
      157 GETTABLEKS                       R23 R0 K23 ["expanded"]
      159 SETLIST                          R22 R23 1 [1]
      161 CALL                             R20 2 0
      162 GETUPVAL                         R21 1
      163 GETTABLEKS                       R20 R21 K7 ["useMemo"]
      165 NEWCLOSURE                       R21 P7
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R15
      168 CAPTURE                          UPVAL U0
      169 NEWTABLE                         R22 0 0
      171 CALL                             R20 2 1
      172 GETTABLEKS                       R21 R0 K24 ["toolUse"]
      174 JUMPIFNOT                        R21 ; [+3]
      175 GETTABLEKS                       R22 R0 K25 ["toolResult"]
      177 NOT                              R21 R22
      178 OR                               R22 R21 R3
      179 GETUPVAL                         R23 8
      180 CALL                             R23 0 1
      181 GETUPVAL                         R24 9
      182 GETUPVAL                         R26 10
      183 GETTABLEKS                       R25 R26 K26 ["Root"]
      185 DUPTABLE                         R26 K29 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      186 GETTABLEKS                       R27 R0 K27 ["LayoutOrder"]
      188 SETTABLEKS                       R27 R26 K27 ["LayoutOrder"]
      190 GETTABLEKS                       R27 R0 K23 ["expanded"]
      192 SETTABLEKS                       R27 R26 K23 ["expanded"]
      194 GETTABLEKS                       R27 R0 K10 ["contentId"]
      196 SETTABLEKS                       R27 R26 K10 ["contentId"]
      198 GETTABLEKS                       R27 R0 K28 ["editThisContent"]
      200 SETTABLEKS                       R27 R26 K28 ["editThisContent"]
      202 DUPTABLE                         R27 K32 [{"Header", "Content"}]
      203 GETUPVAL                         R28 9
      204 GETUPVAL                         R30 10
      205 GETTABLEKS                       R29 R30 K30 ["Header"]
      207 DUPTABLE                         R30 K34 [{"LayoutOrder", "testId"}]
      208 MOVE                             R31 R23
      209 CALL                             R31 0 1
      210 SETTABLEKS                       R31 R30 K27 ["LayoutOrder"]
      212 GETUPVAL                         R33 11
      213 GETTABLEKS                       R32 R33 K35 ["RunCode"]
      215 GETTABLEKS                       R31 R32 K36 ["Expand"]
      217 SETTABLEKS                       R31 R30 K33 ["testId"]
      219 DUPTABLE                         R31 K38 [{"Text"}]
      220 GETUPVAL                         R32 9
      221 GETUPVAL                         R33 12
      222 DUPTABLE                         R34 K40 [{"tag", "Text", "LayoutOrder"}]
      223 LOADK                            R35 K41 ["size-0-full auto-x text-label-small content-default text-truncate-end"]
      224 SETTABLEKS                       R35 R34 K39 ["tag"]
      226 GETTABLEKS                       R36 R0 K42 ["generating"]
      228 JUMPIFNOT                        R36 ; [+3]
      229 GETTABLEKS                       R35 R12 K43 ["Generating"]
      231 JUMP                             ; [+6]
      232 JUMPIFNOT                        R22 ; [+3]
      233 GETTABLEKS                       R35 R12 K44 ["Running"]
      235 JUMP                             ; [+2]
      236 GETTABLEKS                       R35 R12 K45 ["Title"]
      238 SETTABLEKS                       R35 R34 K37 ["Text"]
      240 MOVE                             R35 R23
      241 CALL                             R35 0 1
      242 SETTABLEKS                       R35 R34 K27 ["LayoutOrder"]
      244 DUPTABLE                         R35 K47 [{"Shimmer"}]
      245 GETTABLEKS                       R37 R0 K42 ["generating"]
      247 JUMPIF                           R37 ; [+2]
      248 MOVE                             R36 R22
      249 JUMPIFNOT                        R36 ; [+3]
      250 GETUPVAL                         R36 9
      251 GETUPVAL                         R37 13
      252 CALL                             R36 1 1
      253 SETTABLEKS                       R36 R35 K46 ["Shimmer"]
      255 CALL                             R32 3 1
      256 SETTABLEKS                       R32 R31 K37 ["Text"]
      258 CALL                             R28 3 1
      259 SETTABLEKS                       R28 R27 K30 ["Header"]
      261 GETUPVAL                         R28 9
      262 GETUPVAL                         R30 10
      263 GETTABLEKS                       R29 R30 K31 ["Content"]
      265 DUPTABLE                         R30 K48 [{"tag", "LayoutOrder"}]
      266 LOADK                            R31 K49 ["col size-0-0 fill auto-y radius-small bg-shift-300"]
      267 SETTABLEKS                       R31 R30 K39 ["tag"]
      269 MOVE                             R31 R23
      270 CALL                             R31 0 1
      271 SETTABLEKS                       R31 R30 K27 ["LayoutOrder"]
      273 DUPTABLE                         R31 K52 [{"Header", "Divider", "CodeView"}]
      274 GETUPVAL                         R32 9
      275 GETUPVAL                         R33 14
      276 DUPTABLE                         R34 K48 [{"tag", "LayoutOrder"}]
      277 LOADK                            R35 K53 ["row size-full-0 auto-y padding-xsmall gap-none align-x-right"]
      278 SETTABLEKS                       R35 R34 K39 ["tag"]
      280 MOVE                             R35 R23
      281 CALL                             R35 0 1
      282 SETTABLEKS                       R35 R34 K27 ["LayoutOrder"]
      284 DUPTABLE                         R35 K57 [{"CopyButton", "RunButton", "StopButton"}]
      285 GETUPVAL                         R36 9
      286 GETUPVAL                         R37 15
      287 DUPTABLE                         R38 K61 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      288 GETUPVAL                         R40 16
      289 GETTABLE                         R39 R40 R2
      290 SETTABLEKS                       R39 R38 K58 ["icon"]
      292 LOADK                            R39 K62 ["size-600-600 radius-small align-x-center align-y-center"]
      293 SETTABLEKS                       R39 R38 K39 ["tag"]
      295 LOADK                            R39 K63 ["size-300-300 content-emphasis"]
      296 SETTABLEKS                       R39 R38 K59 ["iconTag"]
      298 SETTABLEKS                       R9 R38 K60 ["onActivated"]
      300 MOVE                             R39 R23
      301 CALL                             R39 0 1
      302 SETTABLEKS                       R39 R38 K27 ["LayoutOrder"]
      304 GETUPVAL                         R41 11
      305 GETTABLEKS                       R40 R41 K35 ["RunCode"]
      307 GETTABLEKS                       R39 R40 K64 ["Copy"]
      309 SETTABLEKS                       R39 R38 K33 ["testId"]
      311 CALL                             R36 2 1
      312 SETTABLEKS                       R36 R35 K54 ["CopyButton"]
      314 NOT                              R36 R22
      315 JUMPIFNOT                        R36 ; [+26]
      316 GETUPVAL                         R36 9
      317 GETUPVAL                         R37 15
      318 DUPTABLE                         R38 K61 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      319 LOADK                            R39 K65 ["icons/controls/media-play-small"]
      320 SETTABLEKS                       R39 R38 K58 ["icon"]
      322 LOADK                            R39 K62 ["size-600-600 radius-small align-x-center align-y-center"]
      323 SETTABLEKS                       R39 R38 K39 ["tag"]
      325 LOADK                            R39 K63 ["size-300-300 content-emphasis"]
      326 SETTABLEKS                       R39 R38 K59 ["iconTag"]
      328 SETTABLEKS                       R10 R38 K60 ["onActivated"]
      330 MOVE                             R39 R23
      331 CALL                             R39 0 1
      332 SETTABLEKS                       R39 R38 K27 ["LayoutOrder"]
      334 GETUPVAL                         R41 11
      335 GETTABLEKS                       R40 R41 K35 ["RunCode"]
      337 GETTABLEKS                       R39 R40 K66 ["Run"]
      339 SETTABLEKS                       R39 R38 K33 ["testId"]
      341 CALL                             R36 2 1
      342 SETTABLEKS                       R36 R35 K55 ["RunButton"]
      344 MOVE                             R36 R3
      345 JUMPIFNOT                        R36 ; [+26]
      346 GETUPVAL                         R36 9
      347 GETUPVAL                         R37 15
      348 DUPTABLE                         R38 K61 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      349 LOADK                            R39 K67 ["icons/controls/mediaStop_small"]
      350 SETTABLEKS                       R39 R38 K58 ["icon"]
      352 LOADK                            R39 K62 ["size-600-600 radius-small align-x-center align-y-center"]
      353 SETTABLEKS                       R39 R38 K39 ["tag"]
      355 LOADK                            R39 K63 ["size-300-300 content-emphasis"]
      356 SETTABLEKS                       R39 R38 K59 ["iconTag"]
      358 SETTABLEKS                       R11 R38 K60 ["onActivated"]
      360 MOVE                             R39 R23
      361 CALL                             R39 0 1
      362 SETTABLEKS                       R39 R38 K27 ["LayoutOrder"]
      364 GETUPVAL                         R41 11
      365 GETTABLEKS                       R40 R41 K35 ["RunCode"]
      367 GETTABLEKS                       R39 R40 K68 ["Stop"]
      369 SETTABLEKS                       R39 R38 K33 ["testId"]
      371 CALL                             R36 2 1
      372 SETTABLEKS                       R36 R35 K56 ["StopButton"]
      374 CALL                             R32 3 1
      375 SETTABLEKS                       R32 R31 K30 ["Header"]
      377 GETUPVAL                         R32 9
      378 GETUPVAL                         R33 17
      379 DUPTABLE                         R34 K69 [{"LayoutOrder"}]
      380 MOVE                             R35 R23
      381 CALL                             R35 0 1
      382 SETTABLEKS                       R35 R34 K27 ["LayoutOrder"]
      384 CALL                             R32 2 1
      385 SETTABLEKS                       R32 R31 K50 ["Divider"]
      387 GETUPVAL                         R32 9
      388 GETUPVAL                         R33 18
      389 DUPTABLE                         R34 K74 [{"scroll", "layout", "LayoutOrder", "Size", "scrollingFrameRef"}]
      390 SETTABLEKS                       R20 R34 K70 ["scroll"]
      392 GETUPVAL                         R35 19
      393 SETTABLEKS                       R35 R34 K71 ["layout"]
      395 MOVE                             R35 R23
      396 CALL                             R35 0 1
      397 SETTABLEKS                       R35 R34 K27 ["LayoutOrder"]
      399 NEWCLOSURE                       R37 P8
      400 CAPTURE                          VAL R17
      401 CAPTURE                          VAL R15
      402 CAPTURE                          VAL R1
      403 NAMECALL                         R35 R13 K75 ["map"]
      405 CALL                             R35 2 1
      406 SETTABLEKS                       R35 R34 K72 ["Size"]
      408 SETTABLEKS                       R19 R34 K73 ["scrollingFrameRef"]
      410 DUPTABLE                         R35 K77 [{"MarkdownText"}]
      411 GETUPVAL                         R36 9
      412 GETUPVAL                         R37 20
      413 DUPTABLE                         R38 K80 [{"markdown", "messageId"}]
      414 SETTABLEKS                       R8 R38 K78 ["markdown"]
      416 GETTABLEKS                       R39 R0 K79 ["messageId"]
      418 SETTABLEKS                       R39 R38 K79 ["messageId"]
      420 CALL                             R36 2 1
      421 SETTABLEKS                       R36 R35 K76 ["MarkdownText"]
      423 CALL                             R32 3 1
      424 SETTABLEKS                       R32 R31 K51 ["CodeView"]
      426 CALL                             R28 3 1
      427 SETTABLEKS                       R28 R27 K31 ["Content"]
      429 CALL                             R24 3 -1
      430 RETURN                           R24 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K5 [{"type", "code"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["code"]
       15 SETTABLEKS                       R2 R1 K4 ["code"]
       17 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"type", "code", "expanded"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["code"]
       15 SETTABLEKS                       R2 R1 K4 ["code"]
       17 LOADB                            R2 0
       18 SETTABLEKS                       R2 R1 K5 ["expanded"]
       20 RETURN                           R1 1

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
       39 GETTABLEKS                       R6 R7 K13 ["MarkdownText"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Parent"]
       46 GETTABLEKS                       R7 R8 K14 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K11 ["Parent"]
       53 GETTABLEKS                       R8 R9 K15 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Components"]
       60 GETTABLEKS                       R9 R10 K16 ["ShimmerGradient"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K17 ["Util"]
       67 GETTABLEKS                       R10 R11 K18 ["TestIds"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R13 R0 K19 ["Resources"]
       74 GETTABLEKS                       R12 R13 K20 ["Localization"]
       76 GETTABLEKS                       R11 R12 K21 ["Translator"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K22 ["Types"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R14 R0 K23 ["Flags"]
       88 GETTABLEKS                       R13 R14 K24 ["FFlagAssistantPersistConversations"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R15 R0 K23 ["Flags"]
       95 GETTABLEKS                       R14 R15 K25 ["FFlagMCPAssistantUseNewMarkdown"]
       97 CALL                             R13 1 1
       98 GETTABLEKS                       R14 R4 K26 ["Divider"]
      100 GETTABLEKS                       R15 R4 K27 ["ScrollView"]
      102 GETTABLEKS                       R16 R4 K28 ["Text"]
      104 GETTABLEKS                       R17 R4 K29 ["View"]
      106 GETTABLEKS                       R18 R7 K30 ["createNextOrder"]
      108 GETTABLEKS                       R19 R6 K31 ["createElement"]
      110 DUPTABLE                         R20 K34 [{"Dark", "Light"}]
      111 LOADK                            R21 K35 ["rbxasset://studio_svg_textures/Shared/Clipboard/Dark/Standard/Copy.png"]
      112 SETTABLEKS                       R21 R20 K32 ["Dark"]
      114 LOADK                            R21 K36 ["rbxasset://studio_svg_textures/Shared/Clipboard/Light/Standard/Copy.png"]
      115 SETTABLEKS                       R21 R20 K33 ["Light"]
      117 DUPTABLE                         R21 K38 [{"FillDirection"}]
      118 GETIMPORT                        R22 K41 [Enum.FillDirection.Vertical]
      120 SETTABLEKS                       R22 R21 K37 ["FillDirection"]
      122 DUPTABLE                         R22 K46 [{"loadAndRunCodeAsync", "stopCode", "bindCodeId", "codeRunStatus"}]
      123 LOADK                            R23 K47 ["ExecuteLuauTool_loadAndRunCodeAsync"]
      124 SETTABLEKS                       R23 R22 K42 ["loadAndRunCodeAsync"]
      126 LOADK                            R23 K48 ["ExecuteLuauTool_stopCode"]
      127 SETTABLEKS                       R23 R22 K43 ["stopCode"]
      129 LOADK                            R23 K49 ["ExecuteLuauTool_bindCodeId"]
      130 SETTABLEKS                       R23 R22 K44 ["bindCodeId"]
      132 LOADK                            R23 K50 ["ExecuteLuauTool_codeRunStatus"]
      133 SETTABLEKS                       R23 R22 K45 ["codeRunStatus"]
      135 DUPCLOSURE                       R23 K51 [PROTO_0]
      136 CAPTURE                          VAL R13
      137 DUPCLOSURE                       R24 K52 [PROTO_1]
      138 CAPTURE                          VAL R13
      139 DUPCLOSURE                       R25 K53 [PROTO_17]
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R22
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R24
      147 CAPTURE                          VAL R23
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R20
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R21
      160 CAPTURE                          VAL R5
      161 DUPCLOSURE                       R26 K54 [PROTO_18]
      162 CAPTURE                          VAL R12
      163 DUPCLOSURE                       R27 K55 [PROTO_19]
      164 CAPTURE                          VAL R12
      165 DUPTABLE                         R28 K60 [{"Type", "ContentWidget", "Serialization", "NETWORK_KEYS"}]
      166 LOADK                            R29 K61 ["RunCode"]
      167 SETTABLEKS                       R29 R28 K56 ["Type"]
      169 GETTABLEKS                       R29 R6 K62 ["memo"]
      171 MOVE                             R30 R25
      172 CALL                             R29 1 1
      173 SETTABLEKS                       R29 R28 K57 ["ContentWidget"]
      175 DUPTABLE                         R29 K65 [{"serialize", "deserialize"}]
      176 SETTABLEKS                       R26 R29 K63 ["serialize"]
      178 SETTABLEKS                       R27 R29 K64 ["deserialize"]
      180 SETTABLEKS                       R29 R28 K58 ["Serialization"]
      182 SETTABLEKS                       R22 R28 K59 ["NETWORK_KEYS"]
      184 RETURN                           R28 1
