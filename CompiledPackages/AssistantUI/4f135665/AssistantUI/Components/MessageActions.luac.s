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
        8 GETUPVAL                         R5 4
        9 GETTABLEKS                       R4 R5 K1 ["ThreadSwitchSource"]
       11 GETTABLEKS                       R3 R4 K2 ["MessageBranch"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

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
       16 JUMPIFNOT                        R5 ; [+12]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K5 ["useContext"]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R6 R7 K6 ["Context"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R3 R5 K7 ["threadId"]
       26 GETUPVAL                         R6 4
       27 CALL                             R6 0 1
       28 MOVE                             R4 R6
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R5 R6 K5 ["useContext"]
       32 GETUPVAL                         R7 5
       33 GETTABLEKS                       R6 R7 K6 ["Context"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R5 K8 ["sessionId"]
       38 GETUPVAL                         R7 6
       39 CALL                             R7 0 1
       40 LOADNIL                          R8
       41 LOADNIL                          R9
       42 GETUPVAL                         R10 1
       43 CALL                             R10 0 1
       44 JUMPIFNOT                        R10 ; [+20]
       45 GETUPVAL                         R10 7
       46 CALL                             R10 0 1
       47 GETTABLEKS                       R8 R0 K9 ["thumbsState"]
       49 GETUPVAL                         R12 2
       50 GETTABLEKS                       R11 R12 K10 ["useCallback"]
       52 NEWCLOSURE                       R12 P0
       53 CAPTURE                          VAL R10
       54 CAPTURE                          VAL R0
       55 NEWTABLE                         R13 0 2
       57 GETTABLEKS                       R14 R0 K11 ["messageId"]
       59 MOVE                             R15 R10
       60 SETLIST                          R13 R14 2 [1]
       62 CALL                             R11 2 1
       63 MOVE                             R9 R11
       64 JUMP                             ; [+7]
       65 GETUPVAL                         R11 2
       66 GETTABLEKS                       R10 R11 K12 ["useState"]
       68 LOADNIL                          R11
       69 CALL                             R10 1 2
       70 MOVE                             R8 R10
       71 MOVE                             R9 R11
       72 GETUPVAL                         R11 2
       73 GETTABLEKS                       R10 R11 K13 ["useEffect"]
       75 NEWCLOSURE                       R11 P1
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R7
       80 NEWTABLE                         R12 0 2
       82 GETTABLEKS                       R13 R0 K11 ["messageId"]
       84 MOVE                             R14 R6
       85 SETLIST                          R12 R13 2 [1]
       87 CALL                             R10 2 0
       88 GETUPVAL                         R11 2
       89 GETTABLEKS                       R10 R11 K10 ["useCallback"]
       91 NEWCLOSURE                       R11 P2
       92 CAPTURE                          REF R8
       93 CAPTURE                          REF R9
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          UPVAL U10
       96 CAPTURE                          UPVAL U1
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R6
       99 NEWTABLE                         R12 0 3
      101 MOVE                             R13 R8
      102 GETTABLEKS                       R14 R0 K11 ["messageId"]
      104 MOVE                             R15 R6
      105 SETLIST                          R12 R13 3 [1]
      107 CALL                             R10 2 1
      108 GETUPVAL                         R12 2
      109 GETTABLEKS                       R11 R12 K10 ["useCallback"]
      111 NEWCLOSURE                       R12 P3
      112 CAPTURE                          REF R8
      113 CAPTURE                          REF R9
      114 CAPTURE                          UPVAL U9
      115 CAPTURE                          UPVAL U10
      116 CAPTURE                          UPVAL U1
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R6
      119 NEWTABLE                         R13 0 3
      121 MOVE                             R14 R8
      122 GETTABLEKS                       R15 R0 K11 ["messageId"]
      124 MOVE                             R16 R6
      125 SETLIST                          R13 R14 3 [1]
      127 CALL                             R11 2 1
      128 GETUPVAL                         R13 2
      129 GETTABLEKS                       R12 R13 K10 ["useCallback"]
      131 NEWCLOSURE                       R13 P4
      132 CAPTURE                          UPVAL U10
      133 CAPTURE                          UPVAL U1
      134 CAPTURE                          VAL R0
      135 CAPTURE                          VAL R6
      136 NEWTABLE                         R14 0 3
      138 GETTABLEKS                       R15 R0 K14 ["retryMessage"]
      140 GETTABLEKS                       R16 R0 K11 ["messageId"]
      142 MOVE                             R17 R6
      143 SETLIST                          R14 R15 3 [1]
      145 CALL                             R12 2 1
      146 LOADNIL                          R13
      147 GETUPVAL                         R14 1
      148 CALL                             R14 0 1
      149 JUMPIFNOT                        R14 ; [+22]
      150 GETUPVAL                         R14 11
      151 CALL                             R14 0 1
      152 GETUPVAL                         R16 2
      153 GETTABLEKS                       R15 R16 K10 ["useCallback"]
      155 NEWCLOSURE                       R16 P5
      156 CAPTURE                          VAL R14
      157 CAPTURE                          REF R3
      158 CAPTURE                          VAL R0
      159 CAPTURE                          REF R4
      160 CAPTURE                          UPVAL U12
      161 NEWTABLE                         R17 0 4
      163 MOVE                             R18 R4
      164 MOVE                             R19 R14
      165 MOVE                             R20 R3
      166 GETTABLEKS                       R21 R0 K11 ["messageId"]
      168 SETLIST                          R17 R18 4 [1]
      170 CALL                             R15 2 1
      171 MOVE                             R13 R15
      172 GETUPVAL                         R16 9
      173 GETTABLEKS                       R15 R16 K15 ["Up"]
      175 JUMPIFNOTEQ                      R8 R15 ; [+4]
      177 GETUPVAL                         R15 13
      178 GETTABLE                         R14 R15 R2
      179 JUMP                             ; [+2]
      180 GETUPVAL                         R15 14
      181 GETTABLE                         R14 R15 R2
      182 GETUPVAL                         R17 9
      183 GETTABLEKS                       R16 R17 K16 ["Down"]
      185 JUMPIFNOTEQ                      R8 R16 ; [+4]
      187 GETUPVAL                         R16 15
      188 GETTABLE                         R15 R16 R2
      189 JUMP                             ; [+2]
      190 GETUPVAL                         R16 16
      191 GETTABLE                         R15 R16 R2
      192 GETUPVAL                         R16 17
      193 CALL                             R16 0 1
      194 GETUPVAL                         R17 18
      195 CALL                             R17 0 1
      196 JUMPIFNOT                        R17 ; [+130]
      197 GETUPVAL                         R17 19
      198 GETUPVAL                         R19 2
      199 GETTABLEKS                       R18 R19 K17 ["Fragment"]
      201 LOADNIL                          R19
      202 DUPTABLE                         R20 K22 [{"ThumbsUp", "ThumbsDown", "Retry", "Branch"}]
      203 GETUPVAL                         R21 19
      204 GETUPVAL                         R22 20
      205 DUPTABLE                         R23 K27 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      206 LOADK                            R24 K18 ["ThumbsUp"]
      207 SETTABLEKS                       R24 R23 K23 ["name"]
      209 GETUPVAL                         R24 21
      210 LOADK                            R26 K28 ["MessageActions"]
      211 LOADK                            R27 K29 ["TooltipThumbsUp"]
      212 NAMECALL                         R24 R24 K30 ["getText"]
      214 CALL                             R24 3 1
      215 SETTABLEKS                       R24 R23 K24 ["title"]
      217 MOVE                             R24 R16
      218 CALL                             R24 0 1
      219 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      221 NEWCLOSURE                       R24 P6
      222 CAPTURE                          UPVAL U19
      223 CAPTURE                          UPVAL U22
      224 CAPTURE                          UPVAL U0
      225 CAPTURE                          REF R8
      226 CAPTURE                          UPVAL U9
      227 CAPTURE                          VAL R10
      228 SETTABLEKS                       R24 R23 K26 ["renderAnchor"]
      230 CALL                             R21 2 1
      231 SETTABLEKS                       R21 R20 K18 ["ThumbsUp"]
      233 GETUPVAL                         R21 19
      234 GETUPVAL                         R22 20
      235 DUPTABLE                         R23 K27 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      236 LOADK                            R24 K19 ["ThumbsDown"]
      237 SETTABLEKS                       R24 R23 K23 ["name"]
      239 GETUPVAL                         R24 21
      240 LOADK                            R26 K28 ["MessageActions"]
      241 LOADK                            R27 K31 ["TooltipThumbsDown"]
      242 NAMECALL                         R24 R24 K30 ["getText"]
      244 CALL                             R24 3 1
      245 SETTABLEKS                       R24 R23 K24 ["title"]
      247 MOVE                             R24 R16
      248 CALL                             R24 0 1
      249 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      251 NEWCLOSURE                       R24 P7
      252 CAPTURE                          UPVAL U19
      253 CAPTURE                          UPVAL U22
      254 CAPTURE                          UPVAL U0
      255 CAPTURE                          REF R8
      256 CAPTURE                          UPVAL U9
      257 CAPTURE                          VAL R11
      258 SETTABLEKS                       R24 R23 K26 ["renderAnchor"]
      260 CALL                             R21 2 1
      261 SETTABLEKS                       R21 R20 K19 ["ThumbsDown"]
      263 GETUPVAL                         R21 19
      264 GETUPVAL                         R22 20
      265 DUPTABLE                         R23 K27 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      266 LOADK                            R24 K20 ["Retry"]
      267 SETTABLEKS                       R24 R23 K23 ["name"]
      269 GETUPVAL                         R24 21
      270 LOADK                            R26 K28 ["MessageActions"]
      271 LOADK                            R27 K32 ["TooltipRetry"]
      272 NAMECALL                         R24 R24 K30 ["getText"]
      274 CALL                             R24 3 1
      275 SETTABLEKS                       R24 R23 K24 ["title"]
      277 MOVE                             R24 R16
      278 CALL                             R24 0 1
      279 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      281 NEWCLOSURE                       R24 P8
      282 CAPTURE                          UPVAL U19
      283 CAPTURE                          UPVAL U22
      284 CAPTURE                          UPVAL U0
      285 CAPTURE                          VAL R12
      286 SETTABLEKS                       R24 R23 K26 ["renderAnchor"]
      288 CALL                             R21 2 1
      289 SETTABLEKS                       R21 R20 K20 ["Retry"]
      291 GETUPVAL                         R22 1
      292 CALL                             R22 0 1
      293 JUMPIFNOT                        R22 ; [+27]
      294 GETUPVAL                         R21 19
      295 GETUPVAL                         R22 20
      296 DUPTABLE                         R23 K27 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      297 LOADK                            R24 K21 ["Branch"]
      298 SETTABLEKS                       R24 R23 K23 ["name"]
      300 GETUPVAL                         R24 21
      301 LOADK                            R26 K28 ["MessageActions"]
      302 LOADK                            R27 K33 ["TooltipBranch"]
      303 NAMECALL                         R24 R24 K30 ["getText"]
      305 CALL                             R24 3 1
      306 SETTABLEKS                       R24 R23 K24 ["title"]
      308 MOVE                             R24 R16
      309 CALL                             R24 0 1
      310 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      312 NEWCLOSURE                       R24 P9
      313 CAPTURE                          UPVAL U19
      314 CAPTURE                          UPVAL U22
      315 CAPTURE                          UPVAL U0
      316 CAPTURE                          REF R13
      317 SETTABLEKS                       R24 R23 K26 ["renderAnchor"]
      319 CALL                             R21 2 1
      320 JUMP                             ; [+1]
      321 LOADNIL                          R21
      322 SETTABLEKS                       R21 R20 K21 ["Branch"]
      324 CALL                             R17 3 -1
      325 CLOSEUPVALS                      R3
      326 RETURN                           R17 -1
      327 GETUPVAL                         R17 19
      328 GETUPVAL                         R18 23
      329 DUPTABLE                         R19 K35 [{"tag", "LayoutOrder"}]
      330 LOADK                            R20 K36 ["row gap-small auto-xy"]
      331 SETTABLEKS                       R20 R19 K34 ["tag"]
      333 GETTABLEKS                       R20 R0 K25 ["LayoutOrder"]
      335 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      337 DUPTABLE                         R20 K40 [{"ThumbsUpButton", "ThumbsDownButton", "RetryButton"}]
      338 GETUPVAL                         R21 19
      339 GETUPVAL                         R22 24
      340 DUPTABLE                         R23 K45 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      341 SETTABLEKS                       R14 R23 K41 ["icon"]
      343 LOADK                            R24 K46 ["size-600-600 radius-small align-x-center align-y-center"]
      344 SETTABLEKS                       R24 R23 K34 ["tag"]
      346 LOADK                            R24 K47 ["size-400-400 content-system-neutral"]
      347 SETTABLEKS                       R24 R23 K42 ["iconTag"]
      349 SETTABLEKS                       R10 R23 K43 ["onActivated"]
      351 MOVE                             R24 R16
      352 CALL                             R24 0 1
      353 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      355 GETUPVAL                         R26 25
      356 GETTABLEKS                       R25 R26 K28 ["MessageActions"]
      358 GETTABLEKS                       R24 R25 K18 ["ThumbsUp"]
      360 SETTABLEKS                       R24 R23 K44 ["testId"]
      362 CALL                             R21 2 1
      363 SETTABLEKS                       R21 R20 K37 ["ThumbsUpButton"]
      365 GETUPVAL                         R21 19
      366 GETUPVAL                         R22 24
      367 DUPTABLE                         R23 K45 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      368 SETTABLEKS                       R15 R23 K41 ["icon"]
      370 LOADK                            R24 K46 ["size-600-600 radius-small align-x-center align-y-center"]
      371 SETTABLEKS                       R24 R23 K34 ["tag"]
      373 LOADK                            R24 K47 ["size-400-400 content-system-neutral"]
      374 SETTABLEKS                       R24 R23 K42 ["iconTag"]
      376 SETTABLEKS                       R11 R23 K43 ["onActivated"]
      378 MOVE                             R24 R16
      379 CALL                             R24 0 1
      380 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      382 GETUPVAL                         R26 25
      383 GETTABLEKS                       R25 R26 K28 ["MessageActions"]
      385 GETTABLEKS                       R24 R25 K19 ["ThumbsDown"]
      387 SETTABLEKS                       R24 R23 K44 ["testId"]
      389 CALL                             R21 2 1
      390 SETTABLEKS                       R21 R20 K38 ["ThumbsDownButton"]
      392 GETUPVAL                         R21 19
      393 GETUPVAL                         R22 24
      394 DUPTABLE                         R23 K45 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      395 GETUPVAL                         R25 26
      396 GETTABLE                         R24 R25 R2
      397 SETTABLEKS                       R24 R23 K41 ["icon"]
      399 LOADK                            R24 K46 ["size-600-600 radius-small align-x-center align-y-center"]
      400 SETTABLEKS                       R24 R23 K34 ["tag"]
      402 LOADK                            R24 K47 ["size-400-400 content-system-neutral"]
      403 SETTABLEKS                       R24 R23 K42 ["iconTag"]
      405 SETTABLEKS                       R12 R23 K43 ["onActivated"]
      407 MOVE                             R24 R16
      408 CALL                             R24 0 1
      409 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      411 GETUPVAL                         R26 25
      412 GETTABLEKS                       R25 R26 K28 ["MessageActions"]
      414 GETTABLEKS                       R24 R25 K20 ["Retry"]
      416 SETTABLEKS                       R24 R23 K44 ["testId"]
      418 CALL                             R21 2 1
      419 SETTABLEKS                       R21 R20 K39 ["RetryButton"]
      421 CALL                             R17 3 -1
      422 CLOSEUPVALS                      R3
      423 RETURN                           R17 -1

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
      111 GETTABLEKS                       R17 R0 K24 ["Hooks"]
      113 GETTABLEKS                       R16 R17 K28 ["useSwitchThread"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R18 R0 K29 ["Flags"]
      120 GETTABLEKS                       R17 R18 K30 ["FFlagAssistantMultipleChatSupport"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R19 R0 K29 ["Flags"]
      127 GETTABLEKS                       R18 R19 K31 ["FFlagAssistantPersistConversations"]
      129 CALL                             R17 1 1
      130 GETTABLEKS                       R18 R3 K32 ["IconButton"]
      132 GETTABLEKS                       R19 R3 K33 ["Popover"]
      134 GETTABLEKS                       R20 R3 K34 ["Text"]
      136 GETTABLEKS                       R21 R3 K35 ["View"]
      138 GETTABLEKS                       R22 R5 K36 ["createNextOrder"]
      140 GETTABLEKS                       R23 R4 K37 ["createElement"]
      142 DUPTABLE                         R24 K40 [{"Dark", "Light"}]
      143 LOADK                            R25 K41 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUpOutline.png"]
      144 SETTABLEKS                       R25 R24 K38 ["Dark"]
      146 LOADK                            R25 K42 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUpOutline.png"]
      147 SETTABLEKS                       R25 R24 K39 ["Light"]
      149 DUPTABLE                         R25 K40 [{"Dark", "Light"}]
      150 LOADK                            R26 K43 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUp.png"]
      151 SETTABLEKS                       R26 R25 K38 ["Dark"]
      153 LOADK                            R26 K44 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUp.png"]
      154 SETTABLEKS                       R26 R25 K39 ["Light"]
      156 DUPTABLE                         R26 K40 [{"Dark", "Light"}]
      157 LOADK                            R27 K45 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDownOutline.png"]
      158 SETTABLEKS                       R27 R26 K38 ["Dark"]
      160 LOADK                            R27 K46 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDownOutline.png"]
      161 SETTABLEKS                       R27 R26 K39 ["Light"]
      163 DUPTABLE                         R27 K40 [{"Dark", "Light"}]
      164 LOADK                            R28 K47 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDown.png"]
      165 SETTABLEKS                       R28 R27 K38 ["Dark"]
      167 LOADK                            R28 K48 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDown.png"]
      168 SETTABLEKS                       R28 R27 K39 ["Light"]
      170 DUPTABLE                         R28 K40 [{"Dark", "Light"}]
      171 LOADK                            R29 K49 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/Regenerate.png"]
      172 SETTABLEKS                       R29 R28 K38 ["Dark"]
      174 LOADK                            R29 K50 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/Regenerate.png"]
      175 SETTABLEKS                       R29 R28 K39 ["Light"]
      177 DUPTABLE                         R29 K53 [{"Up", "Down"}]
      178 LOADK                            R30 K54 ["up"]
      179 SETTABLEKS                       R30 R29 K51 ["Up"]
      181 LOADK                            R30 K55 ["down"]
      182 SETTABLEKS                       R30 R29 K52 ["Down"]
      184 GETTABLEKS                       R30 R4 K56 ["memo"]
      186 DUPCLOSURE                       R31 K57 [PROTO_4]
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R5
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R19
      192 CAPTURE                          VAL R20
      193 CALL                             R30 1 1
      194 DUPCLOSURE                       R31 K58 [PROTO_17]
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R15
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R11
      204 CAPTURE                          VAL R29
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R25
      209 CAPTURE                          VAL R24
      210 CAPTURE                          VAL R27
      211 CAPTURE                          VAL R26
      212 CAPTURE                          VAL R22
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R23
      215 CAPTURE                          VAL R30
      216 CAPTURE                          VAL R9
      217 CAPTURE                          VAL R18
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R1
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R28
      222 DUPCLOSURE                       R32 K59 [PROTO_18]
      223 CAPTURE                          VAL R16
      224 CAPTURE                          VAL R23
      225 CAPTURE                          VAL R31
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R7
      228 RETURN                           R32 1
