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
       44 JUMPIFNOT                        R11 ; [+37]
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
       64 GETTABLEKS                       R13 R12 K13 ["code"]
       66 GETUPVAL                         R14 1
       67 GETTABLEKS                       R14 R14 K14 ["useMemo"]
       69 NEWCLOSURE                       R15 P0
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R11
       72 CAPTURE                          UPVAL U5
       73 NEWTABLE                         R16 0 2
       75 MOVE                             R17 R11
       76 MOVE                             R18 R13
       77 SETLIST                          R16 R17 2 [1]
       79 CALL                             R14 2 1
       80 MOVE                             R9 R14
       81 JUMP                             ; [+14]
       82 GETTABLEKS                       R9 R0 K13 ["code"]
       84 GETUPVAL                         R11 1
       85 GETTABLEKS                       R11 R11 K14 ["useMemo"]
       87 NEWCLOSURE                       R12 P1
       88 CAPTURE                          REF R9
       89 NEWTABLE                         R13 0 1
       91 MOVE                             R14 R9
       92 SETLIST                          R13 R14 1 [1]
       94 CALL                             R11 2 1
       95 MOVE                             R10 R11
       96 GETUPVAL                         R11 1
       97 GETTABLEKS                       R11 R11 K15 ["useCallback"]
       99 NEWCLOSURE                       R12 P2
      100 CAPTURE                          VAL R7
      101 CAPTURE                          REF R9
      102 NEWTABLE                         R13 0 2
      104 MOVE                             R14 R7
      105 MOVE                             R15 R9
      106 SETLIST                          R13 R14 2 [1]
      108 CALL                             R11 2 1
      109 GETUPVAL                         R12 1
      110 GETTABLEKS                       R12 R12 K16 ["useRef"]
      112 LOADNIL                          R13
      113 CALL                             R12 1 1
      114 GETUPVAL                         R13 1
      115 GETTABLEKS                       R13 R13 K17 ["useEffect"]
      117 NEWCLOSURE                       R14 P3
      118 CAPTURE                          VAL R12
      119 NEWTABLE                         R15 0 1
      121 MOVE                             R16 R9
      122 SETLIST                          R15 R16 1 [1]
      124 CALL                             R13 2 0
      125 GETUPVAL                         R13 1
      126 GETTABLEKS                       R13 R13 K15 ["useCallback"]
      128 NEWCLOSURE                       R14 P4
      129 CAPTURE                          UPVAL U3
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R12
      133 CAPTURE                          REF R9
      134 CAPTURE                          VAL R7
      135 CAPTURE                          UPVAL U6
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R5
      138 NEWTABLE                         R15 0 5
      140 MOVE                             R16 R7
      141 MOVE                             R17 R8
      142 GETTABLEKS                       R18 R0 K18 ["contentId"]
      144 MOVE                             R19 R9
      145 MOVE                             R20 R5
      146 SETLIST                          R15 R16 5 [1]
      148 CALL                             R13 2 1
      149 GETUPVAL                         R14 1
      150 GETTABLEKS                       R14 R14 K15 ["useCallback"]
      152 NEWCLOSURE                       R15 P5
      153 CAPTURE                          UPVAL U3
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R7
      157 CAPTURE                          UPVAL U6
      158 CAPTURE                          VAL R5
      159 NEWTABLE                         R16 0 3
      161 MOVE                             R17 R7
      162 MOVE                             R18 R8
      163 MOVE                             R19 R5
      164 SETLIST                          R16 R17 3 [1]
      166 CALL                             R14 2 1
      167 GETUPVAL                         R15 3
      168 GETTABLEKS                       R15 R15 K7 ["FFlagAssistantSplitToolsAndWidgets"]
      170 JUMPIF                           R15 ; [+21]
      171 GETUPVAL                         R15 1
      172 GETTABLEKS                       R15 R15 K17 ["useEffect"]
      174 NEWCLOSURE                       R16 P6
      175 CAPTURE                          VAL R7
      176 CAPTURE                          UPVAL U6
      177 CAPTURE                          VAL R0
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R4
      181 NEWTABLE                         R17 0 5
      183 MOVE                             R18 R7
      184 MOVE                             R19 R6
      185 MOVE                             R20 R4
      186 GETTABLEKS                       R21 R0 K18 ["contentId"]
      188 MOVE                             R22 R5
      189 SETLIST                          R17 R18 5 [1]
      191 CALL                             R15 2 0
      192 GETUPVAL                         R15 1
      193 GETTABLEKS                       R15 R15 K14 ["useMemo"]
      195 DUPCLOSURE                       R16 K19 [PROTO_14]
      196 CAPTURE                          UPVAL U7
      197 NEWTABLE                         R17 0 1
      199 GETUPVAL                         R18 7
      200 GETTABLEKS                       R18 R18 K20 ["locale"]
      202 SETLIST                          R17 R18 1 [1]
      204 CALL                             R15 2 1
      205 GETUPVAL                         R16 1
      206 GETTABLEKS                       R16 R16 K21 ["useBinding"]
      208 GETIMPORT                        R17 K24 [UDim2.new]
      210 CALL                             R17 0 -1
      211 CALL                             R16 -1 2
      212 GETUPVAL                         R18 1
      213 GETTABLEKS                       R18 R18 K21 ["useBinding"]
      215 GETIMPORT                        R19 K28 [Enum.ScrollingDirection.XY]
      217 CALL                             R18 1 2
      218 GETUPVAL                         R20 1
      219 GETTABLEKS                       R20 R20 K5 ["useState"]
      221 LOADB                            R21 0
      222 CALL                             R20 1 2
      223 GETUPVAL                         R22 1
      224 GETTABLEKS                       R22 R22 K16 ["useRef"]
      226 LOADNIL                          R23
      227 CALL                             R22 1 1
      228 GETUPVAL                         R23 1
      229 GETTABLEKS                       R23 R23 K17 ["useEffect"]
      231 NEWCLOSURE                       R24 P8
      232 CAPTURE                          VAL R22
      233 CAPTURE                          VAL R0
      234 CAPTURE                          UPVAL U3
      235 CAPTURE                          UPVAL U8
      236 CAPTURE                          UPVAL U9
      237 CAPTURE                          VAL R16
      238 CAPTURE                          VAL R21
      239 CAPTURE                          VAL R19
      240 CAPTURE                          VAL R17
      241 NEWTABLE                         R25 0 1
      243 GETTABLEKS                       R26 R0 K29 ["expanded"]
      245 SETLIST                          R25 R26 1 [1]
      247 CALL                             R23 2 0
      248 GETUPVAL                         R23 1
      249 GETTABLEKS                       R23 R23 K14 ["useMemo"]
      251 NEWCLOSURE                       R24 P9
      252 CAPTURE                          VAL R16
      253 CAPTURE                          VAL R18
      254 CAPTURE                          UPVAL U0
      255 NEWTABLE                         R25 0 0
      257 CALL                             R23 2 1
      258 GETTABLEKS                       R24 R0 K11 ["toolUse"]
      260 JUMPIFNOT                        R24 ; [+3]
      261 GETTABLEKS                       R25 R0 K30 ["toolResult"]
      263 NOT                              R24 R25
      264 OR                               R25 R24 R3
      265 GETUPVAL                         R26 3
      266 GETTABLEKS                       R26 R26 K31 ["FFlagAssistantUseRemoteService"]
      268 JUMPIFNOT                        R26 ; [+13]
      269 LOADB                            R26 0
      270 GETTABLEKS                       R27 R0 K11 ["toolUse"]
      272 JUMPIFEQKNIL                     R27 ; [+9]
      274 GETUPVAL                         R26 10
      275 GETTABLEKS                       R26 R26 K32 ["isCloudTool"]
      277 GETTABLEKS                       R27 R0 K11 ["toolUse"]
      279 GETTABLEKS                       R27 R27 K33 ["name"]
      281 CALL                             R26 1 1
      282 GETUPVAL                         R27 11
      283 CALL                             R27 0 1
      284 GETUPVAL                         R28 12
      285 GETUPVAL                         R29 13
      286 GETTABLEKS                       R29 R29 K34 ["Root"]
      288 DUPTABLE                         R30 K37 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      289 GETTABLEKS                       R31 R0 K35 ["LayoutOrder"]
      291 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      293 GETTABLEKS                       R31 R0 K29 ["expanded"]
      295 SETTABLEKS                       R31 R30 K29 ["expanded"]
      297 GETTABLEKS                       R31 R0 K18 ["contentId"]
      299 SETTABLEKS                       R31 R30 K18 ["contentId"]
      301 GETTABLEKS                       R31 R0 K36 ["editThisContent"]
      303 SETTABLEKS                       R31 R30 K36 ["editThisContent"]
      305 DUPTABLE                         R31 K40 [{"Header", "Content"}]
      306 GETUPVAL                         R32 12
      307 GETUPVAL                         R33 13
      308 GETTABLEKS                       R33 R33 K38 ["Header"]
      310 DUPTABLE                         R34 K42 [{"LayoutOrder", "testId"}]
      311 MOVE                             R35 R27
      312 CALL                             R35 0 1
      313 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      315 GETUPVAL                         R35 14
      316 GETTABLEKS                       R35 R35 K43 ["RunCode"]
      318 GETTABLEKS                       R35 R35 K44 ["Expand"]
      320 SETTABLEKS                       R35 R34 K41 ["testId"]
      322 DUPTABLE                         R35 K47 [{"CloudIcon", "Text"}]
      323 MOVE                             R36 R26
      324 JUMPIFNOT                        R36 ; [+41]
      325 GETUPVAL                         R36 12
      326 GETUPVAL                         R37 15
      327 DUPTABLE                         R38 K50 [{"name", "size", "style", "LayoutOrder", "testId"}]
      328 GETUPVAL                         R39 0
      329 GETTABLEKS                       R39 R39 K51 ["Enums"]
      331 GETTABLEKS                       R39 R39 K52 ["IconName"]
      333 GETTABLEKS                       R39 R39 K53 ["Cloud"]
      335 SETTABLEKS                       R39 R38 K33 ["name"]
      337 GETUPVAL                         R39 0
      338 GETTABLEKS                       R39 R39 K51 ["Enums"]
      340 GETTABLEKS                       R39 R39 K54 ["IconSize"]
      342 GETTABLEKS                       R39 R39 K55 ["XSmall"]
      344 SETTABLEKS                       R39 R38 K48 ["size"]
      346 GETTABLEKS                       R39 R1 K56 ["Color"]
      348 GETTABLEKS                       R39 R39 K39 ["Content"]
      350 GETTABLEKS                       R39 R39 K57 ["Muted"]
      352 SETTABLEKS                       R39 R38 K49 ["style"]
      354 MOVE                             R39 R27
      355 CALL                             R39 0 1
      356 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      358 GETUPVAL                         R39 14
      359 GETTABLEKS                       R39 R39 K43 ["RunCode"]
      361 GETTABLEKS                       R39 R39 K45 ["CloudIcon"]
      363 SETTABLEKS                       R39 R38 K41 ["testId"]
      365 CALL                             R36 2 1
      366 SETTABLEKS                       R36 R35 K45 ["CloudIcon"]
      368 GETUPVAL                         R36 12
      369 GETUPVAL                         R37 16
      370 DUPTABLE                         R38 K60 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      371 GETTABLEKS                       R40 R0 K11 ["toolUse"]
      373 JUMPIF                           R40 ; [+3]
      374 GETTABLEKS                       R39 R15 K61 ["Generating"]
      376 JUMP                             ; [+6]
      377 JUMPIFNOT                        R25 ; [+3]
      378 GETTABLEKS                       R39 R15 K62 ["Running"]
      380 JUMP                             ; [+2]
      381 GETTABLEKS                       R39 R15 K63 ["Title"]
      383 SETTABLEKS                       R39 R38 K46 ["Text"]
      385 MOVE                             R39 R27
      386 CALL                             R39 0 1
      387 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      389 DUPTABLE                         R39 K65 [{"Shimmer"}]
      390 GETTABLEKS                       R41 R0 K11 ["toolUse"]
      392 JUMPIFNOT                        R41 ; [+2]
      393 MOVE                             R40 R25
      394 JUMPIFNOT                        R40 ; [+3]
      395 GETUPVAL                         R40 12
      396 GETUPVAL                         R41 17
      397 CALL                             R40 1 1
      398 SETTABLEKS                       R40 R39 K64 ["Shimmer"]
      400 CALL                             R36 3 1
      401 SETTABLEKS                       R36 R35 K46 ["Text"]
      403 CALL                             R32 3 1
      404 SETTABLEKS                       R32 R31 K38 ["Header"]
      406 GETUPVAL                         R32 12
      407 GETUPVAL                         R33 13
      408 GETTABLEKS                       R33 R33 K39 ["Content"]
      410 DUPTABLE                         R34 K67 [{["tag"] = "col fill size-0-0 auto-y radius-small bg-shift-300", ["LayoutOrder"]}]
      411 MOVE                             R35 R27
      412 CALL                             R35 0 1
      413 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      415 DUPTABLE                         R35 K70 [{"Header", "Divider", "CodeView"}]
      416 GETUPVAL                         R36 12
      417 GETUPVAL                         R37 18
      418 DUPTABLE                         R38 K72 [{["tag"] = "row align-x-right gap-none size-full-0 auto-y padding-xsmall", ["LayoutOrder"]}]
      419 MOVE                             R39 R27
      420 CALL                             R39 0 1
      421 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      423 DUPTABLE                         R39 K76 [{"CopyButton", "RunButton", "StopButton"}]
      424 GETUPVAL                         R41 3
      425 GETTABLEKS                       R41 R41 K7 ["FFlagAssistantSplitToolsAndWidgets"]
      427 JUMPIFNOT                        R41 ; [+3]
      428 GETTABLEKS                       R40 R0 K30 ["toolResult"]
      430 JUMPIFNOT                        R40 ; [+70]
      431 GETUPVAL                         R41 3
      432 GETTABLEKS                       R41 R41 K77 ["FFlagAssistantUseBuilderIcons"]
      434 JUMPIFNOT                        R41 ; [+45]
      435 GETUPVAL                         R40 12
      436 GETUPVAL                         R41 19
      437 DUPTABLE                         R42 K81 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      438 GETUPVAL                         R43 0
      439 GETTABLEKS                       R43 R43 K51 ["Enums"]
      441 GETTABLEKS                       R43 R43 K52 ["IconName"]
      443 GETTABLEKS                       R43 R43 K82 ["TwoStackedSquares"]
      445 SETTABLEKS                       R43 R42 K78 ["icon"]
      447 GETUPVAL                         R43 0
      448 GETTABLEKS                       R43 R43 K51 ["Enums"]
      450 GETTABLEKS                       R43 R43 K83 ["InputSize"]
      452 GETTABLEKS                       R43 R43 K55 ["XSmall"]
      454 SETTABLEKS                       R43 R42 K48 ["size"]
      456 GETUPVAL                         R43 0
      457 GETTABLEKS                       R43 R43 K51 ["Enums"]
      459 GETTABLEKS                       R43 R43 K84 ["ButtonVariant"]
      461 GETTABLEKS                       R43 R43 K85 ["Utility"]
      463 SETTABLEKS                       R43 R42 K79 ["variant"]
      465 SETTABLEKS                       R11 R42 K80 ["onActivated"]
      467 MOVE                             R43 R27
      468 CALL                             R43 0 1
      469 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      471 GETUPVAL                         R43 14
      472 GETTABLEKS                       R43 R43 K43 ["RunCode"]
      474 GETTABLEKS                       R43 R43 K86 ["Copy"]
      476 SETTABLEKS                       R43 R42 K41 ["testId"]
      478 CALL                             R40 2 1
      479 JUMP                             ; [+21]
      480 GETUPVAL                         R40 12
      481 GETUPVAL                         R41 20
      482 DUPTABLE                         R42 K90 [{["icon"], ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["LayoutOrder"], ["testId"]}]
      483 GETUPVAL                         R44 21
      484 GETTABLE                         R43 R44 R2
      485 SETTABLEKS                       R43 R42 K78 ["icon"]
      487 SETTABLEKS                       R11 R42 K80 ["onActivated"]
      489 MOVE                             R43 R27
      490 CALL                             R43 0 1
      491 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      493 GETUPVAL                         R43 14
      494 GETTABLEKS                       R43 R43 K43 ["RunCode"]
      496 GETTABLEKS                       R43 R43 K86 ["Copy"]
      498 SETTABLEKS                       R43 R42 K41 ["testId"]
      500 CALL                             R40 2 1
      501 SETTABLEKS                       R40 R39 K73 ["CopyButton"]
      503 NOT                              R40 R26
      504 JUMPIFNOT                        R40 ; [+75]
      505 GETUPVAL                         R41 3
      506 GETTABLEKS                       R41 R41 K7 ["FFlagAssistantSplitToolsAndWidgets"]
      508 JUMPIFNOT                        R41 ; [+3]
      509 GETTABLEKS                       R40 R0 K30 ["toolResult"]
      511 JUMPIFNOT                        R40 ; [+68]
      512 NOT                              R40 R25
      513 JUMPIFNOT                        R40 ; [+66]
      514 GETUPVAL                         R41 3
      515 GETTABLEKS                       R41 R41 K77 ["FFlagAssistantUseBuilderIcons"]
      517 JUMPIFNOT                        R41 ; [+45]
      518 GETUPVAL                         R40 12
      519 GETUPVAL                         R41 19
      520 DUPTABLE                         R42 K81 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      521 GETUPVAL                         R43 0
      522 GETTABLEKS                       R43 R43 K51 ["Enums"]
      524 GETTABLEKS                       R43 R43 K52 ["IconName"]
      526 GETTABLEKS                       R43 R43 K91 ["PlayLarge"]
      528 SETTABLEKS                       R43 R42 K78 ["icon"]
      530 GETUPVAL                         R43 0
      531 GETTABLEKS                       R43 R43 K51 ["Enums"]
      533 GETTABLEKS                       R43 R43 K83 ["InputSize"]
      535 GETTABLEKS                       R43 R43 K55 ["XSmall"]
      537 SETTABLEKS                       R43 R42 K48 ["size"]
      539 GETUPVAL                         R43 0
      540 GETTABLEKS                       R43 R43 K51 ["Enums"]
      542 GETTABLEKS                       R43 R43 K84 ["ButtonVariant"]
      544 GETTABLEKS                       R43 R43 K85 ["Utility"]
      546 SETTABLEKS                       R43 R42 K79 ["variant"]
      548 SETTABLEKS                       R13 R42 K80 ["onActivated"]
      550 MOVE                             R43 R27
      551 CALL                             R43 0 1
      552 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      554 GETUPVAL                         R43 14
      555 GETTABLEKS                       R43 R43 K43 ["RunCode"]
      557 GETTABLEKS                       R43 R43 K92 ["Run"]
      559 SETTABLEKS                       R43 R42 K41 ["testId"]
      561 CALL                             R40 2 1
      562 JUMP                             ; [+17]
      563 GETUPVAL                         R40 12
      564 GETUPVAL                         R41 20
      565 DUPTABLE                         R42 K94 [{["icon"] = "icons/controls/media-play-small", ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["LayoutOrder"], ["testId"]}]
      566 SETTABLEKS                       R13 R42 K80 ["onActivated"]
      568 MOVE                             R43 R27
      569 CALL                             R43 0 1
      570 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      572 GETUPVAL                         R43 14
      573 GETTABLEKS                       R43 R43 K43 ["RunCode"]
      575 GETTABLEKS                       R43 R43 K92 ["Run"]
      577 SETTABLEKS                       R43 R42 K41 ["testId"]
      579 CALL                             R40 2 1
      580 SETTABLEKS                       R40 R39 K74 ["RunButton"]
      582 NOT                              R40 R26
      583 JUMPIFNOT                        R40 ; [+75]
      584 GETUPVAL                         R41 3
      585 GETTABLEKS                       R41 R41 K7 ["FFlagAssistantSplitToolsAndWidgets"]
      587 JUMPIFNOT                        R41 ; [+3]
      588 GETTABLEKS                       R40 R0 K30 ["toolResult"]
      590 JUMPIFNOT                        R40 ; [+68]
      591 MOVE                             R40 R3
      592 JUMPIFNOT                        R40 ; [+66]
      593 GETUPVAL                         R41 3
      594 GETTABLEKS                       R41 R41 K77 ["FFlagAssistantUseBuilderIcons"]
      596 JUMPIFNOT                        R41 ; [+45]
      597 GETUPVAL                         R40 12
      598 GETUPVAL                         R41 19
      599 DUPTABLE                         R42 K81 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      600 GETUPVAL                         R43 0
      601 GETTABLEKS                       R43 R43 K51 ["Enums"]
      603 GETTABLEKS                       R43 R43 K52 ["IconName"]
      605 GETTABLEKS                       R43 R43 K95 ["StopSmall"]
      607 SETTABLEKS                       R43 R42 K78 ["icon"]
      609 GETUPVAL                         R43 0
      610 GETTABLEKS                       R43 R43 K51 ["Enums"]
      612 GETTABLEKS                       R43 R43 K83 ["InputSize"]
      614 GETTABLEKS                       R43 R43 K55 ["XSmall"]
      616 SETTABLEKS                       R43 R42 K48 ["size"]
      618 GETUPVAL                         R43 0
      619 GETTABLEKS                       R43 R43 K51 ["Enums"]
      621 GETTABLEKS                       R43 R43 K84 ["ButtonVariant"]
      623 GETTABLEKS                       R43 R43 K85 ["Utility"]
      625 SETTABLEKS                       R43 R42 K79 ["variant"]
      627 SETTABLEKS                       R14 R42 K80 ["onActivated"]
      629 MOVE                             R43 R27
      630 CALL                             R43 0 1
      631 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      633 GETUPVAL                         R43 14
      634 GETTABLEKS                       R43 R43 K43 ["RunCode"]
      636 GETTABLEKS                       R43 R43 K96 ["Stop"]
      638 SETTABLEKS                       R43 R42 K41 ["testId"]
      640 CALL                             R40 2 1
      641 JUMP                             ; [+17]
      642 GETUPVAL                         R40 12
      643 GETUPVAL                         R41 20
      644 DUPTABLE                         R42 K98 [{["icon"] = "icons/controls/mediaStop_small", ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["onActivated"], ["LayoutOrder"], ["testId"]}]
      645 SETTABLEKS                       R14 R42 K80 ["onActivated"]
      647 MOVE                             R43 R27
      648 CALL                             R43 0 1
      649 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      651 GETUPVAL                         R43 14
      652 GETTABLEKS                       R43 R43 K43 ["RunCode"]
      654 GETTABLEKS                       R43 R43 K96 ["Stop"]
      656 SETTABLEKS                       R43 R42 K41 ["testId"]
      658 CALL                             R40 2 1
      659 SETTABLEKS                       R40 R39 K75 ["StopButton"]
      661 CALL                             R36 3 1
      662 SETTABLEKS                       R36 R35 K38 ["Header"]
      664 GETUPVAL                         R36 12
      665 GETUPVAL                         R37 22
      666 DUPTABLE                         R38 K99 [{"LayoutOrder"}]
      667 MOVE                             R39 R27
      668 CALL                             R39 0 1
      669 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      671 CALL                             R36 2 1
      672 SETTABLEKS                       R36 R35 K68 ["Divider"]
      674 GETUPVAL                         R36 12
      675 GETUPVAL                         R37 23
      676 DUPTABLE                         R38 K104 [{"scroll", "layout", "LayoutOrder", "Size", "scrollingFrameRef"}]
      677 SETTABLEKS                       R23 R38 K100 ["scroll"]
      679 GETUPVAL                         R39 24
      680 SETTABLEKS                       R39 R38 K101 ["layout"]
      682 MOVE                             R39 R27
      683 CALL                             R39 0 1
      684 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      686 NEWCLOSURE                       R41 P10
      687 CAPTURE                          VAL R20
      688 CAPTURE                          VAL R18
      689 CAPTURE                          VAL R1
      690 NAMECALL                         R39 R16 K105 ["map"]
      692 CALL                             R39 2 1
      693 SETTABLEKS                       R39 R38 K102 ["Size"]
      695 SETTABLEKS                       R22 R38 K103 ["scrollingFrameRef"]
      697 DUPTABLE                         R39 K107 [{"MarkdownText"}]
      698 GETUPVAL                         R40 12
      699 GETUPVAL                         R41 25
      700 DUPTABLE                         R42 K110 [{"markdown", "messageId"}]
      701 GETUPVAL                         R44 3
      702 GETTABLEKS                       R44 R44 K7 ["FFlagAssistantSplitToolsAndWidgets"]
      704 JUMPIFNOT                        R44 ; [+5]
      705 LOADK                            R44 K111 ["```lua\n"]
      706 MOVE                             R45 R9
      707 LOADK                            R46 K112 ["\n```"]
      708 CONCAT                           R43 R44 R46
      709 JUMP                             ; [+1]
      710 MOVE                             R43 R10
      711 SETTABLEKS                       R43 R42 K108 ["markdown"]
      713 GETTABLEKS                       R43 R0 K109 ["messageId"]
      715 SETTABLEKS                       R43 R42 K109 ["messageId"]
      717 CALL                             R40 2 1
      718 SETTABLEKS                       R40 R39 K106 ["MarkdownText"]
      720 CALL                             R36 3 1
      721 SETTABLEKS                       R36 R35 K69 ["CodeView"]
      723 CALL                             R32 3 1
      724 SETTABLEKS                       R32 R31 K39 ["Content"]
      726 CALL                             R28 3 -1
      727 CLOSEUPVALS                      R9
      728 RETURN                           R28 -1

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
       88 GETTABLEKS                       R13 R0 K19 ["Util"]
       90 GETTABLEKS                       R13 R13 K23 ["Serializer"]
       92 GETTABLEKS                       R13 R13 K24 ["SerializerTypes"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K6 ["Components"]
       99 GETTABLEKS                       R14 R14 K25 ["ShimmerGradient"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K19 ["Util"]
      106 GETTABLEKS                       R15 R15 K26 ["TestIds"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K27 ["Resources"]
      113 GETTABLEKS                       R16 R16 K28 ["Localization"]
      115 GETTABLEKS                       R16 R16 K29 ["Translator"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K30 ["Types"]
      122 CALL                             R16 1 1
      123 GETTABLEKS                       R17 R2 K31 ["ToolNaming"]
      125 GETTABLEKS                       R18 R7 K32 ["Divider"]
      127 GETTABLEKS                       R19 R7 K33 ["Icon"]
      129 GETTABLEKS                       R20 R7 K34 ["IconButton"]
      131 GETTABLEKS                       R21 R7 K35 ["ScrollView"]
      133 GETTABLEKS                       R22 R7 K36 ["Text"]
      135 GETTABLEKS                       R23 R7 K37 ["View"]
      137 GETTABLEKS                       R24 R11 K38 ["createNextOrder"]
      139 GETTABLEKS                       R25 R10 K39 ["createElement"]
      141 DUPTABLE                         R26 K44 [{["Dark"] = "rbxasset://studio_svg_textures/Shared/Clipboard/Dark/Standard/Copy.png", ["Light"] = "rbxasset://studio_svg_textures/Shared/Clipboard/Light/Standard/Copy.png"}]
      142 DUPTABLE                         R27 K46 [{"FillDirection"}]
      143 GETIMPORT                        R28 K49 [Enum.FillDirection.Vertical]
      145 SETTABLEKS                       R28 R27 K45 ["FillDirection"]
      147 DUPTABLE                         R28 K58 [{["loadAndRunCodeAsync"] = "ExecuteLuauTool_loadAndRunCodeAsync", ["stopCode"] = "ExecuteLuauTool_stopCode", ["bindCodeId"] = "ExecuteLuauTool_bindCodeId", ["codeRunStatus"] = "ExecuteLuauTool_codeRunStatus"}]
      148 DUPCLOSURE                       R29 K59 [PROTO_0]
      149 CAPTURE                          VAL R6
      150 DUPCLOSURE                       R30 K60 [PROTO_1]
      151 CAPTURE                          VAL R6
      152 DUPCLOSURE                       R31 K61 [PROTO_21]
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R28
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R30
      162 CAPTURE                          VAL R29
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R24
      165 CAPTURE                          VAL R25
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R22
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R23
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R26
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R27
      178 CAPTURE                          VAL R8
      179 DUPTABLE                         R32 K64 [{"toMeta", "fromMeta"}]
      180 DUPCLOSURE                       R33 K65 [PROTO_22]
      181 SETTABLEKS                       R33 R32 K62 ["toMeta"]
      183 DUPCLOSURE                       R33 K66 [PROTO_23]
      184 SETTABLEKS                       R33 R32 K63 ["fromMeta"]
      186 DUPTABLE                         R33 K74 [{["Type"] = "RunCode", ["ContentWidget"], ["Serialization"], ["StreamToolUse"] = True, ["NETWORK_KEYS"]}]
      187 GETTABLEKS                       R34 R10 K75 ["memo"]
      189 MOVE                             R35 R31
      190 CALL                             R34 1 1
      191 SETTABLEKS                       R34 R33 K69 ["ContentWidget"]
      193 GETTABLEKS                       R35 R6 K76 ["FFlagAssistantSplitToolsAndWidgets"]
      195 JUMPIFNOT                        R35 ; [+2]
      196 LOADNIL                          R34
      197 JUMP                             ; [+1]
      198 MOVE                             R34 R32
      199 SETTABLEKS                       R34 R33 K70 ["Serialization"]
      201 SETTABLEKS                       R28 R33 K73 ["NETWORK_KEYS"]
      203 RETURN                           R33 1
