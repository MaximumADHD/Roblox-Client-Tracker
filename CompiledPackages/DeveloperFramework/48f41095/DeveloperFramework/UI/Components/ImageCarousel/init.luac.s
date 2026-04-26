PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["AutoAdvance"]
        5 JUMPIF                           R0 ; [+4]
        6 GETUPVAL                         R0 0
        7 NAMECALL                         R0 R0 K2 ["_handlePreloadImages"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["props"]
       13 GETTABLEKS                       R1 R2 K3 ["DisableHoverToggle"]
       15 NOT                              R0 R1
       16 JUMPIFNOT                        R0 ; [+7]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K0 ["props"]
       20 GETTABLEKS                       R2 R3 K1 ["AutoAdvance"]
       22 NOT                              R1 R2
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K0 ["props"]
       27 GETTABLEKS                       R1 R2 K1 ["AutoAdvance"]
       29 JUMPIFNOT                        R0 ; [+4]
       30 GETIMPORT                        R2 K6 [os.clock]
       32 CALL                             R2 0 1
       33 JUMP                             ; [+5]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R3 R4 K7 ["state"]
       37 GETTABLEKS                       R2 R3 K8 ["startTimeForAutoAdvanceTimer"]
       39 GETUPVAL                         R3 0
       40 DUPTABLE                         R5 K11 [{"autoAdvance", "startTimeForAutoAdvanceTimer", "isHovering"}]
       41 SETTABLEKS                       R1 R5 K9 ["autoAdvance"]
       43 SETTABLEKS                       R2 R5 K8 ["startTimeForAutoAdvanceTimer"]
       45 LOADB                            R6 1
       46 SETTABLEKS                       R6 R5 K10 ["isHovering"]
       48 NAMECALL                         R3 R3 K12 ["setState"]
       50 CALL                             R3 2 0
       51 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["ResetWhenHoveredOff"]
        5 JUMPIF                           R1 ; [+6]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["props"]
        9 GETTABLEKS                       R1 R2 K2 ["DisableHoverToggle"]
       11 JUMPIF                           R1 ; [+4]
       12 GETIMPORT                        R0 K5 [os.clock]
       14 CALL                             R0 0 1
       15 JUMP                             ; [+5]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K6 ["state"]
       19 GETTABLEKS                       R0 R1 K7 ["startTimeForAutoAdvanceTimer"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K0 ["props"]
       24 GETTABLEKS                       R2 R3 K1 ["ResetWhenHoveredOff"]
       26 JUMPIFNOT                        R2 ; [+2]
       27 LOADN                            R1 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R1
       30 GETUPVAL                         R2 0
       31 DUPTABLE                         R4 K11 [{"autoAdvance", "startTimeForAutoAdvanceTimer", "indexOfImageShown", "isHovering"}]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K0 ["props"]
       35 GETTABLEKS                       R6 R7 K12 ["AutoAdvance"]
       37 JUMPIFNOT                        R6 ; [+2]
       38 LOADB                            R5 1
       39 JUMP                             ; [+1]
       40 LOADB                            R5 0
       41 SETTABLEKS                       R5 R4 K8 ["autoAdvance"]
       43 SETTABLEKS                       R0 R4 K7 ["startTimeForAutoAdvanceTimer"]
       45 SETTABLEKS                       R1 R4 K9 ["indexOfImageShown"]
       47 LOADB                            R5 0
       48 SETTABLEKS                       R5 R4 K10 ["isHovering"]
       50 NAMECALL                         R2 R2 K13 ["setState"]
       52 CALL                             R2 2 0
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R3 R4 K0 ["props"]
       56 GETTABLEKS                       R2 R3 K1 ["ResetWhenHoveredOff"]
       58 JUMPIFNOT                        R2 ; [+9]
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R2 R3 K14 ["_useAnimations"]
       62 JUMPIFNOT                        R2 ; [+5]
       63 GETUPVAL                         R2 0
       64 MOVE                             R4 R1
       65 NAMECALL                         R2 R2 K15 ["_resetAnimation"]
       67 CALL                             R2 2 0
       68 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"startTimeForAutoAdvanceTimer"}]
        2 GETIMPORT                        R3 K4 [os.clock]
        4 CALL                             R3 0 1
        5 SETTABLEKS                       R3 R2 K0 ["startTimeForAutoAdvanceTimer"]
        7 NAMECALL                         R0 R0 K5 ["setState"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 LOADN                            R2 1
       12 NAMECALL                         R0 R0 K6 ["_changeImageIndexBy"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"startTimeForAutoAdvanceTimer"}]
        2 GETIMPORT                        R3 K4 [os.clock]
        4 CALL                             R3 0 1
        5 SETTABLEKS                       R3 R2 K0 ["startTimeForAutoAdvanceTimer"]
        7 NAMECALL                         R0 R0 K5 ["setState"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 LOADN                            R2 255
       12 NAMECALL                         R0 R0 K6 ["_changeImageIndexBy"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K7 [{"autoAdvance", "currentImageTransparency", "fadeInProgress", "imageElements", "indexOfImageShown", "isHovering", "startTimeForAutoAdvanceTimer"}]
        1 GETTABLEKS                       R3 R0 K8 ["props"]
        3 GETTABLEKS                       R2 R3 K9 ["AutoAdvance"]
        5 SETTABLEKS                       R2 R1 K0 ["autoAdvance"]
        7 LOADN                            R2 0
        8 SETTABLEKS                       R2 R1 K1 ["currentImageTransparency"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K2 ["fadeInProgress"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["imageElements"]
       17 LOADN                            R2 1
       18 SETTABLEKS                       R2 R1 K4 ["indexOfImageShown"]
       20 LOADB                            R2 0
       21 SETTABLEKS                       R2 R1 K5 ["isHovering"]
       23 GETIMPORT                        R2 K12 [os.clock]
       25 CALL                             R2 0 1
       26 SETTABLEKS                       R2 R1 K6 ["startTimeForAutoAdvanceTimer"]
       28 SETTABLEKS                       R1 R0 K13 ["state"]
       30 DUPTABLE                         R2 K7 [{"autoAdvance", "currentImageTransparency", "fadeInProgress", "imageElements", "indexOfImageShown", "isHovering", "startTimeForAutoAdvanceTimer"}]
       31 GETTABLEKS                       R4 R0 K8 ["props"]
       33 GETTABLEKS                       R3 R4 K9 ["AutoAdvance"]
       35 SETTABLEKS                       R3 R2 K0 ["autoAdvance"]
       37 LOADN                            R3 0
       38 SETTABLEKS                       R3 R2 K1 ["currentImageTransparency"]
       40 LOADB                            R3 0
       41 SETTABLEKS                       R3 R2 K2 ["fadeInProgress"]
       43 NEWTABLE                         R3 0 0
       45 SETTABLEKS                       R3 R2 K3 ["imageElements"]
       47 LOADN                            R3 1
       48 SETTABLEKS                       R3 R2 K4 ["indexOfImageShown"]
       50 LOADB                            R3 0
       51 SETTABLEKS                       R3 R2 K5 ["isHovering"]
       53 GETIMPORT                        R3 K12 [os.clock]
       55 CALL                             R3 0 1
       56 SETTABLEKS                       R3 R2 K6 ["startTimeForAutoAdvanceTimer"]
       58 SETTABLEKS                       R2 R0 K13 ["state"]
       60 GETUPVAL                         R2 0
       61 JUMPIFNOT                        R2 ; [+5]
       62 GETTABLEKS                       R4 R0 K8 ["props"]
       64 GETTABLEKS                       R3 R4 K14 ["DisableAnimations"]
       66 NOT                              R2 R3
       67 SETTABLEKS                       R2 R0 K15 ["_useAnimations"]
       69 GETTABLEKS                       R2 R0 K15 ["_useAnimations"]
       71 JUMPIFNOT                        R2 ; [+3]
       72 NAMECALL                         R2 R0 K16 ["_createOtterMotors"]
       74 CALL                             R2 1 0
       75 LOADB                            R2 0
       76 SETTABLEKS                       R2 R0 K17 ["preloadedImagesAlready"]
       78 GETTABLEKS                       R3 R0 K8 ["props"]
       80 GETTABLEKS                       R2 R3 K9 ["AutoAdvance"]
       82 JUMPIFNOT                        R2 ; [+3]
       83 NAMECALL                         R2 R0 K18 ["_handlePreloadImages"]
       85 CALL                             R2 1 0
       86 NEWCLOSURE                       R2 P0
       87 CAPTURE                          VAL R0
       88 SETTABLEKS                       R2 R0 K19 ["_onMouseEnter"]
       90 NEWCLOSURE                       R2 P1
       91 CAPTURE                          VAL R0
       92 SETTABLEKS                       R2 R0 K20 ["_onMouseLeave"]
       94 NEWCLOSURE                       R2 P2
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R2 R0 K21 ["_moveRight"]
       98 NEWCLOSURE                       R2 P3
       99 CAPTURE                          VAL R0
      100 SETTABLEKS                       R2 R0 K22 ["_moveLeft"]
      102 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentImageTransparency"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentImageTransparency"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["currentImageTransparency"]
        5 JUMPIFNOTEQKN                    R0 K2 [0] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K0 ["state"]
       12 GETTABLEKS                       R2 R3 K3 ["indexOfNextImage"]
       14 NAMECALL                         R0 R0 K4 ["_resetAnimation"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createSingleMotor"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K1 ["_transparencyMotor"]
        7 GETTABLEKS                       R1 R0 K1 ["_transparencyMotor"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R1 R1 K2 ["onStep"]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R1 R0 K1 ["_transparencyMotor"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R1 R1 K3 ["onComplete"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R2 K2 ["OnImageChange"]
        6 JUMPIFNOT                        R4 ; [+12]
        7 GETTABLEKS                       R4 R3 K3 ["currentImageTransparency"]
        9 GETTABLEKS                       R5 R2 K4 ["OnImageChangeTransparencyThreshold"]
       11 JUMPIFNOTLE                      R5 R4 ; [+7]
       13 GETTABLEKS                       R4 R2 K2 ["OnImageChange"]
       15 MOVE                             R5 R1
       16 GETTABLEKS                       R6 R3 K5 ["fromAutoRotation"]
       18 CALL                             R4 2 0
       19 DUPTABLE                         R6 K8 [{"indexOfImageShown", "fadeInProgress"}]
       20 SETTABLEKS                       R1 R6 K6 ["indexOfImageShown"]
       22 LOADB                            R7 0
       23 SETTABLEKS                       R7 R6 K7 ["fadeInProgress"]
       25 NAMECALL                         R4 R0 K9 ["setState"]
       27 CALL                             R4 2 0
       28 GETTABLEKS                       R4 R0 K10 ["_transparencyMotor"]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K11 ["instant"]
       33 LOADN                            R7 0
       34 CALL                             R6 1 -1
       35 NAMECALL                         R4 R4 K12 ["setGoal"]
       37 CALL                             R4 -1 0
       38 GETTABLEKS                       R4 R0 K10 ["_transparencyMotor"]
       40 LOADN                            R6 0
       41 NAMECALL                         R4 R4 K13 ["step"]
       43 CALL                             R4 2 0
       44 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["ImageStrings"]
        6 NAMECALL                         R0 R0 K2 ["PreloadAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_10:
        0 JUMPIF                           R1 ; [+4]
        1 GETTABLEKS                       R2 R0 K0 ["preloadedImagesAlready"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K3 [task.spawn]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CALL                             R2 1 0
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R0 K0 ["preloadedImagesAlready"]
       14 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["Stylizer"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["createElement"]
        7 GETUPVAL                         R5 1
        8 DUPTABLE                         R6 K6 [{"Style", "OnMouseEnter", "OnMouseLeave"}]
        9 DUPTABLE                         R7 K11 [{"Image", "Size", "ScaleType", "Transparency"}]
       10 SETTABLEKS                       R1 R7 K7 ["Image"]
       12 GETTABLEKS                       R9 R0 K0 ["props"]
       14 GETTABLEKS                       R8 R9 K8 ["Size"]
       16 SETTABLEKS                       R8 R7 K8 ["Size"]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R10 R0 K0 ["props"]
       21 GETTABLEKS                       R9 R10 K12 ["ImageScaleType"]
       23 GETTABLEKS                       R10 R3 K12 ["ImageScaleType"]
       25 CALL                             R8 2 1
       26 SETTABLEKS                       R8 R7 K9 ["ScaleType"]
       28 GETTABLEKS                       R9 R0 K13 ["_useAnimations"]
       30 JUMPIF                           R9 ; [+2]
       31 LOADNIL                          R8
       32 JUMP                             ; [+24]
       33 GETTABLEKS                       R10 R0 K14 ["state"]
       35 GETTABLEKS                       R9 R10 K15 ["indexOfImageShown"]
       37 JUMPIFNOTEQ                      R2 R9 ; [+6]
       39 GETTABLEKS                       R9 R0 K14 ["state"]
       41 GETTABLEKS                       R8 R9 K16 ["currentImageTransparency"]
       43 JUMP                             ; [+13]
       44 GETTABLEKS                       R10 R0 K14 ["state"]
       46 GETTABLEKS                       R9 R10 K17 ["indexOfNextImage"]
       48 JUMPIFNOTEQ                      R2 R9 ; [+7]
       50 GETTABLEKS                       R10 R0 K14 ["state"]
       52 GETTABLEKS                       R9 R10 K16 ["currentImageTransparency"]
       54 SUBRK                            R8 R18 K9 ["ScaleType"]
       55 JUMP                             ; [+1]
       56 LOADN                            R8 1
       57 SETTABLEKS                       R8 R7 K10 ["Transparency"]
       59 SETTABLEKS                       R7 R6 K3 ["Style"]
       61 GETTABLEKS                       R7 R0 K19 ["_onMouseEnter"]
       63 SETTABLEKS                       R7 R6 K4 ["OnMouseEnter"]
       65 GETTABLEKS                       R7 R0 K20 ["_onMouseLeave"]
       67 SETTABLEKS                       R7 R6 K5 ["OnMouseLeave"]
       69 DUPTABLE                         R7 K22 [{"UICorner"}]
       70 GETTABLEKS                       R10 R0 K0 ["props"]
       72 GETTABLEKS                       R9 R10 K23 ["ImageCornerRadius"]
       74 JUMPIFNOT                        R9 ; [+17]
       75 GETUPVAL                         R9 0
       76 GETTABLEKS                       R8 R9 K2 ["createElement"]
       78 LOADK                            R9 K21 ["UICorner"]
       79 DUPTABLE                         R10 K25 [{"CornerRadius"}]
       80 GETIMPORT                        R11 K28 [UDim.new]
       82 LOADN                            R12 0
       83 GETTABLEKS                       R14 R0 K0 ["props"]
       85 GETTABLEKS                       R13 R14 K23 ["ImageCornerRadius"]
       87 CALL                             R11 2 1
       88 SETTABLEKS                       R11 R10 K24 ["CornerRadius"]
       90 CALL                             R8 2 1
       91 JUMP                             ; [+1]
       92 LOADNIL                          R8
       93 SETTABLEKS                       R8 R7 K21 ["UICorner"]
       95 CALL                             R4 3 -1
       96 RETURN                           R4 -1

PROTO_12:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 GETTABLEKS                       R6 R0 K0 ["props"]
        5 GETTABLEKS                       R5 R6 K1 ["ImageStrings"]
        7 LENGTH                           R2 R5
        8 LOADN                            R3 1
        9 FORNPREP                         R2
       10 MOVE                             R6 R1
       11 MOVE                             R7 R4
       12 GETTABLEKS                       R12 R0 K0 ["props"]
       14 GETTABLEKS                       R11 R12 K1 ["ImageStrings"]
       16 GETTABLE                         R10 R11 R4
       17 MOVE                             R11 R4
       18 NAMECALL                         R8 R0 K2 ["_createImageElement"]
       20 CALL                             R8 3 -1
       21 FASTCALL                         TABLE_INSERT ; [+2]
       22 GETIMPORT                        R5 K5 [table.insert]
       24 CALL                             R5 -1 0
       25 FORNLOOP                         R2
       26 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"fromAutoRotation"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["fromAutoRotation"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K3 ["_moveRight"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"fromAutoRotation"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["fromAutoRotation"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K3 ["_moveLeft"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R3 K2 ["MoveButtons"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K3 ["createElement"]
        9 GETUPVAL                         R6 1
       10 DUPTABLE                         R7 K18 [{"AnchorPoint", "BackgroundColor", "Cursor", "HoverColor", "IconColor", "IconScaleType", "IconSize", "ImageTransparency", "LeftIcon", "OnClick", "Padding", "Position", "Size", "ZIndex"}]
       11 GETUPVAL                         R8 2
       12 GETTABLEKS                       R9 R2 K19 ["ButtonAnchorPoint"]
       14 GETTABLEKS                       R10 R4 K4 ["AnchorPoint"]
       16 CALL                             R8 2 1
       17 SETTABLEKS                       R8 R7 K4 ["AnchorPoint"]
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R9 R2 K20 ["ButtonBackgroundColor"]
       22 GETTABLEKS                       R10 R4 K5 ["BackgroundColor"]
       24 CALL                             R8 2 1
       25 SETTABLEKS                       R8 R7 K5 ["BackgroundColor"]
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R9 R2 K21 ["ButtonCursor"]
       30 GETTABLEKS                       R10 R4 K6 ["Cursor"]
       32 CALL                             R8 2 1
       33 SETTABLEKS                       R8 R7 K6 ["Cursor"]
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R9 R2 K22 ["ButtonHoverColor"]
       38 GETTABLEKS                       R10 R4 K7 ["HoverColor"]
       40 CALL                             R8 2 1
       41 SETTABLEKS                       R8 R7 K7 ["HoverColor"]
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R9 R2 K23 ["ButtonIconColor"]
       46 GETTABLEKS                       R10 R4 K24 ["Color"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K8 ["IconColor"]
       51 GETUPVAL                         R8 2
       52 GETTABLEKS                       R9 R2 K25 ["ButtonIconScaleType"]
       54 GETTABLEKS                       R10 R4 K9 ["IconScaleType"]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K9 ["IconScaleType"]
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R9 R2 K26 ["ButtonIconSize"]
       62 GETTABLEKS                       R10 R4 K10 ["IconSize"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K10 ["IconSize"]
       67 GETUPVAL                         R8 2
       68 GETTABLEKS                       R9 R2 K27 ["ButtonImageTransparency"]
       70 GETTABLEKS                       R10 R4 K11 ["ImageTransparency"]
       72 CALL                             R8 2 1
       73 SETTABLEKS                       R8 R7 K11 ["ImageTransparency"]
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R9 R2 K28 ["ButtonIcon"]
       78 GETTABLEKS                       R10 R1 K29 ["Icon"]
       80 CALL                             R8 2 1
       81 SETTABLEKS                       R8 R7 K12 ["LeftIcon"]
       83 GETTABLEKS                       R9 R1 K30 ["ShouldMoveRight"]
       85 JUMPIFNOT                        R9 ; [+3]
       86 NEWCLOSURE                       R8 P0
       87 CAPTURE                          VAL R0
       88 JUMP                             ; [+2]
       89 NEWCLOSURE                       R8 P1
       90 CAPTURE                          VAL R0
       91 SETTABLEKS                       R8 R7 K13 ["OnClick"]
       93 GETUPVAL                         R8 2
       94 GETTABLEKS                       R9 R2 K31 ["ButtonPadding"]
       96 GETTABLEKS                       R10 R1 K14 ["Padding"]
       98 CALL                             R8 2 1
       99 SETTABLEKS                       R8 R7 K14 ["Padding"]
      101 GETTABLEKS                       R8 R1 K15 ["Position"]
      103 SETTABLEKS                       R8 R7 K15 ["Position"]
      105 GETUPVAL                         R8 2
      106 GETTABLEKS                       R9 R2 K32 ["ButtonSize"]
      108 GETTABLEKS                       R10 R4 K16 ["Size"]
      110 CALL                             R8 2 1
      111 SETTABLEKS                       R8 R7 K16 ["Size"]
      113 GETTABLEKS                       R8 R1 K17 ["ZIndex"]
      115 SETTABLEKS                       R8 R7 K17 ["ZIndex"]
      117 CALL                             R5 2 -1
      118 RETURN                           R5 -1

PROTO_16:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["ImageStrings"]
        4 LENGTH                           R2 R3
        5 MOD                              R3 R1 R2
        6 JUMPIFNOTEQKN                    R3 K2 [0] ; [+2]
        8 MOVE                             R3 R2
        9 RETURN                           R3 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["_useAnimations"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R3 R0 K1 ["state"]
        5 GETTABLEKS                       R2 R3 K2 ["fadeInProgress"]
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETTABLEKS                       R5 R0 K1 ["state"]
       10 GETTABLEKS                       R4 R5 K3 ["indexOfNextImage"]
       12 NAMECALL                         R2 R0 K4 ["_resetAnimation"]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R3 R0 K1 ["state"]
       17 GETTABLEKS                       R2 R3 K5 ["indexOfImageShown"]
       19 LOADNIL                          R3
       20 ADD                              R6 R2 R1
       21 NAMECALL                         R4 R0 K6 ["_getInBoundsImagesIndex"]
       23 CALL                             R4 2 1
       24 MOVE                             R3 R4
       25 GETTABLEKS                       R4 R0 K0 ["_useAnimations"]
       27 JUMPIFNOT                        R4 ; [+26]
       28 DUPTABLE                         R6 K7 [{"indexOfImageShown", "indexOfNextImage", "fadeInProgress"}]
       29 SETTABLEKS                       R2 R6 K5 ["indexOfImageShown"]
       31 SETTABLEKS                       R3 R6 K3 ["indexOfNextImage"]
       33 LOADB                            R7 1
       34 SETTABLEKS                       R7 R6 K2 ["fadeInProgress"]
       36 NAMECALL                         R4 R0 K8 ["setState"]
       38 CALL                             R4 2 0
       39 GETTABLEKS                       R4 R0 K9 ["_transparencyMotor"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R6 R7 K10 ["spring"]
       44 LOADN                            R7 1
       45 DUPTABLE                         R8 K12 [{"frequency"}]
       46 LOADK                            R9 K13 [0.8]
       47 SETTABLEKS                       R9 R8 K11 ["frequency"]
       49 CALL                             R6 2 -1
       50 NAMECALL                         R4 R4 K14 ["setGoal"]
       52 CALL                             R4 -1 0
       53 JUMP                             ; [+6]
       54 DUPTABLE                         R6 K15 [{"indexOfImageShown"}]
       55 SETTABLEKS                       R3 R6 K5 ["indexOfImageShown"]
       57 NAMECALL                         R4 R0 K8 ["setState"]
       59 CALL                             R4 2 0
       60 GETTABLEKS                       R5 R0 K16 ["props"]
       62 GETTABLEKS                       R4 R5 K17 ["OnImageChange"]
       64 JUMPIFNOT                        R4 ; [+13]
       65 GETTABLEKS                       R4 R0 K0 ["_useAnimations"]
       67 JUMPIF                           R4 ; [+10]
       68 GETTABLEKS                       R5 R0 K16 ["props"]
       70 GETTABLEKS                       R4 R5 K17 ["OnImageChange"]
       72 MOVE                             R5 R3
       73 GETTABLEKS                       R7 R0 K1 ["state"]
       75 GETTABLEKS                       R6 R7 K18 ["fromAutoRotation"]
       77 CALL                             R4 2 0
       78 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R1 K0 ["ImageStrings"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R4 K0 ["ImageStrings"]
        6 JUMPIFEQ                         R2 R3 ; [+5]
        8 LOADB                            R4 1
        9 NAMECALL                         R2 R0 K2 ["_handlePreloadImages"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_unmounting"]
        3 JUMPIF                           R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["_update"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_20:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_unmounting"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["Heartbeat"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R1 R1 K2 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K3 ["_heartbeat"]
       13 DUPTABLE                         R3 K5 [{"imageElements"}]
       14 NAMECALL                         R4 R0 K6 ["_createImageElements"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R3 K4 ["imageElements"]
       19 NAMECALL                         R1 R0 K7 ["setState"]
       21 CALL                             R1 2 0
       22 GETTABLEKS                       R2 R0 K8 ["props"]
       24 GETTABLEKS                       R1 R2 K9 ["OnSetImages"]
       26 JUMPIFNOT                        R1 ; [+6]
       27 GETTABLEKS                       R2 R0 K8 ["props"]
       29 GETTABLEKS                       R1 R2 K9 ["OnSetImages"]
       31 LOADN                            R2 1
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_21:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_unmounting"]
        3 GETTABLEKS                       R1 R0 K1 ["_heartbeat"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K1 ["_heartbeat"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 GETTABLEKS                       R1 R0 K3 ["_useAnimations"]
       13 JUMPIFNOT                        R1 ; [+5]
       14 GETTABLEKS                       R1 R0 K4 ["_transparencyMotor"]
       16 NAMECALL                         R1 R1 K5 ["destroy"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETIMPORT                        R3 K4 [os.clock]
        6 CALL                             R3 0 1
        7 GETTABLEKS                       R4 R1 K5 ["autoAdvance"]
        9 JUMPIFNOT                        R4 ; [+18]
       10 GETTABLEKS                       R5 R1 K6 ["startTimeForAutoAdvanceTimer"]
       12 SUB                              R4 R3 R5
       13 GETTABLEKS                       R6 R2 K8 ["AutoAdvanceTimer"]
       15 DIVK                             R5 R6 K7 [1000]
       16 JUMPIFNOTLE                      R5 R4 ; [+11]
       18 DUPTABLE                         R6 K10 [{"fromAutoRotation"}]
       19 LOADB                            R7 1
       20 SETTABLEKS                       R7 R6 K9 ["fromAutoRotation"]
       22 NAMECALL                         R4 R0 K11 ["setState"]
       24 CALL                             R4 2 0
       25 GETTABLEKS                       R4 R0 K12 ["_moveRight"]
       27 CALL                             R4 0 0
       28 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["ImageStrings"]
        3 GETTABLEKS                       R5 R0 K1 ["props"]
        5 GETTABLEKS                       R4 R5 K0 ["ImageStrings"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+23]
        9 DUPTABLE                         R4 K3 [{"imageElements"}]
       10 NAMECALL                         R5 R0 K4 ["_createImageElements"]
       12 CALL                             R5 1 1
       13 SETTABLEKS                       R5 R4 K2 ["imageElements"]
       15 NAMECALL                         R2 R0 K5 ["setState"]
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R3 R0 K1 ["props"]
       20 GETTABLEKS                       R2 R3 K6 ["OnSetImages"]
       22 JUMPIFNOT                        R2 ; [+9]
       23 GETTABLEKS                       R3 R0 K1 ["props"]
       25 GETTABLEKS                       R2 R3 K6 ["OnSetImages"]
       27 GETTABLEKS                       R4 R0 K7 ["state"]
       29 GETTABLEKS                       R3 R4 K8 ["indexOfImageShown"]
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["ShowNavigationOnHover"]
        8 JUMPIFNOT                        R4 ; [+2]
        9 GETTABLEKS                       R4 R2 K4 ["isHovering"]
       11 GETTABLEKS                       R9 R0 K0 ["props"]
       13 GETTABLEKS                       R8 R9 K5 ["ImageStrings"]
       15 FASTCALL1                        TYPE R8 ; [+2]
       16 GETIMPORT                        R7 K7 [type]
       18 CALL                             R7 1 1
       19 JUMPIFEQKS                       R7 K8 ["table"] ; [+2]
       21 LOADB                            R6 0 +1
       22 LOADB                            R6 1
       23 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       25 LOADK                            R7 K9 ["Expected 'ImageStrings' to be a table."]
       26 GETIMPORT                        R5 K11 [assert]
       28 CALL                             R5 2 0
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K12 ["createElement"]
       32 GETUPVAL                         R6 1
       33 DUPTABLE                         R7 K15 [{"Size", "Style"}]
       34 GETUPVAL                         R8 2
       35 GETTABLEKS                       R9 R1 K13 ["Size"]
       37 GETTABLEKS                       R10 R3 K13 ["Size"]
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K13 ["Size"]
       42 GETTABLEKS                       R8 R1 K16 ["PaneStyle"]
       44 SETTABLEKS                       R8 R7 K14 ["Style"]
       46 DUPTABLE                         R8 K21 [{"LeftButton", "CurrentCarouselImage", "NextCarouselImage", "RightButton"}]
       47 JUMPIFNOT                        R4 ; [+6]
       48 GETTABLEKS                       R11 R3 K17 ["LeftButton"]
       50 NAMECALL                         R9 R0 K22 ["_createMoveButton"]
       52 CALL                             R9 2 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R9
       55 SETTABLEKS                       R9 R8 K17 ["LeftButton"]
       57 GETTABLEKS                       R13 R0 K0 ["props"]
       59 GETTABLEKS                       R12 R13 K5 ["ImageStrings"]
       61 GETTABLEKS                       R13 R2 K23 ["indexOfImageShown"]
       63 GETTABLE                         R11 R12 R13
       64 GETTABLEKS                       R12 R2 K23 ["indexOfImageShown"]
       66 NAMECALL                         R9 R0 K24 ["_createImageElement"]
       68 CALL                             R9 3 1
       69 SETTABLEKS                       R9 R8 K18 ["CurrentCarouselImage"]
       71 GETTABLEKS                       R10 R0 K25 ["_useAnimations"]
       73 JUMPIFNOT                        R10 ; [+19]
       74 GETTABLEKS                       R10 R2 K26 ["fadeInProgress"]
       76 JUMPIFNOT                        R10 ; [+16]
       77 GETTABLEKS                       R10 R2 K27 ["indexOfNextImage"]
       79 JUMPIFNOT                        R10 ; [+13]
       80 GETTABLEKS                       R13 R0 K0 ["props"]
       82 GETTABLEKS                       R12 R13 K5 ["ImageStrings"]
       84 GETTABLEKS                       R13 R2 K27 ["indexOfNextImage"]
       86 GETTABLE                         R11 R12 R13
       87 GETTABLEKS                       R12 R2 K27 ["indexOfNextImage"]
       89 NAMECALL                         R9 R0 K24 ["_createImageElement"]
       91 CALL                             R9 3 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R9
       94 SETTABLEKS                       R9 R8 K19 ["NextCarouselImage"]
       96 JUMPIFNOT                        R4 ; [+6]
       97 GETTABLEKS                       R11 R3 K20 ["RightButton"]
       99 NAMECALL                         R9 R0 K22 ["_createMoveButton"]
      101 CALL                             R9 2 1
      102 JUMP                             ; [+1]
      103 LOADNIL                          R9
      104 SETTABLEKS                       R9 R8 K20 ["RightButton"]
      106 CALL                             R5 3 -1
      107 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContentProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 LOADK                            R4 K6 ["UI"]
       10 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R1 R2 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R4 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R5 R1 K6 ["UI"]
       26 GETTABLEKS                       R4 R5 K12 ["ContextServices"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K13 ["withContext"]
       31 GETIMPORT                        R6 K10 [require]
       33 GETTABLEKS                       R7 R1 K14 ["Util"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R5 R6 K15 ["Typecheck"]
       38 GETIMPORT                        R6 K10 [require]
       40 GETTABLEKS                       R8 R1 K8 ["Parent"]
       42 GETTABLEKS                       R7 R8 K16 ["Dash"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R6 K17 ["shallowEqual"]
       47 GETTABLEKS                       R9 R1 K8 ["Parent"]
       49 LOADK                            R11 K18 ["Otter"]
       50 NAMECALL                         R9 R9 K19 ["FindFirstChild"]
       52 CALL                             R9 2 1
       53 JUMPIFNOT                        R9 ; [+8]
       54 GETIMPORT                        R8 K10 [require]
       56 GETTABLEKS                       R10 R1 K8 ["Parent"]
       58 GETTABLEKS                       R9 R10 K18 ["Otter"]
       60 CALL                             R8 1 1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R8
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R10 R1 K14 ["Util"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R9 K20 ["prioritize"]
       70 GETIMPORT                        R11 K10 [require]
       72 GETTABLEKS                       R14 R1 K6 ["UI"]
       74 GETTABLEKS                       R13 R14 K21 ["Components"]
       76 GETTABLEKS                       R12 R13 K22 ["Image"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K10 [require]
       81 GETTABLEKS                       R15 R1 K6 ["UI"]
       83 GETTABLEKS                       R14 R15 K21 ["Components"]
       85 GETTABLEKS                       R13 R14 K23 ["IconButton"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K10 [require]
       90 GETTABLEKS                       R16 R1 K6 ["UI"]
       92 GETTABLEKS                       R15 R16 K21 ["Components"]
       94 GETTABLEKS                       R14 R15 K24 ["Pane"]
       96 CALL                             R13 1 1
       97 GETTABLEKS                       R14 R2 K25 ["PureComponent"]
       99 LOADK                            R16 K26 ["ImageCarousel"]
      100 NAMECALL                         R14 R14 K27 ["extend"]
      102 CALL                             R14 2 1
      103 GETTABLEKS                       R15 R5 K28 ["wrap"]
      105 MOVE                             R16 R14
      106 GETIMPORT                        R17 K5 [script]
      108 CALL                             R15 2 0
      109 GETIMPORT                        R15 K1 [game]
      111 LOADK                            R17 K29 ["RunService"]
      112 NAMECALL                         R15 R15 K3 ["GetService"]
      114 CALL                             R15 2 1
      115 DUPTABLE                         R16 K32 [{"AutoAdvanceTimer", "OnImageChangeTransparencyThreshold"}]
      116 LOADN                            R17 136
      117 SETTABLEKS                       R17 R16 K30 ["AutoAdvanceTimer"]
      119 LOADN                            R17 1
      120 SETTABLEKS                       R17 R16 K31 ["OnImageChangeTransparencyThreshold"]
      122 SETTABLEKS                       R16 R14 K33 ["defaultProps"]
      124 DUPCLOSURE                       R16 K34 [PROTO_4]
      125 CAPTURE                          VAL R8
      126 SETTABLEKS                       R16 R14 K35 ["init"]
      128 DUPCLOSURE                       R16 K36 [PROTO_7]
      129 CAPTURE                          VAL R8
      130 SETTABLEKS                       R16 R14 K37 ["_createOtterMotors"]
      132 DUPCLOSURE                       R16 K38 [PROTO_8]
      133 CAPTURE                          VAL R8
      134 SETTABLEKS                       R16 R14 K39 ["_resetAnimation"]
      136 DUPCLOSURE                       R16 K40 [PROTO_10]
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R16 R14 K41 ["_handlePreloadImages"]
      140 DUPCLOSURE                       R16 K42 [PROTO_11]
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R10
      144 SETTABLEKS                       R16 R14 K43 ["_createImageElement"]
      146 DUPCLOSURE                       R16 K44 [PROTO_12]
      147 SETTABLEKS                       R16 R14 K45 ["_createImageElements"]
      149 DUPCLOSURE                       R16 K46 [PROTO_15]
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R10
      153 SETTABLEKS                       R16 R14 K47 ["_createMoveButton"]
      155 DUPCLOSURE                       R16 K48 [PROTO_16]
      156 SETTABLEKS                       R16 R14 K49 ["_getInBoundsImagesIndex"]
      158 DUPCLOSURE                       R16 K50 [PROTO_17]
      159 CAPTURE                          VAL R8
      160 SETTABLEKS                       R16 R14 K51 ["_changeImageIndexBy"]
      162 DUPCLOSURE                       R16 K52 [PROTO_18]
      163 SETTABLEKS                       R16 R14 K53 ["willUpdate"]
      165 DUPCLOSURE                       R16 K54 [PROTO_20]
      166 CAPTURE                          VAL R15
      167 SETTABLEKS                       R16 R14 K55 ["didMount"]
      169 DUPCLOSURE                       R16 K56 [PROTO_21]
      170 SETTABLEKS                       R16 R14 K57 ["willUnmount"]
      172 DUPCLOSURE                       R16 K58 [PROTO_22]
      173 SETTABLEKS                       R16 R14 K59 ["_update"]
      175 DUPCLOSURE                       R16 K60 [PROTO_23]
      176 CAPTURE                          VAL R7
      177 SETTABLEKS                       R16 R14 K61 ["didUpdate"]
      179 DUPCLOSURE                       R16 K62 [PROTO_24]
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R10
      183 SETTABLEKS                       R16 R14 K63 ["render"]
      185 MOVE                             R16 R4
      186 DUPTABLE                         R17 K65 [{"Stylizer"}]
      187 GETTABLEKS                       R18 R3 K64 ["Stylizer"]
      189 SETTABLEKS                       R18 R17 K64 ["Stylizer"]
      191 CALL                             R16 1 1
      192 MOVE                             R17 R14
      193 CALL                             R16 1 1
      194 MOVE                             R14 R16
      195 RETURN                           R14 1
