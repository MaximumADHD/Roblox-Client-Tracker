PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioPublishLimitReachedDialogLink"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 0
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K4 ["OpenBrowserWindow"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["OnClose"]
        2 GETTABLEKS                       R2 R0 K1 ["IsPublish"]
        4 GETTABLEKS                       R3 R0 K2 ["CloseMode"]
        6 GETTABLEKS                       R4 R0 K3 ["Screen"]
        8 GETTABLEKS                       R5 R0 K4 ["ActivationFailed"]
       10 GETTABLEKS                       R6 R0 K5 ["DispatchSetActivationFailed"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K6 ["createFragment"]
       15 DUPTABLE                         R8 K9 [{"Screen", "ModalOverlay", "ActivationFailedDialog"}]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K10 ["createElement"]
       19 GETUPVAL                         R11 1
       20 GETTABLE                         R10 R11 R4
       21 DUPTABLE                         R11 K11 [{"OnClose", "IsPublish", "CloseMode"}]
       22 SETTABLEKS                       R1 R11 K0 ["OnClose"]
       24 SETTABLEKS                       R2 R11 K1 ["IsPublish"]
       26 SETTABLEKS                       R3 R11 K2 ["CloseMode"]
       28 CALL                             R9 2 1
       29 SETTABLEKS                       R9 R8 K3 ["Screen"]
       31 GETUPVAL                         R10 2
       32 JUMPIFNOT                        R10 ; [+38]
       33 JUMPIFNOT                        R5 ; [+37]
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R9 R10 K10 ["createElement"]
       37 LOADK                            R10 K12 ["TextButton"]
       38 DUPTABLE                         R11 K20 [{"ZIndex", "Size", "BackgroundTransparency", "BackgroundColor3", "Text", "AutoButtonColor", "Active"}]
       39 LOADN                            R12 10
       40 SETTABLEKS                       R12 R11 K13 ["ZIndex"]
       42 GETIMPORT                        R12 K23 [UDim2.fromScale]
       44 LOADN                            R13 1
       45 LOADN                            R14 1
       46 CALL                             R12 2 1
       47 SETTABLEKS                       R12 R11 K14 ["Size"]
       49 LOADK                            R12 K24 [0.5]
       50 SETTABLEKS                       R12 R11 K15 ["BackgroundTransparency"]
       52 GETIMPORT                        R12 K27 [Color3.new]
       54 LOADN                            R13 0
       55 LOADN                            R14 0
       56 LOADN                            R15 0
       57 CALL                             R12 3 1
       58 SETTABLEKS                       R12 R11 K16 ["BackgroundColor3"]
       60 LOADK                            R12 K28 [""]
       61 SETTABLEKS                       R12 R11 K17 ["Text"]
       63 LOADB                            R12 0
       64 SETTABLEKS                       R12 R11 K18 ["AutoButtonColor"]
       66 LOADB                            R12 1
       67 SETTABLEKS                       R12 R11 K19 ["Active"]
       69 CALL                             R9 2 1
       70 JUMPIF                           R9 ; [+1]
       71 LOADNIL                          R9
       72 SETTABLEKS                       R9 R8 K7 ["ModalOverlay"]
       74 GETUPVAL                         R10 2
       75 JUMPIFNOT                        R10 ; [+39]
       76 JUMPIFNOT                        R5 ; [+38]
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R9 R10 K10 ["createElement"]
       80 LOADK                            R10 K29 ["Frame"]
       81 DUPTABLE                         R11 K30 [{"BackgroundTransparency", "Size", "ZIndex"}]
       82 LOADN                            R12 1
       83 SETTABLEKS                       R12 R11 K15 ["BackgroundTransparency"]
       85 GETIMPORT                        R12 K23 [UDim2.fromScale]
       87 LOADN                            R13 1
       88 LOADN                            R14 1
       89 CALL                             R12 2 1
       90 SETTABLEKS                       R12 R11 K14 ["Size"]
       92 LOADN                            R12 20
       93 SETTABLEKS                       R12 R11 K13 ["ZIndex"]
       95 DUPTABLE                         R12 K32 [{"Dialog"}]
       96 GETUPVAL                         R14 0
       97 GETTABLEKS                       R13 R14 K10 ["createElement"]
       99 GETUPVAL                         R14 3
      100 DUPTABLE                         R15 K34 [{"OnClose", "OnLearnMore"}]
      101 NEWCLOSURE                       R16 P0
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R1
      104 SETTABLEKS                       R16 R15 K0 ["OnClose"]
      106 DUPCLOSURE                       R16 K35 [PROTO_1]
      107 CAPTURE                          UPVAL U4
      108 SETTABLEKS                       R16 R15 K33 ["OnLearnMore"]
      110 CALL                             R13 2 1
      111 SETTABLEKS                       R13 R12 K31 ["Dialog"]
      113 CALL                             R9 3 1
      114 JUMPIF                           R9 ; [+1]
      115 LOADNIL                          R9
      116 SETTABLEKS                       R9 R8 K8 ["ActivationFailedDialog"]
      118 CALL                             R7 1 -1
      119 RETURN                           R7 -1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["Screen"]
        2 GETTABLEKS                       R2 R3 K1 ["screen"]
        4 GETTABLEKS                       R4 R0 K0 ["Screen"]
        6 GETTABLEKS                       R3 R4 K2 ["activationFailed"]
        8 DUPTABLE                         R4 K4 [{"Screen", "ActivationFailed"}]
        9 SETTABLEKS                       R2 R4 K0 ["Screen"]
       11 SETTABLEKS                       R3 R4 K3 ["ActivationFailed"]
       13 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"DispatchSetActivationFailed"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["DispatchSetActivationFailed"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Resources"]
       29 GETTABLEKS                       R4 R5 K10 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K11 ["Components"]
       38 GETTABLEKS                       R5 R6 K12 ["ActivationFailedDialog"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K13 ["Actions"]
       47 GETTABLEKS                       R6 R7 K14 ["SetActivationFailed"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K16 [game]
       52 LOADK                            R8 K17 ["BrowserService"]
       53 NAMECALL                         R6 R6 K18 ["GetService"]
       55 CALL                             R6 2 1
       56 GETIMPORT                        R7 K16 [game]
       58 LOADK                            R9 K19 ["StudioUserLimitCheck"]
       59 NAMECALL                         R7 R7 K20 ["GetFastFlag"]
       61 CALL                             R7 2 1
       62 NEWTABLE                         R8 8 0
       64 GETTABLEKS                       R10 R3 K21 ["SCREENS"]
       66 GETTABLEKS                       R9 R10 K22 ["CREATE_NEW_GAME"]
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R13 R0 K8 ["Src"]
       72 GETTABLEKS                       R12 R13 K11 ["Components"]
       74 GETTABLEKS                       R11 R12 K23 ["ScreenCreateNewGame"]
       76 CALL                             R10 1 1
       77 SETTABLE                         R10 R8 R9
       78 GETTABLEKS                       R10 R3 K21 ["SCREENS"]
       80 GETTABLEKS                       R9 R10 K24 ["CHOOSE_GAME"]
       82 GETIMPORT                        R10 K4 [require]
       84 GETTABLEKS                       R13 R0 K8 ["Src"]
       86 GETTABLEKS                       R12 R13 K11 ["Components"]
       88 GETTABLEKS                       R11 R12 K25 ["ScreenChooseGame"]
       90 CALL                             R10 1 1
       91 SETTABLE                         R10 R8 R9
       92 GETTABLEKS                       R10 R3 K21 ["SCREENS"]
       94 GETTABLEKS                       R9 R10 K26 ["CHOOSE_PLACE"]
       96 GETIMPORT                        R10 K4 [require]
       98 GETTABLEKS                       R13 R0 K8 ["Src"]
      100 GETTABLEKS                       R12 R13 K11 ["Components"]
      102 GETTABLEKS                       R11 R12 K27 ["ScreenChoosePlace"]
      104 CALL                             R10 1 1
      105 SETTABLE                         R10 R8 R9
      106 GETTABLEKS                       R10 R3 K21 ["SCREENS"]
      108 GETTABLEKS                       R9 R10 K28 ["PUBLISH_IN_PROGRESS"]
      110 GETIMPORT                        R10 K4 [require]
      112 GETTABLEKS                       R13 R0 K8 ["Src"]
      114 GETTABLEKS                       R12 R13 K11 ["Components"]
      116 GETTABLEKS                       R11 R12 K29 ["ScreenPublishInProgress"]
      118 CALL                             R10 1 1
      119 SETTABLE                         R10 R8 R9
      120 GETTABLEKS                       R10 R3 K21 ["SCREENS"]
      122 GETTABLEKS                       R9 R10 K30 ["PUBLISH_SUCCESSFUL"]
      124 GETIMPORT                        R10 K4 [require]
      126 GETTABLEKS                       R13 R0 K8 ["Src"]
      128 GETTABLEKS                       R12 R13 K11 ["Components"]
      130 GETTABLEKS                       R11 R12 K31 ["ScreenPublishSuccessful"]
      132 CALL                             R10 1 1
      133 SETTABLE                         R10 R8 R9
      134 GETTABLEKS                       R10 R3 K21 ["SCREENS"]
      136 GETTABLEKS                       R9 R10 K32 ["PUBLISH_FAIL"]
      138 GETIMPORT                        R10 K4 [require]
      140 GETTABLEKS                       R13 R0 K8 ["Src"]
      142 GETTABLEKS                       R12 R13 K11 ["Components"]
      144 GETTABLEKS                       R11 R12 K33 ["ScreenPublishFail"]
      146 CALL                             R10 1 1
      147 SETTABLE                         R10 R8 R9
      148 GETIMPORT                        R9 K35 [pairs]
      150 GETTABLEKS                       R10 R3 K21 ["SCREENS"]
      152 CALL                             R9 1 3
      153 FORGPREP_NEXT                    R9
      154 GETTABLE                         R16 R8 R12
      155 JUMPIFNOTEQKNIL                  R16 ; [+2]
      157 LOADB                            R15 0 +1
      158 LOADB                            R15 1
      159 GETIMPORT                        R16 K38 [string.format]
      161 LOADK                            R17 K39 ["ScreenSelect.lua does not handle screen %s"]
      162 MOVE                             R18 R12
      163 CALL                             R16 2 -1
      164 FASTCALL                         ASSERT ; [+2]
      165 GETIMPORT                        R14 K41 [assert]
      167 CALL                             R14 -1 0
      168 FORGLOOP                         R9 2 ; [-15]
      170 DUPCLOSURE                       R9 K42 [PROTO_2]
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R6
      176 DUPCLOSURE                       R10 K43 [PROTO_3]
      177 DUPCLOSURE                       R11 K44 [PROTO_5]
      178 CAPTURE                          VAL R5
      179 GETTABLEKS                       R12 R2 K45 ["connect"]
      181 MOVE                             R13 R10
      182 MOVE                             R14 R11
      183 CALL                             R12 2 1
      184 MOVE                             R13 R9
      185 CALL                             R12 1 -1
      186 RETURN                           R12 -1
