PROTO_0:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 LOADK                            R1 K3 [0.5]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GuiState"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useRef"]
        9 LOADNIL                          R3
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["useState"]
       14 LOADB                            R4 0
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K4 ["useAsync"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R7 0 1
       23 MOVE                             R8 R3
       24 SETLIST                          R7 R8 1 [1]
       26 CALL                             R5 2 1
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K5 ["useEffect"]
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
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K10 ["Fragment"]
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
       75 GETUPVAL                         R12 4
       76 GETTABLEKS                       R12 R12 K19 ["Root"]
       78 DUPTABLE                         R13 K21 [{"isOpen"}]
       79 LOADB                            R14 1
       80 SETTABLEKS                       R14 R13 K20 ["isOpen"]
       82 NEWTABLE                         R14 2 0
       84 GETUPVAL                         R15 3
       85 GETUPVAL                         R16 4
       86 GETTABLEKS                       R16 R16 K22 ["Anchor"]
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
      102 GETUPVAL                         R17 4
      103 GETTABLEKS                       R17 R17 K26 ["Content"]
      105 DUPTABLE                         R18 K32 [{"side", "align", "hasArrow", "backgroundStyle", "radius"}]
      106 DUPTABLE                         R19 K35 [{"position", "offset"}]
      107 GETUPVAL                         R20 0
      108 GETTABLEKS                       R20 R20 K36 ["Enums"]
      110 GETTABLEKS                       R20 R20 K37 ["PopoverSide"]
      112 GETTABLEKS                       R20 R20 K38 ["Bottom"]
      114 SETTABLEKS                       R20 R19 K33 ["position"]
      116 GETTABLEKS                       R20 R1 K39 ["Gap"]
      118 GETTABLEKS                       R20 R20 K40 ["XSmall"]
      120 SETTABLEKS                       R20 R19 K34 ["offset"]
      122 SETTABLEKS                       R19 R18 K27 ["side"]
      124 GETUPVAL                         R19 0
      125 GETTABLEKS                       R19 R19 K36 ["Enums"]
      127 GETTABLEKS                       R19 R19 K41 ["PopoverAlign"]
      129 GETTABLEKS                       R19 R19 K42 ["Center"]
      131 SETTABLEKS                       R19 R18 K28 ["align"]
      133 LOADB                            R19 1
      134 SETTABLEKS                       R19 R18 K29 ["hasArrow"]
      136 GETTABLEKS                       R19 R1 K43 ["Inverse"]
      138 GETTABLEKS                       R19 R19 K44 ["Surface"]
      140 GETTABLEKS                       R19 R19 K45 ["Surface_0"]
      142 SETTABLEKS                       R19 R18 K30 ["backgroundStyle"]
      144 GETUPVAL                         R19 0
      145 GETTABLEKS                       R19 R19 K36 ["Enums"]
      147 GETTABLEKS                       R19 R19 K46 ["Radius"]
      149 GETTABLEKS                       R19 R19 K47 ["Small"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["messageId"]
        5 SETTABLEKS                       R3 R2 K0 ["messageId"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R3 R2 K1 ["transformFn"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["messageId"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantMessageSent_%*_%*"]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K1 ["messageId"]
        6 NAMECALL                         R2 R2 K2 ["format"]
        8 CALL                             R2 3 1
        9 MOVE                             R1 R2
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U2
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 CALL                             R3 0 1
        4 GETTABLEKS                       R3 R3 K1 ["EventLogger"]
        6 GETUPVAL                         R5 1
        7 CALL                             R5 0 1
        8 JUMPIFNOT                        R5 ; [+4]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["messageId"]
       12 JUMP                             ; [+6]
       13 GETTABLEKS                       R4 R3 K3 ["getMessageGuid"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K2 ["messageId"]
       18 CALL                             R4 1 1
       19 DUPTABLE                         R5 K8 [{"messageGuid", "sessionId", "feedbackCategory", "feedbackMessage"}]
       20 SETTABLEKS                       R4 R5 K4 ["messageGuid"]
       22 GETUPVAL                         R6 3
       23 SETTABLEKS                       R6 R5 K5 ["sessionId"]
       25 SETTABLEKS                       R1 R5 K6 ["feedbackCategory"]
       27 SETTABLEKS                       R2 R5 K7 ["feedbackMessage"]
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K9 ["Up"]
       32 JUMPIFNOTEQ                      R0 R6 ; [+6]
       34 GETTABLEKS                       R6 R3 K10 ["logThumbsUp"]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 0
       38 RETURN                           R0 0
       39 GETTABLEKS                       R6 R3 K11 ["logThumbsDown"]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 0
       43 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 CALL                             R0 3 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["closeFeedback"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["openFeedback"]
        9 DUPTABLE                         R3 K5 [{"thumbsDirection", "onSubmit", "onDismiss"}]
       10 SETTABLEKS                       R0 R3 K2 ["thumbsDirection"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R4 R3 K3 ["onSubmit"]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R4 R3 K4 ["onDismiss"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["Up"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETUPVAL                         R0 4
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 5
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K0 ["Up"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 6
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K0 ["Up"]
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 CALL                             R0 3 0
       27 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["Down"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETUPVAL                         R0 4
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 5
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K0 ["Down"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 6
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K0 ["Down"]
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 CALL                             R0 3 0
       27 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+4]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["messageId"]
       12 JUMP                             ; [+6]
       13 GETTABLEKS                       R1 R0 K3 ["getMessageGuid"]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K2 ["messageId"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R0 K4 ["logRetry"]
       21 DUPTABLE                         R3 K7 [{"messageGuid", "sessionId"}]
       22 SETTABLEKS                       R1 R3 K5 ["messageGuid"]
       24 GETUPVAL                         R4 3
       25 SETTABLEKS                       R4 R3 K6 ["sessionId"]
       27 CALL                             R2 1 0
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K8 ["retryMessage"]
       31 CALL                             R2 0 0
       32 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["messageId"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 3
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 4
        9 GETTABLEKS                       R3 R3 K1 ["ThreadSwitchSource"]
       11 GETTABLEKS                       R3 R3 K2 ["MessageBranch"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "ref"}]
        3 DUPTABLE                         R4 K8 [{"name", "variant"}]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R5 R5 K9 ["Enums"]
        7 GETTABLEKS                       R5 R5 K10 ["IconName"]
        9 GETTABLEKS                       R5 R5 K11 ["ThumbUp"]
       11 SETTABLEKS                       R5 R4 K7 ["name"]
       13 GETUPVAL                         R6 3
       14 GETUPVAL                         R7 4
       15 GETTABLEKS                       R7 R7 K12 ["Up"]
       17 JUMPIFNOTEQ                      R6 R7 ; [+9]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K9 ["Enums"]
       22 GETTABLEKS                       R5 R5 K13 ["IconVariant"]
       24 GETTABLEKS                       R5 R5 K14 ["Filled"]
       26 JUMP                             ; [+7]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K9 ["Enums"]
       30 GETTABLEKS                       R5 R5 K13 ["IconVariant"]
       32 GETTABLEKS                       R5 R5 K15 ["Regular"]
       34 SETTABLEKS                       R5 R4 K2 ["variant"]
       36 SETTABLEKS                       R4 R3 K0 ["icon"]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K9 ["Enums"]
       41 GETTABLEKS                       R4 R4 K16 ["InputSize"]
       43 GETTABLEKS                       R4 R4 K17 ["XSmall"]
       45 SETTABLEKS                       R4 R3 K1 ["size"]
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R4 R4 K9 ["Enums"]
       50 GETTABLEKS                       R4 R4 K18 ["ButtonVariant"]
       52 GETTABLEKS                       R4 R4 K19 ["Utility"]
       54 SETTABLEKS                       R4 R3 K2 ["variant"]
       56 GETUPVAL                         R4 5
       57 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       59 GETTABLEKS                       R4 R0 K20 ["layoutOrder"]
       61 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       63 GETTABLEKS                       R4 R0 K5 ["ref"]
       65 SETTABLEKS                       R4 R3 K5 ["ref"]
       67 CALL                             R1 2 -1
       68 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "ref"}]
        3 DUPTABLE                         R4 K8 [{"name", "variant"}]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R5 R5 K9 ["Enums"]
        7 GETTABLEKS                       R5 R5 K10 ["IconName"]
        9 GETTABLEKS                       R5 R5 K11 ["ThumbDown"]
       11 SETTABLEKS                       R5 R4 K7 ["name"]
       13 GETUPVAL                         R6 3
       14 GETUPVAL                         R7 4
       15 GETTABLEKS                       R7 R7 K12 ["Down"]
       17 JUMPIFNOTEQ                      R6 R7 ; [+9]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K9 ["Enums"]
       22 GETTABLEKS                       R5 R5 K13 ["IconVariant"]
       24 GETTABLEKS                       R5 R5 K14 ["Filled"]
       26 JUMP                             ; [+7]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K9 ["Enums"]
       30 GETTABLEKS                       R5 R5 K13 ["IconVariant"]
       32 GETTABLEKS                       R5 R5 K15 ["Regular"]
       34 SETTABLEKS                       R5 R4 K2 ["variant"]
       36 SETTABLEKS                       R4 R3 K0 ["icon"]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K9 ["Enums"]
       41 GETTABLEKS                       R4 R4 K16 ["InputSize"]
       43 GETTABLEKS                       R4 R4 K17 ["XSmall"]
       45 SETTABLEKS                       R4 R3 K1 ["size"]
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R4 R4 K9 ["Enums"]
       50 GETTABLEKS                       R4 R4 K18 ["ButtonVariant"]
       52 GETTABLEKS                       R4 R4 K19 ["Utility"]
       54 SETTABLEKS                       R4 R3 K2 ["variant"]
       56 GETUPVAL                         R4 5
       57 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       59 GETTABLEKS                       R4 R0 K20 ["layoutOrder"]
       61 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       63 GETTABLEKS                       R4 R0 K5 ["ref"]
       65 SETTABLEKS                       R4 R3 K5 ["ref"]
       67 CALL                             R1 2 -1
       68 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "ref"}]
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R4 R4 K7 ["Enums"]
        6 GETTABLEKS                       R4 R4 K8 ["IconName"]
        8 GETTABLEKS                       R4 R4 K9 ["TwoArrowsSpinClockwise"]
       10 SETTABLEKS                       R4 R3 K0 ["icon"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K7 ["Enums"]
       15 GETTABLEKS                       R4 R4 K10 ["InputSize"]
       17 GETTABLEKS                       R4 R4 K11 ["XSmall"]
       19 SETTABLEKS                       R4 R3 K1 ["size"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K7 ["Enums"]
       24 GETTABLEKS                       R4 R4 K12 ["ButtonVariant"]
       26 GETTABLEKS                       R4 R4 K13 ["Utility"]
       28 SETTABLEKS                       R4 R3 K2 ["variant"]
       30 GETUPVAL                         R4 3
       31 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       33 GETTABLEKS                       R4 R0 K14 ["layoutOrder"]
       35 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       37 GETTABLEKS                       R4 R0 K5 ["ref"]
       39 SETTABLEKS                       R4 R3 K5 ["ref"]
       41 CALL                             R1 2 -1
       42 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "ref"}]
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R4 R4 K7 ["Enums"]
        6 GETTABLEKS                       R4 R4 K8 ["IconName"]
        8 GETTABLEKS                       R4 R4 K9 ["TwoArrowsBranchRight"]
       10 SETTABLEKS                       R4 R3 K0 ["icon"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K7 ["Enums"]
       15 GETTABLEKS                       R4 R4 K10 ["InputSize"]
       17 GETTABLEKS                       R4 R4 K11 ["XSmall"]
       19 SETTABLEKS                       R4 R3 K1 ["size"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K7 ["Enums"]
       24 GETTABLEKS                       R4 R4 K12 ["ButtonVariant"]
       26 GETTABLEKS                       R4 R4 K13 ["Utility"]
       28 SETTABLEKS                       R4 R3 K2 ["variant"]
       30 GETUPVAL                         R4 3
       31 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       33 GETTABLEKS                       R4 R0 K14 ["layoutOrder"]
       35 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       37 GETTABLEKS                       R4 R0 K5 ["ref"]
       39 SETTABLEKS                       R4 R3 K5 ["ref"]
       41 CALL                             R1 2 -1
       42 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Config"]
        8 GETTABLEKS                       R2 R2 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R2 K4 ["Name"]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 GETUPVAL                         R5 1
       15 CALL                             R5 0 1
       16 JUMPIFNOT                        R5 ; [+12]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K5 ["useContext"]
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K6 ["Context"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R3 R5 K7 ["threadId"]
       26 GETUPVAL                         R6 4
       27 CALL                             R6 0 1
       28 MOVE                             R4 R6
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K5 ["useContext"]
       32 GETUPVAL                         R6 5
       33 GETTABLEKS                       R6 R6 K6 ["Context"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R5 K8 ["sessionId"]
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 GETUPVAL                         R9 1
       41 CALL                             R9 0 1
       42 JUMPIFNOT                        R9 ; [+20]
       43 GETUPVAL                         R9 6
       44 CALL                             R9 0 1
       45 GETTABLEKS                       R7 R0 K9 ["thumbsState"]
       47 GETUPVAL                         R10 2
       48 GETTABLEKS                       R10 R10 K10 ["useCallback"]
       50 NEWCLOSURE                       R11 P0
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R12 0 2
       55 GETTABLEKS                       R13 R0 K11 ["messageId"]
       57 MOVE                             R14 R9
       58 SETLIST                          R12 R13 2 [1]
       60 CALL                             R10 2 1
       61 MOVE                             R8 R10
       62 JUMP                             ; [+7]
       63 GETUPVAL                         R9 2
       64 GETTABLEKS                       R9 R9 K12 ["useState"]
       66 LOADNIL                          R10
       67 CALL                             R9 1 2
       68 MOVE                             R7 R9
       69 MOVE                             R8 R10
       70 GETUPVAL                         R9 1
       71 CALL                             R9 0 1
       72 JUMPIF                           R9 ; [+18]
       73 GETUPVAL                         R9 7
       74 CALL                             R9 0 1
       75 GETUPVAL                         R10 2
       76 GETTABLEKS                       R10 R10 K13 ["useEffect"]
       78 NEWCLOSURE                       R11 P1
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R9
       83 NEWTABLE                         R12 0 2
       85 GETTABLEKS                       R13 R0 K11 ["messageId"]
       87 MOVE                             R14 R6
       88 SETLIST                          R12 R13 2 [1]
       90 CALL                             R10 2 0
       91 GETUPVAL                         R10 9
       92 CALL                             R10 0 1
       93 JUMPIFNOT                        R10 ; [+8]
       94 GETUPVAL                         R9 2
       95 GETTABLEKS                       R9 R9 K5 ["useContext"]
       97 GETUPVAL                         R10 10
       98 GETTABLEKS                       R10 R10 K6 ["Context"]
      100 CALL                             R9 1 1
      101 JUMP                             ; [+1]
      102 LOADNIL                          R9
      103 GETUPVAL                         R10 2
      104 GETTABLEKS                       R10 R10 K10 ["useCallback"]
      106 NEWCLOSURE                       R11 P2
      107 CAPTURE                          UPVAL U11
      108 CAPTURE                          UPVAL U1
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R6
      111 CAPTURE                          UPVAL U12
      112 NEWTABLE                         R12 0 2
      114 GETTABLEKS                       R13 R0 K11 ["messageId"]
      116 MOVE                             R14 R6
      117 SETLIST                          R12 R13 2 [1]
      119 CALL                             R10 2 1
      120 GETUPVAL                         R11 2
      121 GETTABLEKS                       R11 R11 K10 ["useCallback"]
      123 NEWCLOSURE                       R12 P3
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R10
      126 NEWTABLE                         R13 0 2
      128 MOVE                             R14 R9
      129 MOVE                             R15 R10
      130 SETLIST                          R13 R14 2 [1]
      132 CALL                             R11 2 1
      133 GETUPVAL                         R12 2
      134 GETTABLEKS                       R12 R12 K10 ["useCallback"]
      136 NEWCLOSURE                       R13 P4
      137 CAPTURE                          REF R7
      138 CAPTURE                          REF R8
      139 CAPTURE                          UPVAL U12
      140 CAPTURE                          UPVAL U9
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R10
      144 NEWTABLE                         R14 0 4
      146 MOVE                             R15 R7
      147 MOVE                             R16 R10
      148 MOVE                             R17 R9
      149 MOVE                             R18 R11
      150 SETLIST                          R14 R15 4 [1]
      152 CALL                             R12 2 1
      153 GETUPVAL                         R13 2
      154 GETTABLEKS                       R13 R13 K10 ["useCallback"]
      156 NEWCLOSURE                       R14 P5
      157 CAPTURE                          REF R7
      158 CAPTURE                          REF R8
      159 CAPTURE                          UPVAL U12
      160 CAPTURE                          UPVAL U9
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R10
      164 NEWTABLE                         R15 0 4
      166 MOVE                             R16 R7
      167 MOVE                             R17 R10
      168 MOVE                             R18 R9
      169 MOVE                             R19 R11
      170 SETLIST                          R15 R16 4 [1]
      172 CALL                             R13 2 1
      173 GETUPVAL                         R14 2
      174 GETTABLEKS                       R14 R14 K10 ["useCallback"]
      176 NEWCLOSURE                       R15 P6
      177 CAPTURE                          UPVAL U11
      178 CAPTURE                          UPVAL U1
      179 CAPTURE                          VAL R0
      180 CAPTURE                          VAL R6
      181 NEWTABLE                         R16 0 3
      183 GETTABLEKS                       R17 R0 K14 ["retryMessage"]
      185 GETTABLEKS                       R18 R0 K11 ["messageId"]
      187 MOVE                             R19 R6
      188 SETLIST                          R16 R17 3 [1]
      190 CALL                             R14 2 1
      191 LOADNIL                          R15
      192 GETUPVAL                         R16 1
      193 CALL                             R16 0 1
      194 JUMPIFNOT                        R16 ; [+22]
      195 GETUPVAL                         R16 13
      196 CALL                             R16 0 1
      197 GETUPVAL                         R17 2
      198 GETTABLEKS                       R17 R17 K10 ["useCallback"]
      200 NEWCLOSURE                       R18 P7
      201 CAPTURE                          VAL R16
      202 CAPTURE                          REF R3
      203 CAPTURE                          VAL R0
      204 CAPTURE                          REF R4
      205 CAPTURE                          UPVAL U14
      206 NEWTABLE                         R19 0 4
      208 MOVE                             R20 R4
      209 MOVE                             R21 R16
      210 MOVE                             R22 R3
      211 GETTABLEKS                       R23 R0 K11 ["messageId"]
      213 SETLIST                          R19 R20 4 [1]
      215 CALL                             R17 2 1
      216 MOVE                             R15 R17
      217 GETUPVAL                         R17 12
      218 GETTABLEKS                       R17 R17 K15 ["Up"]
      220 JUMPIFNOTEQ                      R7 R17 ; [+4]
      222 GETUPVAL                         R17 15
      223 GETTABLE                         R16 R17 R2
      224 JUMP                             ; [+2]
      225 GETUPVAL                         R17 16
      226 GETTABLE                         R16 R17 R2
      227 GETUPVAL                         R18 12
      228 GETTABLEKS                       R18 R18 K16 ["Down"]
      230 JUMPIFNOTEQ                      R7 R18 ; [+4]
      232 GETUPVAL                         R18 17
      233 GETTABLE                         R17 R18 R2
      234 JUMP                             ; [+2]
      235 GETUPVAL                         R18 18
      236 GETTABLE                         R17 R18 R2
      237 GETUPVAL                         R18 19
      238 CALL                             R18 0 1
      239 GETUPVAL                         R19 1
      240 CALL                             R19 0 1
      241 JUMPIFNOT                        R19 ; [+130]
      242 GETUPVAL                         R19 20
      243 GETUPVAL                         R20 2
      244 GETTABLEKS                       R20 R20 K17 ["Fragment"]
      246 LOADNIL                          R21
      247 DUPTABLE                         R22 K22 [{"ThumbsUp", "ThumbsDown", "Retry", "Branch"}]
      248 GETUPVAL                         R23 20
      249 GETUPVAL                         R24 21
      250 DUPTABLE                         R25 K27 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      251 LOADK                            R26 K18 ["ThumbsUp"]
      252 SETTABLEKS                       R26 R25 K23 ["name"]
      254 GETUPVAL                         R26 22
      255 LOADK                            R28 K28 ["MessageActions"]
      256 LOADK                            R29 K29 ["TooltipThumbsUp"]
      257 NAMECALL                         R26 R26 K30 ["getText"]
      259 CALL                             R26 3 1
      260 SETTABLEKS                       R26 R25 K24 ["title"]
      262 MOVE                             R26 R18
      263 CALL                             R26 0 1
      264 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      266 NEWCLOSURE                       R26 P8
      267 CAPTURE                          UPVAL U20
      268 CAPTURE                          UPVAL U23
      269 CAPTURE                          UPVAL U0
      270 CAPTURE                          REF R7
      271 CAPTURE                          UPVAL U12
      272 CAPTURE                          VAL R12
      273 SETTABLEKS                       R26 R25 K26 ["renderAnchor"]
      275 CALL                             R23 2 1
      276 SETTABLEKS                       R23 R22 K18 ["ThumbsUp"]
      278 GETUPVAL                         R23 20
      279 GETUPVAL                         R24 21
      280 DUPTABLE                         R25 K27 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      281 LOADK                            R26 K19 ["ThumbsDown"]
      282 SETTABLEKS                       R26 R25 K23 ["name"]
      284 GETUPVAL                         R26 22
      285 LOADK                            R28 K28 ["MessageActions"]
      286 LOADK                            R29 K31 ["TooltipThumbsDown"]
      287 NAMECALL                         R26 R26 K30 ["getText"]
      289 CALL                             R26 3 1
      290 SETTABLEKS                       R26 R25 K24 ["title"]
      292 MOVE                             R26 R18
      293 CALL                             R26 0 1
      294 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      296 NEWCLOSURE                       R26 P9
      297 CAPTURE                          UPVAL U20
      298 CAPTURE                          UPVAL U23
      299 CAPTURE                          UPVAL U0
      300 CAPTURE                          REF R7
      301 CAPTURE                          UPVAL U12
      302 CAPTURE                          VAL R13
      303 SETTABLEKS                       R26 R25 K26 ["renderAnchor"]
      305 CALL                             R23 2 1
      306 SETTABLEKS                       R23 R22 K19 ["ThumbsDown"]
      308 GETUPVAL                         R23 20
      309 GETUPVAL                         R24 21
      310 DUPTABLE                         R25 K27 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      311 LOADK                            R26 K20 ["Retry"]
      312 SETTABLEKS                       R26 R25 K23 ["name"]
      314 GETUPVAL                         R26 22
      315 LOADK                            R28 K28 ["MessageActions"]
      316 LOADK                            R29 K32 ["TooltipRetry"]
      317 NAMECALL                         R26 R26 K30 ["getText"]
      319 CALL                             R26 3 1
      320 SETTABLEKS                       R26 R25 K24 ["title"]
      322 MOVE                             R26 R18
      323 CALL                             R26 0 1
      324 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      326 NEWCLOSURE                       R26 P10
      327 CAPTURE                          UPVAL U20
      328 CAPTURE                          UPVAL U23
      329 CAPTURE                          UPVAL U0
      330 CAPTURE                          VAL R14
      331 SETTABLEKS                       R26 R25 K26 ["renderAnchor"]
      333 CALL                             R23 2 1
      334 SETTABLEKS                       R23 R22 K20 ["Retry"]
      336 GETUPVAL                         R24 1
      337 CALL                             R24 0 1
      338 JUMPIFNOT                        R24 ; [+27]
      339 GETUPVAL                         R23 20
      340 GETUPVAL                         R24 21
      341 DUPTABLE                         R25 K27 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      342 LOADK                            R26 K21 ["Branch"]
      343 SETTABLEKS                       R26 R25 K23 ["name"]
      345 GETUPVAL                         R26 22
      346 LOADK                            R28 K28 ["MessageActions"]
      347 LOADK                            R29 K33 ["TooltipBranch"]
      348 NAMECALL                         R26 R26 K30 ["getText"]
      350 CALL                             R26 3 1
      351 SETTABLEKS                       R26 R25 K24 ["title"]
      353 MOVE                             R26 R18
      354 CALL                             R26 0 1
      355 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      357 NEWCLOSURE                       R26 P11
      358 CAPTURE                          UPVAL U20
      359 CAPTURE                          UPVAL U23
      360 CAPTURE                          UPVAL U0
      361 CAPTURE                          REF R15
      362 SETTABLEKS                       R26 R25 K26 ["renderAnchor"]
      364 CALL                             R23 2 1
      365 JUMP                             ; [+1]
      366 LOADNIL                          R23
      367 SETTABLEKS                       R23 R22 K21 ["Branch"]
      369 CALL                             R19 3 -1
      370 CLOSEUPVALS                      R3
      371 RETURN                           R19 -1
      372 GETUPVAL                         R19 20
      373 GETUPVAL                         R20 24
      374 DUPTABLE                         R21 K35 [{"tag", "LayoutOrder"}]
      375 LOADK                            R22 K36 ["row gap-small auto-xy"]
      376 SETTABLEKS                       R22 R21 K34 ["tag"]
      378 GETTABLEKS                       R22 R0 K25 ["LayoutOrder"]
      380 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      382 DUPTABLE                         R22 K40 [{"ThumbsUpButton", "ThumbsDownButton", "RetryButton"}]
      383 GETUPVAL                         R24 25
      384 CALL                             R24 0 1
      385 JUMPIFNOT                        R24 ; [+70]
      386 GETUPVAL                         R23 20
      387 GETUPVAL                         R24 23
      388 DUPTABLE                         R25 K46 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      389 DUPTABLE                         R26 K47 [{"name", "variant"}]
      390 GETUPVAL                         R27 0
      391 GETTABLEKS                       R27 R27 K48 ["Enums"]
      393 GETTABLEKS                       R27 R27 K49 ["IconName"]
      395 GETTABLEKS                       R27 R27 K50 ["ThumbUp"]
      397 SETTABLEKS                       R27 R26 K23 ["name"]
      399 GETUPVAL                         R28 12
      400 GETTABLEKS                       R28 R28 K15 ["Up"]
      402 JUMPIFNOTEQ                      R7 R28 ; [+9]
      404 GETUPVAL                         R27 0
      405 GETTABLEKS                       R27 R27 K48 ["Enums"]
      407 GETTABLEKS                       R27 R27 K51 ["IconVariant"]
      409 GETTABLEKS                       R27 R27 K52 ["Filled"]
      411 JUMP                             ; [+7]
      412 GETUPVAL                         R27 0
      413 GETTABLEKS                       R27 R27 K48 ["Enums"]
      415 GETTABLEKS                       R27 R27 K51 ["IconVariant"]
      417 GETTABLEKS                       R27 R27 K53 ["Regular"]
      419 SETTABLEKS                       R27 R26 K43 ["variant"]
      421 SETTABLEKS                       R26 R25 K41 ["icon"]
      423 GETUPVAL                         R26 0
      424 GETTABLEKS                       R26 R26 K48 ["Enums"]
      426 GETTABLEKS                       R26 R26 K54 ["InputSize"]
      428 GETTABLEKS                       R26 R26 K55 ["XSmall"]
      430 SETTABLEKS                       R26 R25 K42 ["size"]
      432 GETUPVAL                         R26 0
      433 GETTABLEKS                       R26 R26 K48 ["Enums"]
      435 GETTABLEKS                       R26 R26 K56 ["ButtonVariant"]
      437 GETTABLEKS                       R26 R26 K57 ["Utility"]
      439 SETTABLEKS                       R26 R25 K43 ["variant"]
      441 SETTABLEKS                       R12 R25 K44 ["onActivated"]
      443 MOVE                             R26 R18
      444 CALL                             R26 0 1
      445 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      447 GETUPVAL                         R26 26
      448 GETTABLEKS                       R26 R26 K28 ["MessageActions"]
      450 GETTABLEKS                       R26 R26 K18 ["ThumbsUp"]
      452 SETTABLEKS                       R26 R25 K45 ["testId"]
      454 CALL                             R23 2 1
      455 JUMP                             ; [+25]
      456 GETUPVAL                         R23 20
      457 GETUPVAL                         R24 27
      458 DUPTABLE                         R25 K59 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      459 SETTABLEKS                       R16 R25 K41 ["icon"]
      461 LOADK                            R26 K60 ["size-600-600 radius-small align-x-center align-y-center"]
      462 SETTABLEKS                       R26 R25 K34 ["tag"]
      464 LOADK                            R26 K61 ["size-400-400 content-system-neutral"]
      465 SETTABLEKS                       R26 R25 K58 ["iconTag"]
      467 SETTABLEKS                       R12 R25 K44 ["onActivated"]
      469 MOVE                             R26 R18
      470 CALL                             R26 0 1
      471 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      473 GETUPVAL                         R26 26
      474 GETTABLEKS                       R26 R26 K28 ["MessageActions"]
      476 GETTABLEKS                       R26 R26 K18 ["ThumbsUp"]
      478 SETTABLEKS                       R26 R25 K45 ["testId"]
      480 CALL                             R23 2 1
      481 SETTABLEKS                       R23 R22 K37 ["ThumbsUpButton"]
      483 GETUPVAL                         R24 25
      484 CALL                             R24 0 1
      485 JUMPIFNOT                        R24 ; [+70]
      486 GETUPVAL                         R23 20
      487 GETUPVAL                         R24 23
      488 DUPTABLE                         R25 K46 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      489 DUPTABLE                         R26 K47 [{"name", "variant"}]
      490 GETUPVAL                         R27 0
      491 GETTABLEKS                       R27 R27 K48 ["Enums"]
      493 GETTABLEKS                       R27 R27 K49 ["IconName"]
      495 GETTABLEKS                       R27 R27 K62 ["ThumbDown"]
      497 SETTABLEKS                       R27 R26 K23 ["name"]
      499 GETUPVAL                         R28 12
      500 GETTABLEKS                       R28 R28 K16 ["Down"]
      502 JUMPIFNOTEQ                      R7 R28 ; [+9]
      504 GETUPVAL                         R27 0
      505 GETTABLEKS                       R27 R27 K48 ["Enums"]
      507 GETTABLEKS                       R27 R27 K51 ["IconVariant"]
      509 GETTABLEKS                       R27 R27 K52 ["Filled"]
      511 JUMP                             ; [+7]
      512 GETUPVAL                         R27 0
      513 GETTABLEKS                       R27 R27 K48 ["Enums"]
      515 GETTABLEKS                       R27 R27 K51 ["IconVariant"]
      517 GETTABLEKS                       R27 R27 K53 ["Regular"]
      519 SETTABLEKS                       R27 R26 K43 ["variant"]
      521 SETTABLEKS                       R26 R25 K41 ["icon"]
      523 GETUPVAL                         R26 0
      524 GETTABLEKS                       R26 R26 K48 ["Enums"]
      526 GETTABLEKS                       R26 R26 K54 ["InputSize"]
      528 GETTABLEKS                       R26 R26 K55 ["XSmall"]
      530 SETTABLEKS                       R26 R25 K42 ["size"]
      532 GETUPVAL                         R26 0
      533 GETTABLEKS                       R26 R26 K48 ["Enums"]
      535 GETTABLEKS                       R26 R26 K56 ["ButtonVariant"]
      537 GETTABLEKS                       R26 R26 K57 ["Utility"]
      539 SETTABLEKS                       R26 R25 K43 ["variant"]
      541 SETTABLEKS                       R13 R25 K44 ["onActivated"]
      543 MOVE                             R26 R18
      544 CALL                             R26 0 1
      545 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      547 GETUPVAL                         R26 26
      548 GETTABLEKS                       R26 R26 K28 ["MessageActions"]
      550 GETTABLEKS                       R26 R26 K19 ["ThumbsDown"]
      552 SETTABLEKS                       R26 R25 K45 ["testId"]
      554 CALL                             R23 2 1
      555 JUMP                             ; [+25]
      556 GETUPVAL                         R23 20
      557 GETUPVAL                         R24 27
      558 DUPTABLE                         R25 K59 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      559 SETTABLEKS                       R17 R25 K41 ["icon"]
      561 LOADK                            R26 K60 ["size-600-600 radius-small align-x-center align-y-center"]
      562 SETTABLEKS                       R26 R25 K34 ["tag"]
      564 LOADK                            R26 K61 ["size-400-400 content-system-neutral"]
      565 SETTABLEKS                       R26 R25 K58 ["iconTag"]
      567 SETTABLEKS                       R13 R25 K44 ["onActivated"]
      569 MOVE                             R26 R18
      570 CALL                             R26 0 1
      571 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      573 GETUPVAL                         R26 26
      574 GETTABLEKS                       R26 R26 K28 ["MessageActions"]
      576 GETTABLEKS                       R26 R26 K19 ["ThumbsDown"]
      578 SETTABLEKS                       R26 R25 K45 ["testId"]
      580 CALL                             R23 2 1
      581 SETTABLEKS                       R23 R22 K38 ["ThumbsDownButton"]
      583 GETUPVAL                         R24 25
      584 CALL                             R24 0 1
      585 JUMPIFNOT                        R24 ; [+45]
      586 GETUPVAL                         R23 20
      587 GETUPVAL                         R24 23
      588 DUPTABLE                         R25 K46 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      589 GETUPVAL                         R26 0
      590 GETTABLEKS                       R26 R26 K48 ["Enums"]
      592 GETTABLEKS                       R26 R26 K49 ["IconName"]
      594 GETTABLEKS                       R26 R26 K63 ["TwoArrowsSpinClockwise"]
      596 SETTABLEKS                       R26 R25 K41 ["icon"]
      598 GETUPVAL                         R26 0
      599 GETTABLEKS                       R26 R26 K48 ["Enums"]
      601 GETTABLEKS                       R26 R26 K54 ["InputSize"]
      603 GETTABLEKS                       R26 R26 K55 ["XSmall"]
      605 SETTABLEKS                       R26 R25 K42 ["size"]
      607 GETUPVAL                         R26 0
      608 GETTABLEKS                       R26 R26 K48 ["Enums"]
      610 GETTABLEKS                       R26 R26 K56 ["ButtonVariant"]
      612 GETTABLEKS                       R26 R26 K57 ["Utility"]
      614 SETTABLEKS                       R26 R25 K43 ["variant"]
      616 SETTABLEKS                       R14 R25 K44 ["onActivated"]
      618 MOVE                             R26 R18
      619 CALL                             R26 0 1
      620 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      622 GETUPVAL                         R26 26
      623 GETTABLEKS                       R26 R26 K28 ["MessageActions"]
      625 GETTABLEKS                       R26 R26 K20 ["Retry"]
      627 SETTABLEKS                       R26 R25 K45 ["testId"]
      629 CALL                             R23 2 1
      630 JUMP                             ; [+27]
      631 GETUPVAL                         R23 20
      632 GETUPVAL                         R24 27
      633 DUPTABLE                         R25 K59 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      634 GETUPVAL                         R27 28
      635 GETTABLE                         R26 R27 R2
      636 SETTABLEKS                       R26 R25 K41 ["icon"]
      638 LOADK                            R26 K60 ["size-600-600 radius-small align-x-center align-y-center"]
      639 SETTABLEKS                       R26 R25 K34 ["tag"]
      641 LOADK                            R26 K61 ["size-400-400 content-system-neutral"]
      642 SETTABLEKS                       R26 R25 K58 ["iconTag"]
      644 SETTABLEKS                       R14 R25 K44 ["onActivated"]
      646 MOVE                             R26 R18
      647 CALL                             R26 0 1
      648 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      650 GETUPVAL                         R26 26
      651 GETTABLEKS                       R26 R26 K28 ["MessageActions"]
      653 GETTABLEKS                       R26 R26 K20 ["Retry"]
      655 SETTABLEKS                       R26 R25 K45 ["testId"]
      657 CALL                             R23 2 1
      658 SETTABLEKS                       R23 R22 K39 ["RetryButton"]
      660 CALL                             R19 3 -1
      661 CLOSEUPVALS                      R3
      662 RETURN                           R19 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+45]
        8 GETTABLEKS                       R3 R0 K1 ["shouldShowActions"]
       10 JUMPIFNOT                        R3 ; [+19]
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 DUPTABLE                         R4 K6 [{"retryMessage", "messageId", "thumbsState", "containerRef"}]
       14 GETTABLEKS                       R5 R0 K2 ["retryMessage"]
       16 SETTABLEKS                       R5 R4 K2 ["retryMessage"]
       18 GETTABLEKS                       R5 R0 K3 ["messageId"]
       20 SETTABLEKS                       R5 R4 K3 ["messageId"]
       22 GETTABLEKS                       R5 R0 K4 ["thumbsState"]
       24 SETTABLEKS                       R5 R4 K4 ["thumbsState"]
       26 SETTABLEKS                       R1 R4 K5 ["containerRef"]
       28 CALL                             R2 2 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R2
       31 GETUPVAL                         R3 2
       32 GETUPVAL                         R4 4
       33 DUPTABLE                         R5 K11 [{"tag", "LayoutOrder", "testId", "ref"}]
       34 LOADK                            R6 K12 ["row gap-xxsmall size-full-600"]
       35 SETTABLEKS                       R6 R5 K7 ["tag"]
       37 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       39 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       41 GETUPVAL                         R6 5
       42 GETTABLEKS                       R6 R6 K13 ["MessageActions"]
       44 GETTABLEKS                       R6 R6 K14 ["Container"]
       46 SETTABLEKS                       R6 R5 K9 ["testId"]
       48 SETTABLEKS                       R1 R5 K10 ["ref"]
       50 MOVE                             R6 R2
       51 CALL                             R3 3 -1
       52 RETURN                           R3 -1
       53 GETUPVAL                         R2 3
       54 MOVE                             R3 R0
       55 CALL                             R2 1 -1
       56 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["FeedbackContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Parent"]
       48 GETTABLEKS                       R7 R7 K15 ["ReactUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K10 ["Contexts"]
       57 GETTABLEKS                       R8 R8 K16 ["SessionIdContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K17 ["Util"]
       64 GETTABLEKS                       R9 R9 K18 ["TestIds"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Components"]
       71 GETTABLEKS                       R10 R10 K10 ["Contexts"]
       73 GETTABLEKS                       R10 R10 K19 ["ThreadIdContext"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K20 ["Resources"]
       80 GETTABLEKS                       R11 R11 K21 ["Localization"]
       82 GETTABLEKS                       R11 R11 K22 ["Translator"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K23 ["Types"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K17 ["Util"]
       94 GETTABLEKS                       R13 R13 K24 ["callOnce"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K25 ["Hooks"]
      101 GETTABLEKS                       R14 R14 K26 ["useDuplicateThread"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K25 ["Hooks"]
      108 GETTABLEKS                       R15 R15 K27 ["useEditMessage"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K25 ["Hooks"]
      115 GETTABLEKS                       R16 R16 K28 ["useLogAssistantMessageSent"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K25 ["Hooks"]
      122 GETTABLEKS                       R17 R17 K29 ["useSwitchThread"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K30 ["Flags"]
      129 GETTABLEKS                       R18 R18 K31 ["FFlagAssistantFeedbackView"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K30 ["Flags"]
      136 GETTABLEKS                       R19 R19 K32 ["FFlagAssistantMultipleChatPersistence"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K30 ["Flags"]
      143 GETTABLEKS                       R20 R20 K33 ["FFlagAssistantUseBuilderIcons"]
      145 CALL                             R19 1 1
      146 GETTABLEKS                       R20 R4 K34 ["IconButton"]
      148 GETTABLEKS                       R21 R4 K35 ["Popover"]
      150 GETTABLEKS                       R22 R4 K36 ["Text"]
      152 GETTABLEKS                       R23 R4 K37 ["View"]
      154 GETTABLEKS                       R24 R6 K38 ["createNextOrder"]
      156 GETTABLEKS                       R25 R5 K39 ["createElement"]
      158 DUPTABLE                         R26 K42 [{"Dark", "Light"}]
      159 LOADK                            R27 K43 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUpOutline.png"]
      160 SETTABLEKS                       R27 R26 K40 ["Dark"]
      162 LOADK                            R27 K44 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUpOutline.png"]
      163 SETTABLEKS                       R27 R26 K41 ["Light"]
      165 DUPTABLE                         R27 K42 [{"Dark", "Light"}]
      166 LOADK                            R28 K45 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUp.png"]
      167 SETTABLEKS                       R28 R27 K40 ["Dark"]
      169 LOADK                            R28 K46 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUp.png"]
      170 SETTABLEKS                       R28 R27 K41 ["Light"]
      172 DUPTABLE                         R28 K42 [{"Dark", "Light"}]
      173 LOADK                            R29 K47 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDownOutline.png"]
      174 SETTABLEKS                       R29 R28 K40 ["Dark"]
      176 LOADK                            R29 K48 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDownOutline.png"]
      177 SETTABLEKS                       R29 R28 K41 ["Light"]
      179 DUPTABLE                         R29 K42 [{"Dark", "Light"}]
      180 LOADK                            R30 K49 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDown.png"]
      181 SETTABLEKS                       R30 R29 K40 ["Dark"]
      183 LOADK                            R30 K50 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDown.png"]
      184 SETTABLEKS                       R30 R29 K41 ["Light"]
      186 DUPTABLE                         R30 K42 [{"Dark", "Light"}]
      187 LOADK                            R31 K51 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/Regenerate.png"]
      188 SETTABLEKS                       R31 R30 K40 ["Dark"]
      190 LOADK                            R31 K52 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/Regenerate.png"]
      191 SETTABLEKS                       R31 R30 K41 ["Light"]
      193 DUPTABLE                         R31 K55 [{"Up", "Down"}]
      194 LOADK                            R32 K56 ["up"]
      195 SETTABLEKS                       R32 R31 K53 ["Up"]
      197 LOADK                            R32 K57 ["down"]
      198 SETTABLEKS                       R32 R31 K54 ["Down"]
      200 GETTABLEKS                       R32 R5 K58 ["memo"]
      202 DUPCLOSURE                       R33 K59 [PROTO_4]
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R5
      205 CAPTURE                          VAL R6
      206 CAPTURE                          VAL R25
      207 CAPTURE                          VAL R21
      208 CAPTURE                          VAL R22
      209 CALL                             R32 1 1
      210 DUPCLOSURE                       R33 K60 [PROTO_21]
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R5
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R16
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R17
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R31
      224 CAPTURE                          VAL R13
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R27
      227 CAPTURE                          VAL R26
      228 CAPTURE                          VAL R29
      229 CAPTURE                          VAL R28
      230 CAPTURE                          VAL R24
      231 CAPTURE                          VAL R25
      232 CAPTURE                          VAL R32
      233 CAPTURE                          VAL R10
      234 CAPTURE                          VAL R20
      235 CAPTURE                          VAL R23
      236 CAPTURE                          VAL R19
      237 CAPTURE                          VAL R8
      238 CAPTURE                          VAL R1
      239 CAPTURE                          VAL R30
      240 DUPCLOSURE                       R34 K61 [PROTO_22]
      241 CAPTURE                          VAL R5
      242 CAPTURE                          VAL R18
      243 CAPTURE                          VAL R25
      244 CAPTURE                          VAL R33
      245 CAPTURE                          VAL R23
      246 CAPTURE                          VAL R8
      247 RETURN                           R34 1
