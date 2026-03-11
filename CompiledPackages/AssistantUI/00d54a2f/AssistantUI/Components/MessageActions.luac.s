PROTO_0:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 LOADK                            R1 K3 [0.5]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GuiState"]
        3 LOADB                            R1 1
        4 GETIMPORT                        R2 K3 [Enum.GuiState.Hover]
        6 JUMPIFEQ                         R0 R2 ; [+7]
        8 GETIMPORT                        R2 K5 [Enum.GuiState.Press]
       10 JUMPIFEQ                         R0 R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 GETUPVAL                         R2 1
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 LOADK                            R4 K1 ["GuiState"]
        9 NAMECALL                         R2 R0 K2 ["GetPropertyChangedSignal"]
       11 CALL                             R2 2 1
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R2 K3 ["Connect"]
       15 CALL                             R2 2 1
       16 GETTABLEKS                       R3 R0 K1 ["GuiState"]
       18 LOADB                            R4 1
       19 GETIMPORT                        R5 K6 [Enum.GuiState.Hover]
       21 JUMPIFEQ                         R3 R5 ; [+7]
       23 GETIMPORT                        R5 K8 [Enum.GuiState.Press]
       25 JUMPIFEQ                         R3 R5 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 GETUPVAL                         R5 1
       30 MOVE                             R6 R4
       31 CALL                             R5 1 0
       32 NEWCLOSURE                       R3 P1
       33 CAPTURE                          VAL R2
       34 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["useRef"]
        9 LOADNIL                          R3
       10 CALL                             R2 1 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K3 ["useState"]
       14 LOADB                            R4 0
       15 CALL                             R3 1 2
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K4 ["useAsync"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R7 0 1
       23 MOVE                             R8 R3
       24 SETLIST                          R7 R8 1 [1]
       26 CALL                             R5 2 1
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R6 R7 K5 ["useEffect"]
       30 NEWCLOSURE                       R7 P1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R4
       33 NEWTABLE                         R8 0 1
       35 GETTABLEKS                       R9 R2 K6 ["current"]
       37 SETLIST                          R8 R9 1 [1]
       39 CALL                             R6 2 0
       40 LOADB                            R6 0
       41 GETTABLEKS                       R7 R5 K7 ["status"]
       43 JUMPIFNOTEQKS                    R7 K8 ["ok"] ; [+3]
       45 GETTABLEKS                       R6 R5 K9 ["value"]
       47 GETUPVAL                         R7 3
       48 GETUPVAL                         R9 1
       49 GETTABLEKS                       R8 R9 K10 ["Fragment"]
       51 LOADNIL                          R9
       52 NEWTABLE                         R10 2 0
       54 LOADK                            R12 K11 ["Button%*"]
       55 GETTABLEKS                       R14 R0 K12 ["name"]
       57 NAMECALL                         R12 R12 K13 ["format"]
       59 CALL                             R12 2 1
       60 MOVE                             R11 R12
       61 GETTABLEKS                       R12 R0 K14 ["renderAnchor"]
       63 DUPTABLE                         R13 K17 [{"ref", "layoutOrder"}]
       64 SETTABLEKS                       R2 R13 K15 ["ref"]
       66 GETTABLEKS                       R14 R0 K18 ["LayoutOrder"]
       68 SETTABLEKS                       R14 R13 K16 ["layoutOrder"]
       70 CALL                             R12 1 1
       71 SETTABLE                         R12 R10 R11
       72 MOVE                             R11 R6
       73 JUMPIFNOT                        R11 ; [+96]
       74 GETUPVAL                         R11 3
       75 GETUPVAL                         R13 4
       76 GETTABLEKS                       R12 R13 K19 ["Root"]
       78 DUPTABLE                         R13 K21 [{"isOpen"}]
       79 LOADB                            R14 1
       80 SETTABLEKS                       R14 R13 K20 ["isOpen"]
       82 NEWTABLE                         R14 2 0
       84 GETUPVAL                         R15 3
       85 GETUPVAL                         R17 4
       86 GETTABLEKS                       R16 R17 K22 ["Anchor"]
       88 DUPTABLE                         R17 K24 [{"anchorRef"}]
       89 SETTABLEKS                       R2 R17 K23 ["anchorRef"]
       91 CALL                             R15 2 1
       92 SETTABLEKS                       R15 R14 K22 ["Anchor"]
       94 LOADK                            R16 K25 ["Tooltip%*"]
       95 GETTABLEKS                       R18 R0 K12 ["name"]
       97 NAMECALL                         R16 R16 K13 ["format"]
       99 CALL                             R16 2 1
      100 MOVE                             R15 R16
      101 GETUPVAL                         R16 3
      102 GETUPVAL                         R18 4
      103 GETTABLEKS                       R17 R18 K26 ["Content"]
      105 DUPTABLE                         R18 K32 [{"side", "align", "hasArrow", "backgroundStyle", "radius"}]
      106 DUPTABLE                         R19 K35 [{"position", "offset"}]
      107 GETUPVAL                         R23 0
      108 GETTABLEKS                       R22 R23 K36 ["Enums"]
      110 GETTABLEKS                       R21 R22 K37 ["PopoverSide"]
      112 GETTABLEKS                       R20 R21 K38 ["Bottom"]
      114 SETTABLEKS                       R20 R19 K33 ["position"]
      116 GETTABLEKS                       R21 R1 K39 ["Gap"]
      118 GETTABLEKS                       R20 R21 K40 ["XSmall"]
      120 SETTABLEKS                       R20 R19 K34 ["offset"]
      122 SETTABLEKS                       R19 R18 K27 ["side"]
      124 GETUPVAL                         R22 0
      125 GETTABLEKS                       R21 R22 K36 ["Enums"]
      127 GETTABLEKS                       R20 R21 K41 ["PopoverAlign"]
      129 GETTABLEKS                       R19 R20 K42 ["Center"]
      131 SETTABLEKS                       R19 R18 K28 ["align"]
      133 LOADB                            R19 1
      134 SETTABLEKS                       R19 R18 K29 ["hasArrow"]
      136 GETTABLEKS                       R21 R1 K43 ["Inverse"]
      138 GETTABLEKS                       R20 R21 K44 ["Surface"]
      140 GETTABLEKS                       R19 R20 K45 ["Surface_0"]
      142 SETTABLEKS                       R19 R18 K30 ["backgroundStyle"]
      144 GETUPVAL                         R22 0
      145 GETTABLEKS                       R21 R22 K36 ["Enums"]
      147 GETTABLEKS                       R20 R21 K46 ["Radius"]
      149 GETTABLEKS                       R19 R20 K47 ["Small"]
      151 SETTABLEKS                       R19 R18 K31 ["radius"]
      153 DUPTABLE                         R19 K49 [{"Text"}]
      154 GETUPVAL                         R20 3
      155 GETUPVAL                         R21 5
      156 DUPTABLE                         R22 K51 [{"tag", "Text"}]
      157 LOADK                            R23 K52 ["auto-xy text-body-small content-inverse-emphasis padding-x-small padding-y-xsmall text-align-x-center text-align-y-center"]
      158 SETTABLEKS                       R23 R22 K50 ["tag"]
      160 GETTABLEKS                       R23 R0 K53 ["title"]
      162 SETTABLEKS                       R23 R22 K48 ["Text"]
      164 CALL                             R20 2 1
      165 SETTABLEKS                       R20 R19 K48 ["Text"]
      167 CALL                             R16 3 1
      168 SETTABLE                         R16 R14 R15
      169 CALL                             R11 3 1
      170 SETTABLEKS                       R11 R10 K54 ["Tooltip"]
      172 CALL                             R7 3 -1
      173 RETURN                           R7 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["thumbsState"]
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"messageId", "transformFn"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["messageId"]
        5 SETTABLEKS                       R3 R2 K0 ["messageId"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R3 R2 K1 ["transformFn"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["messageId"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantMessageSent_%*_%*"]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R5 R6 K1 ["messageId"]
        6 NAMECALL                         R2 R2 K2 ["format"]
        8 CALL                             R2 3 1
        9 MOVE                             R1 R2
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U2
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["Up"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["get"]
       12 CALL                             R1 0 1
       13 GETTABLEKS                       R0 R1 K2 ["EventLogger"]
       15 GETUPVAL                         R2 4
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETUPVAL                         R2 5
       19 GETTABLEKS                       R1 R2 K3 ["messageId"]
       21 JUMP                             ; [+6]
       22 GETTABLEKS                       R1 R0 K4 ["getMessageGuid"]
       24 GETUPVAL                         R3 5
       25 GETTABLEKS                       R2 R3 K3 ["messageId"]
       27 CALL                             R1 1 1
       28 GETTABLEKS                       R2 R0 K5 ["logThumbsUp"]
       30 DUPTABLE                         R3 K8 [{"messageGuid", "sessionId"}]
       31 SETTABLEKS                       R1 R3 K6 ["messageGuid"]
       33 GETUPVAL                         R4 6
       34 SETTABLEKS                       R4 R3 K7 ["sessionId"]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["Down"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["get"]
       12 CALL                             R1 0 1
       13 GETTABLEKS                       R0 R1 K2 ["EventLogger"]
       15 GETUPVAL                         R2 4
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETUPVAL                         R2 5
       19 GETTABLEKS                       R1 R2 K3 ["messageId"]
       21 JUMP                             ; [+6]
       22 GETTABLEKS                       R1 R0 K4 ["getMessageGuid"]
       24 GETUPVAL                         R3 5
       25 GETTABLEKS                       R2 R3 K3 ["messageId"]
       27 CALL                             R1 1 1
       28 GETTABLEKS                       R2 R0 K5 ["logThumbsDown"]
       30 DUPTABLE                         R3 K8 [{"messageGuid", "sessionId"}]
       31 SETTABLEKS                       R1 R3 K6 ["messageGuid"]
       33 GETUPVAL                         R4 6
       34 SETTABLEKS                       R4 R3 K7 ["sessionId"]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R0 R1 K1 ["EventLogger"]
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+4]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K2 ["messageId"]
       12 JUMP                             ; [+6]
       13 GETTABLEKS                       R1 R0 K3 ["getMessageGuid"]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K2 ["messageId"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R0 K4 ["logRetry"]
       21 DUPTABLE                         R3 K7 [{"messageGuid", "sessionId"}]
       22 SETTABLEKS                       R1 R3 K5 ["messageGuid"]
       24 GETUPVAL                         R4 3
       25 SETTABLEKS                       R4 R3 K6 ["sessionId"]
       27 CALL                             R2 1 0
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R2 R3 K8 ["retryMessage"]
       31 CALL                             R2 0 0
       32 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R2 R3 K0 ["messageId"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 3
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "ref"}]
        3 DUPTABLE                         R4 K8 [{"name", "variant"}]
        4 GETUPVAL                         R8 2
        5 GETTABLEKS                       R7 R8 K9 ["Enums"]
        7 GETTABLEKS                       R6 R7 K10 ["IconName"]
        9 GETTABLEKS                       R5 R6 K11 ["ThumbUp"]
       11 SETTABLEKS                       R5 R4 K7 ["name"]
       13 GETUPVAL                         R6 3
       14 GETUPVAL                         R8 4
       15 GETTABLEKS                       R7 R8 K12 ["Up"]
       17 JUMPIFNOTEQ                      R6 R7 ; [+9]
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R7 R8 K9 ["Enums"]
       22 GETTABLEKS                       R6 R7 K13 ["IconVariant"]
       24 GETTABLEKS                       R5 R6 K14 ["Filled"]
       26 JUMP                             ; [+7]
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K9 ["Enums"]
       30 GETTABLEKS                       R6 R7 K13 ["IconVariant"]
       32 GETTABLEKS                       R5 R6 K15 ["Regular"]
       34 SETTABLEKS                       R5 R4 K2 ["variant"]
       36 SETTABLEKS                       R4 R3 K0 ["icon"]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R6 R7 K9 ["Enums"]
       41 GETTABLEKS                       R5 R6 K16 ["InputSize"]
       43 GETTABLEKS                       R4 R5 K17 ["XSmall"]
       45 SETTABLEKS                       R4 R3 K1 ["size"]
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R6 R7 K9 ["Enums"]
       50 GETTABLEKS                       R5 R6 K18 ["ButtonVariant"]
       52 GETTABLEKS                       R4 R5 K19 ["Utility"]
       54 SETTABLEKS                       R4 R3 K2 ["variant"]
       56 GETUPVAL                         R4 5
       57 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       59 GETTABLEKS                       R4 R0 K20 ["layoutOrder"]
       61 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       63 GETTABLEKS                       R4 R0 K5 ["ref"]
       65 SETTABLEKS                       R4 R3 K5 ["ref"]
       67 CALL                             R1 2 -1
       68 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "ref"}]
        3 DUPTABLE                         R4 K8 [{"name", "variant"}]
        4 GETUPVAL                         R8 2
        5 GETTABLEKS                       R7 R8 K9 ["Enums"]
        7 GETTABLEKS                       R6 R7 K10 ["IconName"]
        9 GETTABLEKS                       R5 R6 K11 ["ThumbDown"]
       11 SETTABLEKS                       R5 R4 K7 ["name"]
       13 GETUPVAL                         R6 3
       14 GETUPVAL                         R8 4
       15 GETTABLEKS                       R7 R8 K12 ["Down"]
       17 JUMPIFNOTEQ                      R6 R7 ; [+9]
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R7 R8 K9 ["Enums"]
       22 GETTABLEKS                       R6 R7 K13 ["IconVariant"]
       24 GETTABLEKS                       R5 R6 K14 ["Filled"]
       26 JUMP                             ; [+7]
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K9 ["Enums"]
       30 GETTABLEKS                       R6 R7 K13 ["IconVariant"]
       32 GETTABLEKS                       R5 R6 K15 ["Regular"]
       34 SETTABLEKS                       R5 R4 K2 ["variant"]
       36 SETTABLEKS                       R4 R3 K0 ["icon"]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R6 R7 K9 ["Enums"]
       41 GETTABLEKS                       R5 R6 K16 ["InputSize"]
       43 GETTABLEKS                       R4 R5 K17 ["XSmall"]
       45 SETTABLEKS                       R4 R3 K1 ["size"]
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R6 R7 K9 ["Enums"]
       50 GETTABLEKS                       R5 R6 K18 ["ButtonVariant"]
       52 GETTABLEKS                       R4 R5 K19 ["Utility"]
       54 SETTABLEKS                       R4 R3 K2 ["variant"]
       56 GETUPVAL                         R4 5
       57 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       59 GETTABLEKS                       R4 R0 K20 ["layoutOrder"]
       61 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       63 GETTABLEKS                       R4 R0 K5 ["ref"]
       65 SETTABLEKS                       R4 R3 K5 ["ref"]
       67 CALL                             R1 2 -1
       68 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "ref"}]
        3 GETUPVAL                         R7 2
        4 GETTABLEKS                       R6 R7 K7 ["Enums"]
        6 GETTABLEKS                       R5 R6 K8 ["IconName"]
        8 GETTABLEKS                       R4 R5 K9 ["TwoArrowsSpinClockwise"]
       10 SETTABLEKS                       R4 R3 K0 ["icon"]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R6 R7 K7 ["Enums"]
       15 GETTABLEKS                       R5 R6 K10 ["InputSize"]
       17 GETTABLEKS                       R4 R5 K11 ["XSmall"]
       19 SETTABLEKS                       R4 R3 K1 ["size"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K7 ["Enums"]
       24 GETTABLEKS                       R5 R6 K12 ["ButtonVariant"]
       26 GETTABLEKS                       R4 R5 K13 ["Utility"]
       28 SETTABLEKS                       R4 R3 K2 ["variant"]
       30 GETUPVAL                         R4 3
       31 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       33 GETTABLEKS                       R4 R0 K14 ["layoutOrder"]
       35 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       37 GETTABLEKS                       R4 R0 K5 ["ref"]
       39 SETTABLEKS                       R4 R3 K5 ["ref"]
       41 CALL                             R1 2 -1
       42 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "ref"}]
        3 GETUPVAL                         R7 2
        4 GETTABLEKS                       R6 R7 K7 ["Enums"]
        6 GETTABLEKS                       R5 R6 K8 ["IconName"]
        8 GETTABLEKS                       R4 R5 K9 ["TwoArrowsBranchRight"]
       10 SETTABLEKS                       R4 R3 K0 ["icon"]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R6 R7 K7 ["Enums"]
       15 GETTABLEKS                       R5 R6 K10 ["InputSize"]
       17 GETTABLEKS                       R4 R5 K11 ["XSmall"]
       19 SETTABLEKS                       R4 R3 K1 ["size"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K7 ["Enums"]
       24 GETTABLEKS                       R5 R6 K12 ["ButtonVariant"]
       26 GETTABLEKS                       R4 R5 K13 ["Utility"]
       28 SETTABLEKS                       R4 R3 K2 ["variant"]
       30 GETUPVAL                         R4 3
       31 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       33 GETTABLEKS                       R4 R0 K14 ["layoutOrder"]
       35 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       37 GETTABLEKS                       R4 R0 K5 ["ref"]
       39 SETTABLEKS                       R4 R3 K5 ["ref"]
       41 CALL                             R1 2 -1
       42 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R4 R1 K2 ["Config"]
        8 GETTABLEKS                       R3 R4 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R3 K4 ["Name"]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 GETUPVAL                         R5 1
       15 CALL                             R5 0 1
       16 JUMPIFNOT                        R5 ; [+11]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K5 ["useContext"]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R6 R7 K6 ["Context"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R3 R5 K7 ["threadId"]
       26 GETTABLEKS                       R4 R5 K8 ["setThreadId"]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R5 R6 K5 ["useContext"]
       31 GETUPVAL                         R7 4
       32 GETTABLEKS                       R6 R7 K6 ["Context"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R5 K9 ["sessionId"]
       37 GETUPVAL                         R7 5
       38 CALL                             R7 0 1
       39 LOADNIL                          R8
       40 LOADNIL                          R9
       41 GETUPVAL                         R10 1
       42 CALL                             R10 0 1
       43 JUMPIFNOT                        R10 ; [+20]
       44 GETUPVAL                         R10 6
       45 CALL                             R10 0 1
       46 GETTABLEKS                       R8 R0 K10 ["thumbsState"]
       48 GETUPVAL                         R12 2
       49 GETTABLEKS                       R11 R12 K11 ["useCallback"]
       51 NEWCLOSURE                       R12 P0
       52 CAPTURE                          VAL R10
       53 CAPTURE                          VAL R0
       54 NEWTABLE                         R13 0 2
       56 GETTABLEKS                       R14 R0 K12 ["messageId"]
       58 MOVE                             R15 R10
       59 SETLIST                          R13 R14 2 [1]
       61 CALL                             R11 2 1
       62 MOVE                             R9 R11
       63 JUMP                             ; [+7]
       64 GETUPVAL                         R11 2
       65 GETTABLEKS                       R10 R11 K13 ["useState"]
       67 LOADNIL                          R11
       68 CALL                             R10 1 2
       69 MOVE                             R8 R10
       70 MOVE                             R9 R11
       71 GETUPVAL                         R11 2
       72 GETTABLEKS                       R10 R11 K14 ["useEffect"]
       74 NEWCLOSURE                       R11 P1
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R7
       79 NEWTABLE                         R12 0 2
       81 GETTABLEKS                       R13 R0 K12 ["messageId"]
       83 MOVE                             R14 R6
       84 SETLIST                          R12 R13 2 [1]
       86 CALL                             R10 2 0
       87 GETUPVAL                         R11 2
       88 GETTABLEKS                       R10 R11 K11 ["useCallback"]
       90 NEWCLOSURE                       R11 P2
       91 CAPTURE                          REF R8
       92 CAPTURE                          REF R9
       93 CAPTURE                          UPVAL U8
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          UPVAL U1
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R6
       98 NEWTABLE                         R12 0 3
      100 MOVE                             R13 R8
      101 GETTABLEKS                       R14 R0 K12 ["messageId"]
      103 MOVE                             R15 R6
      104 SETLIST                          R12 R13 3 [1]
      106 CALL                             R10 2 1
      107 GETUPVAL                         R12 2
      108 GETTABLEKS                       R11 R12 K11 ["useCallback"]
      110 NEWCLOSURE                       R12 P3
      111 CAPTURE                          REF R8
      112 CAPTURE                          REF R9
      113 CAPTURE                          UPVAL U8
      114 CAPTURE                          UPVAL U9
      115 CAPTURE                          UPVAL U1
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R6
      118 NEWTABLE                         R13 0 3
      120 MOVE                             R14 R8
      121 GETTABLEKS                       R15 R0 K12 ["messageId"]
      123 MOVE                             R16 R6
      124 SETLIST                          R13 R14 3 [1]
      126 CALL                             R11 2 1
      127 GETUPVAL                         R13 2
      128 GETTABLEKS                       R12 R13 K11 ["useCallback"]
      130 NEWCLOSURE                       R13 P4
      131 CAPTURE                          UPVAL U9
      132 CAPTURE                          UPVAL U1
      133 CAPTURE                          VAL R0
      134 CAPTURE                          VAL R6
      135 NEWTABLE                         R14 0 3
      137 GETTABLEKS                       R15 R0 K15 ["retryMessage"]
      139 GETTABLEKS                       R16 R0 K12 ["messageId"]
      141 MOVE                             R17 R6
      142 SETLIST                          R14 R15 3 [1]
      144 CALL                             R12 2 1
      145 LOADNIL                          R13
      146 GETUPVAL                         R14 1
      147 CALL                             R14 0 1
      148 JUMPIFNOT                        R14 ; [+21]
      149 GETUPVAL                         R14 10
      150 CALL                             R14 0 1
      151 GETUPVAL                         R16 2
      152 GETTABLEKS                       R15 R16 K11 ["useCallback"]
      154 NEWCLOSURE                       R16 P5
      155 CAPTURE                          VAL R14
      156 CAPTURE                          REF R3
      157 CAPTURE                          VAL R0
      158 CAPTURE                          REF R4
      159 NEWTABLE                         R17 0 4
      161 MOVE                             R18 R4
      162 MOVE                             R19 R14
      163 MOVE                             R20 R3
      164 GETTABLEKS                       R21 R0 K12 ["messageId"]
      166 SETLIST                          R17 R18 4 [1]
      168 CALL                             R15 2 1
      169 MOVE                             R13 R15
      170 GETUPVAL                         R16 8
      171 GETTABLEKS                       R15 R16 K16 ["Up"]
      173 JUMPIFNOTEQ                      R8 R15 ; [+4]
      175 GETUPVAL                         R15 11
      176 GETTABLE                         R14 R15 R2
      177 JUMP                             ; [+2]
      178 GETUPVAL                         R15 12
      179 GETTABLE                         R14 R15 R2
      180 GETUPVAL                         R17 8
      181 GETTABLEKS                       R16 R17 K17 ["Down"]
      183 JUMPIFNOTEQ                      R8 R16 ; [+4]
      185 GETUPVAL                         R16 13
      186 GETTABLE                         R15 R16 R2
      187 JUMP                             ; [+2]
      188 GETUPVAL                         R16 14
      189 GETTABLE                         R15 R16 R2
      190 GETUPVAL                         R16 15
      191 CALL                             R16 0 1
      192 GETUPVAL                         R17 16
      193 CALL                             R17 0 1
      194 JUMPIFNOT                        R17 ; [+130]
      195 GETUPVAL                         R17 17
      196 GETUPVAL                         R19 2
      197 GETTABLEKS                       R18 R19 K18 ["Fragment"]
      199 LOADNIL                          R19
      200 DUPTABLE                         R20 K23 [{"ThumbsUp", "ThumbsDown", "Retry", "Branch"}]
      201 GETUPVAL                         R21 17
      202 GETUPVAL                         R22 18
      203 DUPTABLE                         R23 K28 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      204 LOADK                            R24 K19 ["ThumbsUp"]
      205 SETTABLEKS                       R24 R23 K24 ["name"]
      207 GETUPVAL                         R24 19
      208 LOADK                            R26 K29 ["MessageActions"]
      209 LOADK                            R27 K30 ["TooltipThumbsUp"]
      210 NAMECALL                         R24 R24 K31 ["getText"]
      212 CALL                             R24 3 1
      213 SETTABLEKS                       R24 R23 K25 ["title"]
      215 MOVE                             R24 R16
      216 CALL                             R24 0 1
      217 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      219 NEWCLOSURE                       R24 P6
      220 CAPTURE                          UPVAL U17
      221 CAPTURE                          UPVAL U20
      222 CAPTURE                          UPVAL U0
      223 CAPTURE                          REF R8
      224 CAPTURE                          UPVAL U8
      225 CAPTURE                          VAL R10
      226 SETTABLEKS                       R24 R23 K27 ["renderAnchor"]
      228 CALL                             R21 2 1
      229 SETTABLEKS                       R21 R20 K19 ["ThumbsUp"]
      231 GETUPVAL                         R21 17
      232 GETUPVAL                         R22 18
      233 DUPTABLE                         R23 K28 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      234 LOADK                            R24 K20 ["ThumbsDown"]
      235 SETTABLEKS                       R24 R23 K24 ["name"]
      237 GETUPVAL                         R24 19
      238 LOADK                            R26 K29 ["MessageActions"]
      239 LOADK                            R27 K32 ["TooltipThumbsDown"]
      240 NAMECALL                         R24 R24 K31 ["getText"]
      242 CALL                             R24 3 1
      243 SETTABLEKS                       R24 R23 K25 ["title"]
      245 MOVE                             R24 R16
      246 CALL                             R24 0 1
      247 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      249 NEWCLOSURE                       R24 P7
      250 CAPTURE                          UPVAL U17
      251 CAPTURE                          UPVAL U20
      252 CAPTURE                          UPVAL U0
      253 CAPTURE                          REF R8
      254 CAPTURE                          UPVAL U8
      255 CAPTURE                          VAL R11
      256 SETTABLEKS                       R24 R23 K27 ["renderAnchor"]
      258 CALL                             R21 2 1
      259 SETTABLEKS                       R21 R20 K20 ["ThumbsDown"]
      261 GETUPVAL                         R21 17
      262 GETUPVAL                         R22 18
      263 DUPTABLE                         R23 K28 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      264 LOADK                            R24 K21 ["Retry"]
      265 SETTABLEKS                       R24 R23 K24 ["name"]
      267 GETUPVAL                         R24 19
      268 LOADK                            R26 K29 ["MessageActions"]
      269 LOADK                            R27 K33 ["TooltipRetry"]
      270 NAMECALL                         R24 R24 K31 ["getText"]
      272 CALL                             R24 3 1
      273 SETTABLEKS                       R24 R23 K25 ["title"]
      275 MOVE                             R24 R16
      276 CALL                             R24 0 1
      277 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      279 NEWCLOSURE                       R24 P8
      280 CAPTURE                          UPVAL U17
      281 CAPTURE                          UPVAL U20
      282 CAPTURE                          UPVAL U0
      283 CAPTURE                          VAL R12
      284 SETTABLEKS                       R24 R23 K27 ["renderAnchor"]
      286 CALL                             R21 2 1
      287 SETTABLEKS                       R21 R20 K21 ["Retry"]
      289 GETUPVAL                         R22 1
      290 CALL                             R22 0 1
      291 JUMPIFNOT                        R22 ; [+27]
      292 GETUPVAL                         R21 17
      293 GETUPVAL                         R22 18
      294 DUPTABLE                         R23 K28 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      295 LOADK                            R24 K22 ["Branch"]
      296 SETTABLEKS                       R24 R23 K24 ["name"]
      298 GETUPVAL                         R24 19
      299 LOADK                            R26 K29 ["MessageActions"]
      300 LOADK                            R27 K34 ["TooltipBranch"]
      301 NAMECALL                         R24 R24 K31 ["getText"]
      303 CALL                             R24 3 1
      304 SETTABLEKS                       R24 R23 K25 ["title"]
      306 MOVE                             R24 R16
      307 CALL                             R24 0 1
      308 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      310 NEWCLOSURE                       R24 P9
      311 CAPTURE                          UPVAL U17
      312 CAPTURE                          UPVAL U20
      313 CAPTURE                          UPVAL U0
      314 CAPTURE                          REF R13
      315 SETTABLEKS                       R24 R23 K27 ["renderAnchor"]
      317 CALL                             R21 2 1
      318 JUMP                             ; [+1]
      319 LOADNIL                          R21
      320 SETTABLEKS                       R21 R20 K22 ["Branch"]
      322 CALL                             R17 3 -1
      323 CLOSEUPVALS                      R3
      324 RETURN                           R17 -1
      325 GETUPVAL                         R17 17
      326 GETUPVAL                         R18 21
      327 DUPTABLE                         R19 K36 [{"tag", "LayoutOrder"}]
      328 LOADK                            R20 K37 ["row gap-small auto-xy"]
      329 SETTABLEKS                       R20 R19 K35 ["tag"]
      331 GETTABLEKS                       R20 R0 K26 ["LayoutOrder"]
      333 SETTABLEKS                       R20 R19 K26 ["LayoutOrder"]
      335 DUPTABLE                         R20 K41 [{"ThumbsUpButton", "ThumbsDownButton", "RetryButton"}]
      336 GETUPVAL                         R21 17
      337 GETUPVAL                         R22 22
      338 DUPTABLE                         R23 K46 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      339 SETTABLEKS                       R14 R23 K42 ["icon"]
      341 LOADK                            R24 K47 ["size-600-600 radius-small align-x-center align-y-center"]
      342 SETTABLEKS                       R24 R23 K35 ["tag"]
      344 LOADK                            R24 K48 ["size-400-400 content-system-neutral"]
      345 SETTABLEKS                       R24 R23 K43 ["iconTag"]
      347 SETTABLEKS                       R10 R23 K44 ["onActivated"]
      349 MOVE                             R24 R16
      350 CALL                             R24 0 1
      351 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      353 GETUPVAL                         R26 23
      354 GETTABLEKS                       R25 R26 K29 ["MessageActions"]
      356 GETTABLEKS                       R24 R25 K19 ["ThumbsUp"]
      358 SETTABLEKS                       R24 R23 K45 ["testId"]
      360 CALL                             R21 2 1
      361 SETTABLEKS                       R21 R20 K38 ["ThumbsUpButton"]
      363 GETUPVAL                         R21 17
      364 GETUPVAL                         R22 22
      365 DUPTABLE                         R23 K46 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      366 SETTABLEKS                       R15 R23 K42 ["icon"]
      368 LOADK                            R24 K47 ["size-600-600 radius-small align-x-center align-y-center"]
      369 SETTABLEKS                       R24 R23 K35 ["tag"]
      371 LOADK                            R24 K48 ["size-400-400 content-system-neutral"]
      372 SETTABLEKS                       R24 R23 K43 ["iconTag"]
      374 SETTABLEKS                       R11 R23 K44 ["onActivated"]
      376 MOVE                             R24 R16
      377 CALL                             R24 0 1
      378 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      380 GETUPVAL                         R26 23
      381 GETTABLEKS                       R25 R26 K29 ["MessageActions"]
      383 GETTABLEKS                       R24 R25 K20 ["ThumbsDown"]
      385 SETTABLEKS                       R24 R23 K45 ["testId"]
      387 CALL                             R21 2 1
      388 SETTABLEKS                       R21 R20 K39 ["ThumbsDownButton"]
      390 GETUPVAL                         R21 17
      391 GETUPVAL                         R22 22
      392 DUPTABLE                         R23 K46 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      393 GETUPVAL                         R25 24
      394 GETTABLE                         R24 R25 R2
      395 SETTABLEKS                       R24 R23 K42 ["icon"]
      397 LOADK                            R24 K47 ["size-600-600 radius-small align-x-center align-y-center"]
      398 SETTABLEKS                       R24 R23 K35 ["tag"]
      400 LOADK                            R24 K48 ["size-400-400 content-system-neutral"]
      401 SETTABLEKS                       R24 R23 K43 ["iconTag"]
      403 SETTABLEKS                       R12 R23 K44 ["onActivated"]
      405 MOVE                             R24 R16
      406 CALL                             R24 0 1
      407 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      409 GETUPVAL                         R26 23
      410 GETTABLEKS                       R25 R26 K29 ["MessageActions"]
      412 GETTABLEKS                       R24 R25 K21 ["Retry"]
      414 SETTABLEKS                       R24 R23 K45 ["testId"]
      416 CALL                             R21 2 1
      417 SETTABLEKS                       R21 R20 K40 ["RetryButton"]
      419 CALL                             R17 3 -1
      420 CLOSEUPVALS                      R3
      421 RETURN                           R17 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+41]
        3 GETTABLEKS                       R2 R0 K0 ["shouldShowActions"]
        5 JUMPIFNOT                        R2 ; [+17]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K4 [{"retryMessage", "messageId", "thumbsState"}]
        9 GETTABLEKS                       R4 R0 K1 ["retryMessage"]
       11 SETTABLEKS                       R4 R3 K1 ["retryMessage"]
       13 GETTABLEKS                       R4 R0 K2 ["messageId"]
       15 SETTABLEKS                       R4 R3 K2 ["messageId"]
       17 GETTABLEKS                       R4 R0 K3 ["thumbsState"]
       19 SETTABLEKS                       R4 R3 K3 ["thumbsState"]
       21 CALL                             R1 2 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R1
       24 GETUPVAL                         R2 1
       25 GETUPVAL                         R3 3
       26 DUPTABLE                         R4 K8 [{"tag", "LayoutOrder", "testId"}]
       27 LOADK                            R5 K9 ["row gap-xxsmall size-full-600"]
       28 SETTABLEKS                       R5 R4 K5 ["tag"]
       30 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       32 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R6 R7 K10 ["MessageActions"]
       37 GETTABLEKS                       R5 R6 K11 ["Container"]
       39 SETTABLEKS                       R5 R4 K7 ["testId"]
       41 MOVE                             R5 R1
       42 CALL                             R2 3 -1
       43 RETURN                           R2 -1
       44 GETUPVAL                         R1 2
       45 MOVE                             R2 R0
       46 CALL                             R1 1 -1
       47 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R4 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R7 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K6 ["Components"]
       46 GETTABLEKS                       R8 R9 K14 ["Contexts"]
       48 GETTABLEKS                       R7 R8 K15 ["SessionIdContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K16 ["Util"]
       55 GETTABLEKS                       R8 R9 K17 ["TestIds"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R11 R0 K6 ["Components"]
       62 GETTABLEKS                       R10 R11 K14 ["Contexts"]
       64 GETTABLEKS                       R9 R10 K18 ["ThreadIdContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R12 R0 K19 ["Resources"]
       71 GETTABLEKS                       R11 R12 K20 ["Localization"]
       73 GETTABLEKS                       R10 R11 K21 ["Translator"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K22 ["Types"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R13 R0 K16 ["Util"]
       85 GETTABLEKS                       R12 R13 K23 ["callOnce"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R14 R0 K24 ["Hooks"]
       92 GETTABLEKS                       R13 R14 K25 ["useDuplicateThread"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R15 R0 K24 ["Hooks"]
       99 GETTABLEKS                       R14 R15 K26 ["useEditMessage"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R16 R0 K24 ["Hooks"]
      106 GETTABLEKS                       R15 R16 K27 ["useLogAssistantMessageSent"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R17 R0 K28 ["Flags"]
      113 GETTABLEKS                       R16 R17 K29 ["FFlagAssistantMultipleChatSupport"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R18 R0 K28 ["Flags"]
      120 GETTABLEKS                       R17 R18 K30 ["FFlagAssistantPersistConversations"]
      122 CALL                             R16 1 1
      123 GETTABLEKS                       R17 R3 K31 ["IconButton"]
      125 GETTABLEKS                       R18 R3 K32 ["Popover"]
      127 GETTABLEKS                       R19 R3 K33 ["Text"]
      129 GETTABLEKS                       R20 R3 K34 ["View"]
      131 GETTABLEKS                       R21 R5 K35 ["createNextOrder"]
      133 GETTABLEKS                       R22 R4 K36 ["createElement"]
      135 DUPTABLE                         R23 K39 [{"Dark", "Light"}]
      136 LOADK                            R24 K40 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUpOutline.png"]
      137 SETTABLEKS                       R24 R23 K37 ["Dark"]
      139 LOADK                            R24 K41 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUpOutline.png"]
      140 SETTABLEKS                       R24 R23 K38 ["Light"]
      142 DUPTABLE                         R24 K39 [{"Dark", "Light"}]
      143 LOADK                            R25 K42 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUp.png"]
      144 SETTABLEKS                       R25 R24 K37 ["Dark"]
      146 LOADK                            R25 K43 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUp.png"]
      147 SETTABLEKS                       R25 R24 K38 ["Light"]
      149 DUPTABLE                         R25 K39 [{"Dark", "Light"}]
      150 LOADK                            R26 K44 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDownOutline.png"]
      151 SETTABLEKS                       R26 R25 K37 ["Dark"]
      153 LOADK                            R26 K45 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDownOutline.png"]
      154 SETTABLEKS                       R26 R25 K38 ["Light"]
      156 DUPTABLE                         R26 K39 [{"Dark", "Light"}]
      157 LOADK                            R27 K46 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDown.png"]
      158 SETTABLEKS                       R27 R26 K37 ["Dark"]
      160 LOADK                            R27 K47 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDown.png"]
      161 SETTABLEKS                       R27 R26 K38 ["Light"]
      163 DUPTABLE                         R27 K39 [{"Dark", "Light"}]
      164 LOADK                            R28 K48 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/Regenerate.png"]
      165 SETTABLEKS                       R28 R27 K37 ["Dark"]
      167 LOADK                            R28 K49 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/Regenerate.png"]
      168 SETTABLEKS                       R28 R27 K38 ["Light"]
      170 DUPTABLE                         R28 K52 [{"Up", "Down"}]
      171 LOADK                            R29 K53 ["up"]
      172 SETTABLEKS                       R29 R28 K50 ["Up"]
      174 LOADK                            R29 K54 ["down"]
      175 SETTABLEKS                       R29 R28 K51 ["Down"]
      177 GETTABLEKS                       R29 R4 K55 ["memo"]
      179 DUPCLOSURE                       R30 K56 [PROTO_4]
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R22
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R19
      186 CALL                             R29 1 1
      187 DUPCLOSURE                       R30 K57 [PROTO_17]
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R14
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R11
      196 CAPTURE                          VAL R28
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R23
      201 CAPTURE                          VAL R26
      202 CAPTURE                          VAL R25
      203 CAPTURE                          VAL R21
      204 CAPTURE                          VAL R15
      205 CAPTURE                          VAL R22
      206 CAPTURE                          VAL R29
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R20
      210 CAPTURE                          VAL R1
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R27
      213 DUPCLOSURE                       R31 K58 [PROTO_18]
      214 CAPTURE                          VAL R15
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R30
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R7
      219 RETURN                           R31 1
