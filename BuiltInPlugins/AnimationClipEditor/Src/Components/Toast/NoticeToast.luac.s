PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["ShowTime"]
        3 ORK                              R0 R1 K0 [3]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["FadeTime"]
        7 ORK                              R1 R2 K2 [0.5]
        8 GETUPVAL                         R2 1
        9 GETIMPORT                        R4 K5 [tick]
       11 CALL                             R4 0 1
       12 ADD                              R3 R4 R0
       13 SETTABLEKS                       R3 R2 K6 ["hideTime"]
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K6 ["hideTime"]
       19 SUB                              R3 R4 R1
       20 SETTABLEKS                       R3 R2 K7 ["fadeTime"]
       22 GETUPVAL                         R2 1
       23 JUMPIFNOTEQKN                    R1 K8 [0] ; [+3]
       25 LOADN                            R3 1
       26 JUMP                             ; [+1]
       27 DIVRK                            R3 R9 K1 ["ShowTime"]
       28 SETTABLEKS                       R3 R2 K10 ["fadeMultiplier"]
       30 GETUPVAL                         R2 1
       31 DUPTABLE                         R4 K12 [{"fadeAmount"}]
       32 LOADN                            R5 0
       33 SETTABLEKS                       R5 R4 K11 ["fadeAmount"]
       35 NAMECALL                         R2 R2 K13 ["setState"]
       37 CALL                             R2 2 0
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+57]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["state"]
        5 GETTABLEKS                       R0 R0 K1 ["showingToast"]
        7 JUMPIFNOT                        R0 ; [+51]
        8 GETIMPORT                        R0 K3 [tick]
       10 CALL                             R0 0 1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K4 ["hideTime"]
       14 JUMPIFNOTLE                      R1 R0 ; [+18]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K5 ["disconnectTimer"]
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K6 ["onClose"]
       23 CALL                             R0 0 0
       24 GETUPVAL                         R0 0
       25 DUPTABLE                         R2 K7 [{"showingToast"}]
       26 LOADB                            R3 0
       27 SETTABLEKS                       R3 R2 K1 ["showingToast"]
       29 NAMECALL                         R0 R0 K8 ["setState"]
       31 CALL                             R0 2 0
       32 RETURN                           R0 0
       33 GETIMPORT                        R0 K3 [tick]
       35 CALL                             R0 0 1
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K9 ["fadeTime"]
       39 JUMPIFNOTLE                      R1 R0 ; [+19]
       41 GETUPVAL                         R0 0
       42 DUPTABLE                         R2 K11 [{"fadeAmount"}]
       43 GETIMPORT                        R5 K3 [tick]
       45 CALL                             R5 0 1
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K9 ["fadeTime"]
       49 SUB                              R4 R5 R6
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K12 ["fadeMultiplier"]
       53 MUL                              R3 R4 R5
       54 SETTABLEKS                       R3 R2 K10 ["fadeAmount"]
       56 NAMECALL                         R0 R0 K8 ["setState"]
       58 CALL                             R0 2 0
       59 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Heartbeat"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K2 ["timerConnection"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["timerConnection"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["timerConnection"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnClose"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["OnClose"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R2 K2 [{"showingToast", "fadeAmount"}]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["showingToast"]
        4 LOADN                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["fadeAmount"]
        7 SETTABLEKS                       R2 R0 K3 ["state"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K4 ["startTimer"]
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R2 R0 K5 ["connectTimer"]
       19 NEWCLOSURE                       R2 P2
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K6 ["disconnectTimer"]
       23 NEWCLOSURE                       R2 P3
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K7 ["onClose"]
       27 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Text"]
        4 GETTABLEKS                       R3 R1 K1 ["Text"]
        6 JUMPIFEQ                         R2 R3 ; [+4]
        8 GETTABLEKS                       R2 R0 K2 ["startTimer"]
       10 CALL                             R2 0 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["startTimer"]
        2 CALL                             R1 0 0
        3 GETTABLEKS                       R1 R0 K1 ["connectTimer"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["disconnectTimer"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["toastTheme"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R5 R1 K4 ["Text"]
       10 GETTABLEKS                       R6 R4 K5 ["showingToast"]
       12 GETTABLEKS                       R7 R4 K6 ["fadeAmount"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R9 R9 K8 ["getTextWidth"]
       17 MOVE                             R10 R5
       18 GETTABLEKS                       R11 R3 K9 ["textSize"]
       20 GETTABLEKS                       R12 R2 K10 ["font"]
       22 CALL                             R9 3 1
       23 ADDK                             R8 R9 K7 [40]
       24 MOVE                             R9 R6
       25 JUMPIFNOT                        R9 ; [+84]
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R9 R9 K11 ["createElement"]
       29 GETUPVAL                         R10 2
       30 DUPTABLE                         R11 K15 [{"AnchorPoint", "Size", "Transparency"}]
       31 GETIMPORT                        R12 K18 [Vector2.new]
       33 LOADK                            R13 K19 [0.5]
       34 LOADN                            R14 1
       35 CALL                             R12 2 1
       36 SETTABLEKS                       R12 R11 K12 ["AnchorPoint"]
       38 GETIMPORT                        R12 K21 [UDim2.new]
       40 LOADN                            R13 0
       41 MOVE                             R14 R8
       42 LOADN                            R15 0
       43 LOADN                            R16 35
       44 CALL                             R12 4 1
       45 SETTABLEKS                       R12 R11 K13 ["Size"]
       47 SETTABLEKS                       R7 R11 K14 ["Transparency"]
       49 DUPTABLE                         R12 K22 [{"Text"}]
       50 GETUPVAL                         R13 1
       51 GETTABLEKS                       R13 R13 K11 ["createElement"]
       53 LOADK                            R14 K23 ["TextLabel"]
       54 DUPTABLE                         R15 K29 [{"Size", "BackgroundTransparency", "Text", "TextSize", "TextColor3", "TextTransparency", "Font"}]
       55 GETIMPORT                        R16 K21 [UDim2.new]
       57 LOADN                            R17 1
       58 LOADN                            R18 0
       59 LOADN                            R19 1
       60 LOADN                            R20 0
       61 CALL                             R16 4 1
       62 SETTABLEKS                       R16 R15 K13 ["Size"]
       64 LOADN                            R16 1
       65 SETTABLEKS                       R16 R15 K24 ["BackgroundTransparency"]
       67 SETTABLEKS                       R5 R15 K4 ["Text"]
       69 GETTABLEKS                       R16 R3 K9 ["textSize"]
       71 SETTABLEKS                       R16 R15 K25 ["TextSize"]
       73 GETTABLEKS                       R16 R3 K30 ["textColor"]
       75 SETTABLEKS                       R16 R15 K26 ["TextColor3"]
       77 SETTABLEKS                       R7 R15 K27 ["TextTransparency"]
       79 GETTABLEKS                       R16 R2 K10 ["font"]
       81 SETTABLEKS                       R16 R15 K28 ["Font"]
       83 DUPTABLE                         R16 K32 [{"Padding"}]
       84 GETUPVAL                         R17 1
       85 GETTABLEKS                       R17 R17 K11 ["createElement"]
       87 LOADK                            R18 K33 ["UIPadding"]
       88 DUPTABLE                         R19 K36 [{"PaddingLeft", "PaddingRight"}]
       89 GETIMPORT                        R20 K38 [UDim.new]
       91 LOADN                            R21 0
       92 LOADN                            R22 20
       93 CALL                             R20 2 1
       94 SETTABLEKS                       R20 R19 K34 ["PaddingLeft"]
       96 GETIMPORT                        R20 K38 [UDim.new]
       98 LOADN                            R21 0
       99 LOADN                            R22 20
      100 CALL                             R20 2 1
      101 SETTABLEKS                       R20 R19 K35 ["PaddingRight"]
      103 CALL                             R17 2 1
      104 SETTABLEKS                       R17 R16 K31 ["Padding"]
      106 CALL                             R13 3 1
      107 SETTABLEKS                       R13 R12 K4 ["Text"]
      109 CALL                             R9 3 1
      110 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Util"]
       26 GETTABLEKS                       R4 R4 K14 ["StringUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K10 ["Packages"]
       33 GETTABLEKS                       R5 R5 K15 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K16 ["ContextServices"]
       38 GETTABLEKS                       R6 R5 K17 ["withContext"]
       40 GETIMPORT                        R7 K9 [require]
       42 GETTABLEKS                       R8 R1 K12 ["Src"]
       44 GETTABLEKS                       R8 R8 K18 ["Components"]
       46 GETTABLEKS                       R8 R8 K19 ["Toast"]
       48 GETTABLEKS                       R8 R8 K20 ["BaseToast"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R8 R2 K21 ["PureComponent"]
       53 LOADK                            R10 K22 ["NoticeToast"]
       54 NAMECALL                         R8 R8 K23 ["extend"]
       56 CALL                             R8 2 1
       57 DUPCLOSURE                       R9 K24 [PROTO_5]
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R9 R8 K25 ["init"]
       61 DUPCLOSURE                       R9 K26 [PROTO_6]
       62 SETTABLEKS                       R9 R8 K27 ["didUpdate"]
       64 DUPCLOSURE                       R9 K28 [PROTO_7]
       65 SETTABLEKS                       R9 R8 K29 ["didMount"]
       67 DUPCLOSURE                       R9 K30 [PROTO_8]
       68 SETTABLEKS                       R9 R8 K31 ["willUnmount"]
       70 DUPCLOSURE                       R9 K32 [PROTO_9]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R7
       74 SETTABLEKS                       R9 R8 K33 ["render"]
       76 MOVE                             R9 R6
       77 DUPTABLE                         R10 K35 [{"Stylizer"}]
       78 GETTABLEKS                       R11 R5 K34 ["Stylizer"]
       80 SETTABLEKS                       R11 R10 K34 ["Stylizer"]
       82 CALL                             R9 1 1
       83 MOVE                             R10 R8
       84 CALL                             R9 1 1
       85 MOVE                             R8 R9
       86 RETURN                           R8 1
