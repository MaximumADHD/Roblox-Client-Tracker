PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%0d%%"]
        3 MULK                             R3 R0 K4 [100]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 SUB                              R0 R1 R2
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R4 2
        7 DIV                              R3 R0 R4
        8 GETUPVAL                         R4 3
        9 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       11 GETIMPORT                        R2 K5 [math.min]
       13 CALL                             R2 2 1
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["RenderStepped"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U1
       13 NAMECALL                         R0 R0 K1 ["Connect"]
       15 CALL                             R0 2 1
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K1 ["startProgress"]
        2 ORK                              R1 R2 K0 [0]
        3 GETTABLEKS                       R3 R0 K3 ["holdProgress"]
        5 ORK                              R2 R3 K2 [1]
        6 GETTABLEKS                       R3 R0 K4 ["estimatedTotalTime"]
        8 LOADB                            R5 0
        9 LOADN                            R6 0
       10 JUMPIFNOTLE                      R6 R1 ; [+9]
       12 LOADB                            R5 0
       13 JUMPIFNOTLE                      R1 R2 ; [+6]
       15 LOADN                            R6 1
       16 JUMPIFLE                         R2 R6 ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       22 LOADK                            R6 K5 ["start and hold progress values are invalid!"]
       23 GETIMPORT                        R4 K7 [assert]
       25 CALL                             R4 2 0
       26 GETIMPORT                        R5 K10 [os.clock]
       28 CALL                             R5 0 1
       29 MUL                              R6 R1 R3
       30 SUB                              R4 R5 R6
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K11 ["useState"]
       34 MOVE                             R6 R1
       35 CALL                             R5 1 2
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K12 ["useEffect"]
       39 NEWCLOSURE                       R8 P0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R3
       46 NEWTABLE                         R9 0 2
       48 MOVE                             R10 R1
       49 MOVE                             R11 R2
       50 SETLIST                          R9 R10 2 [1]
       52 CALL                             R7 2 0
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K13 ["createElement"]
       56 GETUPVAL                         R8 2
       57 DUPTABLE                         R9 K19 [{"LayoutOrder", "Layout", "HorizontalAlignment", "Size", "Spacing"}]
       58 GETTABLEKS                       R10 R0 K14 ["LayoutOrder"]
       60 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
       62 GETIMPORT                        R10 K23 [Enum.FillDirection.Horizontal]
       64 SETTABLEKS                       R10 R9 K15 ["Layout"]
       66 GETIMPORT                        R10 K25 [Enum.HorizontalAlignment.Center]
       68 SETTABLEKS                       R10 R9 K16 ["HorizontalAlignment"]
       70 GETIMPORT                        R10 K28 [UDim2.new]
       72 LOADN                            R11 1
       73 LOADN                            R12 0
       74 LOADN                            R13 0
       75 LOADN                            R14 32
       76 CALL                             R10 4 1
       77 SETTABLEKS                       R10 R9 K17 ["Size"]
       79 LOADN                            R10 10
       80 SETTABLEKS                       R10 R9 K18 ["Spacing"]
       82 DUPTABLE                         R10 K31 [{"LoadingBar", "ProgressPercentage"}]
       83 GETUPVAL                         R11 0
       84 GETTABLEKS                       R11 R11 K13 ["createElement"]
       86 GETUPVAL                         R12 3
       87 DUPTABLE                         R13 K33 [{"LayoutOrder", "Progress", "Size"}]
       88 LOADN                            R14 1
       89 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
       91 SETTABLEKS                       R5 R13 K32 ["Progress"]
       93 GETIMPORT                        R14 K28 [UDim2.new]
       95 LOADN                            R15 1
       96 GETTABLEKS                       R17 R0 K34 ["displayPercentLabel"]
       98 JUMPIFNOT                        R17 ; [+2]
       99 LOADN                            R16 206
      100 JUMP                             ; [+1]
      101 LOADN                            R16 0
      102 LOADN                            R17 0
      103 LOADN                            R18 12
      104 CALL                             R14 4 1
      105 SETTABLEKS                       R14 R13 K17 ["Size"]
      107 CALL                             R11 2 1
      108 SETTABLEKS                       R11 R10 K29 ["LoadingBar"]
      110 GETTABLEKS                       R12 R0 K34 ["displayPercentLabel"]
      112 JUMPIFNOT                        R12 ; [+32]
      113 GETUPVAL                         R11 0
      114 GETTABLEKS                       R11 R11 K13 ["createElement"]
      116 GETUPVAL                         R12 4
      117 DUPTABLE                         R13 K38 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextXAlignment"}]
      118 GETIMPORT                        R14 K40 [Enum.AutomaticSize.Y]
      120 SETTABLEKS                       R14 R13 K35 ["AutomaticSize"]
      122 LOADN                            R14 2
      123 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
      125 GETIMPORT                        R14 K42 [UDim2.fromOffset]
      127 LOADN                            R15 40
      128 LOADN                            R16 0
      129 CALL                             R14 2 1
      130 SETTABLEKS                       R14 R13 K17 ["Size"]
      132 GETIMPORT                        R14 K45 [string.format]
      134 LOADK                            R15 K46 ["%0d%%"]
      135 MULK                             R16 R5 K47 [100]
      136 CALL                             R14 2 1
      137 SETTABLEKS                       R14 R13 K36 ["Text"]
      139 GETIMPORT                        R14 K49 [Enum.TextXAlignment.Left]
      141 SETTABLEKS                       R14 R13 K37 ["TextXAlignment"]
      143 CALL                             R11 2 1
      144 JUMP                             ; [+1]
      145 LOADNIL                          R11
      146 SETTABLEKS                       R11 R10 K30 ["ProgressPercentage"]
      148 CALL                             R7 3 -1
      149 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R2 K13 ["UI"]
       29 GETTABLEKS                       R5 R4 K14 ["LoadingBar"]
       31 GETTABLEKS                       R6 R4 K15 ["Pane"]
       33 GETTABLEKS                       R7 R4 K16 ["TextLabel"]
       35 DUPCLOSURE                       R8 K17 [PROTO_0]
       36 DUPCLOSURE                       R9 K18 [PROTO_4]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R7
       42 RETURN                           R9 1
