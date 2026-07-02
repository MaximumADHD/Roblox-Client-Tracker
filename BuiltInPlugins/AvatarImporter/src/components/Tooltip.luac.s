PROTO_0:
        0 GETIMPORT                        R0 K1 [tick]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K2 ["targetTime"]
        6 JUMPIFNOTLE                      R1 R0 ; [+18]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["heartbeatConn"]
       11 NAMECALL                         R0 R0 K4 ["Disconnect"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 0
       15 DUPTABLE                         R2 K8 [{["show"] = True, ["tooltipPosition"]}]
       16 GETUPVAL                         R3 0
       17 NAMECALL                         R3 R3 K9 ["getPosition"]
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K7 ["tooltipPosition"]
       22 NAMECALL                         R0 R0 K10 ["setState"]
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 SETTABLEKS                       R1 R3 K0 ["mouseX"]
        3 GETUPVAL                         R3 0
        4 SETTABLEKS                       R2 R3 K1 ["mouseY"]
        6 GETUPVAL                         R3 0
        7 NAMECALL                         R3 R3 K2 ["resetTargetTime"]
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 0
       11 NAMECALL                         R3 R3 K3 ["disconnectHeartbeat"]
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K4 ["Heartbeat"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          UPVAL U0
       20 NAMECALL                         R4 R4 K5 ["Connect"]
       22 CALL                             R4 2 1
       23 SETTABLEKS                       R4 R3 K6 ["heartbeatConn"]
       25 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 SETTABLEKS                       R1 R3 K0 ["mouseX"]
        3 GETUPVAL                         R3 0
        4 SETTABLEKS                       R2 R3 K1 ["mouseY"]
        6 GETUPVAL                         R3 0
        7 NAMECALL                         R3 R3 K2 ["resetTargetTime"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["disconnectHeartbeat"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 DUPTABLE                         R2 K3 [{["show"] = False}]
        6 NAMECALL                         R0 R0 K4 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["detectorRef"]
        6 DUPTABLE                         R1 K4 [{["show"] = False}]
        7 SETTABLEKS                       R1 R0 K5 ["state"]
        9 LOADK                            R1 K6 [∞]
       10 SETTABLEKS                       R1 R0 K7 ["targetTime"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 SETTABLEKS                       R1 R0 K8 ["mouseEnter"]
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K9 ["mouseMoved"]
       21 NEWCLOSURE                       R1 P2
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K10 ["mouseLeave"]
       25 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["heartbeatConn"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["heartbeatConn"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["heartbeatConn"]
       11 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R4 R0 K3 ["props"]
        5 GETTABLEKS                       R4 R4 K4 ["showDelay"]
        7 ORK                              R3 R4 K2 [0.5]
        8 ADD                              R1 R2 R3
        9 SETTABLEKS                       R1 R0 K5 ["targetTime"]
       11 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["detectorRef"]
        2 NAMECALL                         R1 R1 K1 ["getValue"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+20]
        6 GETTABLEKS                       R2 R1 K2 ["AbsolutePosition"]
        8 GETIMPORT                        R3 K5 [UDim2.new]
       10 LOADN                            R4 0
       11 GETTABLEKS                       R7 R0 K7 ["mouseX"]
       13 GETTABLEKS                       R8 R2 K8 ["X"]
       15 SUB                              R6 R7 R8
       16 ADDK                             R5 R6 K6 [13]
       17 LOADN                            R6 0
       18 GETTABLEKS                       R9 R0 K10 ["mouseY"]
       20 GETTABLEKS                       R10 R2 K11 ["Y"]
       22 SUB                              R8 R9 R10
       23 ADDK                             R7 R8 K9 [23]
       24 CALL                             R3 4 -1
       25 RETURN                           R3 -1
       26 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 8 0
        6 GETIMPORT                        R4 K4 [UDim2.new]
        8 LOADN                            R5 1
        9 LOADN                            R6 0
       10 LOADN                            R7 1
       11 LOADN                            R8 0
       12 CALL                             R4 4 1
       13 SETTABLEKS                       R4 R3 K5 ["Size"]
       15 LOADN                            R4 1
       16 SETTABLEKS                       R4 R3 K6 ["BackgroundTransparency"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K7 ["Ref"]
       21 GETTABLEKS                       R5 R0 K8 ["detectorRef"]
       23 SETTABLE                         R5 R3 R4
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K9 ["Event"]
       27 GETTABLEKS                       R4 R4 K10 ["MouseEnter"]
       29 GETTABLEKS                       R5 R0 K11 ["mouseEnter"]
       31 SETTABLE                         R5 R3 R4
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K9 ["Event"]
       35 GETTABLEKS                       R4 R4 K12 ["MouseMoved"]
       37 GETTABLEKS                       R5 R0 K13 ["mouseMoved"]
       39 SETTABLE                         R5 R3 R4
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K9 ["Event"]
       43 GETTABLEKS                       R4 R4 K14 ["MouseLeave"]
       45 GETTABLEKS                       R5 R0 K15 ["mouseLeave"]
       47 SETTABLE                         R5 R3 R4
       48 DUPTABLE                         R4 K17 [{"Tooltip"}]
       49 GETTABLEKS                       R5 R0 K18 ["state"]
       51 GETTABLEKS                       R5 R5 K19 ["show"]
       53 JUMPIFNOT                        R5 ; [+54]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K0 ["createElement"]
       57 LOADK                            R6 K1 ["Frame"]
       58 DUPTABLE                         R7 K26 [{["ZIndex"] = 10, ["Position"], ["Size"], ["Visible"], ["BackgroundColor3"], ["BorderColor3"]}]
       59 GETTABLEKS                       R8 R0 K18 ["state"]
       61 GETTABLEKS                       R8 R8 K27 ["tooltipPosition"]
       63 SETTABLEKS                       R8 R7 K22 ["Position"]
       65 GETTABLEKS                       R8 R0 K28 ["props"]
       67 GETTABLEKS                       R8 R8 K5 ["Size"]
       69 SETTABLEKS                       R8 R7 K5 ["Size"]
       71 GETTABLEKS                       R8 R0 K28 ["props"]
       73 GETTABLEKS                       R8 R8 K29 ["enabled"]
       75 SETTABLEKS                       R8 R7 K23 ["Visible"]
       77 GETUPVAL                         R8 1
       78 GETTABLEKS                       R8 R8 K30 ["Theme"]
       80 GETIMPORT                        R10 K34 [Enum.StudioStyleGuideColor.MainBackground]
       82 GETIMPORT                        R11 K37 [Enum.StudioStyleGuideModifier.Default]
       84 NAMECALL                         R8 R8 K38 ["GetColor"]
       86 CALL                             R8 3 1
       87 SETTABLEKS                       R8 R7 K24 ["BackgroundColor3"]
       89 GETUPVAL                         R8 1
       90 GETTABLEKS                       R8 R8 K30 ["Theme"]
       92 GETIMPORT                        R10 K40 [Enum.StudioStyleGuideColor.Border]
       94 GETIMPORT                        R11 K37 [Enum.StudioStyleGuideModifier.Default]
       96 NAMECALL                         R8 R8 K38 ["GetColor"]
       98 CALL                             R8 3 1
       99 SETTABLEKS                       R8 R7 K25 ["BorderColor3"]
      101 GETTABLEKS                       R9 R0 K28 ["props"]
      103 GETUPVAL                         R10 0
      104 GETTABLEKS                       R10 R10 K41 ["Children"]
      106 GETTABLE                         R8 R9 R10
      107 CALL                             R5 3 1
      108 SETTABLEKS                       R5 R4 K16 ["Tooltip"]
      110 CALL                             R1 3 -1
      111 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["RunService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R0 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K12 [settings]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R3 R3 K13 ["Studio"]
       27 GETTABLEKS                       R4 R2 K14 ["Component"]
       29 LOADK                            R6 K15 ["Tooltip"]
       30 NAMECALL                         R4 R4 K16 ["extend"]
       32 CALL                             R4 2 1
       33 DUPCLOSURE                       R5 K17 [PROTO_4]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R5 R4 K18 ["init"]
       38 DUPCLOSURE                       R5 K19 [PROTO_5]
       39 SETTABLEKS                       R5 R4 K20 ["disconnectHeartbeat"]
       41 DUPCLOSURE                       R5 K21 [PROTO_6]
       42 SETTABLEKS                       R5 R4 K22 ["resetTargetTime"]
       44 DUPCLOSURE                       R5 K23 [PROTO_7]
       45 SETTABLEKS                       R5 R4 K24 ["getPosition"]
       47 DUPCLOSURE                       R5 K25 [PROTO_8]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 SETTABLEKS                       R5 R4 K26 ["render"]
       52 RETURN                           R4 1
