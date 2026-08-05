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
       73 JUMPIFNOT                        R11 ; [+87]
       74 GETUPVAL                         R11 3
       75 GETUPVAL                         R12 4
       76 GETTABLEKS                       R12 R12 K19 ["Root"]
       78 DUPTABLE                         R13 K22 [{["isOpen"] = True}]
       79 NEWTABLE                         R14 2 0
       81 GETUPVAL                         R15 3
       82 GETUPVAL                         R16 4
       83 GETTABLEKS                       R16 R16 K23 ["Anchor"]
       85 DUPTABLE                         R17 K25 [{"anchorRef"}]
       86 SETTABLEKS                       R2 R17 K24 ["anchorRef"]
       88 CALL                             R15 2 1
       89 SETTABLEKS                       R15 R14 K23 ["Anchor"]
       91 LOADK                            R16 K26 ["Tooltip%*"]
       92 GETTABLEKS                       R18 R0 K12 ["name"]
       94 NAMECALL                         R16 R16 K13 ["format"]
       96 CALL                             R16 2 1
       97 MOVE                             R15 R16
       98 GETUPVAL                         R16 3
       99 GETUPVAL                         R17 4
      100 GETTABLEKS                       R17 R17 K27 ["Content"]
      102 DUPTABLE                         R18 K33 [{["side"], ["align"], ["hasArrow"] = True, ["backgroundStyle"], ["radius"]}]
      103 DUPTABLE                         R19 K36 [{"position", "offset"}]
      104 GETUPVAL                         R20 0
      105 GETTABLEKS                       R20 R20 K37 ["Enums"]
      107 GETTABLEKS                       R20 R20 K38 ["PopoverSide"]
      109 GETTABLEKS                       R20 R20 K39 ["Bottom"]
      111 SETTABLEKS                       R20 R19 K34 ["position"]
      113 GETTABLEKS                       R20 R1 K40 ["Gap"]
      115 GETTABLEKS                       R20 R20 K41 ["XSmall"]
      117 SETTABLEKS                       R20 R19 K35 ["offset"]
      119 SETTABLEKS                       R19 R18 K28 ["side"]
      121 GETUPVAL                         R19 0
      122 GETTABLEKS                       R19 R19 K37 ["Enums"]
      124 GETTABLEKS                       R19 R19 K42 ["PopoverAlign"]
      126 GETTABLEKS                       R19 R19 K43 ["Center"]
      128 SETTABLEKS                       R19 R18 K29 ["align"]
      130 GETTABLEKS                       R19 R1 K44 ["Inverse"]
      132 GETTABLEKS                       R19 R19 K45 ["Surface"]
      134 GETTABLEKS                       R19 R19 K46 ["Surface_0"]
      136 SETTABLEKS                       R19 R18 K31 ["backgroundStyle"]
      138 GETUPVAL                         R19 0
      139 GETTABLEKS                       R19 R19 K37 ["Enums"]
      141 GETTABLEKS                       R19 R19 K47 ["Radius"]
      143 GETTABLEKS                       R19 R19 K48 ["Small"]
      145 SETTABLEKS                       R19 R18 K32 ["radius"]
      147 DUPTABLE                         R19 K50 [{"Text"}]
      148 GETUPVAL                         R20 3
      149 GETUPVAL                         R21 5
      150 DUPTABLE                         R22 K53 [{["tag"] = "auto-xy padding-x-small padding-y-xsmall text-body-small text-align-x-center text-align-y-center content-inverse-emphasis", ["Text"]}]
      151 GETTABLEKS                       R23 R0 K54 ["title"]
      153 SETTABLEKS                       R23 R22 K49 ["Text"]
      155 CALL                             R20 2 1
      156 SETTABLEKS                       R20 R19 K49 ["Text"]
      158 CALL                             R16 3 1
      159 SETTABLE                         R16 R14 R15
      160 CALL                             R11 3 1
      161 SETTABLEKS                       R11 R10 K55 ["Tooltip"]
      163 CALL                             R7 3 -1
      164 RETURN                           R7 -1

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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 CALL                             R3 0 1
        4 GETTABLEKS                       R3 R3 K1 ["EventLogger"]
        6 DUPTABLE                         R4 K6 [{"messageGuid", "sessionId", "feedbackCategory", "feedbackMessage"}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K7 ["messageId"]
       10 SETTABLEKS                       R5 R4 K2 ["messageGuid"]
       12 GETUPVAL                         R5 2
       13 SETTABLEKS                       R5 R4 K3 ["sessionId"]
       15 SETTABLEKS                       R1 R4 K4 ["feedbackCategory"]
       17 SETTABLEKS                       R2 R4 K5 ["feedbackMessage"]
       19 JUMPIFNOTEQKS                    R0 K8 ["up"] ; [+6]
       21 GETTABLEKS                       R5 R3 K9 ["logThumbsUp"]
       23 MOVE                             R6 R4
       24 CALL                             R5 1 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R5 R3 K10 ["logThumbsDown"]
       28 MOVE                             R6 R4
       29 CALL                             R5 1 0
       30 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 CALL                             R0 3 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 LOADK                            R1 K0 ["up"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantFeedbackView"]
       10 JUMPIFNOT                        R0 ; [+6]
       11 GETUPVAL                         R0 3
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETUPVAL                         R0 4
       14 LOADK                            R1 K0 ["up"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 5
       18 LOADK                            R1 K0 ["up"]
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 CALL                             R0 3 0
       22 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 LOADK                            R1 K0 ["down"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantFeedbackView"]
       10 JUMPIFNOT                        R0 ; [+6]
       11 GETUPVAL                         R0 3
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETUPVAL                         R0 4
       14 LOADK                            R1 K0 ["down"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 5
       18 LOADK                            R1 K0 ["down"]
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 CALL                             R0 3 0
       22 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        6 GETTABLEKS                       R1 R0 K2 ["logRetry"]
        8 DUPTABLE                         R2 K5 [{"messageGuid", "sessionId"}]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K6 ["messageId"]
       12 SETTABLEKS                       R3 R2 K3 ["messageGuid"]
       14 GETUPVAL                         R3 2
       15 SETTABLEKS                       R3 R2 K4 ["sessionId"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K7 ["retryMessage"]
       21 CALL                             R1 0 0
       22 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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
       14 JUMPIFNOTEQKS                    R6 K12 ["up"] ; [+9]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K9 ["Enums"]
       19 GETTABLEKS                       R5 R5 K13 ["IconVariant"]
       21 GETTABLEKS                       R5 R5 K14 ["Filled"]
       23 JUMP                             ; [+7]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K9 ["Enums"]
       27 GETTABLEKS                       R5 R5 K13 ["IconVariant"]
       29 GETTABLEKS                       R5 R5 K15 ["Regular"]
       31 SETTABLEKS                       R5 R4 K2 ["variant"]
       33 SETTABLEKS                       R4 R3 K0 ["icon"]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K9 ["Enums"]
       38 GETTABLEKS                       R4 R4 K16 ["InputSize"]
       40 GETTABLEKS                       R4 R4 K17 ["XSmall"]
       42 SETTABLEKS                       R4 R3 K1 ["size"]
       44 GETUPVAL                         R4 2
       45 GETTABLEKS                       R4 R4 K9 ["Enums"]
       47 GETTABLEKS                       R4 R4 K18 ["ButtonVariant"]
       49 GETTABLEKS                       R4 R4 K19 ["Utility"]
       51 SETTABLEKS                       R4 R3 K2 ["variant"]
       53 GETUPVAL                         R4 4
       54 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       56 GETTABLEKS                       R4 R0 K20 ["layoutOrder"]
       58 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       60 GETTABLEKS                       R4 R0 K5 ["ref"]
       62 SETTABLEKS                       R4 R3 K5 ["ref"]
       64 CALL                             R1 2 -1
       65 RETURN                           R1 -1

PROTO_16:
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
       14 JUMPIFNOTEQKS                    R6 K12 ["down"] ; [+9]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K9 ["Enums"]
       19 GETTABLEKS                       R5 R5 K13 ["IconVariant"]
       21 GETTABLEKS                       R5 R5 K14 ["Filled"]
       23 JUMP                             ; [+7]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K9 ["Enums"]
       27 GETTABLEKS                       R5 R5 K13 ["IconVariant"]
       29 GETTABLEKS                       R5 R5 K15 ["Regular"]
       31 SETTABLEKS                       R5 R4 K2 ["variant"]
       33 SETTABLEKS                       R4 R3 K0 ["icon"]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K9 ["Enums"]
       38 GETTABLEKS                       R4 R4 K16 ["InputSize"]
       40 GETTABLEKS                       R4 R4 K17 ["XSmall"]
       42 SETTABLEKS                       R4 R3 K1 ["size"]
       44 GETUPVAL                         R4 2
       45 GETTABLEKS                       R4 R4 K9 ["Enums"]
       47 GETTABLEKS                       R4 R4 K18 ["ButtonVariant"]
       49 GETTABLEKS                       R4 R4 K19 ["Utility"]
       51 SETTABLEKS                       R4 R3 K2 ["variant"]
       53 GETUPVAL                         R4 4
       54 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       56 GETTABLEKS                       R4 R0 K20 ["layoutOrder"]
       58 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       60 GETTABLEKS                       R4 R0 K5 ["ref"]
       62 SETTABLEKS                       R4 R3 K5 ["ref"]
       64 CALL                             R1 2 -1
       65 RETURN                           R1 -1

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["threadId"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["useContext"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K1 ["Context"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R3 K3 ["sessionId"]
       18 GETUPVAL                         R5 3
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 4
       21 CALL                             R6 0 1
       22 GETTABLEKS                       R7 R0 K4 ["thumbsState"]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          VAL R6
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R10 0 2
       32 GETTABLEKS                       R11 R0 K6 ["messageId"]
       34 MOVE                             R12 R6
       35 SETLIST                          R10 R11 2 [1]
       37 CALL                             R8 2 1
       38 GETUPVAL                         R10 5
       39 GETTABLEKS                       R10 R10 K7 ["FFlagAssistantFeedbackView"]
       41 JUMPIFNOT                        R10 ; [+8]
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K0 ["useContext"]
       45 GETUPVAL                         R10 6
       46 GETTABLEKS                       R10 R10 K1 ["Context"]
       48 CALL                             R9 1 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R9
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       54 NEWCLOSURE                       R11 P1
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R4
       58 NEWTABLE                         R12 0 2
       60 GETTABLEKS                       R13 R0 K6 ["messageId"]
       62 MOVE                             R14 R4
       63 SETLIST                          R12 R13 2 [1]
       65 CALL                             R10 2 1
       66 GETUPVAL                         R11 0
       67 GETTABLEKS                       R11 R11 K5 ["useCallback"]
       69 NEWCLOSURE                       R12 P2
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R10
       72 NEWTABLE                         R13 0 2
       74 MOVE                             R14 R9
       75 MOVE                             R15 R10
       76 SETLIST                          R13 R14 2 [1]
       78 CALL                             R11 2 1
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R12 R12 K5 ["useCallback"]
       82 NEWCLOSURE                       R13 P3
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R8
       85 CAPTURE                          UPVAL U5
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R10
       89 NEWTABLE                         R14 0 4
       91 MOVE                             R15 R7
       92 MOVE                             R16 R10
       93 MOVE                             R17 R9
       94 MOVE                             R18 R11
       95 SETLIST                          R14 R15 4 [1]
       97 CALL                             R12 2 1
       98 GETUPVAL                         R13 0
       99 GETTABLEKS                       R13 R13 K5 ["useCallback"]
      101 NEWCLOSURE                       R14 P4
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R8
      104 CAPTURE                          UPVAL U5
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R10
      108 NEWTABLE                         R15 0 4
      110 MOVE                             R16 R7
      111 MOVE                             R17 R10
      112 MOVE                             R18 R9
      113 MOVE                             R19 R11
      114 SETLIST                          R15 R16 4 [1]
      116 CALL                             R13 2 1
      117 GETUPVAL                         R14 0
      118 GETTABLEKS                       R14 R14 K5 ["useCallback"]
      120 NEWCLOSURE                       R15 P5
      121 CAPTURE                          UPVAL U7
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R4
      124 NEWTABLE                         R16 0 3
      126 GETTABLEKS                       R17 R0 K8 ["retryMessage"]
      128 GETTABLEKS                       R18 R0 K6 ["messageId"]
      130 MOVE                             R19 R4
      131 SETLIST                          R16 R17 3 [1]
      133 CALL                             R14 2 1
      134 GETUPVAL                         R15 8
      135 CALL                             R15 0 1
      136 GETUPVAL                         R16 0
      137 GETTABLEKS                       R16 R16 K5 ["useCallback"]
      139 NEWCLOSURE                       R17 P6
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R5
      144 CAPTURE                          UPVAL U9
      145 NEWTABLE                         R18 0 4
      147 MOVE                             R19 R5
      148 MOVE                             R20 R15
      149 MOVE                             R21 R2
      150 GETTABLEKS                       R22 R0 K6 ["messageId"]
      152 SETLIST                          R18 R19 4 [1]
      154 CALL                             R16 2 1
      155 GETUPVAL                         R17 10
      156 CALL                             R17 0 1
      157 GETUPVAL                         R18 11
      158 GETUPVAL                         R19 0
      159 GETTABLEKS                       R19 R19 K9 ["Fragment"]
      161 LOADNIL                          R20
      162 DUPTABLE                         R21 K14 [{"ThumbsUp", "ThumbsDown", "Retry", "Branch"}]
      163 GETUPVAL                         R22 11
      164 GETUPVAL                         R23 12
      165 DUPTABLE                         R24 K19 [{["name"] = "ThumbsUp", ["title"], ["LayoutOrder"], ["renderAnchor"]}]
      166 GETUPVAL                         R25 13
      167 LOADK                            R27 K20 ["MessageActions"]
      168 LOADK                            R28 K21 ["TooltipThumbsUp"]
      169 NAMECALL                         R25 R25 K22 ["getText"]
      171 CALL                             R25 3 1
      172 SETTABLEKS                       R25 R24 K16 ["title"]
      174 MOVE                             R25 R17
      175 CALL                             R25 0 1
      176 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      178 NEWCLOSURE                       R25 P7
      179 CAPTURE                          UPVAL U11
      180 CAPTURE                          UPVAL U14
      181 CAPTURE                          UPVAL U15
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R12
      184 SETTABLEKS                       R25 R24 K18 ["renderAnchor"]
      186 CALL                             R22 2 1
      187 SETTABLEKS                       R22 R21 K10 ["ThumbsUp"]
      189 GETUPVAL                         R22 11
      190 GETUPVAL                         R23 12
      191 DUPTABLE                         R24 K23 [{["name"] = "ThumbsDown", ["title"], ["LayoutOrder"], ["renderAnchor"]}]
      192 GETUPVAL                         R25 13
      193 LOADK                            R27 K20 ["MessageActions"]
      194 LOADK                            R28 K24 ["TooltipThumbsDown"]
      195 NAMECALL                         R25 R25 K22 ["getText"]
      197 CALL                             R25 3 1
      198 SETTABLEKS                       R25 R24 K16 ["title"]
      200 MOVE                             R25 R17
      201 CALL                             R25 0 1
      202 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      204 NEWCLOSURE                       R25 P8
      205 CAPTURE                          UPVAL U11
      206 CAPTURE                          UPVAL U14
      207 CAPTURE                          UPVAL U15
      208 CAPTURE                          VAL R7
      209 CAPTURE                          VAL R13
      210 SETTABLEKS                       R25 R24 K18 ["renderAnchor"]
      212 CALL                             R22 2 1
      213 SETTABLEKS                       R22 R21 K11 ["ThumbsDown"]
      215 GETUPVAL                         R22 11
      216 GETUPVAL                         R23 12
      217 DUPTABLE                         R24 K25 [{["name"] = "Retry", ["title"], ["LayoutOrder"], ["renderAnchor"]}]
      218 GETUPVAL                         R25 13
      219 LOADK                            R27 K20 ["MessageActions"]
      220 LOADK                            R28 K26 ["TooltipRetry"]
      221 NAMECALL                         R25 R25 K22 ["getText"]
      223 CALL                             R25 3 1
      224 SETTABLEKS                       R25 R24 K16 ["title"]
      226 MOVE                             R25 R17
      227 CALL                             R25 0 1
      228 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      230 NEWCLOSURE                       R25 P9
      231 CAPTURE                          UPVAL U11
      232 CAPTURE                          UPVAL U14
      233 CAPTURE                          UPVAL U15
      234 CAPTURE                          VAL R14
      235 SETTABLEKS                       R25 R24 K18 ["renderAnchor"]
      237 CALL                             R22 2 1
      238 SETTABLEKS                       R22 R21 K12 ["Retry"]
      240 GETUPVAL                         R22 11
      241 GETUPVAL                         R23 12
      242 DUPTABLE                         R24 K27 [{["name"] = "Branch", ["title"], ["LayoutOrder"], ["renderAnchor"]}]
      243 GETUPVAL                         R25 13
      244 LOADK                            R27 K20 ["MessageActions"]
      245 LOADK                            R28 K28 ["TooltipBranch"]
      246 NAMECALL                         R25 R25 K22 ["getText"]
      248 CALL                             R25 3 1
      249 SETTABLEKS                       R25 R24 K16 ["title"]
      251 MOVE                             R25 R17
      252 CALL                             R25 0 1
      253 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      255 NEWCLOSURE                       R25 P10
      256 CAPTURE                          UPVAL U11
      257 CAPTURE                          UPVAL U14
      258 CAPTURE                          UPVAL U15
      259 CAPTURE                          VAL R16
      260 SETTABLEKS                       R25 R24 K18 ["renderAnchor"]
      262 CALL                             R22 2 1
      263 SETTABLEKS                       R22 R21 K13 ["Branch"]
      265 CALL                             R18 3 -1
      266 RETURN                           R18 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R0 K1 ["shouldShowActions"]
        7 JUMPIFNOT                        R3 ; [+19]
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K6 [{"retryMessage", "messageId", "thumbsState", "containerRef"}]
       11 GETTABLEKS                       R5 R0 K2 ["retryMessage"]
       13 SETTABLEKS                       R5 R4 K2 ["retryMessage"]
       15 GETTABLEKS                       R5 R0 K3 ["messageId"]
       17 SETTABLEKS                       R5 R4 K3 ["messageId"]
       19 GETTABLEKS                       R5 R0 K4 ["thumbsState"]
       21 SETTABLEKS                       R5 R4 K4 ["thumbsState"]
       23 SETTABLEKS                       R1 R4 K5 ["containerRef"]
       25 CALL                             R2 2 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R2
       28 GETUPVAL                         R3 1
       29 GETUPVAL                         R4 3
       30 DUPTABLE                         R5 K12 [{["tag"] = "row gap-xxsmall size-full-600", ["LayoutOrder"], ["testId"], ["ref"]}]
       31 GETTABLEKS                       R6 R0 K9 ["LayoutOrder"]
       33 SETTABLEKS                       R6 R5 K9 ["LayoutOrder"]
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R6 R6 K13 ["MessageActions"]
       38 GETTABLEKS                       R6 R6 K14 ["Container"]
       40 SETTABLEKS                       R6 R5 K10 ["testId"]
       42 SETTABLEKS                       R1 R5 K11 ["ref"]
       44 MOVE                             R6 R2
       45 CALL                             R3 3 -1
       46 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["FeedbackContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Parent"]
       32 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Parent"]
       39 GETTABLEKS                       R6 R6 K14 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Parent"]
       46 GETTABLEKS                       R7 R7 K15 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Components"]
       53 GETTABLEKS                       R8 R8 K9 ["Contexts"]
       55 GETTABLEKS                       R8 R8 K16 ["SessionIdContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Util"]
       62 GETTABLEKS                       R9 R9 K18 ["TestIds"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K8 ["Components"]
       69 GETTABLEKS                       R10 R10 K9 ["Contexts"]
       71 GETTABLEKS                       R10 R10 K19 ["ThreadIdContext"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K20 ["Resources"]
       78 GETTABLEKS                       R11 R11 K21 ["Localization"]
       80 GETTABLEKS                       R11 R11 K22 ["Translator"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K23 ["Types"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K24 ["Hooks"]
       92 GETTABLEKS                       R13 R13 K25 ["useDuplicateThread"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K24 ["Hooks"]
       99 GETTABLEKS                       R14 R14 K26 ["useEditMessage"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K24 ["Hooks"]
      106 GETTABLEKS                       R15 R15 K27 ["useSwitchThread"]
      108 CALL                             R14 1 1
      109 GETTABLEKS                       R15 R4 K28 ["IconButton"]
      111 GETTABLEKS                       R16 R4 K29 ["Popover"]
      113 GETTABLEKS                       R17 R4 K30 ["Text"]
      115 GETTABLEKS                       R18 R4 K31 ["View"]
      117 GETTABLEKS                       R19 R6 K32 ["createNextOrder"]
      119 GETTABLEKS                       R20 R5 K33 ["createElement"]
      121 DUPTABLE                         R21 K38 [{["Up"] = "up", ["Down"] = "down"}]
      122 GETTABLEKS                       R22 R5 K39 ["memo"]
      124 DUPCLOSURE                       R23 K40 [PROTO_4]
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R20
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R17
      131 CALL                             R22 1 1
      132 DUPCLOSURE                       R23 K41 [PROTO_19]
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R22
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R4
      149 DUPCLOSURE                       R24 K42 [PROTO_20]
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R8
      155 RETURN                           R24 1
