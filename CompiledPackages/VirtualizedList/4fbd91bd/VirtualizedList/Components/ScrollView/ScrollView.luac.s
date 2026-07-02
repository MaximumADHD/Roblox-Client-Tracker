PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      1
        1 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"setOffset", "interpolate"}]
        2 DUPCLOSURE                       R1 K3 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K0 ["setOffset"]
        5 DUPCLOSURE                       R1 K4 [PROTO_1]
        6 SETTABLEKS                       R1 R0 K1 ["interpolate"]
        8 RETURN                           R0 1

PROTO_3:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 RETURN                           R0 1

PROTO_4:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{[1] = 100}]
        2 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OS"]
        3 GETTABLE                         R1 R0 R2
        4 RETURN                           R1 1

PROTO_6:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 RETURN                           R0 1

PROTO_7:
        0 PREPVARARGS                      0
        1 RETURN                           R0 0

PROTO_8:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 RETURN                           R0 1

PROTO_9:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [warn]
        3 LOADK                            R1 K2 ["FrameRateLogger.beginScroll not implemented"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [warn]
        3 LOADK                            R1 K2 ["FrameRateLogger.endScroll not implemented"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [warn]
        3 LOADK                            R1 K2 ["TextInputState.blurTextInput not implemented"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [warn]
        3 LOADK                            R1 K2 ["TextInputState.currentlyFocusedInput not implemented"]
        4 CALL                             R0 1 0
        5 LOADNIL                          R0
        6 RETURN                           R0 1

PROTO_13:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [warn]
        3 LOADK                            R1 K2 ["TextInputState.isTextInput not implemented"]
        4 CALL                             R0 1 0
        5 LOADNIL                          R0
        6 RETURN                           R0 1

PROTO_14:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R1 K2 ["dismissKeyboard not implemented"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 RETURN                           R0 1

PROTO_16:
        0 DUPTABLE                         R1 K2 [{"outer", "inner"}]
        1 SETTABLEKS                       R0 R1 K0 ["outer"]
        3 SETTABLEKS                       R0 R1 K1 ["inner"]
        5 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["scrollViewRef"]
        5 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_scrollViewRef"]
        3 JUMPIFEQKNIL                     R0 ; [+51]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["getScrollResponder"]
        8 SETTABLEKS                       R1 R0 K1 ["getScrollResponder"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["getScrollableNode"]
       13 SETTABLEKS                       R1 R0 K2 ["getScrollableNode"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K3 ["getInnerViewNode"]
       18 SETTABLEKS                       R1 R0 K3 ["getInnerViewNode"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K4 ["getInnerViewRef"]
       23 SETTABLEKS                       R1 R0 K4 ["getInnerViewRef"]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K5 ["getNativeScrollRef"]
       28 SETTABLEKS                       R1 R0 K5 ["getNativeScrollRef"]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K6 ["scrollTo"]
       33 SETTABLEKS                       R1 R0 K6 ["scrollTo"]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K7 ["scrollToEnd"]
       38 SETTABLEKS                       R1 R0 K7 ["scrollToEnd"]
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K8 ["flashScrollIndicators"]
       43 SETTABLEKS                       R1 R0 K8 ["flashScrollIndicators"]
       45 GETUPVAL                         R1 0
       46 GETTABLEKS                       R1 R1 K9 ["scrollResponderZoomTo"]
       48 SETTABLEKS                       R1 R0 K9 ["scrollResponderZoomTo"]
       50 GETUPVAL                         R1 0
       51 GETTABLEKS                       R1 R1 K10 ["scrollResponderScrollNativeHandleToKeyboard"]
       53 SETTABLEKS                       R1 R0 K10 ["scrollResponderScrollNativeHandleToKeyboard"]
       55 LOADNIL                          R1
       56 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["_scrollViewRef"]
        4 NAMECALL                         R0 R0 K1 ["findNodeHandle"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["_innerViewRef"]
        4 NAMECALL                         R0 R0 K1 ["findNodeHandle"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_innerViewRef"]
        3 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_scrollViewRef"]
        3 RETURN                           R0 1

PROTO_24:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 JUMPIFEQKNIL                     R0 ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["y"]
        7 GETTABLEKS                       R1 R0 K1 ["x"]
        9 GETTABLEKS                       R3 R0 K2 ["animated"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["_scrollViewRef"]
       14 JUMPIFEQKNIL                     R4 ; [+10]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["_scrollViewRef"]
       19 GETTABLEKS                       R4 R4 K4 ["_nativeRef"]
       21 GETTABLEKS                       R4 R4 K5 ["current"]
       23 JUMPIFNOTEQKNIL                  R4 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K6 ["scrollTo"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K3 ["_scrollViewRef"]
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R7 R7 K7 ["toJSBoolean"]
       35 MOVE                             R8 R1
       36 CALL                             R7 1 1
       37 JUMPIFNOT                        R7 ; [+2]
       38 MOVE                             R6 R1
       39 JUMPIF                           R6 ; [+1]
       40 LOADN                            R6 0
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R8 R8 K7 ["toJSBoolean"]
       44 MOVE                             R9 R2
       45 CALL                             R8 1 1
       46 JUMPIFNOT                        R8 ; [+2]
       47 MOVE                             R7 R2
       48 JUMPIF                           R7 ; [+1]
       49 LOADN                            R7 0
       50 NOT                              R9 R3
       51 NOT                              R8 R9
       52 CALL                             R4 4 0
       53 RETURN                           R0 0

PROTO_25:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETTABLEKS                       R2 R0 K0 ["animated"]
        5 JUMPIFNOTEQKB                    R2 FALSE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K1 ["_scrollViewRef"]
       12 JUMPIFNOTEQKNIL                  R2 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K2 ["scrollToEnd"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K1 ["_scrollViewRef"]
       21 MOVE                             R4 R1
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_scrollViewRef"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["flashScrollIndicators"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["_scrollViewRef"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["toJSBoolean"]
        4 MOVE                             R6 R1
        5 CALL                             R5 1 1
        6 JUMPIFNOT                        R5 ; [+2]
        7 MOVE                             R4 R1
        8 JUMPIF                           R4 ; [+1]
        9 LOADN                            R4 0
       10 SETTABLEKS                       R4 R3 K1 ["_additionalScrollOffset"]
       12 GETUPVAL                         R3 0
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
       16 MOVE                             R5 R2
       17 CALL                             R4 1 1
       18 SETTABLEKS                       R4 R3 K2 ["_preventNegativeScrollOffset"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K3 ["_innerViewRef"]
       23 JUMPIFNOTEQKNIL                  R3 ; [+2]
       25 RETURN                           R0 0
       26 FASTCALL1                        TYPEOF R0 ; [+3]
       27 MOVE                             R4 R0
       28 GETIMPORT                        R3 K5 [typeof]
       30 CALL                             R3 1 1
       31 JUMPIFNOTEQKS                    R3 K6 ["number"] ; [+18]
       33 GETUPVAL                         R3 2
       34 MOVE                             R5 R0
       35 GETUPVAL                         R6 3
       36 GETUPVAL                         R8 0
       37 NAMECALL                         R6 R6 K7 ["findNodeHandle"]
       39 CALL                             R6 2 1
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K8 ["_textInputFocusError"]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K9 ["_inputMeasureAndScrollToKeyboard"]
       46 NAMECALL                         R3 R3 K10 ["measureLayout"]
       48 CALL                             R3 5 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K3 ["_innerViewRef"]
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K9 ["_inputMeasureAndScrollToKeyboard"]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K8 ["_textInputFocusError"]
       59 NAMECALL                         R3 R0 K10 ["measureLayout"]
       61 CALL                             R3 4 0
       62 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["OS"]
        4 JUMPIFEQKS                       R4 K1 ["ios"] ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 LOADK                            R4 K2 ["zoomToRect is not implemented"]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K3 ["indexOf"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K4 ["keys"]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 LOADK                            R4 K5 ["animated"]
       19 CALL                             R2 2 1
       20 JUMPIFEQKN                       R2 K6 [-1] ; [+10]
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R3 R0 K5 ["animated"]
       25 SETTABLEKS                       R3 R2 K7 ["_animated"]
       27 LOADNIL                          R2
       28 SETTABLEKS                       R2 R0 K5 ["animated"]
       30 JUMP                             ; [+12]
       31 FASTCALL1                        TYPEOF R1 ; [+3]
       32 MOVE                             R3 R1
       33 GETIMPORT                        R2 K9 [typeof]
       35 CALL                             R2 1 1
       36 JUMPIFEQKS                       R2 K10 ["nil"] ; [+6]
       38 GETUPVAL                         R2 5
       39 GETTABLEKS                       R2 R2 K11 ["warn"]
       41 LOADK                            R3 K12 ["`scrollResponderZoomTo` `animated` argument is deprecated. Use `options.animated` instead"]
       42 CALL                             R2 1 0
       43 GETUPVAL                         R2 4
       44 GETTABLEKS                       R2 R2 K13 ["_scrollViewRef"]
       46 JUMPIFNOTEQKNIL                  R2 ; [+2]
       48 RETURN                           R0 0
       49 GETUPVAL                         R2 6
       50 GETTABLEKS                       R2 R2 K14 ["zoomToRect"]
       52 GETUPVAL                         R3 4
       53 GETTABLEKS                       R3 R3 K13 ["_scrollViewRef"]
       55 MOVE                             R4 R0
       56 JUMPIFNOTEQKB                    R1 FALSE ; [+2]
       58 LOADB                            R5 0 +1
       59 LOADB                            R5 1
       60 CALL                             R2 3 0
       61 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_keyboardWillOpenTo"]
        3 JUMPIFEQKNIL                     R0 ; [+9]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["_keyboardWillOpenTo"]
        8 GETTABLEKS                       R0 R0 K1 ["endCoordinates"]
       10 GETTABLEKS                       R0 R0 K2 ["screenY"]
       12 SETUPVAL                         R0 1
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 1
       15 SUB                              R2 R3 R4
       16 GETUPVAL                         R3 3
       17 ADD                              R1 R2 R3
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K3 ["_additionalScrollOffset"]
       21 ADD                              R0 R1 R2
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K4 ["_preventNegativeScrollOffset"]
       25 JUMPIFNOTEQKB                    R1 TRUE ; [+9]
       27 LOADN                            R2 0
       28 FASTCALL2                        MATH_MAX R2 R0 ; [+4]
       30 MOVE                             R3 R0
       31 GETIMPORT                        R1 K7 [math.max]
       33 CALL                             R1 2 1
       34 MOVE                             R0 R1
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K8 ["scrollTo"]
       38 DUPTABLE                         R2 K14 [{["x"] = 0, ["y"], ["animated"] = True}]
       39 SETTABLEKS                       R0 R2 K11 ["y"]
       41 CALL                             R1 1 0
       42 GETUPVAL                         R1 0
       43 LOADN                            R2 0
       44 SETTABLEKS                       R2 R1 K3 ["_additionalScrollOffset"]
       46 GETUPVAL                         R1 0
       47 LOADB                            R2 0
       48 SETTABLEKS                       R2 R1 K4 ["_preventNegativeScrollOffset"]
       50 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R4 0
        1 LOADK                            R6 K0 ["window"]
        2 NAMECALL                         R4 R4 K1 ["get"]
        4 CALL                             R4 2 1
        5 GETTABLEKS                       R4 R4 K2 ["height"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          REF R4
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R3
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K3 ["_keyboardWillOpenTo"]
       15 JUMPIFNOTEQKNIL                  R6 ; [+7]
       17 GETUPVAL                         R6 2
       18 NEWCLOSURE                       R7 P1
       19 CAPTURE                          VAL R5
       20 LOADN                            R8 0
       21 CALL                             R6 2 0
       22 JUMP                             ; [+2]
       23 MOVE                             R6 R5
       24 CALL                             R6 0 0
       25 CLOSEUPVALS                      R4
       26 RETURN                           R0 0

PROTO_32:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+23]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["props"]
        8 GETTABLEKS                       R1 R1 K4 ["onScroll"]
       10 JUMPIFNOT                        R1 ; [+17]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["props"]
       14 GETTABLEKS                       R1 R1 K5 ["scrollEventThrottle"]
       16 JUMPIFNOTEQKNIL                  R1 ; [+11]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K6 ["OS"]
       21 JUMPIFNOTEQKS                    R1 K7 ["ios"] ; [+6]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K8 ["log"]
       26 LOADK                            R2 K9 ["You specified `onScroll` on a <ScrollView> but not `scrollEventThrottle`. You will only receive one event. Using `16` you get all the events but be aware that it may cause frame drops, use a bigger number if you don't need as much precision."]
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 0
       29 LOADB                            R2 1
       30 SETTABLEKS                       R2 R1 K10 ["_observedScrollSinceBecomingResponder"]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K3 ["props"]
       35 GETTABLEKS                       R1 R1 K4 ["onScroll"]
       37 JUMPIFNOT                        R1 ; [+7]
       38 GETUPVAL                         R1 0
       39 GETTABLEKS                       R1 R1 K3 ["props"]
       41 GETTABLEKS                       R1 R1 K4 ["onScroll"]
       43 MOVE                             R2 R0
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["invertStickyHeaders"]
        5 JUMPIFNOTEQKB                    R1 TRUE ; [+12]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K3 [{"layoutHeight"}]
        9 GETTABLEKS                       R4 R0 K4 ["AbsoluteWindowSize"]
       11 GETTABLEKS                       R4 R4 K5 ["Y"]
       13 SETTABLEKS                       R4 R3 K2 ["layoutHeight"]
       15 NAMECALL                         R1 R1 K6 ["setState"]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["props"]
       21 GETTABLEKS                       R1 R1 K7 ["onLayout"]
       23 JUMPIFNOT                        R1 ; [+7]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K0 ["props"]
       27 GETTABLEKS                       R1 R1 K7 ["onLayout"]
       29 MOVE                             R2 R0
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_scrollViewRef"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["_scrollViewRef"]
        9 GETTABLEKS                       R2 R2 K1 ["_nativeRef"]
       11 GETTABLEKS                       R2 R2 K2 ["current"]
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["props"]
       19 GETTABLEKS                       R3 R3 K4 ["AutomaticCanvasSize"]
       21 GETIMPORT                        R4 K8 [Enum.AutomaticSize.XY]
       23 JUMPIFEQ                         R3 R4 ; [+8]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K3 ["props"]
       28 GETTABLEKS                       R3 R3 K4 ["AutomaticCanvasSize"]
       30 JUMPIFNOTEQKNIL                  R3 ; [+11]
       32 GETIMPORT                        R3 K11 [UDim2.new]
       34 LOADN                            R4 0
       35 MOVE                             R5 R0
       36 LOADN                            R6 0
       37 MOVE                             R7 R1
       38 CALL                             R3 4 1
       39 SETTABLEKS                       R3 R2 K12 ["CanvasSize"]
       41 RETURN                           R0 0
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K3 ["props"]
       45 GETTABLEKS                       R3 R3 K4 ["AutomaticCanvasSize"]
       47 GETIMPORT                        R4 K14 [Enum.AutomaticSize.X]
       49 JUMPIFNOTEQ                      R3 R4 ; [+14]
       51 GETIMPORT                        R3 K11 [UDim2.new]
       53 LOADN                            R4 0
       54 MOVE                             R5 R0
       55 LOADN                            R6 0
       56 GETTABLEKS                       R7 R2 K15 ["AbsoluteCanvasSize"]
       58 GETTABLEKS                       R7 R7 K16 ["Y"]
       60 CALL                             R3 4 1
       61 SETTABLEKS                       R3 R2 K12 ["CanvasSize"]
       63 RETURN                           R0 0
       64 GETUPVAL                         R3 0
       65 GETTABLEKS                       R3 R3 K3 ["props"]
       67 GETTABLEKS                       R3 R3 K4 ["AutomaticCanvasSize"]
       69 GETIMPORT                        R4 K17 [Enum.AutomaticSize.Y]
       71 JUMPIFNOTEQ                      R3 R4 ; [+13]
       73 GETIMPORT                        R3 K11 [UDim2.new]
       75 LOADN                            R4 0
       76 GETTABLEKS                       R5 R2 K15 ["AbsoluteCanvasSize"]
       78 GETTABLEKS                       R5 R5 K13 ["X"]
       80 LOADN                            R6 0
       81 MOVE                             R7 R1
       82 CALL                             R3 4 1
       83 SETTABLEKS                       R3 R2 K12 ["CanvasSize"]
       85 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        6 GETTABLEKS                       R2 R2 K2 ["Y"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["props"]
       11 GETTABLEKS                       R3 R3 K4 ["overrideAutomaticCanvasSize"]
       13 JUMPIFNOT                        R3 ; [+6]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K5 ["_overrideAutomaticCanvasSize"]
       17 MOVE                             R4 R1
       18 MOVE                             R5 R2
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K3 ["props"]
       23 GETTABLEKS                       R3 R3 K6 ["onContentSizeChange"]
       25 JUMPIFNOT                        R3 ; [+8]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K3 ["props"]
       29 GETTABLEKS                       R3 R3 K6 ["onContentSizeChange"]
       31 MOVE                             R4 R1
       32 MOVE                             R5 R2
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["innerViewRef"]
        5 RETURN                           R0 1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_innerViewRef"]
        3 LOADNIL                          R1
        4 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_keyboardWillOpenTo"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["onKeyboardWillShow"]
        8 JUMPIFNOT                        R1 ; [+7]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["props"]
       12 GETTABLEKS                       R1 R1 K2 ["onKeyboardWillShow"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["_keyboardWillOpenTo"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["props"]
        7 GETTABLEKS                       R1 R1 K2 ["onKeyboardWillHide"]
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["props"]
       13 GETTABLEKS                       R1 R1 K2 ["onKeyboardWillHide"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R0 R1 K1 ["_keyboardWillOpenTo"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["props"]
       12 GETTABLEKS                       R1 R1 K3 ["onKeyboardDidShow"]
       14 JUMPIFNOT                        R1 ; [+7]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K2 ["props"]
       18 GETTABLEKS                       R1 R1 K3 ["onKeyboardDidShow"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["_keyboardWillOpenTo"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["props"]
        7 GETTABLEKS                       R1 R1 K2 ["onKeyboardDidHide"]
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["props"]
       13 GETTABLEKS                       R1 R1 K2 ["onKeyboardDidHide"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [os.clock]
        3 CALL                             R3 0 1
        4 MULK                             R2 R3 K0 [1000]
        5 SETTABLEKS                       R2 R1 K4 ["_lastMomentumScrollBeginTime"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K5 ["props"]
       10 GETTABLEKS                       R1 R1 K6 ["onMomentumScrollBegin"]
       12 JUMPIFNOT                        R1 ; [+7]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K5 ["props"]
       16 GETTABLEKS                       R1 R1 K6 ["onMomentumScrollBegin"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["endScroll"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETIMPORT                        R3 K4 [os.clock]
        7 CALL                             R3 0 1
        8 MULK                             R2 R3 K1 [1000]
        9 SETTABLEKS                       R2 R1 K5 ["_lastMomentumScrollEndTime"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K6 ["props"]
       14 GETTABLEKS                       R1 R1 K7 ["onMomentumScrollEnd"]
       16 JUMPIFNOT                        R1 ; [+7]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K6 ["props"]
       20 GETTABLEKS                       R1 R1 K7 ["onMomentumScrollEnd"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["beginScroll"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["OS"]
        7 JUMPIFNOTEQKS                    R1 K2 ["android"] ; [+12]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K3 ["props"]
       12 GETTABLEKS                       R1 R1 K4 ["keyboardDismissMode"]
       14 JUMPIFNOTEQKS                    R1 K5 ["on-drag"] ; [+5]
       16 GETIMPORT                        R1 K7 [warn]
       18 LOADK                            R2 K8 ["dismissKeyboard not implemented"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R1 R1 K3 ["props"]
       23 GETTABLEKS                       R1 R1 K9 ["onScrollBeginDrag"]
       25 JUMPIFNOT                        R1 ; [+7]
       26 GETUPVAL                         R1 2
       27 GETTABLEKS                       R1 R1 K3 ["props"]
       29 GETTABLEKS                       R1 R1 K9 ["onScrollBeginDrag"]
       31 MOVE                             R2 R0
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["_isAnimating"]
        3 CALL                             R2 1 1
        4 JUMPIF                           R2 ; [+20]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["toJSBoolean"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+10]
       11 LOADNIL                          R2
       12 GETTABLEKS                       R2 R2 K2 ["x"]
       14 JUMPIFNOTEQKN                    R2 K3 [0] ; [+10]
       16 LOADNIL                          R2
       17 GETTABLEKS                       R2 R2 K4 ["y"]
       19 JUMPIFNOTEQKN                    R2 K3 [0] ; [+5]
       21 GETUPVAL                         R2 2
       22 NAMECALL                         R2 R2 K5 ["endScroll"]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K6 ["props"]
       28 GETTABLEKS                       R2 R2 K7 ["onScrollEndDrag"]
       30 JUMPIFNOT                        R2 ; [+8]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K6 ["props"]
       34 GETTABLEKS                       R2 R2 K7 ["onScrollEndDrag"]
       36 MOVE                             R3 R0
       37 MOVE                             R4 R1
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

PROTO_46:
        0 GETIMPORT                        R1 K3 [os.clock]
        2 CALL                             R1 0 1
        3 MULK                             R0 R1 K0 [1000]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K4 ["_lastMomentumScrollEndTime"]
        7 SUB                              R1 R0 R2
        8 LOADN                            R3 16
        9 JUMPIFLT                         R1 R3 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["_observedScrollSinceBecomingResponder"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["props"]
        7 GETTABLEKS                       R1 R1 K2 ["onResponderGrant"]
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["props"]
       13 GETTABLEKS                       R1 R1 K2 ["onResponderGrant"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 0
       18 GETUPVAL                         R2 0
       19 NAMECALL                         R2 R2 K3 ["_isAnimating"]
       21 CALL                             R2 1 1
       22 SETTABLEKS                       R2 R1 K4 ["_becameResponderWhileAnimating"]
       24 RETURN                           R0 0

PROTO_48:
        0 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R4 R0 K0 ["nativeEvent"]
        3 GETTABLEKS                       R4 R4 K1 ["touches"]
        5 LENGTH                           R3 R4
        6 JUMPIFNOTEQKN                    R3 K2 [0] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K3 ["_isTouching"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["props"]
       15 GETTABLEKS                       R1 R1 K5 ["onResponderRelease"]
       17 JUMPIFNOT                        R1 ; [+7]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K4 ["props"]
       21 GETTABLEKS                       R1 R1 K5 ["onResponderRelease"]
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 GETTABLEKS                       R2 R0 K6 ["target"]
       27 FASTCALL1                        TYPEOF R2 ; [+2]
       28 GETIMPORT                        R1 K8 [typeof]
       30 CALL                             R1 1 1
       31 JUMPIFNOTEQKS                    R1 K9 ["number"] ; [+12]
       33 GETIMPORT                        R1 K11 [_G]
       35 GETTABLEKS                       R1 R1 K12 ["__DEV__"]
       37 JUMPIFNOT                        R1 ; [+5]
       38 GETUPVAL                         R1 1
       39 GETTABLEKS                       R1 R1 K13 ["error"]
       41 LOADK                            R2 K14 ["Did not expect event target to be a number. Should have been a native component"]
       42 CALL                             R1 1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R1 2
       45 NAMECALL                         R1 R1 K15 ["currentlyFocusedInput"]
       47 CALL                             R1 1 1
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K4 ["props"]
       51 GETTABLEKS                       R2 R2 K16 ["keyboardShouldPersistTaps"]
       53 JUMPIFEQKB                       R2 TRUE ; [+30]
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K4 ["props"]
       58 GETTABLEKS                       R2 R2 K16 ["keyboardShouldPersistTaps"]
       60 JUMPIFEQKS                       R2 K17 ["always"] ; [+23]
       62 GETUPVAL                         R2 0
       63 NAMECALL                         R2 R2 K18 ["_keyboardIsDismissible"]
       65 CALL                             R2 1 1
       66 JUMPIFNOT                        R2 ; [+17]
       67 GETTABLEKS                       R2 R0 K6 ["target"]
       69 JUMPIFEQ                         R2 R1 ; [+14]
       71 GETUPVAL                         R2 0
       72 GETTABLEKS                       R2 R2 K19 ["_observedScrollSinceBecomingResponder"]
       74 JUMPIF                           R2 ; [+9]
       75 GETUPVAL                         R2 0
       76 GETTABLEKS                       R2 R2 K20 ["_becameResponderWhileAnimating"]
       78 JUMPIF                           R2 ; [+5]
       79 GETUPVAL                         R2 2
       80 MOVE                             R4 R1
       81 NAMECALL                         R2 R2 K21 ["blurTextInput"]
       83 CALL                             R2 2 0
       84 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_observedScrollSinceBecomingResponder"]
        3 NOT                              R0 R1
        4 RETURN                           R0 1

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["disableScrollViewPanResponder"]
        5 JUMPIFNOTEQKB                    R0 TRUE ; [+3]
        7 LOADB                            R0 0
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K2 ["_isTouching"]
       12 RETURN                           R0 1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["disableScrollViewPanResponder"]
        5 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 1
       10 NAMECALL                         R1 R1 K2 ["currentlyFocusedInput"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["props"]
       16 GETTABLEKS                       R2 R2 K3 ["keyboardShouldPersistTaps"]
       18 JUMPIFNOTEQKS                    R2 K4 ["handled"] ; [+12]
       20 GETUPVAL                         R2 0
       21 NAMECALL                         R2 R2 K5 ["_keyboardIsDismissible"]
       23 CALL                             R2 1 1
       24 JUMPIFNOT                        R2 ; [+6]
       25 GETTABLEKS                       R2 R0 K6 ["target"]
       27 JUMPIFEQ                         R2 R1 ; [+3]
       29 LOADB                            R2 1
       30 RETURN                           R2 1
       31 LOADB                            R2 0
       32 RETURN                           R2 1

PROTO_53:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_isAnimating"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["props"]
       10 GETTABLEKS                       R1 R1 K2 ["disableScrollViewPanResponder"]
       12 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K1 ["props"]
       19 GETTABLEKS                       R1 R1 K3 ["keyboardShouldPersistTaps"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K4 ["toJSBoolean"]
       24 MOVE                             R4 R1
       25 CALL                             R3 1 1
       26 NOT                              R2 R3
       27 JUMPIF                           R2 ; [+4]
       28 JUMPIFEQKS                       R1 K5 ["never"] ; [+2]
       30 LOADB                            R2 0 +1
       31 LOADB                            R2 1
       32 GETTABLEKS                       R4 R0 K6 ["target"]
       34 FASTCALL1                        TYPEOF R4 ; [+2]
       35 GETIMPORT                        R3 K8 [typeof]
       37 CALL                             R3 1 1
       38 JUMPIFNOTEQKS                    R3 K9 ["number"] ; [+13]
       40 GETIMPORT                        R3 K11 [_G]
       42 GETTABLEKS                       R3 R3 K12 ["__DEV__"]
       44 JUMPIFNOT                        R3 ; [+5]
       45 GETUPVAL                         R3 2
       46 GETTABLEKS                       R3 R3 K13 ["error"]
       48 LOADK                            R4 K14 ["Did not expect event target to be a number. Should have been a native component"]
       49 CALL                             R3 1 0
       50 LOADB                            R3 0
       51 RETURN                           R3 1
       52 JUMPIFNOT                        R2 ; [+22]
       53 GETUPVAL                         R3 0
       54 NAMECALL                         R3 R3 K15 ["_keyboardIsDismissible"]
       56 CALL                             R3 1 1
       57 JUMPIFNOT                        R3 ; [+17]
       58 GETTABLEKS                       R3 R0 K6 ["target"]
       60 JUMPIFEQKNIL                     R3 ; [+14]
       62 GETUPVAL                         R3 1
       63 GETTABLEKS                       R3 R3 K4 ["toJSBoolean"]
       65 GETUPVAL                         R4 3
       66 GETTABLEKS                       R6 R0 K6 ["target"]
       68 NAMECALL                         R4 R4 K16 ["isTextInput"]
       70 CALL                             R4 2 -1
       71 CALL                             R3 -1 1
       72 JUMPIF                           R3 ; [+2]
       73 LOADB                            R3 1
       74 RETURN                           R3 1
       75 LOADB                            R3 0
       76 RETURN                           R3 1

PROTO_54:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["currentlyFocusedInput"]
        3 CALL                             R0 1 1
        4 LOADB                            R1 0
        5 JUMPIFEQKNIL                     R0 ; [+6]
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K1 ["isTextInput"]
       11 CALL                             R1 2 1
       12 LOADB                            R2 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K2 ["_keyboardWillOpenTo"]
       16 JUMPIFNOTEQKNIL                  R3 ; [+8]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K3 ["OS"]
       21 JUMPIFEQKS                       R3 K4 ["android"] ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 AND                              R3 R1 R2
       26 RETURN                           R3 1

PROTO_55:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["_isTouching"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["props"]
        7 GETTABLEKS                       R2 R2 K2 ["onTouchEnd"]
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["props"]
       13 GETTABLEKS                       R2 R2 K2 ["onTouchEnd"]
       15 MOVE                             R3 R0
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["_isTouching"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["props"]
        7 GETTABLEKS                       R2 R2 K2 ["onTouchCancel"]
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["props"]
       13 GETTABLEKS                       R2 R2 K2 ["onTouchCancel"]
       15 MOVE                             R3 R0
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["_isTouching"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["props"]
        7 GETTABLEKS                       R2 R2 K2 ["onTouchStart"]
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["props"]
       13 GETTABLEKS                       R2 R2 K2 ["onTouchStart"]
       15 MOVE                             R3 R0
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["onTouchMove"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["props"]
        9 GETTABLEKS                       R2 R2 K1 ["onTouchMove"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_59:
        0 SETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R0 K1 ["_scrollAnimatedValueAttachment"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["new"]
        8 CALL                             R2 0 1
        9 SETTABLEKS                       R2 R0 K3 ["_stickyHeaderRefs"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["new"]
       14 CALL                             R2 0 1
       15 SETTABLEKS                       R2 R0 K4 ["_headerLayoutYs"]
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R0 K5 ["_keyboardWillOpenTo"]
       20 LOADN                            R2 0
       21 SETTABLEKS                       R2 R0 K6 ["_additionalScrollOffset"]
       23 LOADB                            R2 0
       24 SETTABLEKS                       R2 R0 K7 ["_isTouching"]
       26 LOADN                            R2 0
       27 SETTABLEKS                       R2 R0 K8 ["_lastMomentumScrollBeginTime"]
       29 LOADN                            R2 0
       30 SETTABLEKS                       R2 R0 K9 ["_lastMomentumScrollEndTime"]
       32 LOADB                            R2 0
       33 SETTABLEKS                       R2 R0 K10 ["_observedScrollSinceBecomingResponder"]
       35 LOADB                            R2 0
       36 SETTABLEKS                       R2 R0 K11 ["_becameResponderWhileAnimating"]
       38 LOADNIL                          R2
       39 SETTABLEKS                       R2 R0 K12 ["_preventNegativeScrollOffset"]
       41 LOADNIL                          R2
       42 SETTABLEKS                       R2 R0 K13 ["_animated"]
       44 LOADNIL                          R2
       45 SETTABLEKS                       R2 R0 K14 ["_subscriptionKeyboardWillShow"]
       47 LOADNIL                          R2
       48 SETTABLEKS                       R2 R0 K15 ["_subscriptionKeyboardWillHide"]
       50 LOADNIL                          R2
       51 SETTABLEKS                       R2 R0 K16 ["_subscriptionKeyboardDidShow"]
       53 LOADNIL                          R2
       54 SETTABLEKS                       R2 R0 K17 ["_subscriptionKeyboardDidHide"]
       56 DUPTABLE                         R2 K20 [{["layoutHeight"] = }]
       57 SETTABLEKS                       R2 R0 K21 ["state"]
       59 GETUPVAL                         R2 1
       60 GETTABLEKS                       R2 R2 K22 ["createRef"]
       62 CALL                             R2 0 1
       63 SETTABLEKS                       R2 R0 K23 ["_listLayoutRef"]
       65 GETUPVAL                         R2 2
       66 DUPTABLE                         R3 K26 [{"getForwardedRef", "setLocalRef"}]
       67 NEWCLOSURE                       R4 P0
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R4 R3 K24 ["getForwardedRef"]
       71 NEWCLOSURE                       R4 P1
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R4 R3 K25 ["setLocalRef"]
       75 CALL                             R2 1 1
       76 SETTABLEKS                       R2 R0 K27 ["_setNativeRef"]
       78 NEWCLOSURE                       R2 P2
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R2 R0 K28 ["getScrollResponder"]
       82 NEWCLOSURE                       R2 P3
       83 CAPTURE                          UPVAL U3
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R2 R0 K29 ["getScrollableNode"]
       87 NEWCLOSURE                       R2 P4
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R2 R0 K30 ["getInnerViewNode"]
       92 NEWCLOSURE                       R2 P5
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R2 R0 K31 ["getInnerViewRef"]
       96 NEWCLOSURE                       R2 P6
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R2 R0 K32 ["getNativeScrollRef"]
      100 NEWCLOSURE                       R2 P7
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U4
      103 CAPTURE                          UPVAL U5
      104 SETTABLEKS                       R2 R0 K33 ["scrollTo"]
      106 NEWCLOSURE                       R2 P8
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U4
      109 SETTABLEKS                       R2 R0 K34 ["scrollToEnd"]
      111 NEWCLOSURE                       R2 P9
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U4
      114 SETTABLEKS                       R2 R0 K35 ["flashScrollIndicators"]
      116 NEWCLOSURE                       R2 P10
      117 CAPTURE                          VAL R0
      118 CAPTURE                          UPVAL U5
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          UPVAL U3
      121 SETTABLEKS                       R2 R0 K36 ["scrollResponderScrollNativeHandleToKeyboard"]
      123 NEWCLOSURE                       R2 P11
      124 CAPTURE                          UPVAL U7
      125 CAPTURE                          UPVAL U8
      126 CAPTURE                          UPVAL U9
      127 CAPTURE                          UPVAL U10
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U11
      130 CAPTURE                          UPVAL U4
      131 SETTABLEKS                       R2 R0 K37 ["scrollResponderZoomTo"]
      133 NEWCLOSURE                       R2 P12
      134 CAPTURE                          UPVAL U12
      135 CAPTURE                          VAL R0
      136 CAPTURE                          UPVAL U13
      137 SETTABLEKS                       R2 R0 K38 ["_inputMeasureAndScrollToKeyboard"]
      139 NEWCLOSURE                       R2 P13
      140 CAPTURE                          VAL R0
      141 CAPTURE                          UPVAL U8
      142 CAPTURE                          UPVAL U11
      143 SETTABLEKS                       R2 R0 K39 ["_handleScroll"]
      145 NEWCLOSURE                       R2 P14
      146 CAPTURE                          VAL R0
      147 SETTABLEKS                       R2 R0 K40 ["_handleLayout"]
      149 NEWCLOSURE                       R2 P15
      150 CAPTURE                          VAL R0
      151 SETTABLEKS                       R2 R0 K41 ["_overrideAutomaticCanvasSize"]
      153 NEWCLOSURE                       R2 P16
      154 CAPTURE                          VAL R0
      155 SETTABLEKS                       R2 R0 K42 ["_handleContentOnLayout"]
      157 LOADNIL                          R2
      158 SETTABLEKS                       R2 R0 K43 ["_scrollViewRef"]
      160 LOADNIL                          R2
      161 SETTABLEKS                       R2 R0 K44 ["_innerViewRef"]
      163 GETUPVAL                         R2 2
      164 DUPTABLE                         R3 K26 [{"getForwardedRef", "setLocalRef"}]
      165 NEWCLOSURE                       R4 P17
      166 CAPTURE                          VAL R0
      167 SETTABLEKS                       R4 R3 K24 ["getForwardedRef"]
      169 NEWCLOSURE                       R4 P18
      170 CAPTURE                          VAL R0
      171 SETTABLEKS                       R4 R3 K25 ["setLocalRef"]
      173 CALL                             R2 1 1
      174 SETTABLEKS                       R2 R0 K45 ["_setInnerViewRef"]
      176 NEWCLOSURE                       R2 P19
      177 CAPTURE                          VAL R0
      178 SETTABLEKS                       R2 R0 K46 ["scrollResponderKeyboardWillShow"]
      180 NEWCLOSURE                       R2 P20
      181 CAPTURE                          VAL R0
      182 SETTABLEKS                       R2 R0 K47 ["scrollResponderKeyboardWillHide"]
      184 NEWCLOSURE                       R2 P21
      185 CAPTURE                          UPVAL U5
      186 CAPTURE                          VAL R0
      187 SETTABLEKS                       R2 R0 K48 ["scrollResponderKeyboardDidShow"]
      189 NEWCLOSURE                       R2 P22
      190 CAPTURE                          VAL R0
      191 SETTABLEKS                       R2 R0 K49 ["scrollResponderKeyboardDidHide"]
      193 NEWCLOSURE                       R2 P23
      194 CAPTURE                          VAL R0
      195 SETTABLEKS                       R2 R0 K50 ["_handleMomentumScrollBegin"]
      197 NEWCLOSURE                       R2 P24
      198 CAPTURE                          UPVAL U14
      199 CAPTURE                          VAL R0
      200 SETTABLEKS                       R2 R0 K51 ["_handleMomentumScrollEnd"]
      202 NEWCLOSURE                       R2 P25
      203 CAPTURE                          UPVAL U14
      204 CAPTURE                          UPVAL U8
      205 CAPTURE                          VAL R0
      206 SETTABLEKS                       R2 R0 K52 ["_handleScrollBeginDrag"]
      208 NEWCLOSURE                       R2 P26
      209 CAPTURE                          VAL R0
      210 CAPTURE                          UPVAL U5
      211 CAPTURE                          UPVAL U14
      212 SETTABLEKS                       R2 R0 K53 ["_handleScrollEndDrag"]
      214 NEWCLOSURE                       R2 P27
      215 CAPTURE                          VAL R0
      216 SETTABLEKS                       R2 R0 K54 ["_isAnimating"]
      218 NEWCLOSURE                       R2 P28
      219 CAPTURE                          VAL R0
      220 SETTABLEKS                       R2 R0 K55 ["_handleResponderGrant"]
      222 DUPCLOSURE                       R2 K56 [PROTO_48]
      223 SETTABLEKS                       R2 R0 K57 ["_handleResponderReject"]
      225 NEWCLOSURE                       R2 P30
      226 CAPTURE                          VAL R0
      227 CAPTURE                          UPVAL U11
      228 CAPTURE                          UPVAL U15
      229 SETTABLEKS                       R2 R0 K58 ["_handleResponderRelease"]
      231 NEWCLOSURE                       R2 P31
      232 CAPTURE                          VAL R0
      233 SETTABLEKS                       R2 R0 K59 ["_handleResponderTerminationRequest"]
      235 NEWCLOSURE                       R2 P32
      236 CAPTURE                          VAL R0
      237 SETTABLEKS                       R2 R0 K60 ["_handleScrollShouldSetResponder"]
      239 NEWCLOSURE                       R2 P33
      240 CAPTURE                          VAL R0
      241 CAPTURE                          UPVAL U15
      242 SETTABLEKS                       R2 R0 K61 ["_handleStartShouldSetResponder"]
      244 NEWCLOSURE                       R2 P34
      245 CAPTURE                          VAL R0
      246 CAPTURE                          UPVAL U5
      247 CAPTURE                          UPVAL U11
      248 CAPTURE                          UPVAL U15
      249 SETTABLEKS                       R2 R0 K62 ["_handleStartShouldSetResponderCapture"]
      251 NEWCLOSURE                       R2 P35
      252 CAPTURE                          UPVAL U15
      253 CAPTURE                          VAL R0
      254 CAPTURE                          UPVAL U8
      255 SETTABLEKS                       R2 R0 K63 ["_keyboardIsDismissible"]
      257 NEWCLOSURE                       R2 P36
      258 CAPTURE                          VAL R0
      259 SETTABLEKS                       R2 R0 K64 ["_handleTouchEnd"]
      261 NEWCLOSURE                       R2 P37
      262 CAPTURE                          VAL R0
      263 SETTABLEKS                       R2 R0 K65 ["_handleTouchCancel"]
      265 NEWCLOSURE                       R2 P38
      266 CAPTURE                          VAL R0
      267 SETTABLEKS                       R2 R0 K66 ["_handleTouchStart"]
      269 NEWCLOSURE                       R2 P39
      270 CAPTURE                          VAL R0
      271 SETTABLEKS                       R2 R0 K67 ["_handleTouchMove"]
      273 GETUPVAL                         R2 16
      274 GETTABLEKS                       R2 R2 K68 ["Value"]
      276 GETTABLEKS                       R2 R2 K2 ["new"]
      278 GETTABLEKS                       R4 R0 K0 ["props"]
      280 GETTABLEKS                       R4 R4 K69 ["contentOffset"]
      282 JUMPIFNOT                        R4 ; [+18]
      283 GETUPVAL                         R4 5
      284 GETTABLEKS                       R4 R4 K70 ["toJSBoolean"]
      286 GETTABLEKS                       R5 R0 K0 ["props"]
      288 GETTABLEKS                       R5 R5 K69 ["contentOffset"]
      290 GETTABLEKS                       R5 R5 K71 ["y"]
      292 CALL                             R4 1 1
      293 JUMPIFNOT                        R4 ; [+7]
      294 GETTABLEKS                       R3 R0 K0 ["props"]
      296 GETTABLEKS                       R3 R3 K69 ["contentOffset"]
      298 GETTABLEKS                       R3 R3 K71 ["y"]
      300 JUMP                             ; [+1]
      301 LOADN                            R3 0
      302 CALL                             R2 1 1
      303 SETTABLEKS                       R2 R0 K72 ["_scrollAnimatedValue"]
      305 GETTABLEKS                       R2 R0 K72 ["_scrollAnimatedValue"]
      307 GETTABLEKS                       R5 R0 K0 ["props"]
      309 GETTABLEKS                       R5 R5 K73 ["contentInset"]
      311 JUMPIFNOT                        R5 ; [+18]
      312 GETUPVAL                         R5 5
      313 GETTABLEKS                       R5 R5 K70 ["toJSBoolean"]
      315 GETTABLEKS                       R6 R0 K0 ["props"]
      317 GETTABLEKS                       R6 R6 K73 ["contentInset"]
      319 GETTABLEKS                       R6 R6 K74 ["top"]
      321 CALL                             R5 1 1
      322 JUMPIFNOT                        R5 ; [+7]
      323 GETTABLEKS                       R4 R0 K0 ["props"]
      325 GETTABLEKS                       R4 R4 K73 ["contentInset"]
      327 GETTABLEKS                       R4 R4 K74 ["top"]
      329 JUMP                             ; [+1]
      330 LOADN                            R4 0
      331 NAMECALL                         R2 R2 K75 ["setOffset"]
      333 CALL                             R2 2 0
      334 RETURN                           R0 0

PROTO_60:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["keyboardShouldPersistTaps"]
        4 FASTCALL1                        TYPEOF R2 ; [+2]
        5 GETIMPORT                        R1 K3 [typeof]
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKS                    R1 K4 ["boolean"] ; [+36]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["warn"]
       13 LOADK                            R5 K6 ["'keyboardShouldPersistTaps={%s}' is deprecated. "]
       14 GETTABLEKS                       R8 R0 K0 ["props"]
       16 GETTABLEKS                       R8 R8 K1 ["keyboardShouldPersistTaps"]
       18 JUMPIFNOTEQKB                    R8 TRUE ; [+3]
       20 LOADK                            R7 K7 ["true"]
       21 JUMP                             ; [+1]
       22 LOADK                            R7 K8 ["false"]
       23 NAMECALL                         R5 R5 K9 ["format"]
       25 CALL                             R5 2 1
       26 MOVE                             R3 R5
       27 LOADK                            R4 K10 ["Use 'keyboardShouldPersistTaps=\"%s\"' instead"]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K11 ["toJSBoolean"]
       31 GETTABLEKS                       R8 R0 K0 ["props"]
       33 GETTABLEKS                       R8 R8 K1 ["keyboardShouldPersistTaps"]
       35 CALL                             R7 1 1
       36 JUMPIFNOT                        R7 ; [+2]
       37 LOADK                            R6 K12 ["always"]
       38 JUMP                             ; [+1]
       39 LOADK                            R6 K13 ["never"]
       40 NAMECALL                         R4 R4 K9 ["format"]
       42 CALL                             R4 2 1
       43 CONCAT                           R2 R3 R4
       44 CALL                             R1 1 0
       45 LOADNIL                          R1
       46 SETTABLEKS                       R1 R0 K14 ["_keyboardWillOpenTo"]
       48 LOADN                            R1 0
       49 SETTABLEKS                       R1 R0 K15 ["_additionalScrollOffset"]
       51 GETUPVAL                         R1 2
       52 LOADK                            R3 K16 ["keyboardWillShow"]
       53 GETTABLEKS                       R4 R0 K17 ["scrollResponderKeyboardWillShow"]
       55 NAMECALL                         R1 R1 K18 ["addListener"]
       57 CALL                             R1 3 1
       58 SETTABLEKS                       R1 R0 K19 ["_subscriptionKeyboardWillShow"]
       60 GETUPVAL                         R1 2
       61 LOADK                            R3 K20 ["keyboardWillHide"]
       62 GETTABLEKS                       R4 R0 K21 ["scrollResponderKeyboardWillHide"]
       64 NAMECALL                         R1 R1 K18 ["addListener"]
       66 CALL                             R1 3 1
       67 SETTABLEKS                       R1 R0 K22 ["_subscriptionKeyboardWillHide"]
       69 GETUPVAL                         R1 2
       70 LOADK                            R3 K23 ["keyboardDidShow"]
       71 GETTABLEKS                       R4 R0 K24 ["scrollResponderKeyboardDidShow"]
       73 NAMECALL                         R1 R1 K18 ["addListener"]
       75 CALL                             R1 3 1
       76 SETTABLEKS                       R1 R0 K25 ["_subscriptionKeyboardDidShow"]
       78 GETUPVAL                         R1 2
       79 LOADK                            R3 K26 ["keyboardDidHide"]
       80 GETTABLEKS                       R4 R0 K27 ["scrollResponderKeyboardDidHide"]
       82 NAMECALL                         R1 R1 K18 ["addListener"]
       84 CALL                             R1 3 1
       85 SETTABLEKS                       R1 R0 K28 ["_subscriptionKeyboardDidHide"]
       87 NAMECALL                         R1 R0 K29 ["_updateAnimatedNodeAttachment"]
       89 CALL                             R1 1 0
       90 RETURN                           R0 0

PROTO_61:
        0 GETTABLEKS                       R3 R1 K0 ["contentInset"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETTABLEKS                       R2 R1 K0 ["contentInset"]
        5 GETTABLEKS                       R2 R2 K1 ["top"]
        7 JUMP                             ; [+1]
        8 LOADN                            R2 0
        9 GETTABLEKS                       R4 R0 K2 ["props"]
       11 GETTABLEKS                       R4 R4 K0 ["contentInset"]
       13 JUMPIFNOT                        R4 ; [+7]
       14 GETTABLEKS                       R3 R0 K2 ["props"]
       16 GETTABLEKS                       R3 R3 K0 ["contentInset"]
       18 GETTABLEKS                       R3 R3 K1 ["top"]
       20 JUMP                             ; [+1]
       21 LOADN                            R3 0
       22 JUMPIFEQ                         R2 R3 ; [+15]
       24 GETTABLEKS                       R4 R0 K3 ["_scrollAnimatedValue"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K4 ["toJSBoolean"]
       29 MOVE                             R8 R3
       30 CALL                             R7 1 1
       31 JUMPIFNOT                        R7 ; [+2]
       32 MOVE                             R6 R3
       33 JUMPIF                           R6 ; [+1]
       34 LOADN                            R6 0
       35 NAMECALL                         R4 R4 K5 ["setOffset"]
       37 CALL                             R4 2 0
       38 NAMECALL                         R4 R0 K6 ["_updateAnimatedNodeAttachment"]
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_62:
        0 GETTABLEKS                       R1 R0 K0 ["_subscriptionKeyboardWillShow"]
        2 JUMPIFEQKNIL                     R1 ; [+6]
        4 GETTABLEKS                       R1 R0 K0 ["_subscriptionKeyboardWillShow"]
        6 NAMECALL                         R1 R1 K1 ["remove"]
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K2 ["_subscriptionKeyboardWillHide"]
       11 JUMPIFEQKNIL                     R1 ; [+6]
       13 GETTABLEKS                       R1 R0 K2 ["_subscriptionKeyboardWillHide"]
       15 NAMECALL                         R1 R1 K1 ["remove"]
       17 CALL                             R1 1 0
       18 GETTABLEKS                       R1 R0 K3 ["_subscriptionKeyboardDidShow"]
       20 JUMPIFEQKNIL                     R1 ; [+6]
       22 GETTABLEKS                       R1 R0 K3 ["_subscriptionKeyboardDidShow"]
       24 NAMECALL                         R1 R1 K1 ["remove"]
       26 CALL                             R1 1 0
       27 GETTABLEKS                       R1 R0 K4 ["_subscriptionKeyboardDidHide"]
       29 JUMPIFEQKNIL                     R1 ; [+6]
       31 GETTABLEKS                       R1 R0 K4 ["_subscriptionKeyboardDidHide"]
       33 NAMECALL                         R1 R1 K1 ["remove"]
       35 CALL                             R1 1 0
       36 GETTABLEKS                       R1 R0 K5 ["_scrollAnimatedValueAttachment"]
       38 JUMPIFNOT                        R1 ; [+5]
       39 GETTABLEKS                       R1 R0 K5 ["_scrollAnimatedValueAttachment"]
       41 NAMECALL                         R1 R1 K6 ["detach"]
       43 CALL                             R1 1 0
       44 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["warn"]
        3 LOADK                            R1 K1 ["Error measuring text field."]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_64:
        0 GETTABLE                         R2 R1 R0
        1 JUMPIFNOT                        R2 ; [+3]
        2 GETTABLEKS                       R3 R2 K0 ["key"]
        4 RETURN                           R3 1
        5 MOVE                             R3 R2
        6 RETURN                           R3 1

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["_scrollAnimatedValueAttachment"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_scrollAnimatedValueAttachment"]
        5 NAMECALL                         R1 R1 K1 ["detach"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["props"]
       10 GETTABLEKS                       R1 R1 K3 ["stickyHeaderIndices"]
       12 JUMPIFNOT                        R1 ; [+32]
       13 GETTABLEKS                       R2 R0 K2 ["props"]
       15 GETTABLEKS                       R2 R2 K3 ["stickyHeaderIndices"]
       17 LENGTH                           R1 R2
       18 LOADN                            R2 0
       19 JUMPIFNOTLT                      R2 R1 ; [+25]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R3 R0 K4 ["_scrollViewRef"]
       24 LOADK                            R4 K5 ["onScroll"]
       25 NEWTABLE                         R5 0 1
       27 DUPTABLE                         R6 K7 [{"nativeEvent"}]
       28 DUPTABLE                         R7 K9 [{"contentOffset"}]
       29 DUPTABLE                         R8 K11 [{"y"}]
       30 GETTABLEKS                       R9 R0 K12 ["_scrollAnimatedValue"]
       32 SETTABLEKS                       R9 R8 K10 ["y"]
       34 SETTABLEKS                       R8 R7 K8 ["contentOffset"]
       36 SETTABLEKS                       R7 R6 K6 ["nativeEvent"]
       38 SETLIST                          R5 R6 1 [1]
       40 NAMECALL                         R1 R1 K13 ["attachNativeEvent"]
       42 CALL                             R1 4 1
       43 SETTABLEKS                       R1 R0 K0 ["_scrollAnimatedValueAttachment"]
       45 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
        3 MOVE                             R4 R2
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+8]
        6 GETTABLEKS                       R3 R0 K1 ["_stickyHeaderRefs"]
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 NAMECALL                         R3 R3 K2 ["set"]
       12 CALL                             R3 3 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R3 R0 K1 ["_stickyHeaderRefs"]
       16 MOVE                             R5 R1
       17 NAMECALL                         R3 R3 K3 ["delete"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_67:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R4 K1 ["stickyHeaderIndices"]
        4 JUMPIF                           R4 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["Children"]
        9 GETTABLEKS                       R5 R5 K3 ["toArray"]
       11 GETTABLEKS                       R6 R0 K0 ["props"]
       13 GETTABLEKS                       R6 R6 K4 ["children"]
       15 CALL                             R5 1 1
       16 GETTABLEKS                       R6 R0 K5 ["_getKeyForIndex"]
       18 MOVE                             R7 R1
       19 MOVE                             R8 R5
       20 CALL                             R6 2 1
       21 JUMPIFEQ                         R3 R6 ; [+2]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R6 R2 K6 ["nativeEvent"]
       26 GETTABLEKS                       R6 R6 K7 ["layout"]
       28 GETTABLEKS                       R6 R6 K8 ["y"]
       30 GETTABLEKS                       R7 R0 K9 ["_headerLayoutYs"]
       32 MOVE                             R9 R3
       33 MOVE                             R10 R6
       34 NAMECALL                         R7 R7 K10 ["set"]
       36 CALL                             R7 3 0
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K11 ["indexOf"]
       40 MOVE                             R8 R4
       41 MOVE                             R9 R1
       42 CALL                             R7 2 1
       43 SUBK                             R9 R7 K12 [1]
       44 GETTABLE                         R8 R4 R9
       45 JUMPIFEQKNIL                     R8 ; [+24]
       47 GETTABLEKS                       R9 R0 K13 ["_stickyHeaderRefs"]
       49 GETTABLEKS                       R11 R0 K5 ["_getKeyForIndex"]
       51 MOVE                             R12 R8
       52 MOVE                             R13 R5
       53 CALL                             R11 2 -1
       54 NAMECALL                         R9 R9 K14 ["get"]
       56 CALL                             R9 -1 1
       57 GETUPVAL                         R10 2
       58 GETTABLEKS                       R10 R10 K15 ["toJSBoolean"]
       60 MOVE                             R11 R9
       61 CALL                             R10 1 1
       62 JUMPIFNOT                        R10 ; [+7]
       63 GETTABLEKS                       R10 R9 K16 ["setNextHeaderY"]
       65 JUMPIFNOT                        R10 ; [+4]
       66 MOVE                             R12 R6
       67 NAMECALL                         R10 R9 K16 ["setNextHeaderY"]
       69 CALL                             R10 2 0
       70 RETURN                           R0 0

PROTO_68:
        0 LOADB                            R1 0
        1 GETUPVAL                         R3 0
        2 FASTCALL1                        TYPE R3 ; [+2]
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+7]
        8 GETUPVAL                         R3 0
        9 GETTABLE                         R2 R3 R0
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_69:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["_setStickyHeaderRef"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_70:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R5 2
        4 NAMECALL                         R1 R1 K0 ["_onStickyHeaderLayout"]
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_71:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+7]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["indexOf"]
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R1
       11 CALL                             R2 2 1
       12 JUMP                             ; [+1]
       13 LOADN                            R2 -1
       14 LOADN                            R3 -1
       15 JUMPIFNOTLT                      R3 R2 ; [+89]
       17 GETTABLEKS                       R3 R0 K2 ["key"]
       19 GETUPVAL                         R5 2
       20 ADDK                             R6 R2 K3 [1]
       21 GETTABLE                         R4 R5 R6
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K4 ["props"]
       25 GETTABLEKS                       R6 R6 K5 ["StickyHeaderComponent"]
       27 JUMPIFNOT                        R6 ; [+6]
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K4 ["props"]
       31 GETTABLEKS                       R5 R5 K5 ["StickyHeaderComponent"]
       33 JUMP                             ; [+1]
       34 GETUPVAL                         R5 4
       35 GETUPVAL                         R6 5
       36 GETTABLEKS                       R6 R6 K6 ["createElement"]
       38 MOVE                             R7 R5
       39 DUPTABLE                         R8 K16 [{["Name"] = "StickyHeaderComponent", ["key"], ["nativeID"], ["ref"], ["nextHeaderLayoutY"], ["onLayout"], ["scrollAnimatedValue"], ["inverted"], ["hiddenOnScroll"], ["scrollViewHeight"]}]
       40 SETTABLEKS                       R3 R8 K2 ["key"]
       42 LOADK                            R10 K17 ["StickyHeader-"]
       43 FASTCALL1                        TOSTRING R3 ; [+3]
       44 MOVE                             R12 R3
       45 GETIMPORT                        R11 K19 [tostring]
       47 CALL                             R11 1 1
       48 CONCAT                           R9 R10 R11
       49 SETTABLEKS                       R9 R8 K8 ["nativeID"]
       51 NEWCLOSURE                       R9 P0
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R9 R8 K9 ["ref"]
       56 GETUPVAL                         R9 3
       57 GETTABLEKS                       R9 R9 K20 ["_headerLayoutYs"]
       59 GETUPVAL                         R11 3
       60 GETTABLEKS                       R11 R11 K21 ["_getKeyForIndex"]
       62 MOVE                             R12 R4
       63 GETUPVAL                         R13 6
       64 CALL                             R11 2 -1
       65 NAMECALL                         R9 R9 K22 ["get"]
       67 CALL                             R9 -1 1
       68 SETTABLEKS                       R9 R8 K10 ["nextHeaderLayoutY"]
       70 NEWCLOSURE                       R9 P1
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R9 R8 K11 ["onLayout"]
       76 GETUPVAL                         R9 3
       77 GETTABLEKS                       R9 R9 K23 ["_scrollAnimatedValue"]
       79 SETTABLEKS                       R9 R8 K12 ["scrollAnimatedValue"]
       81 GETUPVAL                         R9 3
       82 GETTABLEKS                       R9 R9 K4 ["props"]
       84 GETTABLEKS                       R9 R9 K24 ["invertStickyHeaders"]
       86 SETTABLEKS                       R9 R8 K13 ["inverted"]
       88 GETUPVAL                         R9 3
       89 GETTABLEKS                       R9 R9 K4 ["props"]
       91 GETTABLEKS                       R9 R9 K25 ["stickyHeaderHiddenOnScroll"]
       93 SETTABLEKS                       R9 R8 K14 ["hiddenOnScroll"]
       95 GETUPVAL                         R9 3
       96 GETTABLEKS                       R9 R9 K26 ["state"]
       98 GETTABLEKS                       R9 R9 K27 ["layoutHeight"]
      100 SETTABLEKS                       R9 R8 K15 ["scrollViewHeight"]
      102 MOVE                             R9 R0
      103 CALL                             R6 3 1
      104 RETURN                           R6 1
      105 RETURN                           R0 1

PROTO_72:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["horizontal"]
        4 JUMPIFNOTEQKB                    R3 TRUE ; [+3]
        6 GETUPVAL                         R2 0
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R2 1
        9 LOADN                            R3 1
       10 LOADN                            R4 2
       11 FASTCALL                         TABLE_UNPACK ; [+2]
       12 GETIMPORT                        R1 K4 [table.unpack]
       14 CALL                             R1 3 2
       15 GETTABLEKS                       R3 R0 K0 ["props"]
       17 GETTABLEKS                       R3 R3 K5 ["contentContainerStyle"]
       19 GETIMPORT                        R4 K7 [_G]
       21 GETTABLEKS                       R4 R4 K8 ["__DEV__"]
       23 JUMPIFNOT                        R4 ; [+39]
       24 GETTABLEKS                       R4 R0 K0 ["props"]
       26 GETTABLEKS                       R4 R4 K9 ["style"]
       28 JUMPIFEQKNIL                     R4 ; [+34]
       30 GETTABLEKS                       R5 R0 K0 ["props"]
       32 GETTABLEKS                       R5 R5 K9 ["style"]
       34 MOVE                             R4 R5
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K10 ["filter"]
       38 NEWTABLE                         R6 0 2
       40 LOADK                            R7 K11 ["alignItems"]
       41 LOADK                            R8 K12 ["justifyContent"]
       42 SETLIST                          R6 R7 2 [1]
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          VAL R4
       46 CALL                             R5 2 1
       47 GETUPVAL                         R6 3
       48 LENGTH                           R8 R5
       49 JUMPIFEQKN                       R8 K13 [0] ; [+2]
       51 LOADB                            R7 0 +1
       52 LOADB                            R7 1
       53 LOADK                            R9 K14 ["ScrollView child layout ("]
       54 GETUPVAL                         R12 4
       55 MOVE                             R14 R5
       56 NAMECALL                         R12 R12 K15 ["JSONEncode"]
       58 CALL                             R12 2 1
       59 MOVE                             R10 R12
       60 LOADK                            R11 K16 [") must be applied through the contentContainerStyle prop."]
       61 CONCAT                           R8 R9 R11
       62 CALL                             R6 2 0
       63 GETTABLEKS                       R5 R0 K0 ["props"]
       65 GETTABLEKS                       R5 R5 K17 ["onContentSizeChange"]
       67 JUMPIFNOTEQKNIL                  R5 ; [+3]
       69 LOADNIL                          R4
       70 JUMP                             ; [+5]
       71 DUPTABLE                         R4 K19 [{"onLayout"}]
       72 GETTABLEKS                       R5 R0 K20 ["_handleContentOnLayout"]
       74 SETTABLEKS                       R5 R4 K18 ["onLayout"]
       76 GETTABLEKS                       R5 R0 K0 ["props"]
       78 GETTABLEKS                       R5 R5 K21 ["stickyHeaderIndices"]
       80 GETTABLEKS                       R6 R0 K0 ["props"]
       82 GETTABLEKS                       R6 R6 K22 ["children"]
       84 JUMPIFEQKNIL                     R5 ; [+29]
       86 LENGTH                           R7 R5
       87 LOADN                            R8 0
       88 JUMPIFNOTLT                      R8 R7 ; [+25]
       90 GETUPVAL                         R7 5
       91 GETTABLEKS                       R7 R7 K23 ["Children"]
       93 GETTABLEKS                       R7 R7 K24 ["toArray"]
       95 GETTABLEKS                       R8 R0 K0 ["props"]
       97 GETTABLEKS                       R8 R8 K22 ["children"]
       99 CALL                             R7 1 1
      100 GETUPVAL                         R8 2
      101 GETTABLEKS                       R8 R8 K25 ["map"]
      103 MOVE                             R9 R7
      104 NEWCLOSURE                       R10 P1
      105 CAPTURE                          UPVAL U6
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          UPVAL U5
      111 CAPTURE                          VAL R7
      112 CALL                             R8 2 1
      113 MOVE                             R6 R8
      114 GETUPVAL                         R7 5
      115 GETTABLEKS                       R7 R7 K26 ["createElement"]
      117 GETUPVAL                         R8 8
      118 GETTABLEKS                       R8 R8 K27 ["Provider"]
      120 DUPTABLE                         R9 K29 [{"value"}]
      121 GETTABLEKS                       R11 R0 K0 ["props"]
      123 GETTABLEKS                       R11 R11 K1 ["horizontal"]
      125 JUMPIFNOTEQKB                    R11 TRUE ; [+3]
      127 GETUPVAL                         R10 9
      128 JUMP                             ; [+1]
      129 GETUPVAL                         R10 10
      130 SETTABLEKS                       R10 R9 K28 ["value"]
      132 GETUPVAL                         R10 5
      133 GETTABLEKS                       R10 R10 K26 ["createElement"]
      135 LOADK                            R11 K30 ["UIListLayout"]
      136 DUPTABLE                         R12 K39 [{["ref"], ["key"] = "layout", ["Name"], ["FillDirection"], ["VerticalAlignment"], ["HorizontalAlignment"], ["SortOrder"]}]
      137 GETTABLEKS                       R13 R0 K40 ["_listLayoutRef"]
      139 SETTABLEKS                       R13 R12 K31 ["ref"]
      141 GETTABLEKS                       R14 R0 K0 ["props"]
      143 GETTABLEKS                       R14 R14 K1 ["horizontal"]
      145 JUMPIFNOT                        R14 ; [+2]
      146 LOADK                            R13 K41 ["HorizontalLayout"]
      147 JUMP                             ; [+1]
      148 LOADK                            R13 K42 ["VerticalLayout"]
      149 SETTABLEKS                       R13 R12 K34 ["Name"]
      151 GETTABLEKS                       R14 R0 K0 ["props"]
      153 GETTABLEKS                       R14 R14 K1 ["horizontal"]
      155 JUMPIFNOT                        R14 ; [+3]
      156 GETIMPORT                        R13 K45 [Enum.FillDirection.Horizontal]
      158 JUMP                             ; [+2]
      159 GETIMPORT                        R13 K47 [Enum.FillDirection.Vertical]
      161 SETTABLEKS                       R13 R12 K35 ["FillDirection"]
      163 GETTABLEKS                       R14 R0 K0 ["props"]
      165 GETTABLEKS                       R14 R14 K1 ["horizontal"]
      167 JUMPIFNOT                        R14 ; [+3]
      168 GETIMPORT                        R13 K49 [Enum.VerticalAlignment.Center]
      170 JUMP                             ; [+14]
      171 GETTABLEKS                       R14 R0 K0 ["props"]
      173 GETTABLEKS                       R14 R14 K50 ["layoutStyle"]
      175 JUMPIFNOT                        R14 ; [+7]
      176 GETTABLEKS                       R13 R0 K0 ["props"]
      178 GETTABLEKS                       R13 R13 K50 ["layoutStyle"]
      180 GETTABLEKS                       R13 R13 K36 ["VerticalAlignment"]
      182 JUMP                             ; [+2]
      183 GETIMPORT                        R13 K52 [Enum.VerticalAlignment.Top]
      185 SETTABLEKS                       R13 R12 K36 ["VerticalAlignment"]
      187 GETTABLEKS                       R14 R0 K0 ["props"]
      189 GETTABLEKS                       R14 R14 K1 ["horizontal"]
      191 JUMPIFNOT                        R14 ; [+15]
      192 GETTABLEKS                       R14 R0 K0 ["props"]
      194 GETTABLEKS                       R14 R14 K50 ["layoutStyle"]
      196 JUMPIFNOT                        R14 ; [+7]
      197 GETTABLEKS                       R13 R0 K0 ["props"]
      199 GETTABLEKS                       R13 R13 K50 ["layoutStyle"]
      201 GETTABLEKS                       R13 R13 K37 ["HorizontalAlignment"]
      203 JUMP                             ; [+5]
      204 GETIMPORT                        R13 K54 [Enum.HorizontalAlignment.Left]
      206 JUMP                             ; [+2]
      207 GETIMPORT                        R13 K55 [Enum.HorizontalAlignment.Center]
      209 SETTABLEKS                       R13 R12 K37 ["HorizontalAlignment"]
      211 GETIMPORT                        R13 K57 [Enum.SortOrder.LayoutOrder]
      213 SETTABLEKS                       R13 R12 K38 ["SortOrder"]
      215 CALL                             R10 2 1
      216 MOVE                             R11 R6
      217 CALL                             R7 4 1
      218 MOVE                             R6 R7
      219 GETUPVAL                         R7 2
      220 GETTABLEKS                       R7 R7 K58 ["isArray"]
      222 MOVE                             R8 R5
      223 CALL                             R7 1 1
      224 JUMPIFNOT                        R7 ; [+6]
      225 LENGTH                           R8 R5
      226 LOADN                            R9 0
      227 JUMPIFLT                         R9 R8 ; [+2]
      229 LOADB                            R7 0 +1
      230 LOADB                            R7 1
      231 GETUPVAL                         R8 5
      232 GETTABLEKS                       R8 R8 K26 ["createElement"]
      234 MOVE                             R9 R2
      235 GETUPVAL                         R10 11
      236 GETTABLEKS                       R10 R10 K59 ["assign"]
      238 NEWTABLE                         R11 0 0
      240 MOVE                             R12 R4
      241 DUPTABLE                         R13 K60 [{"ref"}]
      242 GETTABLEKS                       R14 R0 K61 ["_setInnerViewRef"]
      244 SETTABLEKS                       R14 R13 K31 ["ref"]
      246 DUPTABLE                         R14 K67 [{["style"], ["Size"], ["AutomaticSize"], ["removeClippedSubviews"], ["collapsable"] = False}]
      247 SETTABLEKS                       R3 R14 K9 ["style"]
      249 GETTABLEKS                       R16 R0 K0 ["props"]
      251 GETTABLEKS                       R16 R16 K1 ["horizontal"]
      253 JUMPIFNOT                        R16 ; [+8]
      254 GETIMPORT                        R15 K70 [UDim2.new]
      256 LOADN                            R16 0
      257 LOADN                            R17 0
      258 LOADN                            R18 1
      259 LOADN                            R19 0
      260 CALL                             R15 4 1
      261 JUMP                             ; [+7]
      262 GETIMPORT                        R15 K70 [UDim2.new]
      264 LOADN                            R16 1
      265 LOADN                            R17 0
      266 LOADN                            R18 0
      267 LOADN                            R19 0
      268 CALL                             R15 4 1
      269 SETTABLEKS                       R15 R14 K62 ["Size"]
      271 GETTABLEKS                       R16 R0 K0 ["props"]
      273 GETTABLEKS                       R16 R16 K1 ["horizontal"]
      275 JUMPIFNOT                        R16 ; [+3]
      276 GETIMPORT                        R15 K72 [Enum.AutomaticSize.X]
      278 JUMP                             ; [+2]
      279 GETIMPORT                        R15 K74 [Enum.AutomaticSize.Y]
      281 SETTABLEKS                       R15 R14 K63 ["AutomaticSize"]
      283 GETUPVAL                         R16 12
      284 GETTABLEKS                       R16 R16 K75 ["OS"]
      286 JUMPIFNOTEQKS                    R16 K76 ["android"] ; [+4]
      288 JUMPIFNOT                        R7 ; [+2]
      289 LOADB                            R15 0
      290 JUMP                             ; [+4]
      291 GETTABLEKS                       R15 R0 K0 ["props"]
      293 GETTABLEKS                       R15 R15 K64 ["removeClippedSubviews"]
      295 SETTABLEKS                       R15 R14 K64 ["removeClippedSubviews"]
      297 CALL                             R10 4 1
      298 MOVE                             R11 R6
      299 CALL                             R8 3 1
      300 GETTABLEKS                       R10 R0 K0 ["props"]
      302 GETTABLEKS                       R10 R10 K77 ["alwaysBounceHorizontal"]
      304 JUMPIFEQKNIL                     R10 ; [+6]
      306 GETTABLEKS                       R9 R0 K0 ["props"]
      308 GETTABLEKS                       R9 R9 K77 ["alwaysBounceHorizontal"]
      310 JUMP                             ; [+4]
      311 GETTABLEKS                       R9 R0 K0 ["props"]
      313 GETTABLEKS                       R9 R9 K1 ["horizontal"]
      315 GETTABLEKS                       R11 R0 K0 ["props"]
      317 GETTABLEKS                       R11 R11 K78 ["alwaysBounceVertical"]
      319 JUMPIFEQKNIL                     R11 ; [+6]
      321 GETTABLEKS                       R10 R0 K0 ["props"]
      323 GETTABLEKS                       R10 R10 K78 ["alwaysBounceVertical"]
      325 JUMP                             ; [+5]
      326 GETTABLEKS                       R11 R0 K0 ["props"]
      328 GETTABLEKS                       R11 R11 K1 ["horizontal"]
      330 NOT                              R10 R11
      331 GETTABLEKS                       R12 R0 K0 ["props"]
      333 GETTABLEKS                       R12 R12 K1 ["horizontal"]
      335 JUMPIFNOTEQKB                    R12 TRUE ; [+5]
      337 GETUPVAL                         R11 13
      338 GETTABLEKS                       R11 R11 K79 ["baseHorizontal"]
      340 JUMP                             ; [+3]
      341 GETUPVAL                         R11 13
      342 GETTABLEKS                       R11 R11 K80 ["baseVertical"]
      344 GETUPVAL                         R12 11
      345 GETTABLEKS                       R12 R12 K59 ["assign"]
      347 GETIMPORT                        R13 K82 [table.clone]
      349 GETTABLEKS                       R14 R0 K0 ["props"]
      351 CALL                             R13 1 1
      352 DUPTABLE                         R14 K105 [{"alwaysBounceHorizontal", "alwaysBounceVertical", "style", "onContentSizeChange", "onLayout", "onMomentumScrollBegin", "onMomentumScrollEnd", "onResponderGrant", "onResponderReject", "onResponderRelease", "onResponderTerminationRequest", "onScrollBeginDrag", "onScrollEndDrag", "onScrollShouldSetResponder", "onStartShouldSetResponder", "onStartShouldSetResponderCapture", "onTouchEnd", "onTouchMove", "onTouchStart", "onTouchCancel", "onScroll", "scrollEventThrottle", "sendMomentumEvents", "snapToStart", "snapToEnd", "pagingEnabled", "AutomaticCanvasSize"}]
      353 SETTABLEKS                       R9 R14 K77 ["alwaysBounceHorizontal"]
      355 SETTABLEKS                       R10 R14 K78 ["alwaysBounceVertical"]
      357 GETUPVAL                         R15 14
      358 GETTABLEKS                       R15 R15 K106 ["compose"]
      360 MOVE                             R16 R11
      361 GETTABLEKS                       R17 R0 K0 ["props"]
      363 GETTABLEKS                       R17 R17 K9 ["style"]
      365 CALL                             R15 2 1
      366 SETTABLEKS                       R15 R14 K9 ["style"]
      368 GETUPVAL                         R15 11
      369 GETTABLEKS                       R15 R15 K107 ["None"]
      371 SETTABLEKS                       R15 R14 K17 ["onContentSizeChange"]
      373 GETTABLEKS                       R15 R0 K108 ["_handleLayout"]
      375 SETTABLEKS                       R15 R14 K18 ["onLayout"]
      377 GETTABLEKS                       R15 R0 K109 ["_handleMomentumScrollBegin"]
      379 SETTABLEKS                       R15 R14 K83 ["onMomentumScrollBegin"]
      381 GETTABLEKS                       R15 R0 K110 ["_handleMomentumScrollEnd"]
      383 SETTABLEKS                       R15 R14 K84 ["onMomentumScrollEnd"]
      385 GETTABLEKS                       R15 R0 K111 ["_handleResponderGrant"]
      387 SETTABLEKS                       R15 R14 K85 ["onResponderGrant"]
      389 GETTABLEKS                       R15 R0 K112 ["_handleResponderReject"]
      391 SETTABLEKS                       R15 R14 K86 ["onResponderReject"]
      393 GETTABLEKS                       R15 R0 K113 ["_handleResponderRelease"]
      395 SETTABLEKS                       R15 R14 K87 ["onResponderRelease"]
      397 GETTABLEKS                       R15 R0 K114 ["_handleResponderTerminationRequest"]
      399 SETTABLEKS                       R15 R14 K88 ["onResponderTerminationRequest"]
      401 GETTABLEKS                       R15 R0 K115 ["_handleScrollBeginDrag"]
      403 SETTABLEKS                       R15 R14 K89 ["onScrollBeginDrag"]
      405 GETTABLEKS                       R15 R0 K116 ["_handleScrollEndDrag"]
      407 SETTABLEKS                       R15 R14 K90 ["onScrollEndDrag"]
      409 GETTABLEKS                       R15 R0 K117 ["_handleScrollShouldSetResponder"]
      411 SETTABLEKS                       R15 R14 K91 ["onScrollShouldSetResponder"]
      413 GETTABLEKS                       R15 R0 K118 ["_handleStartShouldSetResponder"]
      415 SETTABLEKS                       R15 R14 K92 ["onStartShouldSetResponder"]
      417 GETTABLEKS                       R15 R0 K119 ["_handleStartShouldSetResponderCapture"]
      419 SETTABLEKS                       R15 R14 K93 ["onStartShouldSetResponderCapture"]
      421 GETTABLEKS                       R15 R0 K120 ["_handleTouchEnd"]
      423 SETTABLEKS                       R15 R14 K94 ["onTouchEnd"]
      425 GETTABLEKS                       R15 R0 K121 ["_handleTouchMove"]
      427 SETTABLEKS                       R15 R14 K95 ["onTouchMove"]
      429 GETTABLEKS                       R15 R0 K122 ["_handleTouchStart"]
      431 SETTABLEKS                       R15 R14 K96 ["onTouchStart"]
      433 GETTABLEKS                       R15 R0 K123 ["_handleTouchCancel"]
      435 SETTABLEKS                       R15 R14 K97 ["onTouchCancel"]
      437 GETTABLEKS                       R15 R0 K124 ["_handleScroll"]
      439 SETTABLEKS                       R15 R14 K98 ["onScroll"]
      441 JUMPIFNOT                        R7 ; [+2]
      442 LOADN                            R15 1
      443 JUMP                             ; [+4]
      444 GETTABLEKS                       R15 R0 K0 ["props"]
      446 GETTABLEKS                       R15 R15 K99 ["scrollEventThrottle"]
      448 SETTABLEKS                       R15 R14 K99 ["scrollEventThrottle"]
      450 GETTABLEKS                       R16 R0 K0 ["props"]
      452 GETTABLEKS                       R16 R16 K83 ["onMomentumScrollBegin"]
      454 JUMPIF                           R16 ; [+5]
      455 GETTABLEKS                       R16 R0 K0 ["props"]
      457 GETTABLEKS                       R16 R16 K84 ["onMomentumScrollEnd"]
      459 JUMPIFNOT                        R16 ; [+2]
      460 LOADB                            R15 1
      461 JUMP                             ; [+1]
      462 LOADB                            R15 0
      463 SETTABLEKS                       R15 R14 K100 ["sendMomentumEvents"]
      465 GETTABLEKS                       R16 R0 K0 ["props"]
      467 GETTABLEKS                       R16 R16 K101 ["snapToStart"]
      469 JUMPIFNOTEQKB                    R16 FALSE ; [+2]
      471 LOADB                            R15 0 +1
      472 LOADB                            R15 1
      473 SETTABLEKS                       R15 R14 K101 ["snapToStart"]
      475 GETTABLEKS                       R16 R0 K0 ["props"]
      477 GETTABLEKS                       R16 R16 K102 ["snapToEnd"]
      479 JUMPIFNOTEQKB                    R16 FALSE ; [+2]
      481 LOADB                            R15 0 +1
      482 LOADB                            R15 1
      483 SETTABLEKS                       R15 R14 K102 ["snapToEnd"]
      485 GETUPVAL                         R15 12
      486 GETTABLEKS                       R15 R15 K125 ["select"]
      488 DUPTABLE                         R16 K127 [{"ios", "android"}]
      489 LOADB                            R17 0
      490 GETTABLEKS                       R18 R0 K0 ["props"]
      492 GETTABLEKS                       R18 R18 K103 ["pagingEnabled"]
      494 JUMPIFNOTEQKB                    R18 TRUE ; [+16]
      496 LOADB                            R17 0
      497 GETTABLEKS                       R18 R0 K0 ["props"]
      499 GETTABLEKS                       R18 R18 K128 ["snapToInterval"]
      501 JUMPIFNOTEQKNIL                  R18 ; [+9]
      503 GETTABLEKS                       R18 R0 K0 ["props"]
      505 GETTABLEKS                       R18 R18 K129 ["snapToOffsets"]
      507 JUMPIFEQKNIL                     R18 ; [+2]
      509 LOADB                            R17 0 +1
      510 LOADB                            R17 1
      511 SETTABLEKS                       R17 R16 K126 ["ios"]
      513 LOADB                            R17 1
      514 GETTABLEKS                       R18 R0 K0 ["props"]
      516 GETTABLEKS                       R18 R18 K103 ["pagingEnabled"]
      518 JUMPIFEQKB                       R18 TRUE ; [+16]
      520 LOADB                            R17 1
      521 GETTABLEKS                       R18 R0 K0 ["props"]
      523 GETTABLEKS                       R18 R18 K128 ["snapToInterval"]
      525 JUMPIFNOTEQKNIL                  R18 ; [+9]
      527 GETTABLEKS                       R18 R0 K0 ["props"]
      529 GETTABLEKS                       R18 R18 K129 ["snapToOffsets"]
      531 JUMPIFNOTEQKNIL                  R18 ; [+2]
      533 LOADB                            R17 0 +1
      534 LOADB                            R17 1
      535 SETTABLEKS                       R17 R16 K76 ["android"]
      537 CALL                             R15 1 1
      538 SETTABLEKS                       R15 R14 K103 ["pagingEnabled"]
      540 GETTABLEKS                       R16 R0 K0 ["props"]
      542 GETTABLEKS                       R16 R16 K130 ["overrideAutomaticCanvasSize"]
      544 JUMPIFNOT                        R16 ; [+3]
      545 GETIMPORT                        R15 K131 [Enum.AutomaticSize.None]
      547 JUMP                             ; [+1]
      548 LOADNIL                          R15
      549 SETTABLEKS                       R15 R14 K104 ["AutomaticCanvasSize"]
      551 CALL                             R12 2 1
      552 GETTABLEKS                       R13 R0 K0 ["props"]
      554 GETTABLEKS                       R13 R13 K132 ["decelerationRate"]
      556 JUMPIFEQKNIL                     R13 ; [+6]
      558 GETUPVAL                         R14 15
      559 MOVE                             R15 R13
      560 CALL                             R14 1 1
      561 SETTABLEKS                       R14 R12 K132 ["decelerationRate"]
      563 GETTABLEKS                       R14 R0 K0 ["props"]
      565 GETTABLEKS                       R14 R14 K133 ["refreshControl"]
      567 GETUPVAL                         R15 6
      568 GETTABLEKS                       R15 R15 K134 ["toJSBoolean"]
      570 MOVE                             R16 R14
      571 CALL                             R15 1 1
      572 JUMPIFNOT                        R15 ; [+95]
      573 GETUPVAL                         R15 12
      574 GETTABLEKS                       R15 R15 K75 ["OS"]
      576 JUMPIFEQKS                       R15 K126 ["ios"] ; [+6]
      578 GETUPVAL                         R15 12
      579 GETTABLEKS                       R15 R15 K75 ["OS"]
      581 JUMPIFNOTEQKS                    R15 K135 ["roblox"] ; [+22]
      583 GETUPVAL                         R15 5
      584 GETTABLEKS                       R15 R15 K26 ["createElement"]
      586 MOVE                             R16 R1
      587 GETUPVAL                         R17 11
      588 GETTABLEKS                       R17 R17 K59 ["assign"]
      590 GETIMPORT                        R18 K82 [table.clone]
      592 MOVE                             R19 R12
      593 CALL                             R18 1 1
      594 DUPTABLE                         R19 K60 [{"ref"}]
      595 GETTABLEKS                       R20 R0 K136 ["_setNativeRef"]
      597 SETTABLEKS                       R20 R19 K31 ["ref"]
      599 CALL                             R17 2 1
      600 MOVE                             R18 R14
      601 MOVE                             R19 R8
      602 CALL                             R15 4 -1
      603 RETURN                           R15 -1
      604 GETUPVAL                         R15 12
      605 GETTABLEKS                       R15 R15 K75 ["OS"]
      607 JUMPIFNOTEQKS                    R15 K76 ["android"] ; [+60]
      609 LOADNIL                          R15
      610 LOADNIL                          R16
      611 GETTABLEKS                       R19 R12 K9 ["style"]
      613 MOVE                             R18 R19
      614 DUPTABLE                         R17 K139 [{"outer", "inner"}]
      615 SETTABLEKS                       R18 R17 K137 ["outer"]
      617 SETTABLEKS                       R18 R17 K138 ["inner"]
      619 GETTABLEKS                       R15 R17 K137 ["outer"]
      621 GETTABLEKS                       R16 R17 K138 ["inner"]
      623 GETUPVAL                         R17 5
      624 GETTABLEKS                       R17 R17 K140 ["cloneElement"]
      626 MOVE                             R18 R14
      627 GETUPVAL                         R19 11
      628 GETTABLEKS                       R19 R19 K59 ["assign"]
      630 DUPTABLE                         R20 K141 [{"style"}]
      631 GETUPVAL                         R21 14
      632 GETTABLEKS                       R21 R21 K106 ["compose"]
      634 MOVE                             R22 R11
      635 MOVE                             R23 R15
      636 CALL                             R21 2 1
      637 SETTABLEKS                       R21 R20 K9 ["style"]
      639 CALL                             R19 1 1
      640 GETUPVAL                         R20 5
      641 GETTABLEKS                       R20 R20 K26 ["createElement"]
      643 MOVE                             R21 R1
      644 GETUPVAL                         R22 11
      645 GETTABLEKS                       R22 R22 K59 ["assign"]
      647 NEWTABLE                         R23 0 0
      649 MOVE                             R24 R12
      650 DUPTABLE                         R25 K142 [{"style", "ref"}]
      651 GETUPVAL                         R26 14
      652 GETTABLEKS                       R26 R26 K106 ["compose"]
      654 MOVE                             R27 R11
      655 MOVE                             R28 R16
      656 CALL                             R26 2 1
      657 SETTABLEKS                       R26 R25 K9 ["style"]
      659 GETTABLEKS                       R26 R0 K136 ["_setNativeRef"]
      661 SETTABLEKS                       R26 R25 K31 ["ref"]
      663 CALL                             R22 3 1
      664 MOVE                             R23 R8
      665 CALL                             R20 3 -1
      666 CALL                             R17 -1 -1
      667 RETURN                           R17 -1
      668 GETTABLEKS                       R15 R0 K136 ["_setNativeRef"]
      670 SETTABLEKS                       R15 R12 K31 ["ref"]
      672 GETUPVAL                         R15 5
      673 GETTABLEKS                       R15 R15 K26 ["createElement"]
      675 MOVE                             R16 R1
      676 MOVE                             R17 R12
      677 MOVE                             R18 R8
      678 CALL                             R15 3 -1
      679 RETURN                           R15 -1

PROTO_73:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K1 ["assign"]
        7 GETIMPORT                        R5 K4 [table.clone]
        9 MOVE                             R6 R0
       10 CALL                             R5 1 1
       11 DUPTABLE                         R6 K6 [{"scrollViewRef"}]
       12 SETTABLEKS                       R1 R6 K5 ["scrollViewRef"]
       14 CALL                             R4 2 -1
       15 CALL                             R2 -1 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["Array"]
       18 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       20 GETTABLEKS                       R5 R2 K8 ["Map"]
       22 GETTABLEKS                       R6 R2 K9 ["Object"]
       24 GETTABLEKS                       R7 R2 K10 ["console"]
       26 GETTABLEKS                       R8 R2 K11 ["setTimeout"]
       28 GETIMPORT                        R9 K13 [game]
       30 LOADK                            R11 K14 ["HttpService"]
       31 NAMECALL                         R9 R9 K15 ["GetService"]
       33 CALL                             R9 2 1
       34 DUPTABLE                         R10 K18 [{"Value", "attachNativeEvent"}]
       35 DUPTABLE                         R11 K20 [{"new"}]
       36 DUPCLOSURE                       R12 K21 [PROTO_2]
       37 SETTABLEKS                       R12 R11 K19 ["new"]
       39 SETTABLEKS                       R11 R10 K16 ["Value"]
       41 DUPCLOSURE                       R11 K22 [PROTO_3]
       42 SETTABLEKS                       R11 R10 K17 ["attachNativeEvent"]
       44 DUPTABLE                         R11 K24 [{"get"}]
       45 DUPCLOSURE                       R12 K25 [PROTO_4]
       46 SETTABLEKS                       R12 R11 K23 ["get"]
       48 LOADNIL                          R12
       49 DUPTABLE                         R13 K29 [{["OS"] = "roblox", ["select"]}]
       50 NEWCLOSURE                       R14 P3
       51 CAPTURE                          REF R12
       52 SETTABLEKS                       R14 R13 K28 ["select"]
       54 MOVE                             R12 R13
       55 GETIMPORT                        R13 K4 [require]
       57 GETTABLEKS                       R14 R1 K30 ["React"]
       59 CALL                             R13 1 1
       60 DUPTABLE                         R14 K32 [{"findNodeHandle"}]
       61 DUPCLOSURE                       R15 K33 [PROTO_6]
       62 SETTABLEKS                       R15 R14 K31 ["findNodeHandle"]
       64 GETIMPORT                        R15 K4 [require]
       66 GETIMPORT                        R16 K1 [script]
       68 GETTABLEKS                       R16 R16 K2 ["Parent"]
       70 GETTABLEKS                       R16 R16 K34 ["ScrollViewStickyHeader"]
       72 CALL                             R15 1 1
       73 GETIMPORT                        R16 K4 [require]
       75 GETTABLEKS                       R17 R0 K35 ["StyleSheet"]
       77 GETTABLEKS                       R17 R17 K35 ["StyleSheet"]
       79 CALL                             R16 1 1
       80 GETIMPORT                        R17 K4 [require]
       82 GETIMPORT                        R18 K1 [script]
       84 GETTABLEKS                       R18 R18 K2 ["Parent"]
       86 GETTABLEKS                       R18 R18 K2 ["Parent"]
       88 GETTABLEKS                       R18 R18 K36 ["View"]
       90 GETTABLEKS                       R18 R18 K36 ["View"]
       92 CALL                             R17 1 1
       93 DUPTABLE                         R18 K38 [{"measureLayout"}]
       94 DUPCLOSURE                       R19 K39 [PROTO_7]
       95 SETTABLEKS                       R19 R18 K37 ["measureLayout"]
       97 DUPTABLE                         R19 K41 [{"addListener"}]
       98 DUPCLOSURE                       R20 K42 [PROTO_8]
       99 SETTABLEKS                       R20 R19 K40 ["addListener"]
      101 DUPTABLE                         R20 K45 [{"beginScroll", "endScroll"}]
      102 DUPCLOSURE                       R21 K46 [PROTO_9]
      103 SETTABLEKS                       R21 R20 K43 ["beginScroll"]
      105 DUPCLOSURE                       R21 K47 [PROTO_10]
      106 SETTABLEKS                       R21 R20 K44 ["endScroll"]
      108 DUPTABLE                         R21 K51 [{"blurTextInput", "currentlyFocusedInput", "isTextInput"}]
      109 DUPCLOSURE                       R22 K52 [PROTO_11]
      110 SETTABLEKS                       R22 R21 K48 ["blurTextInput"]
      112 DUPCLOSURE                       R22 K53 [PROTO_12]
      113 SETTABLEKS                       R22 R21 K49 ["currentlyFocusedInput"]
      115 DUPCLOSURE                       R22 K54 [PROTO_13]
      116 SETTABLEKS                       R22 R21 K50 ["isTextInput"]
      118 DUPCLOSURE                       R22 K55 [PROTO_14]
      119 DUPCLOSURE                       R23 K56 [PROTO_15]
      120 GETIMPORT                        R24 K4 [require]
      122 GETTABLEKS                       R25 R0 K57 ["jsUtils"]
      124 GETTABLEKS                       R25 R25 K58 ["invariant"]
      126 CALL                             R24 1 1
      127 GETIMPORT                        R25 K4 [require]
      129 GETIMPORT                        R26 K1 [script]
      131 GETTABLEKS                       R26 R26 K2 ["Parent"]
      133 GETTABLEKS                       R26 R26 K59 ["processDecelerationRate"]
      135 CALL                             R25 1 1
      136 DUPCLOSURE                       R26 K60 [PROTO_16]
      137 GETIMPORT                        R27 K4 [require]
      139 GETIMPORT                        R28 K1 [script]
      141 GETTABLEKS                       R28 R28 K2 ["Parent"]
      143 GETTABLEKS                       R28 R28 K2 ["Parent"]
      145 GETTABLEKS                       R28 R28 K2 ["Parent"]
      147 GETTABLEKS                       R28 R28 K61 ["Utilities"]
      149 GETTABLEKS                       R28 R28 K62 ["setAndForwardRef"]
      151 CALL                             R27 1 1
      152 GETIMPORT                        R28 K4 [require]
      154 GETIMPORT                        R29 K1 [script]
      156 GETTABLEKS                       R29 R29 K2 ["Parent"]
      158 GETTABLEKS                       R29 R29 K63 ["ScrollViewContext"]
      160 CALL                             R28 1 1
      161 GETTABLEKS                       R29 R28 K64 ["default"]
      163 GETTABLEKS                       R30 R28 K65 ["HORIZONTAL"]
      165 GETTABLEKS                       R31 R28 K66 ["VERTICAL"]
      167 GETIMPORT                        R32 K4 [require]
      169 GETIMPORT                        R33 K1 [script]
      171 GETTABLEKS                       R33 R33 K2 ["Parent"]
      173 GETTABLEKS                       R33 R33 K34 ["ScrollViewStickyHeader"]
      175 CALL                             R32 1 1
      176 GETIMPORT                        R33 K4 [require]
      178 GETIMPORT                        R34 K1 [script]
      180 GETTABLEKS                       R34 R34 K2 ["Parent"]
      182 GETTABLEKS                       R34 R34 K67 ["ScrollViewCommands"]
      184 CALL                             R33 1 1
      185 GETTABLEKS                       R33 R33 K64 ["default"]
      187 GETIMPORT                        R34 K4 [require]
      189 GETIMPORT                        R35 K1 [script]
      191 GETTABLEKS                       R35 R35 K2 ["Parent"]
      193 GETTABLEKS                       R35 R35 K68 ["ScrollContentViewNativeComponent"]
      195 CALL                             R34 1 1
      196 GETIMPORT                        R35 K4 [require]
      198 GETIMPORT                        R36 K1 [script]
      200 GETTABLEKS                       R36 R36 K2 ["Parent"]
      202 GETTABLEKS                       R36 R36 K69 ["ScrollViewNativeComponent"]
      204 CALL                             R35 1 1
      205 LOADNIL                          R36
      206 LOADNIL                          R37
      207 LOADNIL                          R38
      208 GETTABLEKS                       R40 R12 K26 ["OS"]
      210 JUMPIFNOTEQKS                    R40 K70 ["android"] ; [+19]
      212 DUPTABLE                         R39 K73 [{"NativeHorizontalScrollViewTuple", "NativeVerticalScrollViewTuple"}]
      213 NEWTABLE                         R40 0 2
      215 LOADK                            R41 K74 ["Frame"]
      216 LOADK                            R42 K74 ["Frame"]
      217 SETLIST                          R40 R41 2 [1]
      219 SETTABLEKS                       R40 R39 K71 ["NativeHorizontalScrollViewTuple"]
      221 NEWTABLE                         R40 0 2
      223 MOVE                             R41 R35
      224 MOVE                             R42 R17
      225 SETLIST                          R40 R41 2 [1]
      227 SETTABLEKS                       R40 R39 K72 ["NativeVerticalScrollViewTuple"]
      229 JUMP                             ; [+17]
      230 DUPTABLE                         R39 K73 [{"NativeHorizontalScrollViewTuple", "NativeVerticalScrollViewTuple"}]
      231 NEWTABLE                         R40 0 2
      233 MOVE                             R41 R35
      234 MOVE                             R42 R34
      235 SETLIST                          R40 R41 2 [1]
      237 SETTABLEKS                       R40 R39 K71 ["NativeHorizontalScrollViewTuple"]
      239 NEWTABLE                         R40 0 2
      241 MOVE                             R41 R35
      242 MOVE                             R42 R34
      243 SETLIST                          R40 R41 2 [1]
      245 SETTABLEKS                       R40 R39 K72 ["NativeVerticalScrollViewTuple"]
      247 GETTABLEKS                       R37 R39 K71 ["NativeHorizontalScrollViewTuple"]
      249 GETTABLEKS                       R38 R39 K72 ["NativeVerticalScrollViewTuple"]
      251 GETTABLEKS                       R40 R13 K75 ["Component"]
      253 LOADK                            R42 K76 ["ScrollView"]
      254 NAMECALL                         R40 R40 K77 ["extend"]
      256 CALL                             R40 2 1
      257 SETTABLEKS                       R29 R40 K78 ["Context"]
      259 NEWCLOSURE                       R41 P15
      260 CAPTURE                          VAL R5
      261 CAPTURE                          VAL R13
      262 CAPTURE                          VAL R27
      263 CAPTURE                          VAL R14
      264 CAPTURE                          VAL R33
      265 CAPTURE                          VAL R4
      266 CAPTURE                          VAL R18
      267 CAPTURE                          VAL R24
      268 CAPTURE                          REF R12
      269 CAPTURE                          VAL R3
      270 CAPTURE                          VAL R6
      271 CAPTURE                          VAL R7
      272 CAPTURE                          VAL R11
      273 CAPTURE                          VAL R8
      274 CAPTURE                          VAL R20
      275 CAPTURE                          VAL R21
      276 CAPTURE                          VAL R10
      277 SETTABLEKS                       R41 R40 K79 ["init"]
      279 DUPCLOSURE                       R41 K80 [PROTO_60]
      280 CAPTURE                          VAL R7
      281 CAPTURE                          VAL R4
      282 CAPTURE                          VAL R19
      283 SETTABLEKS                       R41 R40 K81 ["componentDidMount"]
      285 DUPCLOSURE                       R41 K82 [PROTO_61]
      286 CAPTURE                          VAL R4
      287 SETTABLEKS                       R41 R40 K83 ["componentDidUpdate"]
      289 DUPCLOSURE                       R41 K84 [PROTO_62]
      290 SETTABLEKS                       R41 R40 K85 ["componentWillUnmount"]
      292 DUPCLOSURE                       R41 K86 [PROTO_63]
      293 CAPTURE                          VAL R7
      294 SETTABLEKS                       R41 R40 K87 ["_textInputFocusError"]
      296 DUPCLOSURE                       R41 K88 [PROTO_64]
      297 SETTABLEKS                       R41 R40 K89 ["_getKeyForIndex"]
      299 DUPCLOSURE                       R41 K90 [PROTO_65]
      300 CAPTURE                          VAL R10
      301 SETTABLEKS                       R41 R40 K91 ["_updateAnimatedNodeAttachment"]
      303 DUPCLOSURE                       R41 K92 [PROTO_66]
      304 CAPTURE                          VAL R4
      305 SETTABLEKS                       R41 R40 K93 ["_setStickyHeaderRef"]
      307 DUPCLOSURE                       R41 K94 [PROTO_67]
      308 CAPTURE                          VAL R13
      309 CAPTURE                          VAL R3
      310 CAPTURE                          VAL R4
      311 SETTABLEKS                       R41 R40 K95 ["_onStickyHeaderLayout"]
      313 NEWCLOSURE                       R41 P24
      314 CAPTURE                          REF R37
      315 CAPTURE                          REF R38
      316 CAPTURE                          VAL R3
      317 CAPTURE                          VAL R24
      318 CAPTURE                          VAL R9
      319 CAPTURE                          VAL R13
      320 CAPTURE                          VAL R4
      321 CAPTURE                          VAL R15
      322 CAPTURE                          VAL R29
      323 CAPTURE                          VAL R30
      324 CAPTURE                          VAL R31
      325 CAPTURE                          VAL R6
      326 CAPTURE                          REF R12
      327 CAPTURE                          REF R36
      328 CAPTURE                          VAL R16
      329 CAPTURE                          VAL R25
      330 SETTABLEKS                       R41 R40 K96 ["render"]
      332 GETTABLEKS                       R41 R16 K97 ["create"]
      334 DUPTABLE                         R42 K100 [{"baseVertical", "baseHorizontal"}]
      335 DUPTABLE                         R43 K102 [{"ScrollingDirection"}]
      336 GETIMPORT                        R44 K105 [Enum.ScrollingDirection.Y]
      338 SETTABLEKS                       R44 R43 K101 ["ScrollingDirection"]
      340 SETTABLEKS                       R43 R42 K98 ["baseVertical"]
      342 DUPTABLE                         R43 K102 [{"ScrollingDirection"}]
      343 GETIMPORT                        R44 K107 [Enum.ScrollingDirection.X]
      345 SETTABLEKS                       R44 R43 K101 ["ScrollingDirection"]
      347 SETTABLEKS                       R43 R42 K99 ["baseHorizontal"]
      349 CALL                             R41 1 1
      350 MOVE                             R36 R41
      351 DUPCLOSURE                       R41 K108 [PROTO_73]
      352 CAPTURE                          VAL R13
      353 CAPTURE                          VAL R40
      354 CAPTURE                          VAL R6
      355 GETTABLEKS                       R42 R13 K109 ["forwardRef"]
      357 MOVE                             R43 R41
      358 CALL                             R42 1 1
      359 SETTABLEKS                       R29 R42 K78 ["Context"]
      361 LOADK                            R43 K76 ["ScrollView"]
      362 SETTABLEKS                       R43 R42 K110 ["displayName"]
      364 CLOSEUPVALS                      R12
      365 RETURN                           R42 1
