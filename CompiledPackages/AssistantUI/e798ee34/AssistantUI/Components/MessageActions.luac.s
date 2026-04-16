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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["get"]
        3 CALL                             R4 0 1
        4 GETTABLEKS                       R3 R4 K1 ["EventLogger"]
        6 GETUPVAL                         R5 1
        7 CALL                             R5 0 1
        8 JUMPIFNOT                        R5 ; [+4]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K2 ["messageId"]
       12 JUMP                             ; [+6]
       13 GETTABLEKS                       R4 R3 K3 ["getMessageGuid"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K2 ["messageId"]
       18 CALL                             R4 1 1
       19 DUPTABLE                         R5 K8 [{"messageGuid", "sessionId", "feedbackCategory", "feedbackMessage"}]
       20 SETTABLEKS                       R4 R5 K4 ["messageGuid"]
       22 GETUPVAL                         R6 3
       23 SETTABLEKS                       R6 R5 K5 ["sessionId"]
       25 SETTABLEKS                       R1 R5 K6 ["feedbackCategory"]
       27 SETTABLEKS                       R2 R5 K7 ["feedbackMessage"]
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R6 R7 K9 ["Up"]
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
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K0 ["closeFeedback"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["openFeedback"]
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
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["Up"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETUPVAL                         R0 4
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 5
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K0 ["Up"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 6
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R1 R2 K0 ["Up"]
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 CALL                             R0 3 0
       27 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["Down"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETUPVAL                         R0 4
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 5
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K0 ["Down"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 6
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R1 R2 K0 ["Down"]
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 CALL                             R0 3 0
       27 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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
       88 GETUPVAL                         R11 9
       89 CALL                             R11 0 1
       90 JUMPIFNOT                        R11 ; [+8]
       91 GETUPVAL                         R11 2
       92 GETTABLEKS                       R10 R11 K5 ["useContext"]
       94 GETUPVAL                         R12 10
       95 GETTABLEKS                       R11 R12 K6 ["Context"]
       97 CALL                             R10 1 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R10
      100 GETUPVAL                         R12 2
      101 GETTABLEKS                       R11 R12 K10 ["useCallback"]
      103 NEWCLOSURE                       R12 P2
      104 CAPTURE                          UPVAL U11
      105 CAPTURE                          UPVAL U1
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R6
      108 CAPTURE                          UPVAL U12
      109 NEWTABLE                         R13 0 2
      111 GETTABLEKS                       R14 R0 K11 ["messageId"]
      113 MOVE                             R15 R6
      114 SETLIST                          R13 R14 2 [1]
      116 CALL                             R11 2 1
      117 GETUPVAL                         R13 2
      118 GETTABLEKS                       R12 R13 K10 ["useCallback"]
      120 NEWCLOSURE                       R13 P3
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R11
      123 NEWTABLE                         R14 0 2
      125 MOVE                             R15 R10
      126 MOVE                             R16 R11
      127 SETLIST                          R14 R15 2 [1]
      129 CALL                             R12 2 1
      130 GETUPVAL                         R14 2
      131 GETTABLEKS                       R13 R14 K10 ["useCallback"]
      133 NEWCLOSURE                       R14 P4
      134 CAPTURE                          REF R8
      135 CAPTURE                          REF R9
      136 CAPTURE                          UPVAL U12
      137 CAPTURE                          UPVAL U9
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R11
      141 NEWTABLE                         R15 0 4
      143 MOVE                             R16 R8
      144 MOVE                             R17 R11
      145 MOVE                             R18 R10
      146 MOVE                             R19 R12
      147 SETLIST                          R15 R16 4 [1]
      149 CALL                             R13 2 1
      150 GETUPVAL                         R15 2
      151 GETTABLEKS                       R14 R15 K10 ["useCallback"]
      153 NEWCLOSURE                       R15 P5
      154 CAPTURE                          REF R8
      155 CAPTURE                          REF R9
      156 CAPTURE                          UPVAL U12
      157 CAPTURE                          UPVAL U9
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R11
      161 NEWTABLE                         R16 0 4
      163 MOVE                             R17 R8
      164 MOVE                             R18 R11
      165 MOVE                             R19 R10
      166 MOVE                             R20 R12
      167 SETLIST                          R16 R17 4 [1]
      169 CALL                             R14 2 1
      170 GETUPVAL                         R16 2
      171 GETTABLEKS                       R15 R16 K10 ["useCallback"]
      173 NEWCLOSURE                       R16 P6
      174 CAPTURE                          UPVAL U11
      175 CAPTURE                          UPVAL U1
      176 CAPTURE                          VAL R0
      177 CAPTURE                          VAL R6
      178 NEWTABLE                         R17 0 3
      180 GETTABLEKS                       R18 R0 K14 ["retryMessage"]
      182 GETTABLEKS                       R19 R0 K11 ["messageId"]
      184 MOVE                             R20 R6
      185 SETLIST                          R17 R18 3 [1]
      187 CALL                             R15 2 1
      188 LOADNIL                          R16
      189 GETUPVAL                         R17 1
      190 CALL                             R17 0 1
      191 JUMPIFNOT                        R17 ; [+22]
      192 GETUPVAL                         R17 13
      193 CALL                             R17 0 1
      194 GETUPVAL                         R19 2
      195 GETTABLEKS                       R18 R19 K10 ["useCallback"]
      197 NEWCLOSURE                       R19 P7
      198 CAPTURE                          VAL R17
      199 CAPTURE                          REF R3
      200 CAPTURE                          VAL R0
      201 CAPTURE                          REF R4
      202 CAPTURE                          UPVAL U14
      203 NEWTABLE                         R20 0 4
      205 MOVE                             R21 R4
      206 MOVE                             R22 R17
      207 MOVE                             R23 R3
      208 GETTABLEKS                       R24 R0 K11 ["messageId"]
      210 SETLIST                          R20 R21 4 [1]
      212 CALL                             R18 2 1
      213 MOVE                             R16 R18
      214 GETUPVAL                         R19 12
      215 GETTABLEKS                       R18 R19 K15 ["Up"]
      217 JUMPIFNOTEQ                      R8 R18 ; [+4]
      219 GETUPVAL                         R18 15
      220 GETTABLE                         R17 R18 R2
      221 JUMP                             ; [+2]
      222 GETUPVAL                         R18 16
      223 GETTABLE                         R17 R18 R2
      224 GETUPVAL                         R20 12
      225 GETTABLEKS                       R19 R20 K16 ["Down"]
      227 JUMPIFNOTEQ                      R8 R19 ; [+4]
      229 GETUPVAL                         R19 17
      230 GETTABLE                         R18 R19 R2
      231 JUMP                             ; [+2]
      232 GETUPVAL                         R19 18
      233 GETTABLE                         R18 R19 R2
      234 GETUPVAL                         R19 19
      235 CALL                             R19 0 1
      236 GETUPVAL                         R20 1
      237 CALL                             R20 0 1
      238 JUMPIFNOT                        R20 ; [+130]
      239 GETUPVAL                         R20 20
      240 GETUPVAL                         R22 2
      241 GETTABLEKS                       R21 R22 K17 ["Fragment"]
      243 LOADNIL                          R22
      244 DUPTABLE                         R23 K22 [{"ThumbsUp", "ThumbsDown", "Retry", "Branch"}]
      245 GETUPVAL                         R24 20
      246 GETUPVAL                         R25 21
      247 DUPTABLE                         R26 K27 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      248 LOADK                            R27 K18 ["ThumbsUp"]
      249 SETTABLEKS                       R27 R26 K23 ["name"]
      251 GETUPVAL                         R27 22
      252 LOADK                            R29 K28 ["MessageActions"]
      253 LOADK                            R30 K29 ["TooltipThumbsUp"]
      254 NAMECALL                         R27 R27 K30 ["getText"]
      256 CALL                             R27 3 1
      257 SETTABLEKS                       R27 R26 K24 ["title"]
      259 MOVE                             R27 R19
      260 CALL                             R27 0 1
      261 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      263 NEWCLOSURE                       R27 P8
      264 CAPTURE                          UPVAL U20
      265 CAPTURE                          UPVAL U23
      266 CAPTURE                          UPVAL U0
      267 CAPTURE                          REF R8
      268 CAPTURE                          UPVAL U12
      269 CAPTURE                          VAL R13
      270 SETTABLEKS                       R27 R26 K26 ["renderAnchor"]
      272 CALL                             R24 2 1
      273 SETTABLEKS                       R24 R23 K18 ["ThumbsUp"]
      275 GETUPVAL                         R24 20
      276 GETUPVAL                         R25 21
      277 DUPTABLE                         R26 K27 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      278 LOADK                            R27 K19 ["ThumbsDown"]
      279 SETTABLEKS                       R27 R26 K23 ["name"]
      281 GETUPVAL                         R27 22
      282 LOADK                            R29 K28 ["MessageActions"]
      283 LOADK                            R30 K31 ["TooltipThumbsDown"]
      284 NAMECALL                         R27 R27 K30 ["getText"]
      286 CALL                             R27 3 1
      287 SETTABLEKS                       R27 R26 K24 ["title"]
      289 MOVE                             R27 R19
      290 CALL                             R27 0 1
      291 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      293 NEWCLOSURE                       R27 P9
      294 CAPTURE                          UPVAL U20
      295 CAPTURE                          UPVAL U23
      296 CAPTURE                          UPVAL U0
      297 CAPTURE                          REF R8
      298 CAPTURE                          UPVAL U12
      299 CAPTURE                          VAL R14
      300 SETTABLEKS                       R27 R26 K26 ["renderAnchor"]
      302 CALL                             R24 2 1
      303 SETTABLEKS                       R24 R23 K19 ["ThumbsDown"]
      305 GETUPVAL                         R24 20
      306 GETUPVAL                         R25 21
      307 DUPTABLE                         R26 K27 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      308 LOADK                            R27 K20 ["Retry"]
      309 SETTABLEKS                       R27 R26 K23 ["name"]
      311 GETUPVAL                         R27 22
      312 LOADK                            R29 K28 ["MessageActions"]
      313 LOADK                            R30 K32 ["TooltipRetry"]
      314 NAMECALL                         R27 R27 K30 ["getText"]
      316 CALL                             R27 3 1
      317 SETTABLEKS                       R27 R26 K24 ["title"]
      319 MOVE                             R27 R19
      320 CALL                             R27 0 1
      321 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      323 NEWCLOSURE                       R27 P10
      324 CAPTURE                          UPVAL U20
      325 CAPTURE                          UPVAL U23
      326 CAPTURE                          UPVAL U0
      327 CAPTURE                          VAL R15
      328 SETTABLEKS                       R27 R26 K26 ["renderAnchor"]
      330 CALL                             R24 2 1
      331 SETTABLEKS                       R24 R23 K20 ["Retry"]
      333 GETUPVAL                         R25 1
      334 CALL                             R25 0 1
      335 JUMPIFNOT                        R25 ; [+27]
      336 GETUPVAL                         R24 20
      337 GETUPVAL                         R25 21
      338 DUPTABLE                         R26 K27 [{"name", "title", "LayoutOrder", "renderAnchor"}]
      339 LOADK                            R27 K21 ["Branch"]
      340 SETTABLEKS                       R27 R26 K23 ["name"]
      342 GETUPVAL                         R27 22
      343 LOADK                            R29 K28 ["MessageActions"]
      344 LOADK                            R30 K33 ["TooltipBranch"]
      345 NAMECALL                         R27 R27 K30 ["getText"]
      347 CALL                             R27 3 1
      348 SETTABLEKS                       R27 R26 K24 ["title"]
      350 MOVE                             R27 R19
      351 CALL                             R27 0 1
      352 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      354 NEWCLOSURE                       R27 P11
      355 CAPTURE                          UPVAL U20
      356 CAPTURE                          UPVAL U23
      357 CAPTURE                          UPVAL U0
      358 CAPTURE                          REF R16
      359 SETTABLEKS                       R27 R26 K26 ["renderAnchor"]
      361 CALL                             R24 2 1
      362 JUMP                             ; [+1]
      363 LOADNIL                          R24
      364 SETTABLEKS                       R24 R23 K21 ["Branch"]
      366 CALL                             R20 3 -1
      367 CLOSEUPVALS                      R3
      368 RETURN                           R20 -1
      369 GETUPVAL                         R20 20
      370 GETUPVAL                         R21 24
      371 DUPTABLE                         R22 K35 [{"tag", "LayoutOrder"}]
      372 LOADK                            R23 K36 ["row gap-small auto-xy"]
      373 SETTABLEKS                       R23 R22 K34 ["tag"]
      375 GETTABLEKS                       R23 R0 K25 ["LayoutOrder"]
      377 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      379 DUPTABLE                         R23 K40 [{"ThumbsUpButton", "ThumbsDownButton", "RetryButton"}]
      380 GETUPVAL                         R24 20
      381 GETUPVAL                         R25 25
      382 DUPTABLE                         R26 K45 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      383 SETTABLEKS                       R17 R26 K41 ["icon"]
      385 LOADK                            R27 K46 ["size-600-600 radius-small align-x-center align-y-center"]
      386 SETTABLEKS                       R27 R26 K34 ["tag"]
      388 LOADK                            R27 K47 ["size-400-400 content-system-neutral"]
      389 SETTABLEKS                       R27 R26 K42 ["iconTag"]
      391 SETTABLEKS                       R13 R26 K43 ["onActivated"]
      393 MOVE                             R27 R19
      394 CALL                             R27 0 1
      395 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      397 GETUPVAL                         R29 26
      398 GETTABLEKS                       R28 R29 K28 ["MessageActions"]
      400 GETTABLEKS                       R27 R28 K18 ["ThumbsUp"]
      402 SETTABLEKS                       R27 R26 K44 ["testId"]
      404 CALL                             R24 2 1
      405 SETTABLEKS                       R24 R23 K37 ["ThumbsUpButton"]
      407 GETUPVAL                         R24 20
      408 GETUPVAL                         R25 25
      409 DUPTABLE                         R26 K45 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      410 SETTABLEKS                       R18 R26 K41 ["icon"]
      412 LOADK                            R27 K46 ["size-600-600 radius-small align-x-center align-y-center"]
      413 SETTABLEKS                       R27 R26 K34 ["tag"]
      415 LOADK                            R27 K47 ["size-400-400 content-system-neutral"]
      416 SETTABLEKS                       R27 R26 K42 ["iconTag"]
      418 SETTABLEKS                       R14 R26 K43 ["onActivated"]
      420 MOVE                             R27 R19
      421 CALL                             R27 0 1
      422 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      424 GETUPVAL                         R29 26
      425 GETTABLEKS                       R28 R29 K28 ["MessageActions"]
      427 GETTABLEKS                       R27 R28 K19 ["ThumbsDown"]
      429 SETTABLEKS                       R27 R26 K44 ["testId"]
      431 CALL                             R24 2 1
      432 SETTABLEKS                       R24 R23 K38 ["ThumbsDownButton"]
      434 GETUPVAL                         R24 20
      435 GETUPVAL                         R25 25
      436 DUPTABLE                         R26 K45 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      437 GETUPVAL                         R28 27
      438 GETTABLE                         R27 R28 R2
      439 SETTABLEKS                       R27 R26 K41 ["icon"]
      441 LOADK                            R27 K46 ["size-600-600 radius-small align-x-center align-y-center"]
      442 SETTABLEKS                       R27 R26 K34 ["tag"]
      444 LOADK                            R27 K47 ["size-400-400 content-system-neutral"]
      445 SETTABLEKS                       R27 R26 K42 ["iconTag"]
      447 SETTABLEKS                       R15 R26 K43 ["onActivated"]
      449 MOVE                             R27 R19
      450 CALL                             R27 0 1
      451 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      453 GETUPVAL                         R29 26
      454 GETTABLEKS                       R28 R29 K28 ["MessageActions"]
      456 GETTABLEKS                       R27 R28 K20 ["Retry"]
      458 SETTABLEKS                       R27 R26 K44 ["testId"]
      460 CALL                             R24 2 1
      461 SETTABLEKS                       R24 R23 K39 ["RetryButton"]
      463 CALL                             R20 3 -1
      464 CLOSEUPVALS                      R3
      465 RETURN                           R20 -1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
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
       41 GETUPVAL                         R8 5
       42 GETTABLEKS                       R7 R8 K13 ["MessageActions"]
       44 GETTABLEKS                       R6 R7 K14 ["Container"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R4 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K6 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K11 ["FeedbackContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Parent"]
       34 GETTABLEKS                       R5 R6 K13 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K12 ["Parent"]
       41 GETTABLEKS                       R6 R7 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K12 ["Parent"]
       48 GETTABLEKS                       R7 R8 K15 ["ReactUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K6 ["Components"]
       55 GETTABLEKS                       R9 R10 K10 ["Contexts"]
       57 GETTABLEKS                       R8 R9 K16 ["SessionIdContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R10 R0 K17 ["Util"]
       64 GETTABLEKS                       R9 R10 K18 ["TestIds"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R12 R0 K6 ["Components"]
       71 GETTABLEKS                       R11 R12 K10 ["Contexts"]
       73 GETTABLEKS                       R10 R11 K19 ["ThreadIdContext"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R13 R0 K20 ["Resources"]
       80 GETTABLEKS                       R12 R13 K21 ["Localization"]
       82 GETTABLEKS                       R11 R12 K22 ["Translator"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K23 ["Types"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R14 R0 K17 ["Util"]
       94 GETTABLEKS                       R13 R14 K24 ["callOnce"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R15 R0 K25 ["Hooks"]
      101 GETTABLEKS                       R14 R15 K26 ["useDuplicateThread"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R16 R0 K25 ["Hooks"]
      108 GETTABLEKS                       R15 R16 K27 ["useEditMessage"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R17 R0 K25 ["Hooks"]
      115 GETTABLEKS                       R16 R17 K28 ["useLogAssistantMessageSent"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R18 R0 K25 ["Hooks"]
      122 GETTABLEKS                       R17 R18 K29 ["useSwitchThread"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R19 R0 K30 ["Flags"]
      129 GETTABLEKS                       R18 R19 K31 ["FFlagAssistantFeedbackView"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R20 R0 K30 ["Flags"]
      136 GETTABLEKS                       R19 R20 K32 ["FFlagAssistantMultipleChatPersistence"]
      138 CALL                             R18 1 1
      139 GETTABLEKS                       R19 R4 K33 ["IconButton"]
      141 GETTABLEKS                       R20 R4 K34 ["Popover"]
      143 GETTABLEKS                       R21 R4 K35 ["Text"]
      145 GETTABLEKS                       R22 R4 K36 ["View"]
      147 GETTABLEKS                       R23 R6 K37 ["createNextOrder"]
      149 GETTABLEKS                       R24 R5 K38 ["createElement"]
      151 DUPTABLE                         R25 K41 [{"Dark", "Light"}]
      152 LOADK                            R26 K42 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUpOutline.png"]
      153 SETTABLEKS                       R26 R25 K39 ["Dark"]
      155 LOADK                            R26 K43 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUpOutline.png"]
      156 SETTABLEKS                       R26 R25 K40 ["Light"]
      158 DUPTABLE                         R26 K41 [{"Dark", "Light"}]
      159 LOADK                            R27 K44 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUp.png"]
      160 SETTABLEKS                       R27 R26 K39 ["Dark"]
      162 LOADK                            R27 K45 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUp.png"]
      163 SETTABLEKS                       R27 R26 K40 ["Light"]
      165 DUPTABLE                         R27 K41 [{"Dark", "Light"}]
      166 LOADK                            R28 K46 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDownOutline.png"]
      167 SETTABLEKS                       R28 R27 K39 ["Dark"]
      169 LOADK                            R28 K47 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDownOutline.png"]
      170 SETTABLEKS                       R28 R27 K40 ["Light"]
      172 DUPTABLE                         R28 K41 [{"Dark", "Light"}]
      173 LOADK                            R29 K48 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDown.png"]
      174 SETTABLEKS                       R29 R28 K39 ["Dark"]
      176 LOADK                            R29 K49 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDown.png"]
      177 SETTABLEKS                       R29 R28 K40 ["Light"]
      179 DUPTABLE                         R29 K41 [{"Dark", "Light"}]
      180 LOADK                            R30 K50 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/Regenerate.png"]
      181 SETTABLEKS                       R30 R29 K39 ["Dark"]
      183 LOADK                            R30 K51 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/Regenerate.png"]
      184 SETTABLEKS                       R30 R29 K40 ["Light"]
      186 DUPTABLE                         R30 K54 [{"Up", "Down"}]
      187 LOADK                            R31 K55 ["up"]
      188 SETTABLEKS                       R31 R30 K52 ["Up"]
      190 LOADK                            R31 K56 ["down"]
      191 SETTABLEKS                       R31 R30 K53 ["Down"]
      193 GETTABLEKS                       R31 R5 K57 ["memo"]
      195 DUPCLOSURE                       R32 K58 [PROTO_4]
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R5
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R20
      201 CAPTURE                          VAL R21
      202 CALL                             R31 1 1
      203 DUPCLOSURE                       R32 K59 [PROTO_21]
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R18
      206 CAPTURE                          VAL R5
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R15
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R17
      214 CAPTURE                          VAL R3
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R30
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R11
      219 CAPTURE                          VAL R26
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R28
      222 CAPTURE                          VAL R27
      223 CAPTURE                          VAL R23
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R31
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R19
      228 CAPTURE                          VAL R22
      229 CAPTURE                          VAL R1
      230 CAPTURE                          VAL R8
      231 CAPTURE                          VAL R29
      232 DUPCLOSURE                       R33 K60 [PROTO_22]
      233 CAPTURE                          VAL R5
      234 CAPTURE                          VAL R18
      235 CAPTURE                          VAL R24
      236 CAPTURE                          VAL R32
      237 CAPTURE                          VAL R22
      238 CAPTURE                          VAL R8
      239 RETURN                           R33 1
