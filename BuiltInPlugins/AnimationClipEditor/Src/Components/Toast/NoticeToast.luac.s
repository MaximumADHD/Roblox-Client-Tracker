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
       27 DIVRK                            R3 K9 [1] R1
       28 SETTABLEKS                       R3 R2 K10 ["fadeMultiplier"]
       30 GETUPVAL                         R2 1
       31 DUPTABLE                         R4 K12 [{["fadeAmount"] = 0}]
       32 NAMECALL                         R2 R2 K13 ["setState"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+54]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["state"]
        5 GETTABLEKS                       R0 R0 K1 ["showingToast"]
        7 JUMPIFNOT                        R0 ; [+48]
        8 GETIMPORT                        R0 K3 [tick]
       10 CALL                             R0 0 1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K4 ["hideTime"]
       14 JUMPIFNOTLE                      R1 R0 ; [+15]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K5 ["disconnectTimer"]
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K6 ["onClose"]
       23 CALL                             R0 0 0
       24 GETUPVAL                         R0 0
       25 DUPTABLE                         R2 K8 [{["showingToast"] = False}]
       26 NAMECALL                         R0 R0 K9 ["setState"]
       28 CALL                             R0 2 0
       29 RETURN                           R0 0
       30 GETIMPORT                        R0 K3 [tick]
       32 CALL                             R0 0 1
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R1 R1 K10 ["fadeTime"]
       36 JUMPIFNOTLE                      R1 R0 ; [+19]
       38 GETUPVAL                         R0 0
       39 DUPTABLE                         R2 K12 [{"fadeAmount"}]
       40 GETIMPORT                        R5 K3 [tick]
       42 CALL                             R5 0 1
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K10 ["fadeTime"]
       46 SUB                              R4 R5 R6
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K13 ["fadeMultiplier"]
       50 MUL                              R3 R4 R5
       51 SETTABLEKS                       R3 R2 K11 ["fadeAmount"]
       53 NAMECALL                         R0 R0 K9 ["setState"]
       55 CALL                             R0 2 0
       56 RETURN                           R0 0

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
        0 DUPTABLE                         R2 K4 [{[1] = True, ["fadeAmount"] = 0}]
        1 SETTABLEKS                       R2 R0 K5 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R0 K6 ["startTimer"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R2 R0 K7 ["connectTimer"]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K8 ["disconnectTimer"]
       17 NEWCLOSURE                       R2 P3
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R0 K9 ["onClose"]
       21 RETURN                           R0 0

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
       25 JUMPIFNOT                        R9 ; [+81]
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
       54 DUPTABLE                         R15 K30 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextSize"], ["TextColor3"], ["TextTransparency"], ["Font"]}]
       55 GETIMPORT                        R16 K21 [UDim2.new]
       57 LOADN                            R17 1
       58 LOADN                            R18 0
       59 LOADN                            R19 1
       60 LOADN                            R20 0
       61 CALL                             R16 4 1
       62 SETTABLEKS                       R16 R15 K13 ["Size"]
       64 SETTABLEKS                       R5 R15 K4 ["Text"]
       66 GETTABLEKS                       R16 R3 K9 ["textSize"]
       68 SETTABLEKS                       R16 R15 K26 ["TextSize"]
       70 GETTABLEKS                       R16 R3 K31 ["textColor"]
       72 SETTABLEKS                       R16 R15 K27 ["TextColor3"]
       74 SETTABLEKS                       R7 R15 K28 ["TextTransparency"]
       76 GETTABLEKS                       R16 R2 K10 ["font"]
       78 SETTABLEKS                       R16 R15 K29 ["Font"]
       80 DUPTABLE                         R16 K33 [{"Padding"}]
       81 GETUPVAL                         R17 1
       82 GETTABLEKS                       R17 R17 K11 ["createElement"]
       84 LOADK                            R18 K34 ["UIPadding"]
       85 DUPTABLE                         R19 K37 [{"PaddingLeft", "PaddingRight"}]
       86 GETIMPORT                        R20 K39 [UDim.new]
       88 LOADN                            R21 0
       89 LOADN                            R22 20
       90 CALL                             R20 2 1
       91 SETTABLEKS                       R20 R19 K35 ["PaddingLeft"]
       93 GETIMPORT                        R20 K39 [UDim.new]
       95 LOADN                            R21 0
       96 LOADN                            R22 20
       97 CALL                             R20 2 1
       98 SETTABLEKS                       R20 R19 K36 ["PaddingRight"]
      100 CALL                             R17 2 1
      101 SETTABLEKS                       R17 R16 K32 ["Padding"]
      103 CALL                             R13 3 1
      104 SETTABLEKS                       R13 R12 K4 ["Text"]
      106 CALL                             R9 3 1
      107 RETURN                           R9 1

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
