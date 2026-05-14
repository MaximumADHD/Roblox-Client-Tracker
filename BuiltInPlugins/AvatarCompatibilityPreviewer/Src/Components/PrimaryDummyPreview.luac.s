PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Position"]
        3 GETUPVAL                         R2 1
        4 SUB                              R0 R1 R2
        5 GETTABLEKS                       R0 R0 K1 ["Magnitude"]
        7 LOADN                            R1 4
        8 JUMPIFNOTLE                      R1 R0 ; [+5]
       10 GETUPVAL                         R0 2
       11 NAMECALL                         R0 R0 K2 ["Disconnect"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K4 ["Position"]
        9 LOADNIL                          R3
       10 LOADK                            R6 K4 ["Position"]
       11 NAMECALL                         R4 R1 K5 ["GetPropertyChangedSignal"]
       13 CALL                             R4 2 1
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          REF R3
       18 NAMECALL                         R4 R4 K6 ["Connect"]
       20 CALL                             R4 2 1
       21 MOVE                             R3 R4
       22 CLOSEUPVALS                      R3
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       10 DUPCLOSURE                       R3 K3 [PROTO_1]
       11 NEWTABLE                         R4 0 2
       13 GETTABLEKS                       R5 R0 K4 ["Dummy"]
       15 GETTABLEKS                       R6 R0 K5 ["RevertToDefault"]
       17 SETLIST                          R4 R5 2 [1]
       19 CALL                             R2 2 1
       20 GETTABLEKS                       R3 R0 K4 ["Dummy"]
       22 JUMPIFNOT                        R3 ; [+14]
       23 GETTABLEKS                       R5 R0 K4 ["Dummy"]
       25 GETTABLEKS                       R5 R5 K6 ["PrimaryPart"]
       27 JUMPIFNOTEQKNIL                  R5 ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       33 LOADK                            R5 K7 ["PrimaryPart is not set"]
       34 GETIMPORT                        R3 K9 [assert]
       36 CALL                             R3 2 0
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K10 ["createElement"]
       40 GETUPVAL                         R4 2
       41 NEWTABLE                         R5 2 0
       43 LOADN                            R6 255
       44 SETTABLEKS                       R6 R5 K11 ["ZIndex"]
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K12 ["Event"]
       49 GETTABLEKS                       R6 R6 K13 ["InputBegan"]
       51 SETTABLE                         R2 R5 R6
       52 DUPTABLE                         R6 K16 [{"Background", "DummyPreview"}]
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K10 ["createElement"]
       56 GETUPVAL                         R8 4
       57 CALL                             R7 1 1
       58 SETTABLEKS                       R7 R6 K14 ["Background"]
       60 GETTABLEKS                       R8 R0 K4 ["Dummy"]
       62 JUMPIFNOT                        R8 ; [+25]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K10 ["createElement"]
       66 GETUPVAL                         R8 5
       67 DUPTABLE                         R9 K21 [{"Model", "ResetCameraSignal", "GetCameraModifications", "Static"}]
       68 GETTABLEKS                       R10 R0 K4 ["Dummy"]
       70 SETTABLEKS                       R10 R9 K17 ["Model"]
       72 GETTABLEKS                       R10 R0 K18 ["ResetCameraSignal"]
       74 SETTABLEKS                       R10 R9 K18 ["ResetCameraSignal"]
       76 GETTABLEKS                       R10 R1 K22 ["stage"]
       78 GETTABLEKS                       R10 R10 K23 ["getPreviewCameraModifications"]
       80 SETTABLEKS                       R10 R9 K19 ["GetCameraModifications"]
       82 GETTABLEKS                       R10 R1 K24 ["dummyPreviewLocked"]
       84 SETTABLEKS                       R10 R9 K20 ["Static"]
       86 CALL                             R7 2 1
       87 JUMP                             ; [+20]
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R7 R7 K10 ["createElement"]
       91 GETUPVAL                         R8 6
       92 DUPTABLE                         R9 K27 [{"AnchorPoint", "Position"}]
       93 GETIMPORT                        R10 K30 [Vector2.new]
       95 LOADK                            R11 K31 [0.5]
       96 LOADK                            R12 K31 [0.5]
       97 CALL                             R10 2 1
       98 SETTABLEKS                       R10 R9 K25 ["AnchorPoint"]
      100 GETIMPORT                        R10 K34 [UDim2.fromScale]
      102 LOADK                            R11 K31 [0.5]
      103 LOADK                            R12 K31 [0.5]
      104 CALL                             R10 2 1
      105 SETTABLEKS                       R10 R9 K26 ["Position"]
      107 CALL                             R7 2 1
      108 SETTABLEKS                       R7 R6 K15 ["DummyPreview"]
      110 CALL                             R3 3 -1
      111 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["AvatarScreenContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Components"]
       43 GETTABLEKS                       R6 R6 K13 ["Background"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K11 ["Components"]
       52 GETTABLEKS                       R7 R7 K14 ["ModelPreview"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R1 K15 ["UI"]
       57 GETTABLEKS                       R8 R7 K16 ["LoadingIndicator"]
       59 GETTABLEKS                       R9 R7 K17 ["Pane"]
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R0 K10 ["Src"]
       65 GETTABLEKS                       R11 R11 K18 ["Types"]
       67 CALL                             R10 1 1
       68 DUPCLOSURE                       R11 K19 [PROTO_2]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R8
       76 RETURN                           R11 1
