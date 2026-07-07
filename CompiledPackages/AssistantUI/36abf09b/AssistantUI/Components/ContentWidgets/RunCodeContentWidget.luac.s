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
        0 GETIMPORT                        R0 K2 [string.format]
        2 LOADK                            R1 K3 ["```lua\n%s\n```"]
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["copyToClipboard"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [task.spawn]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U2
       17 CALL                             R0 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 5
       20 GETTABLEKS                       R0 R0 K4 ["getNetworking"]
       22 CALL                             R0 0 1
       23 JUMPIF                           R0 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R3 6
       26 GETTABLEKS                       R3 R3 K5 ["loadAndRunCodeAsync"]
       28 LOADNIL                          R4
       29 DUPTABLE                         R5 K9 [{"contentId", "id", "code"}]
       30 GETUPVAL                         R6 7
       31 GETTABLEKS                       R6 R6 K6 ["contentId"]
       33 SETTABLEKS                       R6 R5 K6 ["contentId"]
       35 GETUPVAL                         R6 8
       36 SETTABLEKS                       R6 R5 K7 ["id"]
       38 GETUPVAL                         R6 4
       39 SETTABLEKS                       R6 R5 K8 ["code"]
       41 NAMECALL                         R1 R0 K10 ["InvokeHostAsync"]
       43 CALL                             R1 4 0
       44 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 JUMPIFNOT                        R0 ; [+16]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["current"]
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K2 ["stopCode"]
       15 DUPTABLE                         R2 K4 [{"id"}]
       16 SETTABLEKS                       R0 R2 K3 ["id"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 3
       21 GETTABLEKS                       R0 R0 K5 ["getNetworking"]
       23 CALL                             R0 0 1
       24 JUMPIF                           R0 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R3 R3 K2 ["stopCode"]
       29 LOADNIL                          R4
       30 DUPTABLE                         R5 K4 [{"id"}]
       31 GETUPVAL                         R6 5
       32 SETTABLEKS                       R6 R5 K3 ["id"]
       34 NAMECALL                         R1 R0 K6 ["FireHost"]
       36 CALL                             R1 4 0
       37 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["contentId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["contentId"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+5]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R1 K1 ["newCodeId"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOTEQ                      R2 R3 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R3 R1 K1 ["status"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getNetworking"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["bindCodeId"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["codeRunStatus"]
       12 MOVE                             R5 R1
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 NAMECALL                         R3 R0 K3 ["OnGuestEvent"]
       18 CALL                             R3 3 2
       19 MOVE                             R7 R2
       20 NEWCLOSURE                       R8 P1
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 NAMECALL                         R5 R0 K3 ["OnGuestEvent"]
       25 CALL                             R5 3 2
       26 NEWCLOSURE                       R7 P2
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R6
       29 RETURN                           R7 1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K5 ["useState"]
       20 LOADNIL                          R6
       21 CALL                             R5 1 2
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K6 ["get"]
       25 CALL                             R7 0 1
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R9 R9 K7 ["FFlagAssistantSplitToolsAndWidgets"]
       29 JUMPIFNOT                        R9 ; [+8]
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R8 R8 K8 ["useContext"]
       33 GETUPVAL                         R9 4
       34 GETTABLEKS                       R9 R9 K9 ["Context"]
       36 CALL                             R8 1 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R8
       39 LOADNIL                          R9
       40 LOADNIL                          R10
       41 GETUPVAL                         R11 3
       42 GETTABLEKS                       R11 R11 K7 ["FFlagAssistantSplitToolsAndWidgets"]
       44 JUMPIFNOT                        R11 ; [+42]
       45 GETTABLEKS                       R12 R0 K10 ["streaming"]
       47 JUMPIFNOT                        R12 ; [+5]
       48 GETTABLEKS                       R11 R0 K10 ["streaming"]
       50 GETTABLEKS                       R11 R11 K11 ["toolUse"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R11
       54 GETTABLEKS                       R13 R0 K11 ["toolUse"]
       56 JUMPIFNOT                        R13 ; [+5]
       57 GETTABLEKS                       R12 R0 K11 ["toolUse"]
       59 GETTABLEKS                       R12 R12 K12 ["input"]
       61 JUMP                             ; [+2]
       62 NEWTABLE                         R12 0 0
       64 GETUPVAL                         R13 5
       65 GETTABLEKS                       R13 R13 K13 ["withDefault"]
       67 GETTABLEKS                       R14 R12 K14 ["code"]
       69 LOADNIL                          R15
       70 CALL                             R13 2 1
       71 GETUPVAL                         R14 1
       72 GETTABLEKS                       R14 R14 K15 ["useMemo"]
       74 NEWCLOSURE                       R15 P0
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R11
       77 CAPTURE                          UPVAL U6
       78 NEWTABLE                         R16 0 2
       80 MOVE                             R17 R11
       81 MOVE                             R18 R13
       82 SETLIST                          R16 R17 2 [1]
       84 CALL                             R14 2 1
       85 MOVE                             R9 R14
       86 JUMP                             ; [+14]
       87 GETTABLEKS                       R9 R0 K14 ["code"]
       89 GETUPVAL                         R11 1
       90 GETTABLEKS                       R11 R11 K15 ["useMemo"]
       92 NEWCLOSURE                       R12 P1
       93 CAPTURE                          REF R9
       94 NEWTABLE                         R13 0 1
       96 MOVE                             R14 R9
       97 SETLIST                          R13 R14 1 [1]
       99 CALL                             R11 2 1
      100 MOVE                             R10 R11
      101 GETUPVAL                         R11 1
      102 GETTABLEKS                       R11 R11 K16 ["useCallback"]
      104 NEWCLOSURE                       R12 P2
      105 CAPTURE                          VAL R7
      106 CAPTURE                          REF R9
      107 NEWTABLE                         R13 0 2
      109 MOVE                             R14 R7
      110 MOVE                             R15 R9
      111 SETLIST                          R13 R14 2 [1]
      113 CALL                             R11 2 1
      114 GETUPVAL                         R12 1
      115 GETTABLEKS                       R12 R12 K17 ["useRef"]
      117 LOADNIL                          R13
      118 CALL                             R12 1 1
      119 GETUPVAL                         R13 1
      120 GETTABLEKS                       R13 R13 K18 ["useEffect"]
      122 NEWCLOSURE                       R14 P3
      123 CAPTURE                          VAL R12
      124 NEWTABLE                         R15 0 1
      126 MOVE                             R16 R9
      127 SETLIST                          R15 R16 1 [1]
      129 CALL                             R13 2 0
      130 GETUPVAL                         R13 1
      131 GETTABLEKS                       R13 R13 K16 ["useCallback"]
      133 NEWCLOSURE                       R14 P4
      134 CAPTURE                          UPVAL U3
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R12
      138 CAPTURE                          REF R9
      139 CAPTURE                          VAL R7
      140 CAPTURE                          UPVAL U7
      141 CAPTURE                          VAL R0
      142 CAPTURE                          VAL R5
      143 NEWTABLE                         R15 0 5
      145 MOVE                             R16 R7
      146 MOVE                             R17 R8
      147 GETTABLEKS                       R18 R0 K19 ["contentId"]
      149 MOVE                             R19 R9
      150 MOVE                             R20 R5
      151 SETLIST                          R15 R16 5 [1]
      153 CALL                             R13 2 1
      154 GETUPVAL                         R14 1
      155 GETTABLEKS                       R14 R14 K16 ["useCallback"]
      157 NEWCLOSURE                       R15 P5
      158 CAPTURE                          UPVAL U3
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R7
      162 CAPTURE                          UPVAL U7
      163 CAPTURE                          VAL R5
      164 NEWTABLE                         R16 0 3
      166 MOVE                             R17 R7
      167 MOVE                             R18 R8
      168 MOVE                             R19 R5
      169 SETLIST                          R16 R17 3 [1]
      171 CALL                             R14 2 1
      172 GETUPVAL                         R15 3
      173 GETTABLEKS                       R15 R15 K7 ["FFlagAssistantSplitToolsAndWidgets"]
      175 JUMPIF                           R15 ; [+21]
      176 GETUPVAL                         R15 1
      177 GETTABLEKS                       R15 R15 K18 ["useEffect"]
      179 NEWCLOSURE                       R16 P6
      180 CAPTURE                          VAL R7
      181 CAPTURE                          UPVAL U7
      182 CAPTURE                          VAL R0
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R5
      185 CAPTURE                          VAL R4
      186 NEWTABLE                         R17 0 5
      188 MOVE                             R18 R7
      189 MOVE                             R19 R6
      190 MOVE                             R20 R4
      191 GETTABLEKS                       R21 R0 K19 ["contentId"]
      193 MOVE                             R22 R5
      194 SETLIST                          R17 R18 5 [1]
      196 CALL                             R15 2 0
      197 GETUPVAL                         R15 1
      198 GETTABLEKS                       R15 R15 K15 ["useMemo"]
      200 DUPCLOSURE                       R16 K20 [PROTO_14]
      201 CAPTURE                          UPVAL U8
      202 NEWTABLE                         R17 0 1
      204 GETUPVAL                         R18 8
      205 GETTABLEKS                       R18 R18 K21 ["locale"]
      207 SETLIST                          R17 R18 1 [1]
      209 CALL                             R15 2 1
      210 GETUPVAL                         R16 1
      211 GETTABLEKS                       R16 R16 K22 ["useBinding"]
      213 GETIMPORT                        R17 K25 [UDim2.new]
      215 CALL                             R17 0 -1
      216 CALL                             R16 -1 2
      217 GETUPVAL                         R18 1
      218 GETTABLEKS                       R18 R18 K22 ["useBinding"]
      220 GETIMPORT                        R19 K29 [Enum.ScrollingDirection.XY]
      222 CALL                             R18 1 2
      223 GETUPVAL                         R20 1
      224 GETTABLEKS                       R20 R20 K5 ["useState"]
      226 LOADB                            R21 0
      227 CALL                             R20 1 2
      228 GETUPVAL                         R22 1
      229 GETTABLEKS                       R22 R22 K17 ["useRef"]
      231 LOADNIL                          R23
      232 CALL                             R22 1 1
      233 GETUPVAL                         R23 1
      234 GETTABLEKS                       R23 R23 K18 ["useEffect"]
      236 NEWCLOSURE                       R24 P8
      237 CAPTURE                          VAL R22
      238 CAPTURE                          VAL R0
      239 CAPTURE                          UPVAL U3
      240 CAPTURE                          UPVAL U9
      241 CAPTURE                          UPVAL U10
      242 CAPTURE                          VAL R16
      243 CAPTURE                          VAL R21
      244 CAPTURE                          VAL R19
      245 CAPTURE                          VAL R17
      246 NEWTABLE                         R25 0 1
      248 GETTABLEKS                       R26 R0 K30 ["expanded"]
      250 SETLIST                          R25 R26 1 [1]
      252 CALL                             R23 2 0
      253 GETUPVAL                         R23 1
      254 GETTABLEKS                       R23 R23 K15 ["useMemo"]
      256 NEWCLOSURE                       R24 P9
      257 CAPTURE                          VAL R16
      258 CAPTURE                          VAL R18
      259 CAPTURE                          UPVAL U0
      260 NEWTABLE                         R25 0 0
      262 CALL                             R23 2 1
      263 GETTABLEKS                       R24 R0 K11 ["toolUse"]
      265 JUMPIFNOT                        R24 ; [+3]
      266 GETTABLEKS                       R25 R0 K31 ["toolResult"]
      268 NOT                              R24 R25
      269 OR                               R25 R24 R3
      270 GETUPVAL                         R26 11
      271 CALL                             R26 0 1
      272 GETUPVAL                         R27 12
      273 GETUPVAL                         R28 13
      274 GETTABLEKS                       R28 R28 K32 ["Root"]
      276 DUPTABLE                         R29 K35 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      277 GETTABLEKS                       R30 R0 K33 ["LayoutOrder"]
      279 SETTABLEKS                       R30 R29 K33 ["LayoutOrder"]
      281 GETTABLEKS                       R30 R0 K30 ["expanded"]
      283 SETTABLEKS                       R30 R29 K30 ["expanded"]
      285 GETTABLEKS                       R30 R0 K19 ["contentId"]
      287 SETTABLEKS                       R30 R29 K19 ["contentId"]
      289 GETTABLEKS                       R30 R0 K34 ["editThisContent"]
      291 SETTABLEKS                       R30 R29 K34 ["editThisContent"]
      293 DUPTABLE                         R30 K38 [{"Header", "Content"}]
      294 GETUPVAL                         R31 12
      295 GETUPVAL                         R32 13
      296 GETTABLEKS                       R32 R32 K36 ["Header"]
      298 DUPTABLE                         R33 K40 [{"LayoutOrder", "testId"}]
      299 MOVE                             R34 R26
      300 CALL                             R34 0 1
      301 SETTABLEKS                       R34 R33 K33 ["LayoutOrder"]
      303 GETUPVAL                         R34 14
      304 GETTABLEKS                       R34 R34 K41 ["RunCode"]
      306 GETTABLEKS                       R34 R34 K42 ["Expand"]
      308 SETTABLEKS                       R34 R33 K39 ["testId"]
      310 DUPTABLE                         R34 K44 [{"Text"}]
      311 GETUPVAL                         R35 12
      312 GETUPVAL                         R36 15
      313 DUPTABLE                         R37 K47 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      314 GETTABLEKS                       R39 R0 K11 ["toolUse"]
      316 JUMPIF                           R39 ; [+3]
      317 GETTABLEKS                       R38 R15 K48 ["Generating"]
      319 JUMP                             ; [+6]
      320 JUMPIFNOT                        R25 ; [+3]
      321 GETTABLEKS                       R38 R15 K49 ["Running"]
      323 JUMP                             ; [+2]
      324 GETTABLEKS                       R38 R15 K50 ["Title"]
      326 SETTABLEKS                       R38 R37 K43 ["Text"]
      328 MOVE                             R38 R26
      329 CALL                             R38 0 1
      330 SETTABLEKS                       R38 R37 K33 ["LayoutOrder"]
      332 DUPTABLE                         R38 K52 [{"Shimmer"}]
      333 GETTABLEKS                       R40 R0 K11 ["toolUse"]
      335 JUMPIFNOT                        R40 ; [+2]
      336 MOVE                             R39 R25
      337 JUMPIFNOT                        R39 ; [+3]
      338 GETUPVAL                         R39 12
      339 GETUPVAL                         R40 16
      340 CALL                             R39 1 1
      341 SETTABLEKS                       R39 R38 K51 ["Shimmer"]
      343 CALL                             R35 3 1
      344 SETTABLEKS                       R35 R34 K43 ["Text"]
      346 CALL                             R31 3 1
      347 SETTABLEKS                       R31 R30 K36 ["Header"]
      349 GETUPVAL                         R31 12
      350 GETUPVAL                         R32 13
      351 GETTABLEKS                       R32 R32 K37 ["Content"]
      353 DUPTABLE                         R33 K54 [{["tag"] = "col fill size-0-0 auto-y radius-small bg-shift-300", ["LayoutOrder"]}]
      354 MOVE                             R34 R26
      355 CALL                             R34 0 1
      356 SETTABLEKS                       R34 R33 K33 ["LayoutOrder"]
      358 DUPTABLE                         R34 K57 [{"Header", "Divider", "CodeView"}]
      359 GETUPVAL                         R35 12
      360 GETUPVAL                         R36 17
      361 DUPTABLE                         R37 K59 [{["tag"] = "row align-x-right gap-none size-full-0 auto-y padding-xsmall", ["LayoutOrder"]}]
      362 MOVE                             R38 R26
      363 CALL                             R38 0 1
      364 SETTABLEKS                       R38 R37 K33 ["LayoutOrder"]
      366 DUPTABLE                         R38 K63 [{"CopyButton", "RunButton", "StopButton"}]
      367 GETUPVAL                         R40 3
      368 GETTABLEKS                       R40 R40 K7 ["FFlagAssistantSplitToolsAndWidgets"]
      370 JUMPIFNOT                        R40 ; [+3]
      371 GETTABLEKS                       R39 R0 K31 ["toolResult"]
      373 JUMPIFNOT                        R39 ; [+70]
      374 GETUPVAL                         R40 3
      375 GETTABLEKS                       R40 R40 K64 ["FFlagAssistantUseBuilderIcons"]
      377 JUMPIFNOT                        R40 ; [+45]
      378 GETUPVAL                         R39 12
      379 GETUPVAL                         R40 18
      380 DUPTABLE                         R41 K69 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      381 GETUPVAL                         R42 0
      382 GETTABLEKS                       R42 R42 K70 ["Enums"]
      384 GETTABLEKS                       R42 R42 K71 ["IconName"]
      386 GETTABLEKS                       R42 R42 K72 ["TwoStackedSquares"]
      388 SETTABLEKS                       R42 R41 K65 ["icon"]
      390 GETUPVAL                         R42 0
      391 GETTABLEKS                       R42 R42 K70 ["Enums"]
      393 GETTABLEKS                       R42 R42 K73 ["InputSize"]
      395 GETTABLEKS                       R42 R42 K74 ["XSmall"]
      397 SETTABLEKS                       R42 R41 K66 ["size"]
      399 GETUPVAL                         R42 0
      400 GETTABLEKS                       R42 R42 K70 ["Enums"]
      402 GETTABLEKS                       R42 R42 K75 ["ButtonVariant"]
      404 GETTABLEKS                       R42 R42 K76 ["Utility"]
      406 SETTABLEKS                       R42 R41 K67 ["variant"]
      408 SETTABLEKS                       R11 R41 K68 ["onActivated"]
      410 MOVE                             R42 R26
      411 CALL                             R42 0 1
      412 SETTABLEKS                       R42 R41 K33 ["LayoutOrder"]
      414 GETUPVAL                         R42 14
      415 GETTABLEKS                       R42 R42 K41 ["RunCode"]
      417 GETTABLEKS                       R42 R42 K77 ["Copy"]
      419 SETTABLEKS                       R42 R41 K39 ["testId"]
      421 CALL                             R39 2 1
      422 JUMP                             ; [+21]
      423 GETUPVAL                         R39 12
      424 GETUPVAL                         R40 19
      425 DUPTABLE                         R41 K81 [{["icon"], ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["LayoutOrder"], ["testId"]}]
      426 GETUPVAL                         R43 20
      427 GETTABLE                         R42 R43 R2
      428 SETTABLEKS                       R42 R41 K65 ["icon"]
      430 SETTABLEKS                       R11 R41 K68 ["onActivated"]
      432 MOVE                             R42 R26
      433 CALL                             R42 0 1
      434 SETTABLEKS                       R42 R41 K33 ["LayoutOrder"]
      436 GETUPVAL                         R42 14
      437 GETTABLEKS                       R42 R42 K41 ["RunCode"]
      439 GETTABLEKS                       R42 R42 K77 ["Copy"]
      441 SETTABLEKS                       R42 R41 K39 ["testId"]
      443 CALL                             R39 2 1
      444 SETTABLEKS                       R39 R38 K60 ["CopyButton"]
      446 GETUPVAL                         R40 3
      447 GETTABLEKS                       R40 R40 K7 ["FFlagAssistantSplitToolsAndWidgets"]
      449 JUMPIFNOT                        R40 ; [+3]
      450 GETTABLEKS                       R39 R0 K31 ["toolResult"]
      452 JUMPIFNOT                        R39 ; [+68]
      453 NOT                              R39 R25
      454 JUMPIFNOT                        R39 ; [+66]
      455 GETUPVAL                         R40 3
      456 GETTABLEKS                       R40 R40 K64 ["FFlagAssistantUseBuilderIcons"]
      458 JUMPIFNOT                        R40 ; [+45]
      459 GETUPVAL                         R39 12
      460 GETUPVAL                         R40 18
      461 DUPTABLE                         R41 K69 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      462 GETUPVAL                         R42 0
      463 GETTABLEKS                       R42 R42 K70 ["Enums"]
      465 GETTABLEKS                       R42 R42 K71 ["IconName"]
      467 GETTABLEKS                       R42 R42 K82 ["PlayLarge"]
      469 SETTABLEKS                       R42 R41 K65 ["icon"]
      471 GETUPVAL                         R42 0
      472 GETTABLEKS                       R42 R42 K70 ["Enums"]
      474 GETTABLEKS                       R42 R42 K73 ["InputSize"]
      476 GETTABLEKS                       R42 R42 K74 ["XSmall"]
      478 SETTABLEKS                       R42 R41 K66 ["size"]
      480 GETUPVAL                         R42 0
      481 GETTABLEKS                       R42 R42 K70 ["Enums"]
      483 GETTABLEKS                       R42 R42 K75 ["ButtonVariant"]
      485 GETTABLEKS                       R42 R42 K76 ["Utility"]
      487 SETTABLEKS                       R42 R41 K67 ["variant"]
      489 SETTABLEKS                       R13 R41 K68 ["onActivated"]
      491 MOVE                             R42 R26
      492 CALL                             R42 0 1
      493 SETTABLEKS                       R42 R41 K33 ["LayoutOrder"]
      495 GETUPVAL                         R42 14
      496 GETTABLEKS                       R42 R42 K41 ["RunCode"]
      498 GETTABLEKS                       R42 R42 K83 ["Run"]
      500 SETTABLEKS                       R42 R41 K39 ["testId"]
      502 CALL                             R39 2 1
      503 JUMP                             ; [+17]
      504 GETUPVAL                         R39 12
      505 GETUPVAL                         R40 19
      506 DUPTABLE                         R41 K85 [{["icon"] = "icons/controls/media-play-small", ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["LayoutOrder"], ["testId"]}]
      507 SETTABLEKS                       R13 R41 K68 ["onActivated"]
      509 MOVE                             R42 R26
      510 CALL                             R42 0 1
      511 SETTABLEKS                       R42 R41 K33 ["LayoutOrder"]
      513 GETUPVAL                         R42 14
      514 GETTABLEKS                       R42 R42 K41 ["RunCode"]
      516 GETTABLEKS                       R42 R42 K83 ["Run"]
      518 SETTABLEKS                       R42 R41 K39 ["testId"]
      520 CALL                             R39 2 1
      521 SETTABLEKS                       R39 R38 K61 ["RunButton"]
      523 GETUPVAL                         R40 3
      524 GETTABLEKS                       R40 R40 K7 ["FFlagAssistantSplitToolsAndWidgets"]
      526 JUMPIFNOT                        R40 ; [+3]
      527 GETTABLEKS                       R39 R0 K31 ["toolResult"]
      529 JUMPIFNOT                        R39 ; [+68]
      530 MOVE                             R39 R3
      531 JUMPIFNOT                        R39 ; [+66]
      532 GETUPVAL                         R40 3
      533 GETTABLEKS                       R40 R40 K64 ["FFlagAssistantUseBuilderIcons"]
      535 JUMPIFNOT                        R40 ; [+45]
      536 GETUPVAL                         R39 12
      537 GETUPVAL                         R40 18
      538 DUPTABLE                         R41 K69 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      539 GETUPVAL                         R42 0
      540 GETTABLEKS                       R42 R42 K70 ["Enums"]
      542 GETTABLEKS                       R42 R42 K71 ["IconName"]
      544 GETTABLEKS                       R42 R42 K86 ["StopSmall"]
      546 SETTABLEKS                       R42 R41 K65 ["icon"]
      548 GETUPVAL                         R42 0
      549 GETTABLEKS                       R42 R42 K70 ["Enums"]
      551 GETTABLEKS                       R42 R42 K73 ["InputSize"]
      553 GETTABLEKS                       R42 R42 K74 ["XSmall"]
      555 SETTABLEKS                       R42 R41 K66 ["size"]
      557 GETUPVAL                         R42 0
      558 GETTABLEKS                       R42 R42 K70 ["Enums"]
      560 GETTABLEKS                       R42 R42 K75 ["ButtonVariant"]
      562 GETTABLEKS                       R42 R42 K76 ["Utility"]
      564 SETTABLEKS                       R42 R41 K67 ["variant"]
      566 SETTABLEKS                       R14 R41 K68 ["onActivated"]
      568 MOVE                             R42 R26
      569 CALL                             R42 0 1
      570 SETTABLEKS                       R42 R41 K33 ["LayoutOrder"]
      572 GETUPVAL                         R42 14
      573 GETTABLEKS                       R42 R42 K41 ["RunCode"]
      575 GETTABLEKS                       R42 R42 K87 ["Stop"]
      577 SETTABLEKS                       R42 R41 K39 ["testId"]
      579 CALL                             R39 2 1
      580 JUMP                             ; [+17]
      581 GETUPVAL                         R39 12
      582 GETUPVAL                         R40 19
      583 DUPTABLE                         R41 K89 [{["icon"] = "icons/controls/mediaStop_small", ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["LayoutOrder"], ["testId"]}]
      584 SETTABLEKS                       R14 R41 K68 ["onActivated"]
      586 MOVE                             R42 R26
      587 CALL                             R42 0 1
      588 SETTABLEKS                       R42 R41 K33 ["LayoutOrder"]
      590 GETUPVAL                         R42 14
      591 GETTABLEKS                       R42 R42 K41 ["RunCode"]
      593 GETTABLEKS                       R42 R42 K87 ["Stop"]
      595 SETTABLEKS                       R42 R41 K39 ["testId"]
      597 CALL                             R39 2 1
      598 SETTABLEKS                       R39 R38 K62 ["StopButton"]
      600 CALL                             R35 3 1
      601 SETTABLEKS                       R35 R34 K36 ["Header"]
      603 GETUPVAL                         R35 12
      604 GETUPVAL                         R36 21
      605 DUPTABLE                         R37 K90 [{"LayoutOrder"}]
      606 MOVE                             R38 R26
      607 CALL                             R38 0 1
      608 SETTABLEKS                       R38 R37 K33 ["LayoutOrder"]
      610 CALL                             R35 2 1
      611 SETTABLEKS                       R35 R34 K55 ["Divider"]
      613 GETUPVAL                         R35 12
      614 GETUPVAL                         R36 22
      615 DUPTABLE                         R37 K95 [{"scroll", "layout", "LayoutOrder", "Size", "scrollingFrameRef"}]
      616 SETTABLEKS                       R23 R37 K91 ["scroll"]
      618 GETUPVAL                         R38 23
      619 SETTABLEKS                       R38 R37 K92 ["layout"]
      621 MOVE                             R38 R26
      622 CALL                             R38 0 1
      623 SETTABLEKS                       R38 R37 K33 ["LayoutOrder"]
      625 NEWCLOSURE                       R40 P10
      626 CAPTURE                          VAL R20
      627 CAPTURE                          VAL R18
      628 CAPTURE                          VAL R1
      629 NAMECALL                         R38 R16 K96 ["map"]
      631 CALL                             R38 2 1
      632 SETTABLEKS                       R38 R37 K93 ["Size"]
      634 SETTABLEKS                       R22 R37 K94 ["scrollingFrameRef"]
      636 DUPTABLE                         R38 K98 [{"MarkdownText"}]
      637 GETUPVAL                         R39 12
      638 GETUPVAL                         R40 24
      639 DUPTABLE                         R41 K101 [{"markdown", "messageId"}]
      640 GETUPVAL                         R43 3
      641 GETTABLEKS                       R43 R43 K7 ["FFlagAssistantSplitToolsAndWidgets"]
      643 JUMPIFNOT                        R43 ; [+5]
      644 LOADK                            R43 K102 ["```lua\n"]
      645 MOVE                             R44 R9
      646 LOADK                            R45 K103 ["\n```"]
      647 CONCAT                           R42 R43 R45
      648 JUMP                             ; [+1]
      649 MOVE                             R42 R10
      650 SETTABLEKS                       R42 R41 K99 ["markdown"]
      652 GETTABLEKS                       R42 R0 K100 ["messageId"]
      654 SETTABLEKS                       R42 R41 K100 ["messageId"]
      656 CALL                             R39 2 1
      657 SETTABLEKS                       R39 R38 K97 ["MarkdownText"]
      659 CALL                             R35 3 1
      660 SETTABLEKS                       R35 R34 K56 ["CodeView"]
      662 CALL                             R31 3 1
      663 SETTABLEKS                       R31 R30 K37 ["Content"]
      665 CALL                             R27 3 -1
      666 CLOSEUPVALS                      R9
      667 RETURN                           R27 -1

PROTO_22:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R2 R1 K0 ["toolUseContent"]
        2 MOVE                             R3 R2
        3 JUMPIFNOT                        R3 ; [+7]
        4 GETTABLEKS                       R3 R2 K1 ["input"]
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETTABLEKS                       R3 R2 K1 ["input"]
        9 GETTABLEKS                       R3 R3 K2 ["code"]
       11 DUPTABLE                         R4 K7 [{["type"] = "RunCode", ["code"], ["expanded"] = False}]
       12 ORK                              R5 R3 K8 ["-- UNKNOWN CODE"]
       13 SETTABLEKS                       R5 R4 K2 ["code"]
       15 RETURN                           R4 1

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
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K12 ["Actions"]
       36 GETTABLEKS                       R5 R5 K13 ["ExecuteLuauActionsContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Flags"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Parent"]
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
       67 GETTABLEKS                       R10 R0 K15 ["Parent"]
       69 GETTABLEKS                       R10 R10 K20 ["React"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K15 ["Parent"]
       76 GETTABLEKS                       R11 R11 K21 ["ReactUtils"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K18 ["Util"]
       83 GETTABLEKS                       R12 R12 K22 ["Serializer"]
       85 GETTABLEKS                       R12 R12 K23 ["SerializerTypes"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Components"]
       92 GETTABLEKS                       R13 R13 K24 ["ShimmerGradient"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K18 ["Util"]
       99 GETTABLEKS                       R14 R14 K25 ["TestIds"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K26 ["Resources"]
      106 GETTABLEKS                       R15 R15 K27 ["Localization"]
      108 GETTABLEKS                       R15 R15 K28 ["Translator"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K29 ["Types"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K18 ["Util"]
      120 GETTABLEKS                       R17 R17 K30 ["WidgetUtils"]
      122 CALL                             R16 1 1
      123 GETTABLEKS                       R17 R6 K31 ["Divider"]
      125 GETTABLEKS                       R18 R6 K32 ["IconButton"]
      127 GETTABLEKS                       R19 R6 K33 ["ScrollView"]
      129 GETTABLEKS                       R20 R6 K34 ["Text"]
      131 GETTABLEKS                       R21 R6 K35 ["View"]
      133 GETTABLEKS                       R22 R10 K36 ["createNextOrder"]
      135 GETTABLEKS                       R23 R9 K37 ["createElement"]
      137 DUPTABLE                         R24 K42 [{["Dark"] = "rbxasset://studio_svg_textures/Shared/Clipboard/Dark/Standard/Copy.png", ["Light"] = "rbxasset://studio_svg_textures/Shared/Clipboard/Light/Standard/Copy.png"}]
      138 DUPTABLE                         R25 K44 [{"FillDirection"}]
      139 GETIMPORT                        R26 K47 [Enum.FillDirection.Vertical]
      141 SETTABLEKS                       R26 R25 K43 ["FillDirection"]
      143 DUPTABLE                         R26 K56 [{["loadAndRunCodeAsync"] = "ExecuteLuauTool_loadAndRunCodeAsync", ["stopCode"] = "ExecuteLuauTool_stopCode", ["bindCodeId"] = "ExecuteLuauTool_bindCodeId", ["codeRunStatus"] = "ExecuteLuauTool_codeRunStatus"}]
      144 DUPCLOSURE                       R27 K57 [PROTO_0]
      145 CAPTURE                          VAL R5
      146 DUPCLOSURE                       R28 K58 [PROTO_1]
      147 CAPTURE                          VAL R5
      148 DUPCLOSURE                       R29 K59 [PROTO_21]
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R26
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R28
      159 CAPTURE                          VAL R27
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R23
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R24
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R25
      173 CAPTURE                          VAL R7
      174 DUPTABLE                         R30 K62 [{"toMeta", "fromMeta"}]
      175 DUPCLOSURE                       R31 K63 [PROTO_22]
      176 SETTABLEKS                       R31 R30 K60 ["toMeta"]
      178 DUPCLOSURE                       R31 K64 [PROTO_23]
      179 SETTABLEKS                       R31 R30 K61 ["fromMeta"]
      181 DUPTABLE                         R31 K72 [{["Type"] = "RunCode", ["ContentWidget"], ["Serialization"], ["StreamToolUse"] = True, ["NETWORK_KEYS"]}]
      182 GETTABLEKS                       R32 R9 K73 ["memo"]
      184 MOVE                             R33 R29
      185 CALL                             R32 1 1
      186 SETTABLEKS                       R32 R31 K67 ["ContentWidget"]
      188 SETTABLEKS                       R30 R31 K68 ["Serialization"]
      190 SETTABLEKS                       R26 R31 K71 ["NETWORK_KEYS"]
      192 RETURN                           R31 1
