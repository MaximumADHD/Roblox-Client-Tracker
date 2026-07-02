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
        8 CALL                             R0 0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 3
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 4
       13 LOADK                            R1 K0 ["up"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 5
       17 LOADK                            R1 K0 ["up"]
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 LOADK                            R1 K0 ["down"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 3
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 4
       13 LOADK                            R1 K0 ["down"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 5
       17 LOADK                            R1 K0 ["down"]
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

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
       39 CALL                             R10 0 1
       40 JUMPIFNOT                        R10 ; [+8]
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R9 R9 K0 ["useContext"]
       44 GETUPVAL                         R10 6
       45 GETTABLEKS                       R10 R10 K1 ["Context"]
       47 CALL                             R9 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R9
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       53 NEWCLOSURE                       R11 P1
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R4
       57 NEWTABLE                         R12 0 2
       59 GETTABLEKS                       R13 R0 K6 ["messageId"]
       61 MOVE                             R14 R4
       62 SETLIST                          R12 R13 2 [1]
       64 CALL                             R10 2 1
       65 GETUPVAL                         R11 0
       66 GETTABLEKS                       R11 R11 K5 ["useCallback"]
       68 NEWCLOSURE                       R12 P2
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R10
       71 NEWTABLE                         R13 0 2
       73 MOVE                             R14 R9
       74 MOVE                             R15 R10
       75 SETLIST                          R13 R14 2 [1]
       77 CALL                             R11 2 1
       78 GETUPVAL                         R12 0
       79 GETTABLEKS                       R12 R12 K5 ["useCallback"]
       81 NEWCLOSURE                       R13 P3
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R10
       88 NEWTABLE                         R14 0 4
       90 MOVE                             R15 R7
       91 MOVE                             R16 R10
       92 MOVE                             R17 R9
       93 MOVE                             R18 R11
       94 SETLIST                          R14 R15 4 [1]
       96 CALL                             R12 2 1
       97 GETUPVAL                         R13 0
       98 GETTABLEKS                       R13 R13 K5 ["useCallback"]
      100 NEWCLOSURE                       R14 P4
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R8
      103 CAPTURE                          UPVAL U5
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R10
      107 NEWTABLE                         R15 0 4
      109 MOVE                             R16 R7
      110 MOVE                             R17 R10
      111 MOVE                             R18 R9
      112 MOVE                             R19 R11
      113 SETLIST                          R15 R16 4 [1]
      115 CALL                             R13 2 1
      116 GETUPVAL                         R14 0
      117 GETTABLEKS                       R14 R14 K5 ["useCallback"]
      119 NEWCLOSURE                       R15 P5
      120 CAPTURE                          UPVAL U7
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R4
      123 NEWTABLE                         R16 0 3
      125 GETTABLEKS                       R17 R0 K7 ["retryMessage"]
      127 GETTABLEKS                       R18 R0 K6 ["messageId"]
      129 MOVE                             R19 R4
      130 SETLIST                          R16 R17 3 [1]
      132 CALL                             R14 2 1
      133 GETUPVAL                         R15 8
      134 CALL                             R15 0 1
      135 GETUPVAL                         R16 0
      136 GETTABLEKS                       R16 R16 K5 ["useCallback"]
      138 NEWCLOSURE                       R17 P6
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R0
      142 CAPTURE                          VAL R5
      143 CAPTURE                          UPVAL U9
      144 NEWTABLE                         R18 0 4
      146 MOVE                             R19 R5
      147 MOVE                             R20 R15
      148 MOVE                             R21 R2
      149 GETTABLEKS                       R22 R0 K6 ["messageId"]
      151 SETLIST                          R18 R19 4 [1]
      153 CALL                             R16 2 1
      154 GETUPVAL                         R17 10
      155 CALL                             R17 0 1
      156 GETUPVAL                         R18 11
      157 GETUPVAL                         R19 0
      158 GETTABLEKS                       R19 R19 K8 ["Fragment"]
      160 LOADNIL                          R20
      161 DUPTABLE                         R21 K13 [{"ThumbsUp", "ThumbsDown", "Retry", "Branch"}]
      162 GETUPVAL                         R22 11
      163 GETUPVAL                         R23 12
      164 DUPTABLE                         R24 K18 [{["name"] = "ThumbsUp", ["title"], ["LayoutOrder"], ["renderAnchor"]}]
      165 GETUPVAL                         R25 13
      166 LOADK                            R27 K19 ["MessageActions"]
      167 LOADK                            R28 K20 ["TooltipThumbsUp"]
      168 NAMECALL                         R25 R25 K21 ["getText"]
      170 CALL                             R25 3 1
      171 SETTABLEKS                       R25 R24 K15 ["title"]
      173 MOVE                             R25 R17
      174 CALL                             R25 0 1
      175 SETTABLEKS                       R25 R24 K16 ["LayoutOrder"]
      177 NEWCLOSURE                       R25 P7
      178 CAPTURE                          UPVAL U11
      179 CAPTURE                          UPVAL U14
      180 CAPTURE                          UPVAL U15
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R12
      183 SETTABLEKS                       R25 R24 K17 ["renderAnchor"]
      185 CALL                             R22 2 1
      186 SETTABLEKS                       R22 R21 K9 ["ThumbsUp"]
      188 GETUPVAL                         R22 11
      189 GETUPVAL                         R23 12
      190 DUPTABLE                         R24 K22 [{["name"] = "ThumbsDown", ["title"], ["LayoutOrder"], ["renderAnchor"]}]
      191 GETUPVAL                         R25 13
      192 LOADK                            R27 K19 ["MessageActions"]
      193 LOADK                            R28 K23 ["TooltipThumbsDown"]
      194 NAMECALL                         R25 R25 K21 ["getText"]
      196 CALL                             R25 3 1
      197 SETTABLEKS                       R25 R24 K15 ["title"]
      199 MOVE                             R25 R17
      200 CALL                             R25 0 1
      201 SETTABLEKS                       R25 R24 K16 ["LayoutOrder"]
      203 NEWCLOSURE                       R25 P8
      204 CAPTURE                          UPVAL U11
      205 CAPTURE                          UPVAL U14
      206 CAPTURE                          UPVAL U15
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R13
      209 SETTABLEKS                       R25 R24 K17 ["renderAnchor"]
      211 CALL                             R22 2 1
      212 SETTABLEKS                       R22 R21 K10 ["ThumbsDown"]
      214 GETUPVAL                         R22 11
      215 GETUPVAL                         R23 12
      216 DUPTABLE                         R24 K24 [{["name"] = "Retry", ["title"], ["LayoutOrder"], ["renderAnchor"]}]
      217 GETUPVAL                         R25 13
      218 LOADK                            R27 K19 ["MessageActions"]
      219 LOADK                            R28 K25 ["TooltipRetry"]
      220 NAMECALL                         R25 R25 K21 ["getText"]
      222 CALL                             R25 3 1
      223 SETTABLEKS                       R25 R24 K15 ["title"]
      225 MOVE                             R25 R17
      226 CALL                             R25 0 1
      227 SETTABLEKS                       R25 R24 K16 ["LayoutOrder"]
      229 NEWCLOSURE                       R25 P9
      230 CAPTURE                          UPVAL U11
      231 CAPTURE                          UPVAL U14
      232 CAPTURE                          UPVAL U15
      233 CAPTURE                          VAL R14
      234 SETTABLEKS                       R25 R24 K17 ["renderAnchor"]
      236 CALL                             R22 2 1
      237 SETTABLEKS                       R22 R21 K11 ["Retry"]
      239 GETUPVAL                         R22 11
      240 GETUPVAL                         R23 12
      241 DUPTABLE                         R24 K26 [{["name"] = "Branch", ["title"], ["LayoutOrder"], ["renderAnchor"]}]
      242 GETUPVAL                         R25 13
      243 LOADK                            R27 K19 ["MessageActions"]
      244 LOADK                            R28 K27 ["TooltipBranch"]
      245 NAMECALL                         R25 R25 K21 ["getText"]
      247 CALL                             R25 3 1
      248 SETTABLEKS                       R25 R24 K15 ["title"]
      250 MOVE                             R25 R17
      251 CALL                             R25 0 1
      252 SETTABLEKS                       R25 R24 K16 ["LayoutOrder"]
      254 NEWCLOSURE                       R25 P10
      255 CAPTURE                          UPVAL U11
      256 CAPTURE                          UPVAL U14
      257 CAPTURE                          UPVAL U15
      258 CAPTURE                          VAL R16
      259 SETTABLEKS                       R25 R24 K17 ["renderAnchor"]
      261 CALL                             R22 2 1
      262 SETTABLEKS                       R22 R21 K12 ["Branch"]
      264 CALL                             R18 3 -1
      265 RETURN                           R18 -1

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
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Components"]
       48 GETTABLEKS                       R7 R7 K9 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K15 ["SessionIdContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K16 ["Util"]
       57 GETTABLEKS                       R8 R8 K17 ["TestIds"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K8 ["Components"]
       64 GETTABLEKS                       R9 R9 K9 ["Contexts"]
       66 GETTABLEKS                       R9 R9 K18 ["ThreadIdContext"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K19 ["Resources"]
       73 GETTABLEKS                       R10 R10 K20 ["Localization"]
       75 GETTABLEKS                       R10 R10 K21 ["Translator"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K22 ["Types"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       87 GETTABLEKS                       R12 R12 K24 ["useDuplicateThread"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       94 GETTABLEKS                       R13 R13 K25 ["useEditMessage"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K23 ["Hooks"]
      101 GETTABLEKS                       R14 R14 K26 ["useSwitchThread"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K27 ["Flags"]
      108 GETTABLEKS                       R15 R15 K28 ["FFlagAssistantFeedbackView"]
      110 CALL                             R14 1 1
      111 GETTABLEKS                       R15 R3 K29 ["IconButton"]
      113 GETTABLEKS                       R16 R3 K30 ["Popover"]
      115 GETTABLEKS                       R17 R3 K31 ["Text"]
      117 GETTABLEKS                       R18 R3 K32 ["View"]
      119 GETTABLEKS                       R19 R5 K33 ["createNextOrder"]
      121 GETTABLEKS                       R20 R4 K34 ["createElement"]
      123 DUPTABLE                         R21 K39 [{["Up"] = "up", ["Down"] = "down"}]
      124 GETTABLEKS                       R22 R4 K40 ["memo"]
      126 DUPCLOSURE                       R23 K41 [PROTO_4]
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R20
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R17
      133 CALL                             R22 1 1
      134 DUPCLOSURE                       R23 K42 [PROTO_19]
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R20
      147 CAPTURE                          VAL R22
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R3
      151 DUPCLOSURE                       R24 K43 [PROTO_20]
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R23
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R7
      157 RETURN                           R24 1
