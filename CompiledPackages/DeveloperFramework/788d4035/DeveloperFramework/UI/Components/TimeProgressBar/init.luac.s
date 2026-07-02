PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%02i:%02i"]
        3 DIVK                             R4 R0 K4 [60]
        4 MODK                             R3 R4 K4 [60]
        5 MODK                             R4 R0 K4 [60]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateConnection"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["updateConnection"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["updateConnection"]
       14 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["TotalTime"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["TotalTime prop must be specified"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R4 R1 K0 ["TotalTime"]
       10 LOADN                            R5 0
       11 JUMPIFLE                         R5 R4 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       17 LOADK                            R4 K4 ["TotalTime must not be negative"]
       18 GETIMPORT                        R2 K3 [assert]
       20 CALL                             R2 2 0
       21 DUPTABLE                         R4 K7 [{["currentTime"] = 0}]
       22 NAMECALL                         R2 R0 K8 ["setState"]
       24 CALL                             R2 2 0
       25 LOADB                            R2 0
       26 SETTABLEKS                       R2 R0 K9 ["isMounted"]
       28 LOADB                            R2 0
       29 SETTABLEKS                       R2 R0 K10 ["overTime"]
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R2 R0 K11 ["disconnectUpdateConnection"]
       35 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isMounted"]
        3 JUMPIF                           R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["disconnectUpdateConnection"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K2 ["props"]
       12 GETIMPORT                        R2 K4 [tick]
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["startTime"]
       18 SUB                              R1 R2 R3
       19 GETTABLEKS                       R2 R0 K6 ["TotalTime"]
       21 JUMPIFNOTLT                      R2 R1 ; [+21]
       23 GETUPVAL                         R2 1
       24 CALL                             R2 0 1
       25 JUMPIFNOT                        R2 ; [+11]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K2 ["props"]
       29 GETTABLEKS                       R2 R2 K7 ["CanGoOverTime"]
       31 JUMPIFNOT                        R2 ; [+5]
       32 GETUPVAL                         R2 0
       33 LOADB                            R3 1
       34 SETTABLEKS                       R3 R2 K8 ["overTime"]
       36 JUMP                             ; [+6]
       37 GETTABLEKS                       R1 R0 K6 ["TotalTime"]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K1 ["disconnectUpdateConnection"]
       42 CALL                             R2 0 0
       43 GETUPVAL                         R2 0
       44 DUPTABLE                         R4 K10 [{"currentTime"}]
       45 SETTABLEKS                       R1 R4 K9 ["currentTime"]
       47 NAMECALL                         R2 R2 K11 ["setState"]
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["StartTime"]
        7 JUMPIFEQKNIL                     R1 ; [+8]
        9 GETTABLEKS                       R1 R0 K1 ["props"]
       11 GETTABLEKS                       R1 R1 K2 ["StartTime"]
       13 SETTABLEKS                       R1 R0 K3 ["startTime"]
       15 JUMP                             ; [+5]
       16 GETIMPORT                        R1 K5 [tick]
       18 CALL                             R1 0 1
       19 SETTABLEKS                       R1 R0 K3 ["startTime"]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K6 ["RenderStepped"]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U1
       27 NAMECALL                         R1 R1 K7 ["Connect"]
       29 CALL                             R1 2 1
       30 SETTABLEKS                       R1 R0 K8 ["updateConnection"]
       32 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["disconnectUpdateConnection"]
        2 CALL                             R1 0 0
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["isMounted"]
        6 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 LOADN                            R3 0
        5 GETTABLEKS                       R4 R1 K2 ["TotalTime"]
        7 LOADN                            R5 0
        8 JUMPIFNOTLT                      R5 R4 ; [+8]
       10 GETTABLEKS                       R4 R0 K3 ["state"]
       12 GETTABLEKS                       R4 R4 K4 ["currentTime"]
       14 GETTABLEKS                       R5 R1 K2 ["TotalTime"]
       16 DIV                              R3 R4 R5
       17 GETUPVAL                         R4 0
       18 MOVE                             R5 R1
       19 MOVE                             R6 R2
       20 CALL                             R4 2 1
       21 GETIMPORT                        R5 K7 [UDim2.fromOffset]
       23 GETTABLEKS                       R6 R2 K8 ["LabelWidth"]
       25 LOADN                            R7 0
       26 CALL                             R5 2 1
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K9 ["createElement"]
       30 GETUPVAL                         R7 2
       31 DUPTABLE                         R8 K15 [{"LayoutOrder", "Layout", "HorizontalAlignment", "Size", "Spacing"}]
       32 GETTABLEKS                       R9 R1 K10 ["LayoutOrder"]
       34 SETTABLEKS                       R9 R8 K10 ["LayoutOrder"]
       36 GETIMPORT                        R9 K19 [Enum.FillDirection.Horizontal]
       38 SETTABLEKS                       R9 R8 K11 ["Layout"]
       40 GETIMPORT                        R9 K21 [Enum.HorizontalAlignment.Left]
       42 SETTABLEKS                       R9 R8 K12 ["HorizontalAlignment"]
       44 SETTABLEKS                       R4 R8 K13 ["Size"]
       46 GETTABLEKS                       R9 R2 K14 ["Spacing"]
       48 SETTABLEKS                       R9 R8 K14 ["Spacing"]
       50 DUPTABLE                         R9 K24 [{"CurrentTime", "LoadingBar", "TotalTime"}]
       51 GETUPVAL                         R10 1
       52 GETTABLEKS                       R10 R10 K9 ["createElement"]
       54 GETUPVAL                         R11 3
       55 DUPTABLE                         R12 K29 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"], ["Text"], ["TextXAlignment"]}]
       56 GETIMPORT                        R13 K31 [Enum.AutomaticSize.Y]
       58 SETTABLEKS                       R13 R12 K25 ["AutomaticSize"]
       60 SETTABLEKS                       R5 R12 K13 ["Size"]
       62 GETTABLEKS                       R14 R0 K3 ["state"]
       64 GETTABLEKS                       R14 R14 K4 ["currentTime"]
       66 GETIMPORT                        R15 K34 [string.format]
       68 LOADK                            R16 K35 ["%02i:%02i"]
       69 DIVK                             R18 R14 K36 [60]
       70 MODK                             R17 R18 K36 [60]
       71 MODK                             R18 R14 K36 [60]
       72 CALL                             R15 3 1
       73 MOVE                             R13 R15
       74 SETTABLEKS                       R13 R12 K27 ["Text"]
       76 GETIMPORT                        R13 K38 [Enum.TextXAlignment.Right]
       78 SETTABLEKS                       R13 R12 K28 ["TextXAlignment"]
       80 CALL                             R10 2 1
       81 SETTABLEKS                       R10 R9 K22 ["CurrentTime"]
       83 GETUPVAL                         R10 1
       84 GETTABLEKS                       R10 R10 K9 ["createElement"]
       86 GETUPVAL                         R11 4
       87 DUPTABLE                         R12 K42 [{["LayoutOrder"] = 2, ["Progress"], ["OverTime"], ["Size"]}]
       88 SETTABLEKS                       R3 R12 K40 ["Progress"]
       90 GETUPVAL                         R14 5
       91 CALL                             R14 0 1
       92 JUMPIFNOT                        R14 ; [+6]
       93 GETTABLEKS                       R14 R1 K43 ["CanGoOverTime"]
       95 JUMPIFNOT                        R14 ; [+3]
       96 GETTABLEKS                       R13 R0 K44 ["overTime"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R13
      100 SETTABLEKS                       R13 R12 K41 ["OverTime"]
      102 GETTABLEKS                       R13 R2 K45 ["LoadingBarSize"]
      104 SETTABLEKS                       R13 R12 K13 ["Size"]
      106 CALL                             R10 2 1
      107 SETTABLEKS                       R10 R9 K23 ["LoadingBar"]
      109 GETUPVAL                         R10 1
      110 GETTABLEKS                       R10 R10 K9 ["createElement"]
      112 GETUPVAL                         R11 3
      113 DUPTABLE                         R12 K47 [{["AutomaticSize"], ["LayoutOrder"] = 3, ["Size"], ["Text"], ["TextXAlignment"]}]
      114 GETIMPORT                        R13 K31 [Enum.AutomaticSize.Y]
      116 SETTABLEKS                       R13 R12 K25 ["AutomaticSize"]
      118 SETTABLEKS                       R5 R12 K13 ["Size"]
      120 GETTABLEKS                       R14 R1 K2 ["TotalTime"]
      122 GETIMPORT                        R15 K34 [string.format]
      124 LOADK                            R16 K35 ["%02i:%02i"]
      125 DIVK                             R18 R14 K36 [60]
      126 MODK                             R17 R18 K36 [60]
      127 MODK                             R18 R14 K36 [60]
      128 CALL                             R15 3 1
      129 MOVE                             R13 R15
      130 SETTABLEKS                       R13 R12 K27 ["Text"]
      132 GETIMPORT                        R13 K48 [Enum.TextXAlignment.Left]
      134 SETTABLEKS                       R13 R12 K28 ["TextXAlignment"]
      136 CALL                             R10 2 1
      137 SETTABLEKS                       R10 R9 K2 ["TotalTime"]
      139 CALL                             R6 3 -1
      140 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R3 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R4 R1 K6 ["UI"]
       26 GETTABLEKS                       R4 R4 K12 ["ContextServices"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K13 ["withContext"]
       31 GETIMPORT                        R5 K10 [require]
       33 GETTABLEKS                       R6 R1 K6 ["UI"]
       35 GETTABLEKS                       R6 R6 K14 ["Components"]
       37 GETTABLEKS                       R6 R6 K15 ["Pane"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R1 K6 ["UI"]
       44 GETTABLEKS                       R7 R7 K14 ["Components"]
       46 GETTABLEKS                       R7 R7 K16 ["TextLabel"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R1 K6 ["UI"]
       53 GETTABLEKS                       R8 R8 K14 ["Components"]
       55 GETTABLEKS                       R8 R8 K17 ["LoadingBar"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R1 K18 ["Util"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R8 R8 K19 ["Typecheck"]
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R1 K18 ["Util"]
       69 GETTABLEKS                       R10 R10 K20 ["getSizeFromPropsAndStyle"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R2 K21 ["PureComponent"]
       74 LOADK                            R12 K22 ["TimeProgressBar"]
       75 NAMECALL                         R10 R10 K23 ["extend"]
       77 CALL                             R10 2 1
       78 GETTABLEKS                       R11 R8 K24 ["wrap"]
       80 MOVE                             R12 R10
       81 GETIMPORT                        R13 K5 [script]
       83 CALL                             R11 2 0
       84 GETIMPORT                        R11 K10 [require]
       86 GETTABLEKS                       R12 R1 K25 ["SharedFlags"]
       88 GETTABLEKS                       R12 R12 K26 ["getFFlagDevFrameworkLoadingBarAddOvertime"]
       90 CALL                             R11 1 1
       91 DUPCLOSURE                       R12 K27 [PROTO_0]
       92 DUPCLOSURE                       R13 K28 [PROTO_2]
       93 SETTABLEKS                       R13 R10 K29 ["init"]
       95 DUPCLOSURE                       R13 K30 [PROTO_4]
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R11
       98 SETTABLEKS                       R13 R10 K31 ["didMount"]
      100 DUPCLOSURE                       R13 K32 [PROTO_5]
      101 SETTABLEKS                       R13 R10 K33 ["willUnmount"]
      103 DUPCLOSURE                       R13 K34 [PROTO_6]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R11
      110 SETTABLEKS                       R13 R10 K35 ["render"]
      112 MOVE                             R13 R4
      113 DUPTABLE                         R14 K37 [{"Stylizer"}]
      114 GETTABLEKS                       R15 R3 K36 ["Stylizer"]
      116 SETTABLEKS                       R15 R14 K36 ["Stylizer"]
      118 CALL                             R13 1 1
      119 MOVE                             R14 R10
      120 CALL                             R13 1 1
      121 MOVE                             R10 R13
      122 RETURN                           R10 1
