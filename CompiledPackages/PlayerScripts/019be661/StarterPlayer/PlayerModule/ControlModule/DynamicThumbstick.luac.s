PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [setmetatable]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R0 R1 K3 ["playerData"]
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K4 ["enabled"]
       15 LOADB                            R2 0
       16 SETTABLEKS                       R2 R1 K5 ["isTouchActive"]
       18 LOADB                            R2 0
       19 SETTABLEKS                       R2 R1 K6 ["moveTouchFirstChanged"]
       21 LOADNIL                          R2
       22 SETTABLEKS                       R2 R1 K7 ["moveTouchStartPosition"]
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K8 ["startImage"]
       27 LOADNIL                          R2
       28 SETTABLEKS                       R2 R1 K9 ["endImage"]
       30 LOADNIL                          R2
       31 SETTABLEKS                       R2 R1 K10 ["endImageStroke"]
       33 LOADNIL                          R2
       34 SETTABLEKS                       R2 R1 K11 ["endImageCenter"]
       36 NEWTABLE                         R2 0 0
       38 SETTABLEKS                       R2 R1 K12 ["middleImages"]
       40 LOADNIL                          R2
       41 SETTABLEKS                       R2 R1 K13 ["startImageFadeTween"]
       43 LOADNIL                          R2
       44 SETTABLEKS                       R2 R1 K14 ["endImageFadeTween"]
       46 LOADNIL                          R2
       47 SETTABLEKS                       R2 R1 K15 ["endImageCenterFadeTween"]
       49 NEWTABLE                         R2 0 0
       51 SETTABLEKS                       R2 R1 K16 ["middleImageFadeTweens"]
       53 LOADB                            R2 1
       54 SETTABLEKS                       R2 R1 K17 ["isFirstTouch"]
       56 LOADNIL                          R2
       57 SETTABLEKS                       R2 R1 K18 ["thumbstickFrame"]
       59 LOADNIL                          R2
       60 SETTABLEKS                       R2 R1 K19 ["onRenderSteppedConn"]
       62 LOADK                            R2 K20 [0.5]
       63 SETTABLEKS                       R2 R1 K21 ["fadeInAndOutBalance"]
       65 LOADK                            R2 K22 [0.3]
       66 SETTABLEKS                       R2 R1 K23 ["fadeInAndOutHalfDuration"]
       68 LOADB                            R2 0
       69 SETTABLEKS                       R2 R1 K24 ["hasFadedBackgroundInPortrait"]
       71 LOADB                            R2 0
       72 SETTABLEKS                       R2 R1 K25 ["hasFadedBackgroundInLandscape"]
       74 LOADNIL                          R2
       75 SETTABLEKS                       R2 R1 K26 ["tweenInAlphaStart"]
       77 LOADNIL                          R2
       78 SETTABLEKS                       R2 R1 K27 ["tweenOutAlphaStart"]
       80 LOADB                            R2 0
       81 SETTABLEKS                       R2 R1 K28 ["newStyle"]
       83 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["isJumping"]
        2 LOADB                            R2 0
        3 SETTABLEKS                       R2 R0 K0 ["isJumping"]
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetChildren"]
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["Name"]
        7 JUMPIFEQKS                       R6 K2 ["DynamicTouchBinding"] ; [+5]
        9 GETTABLEKS                       R6 R5 K1 ["Name"]
       11 JUMPIFNOTEQKS                    R6 K3 ["ClassicTouchBinding"] ; [+4]
       13 NAMECALL                         R6 R5 K4 ["Destroy"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 ; [-12]
       18 GETIMPORT                        R1 K7 [Instance.new]
       20 LOADK                            R2 K8 ["InputBinding"]
       21 CALL                             R1 1 1
       22 LOADK                            R2 K2 ["DynamicTouchBinding"]
       23 SETTABLEKS                       R2 R1 K1 ["Name"]
       25 GETIMPORT                        R2 K12 [Enum.KeyCode.TouchPosition]
       27 SETTABLEKS                       R2 R1 K10 ["KeyCode"]
       29 GETTABLEKS                       R2 R0 K13 ["thumbstickButton"]
       31 SETTABLEKS                       R2 R1 K14 ["UIModifier"]
       33 GETUPVAL                         R2 0
       34 SETTABLEKS                       R2 R1 K15 ["Parent"]
       36 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+18]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["StateChanged"]
        7 GETTABLEKS                       R4 R0 K1 ["onStateChanged"]
        9 NAMECALL                         R2 R2 K2 ["Connect"]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R0 K3 ["thumbstickStateChangedConn"]
       14 GETUPVAL                         R2 1
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K4 ["Enabled"]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 1
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K4 ["Enabled"]
       23 GETTABLEKS                       R2 R0 K3 ["thumbstickStateChangedConn"]
       25 JUMPIFNOT                        R2 ; [+8]
       26 GETTABLEKS                       R2 R0 K3 ["thumbstickStateChangedConn"]
       28 NAMECALL                         R2 R2 K5 ["Disconnect"]
       30 CALL                             R2 1 0
       31 LOADNIL                          R2
       32 SETTABLEKS                       R2 R0 K3 ["thumbstickStateChangedConn"]
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIFNOT                        R0 ; [+48]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R0 R0 K1 ["Create"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+19]
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R1 3
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K2 ["StateChanged"]
       18 GETTABLEKS                       R3 R0 K3 ["onStateChanged"]
       20 NAMECALL                         R1 R1 K4 ["Connect"]
       22 CALL                             R1 2 1
       23 SETTABLEKS                       R1 R0 K5 ["thumbstickStateChangedConn"]
       25 GETUPVAL                         R1 4
       26 LOADB                            R2 1
       27 SETTABLEKS                       R2 R1 K6 ["Enabled"]
       29 JUMP                             ; [+16]
       30 GETUPVAL                         R0 0
       31 GETUPVAL                         R1 4
       32 GETTABLEKS                       R1 R1 K2 ["StateChanged"]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K3 ["onStateChanged"]
       37 NAMECALL                         R1 R1 K4 ["Connect"]
       39 CALL                             R1 2 1
       40 SETTABLEKS                       R1 R0 K5 ["thumbstickStateChangedConn"]
       42 GETUPVAL                         R0 4
       43 LOADB                            R1 1
       44 SETTABLEKS                       R1 R0 K6 ["Enabled"]
       46 GETUPVAL                         R0 0
       47 GETTABLEKS                       R0 R0 K7 ["thumbstickFrame"]
       49 LOADB                            R1 1
       50 SETTABLEKS                       R1 R0 K8 ["Visible"]
       52 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADB                            R3 0
        3 RETURN                           R3 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R3 1
        6 JUMP                             ; [+1]
        7 LOADB                            R3 0
        8 MOVE                             R1 R3
        9 GETTABLEKS                       R3 R0 K0 ["enabled"]
       11 JUMPIFNOTEQ                      R3 R1 ; [+3]
       13 LOADB                            R3 1
       14 RETURN                           R3 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K1 ["Enable"]
       18 MOVE                             R4 R0
       19 MOVE                             R5 R1
       20 CALL                             R3 2 0
       21 JUMPIFNOT                        R1 ; [+62]
       22 GETTABLEKS                       R3 R0 K2 ["thumbstickFrame"]
       24 JUMPIF                           R3 ; [+24]
       25 MOVE                             R5 R2
       26 NAMECALL                         R3 R0 K3 ["Create"]
       28 CALL                             R3 2 0
       29 GETUPVAL                         R3 1
       30 JUMPIFNOT                        R3 ; [+18]
       31 GETTABLEKS                       R3 R0 K4 ["avatarAbilitiesEnabledChangedConn"]
       33 JUMPIF                           R3 ; [+15]
       34 GETUPVAL                         R3 2
       35 NAMECALL                         R3 R3 K5 ["GetEnabledChangedSignal"]
       37 CALL                             R3 1 1
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 NAMECALL                         R3 R3 K6 ["Connect"]
       46 CALL                             R3 2 1
       47 SETTABLEKS                       R3 R0 K4 ["avatarAbilitiesEnabledChangedConn"]
       49 GETUPVAL                         R3 3
       50 JUMPIFNOT                        R3 ; [+18]
       51 GETUPVAL                         R3 4
       52 MOVE                             R4 R0
       53 CALL                             R3 1 0
       54 GETUPVAL                         R3 5
       55 GETTABLEKS                       R3 R3 K7 ["StateChanged"]
       57 GETTABLEKS                       R5 R0 K8 ["onStateChanged"]
       59 NAMECALL                         R3 R3 K6 ["Connect"]
       61 CALL                             R3 2 1
       62 SETTABLEKS                       R3 R0 K9 ["thumbstickStateChangedConn"]
       64 GETUPVAL                         R3 5
       65 LOADB                            R4 1
       66 SETTABLEKS                       R4 R3 K10 ["Enabled"]
       68 JUMP                             ; [+51]
       69 GETUPVAL                         R3 5
       70 GETTABLEKS                       R3 R3 K7 ["StateChanged"]
       72 GETTABLEKS                       R5 R0 K8 ["onStateChanged"]
       74 NAMECALL                         R3 R3 K6 ["Connect"]
       76 CALL                             R3 2 1
       77 SETTABLEKS                       R3 R0 K9 ["thumbstickStateChangedConn"]
       79 GETUPVAL                         R3 5
       80 LOADB                            R4 1
       81 SETTABLEKS                       R4 R3 K10 ["Enabled"]
       83 JUMP                             ; [+36]
       84 GETUPVAL                         R3 3
       85 JUMPIFNOT                        R3 ; [+16]
       86 GETUPVAL                         R3 5
       87 LOADB                            R4 0
       88 SETTABLEKS                       R4 R3 K10 ["Enabled"]
       90 GETTABLEKS                       R3 R0 K9 ["thumbstickStateChangedConn"]
       92 JUMPIFNOT                        R3 ; [+24]
       93 GETTABLEKS                       R3 R0 K9 ["thumbstickStateChangedConn"]
       95 NAMECALL                         R3 R3 K11 ["Disconnect"]
       97 CALL                             R3 1 0
       98 LOADNIL                          R3
       99 SETTABLEKS                       R3 R0 K9 ["thumbstickStateChangedConn"]
      101 JUMP                             ; [+15]
      102 GETUPVAL                         R3 5
      103 LOADB                            R4 0
      104 SETTABLEKS                       R4 R3 K10 ["Enabled"]
      106 GETTABLEKS                       R3 R0 K9 ["thumbstickStateChangedConn"]
      108 JUMPIFNOT                        R3 ; [+8]
      109 GETTABLEKS                       R3 R0 K9 ["thumbstickStateChangedConn"]
      111 NAMECALL                         R3 R3 K11 ["Disconnect"]
      113 CALL                             R3 1 0
      114 LOADNIL                          R3
      115 SETTABLEKS                       R3 R0 K9 ["thumbstickStateChangedConn"]
      117 NAMECALL                         R3 R0 K12 ["OnInputEnded"]
      119 CALL                             R3 1 0
      120 SETTABLEKS                       R1 R0 K0 ["enabled"]
      122 GETTABLEKS                       R3 R0 K2 ["thumbstickFrame"]
      124 SETTABLEKS                       R1 R3 K13 ["Visible"]
      126 LOADNIL                          R3
      127 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R2 K7 [Vector2.zero]
        8 NAMECALL                         R0 R0 K8 ["Fire"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isTouchActive"]
        3 GETUPVAL                         R1 0
        4 JUMPIFNOT                        R1 ; [+17]
        5 GETTABLEKS                       R1 R0 K1 ["playerData"]
        7 GETTABLEKS                       R1 R1 K2 ["actions"]
        9 GETTABLEKS                       R1 R1 K3 ["MoveAction"]
       11 LOADK                            R3 K4 ["DynamicThumbstickScriptableBinding"]
       12 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+60]
       16 GETIMPORT                        R4 K8 [Vector2.zero]
       18 NAMECALL                         R2 R1 K9 ["Fire"]
       20 CALL                             R2 2 0
       21 JUMP                             ; [+54]
       22 GETUPVAL                         R1 1
       23 JUMPIFNOT                        R1 ; [+41]
       24 GETTABLEKS                       R1 R0 K1 ["playerData"]
       26 GETTABLEKS                       R1 R1 K2 ["actions"]
       28 GETTABLEKS                       R1 R1 K3 ["MoveAction"]
       30 LOADK                            R3 K4 ["DynamicThumbstickScriptableBinding"]
       31 NAMECALL                         R1 R1 K5 ["FindFirstChild"]
       33 CALL                             R1 2 1
       34 JUMPIFNOT                        R1 ; [+18]
       35 GETIMPORT                        R2 K11 [pcall]
       37 NEWCLOSURE                       R3 P0
       38 CAPTURE                          VAL R1
       39 CALL                             R2 1 2
       40 JUMPIF                           R2 ; [+35]
       41 GETTABLEKS                       R4 R0 K1 ["playerData"]
       43 GETTABLEKS                       R4 R4 K2 ["actions"]
       45 GETTABLEKS                       R4 R4 K3 ["MoveAction"]
       47 GETIMPORT                        R6 K8 [Vector2.zero]
       49 NAMECALL                         R4 R4 K9 ["Fire"]
       51 CALL                             R4 2 0
       52 JUMP                             ; [+23]
       53 GETTABLEKS                       R2 R0 K1 ["playerData"]
       55 GETTABLEKS                       R2 R2 K2 ["actions"]
       57 GETTABLEKS                       R2 R2 K3 ["MoveAction"]
       59 GETIMPORT                        R4 K8 [Vector2.zero]
       61 NAMECALL                         R2 R2 K9 ["Fire"]
       63 CALL                             R2 2 0
       64 JUMP                             ; [+11]
       65 GETTABLEKS                       R1 R0 K1 ["playerData"]
       67 GETTABLEKS                       R1 R1 K2 ["actions"]
       69 GETTABLEKS                       R1 R1 K3 ["MoveAction"]
       71 GETIMPORT                        R3 K8 [Vector2.zero]
       73 NAMECALL                         R1 R1 K9 ["Fire"]
       75 CALL                             R1 2 0
       76 LOADB                            R3 0
       77 NAMECALL                         R1 R0 K12 ["FadeThumbstick"]
       79 CALL                             R1 2 0
       80 RETURN                           R0 0

PROTO_8:
        0 JUMPIF                           R1 ; [+4]
        1 GETTABLEKS                       R2 R0 K0 ["isTouchActive"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K1 ["isFirstTouch"]
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R2 R0 K2 ["startImageFadeTween"]
       11 JUMPIFNOT                        R2 ; [+5]
       12 GETTABLEKS                       R2 R0 K2 ["startImageFadeTween"]
       14 NAMECALL                         R2 R2 K3 ["Cancel"]
       16 CALL                             R2 1 0
       17 GETTABLEKS                       R2 R0 K4 ["endImageFadeTween"]
       19 JUMPIFNOT                        R2 ; [+5]
       20 GETTABLEKS                       R2 R0 K4 ["endImageFadeTween"]
       22 NAMECALL                         R2 R2 K3 ["Cancel"]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 0
       26 JUMPIFNOT                        R2 ; [+8]
       27 GETTABLEKS                       R2 R0 K5 ["endImageCenterFadeTween"]
       29 JUMPIFNOT                        R2 ; [+5]
       30 GETTABLEKS                       R2 R0 K5 ["endImageCenterFadeTween"]
       32 NAMECALL                         R2 R2 K3 ["Cancel"]
       34 CALL                             R2 1 0
       35 LOADN                            R4 1
       36 GETTABLEKS                       R5 R0 K6 ["middleImages"]
       38 LENGTH                           R2 R5
       39 LOADN                            R3 1
       40 FORNPREP                         R2
       41 GETTABLEKS                       R6 R0 K7 ["middleImageFadeTweens"]
       43 GETTABLE                         R5 R6 R4
       44 JUMPIFNOT                        R5 ; [+6]
       45 GETTABLEKS                       R6 R0 K7 ["middleImageFadeTweens"]
       47 GETTABLE                         R5 R6 R4
       48 NAMECALL                         R5 R5 K3 ["Cancel"]
       50 CALL                             R5 1 0
       51 FORNLOOP                         R2
       52 JUMPIFNOT                        R1 ; [+133]
       53 GETUPVAL                         R2 0
       54 JUMPIFNOT                        R2 ; [+49]
       55 GETTABLEKS                       R2 R0 K8 ["newStyle"]
       57 JUMPIFNOT                        R2 ; [+46]
       58 GETUPVAL                         R2 1
       59 GETTABLEKS                       R4 R0 K9 ["startImage"]
       61 GETUPVAL                         R5 2
       62 DUPTABLE                         R6 K12 [{["BackgroundTransparency"] = 0.4}]
       63 NAMECALL                         R2 R2 K13 ["Create"]
       65 CALL                             R2 4 1
       66 SETTABLEKS                       R2 R0 K2 ["startImageFadeTween"]
       68 GETTABLEKS                       R2 R0 K2 ["startImageFadeTween"]
       70 NAMECALL                         R2 R2 K14 ["Play"]
       72 CALL                             R2 1 0
       73 GETUPVAL                         R2 1
       74 GETTABLEKS                       R4 R0 K15 ["endImageStroke"]
       76 GETUPVAL                         R5 2
       77 DUPTABLE                         R6 K18 [{["Transparency"] = 0}]
       78 NAMECALL                         R2 R2 K13 ["Create"]
       80 CALL                             R2 4 1
       81 SETTABLEKS                       R2 R0 K4 ["endImageFadeTween"]
       83 GETTABLEKS                       R2 R0 K4 ["endImageFadeTween"]
       85 NAMECALL                         R2 R2 K14 ["Play"]
       87 CALL                             R2 1 0
       88 GETUPVAL                         R2 1
       89 GETTABLEKS                       R4 R0 K19 ["endImageCenter"]
       91 GETUPVAL                         R5 2
       92 DUPTABLE                         R6 K20 [{["BackgroundTransparency"] = 0}]
       93 NAMECALL                         R2 R2 K13 ["Create"]
       95 CALL                             R2 4 1
       96 SETTABLEKS                       R2 R0 K5 ["endImageCenterFadeTween"]
       98 GETTABLEKS                       R2 R0 K5 ["endImageCenterFadeTween"]
      100 NAMECALL                         R2 R2 K14 ["Play"]
      102 CALL                             R2 1 0
      103 JUMP                             ; [+30]
      104 GETUPVAL                         R2 1
      105 GETTABLEKS                       R4 R0 K9 ["startImage"]
      107 GETUPVAL                         R5 2
      108 DUPTABLE                         R6 K22 [{["ImageTransparency"] = 0}]
      109 NAMECALL                         R2 R2 K13 ["Create"]
      111 CALL                             R2 4 1
      112 SETTABLEKS                       R2 R0 K2 ["startImageFadeTween"]
      114 GETTABLEKS                       R2 R0 K2 ["startImageFadeTween"]
      116 NAMECALL                         R2 R2 K14 ["Play"]
      118 CALL                             R2 1 0
      119 GETUPVAL                         R2 1
      120 GETTABLEKS                       R4 R0 K23 ["endImage"]
      122 GETUPVAL                         R5 2
      123 DUPTABLE                         R6 K25 [{["ImageTransparency"] = 0.2}]
      124 NAMECALL                         R2 R2 K13 ["Create"]
      126 CALL                             R2 4 1
      127 SETTABLEKS                       R2 R0 K4 ["endImageFadeTween"]
      129 GETTABLEKS                       R2 R0 K4 ["endImageFadeTween"]
      131 NAMECALL                         R2 R2 K14 ["Play"]
      133 CALL                             R2 1 0
      134 LOADN                            R4 1
      135 GETTABLEKS                       R5 R0 K6 ["middleImages"]
      137 LENGTH                           R2 R5
      138 LOADN                            R3 1
      139 FORNPREP                         R2
      140 GETUPVAL                         R5 0
      141 JUMPIFNOT                        R5 ; [+20]
      142 GETTABLEKS                       R5 R0 K8 ["newStyle"]
      144 JUMPIFNOT                        R5 ; [+17]
      145 GETTABLEKS                       R5 R0 K7 ["middleImageFadeTweens"]
      147 GETUPVAL                         R6 1
      148 GETTABLEKS                       R9 R0 K6 ["middleImages"]
      150 GETTABLE                         R8 R9 R4
      151 GETUPVAL                         R9 2
      152 DUPTABLE                         R10 K26 [{"BackgroundTransparency"}]
      153 GETUPVAL                         R12 3
      154 GETTABLE                         R11 R12 R4
      155 SETTABLEKS                       R11 R10 K10 ["BackgroundTransparency"]
      157 NAMECALL                         R6 R6 K13 ["Create"]
      159 CALL                             R6 4 1
      160 SETTABLE                         R6 R5 R4
      161 JUMP                             ; [+16]
      162 GETTABLEKS                       R5 R0 K7 ["middleImageFadeTweens"]
      164 GETUPVAL                         R6 1
      165 GETTABLEKS                       R9 R0 K6 ["middleImages"]
      167 GETTABLE                         R8 R9 R4
      168 GETUPVAL                         R9 2
      169 DUPTABLE                         R10 K27 [{"ImageTransparency"}]
      170 GETUPVAL                         R12 4
      171 GETTABLE                         R11 R12 R4
      172 SETTABLEKS                       R11 R10 K21 ["ImageTransparency"]
      174 NAMECALL                         R6 R6 K13 ["Create"]
      176 CALL                             R6 4 1
      177 SETTABLE                         R6 R5 R4
      178 GETTABLEKS                       R6 R0 K7 ["middleImageFadeTweens"]
      180 GETTABLE                         R5 R6 R4
      181 NAMECALL                         R5 R5 K14 ["Play"]
      183 CALL                             R5 1 0
      184 FORNLOOP                         R2
      185 RETURN                           R0 0
      186 GETUPVAL                         R2 0
      187 JUMPIFNOT                        R2 ; [+49]
      188 GETTABLEKS                       R2 R0 K8 ["newStyle"]
      190 JUMPIFNOT                        R2 ; [+46]
      191 GETUPVAL                         R2 1
      192 GETTABLEKS                       R4 R0 K9 ["startImage"]
      194 GETUPVAL                         R5 2
      195 DUPTABLE                         R6 K29 [{["BackgroundTransparency"] = 1}]
      196 NAMECALL                         R2 R2 K13 ["Create"]
      198 CALL                             R2 4 1
      199 SETTABLEKS                       R2 R0 K2 ["startImageFadeTween"]
      201 GETTABLEKS                       R2 R0 K2 ["startImageFadeTween"]
      203 NAMECALL                         R2 R2 K14 ["Play"]
      205 CALL                             R2 1 0
      206 GETUPVAL                         R2 1
      207 GETTABLEKS                       R4 R0 K15 ["endImageStroke"]
      209 GETUPVAL                         R5 2
      210 DUPTABLE                         R6 K30 [{["Transparency"] = 1}]
      211 NAMECALL                         R2 R2 K13 ["Create"]
      213 CALL                             R2 4 1
      214 SETTABLEKS                       R2 R0 K4 ["endImageFadeTween"]
      216 GETTABLEKS                       R2 R0 K4 ["endImageFadeTween"]
      218 NAMECALL                         R2 R2 K14 ["Play"]
      220 CALL                             R2 1 0
      221 GETUPVAL                         R2 1
      222 GETTABLEKS                       R4 R0 K19 ["endImageCenter"]
      224 GETUPVAL                         R5 2
      225 DUPTABLE                         R6 K29 [{["BackgroundTransparency"] = 1}]
      226 NAMECALL                         R2 R2 K13 ["Create"]
      228 CALL                             R2 4 1
      229 SETTABLEKS                       R2 R0 K5 ["endImageCenterFadeTween"]
      231 GETTABLEKS                       R2 R0 K5 ["endImageCenterFadeTween"]
      233 NAMECALL                         R2 R2 K14 ["Play"]
      235 CALL                             R2 1 0
      236 JUMP                             ; [+30]
      237 GETUPVAL                         R2 1
      238 GETTABLEKS                       R4 R0 K9 ["startImage"]
      240 GETUPVAL                         R5 2
      241 DUPTABLE                         R6 K31 [{["ImageTransparency"] = 1}]
      242 NAMECALL                         R2 R2 K13 ["Create"]
      244 CALL                             R2 4 1
      245 SETTABLEKS                       R2 R0 K2 ["startImageFadeTween"]
      247 GETTABLEKS                       R2 R0 K2 ["startImageFadeTween"]
      249 NAMECALL                         R2 R2 K14 ["Play"]
      251 CALL                             R2 1 0
      252 GETUPVAL                         R2 1
      253 GETTABLEKS                       R4 R0 K23 ["endImage"]
      255 GETUPVAL                         R5 2
      256 DUPTABLE                         R6 K31 [{["ImageTransparency"] = 1}]
      257 NAMECALL                         R2 R2 K13 ["Create"]
      259 CALL                             R2 4 1
      260 SETTABLEKS                       R2 R0 K4 ["endImageFadeTween"]
      262 GETTABLEKS                       R2 R0 K4 ["endImageFadeTween"]
      264 NAMECALL                         R2 R2 K14 ["Play"]
      266 CALL                             R2 1 0
      267 LOADN                            R4 1
      268 GETTABLEKS                       R5 R0 K6 ["middleImages"]
      270 LENGTH                           R2 R5
      271 LOADN                            R3 1
      272 FORNPREP                         R2
      273 GETUPVAL                         R5 0
      274 JUMPIFNOT                        R5 ; [+16]
      275 GETTABLEKS                       R5 R0 K8 ["newStyle"]
      277 JUMPIFNOT                        R5 ; [+13]
      278 GETTABLEKS                       R5 R0 K7 ["middleImageFadeTweens"]
      280 GETUPVAL                         R6 1
      281 GETTABLEKS                       R9 R0 K6 ["middleImages"]
      283 GETTABLE                         R8 R9 R4
      284 GETUPVAL                         R9 2
      285 DUPTABLE                         R10 K29 [{["BackgroundTransparency"] = 1}]
      286 NAMECALL                         R6 R6 K13 ["Create"]
      288 CALL                             R6 4 1
      289 SETTABLE                         R6 R5 R4
      290 JUMP                             ; [+12]
      291 GETTABLEKS                       R5 R0 K7 ["middleImageFadeTweens"]
      293 GETUPVAL                         R6 1
      294 GETTABLEKS                       R9 R0 K6 ["middleImages"]
      296 GETTABLE                         R8 R9 R4
      297 GETUPVAL                         R9 2
      298 DUPTABLE                         R10 K31 [{["ImageTransparency"] = 1}]
      299 NAMECALL                         R6 R6 K13 ["Create"]
      301 CALL                             R6 4 1
      302 SETTABLE                         R6 R5 R4
      303 GETTABLEKS                       R6 R0 K7 ["middleImageFadeTweens"]
      305 GETTABLE                         R5 R6 R4
      306 NAMECALL                         R5 R5 K14 ["Play"]
      308 CALL                             R5 1 0
      309 FORNLOOP                         R2
      310 RETURN                           R0 0

PROTO_9:
        0 MULK                             R3 R1 K0 [0.5]
        1 SETTABLEKS                       R3 R0 K1 ["fadeInAndOutHalfDuration"]
        3 SETTABLEKS                       R2 R0 K2 ["fadeInAndOutBalance"]
        5 GETIMPORT                        R3 K4 [tick]
        7 CALL                             R3 0 1
        8 SETTABLEKS                       R3 R0 K5 ["tweenInAlphaStart"]
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["PlayerGui"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChildOfClass"]
        4 CALL                             R1 2 1
        5 LOADB                            R2 0
        6 JUMPIFNOT                        R1 ; [+29]
        7 GETTABLEKS                       R3 R1 K2 ["CurrentScreenOrientation"]
        9 GETIMPORT                        R4 K6 [Enum.ScreenOrientation.LandscapeLeft]
       11 JUMPIFEQ                         R3 R4 ; [+7]
       13 GETTABLEKS                       R3 R1 K2 ["CurrentScreenOrientation"]
       15 GETIMPORT                        R4 K8 [Enum.ScreenOrientation.LandscapeRight]
       17 JUMPIFNOTEQ                      R3 R4 ; [+7]
       19 GETTABLEKS                       R2 R0 K9 ["hasFadedBackgroundInLandscape"]
       21 LOADB                            R3 1
       22 SETTABLEKS                       R3 R0 K9 ["hasFadedBackgroundInLandscape"]
       24 JUMP                             ; [+11]
       25 GETTABLEKS                       R3 R1 K2 ["CurrentScreenOrientation"]
       27 GETIMPORT                        R4 K11 [Enum.ScreenOrientation.Portrait]
       29 JUMPIFNOTEQ                      R3 R4 ; [+6]
       31 GETTABLEKS                       R2 R0 K12 ["hasFadedBackgroundInPortrait"]
       33 LOADB                            R3 1
       34 SETTABLEKS                       R3 R0 K12 ["hasFadedBackgroundInPortrait"]
       36 JUMPIF                           R2 ; [+11]
       37 LOADK                            R3 K13 [0.3]
       38 SETTABLEKS                       R3 R0 K14 ["fadeInAndOutHalfDuration"]
       40 LOADK                            R3 K15 [0.5]
       41 SETTABLEKS                       R3 R0 K16 ["fadeInAndOutBalance"]
       43 GETIMPORT                        R3 K18 [tick]
       45 CALL                             R3 0 1
       46 SETTABLEKS                       R3 R0 K19 ["tweenInAlphaStart"]
       48 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R0 R0 K5 ["Fire"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_12:
        0 MOVE                             R2 R1
        1 GETTABLEKS                       R3 R2 K0 ["Magnitude"]
        3 GETTABLEKS                       R4 R0 K1 ["radiusOfDeadZone"]
        5 JUMPIFNOTLT                      R3 R4 ; [+6]
        7 GETIMPORT                        R4 K4 [Vector2.new]
        9 CALL                             R4 0 1
       10 MOVE                             R2 R4
       11 JUMP                             ; [+18]
       12 GETTABLEKS                       R4 R2 K5 ["Unit"]
       14 LOADN                            R7 0
       15 GETTABLEKS                       R10 R0 K7 ["radiusOfMaxSpeed"]
       17 GETTABLEKS                       R11 R2 K0 ["Magnitude"]
       19 SUB                              R9 R10 R11
       20 GETTABLEKS                       R10 R0 K7 ["radiusOfMaxSpeed"]
       22 DIV                              R8 R9 R10
       23 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       25 GETIMPORT                        R6 K10 [math.max]
       27 CALL                             R6 2 1
       28 SUBRK                            R5 K6 [1] R6
       29 MUL                              R2 R4 R5
       30 GETIMPORT                        R4 K4 [Vector2.new]
       32 GETTABLEKS                       R5 R2 K11 ["X"]
       34 GETTABLEKS                       R7 R2 K12 ["Y"]
       36 MINUS                            R6 R7
       37 CALL                             R4 2 1
       38 MOVE                             R2 R4
       39 GETUPVAL                         R4 0
       40 JUMPIFNOT                        R4 ; [+16]
       41 GETTABLEKS                       R4 R0 K13 ["playerData"]
       43 GETTABLEKS                       R4 R4 K14 ["actions"]
       45 GETTABLEKS                       R4 R4 K15 ["MoveAction"]
       47 LOADK                            R6 K16 ["DynamicThumbstickScriptableBinding"]
       48 NAMECALL                         R4 R4 K17 ["FindFirstChild"]
       50 CALL                             R4 2 1
       51 JUMPIFNOT                        R4 ; [+57]
       52 MOVE                             R7 R2
       53 NAMECALL                         R5 R4 K18 ["Fire"]
       55 CALL                             R5 2 0
       56 JUMP                             ; [+52]
       57 GETUPVAL                         R4 1
       58 JUMPIFNOT                        R4 ; [+40]
       59 GETTABLEKS                       R4 R0 K13 ["playerData"]
       61 GETTABLEKS                       R4 R4 K14 ["actions"]
       63 GETTABLEKS                       R4 R4 K15 ["MoveAction"]
       65 LOADK                            R6 K16 ["DynamicThumbstickScriptableBinding"]
       66 NAMECALL                         R4 R4 K17 ["FindFirstChild"]
       68 CALL                             R4 2 1
       69 JUMPIFNOT                        R4 ; [+18]
       70 GETIMPORT                        R5 K20 [pcall]
       72 NEWCLOSURE                       R6 P0
       73 CAPTURE                          VAL R4
       74 CAPTURE                          REF R2
       75 CALL                             R5 1 2
       76 JUMPIF                           R5 ; [+32]
       77 GETTABLEKS                       R7 R0 K13 ["playerData"]
       79 GETTABLEKS                       R7 R7 K14 ["actions"]
       81 GETTABLEKS                       R7 R7 K15 ["MoveAction"]
       83 MOVE                             R9 R2
       84 NAMECALL                         R7 R7 K18 ["Fire"]
       86 CALL                             R7 2 0
       87 JUMP                             ; [+21]
       88 GETTABLEKS                       R5 R0 K13 ["playerData"]
       90 GETTABLEKS                       R5 R5 K14 ["actions"]
       92 GETTABLEKS                       R5 R5 K15 ["MoveAction"]
       94 MOVE                             R7 R2
       95 NAMECALL                         R5 R5 K18 ["Fire"]
       97 CALL                             R5 2 0
       98 JUMP                             ; [+10]
       99 GETTABLEKS                       R4 R0 K13 ["playerData"]
      101 GETTABLEKS                       R4 R4 K14 ["actions"]
      103 GETTABLEKS                       R4 R4 K15 ["MoveAction"]
      105 MOVE                             R6 R2
      106 NAMECALL                         R4 R4 K18 ["Fire"]
      108 CALL                             R4 2 0
      109 CLOSEUPVALS                      R2
      110 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R5 R0 K1 ["thumbstickSize"]
        2 DIVK                             R4 R5 K0 [2]
        3 GETTABLEKS                       R5 R0 K2 ["middleSize"]
        5 ADD                              R3 R4 R5
        6 SUB                              R4 R2 R1
        7 GETTABLEKS                       R7 R4 K3 ["Magnitude"]
        9 GETTABLEKS                       R9 R0 K4 ["thumbstickRingSize"]
       11 DIVK                             R8 R9 K0 [2]
       12 SUB                              R6 R7 R8
       13 GETTABLEKS                       R7 R0 K2 ["middleSize"]
       15 SUB                              R5 R6 R7
       16 GETTABLEKS                       R6 R4 K5 ["Unit"]
       18 GETTABLEKS                       R8 R0 K6 ["middleSpacing"]
       20 GETUPVAL                         R9 0
       21 MUL                              R7 R8 R9
       22 GETTABLEKS                       R8 R0 K6 ["middleSpacing"]
       24 JUMPIFNOTLT                      R7 R5 ; [+3]
       26 GETUPVAL                         R9 0
       27 DIV                              R8 R5 R9
       28 LOADN                            R11 1
       29 GETUPVAL                         R9 0
       30 LOADN                            R10 1
       31 FORNPREP                         R9
       32 GETTABLEKS                       R13 R0 K7 ["middleImages"]
       34 GETTABLE                         R12 R13 R11
       35 SUBK                             R15 R11 K0 [2]
       36 MUL                              R14 R8 R15
       37 ADD                              R13 R3 R14
       38 SUBK                             R16 R11 K8 [1]
       39 MUL                              R15 R8 R16
       40 ADD                              R14 R3 R15
       41 JUMPIFNOTLT                      R13 R5 ; [+40]
       43 MUL                              R16 R6 R14
       44 SUB                              R15 R2 R16
       45 SUB                              R19 R14 R5
       46 DIV                              R18 R19 R8
       47 SUBRK                            R17 K8 [1] R18
       48 LOADN                            R18 0
       49 LOADN                            R19 1
       50 FASTCALL                         MATH_CLAMP ; [+2]
       51 GETIMPORT                        R16 K11 [math.clamp]
       53 CALL                             R16 3 1
       54 LOADB                            R17 1
       55 SETTABLEKS                       R17 R12 K12 ["Visible"]
       57 GETIMPORT                        R17 K15 [UDim2.new]
       59 LOADN                            R18 0
       60 GETTABLEKS                       R19 R15 K16 ["X"]
       62 LOADN                            R20 0
       63 GETTABLEKS                       R21 R15 K17 ["Y"]
       65 CALL                             R17 4 1
       66 SETTABLEKS                       R17 R12 K18 ["Position"]
       68 GETIMPORT                        R17 K15 [UDim2.new]
       70 LOADN                            R18 0
       71 GETTABLEKS                       R20 R0 K2 ["middleSize"]
       73 MUL                              R19 R20 R16
       74 LOADN                            R20 0
       75 GETTABLEKS                       R22 R0 K2 ["middleSize"]
       77 MUL                              R21 R22 R16
       78 CALL                             R17 4 1
       79 SETTABLEKS                       R17 R12 K19 ["Size"]
       81 JUMP                             ; [+3]
       82 LOADB                            R15 0
       83 SETTABLEKS                       R15 R12 K12 ["Visible"]
       85 FORNLOOP                         R9
       86 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["moveTouchStartPosition"]
        4 GETTABLEKS                       R3 R3 K4 ["X"]
        6 GETTABLEKS                       R4 R0 K3 ["moveTouchStartPosition"]
        8 GETTABLEKS                       R4 R4 K5 ["Y"]
       10 CALL                             R2 2 1
       11 GETTABLEKS                       R4 R0 K6 ["thumbstickFrame"]
       13 GETTABLEKS                       R4 R4 K7 ["AbsolutePosition"]
       15 SUB                              R3 R2 R4
       16 GETIMPORT                        R5 K2 [Vector2.new]
       18 GETTABLEKS                       R6 R1 K4 ["X"]
       20 GETTABLEKS                       R7 R1 K5 ["Y"]
       22 CALL                             R5 2 1
       23 GETTABLEKS                       R6 R0 K6 ["thumbstickFrame"]
       25 GETTABLEKS                       R6 R6 K7 ["AbsolutePosition"]
       27 SUB                              R4 R5 R6
       28 GETTABLEKS                       R5 R0 K8 ["endImage"]
       30 GETIMPORT                        R6 K10 [UDim2.new]
       32 LOADN                            R7 0
       33 GETTABLEKS                       R8 R4 K4 ["X"]
       35 LOADN                            R9 0
       36 GETTABLEKS                       R10 R4 K5 ["Y"]
       38 CALL                             R6 4 1
       39 SETTABLEKS                       R6 R5 K11 ["Position"]
       41 MOVE                             R7 R3
       42 MOVE                             R8 R4
       43 NAMECALL                         R5 R0 K12 ["LayoutMiddleImages"]
       45 CALL                             R5 3 0
       46 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOT                        R0 ; [+25]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["thumbstickFrame"]
        4 GETIMPORT                        R2 K3 [UDim2.new]
        6 LOADN                            R3 1
        7 LOADN                            R4 100
        8 LOADK                            R5 K4 [0.4]
        9 LOADN                            R6 100
       10 CALL                             R2 4 1
       11 SETTABLEKS                       R2 R1 K5 ["Size"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["thumbstickFrame"]
       16 GETIMPORT                        R2 K3 [UDim2.new]
       18 LOADN                            R3 0
       19 LOADN                            R4 -100
       20 LOADK                            R5 K6 [0.6]
       21 LOADN                            R6 0
       22 CALL                             R2 4 1
       23 SETTABLEKS                       R2 R1 K7 ["Position"]
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K0 ["thumbstickFrame"]
       29 GETIMPORT                        R2 K3 [UDim2.new]
       31 LOADK                            R3 K4 [0.4]
       32 LOADN                            R4 100
       33 LOADK                            R5 K8 [0.666666666666667]
       34 LOADN                            R6 100
       35 CALL                             R2 4 1
       36 SETTABLEKS                       R2 R1 K5 ["Size"]
       38 GETUPVAL                         R1 0
       39 GETTABLEKS                       R1 R1 K0 ["thumbstickFrame"]
       41 GETIMPORT                        R2 K3 [UDim2.new]
       43 LOADN                            R3 0
       44 LOADN                            R4 -100
       45 LOADK                            R5 K9 [0.333333333333333]
       46 LOADN                            R6 0
       47 CALL                             R2 4 1
       48 SETTABLEKS                       R2 R1 K7 ["Position"]
       50 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R3 R0 K1 ["X"]
        5 GETTABLEKS                       R4 R0 K2 ["Y"]
        7 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
        9 GETIMPORT                        R2 K5 [math.min]
       11 CALL                             R2 2 1
       12 LOADN                            R3 500
       13 JUMPIFLT                         R3 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 JUMPIFNOT                        R1 ; [+2]
       18 LOADN                            R2 2
       19 JUMP                             ; [+1]
       20 LOADN                            R2 1
       21 GETUPVAL                         R4 1
       22 JUMPIFNOT                        R4 ; [+4]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K6 ["newStyle"]
       26 JUMP                             ; [+4]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K7 ["isEnabled"]
       30 CALL                             R3 0 1
       31 GETUPVAL                         R4 4
       32 JUMPIFNOT                        R4 ; [+3]
       33 JUMPIFNOT                        R3 ; [+2]
       34 JUMPIFNOT                        R1 ; [+1]
       35 LOADK                            R2 K8 [1.62162162162162]
       36 GETUPVAL                         R4 2
       37 LOADN                            R6 45
       38 MUL                              R5 R6 R2
       39 SETTABLEKS                       R5 R4 K9 ["thumbstickSize"]
       41 GETUPVAL                         R4 2
       42 LOADN                            R6 20
       43 MUL                              R5 R6 R2
       44 SETTABLEKS                       R5 R4 K10 ["thumbstickRingSize"]
       46 GETUPVAL                         R4 2
       47 LOADN                            R6 10
       48 MUL                              R5 R6 R2
       49 SETTABLEKS                       R5 R4 K11 ["middleSize"]
       51 GETUPVAL                         R4 2
       52 LOADN                            R6 14
       53 MUL                              R5 R6 R2
       54 SETTABLEKS                       R5 R4 K12 ["middleSpacing"]
       56 GETUPVAL                         R4 2
       57 LOADN                            R6 2
       58 MUL                              R5 R6 R2
       59 SETTABLEKS                       R5 R4 K13 ["radiusOfDeadZone"]
       61 GETUPVAL                         R4 2
       62 LOADN                            R6 20
       63 MUL                              R5 R6 R2
       64 SETTABLEKS                       R5 R4 K14 ["radiusOfMaxSpeed"]
       66 LOADN                            R5 74
       67 MUL                              R4 R5 R2
       68 GETUPVAL                         R5 1
       69 JUMPIFNOT                        R5 ; [+4]
       70 GETUPVAL                         R5 2
       71 GETTABLEKS                       R5 R5 K15 ["isFirstTouch"]
       73 JUMPIFNOT                        R5 ; [+72]
       74 JUMPIFNOT                        R3 ; [+38]
       75 JUMPIFNOT                        R1 ; [+2]
       76 LOADN                            R5 100
       77 JUMP                             ; [+1]
       78 LOADN                            R5 64
       79 JUMPIFNOT                        R1 ; [+2]
       80 LOADN                            R6 112
       81 JUMP                             ; [+1]
       82 LOADN                            R6 64
       83 GETUPVAL                         R7 2
       84 GETTABLEKS                       R7 R7 K16 ["startImage"]
       86 GETIMPORT                        R8 K19 [UDim2.new]
       88 LOADN                            R9 0
       89 MULK                             R12 R4 K21 [0.5]
       90 ADDK                             R11 R12 K20 [100]
       91 ADD                              R10 R11 R5
       92 LOADN                            R11 1
       93 MINUS                            R15 R4
       94 MULK                             R14 R15 K21 [0.5]
       95 SUBK                             R13 R14 K20 [100]
       96 SUB                              R12 R13 R6
       97 CALL                             R8 4 1
       98 SETTABLEKS                       R8 R7 K22 ["Position"]
      100 GETUPVAL                         R7 2
      101 GETTABLEKS                       R7 R7 K16 ["startImage"]
      103 GETIMPORT                        R8 K19 [UDim2.new]
      105 LOADN                            R9 0
      106 MOVE                             R10 R4
      107 LOADN                            R11 0
      108 MOVE                             R12 R4
      109 CALL                             R8 4 1
      110 SETTABLEKS                       R8 R7 K23 ["Size"]
      112 JUMP                             ; [+33]
      113 GETUPVAL                         R5 2
      114 GETTABLEKS                       R5 R5 K16 ["startImage"]
      116 GETIMPORT                        R6 K19 [UDim2.new]
      118 LOADN                            R7 0
      119 GETUPVAL                         R10 2
      120 GETTABLEKS                       R10 R10 K10 ["thumbstickRingSize"]
      122 MULK                             R9 R10 K24 [3.3]
      123 ADDK                             R8 R9 K20 [100]
      124 LOADN                            R9 1
      125 GETUPVAL                         R13 2
      126 GETTABLEKS                       R13 R13 K10 ["thumbstickRingSize"]
      128 MINUS                            R12 R13
      129 MULK                             R11 R12 K25 [2.8]
      130 SUBK                             R10 R11 K20 [100]
      131 CALL                             R6 4 1
      132 SETTABLEKS                       R6 R5 K22 ["Position"]
      134 GETUPVAL                         R5 2
      135 GETTABLEKS                       R5 R5 K16 ["startImage"]
      137 GETIMPORT                        R6 K19 [UDim2.new]
      139 LOADN                            R7 0
      140 MOVE                             R8 R4
      141 LOADN                            R9 0
      142 MOVE                             R10 R4
      143 CALL                             R6 4 1
      144 SETTABLEKS                       R6 R5 K23 ["Size"]
      146 GETUPVAL                         R5 2
      147 GETTABLEKS                       R5 R5 K26 ["endImage"]
      149 GETUPVAL                         R6 2
      150 GETTABLEKS                       R6 R6 K16 ["startImage"]
      152 GETTABLEKS                       R6 R6 K22 ["Position"]
      154 SETTABLEKS                       R6 R5 K22 ["Position"]
      156 GETUPVAL                         R5 1
      157 JUMPIFNOT                        R5 ; [+23]
      158 GETUPVAL                         R5 2
      159 GETTABLEKS                       R5 R5 K6 ["newStyle"]
      161 JUMPIFNOT                        R5 ; [+19]
      162 GETUPVAL                         R5 2
      163 GETTABLEKS                       R5 R5 K26 ["endImage"]
      165 GETIMPORT                        R6 K19 [UDim2.new]
      167 LOADN                            R7 0
      168 GETUPVAL                         R9 2
      169 GETTABLEKS                       R9 R9 K9 ["thumbstickSize"]
      171 MULK                             R8 R9 K27 [0.6]
      172 LOADN                            R9 0
      173 GETUPVAL                         R11 2
      174 GETTABLEKS                       R11 R11 K9 ["thumbstickSize"]
      176 MULK                             R10 R11 K27 [0.6]
      177 CALL                             R6 4 1
      178 SETTABLEKS                       R6 R5 K23 ["Size"]
      180 RETURN                           R0 0
      181 GETUPVAL                         R5 2
      182 GETTABLEKS                       R5 R5 K26 ["endImage"]
      184 GETIMPORT                        R6 K19 [UDim2.new]
      186 LOADN                            R7 0
      187 GETUPVAL                         R9 2
      188 GETTABLEKS                       R9 R9 K9 ["thumbstickSize"]
      190 MULK                             R8 R9 K28 [0.8]
      191 LOADN                            R9 0
      192 GETUPVAL                         R11 2
      193 GETTABLEKS                       R11 R11 K9 ["thumbstickSize"]
      195 MULK                             R10 R11 K28 [0.8]
      196 CALL                             R6 4 1
      197 SETTABLEKS                       R6 R5 K23 ["Size"]
      199 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ViewportSize"]
        3 GETTABLEKS                       R2 R0 K1 ["X"]
        5 GETTABLEKS                       R3 R0 K2 ["Y"]
        7 JUMPIFLT                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cameraChangedConn"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["cameraChangedConn"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["cameraChangedConn"]
       14 GETIMPORT                        R0 K3 [workspace]
       16 GETTABLEKS                       R0 R0 K4 ["CurrentCamera"]
       18 JUMPIFNOT                        R0 ; [+27]
       19 NEWCLOSURE                       R1 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 GETUPVAL                         R2 0
       23 LOADK                            R5 K5 ["ViewportSize"]
       24 NAMECALL                         R3 R0 K6 ["GetPropertyChangedSignal"]
       26 CALL                             R3 2 1
       27 MOVE                             R5 R1
       28 NAMECALL                         R3 R3 K7 ["Connect"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R2 K0 ["cameraChangedConn"]
       33 GETTABLEKS                       R2 R0 K5 ["ViewportSize"]
       35 GETTABLEKS                       R4 R2 K8 ["X"]
       37 GETTABLEKS                       R5 R2 K9 ["Y"]
       39 JUMPIFLT                         R4 R5 ; [+2]
       41 LOADB                            R3 0 +1
       42 LOADB                            R3 1
       43 GETUPVAL                         R4 1
       44 MOVE                             R5 R3
       45 CALL                             R4 1 0
       46 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tweenInAlphaStart"]
        3 JUMPIFEQKNIL                     R0 ; [+43]
        5 GETIMPORT                        R1 K2 [tick]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["tweenInAlphaStart"]
       11 SUB                              R0 R1 R2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K4 ["fadeInAndOutHalfDuration"]
       15 MULK                             R2 R3 K3 [2]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K5 ["fadeInAndOutBalance"]
       19 MUL                              R1 R2 R3
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K6 ["thumbstickFrame"]
       23 DIV                              R6 R0 R1
       24 FASTCALL2K                       MATH_MIN R6 K7 ; [+4]
       26 LOADK                            R7 K7 [1]
       27 GETIMPORT                        R5 K11 [math.min]
       29 CALL                             R5 2 1
       30 MULK                             R4 R5 K8 [0.35]
       31 SUBRK                            R3 K7 [1] R4
       32 SETTABLEKS                       R3 R2 K12 ["BackgroundTransparency"]
       34 JUMPIFNOTLT                      R1 R0 ; [+57]
       36 GETUPVAL                         R2 0
       37 GETIMPORT                        R3 K2 [tick]
       39 CALL                             R3 0 1
       40 SETTABLEKS                       R3 R2 K13 ["tweenOutAlphaStart"]
       42 GETUPVAL                         R2 0
       43 LOADNIL                          R3
       44 SETTABLEKS                       R3 R2 K0 ["tweenInAlphaStart"]
       46 RETURN                           R0 0
       47 GETUPVAL                         R0 0
       48 GETTABLEKS                       R0 R0 K13 ["tweenOutAlphaStart"]
       50 JUMPIFEQKNIL                     R0 ; [+41]
       52 GETIMPORT                        R1 K2 [tick]
       54 CALL                             R1 0 1
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K13 ["tweenOutAlphaStart"]
       58 SUB                              R0 R1 R2
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R3 R3 K4 ["fadeInAndOutHalfDuration"]
       62 MULK                             R2 R3 K3 [2]
       63 GETUPVAL                         R5 0
       64 GETTABLEKS                       R5 R5 K4 ["fadeInAndOutHalfDuration"]
       66 MULK                             R4 R5 K3 [2]
       67 GETUPVAL                         R5 0
       68 GETTABLEKS                       R5 R5 K5 ["fadeInAndOutBalance"]
       70 MUL                              R3 R4 R5
       71 SUB                              R1 R2 R3
       72 GETUPVAL                         R2 0
       73 GETTABLEKS                       R2 R2 K6 ["thumbstickFrame"]
       75 DIV                              R6 R0 R1
       76 FASTCALL2K                       MATH_MIN R6 K7 ; [+4]
       78 LOADK                            R7 K7 [1]
       79 GETIMPORT                        R5 K11 [math.min]
       81 CALL                             R5 2 1
       82 MULK                             R4 R5 K8 [0.35]
       83 ADDK                             R3 R4 K14 [0.65]
       84 SETTABLEKS                       R3 R2 K12 ["BackgroundTransparency"]
       86 JUMPIFNOTLT                      R1 R0 ; [+5]
       88 GETUPVAL                         R2 0
       89 LOADNIL                          R3
       90 SETTABLEKS                       R3 R2 K13 ["tweenOutAlphaStart"]
       92 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+243]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R3 K3 [Enum.ScreenInsets.None]
        6 NAMECALL                         R1 R1 K4 ["GetInsetArea"]
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R1 R1 K5 ["Min"]
       11 GETTABLEKS                       R4 R0 K6 ["X"]
       13 GETTABLEKS                       R5 R1 K6 ["X"]
       15 ADD                              R3 R4 R5
       16 GETTABLEKS                       R5 R0 K7 ["Y"]
       18 GETTABLEKS                       R6 R1 K7 ["Y"]
       20 ADD                              R4 R5 R6
       21 LOADN                            R5 0
       22 FASTCALL                         VECTOR ; [+2]
       23 GETIMPORT                        R2 K10 [Vector3.new]
       25 CALL                             R2 3 1
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K11 ["isTouchActive"]
       29 JUMPIF                           R3 ; [+95]
       30 GETUPVAL                         R3 2
       31 LOADB                            R4 1
       32 SETTABLEKS                       R4 R3 K11 ["isTouchActive"]
       34 GETUPVAL                         R3 2
       35 GETTABLEKS                       R3 R3 K12 ["isFirstTouch"]
       37 JUMPIFNOT                        R3 ; [+75]
       38 GETUPVAL                         R3 2
       39 LOADB                            R4 0
       40 SETTABLEKS                       R4 R3 K12 ["isFirstTouch"]
       42 GETIMPORT                        R3 K14 [TweenInfo.new]
       44 LOADK                            R4 K15 [0.5]
       45 GETIMPORT                        R5 K18 [Enum.EasingStyle.Quad]
       47 GETIMPORT                        R6 K21 [Enum.EasingDirection.Out]
       49 LOADN                            R7 0
       50 LOADB                            R8 0
       51 LOADN                            R9 0
       52 CALL                             R3 6 1
       53 GETUPVAL                         R4 3
       54 GETUPVAL                         R6 2
       55 GETTABLEKS                       R6 R6 K22 ["startImage"]
       57 MOVE                             R7 R3
       58 DUPTABLE                         R8 K24 [{"Size"}]
       59 GETIMPORT                        R9 K26 [UDim2.new]
       61 LOADN                            R10 0
       62 LOADN                            R11 0
       63 LOADN                            R12 0
       64 LOADN                            R13 0
       65 CALL                             R9 4 1
       66 SETTABLEKS                       R9 R8 K23 ["Size"]
       68 NAMECALL                         R4 R4 K27 ["Create"]
       70 CALL                             R4 4 1
       71 NAMECALL                         R4 R4 K28 ["Play"]
       73 CALL                             R4 1 0
       74 GETUPVAL                         R4 4
       75 JUMPIFNOT                        R4 ; [+4]
       76 GETUPVAL                         R4 2
       77 GETTABLEKS                       R4 R4 K29 ["newStyle"]
       79 JUMPIF                           R4 ; [+33]
       80 GETUPVAL                         R4 3
       81 GETUPVAL                         R6 2
       82 GETTABLEKS                       R6 R6 K30 ["endImage"]
       84 MOVE                             R7 R3
       85 DUPTABLE                         R8 K32 [{"Size", "ImageColor3"}]
       86 GETIMPORT                        R9 K26 [UDim2.new]
       88 LOADN                            R10 0
       89 GETUPVAL                         R11 2
       90 GETTABLEKS                       R11 R11 K33 ["thumbstickSize"]
       92 LOADN                            R12 0
       93 GETUPVAL                         R13 2
       94 GETTABLEKS                       R13 R13 K33 ["thumbstickSize"]
       96 CALL                             R9 4 1
       97 SETTABLEKS                       R9 R8 K23 ["Size"]
       99 GETIMPORT                        R9 K35 [Color3.new]
      101 LOADN                            R10 0
      102 LOADN                            R11 0
      103 LOADN                            R12 0
      104 CALL                             R9 3 1
      105 SETTABLEKS                       R9 R8 K31 ["ImageColor3"]
      107 NAMECALL                         R4 R4 K27 ["Create"]
      109 CALL                             R4 4 1
      110 NAMECALL                         R4 R4 K28 ["Play"]
      112 CALL                             R4 1 0
      113 GETUPVAL                         R3 2
      114 SETTABLEKS                       R2 R3 K36 ["moveTouchStartPosition"]
      116 GETUPVAL                         R3 2
      117 LOADB                            R4 1
      118 SETTABLEKS                       R4 R3 K37 ["moveTouchFirstChanged"]
      120 GETUPVAL                         R3 2
      121 NAMECALL                         R3 R3 K38 ["DoFadeInBackground"]
      123 CALL                             R3 1 0
      124 RETURN                           R0 0
      125 GETUPVAL                         R3 2
      126 GETTABLEKS                       R3 R3 K37 ["moveTouchFirstChanged"]
      128 JUMPIFNOT                        R3 ; [+81]
      129 GETUPVAL                         R3 2
      130 LOADB                            R4 0
      131 SETTABLEKS                       R4 R3 K37 ["moveTouchFirstChanged"]
      133 GETIMPORT                        R3 K40 [Vector2.new]
      135 GETUPVAL                         R5 2
      136 GETTABLEKS                       R5 R5 K36 ["moveTouchStartPosition"]
      138 GETTABLEKS                       R5 R5 K6 ["X"]
      140 GETUPVAL                         R6 2
      141 GETTABLEKS                       R6 R6 K41 ["thumbstickFrame"]
      143 GETTABLEKS                       R6 R6 K42 ["AbsolutePosition"]
      145 GETTABLEKS                       R6 R6 K6 ["X"]
      147 SUB                              R4 R5 R6
      148 GETUPVAL                         R6 2
      149 GETTABLEKS                       R6 R6 K36 ["moveTouchStartPosition"]
      151 GETTABLEKS                       R6 R6 K7 ["Y"]
      153 GETUPVAL                         R7 2
      154 GETTABLEKS                       R7 R7 K41 ["thumbstickFrame"]
      156 GETTABLEKS                       R7 R7 K42 ["AbsolutePosition"]
      158 GETTABLEKS                       R7 R7 K7 ["Y"]
      160 SUB                              R5 R6 R7
      161 CALL                             R3 2 1
      162 GETUPVAL                         R4 2
      163 GETTABLEKS                       R4 R4 K22 ["startImage"]
      165 LOADB                            R5 1
      166 SETTABLEKS                       R5 R4 K43 ["Visible"]
      168 GETUPVAL                         R4 2
      169 GETTABLEKS                       R4 R4 K22 ["startImage"]
      171 GETIMPORT                        R5 K26 [UDim2.new]
      173 LOADN                            R6 0
      174 GETTABLEKS                       R7 R3 K6 ["X"]
      176 LOADN                            R8 0
      177 GETTABLEKS                       R9 R3 K7 ["Y"]
      179 CALL                             R5 4 1
      180 SETTABLEKS                       R5 R4 K44 ["Position"]
      182 GETUPVAL                         R4 2
      183 GETTABLEKS                       R4 R4 K30 ["endImage"]
      185 LOADB                            R5 1
      186 SETTABLEKS                       R5 R4 K43 ["Visible"]
      188 GETUPVAL                         R4 2
      189 GETTABLEKS                       R4 R4 K30 ["endImage"]
      191 GETUPVAL                         R5 2
      192 GETTABLEKS                       R5 R5 K22 ["startImage"]
      194 GETTABLEKS                       R5 R5 K44 ["Position"]
      196 SETTABLEKS                       R5 R4 K44 ["Position"]
      198 GETUPVAL                         R4 2
      199 LOADB                            R6 1
      200 NAMECALL                         R4 R4 K45 ["FadeThumbstick"]
      202 CALL                             R4 2 0
      203 GETUPVAL                         R4 2
      204 GETUPVAL                         R6 2
      205 GETTABLEKS                       R6 R6 K36 ["moveTouchStartPosition"]
      207 NAMECALL                         R4 R4 K46 ["MoveStick"]
      209 CALL                             R4 2 0
      210 GETIMPORT                        R3 K40 [Vector2.new]
      212 GETTABLEKS                       R5 R2 K6 ["X"]
      214 GETUPVAL                         R6 2
      215 GETTABLEKS                       R6 R6 K36 ["moveTouchStartPosition"]
      217 GETTABLEKS                       R6 R6 K6 ["X"]
      219 SUB                              R4 R5 R6
      220 GETTABLEKS                       R6 R2 K7 ["Y"]
      222 GETUPVAL                         R7 2
      223 GETTABLEKS                       R7 R7 K36 ["moveTouchStartPosition"]
      225 GETTABLEKS                       R7 R7 K7 ["Y"]
      227 SUB                              R5 R6 R7
      228 CALL                             R3 2 1
      229 GETTABLEKS                       R4 R3 K47 ["Magnitude"]
      231 LOADN                            R5 0
      232 JUMPIFNOTLT                      R5 R4 ; [+20]
      234 GETUPVAL                         R4 2
      235 MOVE                             R6 R3
      236 NAMECALL                         R4 R4 K48 ["DoMove"]
      238 CALL                             R4 2 0
      239 GETUPVAL                         R4 2
      240 MOVE                             R6 R2
      241 NAMECALL                         R4 R4 K46 ["MoveStick"]
      243 CALL                             R4 2 0
      244 RETURN                           R0 0
      245 GETUPVAL                         R1 2
      246 GETTABLEKS                       R1 R1 K11 ["isTouchActive"]
      248 JUMPIFNOT                        R1 ; [+4]
      249 GETUPVAL                         R1 2
      250 NAMECALL                         R1 R1 K49 ["OnInputEnded"]
      252 CALL                             R1 1 0
      253 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isTouchActive"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["OnInputEnded"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [2.5]
        2 SETTABLEKS                       R1 R0 K1 ["fadeInAndOutHalfDuration"]
        4 GETUPVAL                         R0 0
        5 LOADK                            R1 K2 [0.05]
        6 SETTABLEKS                       R1 R0 K3 ["fadeInAndOutBalance"]
        8 GETUPVAL                         R0 0
        9 GETIMPORT                        R1 K5 [tick]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K6 ["tweenInAlphaStart"]
       14 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["CurrentScreenOrientation"]
        5 GETIMPORT                        R1 K4 [Enum.ScreenOrientation.Portrait]
        7 JUMPIFEQ                         R0 R1 ; [+10]
        9 GETUPVAL                         R0 0
       10 JUMPIF                           R0 ; [+38]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K0 ["CurrentScreenOrientation"]
       14 GETIMPORT                        R1 K4 [Enum.ScreenOrientation.Portrait]
       16 JUMPIFEQ                         R0 R1 ; [+32]
       18 GETUPVAL                         R0 2
       19 GETTABLEKS                       R0 R0 K5 ["playerGuiChangedConn"]
       21 NAMECALL                         R0 R0 K6 ["Disconnect"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 2
       25 LOADK                            R1 K7 [2.5]
       26 SETTABLEKS                       R1 R0 K8 ["fadeInAndOutHalfDuration"]
       28 GETUPVAL                         R0 2
       29 LOADK                            R1 K9 [0.05]
       30 SETTABLEKS                       R1 R0 K10 ["fadeInAndOutBalance"]
       32 GETUPVAL                         R0 2
       33 GETIMPORT                        R1 K12 [tick]
       35 CALL                             R1 0 1
       36 SETTABLEKS                       R1 R0 K13 ["tweenInAlphaStart"]
       38 GETUPVAL                         R0 0
       39 JUMPIFNOT                        R0 ; [+5]
       40 GETUPVAL                         R0 2
       41 LOADB                            R1 1
       42 SETTABLEKS                       R1 R0 K14 ["hasFadedBackgroundInPortrait"]
       44 RETURN                           R0 0
       45 GETUPVAL                         R0 2
       46 LOADB                            R1 1
       47 SETTABLEKS                       R1 R0 K15 ["hasFadedBackgroundInLandscape"]
       49 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Loaded"]
        4 NAMECALL                         R0 R0 K3 ["Wait"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 0
        8 LOADK                            R1 K4 [2.5]
        9 SETTABLEKS                       R1 R0 K5 ["fadeInAndOutHalfDuration"]
       11 GETUPVAL                         R0 0
       12 LOADK                            R1 K6 [0.05]
       13 SETTABLEKS                       R1 R0 K7 ["fadeInAndOutBalance"]
       15 GETUPVAL                         R0 0
       16 GETIMPORT                        R1 K9 [tick]
       18 CALL                             R1 0 1
       19 SETTABLEKS                       R1 R0 K10 ["tweenInAlphaStart"]
       21 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["thumbstickFrame"]
        2 JUMPIFNOT                        R2 ; [+122]
        3 GETUPVAL                         R2 0
        4 JUMPIFNOT                        R2 ; [+16]
        5 GETUPVAL                         R2 1
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K1 ["Enabled"]
        9 GETTABLEKS                       R2 R0 K2 ["thumbstickStateChangedConn"]
       11 JUMPIFNOT                        R2 ; [+24]
       12 GETTABLEKS                       R2 R0 K2 ["thumbstickStateChangedConn"]
       14 NAMECALL                         R2 R2 K3 ["Disconnect"]
       16 CALL                             R2 1 0
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R0 K2 ["thumbstickStateChangedConn"]
       20 JUMP                             ; [+15]
       21 GETUPVAL                         R2 1
       22 LOADB                            R3 0
       23 SETTABLEKS                       R3 R2 K1 ["Enabled"]
       25 GETTABLEKS                       R2 R0 K2 ["thumbstickStateChangedConn"]
       27 JUMPIFNOT                        R2 ; [+8]
       28 GETTABLEKS                       R2 R0 K2 ["thumbstickStateChangedConn"]
       30 NAMECALL                         R2 R2 K3 ["Disconnect"]
       32 CALL                             R2 1 0
       33 LOADNIL                          R2
       34 SETTABLEKS                       R2 R0 K2 ["thumbstickStateChangedConn"]
       36 GETTABLEKS                       R2 R0 K0 ["thumbstickFrame"]
       38 NAMECALL                         R2 R2 K4 ["Destroy"]
       40 CALL                             R2 1 0
       41 LOADNIL                          R2
       42 SETTABLEKS                       R2 R0 K0 ["thumbstickFrame"]
       44 GETTABLEKS                       R2 R0 K5 ["onRenderSteppedConn"]
       46 JUMPIFNOT                        R2 ; [+8]
       47 GETTABLEKS                       R2 R0 K5 ["onRenderSteppedConn"]
       49 NAMECALL                         R2 R2 K3 ["Disconnect"]
       51 CALL                             R2 1 0
       52 LOADNIL                          R2
       53 SETTABLEKS                       R2 R0 K5 ["onRenderSteppedConn"]
       55 GETTABLEKS                       R2 R0 K6 ["absoluteSizeChangedConn"]
       57 JUMPIFNOT                        R2 ; [+8]
       58 GETTABLEKS                       R2 R0 K6 ["absoluteSizeChangedConn"]
       60 NAMECALL                         R2 R2 K3 ["Disconnect"]
       62 CALL                             R2 1 0
       63 LOADNIL                          R2
       64 SETTABLEKS                       R2 R0 K6 ["absoluteSizeChangedConn"]
       66 GETUPVAL                         R2 2
       67 JUMPIF                           R2 ; [+11]
       68 GETTABLEKS                       R2 R0 K7 ["avatarAbilitiesEnabledChangedConn"]
       70 JUMPIFNOT                        R2 ; [+8]
       71 GETTABLEKS                       R2 R0 K7 ["avatarAbilitiesEnabledChangedConn"]
       73 NAMECALL                         R2 R2 K3 ["Disconnect"]
       75 CALL                             R2 1 0
       76 LOADNIL                          R2
       77 SETTABLEKS                       R2 R0 K7 ["avatarAbilitiesEnabledChangedConn"]
       79 GETUPVAL                         R2 2
       80 JUMPIFNOT                        R2 ; [+44]
       81 GETTABLEKS                       R2 R0 K8 ["cameraChangedConn"]
       83 JUMPIFNOT                        R2 ; [+8]
       84 GETTABLEKS                       R2 R0 K8 ["cameraChangedConn"]
       86 NAMECALL                         R2 R2 K3 ["Disconnect"]
       88 CALL                             R2 1 0
       89 LOADNIL                          R2
       90 SETTABLEKS                       R2 R0 K8 ["cameraChangedConn"]
       92 GETTABLEKS                       R2 R0 K9 ["currentCameraChangedConn"]
       94 JUMPIFNOT                        R2 ; [+8]
       95 GETTABLEKS                       R2 R0 K9 ["currentCameraChangedConn"]
       97 NAMECALL                         R2 R2 K3 ["Disconnect"]
       99 CALL                             R2 1 0
      100 LOADNIL                          R2
      101 SETTABLEKS                       R2 R0 K9 ["currentCameraChangedConn"]
      103 GETTABLEKS                       R2 R0 K10 ["menuOpenedConnection"]
      105 JUMPIFNOT                        R2 ; [+8]
      106 GETTABLEKS                       R2 R0 K10 ["menuOpenedConnection"]
      108 NAMECALL                         R2 R2 K3 ["Disconnect"]
      110 CALL                             R2 1 0
      111 LOADNIL                          R2
      112 SETTABLEKS                       R2 R0 K10 ["menuOpenedConnection"]
      114 GETTABLEKS                       R2 R0 K11 ["playerGuiChangedConn"]
      116 JUMPIFNOT                        R2 ; [+8]
      117 GETTABLEKS                       R2 R0 K11 ["playerGuiChangedConn"]
      119 NAMECALL                         R2 R2 K3 ["Disconnect"]
      121 CALL                             R2 1 0
      122 LOADNIL                          R2
      123 SETTABLEKS                       R2 R0 K11 ["playerGuiChangedConn"]
      125 NEWCLOSURE                       R2 P0
      126 CAPTURE                          VAL R0
      127 GETUPVAL                         R3 2
      128 JUMPIFNOT                        R3 ; [+4]
      129 GETUPVAL                         R3 3
      130 NAMECALL                         R3 R3 K12 ["isEnabled"]
      132 CALL                             R3 1 1
      133 SETTABLEKS                       R3 R0 K13 ["newStyle"]
      135 GETIMPORT                        R3 K16 [Instance.new]
      137 LOADK                            R4 K17 ["Frame"]
      138 CALL                             R3 1 1
      139 SETTABLEKS                       R3 R0 K0 ["thumbstickFrame"]
      141 GETTABLEKS                       R3 R0 K0 ["thumbstickFrame"]
      143 LOADN                            R4 0
      144 SETTABLEKS                       R4 R3 K18 ["BorderSizePixel"]
      146 GETTABLEKS                       R3 R0 K0 ["thumbstickFrame"]
      148 LOADK                            R4 K19 ["DynamicThumbstickFrame"]
      149 SETTABLEKS                       R4 R3 K20 ["Name"]
      151 GETTABLEKS                       R3 R0 K0 ["thumbstickFrame"]
      153 LOADB                            R4 0
      154 SETTABLEKS                       R4 R3 K21 ["Visible"]
      156 GETTABLEKS                       R3 R0 K0 ["thumbstickFrame"]
      158 LOADN                            R4 1
      159 SETTABLEKS                       R4 R3 K22 ["BackgroundTransparency"]
      161 GETTABLEKS                       R3 R0 K0 ["thumbstickFrame"]
      163 GETIMPORT                        R4 K25 [Color3.fromRGB]
      165 LOADN                            R5 0
      166 LOADN                            R6 0
      167 LOADN                            R7 0
      168 CALL                             R4 3 1
      169 SETTABLEKS                       R4 R3 K26 ["BackgroundColor3"]
      171 GETTABLEKS                       R3 R0 K0 ["thumbstickFrame"]
      173 LOADB                            R4 0
      174 SETTABLEKS                       R4 R3 K27 ["Active"]
      176 GETTABLEKS                       R3 R0 K0 ["thumbstickFrame"]
      178 GETIMPORT                        R4 K29 [UDim2.new]
      180 LOADK                            R5 K30 [0.4]
      181 LOADN                            R6 100
      182 LOADK                            R7 K31 [0.666666666666667]
      183 LOADN                            R8 100
      184 CALL                             R4 4 1
      185 SETTABLEKS                       R4 R3 K32 ["Size"]
      187 GETTABLEKS                       R3 R0 K0 ["thumbstickFrame"]
      189 GETIMPORT                        R4 K29 [UDim2.new]
      191 LOADN                            R5 0
      192 LOADN                            R6 -100
      193 LOADK                            R7 K33 [0.333333333333333]
      194 LOADN                            R8 0
      195 CALL                             R4 4 1
      196 SETTABLEKS                       R4 R3 K34 ["Position"]
      198 GETIMPORT                        R3 K16 [Instance.new]
      200 LOADK                            R4 K35 ["ImageButton"]
      201 CALL                             R3 1 1
      202 SETTABLEKS                       R3 R0 K36 ["thumbstickButton"]
      204 GETTABLEKS                       R3 R0 K36 ["thumbstickButton"]
      206 LOADK                            R4 K37 ["DynamicThumbstickUIModifier"]
      207 SETTABLEKS                       R4 R3 K20 ["Name"]
      209 GETTABLEKS                       R3 R0 K36 ["thumbstickButton"]
      211 LOADN                            R4 1
      212 SETTABLEKS                       R4 R3 K22 ["BackgroundTransparency"]
      214 GETTABLEKS                       R3 R0 K36 ["thumbstickButton"]
      216 LOADN                            R4 1
      217 SETTABLEKS                       R4 R3 K38 ["ImageTransparency"]
      219 GETTABLEKS                       R3 R0 K36 ["thumbstickButton"]
      221 LOADB                            R4 0
      222 SETTABLEKS                       R4 R3 K39 ["AutoButtonColor"]
      224 GETTABLEKS                       R3 R0 K36 ["thumbstickButton"]
      226 GETIMPORT                        R4 K29 [UDim2.new]
      228 LOADN                            R5 1
      229 LOADN                            R6 0
      230 LOADN                            R7 1
      231 LOADN                            R8 0
      232 CALL                             R4 4 1
      233 SETTABLEKS                       R4 R3 K32 ["Size"]
      235 GETTABLEKS                       R3 R0 K36 ["thumbstickButton"]
      237 GETTABLEKS                       R4 R0 K0 ["thumbstickFrame"]
      239 GETTABLEKS                       R4 R4 K40 ["ZIndex"]
      241 SETTABLEKS                       R4 R3 K40 ["ZIndex"]
      243 GETTABLEKS                       R3 R0 K36 ["thumbstickButton"]
      245 LOADB                            R4 1
      246 SETTABLEKS                       R4 R3 K21 ["Visible"]
      248 GETTABLEKS                       R3 R0 K36 ["thumbstickButton"]
      250 LOADB                            R4 0
      251 SETTABLEKS                       R4 R3 K27 ["Active"]
      253 GETTABLEKS                       R3 R0 K36 ["thumbstickButton"]
      255 GETTABLEKS                       R4 R0 K0 ["thumbstickFrame"]
      257 SETTABLEKS                       R4 R3 K41 ["Parent"]
      259 GETUPVAL                         R3 0
      260 JUMPIF                           R3 ; [+29]
      261 LOADNIL                          R3
      262 GETUPVAL                         R4 4
      263 JUMPIFNOT                        R4 ; [+6]
      264 GETUPVAL                         R4 1
      265 LOADK                            R6 K42 ["DynamicTouchBinding"]
      266 NAMECALL                         R4 R4 K43 ["FindFirstChild"]
      268 CALL                             R4 2 1
      269 MOVE                             R3 R4
      270 JUMPIF                           R3 ; [+15]
      271 GETIMPORT                        R4 K16 [Instance.new]
      273 LOADK                            R5 K44 ["InputBinding"]
      274 CALL                             R4 1 1
      275 MOVE                             R3 R4
      276 LOADK                            R4 K42 ["DynamicTouchBinding"]
      277 SETTABLEKS                       R4 R3 K20 ["Name"]
      279 GETIMPORT                        R4 K48 [Enum.KeyCode.TouchPosition]
      281 SETTABLEKS                       R4 R3 K46 ["KeyCode"]
      283 GETUPVAL                         R4 1
      284 SETTABLEKS                       R4 R3 K41 ["Parent"]
      286 GETTABLEKS                       R4 R0 K36 ["thumbstickButton"]
      288 SETTABLEKS                       R4 R3 K49 ["UIModifier"]
      290 GETUPVAL                         R3 2
      291 JUMPIFNOT                        R3 ; [+311]
      292 GETTABLEKS                       R3 R0 K13 ["newStyle"]
      294 JUMPIFNOT                        R3 ; [+308]
      295 GETIMPORT                        R3 K16 [Instance.new]
      297 LOADK                            R4 K17 ["Frame"]
      298 CALL                             R3 1 1
      299 SETTABLEKS                       R3 R0 K50 ["startImage"]
      301 GETTABLEKS                       R3 R0 K50 ["startImage"]
      303 LOADK                            R4 K51 ["ThumbstickStart"]
      304 SETTABLEKS                       R4 R3 K20 ["Name"]
      306 GETTABLEKS                       R3 R0 K50 ["startImage"]
      308 GETIMPORT                        R4 K25 [Color3.fromRGB]
      310 LOADN                            R5 18
      311 LOADN                            R6 18
      312 LOADN                            R7 21
      313 CALL                             R4 3 1
      314 SETTABLEKS                       R4 R3 K26 ["BackgroundColor3"]
      316 GETTABLEKS                       R3 R0 K50 ["startImage"]
      318 LOADK                            R4 K30 [0.4]
      319 SETTABLEKS                       R4 R3 K22 ["BackgroundTransparency"]
      321 GETTABLEKS                       R3 R0 K50 ["startImage"]
      323 GETIMPORT                        R4 K53 [Vector2.new]
      325 LOADK                            R5 K54 [0.5]
      326 LOADK                            R6 K54 [0.5]
      327 CALL                             R4 2 1
      328 SETTABLEKS                       R4 R3 K55 ["AnchorPoint"]
      330 GETTABLEKS                       R3 R0 K50 ["startImage"]
      332 LOADN                            R4 10
      333 SETTABLEKS                       R4 R3 K40 ["ZIndex"]
      335 GETTABLEKS                       R3 R0 K50 ["startImage"]
      337 GETTABLEKS                       R4 R0 K0 ["thumbstickFrame"]
      339 SETTABLEKS                       R4 R3 K41 ["Parent"]
      341 GETIMPORT                        R3 K16 [Instance.new]
      343 LOADK                            R4 K56 ["UICorner"]
      344 CALL                             R3 1 1
      345 GETIMPORT                        R4 K58 [UDim.new]
      347 LOADK                            R5 K54 [0.5]
      348 LOADN                            R6 0
      349 CALL                             R4 2 1
      350 SETTABLEKS                       R4 R3 K59 ["CornerRadius"]
      352 GETTABLEKS                       R4 R0 K50 ["startImage"]
      354 SETTABLEKS                       R4 R3 K41 ["Parent"]
      356 GETIMPORT                        R4 K16 [Instance.new]
      358 LOADK                            R5 K17 ["Frame"]
      359 CALL                             R4 1 1
      360 SETTABLEKS                       R4 R0 K60 ["endImage"]
      362 GETTABLEKS                       R4 R0 K60 ["endImage"]
      364 LOADK                            R5 K61 ["ThumbstickEnd"]
      365 SETTABLEKS                       R5 R4 K20 ["Name"]
      367 GETTABLEKS                       R4 R0 K60 ["endImage"]
      369 LOADN                            R5 1
      370 SETTABLEKS                       R5 R4 K22 ["BackgroundTransparency"]
      372 GETTABLEKS                       R4 R0 K60 ["endImage"]
      374 GETIMPORT                        R5 K53 [Vector2.new]
      376 LOADK                            R6 K54 [0.5]
      377 LOADK                            R7 K54 [0.5]
      378 CALL                             R5 2 1
      379 SETTABLEKS                       R5 R4 K55 ["AnchorPoint"]
      381 GETTABLEKS                       R4 R0 K60 ["endImage"]
      383 LOADN                            R5 10
      384 SETTABLEKS                       R5 R4 K40 ["ZIndex"]
      386 GETTABLEKS                       R4 R0 K60 ["endImage"]
      388 GETTABLEKS                       R5 R0 K0 ["thumbstickFrame"]
      390 SETTABLEKS                       R5 R4 K41 ["Parent"]
      392 GETIMPORT                        R4 K16 [Instance.new]
      394 LOADK                            R5 K56 ["UICorner"]
      395 CALL                             R4 1 1
      396 GETIMPORT                        R5 K58 [UDim.new]
      398 LOADK                            R6 K54 [0.5]
      399 LOADN                            R7 0
      400 CALL                             R5 2 1
      401 SETTABLEKS                       R5 R4 K59 ["CornerRadius"]
      403 GETTABLEKS                       R5 R0 K60 ["endImage"]
      405 SETTABLEKS                       R5 R4 K41 ["Parent"]
      407 GETIMPORT                        R5 K16 [Instance.new]
      409 LOADK                            R6 K62 ["UIStroke"]
      410 CALL                             R5 1 1
      411 SETTABLEKS                       R5 R0 K63 ["endImageStroke"]
      413 GETTABLEKS                       R5 R0 K63 ["endImageStroke"]
      415 GETUPVAL                         R7 4
      416 JUMPIFNOT                        R7 ; [+2]
      417 LOADK                            R6 K64 [1.5]
      418 JUMP                             ; [+1]
      419 LOADN                            R6 2
      420 SETTABLEKS                       R6 R5 K65 ["Thickness"]
      422 GETTABLEKS                       R5 R0 K63 ["endImageStroke"]
      424 GETIMPORT                        R6 K25 [Color3.fromRGB]
      426 LOADN                            R7 213
      427 LOADN                            R8 215
      428 LOADN                            R9 221
      429 CALL                             R6 3 1
      430 SETTABLEKS                       R6 R5 K66 ["Color"]
      432 GETTABLEKS                       R5 R0 K63 ["endImageStroke"]
      434 GETTABLEKS                       R6 R0 K60 ["endImage"]
      436 SETTABLEKS                       R6 R5 K41 ["Parent"]
      438 GETIMPORT                        R5 K16 [Instance.new]
      440 LOADK                            R6 K17 ["Frame"]
      441 CALL                             R5 1 1
      442 SETTABLEKS                       R5 R0 K67 ["endImageCenter"]
      444 GETTABLEKS                       R5 R0 K67 ["endImageCenter"]
      446 LOADK                            R6 K68 ["ThumbstickEndCenter"]
      447 SETTABLEKS                       R6 R5 K20 ["Name"]
      449 GETTABLEKS                       R5 R0 K67 ["endImageCenter"]
      451 LOADN                            R6 0
      452 SETTABLEKS                       R6 R5 K22 ["BackgroundTransparency"]
      454 GETTABLEKS                       R5 R0 K67 ["endImageCenter"]
      456 GETIMPORT                        R6 K25 [Color3.fromRGB]
      458 LOADN                            R7 213
      459 LOADN                            R8 215
      460 LOADN                            R9 221
      461 CALL                             R6 3 1
      462 SETTABLEKS                       R6 R5 K26 ["BackgroundColor3"]
      464 GETTABLEKS                       R5 R0 K67 ["endImageCenter"]
      466 GETIMPORT                        R6 K53 [Vector2.new]
      468 LOADK                            R7 K54 [0.5]
      469 LOADK                            R8 K54 [0.5]
      470 CALL                             R6 2 1
      471 SETTABLEKS                       R6 R5 K55 ["AnchorPoint"]
      473 GETTABLEKS                       R5 R0 K67 ["endImageCenter"]
      475 GETIMPORT                        R6 K29 [UDim2.new]
      477 LOADK                            R7 K69 [0.74]
      478 LOADN                            R8 0
      479 LOADK                            R9 K69 [0.74]
      480 LOADN                            R10 0
      481 CALL                             R6 4 1
      482 SETTABLEKS                       R6 R5 K32 ["Size"]
      484 GETTABLEKS                       R5 R0 K67 ["endImageCenter"]
      486 GETIMPORT                        R6 K29 [UDim2.new]
      488 LOADK                            R7 K54 [0.5]
      489 LOADN                            R8 0
      490 LOADK                            R9 K54 [0.5]
      491 LOADN                            R10 0
      492 CALL                             R6 4 1
      493 SETTABLEKS                       R6 R5 K34 ["Position"]
      495 GETTABLEKS                       R5 R0 K67 ["endImageCenter"]
      497 LOADN                            R6 10
      498 SETTABLEKS                       R6 R5 K40 ["ZIndex"]
      500 GETTABLEKS                       R5 R0 K67 ["endImageCenter"]
      502 GETTABLEKS                       R6 R0 K60 ["endImage"]
      504 SETTABLEKS                       R6 R5 K41 ["Parent"]
      506 GETIMPORT                        R5 K16 [Instance.new]
      508 LOADK                            R6 K56 ["UICorner"]
      509 CALL                             R5 1 1
      510 GETIMPORT                        R6 K58 [UDim.new]
      512 LOADK                            R7 K54 [0.5]
      513 LOADN                            R8 0
      514 CALL                             R6 2 1
      515 SETTABLEKS                       R6 R5 K59 ["CornerRadius"]
      517 GETTABLEKS                       R6 R0 K67 ["endImageCenter"]
      519 SETTABLEKS                       R6 R5 K41 ["Parent"]
      521 LOADN                            R8 1
      522 GETUPVAL                         R6 5
      523 LOADN                            R7 1
      524 FORNPREP                         R6
      525 GETTABLEKS                       R9 R0 K70 ["middleImages"]
      527 GETIMPORT                        R10 K16 [Instance.new]
      529 LOADK                            R11 K17 ["Frame"]
      530 CALL                             R10 1 1
      531 SETTABLE                         R10 R9 R8
      532 GETTABLEKS                       R10 R0 K70 ["middleImages"]
      534 GETTABLE                         R9 R10 R8
      535 LOADK                            R10 K71 ["ThumbstickMiddle"]
      536 SETTABLEKS                       R10 R9 K20 ["Name"]
      538 GETTABLEKS                       R10 R0 K70 ["middleImages"]
      540 GETTABLE                         R9 R10 R8
      541 LOADB                            R10 0
      542 SETTABLEKS                       R10 R9 K21 ["Visible"]
      544 GETTABLEKS                       R10 R0 K70 ["middleImages"]
      546 GETTABLE                         R9 R10 R8
      547 GETUPVAL                         R11 6
      548 GETTABLE                         R10 R11 R8
      549 SETTABLEKS                       R10 R9 K22 ["BackgroundTransparency"]
      551 GETTABLEKS                       R10 R0 K70 ["middleImages"]
      553 GETTABLE                         R9 R10 R8
      554 GETIMPORT                        R10 K25 [Color3.fromRGB]
      556 LOADN                            R11 255
      557 LOADN                            R12 255
      558 LOADN                            R13 255
      559 CALL                             R10 3 1
      560 SETTABLEKS                       R10 R9 K26 ["BackgroundColor3"]
      562 GETTABLEKS                       R10 R0 K70 ["middleImages"]
      564 GETTABLE                         R9 R10 R8
      565 GETIMPORT                        R10 K53 [Vector2.new]
      567 LOADK                            R11 K54 [0.5]
      568 LOADK                            R12 K54 [0.5]
      569 CALL                             R10 2 1
      570 SETTABLEKS                       R10 R9 K55 ["AnchorPoint"]
      572 GETTABLEKS                       R10 R0 K70 ["middleImages"]
      574 GETTABLE                         R9 R10 R8
      575 LOADN                            R10 9
      576 SETTABLEKS                       R10 R9 K40 ["ZIndex"]
      578 GETTABLEKS                       R10 R0 K70 ["middleImages"]
      580 GETTABLE                         R9 R10 R8
      581 GETTABLEKS                       R10 R0 K0 ["thumbstickFrame"]
      583 SETTABLEKS                       R10 R9 K41 ["Parent"]
      585 GETIMPORT                        R9 K16 [Instance.new]
      587 LOADK                            R10 K56 ["UICorner"]
      588 CALL                             R9 1 1
      589 GETIMPORT                        R10 K58 [UDim.new]
      591 LOADK                            R11 K54 [0.5]
      592 LOADN                            R12 0
      593 CALL                             R10 2 1
      594 SETTABLEKS                       R10 R9 K59 ["CornerRadius"]
      596 GETTABLEKS                       R11 R0 K70 ["middleImages"]
      598 GETTABLE                         R10 R11 R8
      599 SETTABLEKS                       R10 R9 K41 ["Parent"]
      601 FORNLOOP                         R6
      602 JUMP                             ; [+224]
      603 GETIMPORT                        R3 K16 [Instance.new]
      605 LOADK                            R4 K72 ["ImageLabel"]
      606 CALL                             R3 1 1
      607 SETTABLEKS                       R3 R0 K50 ["startImage"]
      609 GETTABLEKS                       R3 R0 K50 ["startImage"]
      611 LOADK                            R4 K51 ["ThumbstickStart"]
      612 SETTABLEKS                       R4 R3 K20 ["Name"]
      614 GETTABLEKS                       R3 R0 K50 ["startImage"]
      616 LOADB                            R4 1
      617 SETTABLEKS                       R4 R3 K21 ["Visible"]
      619 GETTABLEKS                       R3 R0 K50 ["startImage"]
      621 LOADN                            R4 1
      622 SETTABLEKS                       R4 R3 K22 ["BackgroundTransparency"]
      624 GETTABLEKS                       R3 R0 K50 ["startImage"]
      626 LOADK                            R4 K73 ["rbxasset://textures/ui/Input/TouchControlsSheetV2.png"]
      627 SETTABLEKS                       R4 R3 K74 ["Image"]
      629 GETTABLEKS                       R3 R0 K50 ["startImage"]
      631 GETIMPORT                        R4 K53 [Vector2.new]
      633 LOADN                            R5 1
      634 LOADN                            R6 1
      635 CALL                             R4 2 1
      636 SETTABLEKS                       R4 R3 K75 ["ImageRectOffset"]
      638 GETTABLEKS                       R3 R0 K50 ["startImage"]
      640 GETIMPORT                        R4 K53 [Vector2.new]
      642 LOADN                            R5 144
      643 LOADN                            R6 144
      644 CALL                             R4 2 1
      645 SETTABLEKS                       R4 R3 K76 ["ImageRectSize"]
      647 GETTABLEKS                       R3 R0 K50 ["startImage"]
      649 GETIMPORT                        R4 K77 [Color3.new]
      651 LOADN                            R5 0
      652 LOADN                            R6 0
      653 LOADN                            R7 0
      654 CALL                             R4 3 1
      655 SETTABLEKS                       R4 R3 K78 ["ImageColor3"]
      657 GETTABLEKS                       R3 R0 K50 ["startImage"]
      659 GETIMPORT                        R4 K53 [Vector2.new]
      661 LOADK                            R5 K54 [0.5]
      662 LOADK                            R6 K54 [0.5]
      663 CALL                             R4 2 1
      664 SETTABLEKS                       R4 R3 K55 ["AnchorPoint"]
      666 GETTABLEKS                       R3 R0 K50 ["startImage"]
      668 LOADN                            R4 10
      669 SETTABLEKS                       R4 R3 K40 ["ZIndex"]
      671 GETTABLEKS                       R3 R0 K50 ["startImage"]
      673 GETTABLEKS                       R4 R0 K0 ["thumbstickFrame"]
      675 SETTABLEKS                       R4 R3 K41 ["Parent"]
      677 GETIMPORT                        R3 K16 [Instance.new]
      679 LOADK                            R4 K72 ["ImageLabel"]
      680 CALL                             R3 1 1
      681 SETTABLEKS                       R3 R0 K60 ["endImage"]
      683 GETTABLEKS                       R3 R0 K60 ["endImage"]
      685 LOADK                            R4 K61 ["ThumbstickEnd"]
      686 SETTABLEKS                       R4 R3 K20 ["Name"]
      688 GETTABLEKS                       R3 R0 K60 ["endImage"]
      690 LOADB                            R4 1
      691 SETTABLEKS                       R4 R3 K21 ["Visible"]
      693 GETTABLEKS                       R3 R0 K60 ["endImage"]
      695 LOADN                            R4 1
      696 SETTABLEKS                       R4 R3 K22 ["BackgroundTransparency"]
      698 GETTABLEKS                       R3 R0 K60 ["endImage"]
      700 LOADK                            R4 K73 ["rbxasset://textures/ui/Input/TouchControlsSheetV2.png"]
      701 SETTABLEKS                       R4 R3 K74 ["Image"]
      703 GETTABLEKS                       R3 R0 K60 ["endImage"]
      705 GETIMPORT                        R4 K53 [Vector2.new]
      707 LOADN                            R5 1
      708 LOADN                            R6 1
      709 CALL                             R4 2 1
      710 SETTABLEKS                       R4 R3 K75 ["ImageRectOffset"]
      712 GETTABLEKS                       R3 R0 K60 ["endImage"]
      714 GETIMPORT                        R4 K53 [Vector2.new]
      716 LOADN                            R5 144
      717 LOADN                            R6 144
      718 CALL                             R4 2 1
      719 SETTABLEKS                       R4 R3 K76 ["ImageRectSize"]
      721 GETTABLEKS                       R3 R0 K60 ["endImage"]
      723 GETIMPORT                        R4 K53 [Vector2.new]
      725 LOADK                            R5 K54 [0.5]
      726 LOADK                            R6 K54 [0.5]
      727 CALL                             R4 2 1
      728 SETTABLEKS                       R4 R3 K55 ["AnchorPoint"]
      730 GETTABLEKS                       R3 R0 K60 ["endImage"]
      732 LOADN                            R4 10
      733 SETTABLEKS                       R4 R3 K40 ["ZIndex"]
      735 GETTABLEKS                       R3 R0 K60 ["endImage"]
      737 GETTABLEKS                       R4 R0 K0 ["thumbstickFrame"]
      739 SETTABLEKS                       R4 R3 K41 ["Parent"]
      741 LOADN                            R5 1
      742 GETUPVAL                         R3 5
      743 LOADN                            R4 1
      744 FORNPREP                         R3
      745 GETTABLEKS                       R6 R0 K70 ["middleImages"]
      747 GETIMPORT                        R7 K16 [Instance.new]
      749 LOADK                            R8 K72 ["ImageLabel"]
      750 CALL                             R7 1 1
      751 SETTABLE                         R7 R6 R5
      752 GETTABLEKS                       R7 R0 K70 ["middleImages"]
      754 GETTABLE                         R6 R7 R5
      755 LOADK                            R7 K71 ["ThumbstickMiddle"]
      756 SETTABLEKS                       R7 R6 K20 ["Name"]
      758 GETTABLEKS                       R7 R0 K70 ["middleImages"]
      760 GETTABLE                         R6 R7 R5
      761 LOADB                            R7 0
      762 SETTABLEKS                       R7 R6 K21 ["Visible"]
      764 GETTABLEKS                       R7 R0 K70 ["middleImages"]
      766 GETTABLE                         R6 R7 R5
      767 LOADN                            R7 1
      768 SETTABLEKS                       R7 R6 K22 ["BackgroundTransparency"]
      770 GETTABLEKS                       R7 R0 K70 ["middleImages"]
      772 GETTABLE                         R6 R7 R5
      773 LOADK                            R7 K73 ["rbxasset://textures/ui/Input/TouchControlsSheetV2.png"]
      774 SETTABLEKS                       R7 R6 K74 ["Image"]
      776 GETTABLEKS                       R7 R0 K70 ["middleImages"]
      778 GETTABLE                         R6 R7 R5
      779 GETIMPORT                        R7 K53 [Vector2.new]
      781 LOADN                            R8 1
      782 LOADN                            R9 1
      783 CALL                             R7 2 1
      784 SETTABLEKS                       R7 R6 K75 ["ImageRectOffset"]
      786 GETTABLEKS                       R7 R0 K70 ["middleImages"]
      788 GETTABLE                         R6 R7 R5
      789 GETIMPORT                        R7 K53 [Vector2.new]
      791 LOADN                            R8 144
      792 LOADN                            R9 144
      793 CALL                             R7 2 1
      794 SETTABLEKS                       R7 R6 K76 ["ImageRectSize"]
      796 GETTABLEKS                       R7 R0 K70 ["middleImages"]
      798 GETTABLE                         R6 R7 R5
      799 GETUPVAL                         R8 7
      800 GETTABLE                         R7 R8 R5
      801 SETTABLEKS                       R7 R6 K38 ["ImageTransparency"]
      803 GETTABLEKS                       R7 R0 K70 ["middleImages"]
      805 GETTABLE                         R6 R7 R5
      806 GETIMPORT                        R7 K53 [Vector2.new]
      808 LOADK                            R8 K54 [0.5]
      809 LOADK                            R9 K54 [0.5]
      810 CALL                             R7 2 1
      811 SETTABLEKS                       R7 R6 K55 ["AnchorPoint"]
      813 GETTABLEKS                       R7 R0 K70 ["middleImages"]
      815 GETTABLE                         R6 R7 R5
      816 LOADN                            R7 9
      817 SETTABLEKS                       R7 R6 K40 ["ZIndex"]
      819 GETTABLEKS                       R7 R0 K70 ["middleImages"]
      821 GETTABLE                         R6 R7 R5
      822 GETTABLEKS                       R7 R0 K0 ["thumbstickFrame"]
      824 SETTABLEKS                       R7 R6 K41 ["Parent"]
      826 FORNLOOP                         R3
      827 NEWCLOSURE                       R3 P1
      828 CAPTURE                          VAL R1
      829 CAPTURE                          UPVAL U2
      830 CAPTURE                          VAL R0
      831 CAPTURE                          UPVAL U8
      832 CAPTURE                          UPVAL U9
      833 MOVE                             R4 R3
      834 CALL                             R4 0 0
      835 LOADK                            R6 K79 ["AbsoluteSize"]
      836 NAMECALL                         R4 R1 K80 ["GetPropertyChangedSignal"]
      838 CALL                             R4 2 1
      839 MOVE                             R6 R3
      840 NAMECALL                         R4 R4 K81 ["Connect"]
      842 CALL                             R4 2 1
      843 SETTABLEKS                       R4 R0 K6 ["absoluteSizeChangedConn"]
      845 GETUPVAL                         R4 2
      846 JUMPIF                           R4 ; [+10]
      847 GETUPVAL                         R4 8
      848 GETTABLEKS                       R4 R4 K82 ["GetEnabledChangedSignal"]
      850 CALL                             R4 0 1
      851 MOVE                             R6 R3
      852 NAMECALL                         R4 R4 K81 ["Connect"]
      854 CALL                             R4 2 1
      855 SETTABLEKS                       R4 R0 K7 ["avatarAbilitiesEnabledChangedConn"]
      857 NEWCLOSURE                       R4 P2
      858 CAPTURE                          VAL R0
      859 CAPTURE                          VAL R2
      860 GETIMPORT                        R5 K84 [workspace]
      862 LOADK                            R7 K85 ["CurrentCamera"]
      863 NAMECALL                         R5 R5 K80 ["GetPropertyChangedSignal"]
      865 CALL                             R5 2 1
      866 MOVE                             R7 R4
      867 NAMECALL                         R5 R5 K81 ["Connect"]
      869 CALL                             R5 2 1
      870 SETTABLEKS                       R5 R0 K9 ["currentCameraChangedConn"]
      872 GETIMPORT                        R5 K84 [workspace]
      874 GETTABLEKS                       R5 R5 K85 ["CurrentCamera"]
      876 JUMPIF                           R5 ; [+2]
      877 GETUPVAL                         R5 2
      878 JUMPIFNOT                        R5 ; [+2]
      879 MOVE                             R5 R4
      880 CALL                             R5 0 0
      881 LOADNIL                          R5
      882 SETTABLEKS                       R5 R0 K86 ["startImageFadeTween"]
      884 LOADNIL                          R5
      885 SETTABLEKS                       R5 R0 K87 ["endImageFadeTween"]
      887 LOADNIL                          R5
      888 SETTABLEKS                       R5 R0 K88 ["endImageCenterFadeTween"]
      890 NEWTABLE                         R5 0 0
      892 SETTABLEKS                       R5 R0 K89 ["middleImageFadeTweens"]
      894 GETUPVAL                         R5 0
      895 JUMPIFNOT                        R5 ; [+6]
      896 GETTABLEKS                       R5 R0 K90 ["isTouchActive"]
      898 JUMPIFNOT                        R5 ; [+3]
      899 NAMECALL                         R5 R0 K91 ["OnInputEnded"]
      901 CALL                             R5 1 0
      902 LOADNIL                          R5
      903 SETTABLEKS                       R5 R0 K92 ["moveTouchStartPosition"]
      905 GETUPVAL                         R5 10
      906 GETTABLEKS                       R5 R5 K93 ["RenderStepped"]
      908 NEWCLOSURE                       R7 P3
      909 CAPTURE                          VAL R0
      910 NAMECALL                         R5 R5 K81 ["Connect"]
      912 CALL                             R5 2 1
      913 SETTABLEKS                       R5 R0 K5 ["onRenderSteppedConn"]
      915 NEWCLOSURE                       R5 P4
      916 CAPTURE                          UPVAL U11
      917 CAPTURE                          UPVAL U12
      918 CAPTURE                          VAL R0
      919 CAPTURE                          UPVAL U13
      920 CAPTURE                          UPVAL U2
      921 SETTABLEKS                       R5 R0 K94 ["onStateChanged"]
      923 GETUPVAL                         R5 12
      924 GETTABLEKS                       R5 R5 K95 ["MenuOpened"]
      926 NEWCLOSURE                       R7 P5
      927 CAPTURE                          VAL R0
      928 NAMECALL                         R5 R5 K81 ["Connect"]
      930 CALL                             R5 2 1
      931 SETTABLEKS                       R5 R0 K10 ["menuOpenedConnection"]
      933 GETUPVAL                         R5 14
      934 LOADK                            R7 K96 ["PlayerGui"]
      935 NAMECALL                         R5 R5 K97 ["FindFirstChildOfClass"]
      937 CALL                             R5 2 1
      938 JUMPIF                           R5 ; [+13]
      939 GETUPVAL                         R6 14
      940 GETTABLEKS                       R6 R6 K98 ["ChildAdded"]
      942 NAMECALL                         R6 R6 K99 ["wait"]
      944 CALL                             R6 1 0
      945 GETUPVAL                         R6 14
      946 LOADK                            R8 K96 ["PlayerGui"]
      947 NAMECALL                         R6 R6 K97 ["FindFirstChildOfClass"]
      949 CALL                             R6 2 1
      950 MOVE                             R5 R6
      951 JUMPBACK                         ; [-14]
      952 LOADB                            R6 1
      953 GETTABLEKS                       R7 R5 K100 ["CurrentScreenOrientation"]
      955 GETIMPORT                        R8 K103 [Enum.ScreenOrientation.LandscapeLeft]
      957 JUMPIFEQ                         R7 R8 ; [+9]
      959 GETTABLEKS                       R7 R5 K100 ["CurrentScreenOrientation"]
      961 GETIMPORT                        R8 K105 [Enum.ScreenOrientation.LandscapeRight]
      963 JUMPIFEQ                         R7 R8 ; [+2]
      965 LOADB                            R6 0 +1
      966 LOADB                            R6 1
      967 NEWCLOSURE                       R7 P6
      968 CAPTURE                          VAL R0
      969 LOADK                            R10 K100 ["CurrentScreenOrientation"]
      970 NAMECALL                         R8 R5 K80 ["GetPropertyChangedSignal"]
      972 CALL                             R8 2 1
      973 NEWCLOSURE                       R10 P7
      974 CAPTURE                          VAL R6
      975 CAPTURE                          REF R5
      976 CAPTURE                          VAL R0
      977 NAMECALL                         R8 R8 K81 ["Connect"]
      979 CALL                             R8 2 1
      980 SETTABLEKS                       R8 R0 K11 ["playerGuiChangedConn"]
      982 GETTABLEKS                       R8 R0 K0 ["thumbstickFrame"]
      984 SETTABLEKS                       R1 R8 K41 ["Parent"]
      986 GETIMPORT                        R8 K107 [game]
      988 NAMECALL                         R8 R8 K108 ["IsLoaded"]
      990 CALL                             R8 1 1
      991 JUMPIFNOT                        R8 ; [+12]
      992 LOADK                            R8 K109 [2.5]
      993 SETTABLEKS                       R8 R0 K110 ["fadeInAndOutHalfDuration"]
      995 LOADK                            R8 K111 [0.05]
      996 SETTABLEKS                       R8 R0 K112 ["fadeInAndOutBalance"]
      998 GETIMPORT                        R8 K114 [tick]
     1000 CALL                             R8 0 1
     1001 SETTABLEKS                       R8 R0 K115 ["tweenInAlphaStart"]
     1003 JUMP                             ; [+6]
     1004 GETIMPORT                        R8 K118 [coroutine.wrap]
     1006 NEWCLOSURE                       R9 P8
     1007 CAPTURE                          VAL R0
     1008 CALL                             R8 1 1
     1009 CALL                             R8 0 0
     1010 CLOSEUPVALS                      R5
     1011 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 7
        3 LOADK                            R1 K0 [0.11]
        4 LOADK                            R2 K1 [0.3]
        5 LOADK                            R3 K2 [0.4]
        6 LOADK                            R4 K3 [0.5]
        7 LOADK                            R5 K4 [0.6]
        8 LOADK                            R6 K5 [0.7]
        9 LOADK                            R7 K6 [0.75]
       10 SETLIST                          R0 R1 7 [1]
       12 NEWTABLE                         R1 0 7
       14 LOADK                            R2 K7 [0.55]
       15 LOADK                            R3 K8 [0.65]
       16 LOADK                            R4 K5 [0.7]
       17 LOADK                            R5 K6 [0.75]
       18 LOADK                            R6 K9 [0.8]
       19 LOADK                            R7 K10 [0.85]
       20 LOADK                            R8 K11 [0.875]
       21 SETLIST                          R1 R2 7 [1]
       23 LENGTH                           R2 R0
       24 GETIMPORT                        R3 K14 [Vector2.new]
       26 LOADN                            R4 -1
       27 LOADN                            R5 -1
       28 CALL                             R3 2 1
       29 GETIMPORT                        R4 K16 [TweenInfo.new]
       31 LOADK                            R5 K17 [0.15]
       32 GETIMPORT                        R6 K21 [Enum.EasingStyle.Quad]
       34 GETIMPORT                        R7 K24 [Enum.EasingDirection.InOut]
       36 CALL                             R4 3 1
       37 GETIMPORT                        R5 K26 [require]
       39 GETIMPORT                        R6 K28 [script]
       41 GETTABLEKS                       R6 R6 K29 ["Parent"]
       43 GETTABLEKS                       R6 R6 K29 ["Parent"]
       45 LOADK                            R8 K30 ["CommonUtils"]
       46 NAMECALL                         R6 R6 K31 ["WaitForChild"]
       48 CALL                             R6 2 -1
       49 CALL                             R5 -1 1
       50 GETTABLEKS                       R6 R5 K32 ["get"]
       52 LOADK                            R7 K33 ["FlagUtil"]
       53 CALL                             R6 1 1
       54 GETTABLEKS                       R7 R6 K34 ["getUserFlag"]
       56 LOADK                            R8 K35 ["UserPlayerScriptsCCLIntegrationD"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R6 K34 ["getUserFlag"]
       60 LOADK                            R9 K36 ["UserAllowAbilityControlsBonus"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R6 K34 ["getUserFlag"]
       64 LOADK                            R10 K37 ["UserPlayerScriptsFireThroughScriptableBindings"]
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R10 R6 K34 ["getUserFlag"]
       68 LOADK                            R11 K38 ["UserPlayerScriptsSAuthDirectAPIs2"]
       69 CALL                             R10 1 1
       70 GETTABLEKS                       R11 R6 K34 ["getUserFlag"]
       72 LOADK                            R12 K39 ["UserDoubleJumpButtonFix"]
       73 CALL                             R11 1 1
       74 GETTABLEKS                       R12 R6 K34 ["getUserFlag"]
       76 LOADK                            R13 K40 ["UserPlayerScriptsResetDTTouchOnCreate"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K42 [game]
       80 LOADK                            R15 K43 ["Players"]
       81 NAMECALL                         R13 R13 K44 ["GetService"]
       83 CALL                             R13 2 1
       84 GETIMPORT                        R14 K42 [game]
       86 LOADK                            R16 K45 ["GuiService"]
       87 NAMECALL                         R14 R14 K44 ["GetService"]
       89 CALL                             R14 2 1
       90 GETIMPORT                        R15 K42 [game]
       92 LOADK                            R17 K46 ["RunService"]
       93 NAMECALL                         R15 R15 K44 ["GetService"]
       95 CALL                             R15 2 1
       96 GETIMPORT                        R16 K42 [game]
       98 LOADK                            R18 K47 ["TweenService"]
       99 NAMECALL                         R16 R16 K44 ["GetService"]
      101 CALL                             R16 2 1
      102 GETIMPORT                        R17 K28 [script]
      104 GETTABLEKS                       R17 R17 K29 ["Parent"]
      106 GETTABLEKS                       R17 R17 K29 ["Parent"]
      108 LOADK                            R19 K48 ["InputContexts"]
      109 NAMECALL                         R17 R17 K31 ["WaitForChild"]
      111 CALL                             R17 2 1
      112 LOADK                            R20 K49 ["TransformerContext"]
      113 NAMECALL                         R18 R17 K31 ["WaitForChild"]
      115 CALL                             R18 2 1
      116 LOADK                            R21 K50 ["ThumbstickAction"]
      117 NAMECALL                         R19 R18 K31 ["WaitForChild"]
      119 CALL                             R19 2 1
      120 GETIMPORT                        R20 K26 [require]
      122 GETIMPORT                        R21 K28 [script]
      124 GETTABLEKS                       R21 R21 K29 ["Parent"]
      126 LOADK                            R23 K51 ["AvatarAbilitiesInterface"]
      127 NAMECALL                         R21 R21 K31 ["WaitForChild"]
      129 CALL                             R21 2 -1
      130 CALL                             R20 -1 1
      131 JUMPIFNOT                        R7 ; [+6]
      132 GETTABLEKS                       R21 R20 K32 ["get"]
      134 GETTABLEKS                       R22 R13 K52 ["LocalPlayer"]
      136 CALL                             R21 1 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R21
      139 GETTABLEKS                       R22 R13 K52 ["LocalPlayer"]
      141 JUMPIF                           R22 ; [+9]
      142 LOADK                            R25 K52 ["LocalPlayer"]
      143 NAMECALL                         R23 R13 K53 ["GetPropertyChangedSignal"]
      145 CALL                             R23 2 1
      146 NAMECALL                         R23 R23 K54 ["Wait"]
      148 CALL                             R23 1 0
      149 GETTABLEKS                       R22 R13 K52 ["LocalPlayer"]
      151 GETIMPORT                        R23 K26 [require]
      153 GETIMPORT                        R24 K28 [script]
      155 GETTABLEKS                       R24 R24 K29 ["Parent"]
      157 LOADK                            R26 K55 ["ActionController"]
      158 NAMECALL                         R24 R24 K31 ["WaitForChild"]
      160 CALL                             R24 2 -1
      161 CALL                             R23 -1 1
      162 NEWTABLE                         R25 16 0
      164 FASTCALL2                        SETMETATABLE R25 R23 ; [+4]
      166 MOVE                             R26 R23
      167 GETIMPORT                        R24 K57 [setmetatable]
      169 CALL                             R24 2 1
      170 SETTABLEKS                       R24 R24 K58 ["__index"]
      172 DUPCLOSURE                       R25 K59 [PROTO_0]
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R24
      175 SETTABLEKS                       R25 R24 K13 ["new"]
      177 DUPCLOSURE                       R25 K60 [PROTO_1]
      178 SETTABLEKS                       R25 R24 K61 ["GetIsJumping"]
      180 DUPCLOSURE                       R25 K62 [PROTO_2]
      181 CAPTURE                          VAL R19
      182 DUPCLOSURE                       R26 K63 [PROTO_3]
      183 CAPTURE                          VAL R25
      184 CAPTURE                          VAL R19
      185 DUPCLOSURE                       R27 K64 [PROTO_5]
      186 CAPTURE                          VAL R23
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R25
      191 CAPTURE                          VAL R19
      192 SETTABLEKS                       R27 R24 K65 ["Enable"]
      194 DUPCLOSURE                       R27 K66 [PROTO_7]
      195 CAPTURE                          VAL R10
      196 CAPTURE                          VAL R9
      197 SETTABLEKS                       R27 R24 K67 ["OnInputEnded"]
      199 DUPCLOSURE                       R27 K68 [PROTO_8]
      200 CAPTURE                          VAL R7
      201 CAPTURE                          VAL R16
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R0
      205 SETTABLEKS                       R27 R24 K69 ["FadeThumbstick"]
      207 DUPCLOSURE                       R27 K70 [PROTO_9]
      208 SETTABLEKS                       R27 R24 K71 ["FadeThumbstickFrame"]
      210 NEWCLOSURE                       R27 P8
      211 CAPTURE                          REF R22
      212 SETTABLEKS                       R27 R24 K72 ["DoFadeInBackground"]
      214 DUPCLOSURE                       R27 K73 [PROTO_12]
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R9
      217 SETTABLEKS                       R27 R24 K74 ["DoMove"]
      219 DUPCLOSURE                       R27 K75 [PROTO_13]
      220 CAPTURE                          VAL R2
      221 SETTABLEKS                       R27 R24 K76 ["LayoutMiddleImages"]
      223 DUPCLOSURE                       R27 K77 [PROTO_14]
      224 SETTABLEKS                       R27 R24 K78 ["MoveStick"]
      226 NEWCLOSURE                       R27 P12
      227 CAPTURE                          VAL R12
      228 CAPTURE                          VAL R19
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R21
      231 CAPTURE                          VAL R11
      232 CAPTURE                          VAL R2
      233 CAPTURE                          VAL R1
      234 CAPTURE                          VAL R0
      235 CAPTURE                          VAL R20
      236 CAPTURE                          VAL R8
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R3
      239 CAPTURE                          VAL R14
      240 CAPTURE                          VAL R16
      241 CAPTURE                          REF R22
      242 SETTABLEKS                       R27 R24 K79 ["Create"]
      244 CLOSEUPVALS                      R22
      245 RETURN                           R24 1
