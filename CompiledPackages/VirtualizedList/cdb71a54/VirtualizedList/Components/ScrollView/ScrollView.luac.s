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
        1 DUPTABLE                         R0 K1 [{"height"}]
        2 LOADN                            R1 100
        3 SETTABLEKS                       R1 R0 K0 ["height"]
        5 RETURN                           R0 1

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
       38 DUPTABLE                         R2 K12 [{"x", "y", "animated"}]
       39 LOADN                            R3 0
       40 SETTABLEKS                       R3 R2 K9 ["x"]
       42 SETTABLEKS                       R0 R2 K10 ["y"]
       44 LOADB                            R3 1
       45 SETTABLEKS                       R3 R2 K11 ["animated"]
       47 CALL                             R1 1 0
       48 GETUPVAL                         R1 0
       49 LOADN                            R2 0
       50 SETTABLEKS                       R2 R1 K3 ["_additionalScrollOffset"]
       52 GETUPVAL                         R1 0
       53 LOADB                            R2 0
       54 SETTABLEKS                       R2 R1 K4 ["_preventNegativeScrollOffset"]
       56 RETURN                           R0 0

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
       56 DUPTABLE                         R2 K19 [{"layoutHeight"}]
       57 LOADNIL                          R3
       58 SETTABLEKS                       R3 R2 K18 ["layoutHeight"]
       60 SETTABLEKS                       R2 R0 K20 ["state"]
       62 GETUPVAL                         R2 1
       63 GETTABLEKS                       R2 R2 K21 ["createRef"]
       65 CALL                             R2 0 1
       66 SETTABLEKS                       R2 R0 K22 ["_listLayoutRef"]
       68 GETUPVAL                         R2 2
       69 DUPTABLE                         R3 K25 [{"getForwardedRef", "setLocalRef"}]
       70 NEWCLOSURE                       R4 P0
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R4 R3 K23 ["getForwardedRef"]
       74 NEWCLOSURE                       R4 P1
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R4 R3 K24 ["setLocalRef"]
       78 CALL                             R2 1 1
       79 SETTABLEKS                       R2 R0 K26 ["_setNativeRef"]
       81 NEWCLOSURE                       R2 P2
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R2 R0 K27 ["getScrollResponder"]
       85 NEWCLOSURE                       R2 P3
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          VAL R0
       88 SETTABLEKS                       R2 R0 K28 ["getScrollableNode"]
       90 NEWCLOSURE                       R2 P4
       91 CAPTURE                          UPVAL U3
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R2 R0 K29 ["getInnerViewNode"]
       95 NEWCLOSURE                       R2 P5
       96 CAPTURE                          VAL R0
       97 SETTABLEKS                       R2 R0 K30 ["getInnerViewRef"]
       99 NEWCLOSURE                       R2 P6
      100 CAPTURE                          VAL R0
      101 SETTABLEKS                       R2 R0 K31 ["getNativeScrollRef"]
      103 NEWCLOSURE                       R2 P7
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          UPVAL U5
      107 SETTABLEKS                       R2 R0 K32 ["scrollTo"]
      109 NEWCLOSURE                       R2 P8
      110 CAPTURE                          VAL R0
      111 CAPTURE                          UPVAL U4
      112 SETTABLEKS                       R2 R0 K33 ["scrollToEnd"]
      114 NEWCLOSURE                       R2 P9
      115 CAPTURE                          VAL R0
      116 CAPTURE                          UPVAL U4
      117 SETTABLEKS                       R2 R0 K34 ["flashScrollIndicators"]
      119 NEWCLOSURE                       R2 P10
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U5
      122 CAPTURE                          UPVAL U6
      123 CAPTURE                          UPVAL U3
      124 SETTABLEKS                       R2 R0 K35 ["scrollResponderScrollNativeHandleToKeyboard"]
      126 NEWCLOSURE                       R2 P11
      127 CAPTURE                          UPVAL U7
      128 CAPTURE                          UPVAL U8
      129 CAPTURE                          UPVAL U9
      130 CAPTURE                          UPVAL U10
      131 CAPTURE                          VAL R0
      132 CAPTURE                          UPVAL U11
      133 CAPTURE                          UPVAL U4
      134 SETTABLEKS                       R2 R0 K36 ["scrollResponderZoomTo"]
      136 NEWCLOSURE                       R2 P12
      137 CAPTURE                          UPVAL U12
      138 CAPTURE                          VAL R0
      139 CAPTURE                          UPVAL U13
      140 SETTABLEKS                       R2 R0 K37 ["_inputMeasureAndScrollToKeyboard"]
      142 NEWCLOSURE                       R2 P13
      143 CAPTURE                          VAL R0
      144 CAPTURE                          UPVAL U8
      145 CAPTURE                          UPVAL U11
      146 SETTABLEKS                       R2 R0 K38 ["_handleScroll"]
      148 NEWCLOSURE                       R2 P14
      149 CAPTURE                          VAL R0
      150 SETTABLEKS                       R2 R0 K39 ["_handleLayout"]
      152 NEWCLOSURE                       R2 P15
      153 CAPTURE                          VAL R0
      154 SETTABLEKS                       R2 R0 K40 ["_overrideAutomaticCanvasSize"]
      156 NEWCLOSURE                       R2 P16
      157 CAPTURE                          VAL R0
      158 SETTABLEKS                       R2 R0 K41 ["_handleContentOnLayout"]
      160 LOADNIL                          R2
      161 SETTABLEKS                       R2 R0 K42 ["_scrollViewRef"]
      163 LOADNIL                          R2
      164 SETTABLEKS                       R2 R0 K43 ["_innerViewRef"]
      166 GETUPVAL                         R2 2
      167 DUPTABLE                         R3 K25 [{"getForwardedRef", "setLocalRef"}]
      168 NEWCLOSURE                       R4 P17
      169 CAPTURE                          VAL R0
      170 SETTABLEKS                       R4 R3 K23 ["getForwardedRef"]
      172 NEWCLOSURE                       R4 P18
      173 CAPTURE                          VAL R0
      174 SETTABLEKS                       R4 R3 K24 ["setLocalRef"]
      176 CALL                             R2 1 1
      177 SETTABLEKS                       R2 R0 K44 ["_setInnerViewRef"]
      179 NEWCLOSURE                       R2 P19
      180 CAPTURE                          VAL R0
      181 SETTABLEKS                       R2 R0 K45 ["scrollResponderKeyboardWillShow"]
      183 NEWCLOSURE                       R2 P20
      184 CAPTURE                          VAL R0
      185 SETTABLEKS                       R2 R0 K46 ["scrollResponderKeyboardWillHide"]
      187 NEWCLOSURE                       R2 P21
      188 CAPTURE                          UPVAL U5
      189 CAPTURE                          VAL R0
      190 SETTABLEKS                       R2 R0 K47 ["scrollResponderKeyboardDidShow"]
      192 NEWCLOSURE                       R2 P22
      193 CAPTURE                          VAL R0
      194 SETTABLEKS                       R2 R0 K48 ["scrollResponderKeyboardDidHide"]
      196 NEWCLOSURE                       R2 P23
      197 CAPTURE                          VAL R0
      198 SETTABLEKS                       R2 R0 K49 ["_handleMomentumScrollBegin"]
      200 NEWCLOSURE                       R2 P24
      201 CAPTURE                          UPVAL U14
      202 CAPTURE                          VAL R0
      203 SETTABLEKS                       R2 R0 K50 ["_handleMomentumScrollEnd"]
      205 NEWCLOSURE                       R2 P25
      206 CAPTURE                          UPVAL U14
      207 CAPTURE                          UPVAL U8
      208 CAPTURE                          VAL R0
      209 SETTABLEKS                       R2 R0 K51 ["_handleScrollBeginDrag"]
      211 NEWCLOSURE                       R2 P26
      212 CAPTURE                          VAL R0
      213 CAPTURE                          UPVAL U5
      214 CAPTURE                          UPVAL U14
      215 SETTABLEKS                       R2 R0 K52 ["_handleScrollEndDrag"]
      217 NEWCLOSURE                       R2 P27
      218 CAPTURE                          VAL R0
      219 SETTABLEKS                       R2 R0 K53 ["_isAnimating"]
      221 NEWCLOSURE                       R2 P28
      222 CAPTURE                          VAL R0
      223 SETTABLEKS                       R2 R0 K54 ["_handleResponderGrant"]
      225 DUPCLOSURE                       R2 K55 [PROTO_48]
      226 SETTABLEKS                       R2 R0 K56 ["_handleResponderReject"]
      228 NEWCLOSURE                       R2 P30
      229 CAPTURE                          VAL R0
      230 CAPTURE                          UPVAL U11
      231 CAPTURE                          UPVAL U15
      232 SETTABLEKS                       R2 R0 K57 ["_handleResponderRelease"]
      234 NEWCLOSURE                       R2 P31
      235 CAPTURE                          VAL R0
      236 SETTABLEKS                       R2 R0 K58 ["_handleResponderTerminationRequest"]
      238 NEWCLOSURE                       R2 P32
      239 CAPTURE                          VAL R0
      240 SETTABLEKS                       R2 R0 K59 ["_handleScrollShouldSetResponder"]
      242 NEWCLOSURE                       R2 P33
      243 CAPTURE                          VAL R0
      244 CAPTURE                          UPVAL U15
      245 SETTABLEKS                       R2 R0 K60 ["_handleStartShouldSetResponder"]
      247 NEWCLOSURE                       R2 P34
      248 CAPTURE                          VAL R0
      249 CAPTURE                          UPVAL U5
      250 CAPTURE                          UPVAL U11
      251 CAPTURE                          UPVAL U15
      252 SETTABLEKS                       R2 R0 K61 ["_handleStartShouldSetResponderCapture"]
      254 NEWCLOSURE                       R2 P35
      255 CAPTURE                          UPVAL U15
      256 CAPTURE                          VAL R0
      257 CAPTURE                          UPVAL U8
      258 SETTABLEKS                       R2 R0 K62 ["_keyboardIsDismissible"]
      260 NEWCLOSURE                       R2 P36
      261 CAPTURE                          VAL R0
      262 SETTABLEKS                       R2 R0 K63 ["_handleTouchEnd"]
      264 NEWCLOSURE                       R2 P37
      265 CAPTURE                          VAL R0
      266 SETTABLEKS                       R2 R0 K64 ["_handleTouchCancel"]
      268 NEWCLOSURE                       R2 P38
      269 CAPTURE                          VAL R0
      270 SETTABLEKS                       R2 R0 K65 ["_handleTouchStart"]
      272 NEWCLOSURE                       R2 P39
      273 CAPTURE                          VAL R0
      274 SETTABLEKS                       R2 R0 K66 ["_handleTouchMove"]
      276 GETUPVAL                         R2 16
      277 GETTABLEKS                       R2 R2 K67 ["Value"]
      279 GETTABLEKS                       R2 R2 K2 ["new"]
      281 GETTABLEKS                       R4 R0 K0 ["props"]
      283 GETTABLEKS                       R4 R4 K68 ["contentOffset"]
      285 JUMPIFNOT                        R4 ; [+18]
      286 GETUPVAL                         R4 5
      287 GETTABLEKS                       R4 R4 K69 ["toJSBoolean"]
      289 GETTABLEKS                       R5 R0 K0 ["props"]
      291 GETTABLEKS                       R5 R5 K68 ["contentOffset"]
      293 GETTABLEKS                       R5 R5 K70 ["y"]
      295 CALL                             R4 1 1
      296 JUMPIFNOT                        R4 ; [+7]
      297 GETTABLEKS                       R3 R0 K0 ["props"]
      299 GETTABLEKS                       R3 R3 K68 ["contentOffset"]
      301 GETTABLEKS                       R3 R3 K70 ["y"]
      303 JUMP                             ; [+1]
      304 LOADN                            R3 0
      305 CALL                             R2 1 1
      306 SETTABLEKS                       R2 R0 K71 ["_scrollAnimatedValue"]
      308 GETTABLEKS                       R2 R0 K71 ["_scrollAnimatedValue"]
      310 GETTABLEKS                       R5 R0 K0 ["props"]
      312 GETTABLEKS                       R5 R5 K72 ["contentInset"]
      314 JUMPIFNOT                        R5 ; [+18]
      315 GETUPVAL                         R5 5
      316 GETTABLEKS                       R5 R5 K69 ["toJSBoolean"]
      318 GETTABLEKS                       R6 R0 K0 ["props"]
      320 GETTABLEKS                       R6 R6 K72 ["contentInset"]
      322 GETTABLEKS                       R6 R6 K73 ["top"]
      324 CALL                             R5 1 1
      325 JUMPIFNOT                        R5 ; [+7]
      326 GETTABLEKS                       R4 R0 K0 ["props"]
      328 GETTABLEKS                       R4 R4 K72 ["contentInset"]
      330 GETTABLEKS                       R4 R4 K73 ["top"]
      332 JUMP                             ; [+1]
      333 LOADN                            R4 0
      334 NAMECALL                         R2 R2 K74 ["setOffset"]
      336 CALL                             R2 2 0
      337 RETURN                           R0 0

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
       13 LOADN                            R2 255
       14 LOADN                            R3 255
       15 JUMPIFNOTLT                      R3 R2 ; [+92]
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
       39 DUPTABLE                         R8 K16 [{"Name", "key", "nativeID", "ref", "nextHeaderLayoutY", "onLayout", "scrollAnimatedValue", "inverted", "hiddenOnScroll", "scrollViewHeight"}]
       40 LOADK                            R9 K5 ["StickyHeaderComponent"]
       41 SETTABLEKS                       R9 R8 K7 ["Name"]
       43 SETTABLEKS                       R3 R8 K2 ["key"]
       45 LOADK                            R10 K17 ["StickyHeader-"]
       46 FASTCALL1                        TOSTRING R3 ; [+3]
       47 MOVE                             R12 R3
       48 GETIMPORT                        R11 K19 [tostring]
       50 CALL                             R11 1 1
       51 CONCAT                           R9 R10 R11
       52 SETTABLEKS                       R9 R8 K8 ["nativeID"]
       54 NEWCLOSURE                       R9 P0
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R9 R8 K9 ["ref"]
       59 GETUPVAL                         R9 3
       60 GETTABLEKS                       R9 R9 K20 ["_headerLayoutYs"]
       62 GETUPVAL                         R11 3
       63 GETTABLEKS                       R11 R11 K21 ["_getKeyForIndex"]
       65 MOVE                             R12 R4
       66 GETUPVAL                         R13 6
       67 CALL                             R11 2 -1
       68 NAMECALL                         R9 R9 K22 ["get"]
       70 CALL                             R9 -1 1
       71 SETTABLEKS                       R9 R8 K10 ["nextHeaderLayoutY"]
       73 NEWCLOSURE                       R9 P1
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R3
       77 SETTABLEKS                       R9 R8 K11 ["onLayout"]
       79 GETUPVAL                         R9 3
       80 GETTABLEKS                       R9 R9 K23 ["_scrollAnimatedValue"]
       82 SETTABLEKS                       R9 R8 K12 ["scrollAnimatedValue"]
       84 GETUPVAL                         R9 3
       85 GETTABLEKS                       R9 R9 K4 ["props"]
       87 GETTABLEKS                       R9 R9 K24 ["invertStickyHeaders"]
       89 SETTABLEKS                       R9 R8 K13 ["inverted"]
       91 GETUPVAL                         R9 3
       92 GETTABLEKS                       R9 R9 K4 ["props"]
       94 GETTABLEKS                       R9 R9 K25 ["stickyHeaderHiddenOnScroll"]
       96 SETTABLEKS                       R9 R8 K14 ["hiddenOnScroll"]
       98 GETUPVAL                         R9 3
       99 GETTABLEKS                       R9 R9 K26 ["state"]
      101 GETTABLEKS                       R9 R9 K27 ["layoutHeight"]
      103 SETTABLEKS                       R9 R8 K15 ["scrollViewHeight"]
      105 MOVE                             R9 R0
      106 CALL                             R6 3 1
      107 RETURN                           R6 1
      108 RETURN                           R0 1

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
      136 DUPTABLE                         R12 K38 [{"ref", "key", "Name", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "SortOrder"}]
      137 GETTABLEKS                       R13 R0 K39 ["_listLayoutRef"]
      139 SETTABLEKS                       R13 R12 K31 ["ref"]
      141 LOADK                            R13 K40 ["layout"]
      142 SETTABLEKS                       R13 R12 K32 ["key"]
      144 GETTABLEKS                       R14 R0 K0 ["props"]
      146 GETTABLEKS                       R14 R14 K1 ["horizontal"]
      148 JUMPIFNOT                        R14 ; [+2]
      149 LOADK                            R13 K41 ["HorizontalLayout"]
      150 JUMP                             ; [+1]
      151 LOADK                            R13 K42 ["VerticalLayout"]
      152 SETTABLEKS                       R13 R12 K33 ["Name"]
      154 GETTABLEKS                       R14 R0 K0 ["props"]
      156 GETTABLEKS                       R14 R14 K1 ["horizontal"]
      158 JUMPIFNOT                        R14 ; [+3]
      159 GETIMPORT                        R13 K45 [Enum.FillDirection.Horizontal]
      161 JUMP                             ; [+2]
      162 GETIMPORT                        R13 K47 [Enum.FillDirection.Vertical]
      164 SETTABLEKS                       R13 R12 K34 ["FillDirection"]
      166 GETTABLEKS                       R14 R0 K0 ["props"]
      168 GETTABLEKS                       R14 R14 K1 ["horizontal"]
      170 JUMPIFNOT                        R14 ; [+3]
      171 GETIMPORT                        R13 K49 [Enum.VerticalAlignment.Center]
      173 JUMP                             ; [+14]
      174 GETTABLEKS                       R14 R0 K0 ["props"]
      176 GETTABLEKS                       R14 R14 K50 ["layoutStyle"]
      178 JUMPIFNOT                        R14 ; [+7]
      179 GETTABLEKS                       R13 R0 K0 ["props"]
      181 GETTABLEKS                       R13 R13 K50 ["layoutStyle"]
      183 GETTABLEKS                       R13 R13 K35 ["VerticalAlignment"]
      185 JUMP                             ; [+2]
      186 GETIMPORT                        R13 K52 [Enum.VerticalAlignment.Top]
      188 SETTABLEKS                       R13 R12 K35 ["VerticalAlignment"]
      190 GETTABLEKS                       R14 R0 K0 ["props"]
      192 GETTABLEKS                       R14 R14 K1 ["horizontal"]
      194 JUMPIFNOT                        R14 ; [+15]
      195 GETTABLEKS                       R14 R0 K0 ["props"]
      197 GETTABLEKS                       R14 R14 K50 ["layoutStyle"]
      199 JUMPIFNOT                        R14 ; [+7]
      200 GETTABLEKS                       R13 R0 K0 ["props"]
      202 GETTABLEKS                       R13 R13 K50 ["layoutStyle"]
      204 GETTABLEKS                       R13 R13 K36 ["HorizontalAlignment"]
      206 JUMP                             ; [+5]
      207 GETIMPORT                        R13 K54 [Enum.HorizontalAlignment.Left]
      209 JUMP                             ; [+2]
      210 GETIMPORT                        R13 K55 [Enum.HorizontalAlignment.Center]
      212 SETTABLEKS                       R13 R12 K36 ["HorizontalAlignment"]
      214 GETIMPORT                        R13 K57 [Enum.SortOrder.LayoutOrder]
      216 SETTABLEKS                       R13 R12 K37 ["SortOrder"]
      218 CALL                             R10 2 1
      219 MOVE                             R11 R6
      220 CALL                             R7 4 1
      221 MOVE                             R6 R7
      222 GETUPVAL                         R7 2
      223 GETTABLEKS                       R7 R7 K58 ["isArray"]
      225 MOVE                             R8 R5
      226 CALL                             R7 1 1
      227 JUMPIFNOT                        R7 ; [+6]
      228 LENGTH                           R8 R5
      229 LOADN                            R9 0
      230 JUMPIFLT                         R9 R8 ; [+2]
      232 LOADB                            R7 0 +1
      233 LOADB                            R7 1
      234 GETUPVAL                         R8 5
      235 GETTABLEKS                       R8 R8 K26 ["createElement"]
      237 MOVE                             R9 R2
      238 GETUPVAL                         R10 11
      239 GETTABLEKS                       R10 R10 K59 ["assign"]
      241 NEWTABLE                         R11 0 0
      243 MOVE                             R12 R4
      244 DUPTABLE                         R13 K60 [{"ref"}]
      245 GETTABLEKS                       R14 R0 K61 ["_setInnerViewRef"]
      247 SETTABLEKS                       R14 R13 K31 ["ref"]
      249 DUPTABLE                         R14 K66 [{"style", "Size", "AutomaticSize", "removeClippedSubviews", "collapsable"}]
      250 SETTABLEKS                       R3 R14 K9 ["style"]
      252 GETTABLEKS                       R16 R0 K0 ["props"]
      254 GETTABLEKS                       R16 R16 K1 ["horizontal"]
      256 JUMPIFNOT                        R16 ; [+8]
      257 GETIMPORT                        R15 K69 [UDim2.new]
      259 LOADN                            R16 0
      260 LOADN                            R17 0
      261 LOADN                            R18 1
      262 LOADN                            R19 0
      263 CALL                             R15 4 1
      264 JUMP                             ; [+7]
      265 GETIMPORT                        R15 K69 [UDim2.new]
      267 LOADN                            R16 1
      268 LOADN                            R17 0
      269 LOADN                            R18 0
      270 LOADN                            R19 0
      271 CALL                             R15 4 1
      272 SETTABLEKS                       R15 R14 K62 ["Size"]
      274 GETTABLEKS                       R16 R0 K0 ["props"]
      276 GETTABLEKS                       R16 R16 K1 ["horizontal"]
      278 JUMPIFNOT                        R16 ; [+3]
      279 GETIMPORT                        R15 K71 [Enum.AutomaticSize.X]
      281 JUMP                             ; [+2]
      282 GETIMPORT                        R15 K73 [Enum.AutomaticSize.Y]
      284 SETTABLEKS                       R15 R14 K63 ["AutomaticSize"]
      286 GETUPVAL                         R16 12
      287 GETTABLEKS                       R16 R16 K74 ["OS"]
      289 JUMPIFNOTEQKS                    R16 K75 ["android"] ; [+4]
      291 JUMPIFNOT                        R7 ; [+2]
      292 LOADB                            R15 0
      293 JUMP                             ; [+4]
      294 GETTABLEKS                       R15 R0 K0 ["props"]
      296 GETTABLEKS                       R15 R15 K64 ["removeClippedSubviews"]
      298 SETTABLEKS                       R15 R14 K64 ["removeClippedSubviews"]
      300 LOADB                            R15 0
      301 SETTABLEKS                       R15 R14 K65 ["collapsable"]
      303 CALL                             R10 4 1
      304 MOVE                             R11 R6
      305 CALL                             R8 3 1
      306 GETTABLEKS                       R10 R0 K0 ["props"]
      308 GETTABLEKS                       R10 R10 K76 ["alwaysBounceHorizontal"]
      310 JUMPIFEQKNIL                     R10 ; [+6]
      312 GETTABLEKS                       R9 R0 K0 ["props"]
      314 GETTABLEKS                       R9 R9 K76 ["alwaysBounceHorizontal"]
      316 JUMP                             ; [+4]
      317 GETTABLEKS                       R9 R0 K0 ["props"]
      319 GETTABLEKS                       R9 R9 K1 ["horizontal"]
      321 GETTABLEKS                       R11 R0 K0 ["props"]
      323 GETTABLEKS                       R11 R11 K77 ["alwaysBounceVertical"]
      325 JUMPIFEQKNIL                     R11 ; [+6]
      327 GETTABLEKS                       R10 R0 K0 ["props"]
      329 GETTABLEKS                       R10 R10 K77 ["alwaysBounceVertical"]
      331 JUMP                             ; [+5]
      332 GETTABLEKS                       R11 R0 K0 ["props"]
      334 GETTABLEKS                       R11 R11 K1 ["horizontal"]
      336 NOT                              R10 R11
      337 GETTABLEKS                       R12 R0 K0 ["props"]
      339 GETTABLEKS                       R12 R12 K1 ["horizontal"]
      341 JUMPIFNOTEQKB                    R12 TRUE ; [+5]
      343 GETUPVAL                         R11 13
      344 GETTABLEKS                       R11 R11 K78 ["baseHorizontal"]
      346 JUMP                             ; [+3]
      347 GETUPVAL                         R11 13
      348 GETTABLEKS                       R11 R11 K79 ["baseVertical"]
      350 GETUPVAL                         R12 11
      351 GETTABLEKS                       R12 R12 K59 ["assign"]
      353 GETIMPORT                        R13 K81 [table.clone]
      355 GETTABLEKS                       R14 R0 K0 ["props"]
      357 CALL                             R13 1 1
      358 DUPTABLE                         R14 K104 [{"alwaysBounceHorizontal", "alwaysBounceVertical", "style", "onContentSizeChange", "onLayout", "onMomentumScrollBegin", "onMomentumScrollEnd", "onResponderGrant", "onResponderReject", "onResponderRelease", "onResponderTerminationRequest", "onScrollBeginDrag", "onScrollEndDrag", "onScrollShouldSetResponder", "onStartShouldSetResponder", "onStartShouldSetResponderCapture", "onTouchEnd", "onTouchMove", "onTouchStart", "onTouchCancel", "onScroll", "scrollEventThrottle", "sendMomentumEvents", "snapToStart", "snapToEnd", "pagingEnabled", "AutomaticCanvasSize"}]
      359 SETTABLEKS                       R9 R14 K76 ["alwaysBounceHorizontal"]
      361 SETTABLEKS                       R10 R14 K77 ["alwaysBounceVertical"]
      363 GETUPVAL                         R15 14
      364 GETTABLEKS                       R15 R15 K105 ["compose"]
      366 MOVE                             R16 R11
      367 GETTABLEKS                       R17 R0 K0 ["props"]
      369 GETTABLEKS                       R17 R17 K9 ["style"]
      371 CALL                             R15 2 1
      372 SETTABLEKS                       R15 R14 K9 ["style"]
      374 GETUPVAL                         R15 11
      375 GETTABLEKS                       R15 R15 K106 ["None"]
      377 SETTABLEKS                       R15 R14 K17 ["onContentSizeChange"]
      379 GETTABLEKS                       R15 R0 K107 ["_handleLayout"]
      381 SETTABLEKS                       R15 R14 K18 ["onLayout"]
      383 GETTABLEKS                       R15 R0 K108 ["_handleMomentumScrollBegin"]
      385 SETTABLEKS                       R15 R14 K82 ["onMomentumScrollBegin"]
      387 GETTABLEKS                       R15 R0 K109 ["_handleMomentumScrollEnd"]
      389 SETTABLEKS                       R15 R14 K83 ["onMomentumScrollEnd"]
      391 GETTABLEKS                       R15 R0 K110 ["_handleResponderGrant"]
      393 SETTABLEKS                       R15 R14 K84 ["onResponderGrant"]
      395 GETTABLEKS                       R15 R0 K111 ["_handleResponderReject"]
      397 SETTABLEKS                       R15 R14 K85 ["onResponderReject"]
      399 GETTABLEKS                       R15 R0 K112 ["_handleResponderRelease"]
      401 SETTABLEKS                       R15 R14 K86 ["onResponderRelease"]
      403 GETTABLEKS                       R15 R0 K113 ["_handleResponderTerminationRequest"]
      405 SETTABLEKS                       R15 R14 K87 ["onResponderTerminationRequest"]
      407 GETTABLEKS                       R15 R0 K114 ["_handleScrollBeginDrag"]
      409 SETTABLEKS                       R15 R14 K88 ["onScrollBeginDrag"]
      411 GETTABLEKS                       R15 R0 K115 ["_handleScrollEndDrag"]
      413 SETTABLEKS                       R15 R14 K89 ["onScrollEndDrag"]
      415 GETTABLEKS                       R15 R0 K116 ["_handleScrollShouldSetResponder"]
      417 SETTABLEKS                       R15 R14 K90 ["onScrollShouldSetResponder"]
      419 GETTABLEKS                       R15 R0 K117 ["_handleStartShouldSetResponder"]
      421 SETTABLEKS                       R15 R14 K91 ["onStartShouldSetResponder"]
      423 GETTABLEKS                       R15 R0 K118 ["_handleStartShouldSetResponderCapture"]
      425 SETTABLEKS                       R15 R14 K92 ["onStartShouldSetResponderCapture"]
      427 GETTABLEKS                       R15 R0 K119 ["_handleTouchEnd"]
      429 SETTABLEKS                       R15 R14 K93 ["onTouchEnd"]
      431 GETTABLEKS                       R15 R0 K120 ["_handleTouchMove"]
      433 SETTABLEKS                       R15 R14 K94 ["onTouchMove"]
      435 GETTABLEKS                       R15 R0 K121 ["_handleTouchStart"]
      437 SETTABLEKS                       R15 R14 K95 ["onTouchStart"]
      439 GETTABLEKS                       R15 R0 K122 ["_handleTouchCancel"]
      441 SETTABLEKS                       R15 R14 K96 ["onTouchCancel"]
      443 GETTABLEKS                       R15 R0 K123 ["_handleScroll"]
      445 SETTABLEKS                       R15 R14 K97 ["onScroll"]
      447 JUMPIFNOT                        R7 ; [+2]
      448 LOADN                            R15 1
      449 JUMP                             ; [+4]
      450 GETTABLEKS                       R15 R0 K0 ["props"]
      452 GETTABLEKS                       R15 R15 K98 ["scrollEventThrottle"]
      454 SETTABLEKS                       R15 R14 K98 ["scrollEventThrottle"]
      456 GETTABLEKS                       R16 R0 K0 ["props"]
      458 GETTABLEKS                       R16 R16 K82 ["onMomentumScrollBegin"]
      460 JUMPIF                           R16 ; [+5]
      461 GETTABLEKS                       R16 R0 K0 ["props"]
      463 GETTABLEKS                       R16 R16 K83 ["onMomentumScrollEnd"]
      465 JUMPIFNOT                        R16 ; [+2]
      466 LOADB                            R15 1
      467 JUMP                             ; [+1]
      468 LOADB                            R15 0
      469 SETTABLEKS                       R15 R14 K99 ["sendMomentumEvents"]
      471 GETTABLEKS                       R16 R0 K0 ["props"]
      473 GETTABLEKS                       R16 R16 K100 ["snapToStart"]
      475 JUMPIFNOTEQKB                    R16 FALSE ; [+2]
      477 LOADB                            R15 0 +1
      478 LOADB                            R15 1
      479 SETTABLEKS                       R15 R14 K100 ["snapToStart"]
      481 GETTABLEKS                       R16 R0 K0 ["props"]
      483 GETTABLEKS                       R16 R16 K101 ["snapToEnd"]
      485 JUMPIFNOTEQKB                    R16 FALSE ; [+2]
      487 LOADB                            R15 0 +1
      488 LOADB                            R15 1
      489 SETTABLEKS                       R15 R14 K101 ["snapToEnd"]
      491 GETUPVAL                         R15 12
      492 GETTABLEKS                       R15 R15 K124 ["select"]
      494 DUPTABLE                         R16 K126 [{"ios", "android"}]
      495 LOADB                            R17 0
      496 GETTABLEKS                       R18 R0 K0 ["props"]
      498 GETTABLEKS                       R18 R18 K102 ["pagingEnabled"]
      500 JUMPIFNOTEQKB                    R18 TRUE ; [+16]
      502 LOADB                            R17 0
      503 GETTABLEKS                       R18 R0 K0 ["props"]
      505 GETTABLEKS                       R18 R18 K127 ["snapToInterval"]
      507 JUMPIFNOTEQKNIL                  R18 ; [+9]
      509 GETTABLEKS                       R18 R0 K0 ["props"]
      511 GETTABLEKS                       R18 R18 K128 ["snapToOffsets"]
      513 JUMPIFEQKNIL                     R18 ; [+2]
      515 LOADB                            R17 0 +1
      516 LOADB                            R17 1
      517 SETTABLEKS                       R17 R16 K125 ["ios"]
      519 LOADB                            R17 1
      520 GETTABLEKS                       R18 R0 K0 ["props"]
      522 GETTABLEKS                       R18 R18 K102 ["pagingEnabled"]
      524 JUMPIFEQKB                       R18 TRUE ; [+16]
      526 LOADB                            R17 1
      527 GETTABLEKS                       R18 R0 K0 ["props"]
      529 GETTABLEKS                       R18 R18 K127 ["snapToInterval"]
      531 JUMPIFNOTEQKNIL                  R18 ; [+9]
      533 GETTABLEKS                       R18 R0 K0 ["props"]
      535 GETTABLEKS                       R18 R18 K128 ["snapToOffsets"]
      537 JUMPIFNOTEQKNIL                  R18 ; [+2]
      539 LOADB                            R17 0 +1
      540 LOADB                            R17 1
      541 SETTABLEKS                       R17 R16 K75 ["android"]
      543 CALL                             R15 1 1
      544 SETTABLEKS                       R15 R14 K102 ["pagingEnabled"]
      546 GETTABLEKS                       R16 R0 K0 ["props"]
      548 GETTABLEKS                       R16 R16 K129 ["overrideAutomaticCanvasSize"]
      550 JUMPIFNOT                        R16 ; [+3]
      551 GETIMPORT                        R15 K130 [Enum.AutomaticSize.None]
      553 JUMP                             ; [+1]
      554 LOADNIL                          R15
      555 SETTABLEKS                       R15 R14 K103 ["AutomaticCanvasSize"]
      557 CALL                             R12 2 1
      558 GETTABLEKS                       R13 R0 K0 ["props"]
      560 GETTABLEKS                       R13 R13 K131 ["decelerationRate"]
      562 JUMPIFEQKNIL                     R13 ; [+6]
      564 GETUPVAL                         R14 15
      565 MOVE                             R15 R13
      566 CALL                             R14 1 1
      567 SETTABLEKS                       R14 R12 K131 ["decelerationRate"]
      569 GETTABLEKS                       R14 R0 K0 ["props"]
      571 GETTABLEKS                       R14 R14 K132 ["refreshControl"]
      573 GETUPVAL                         R15 6
      574 GETTABLEKS                       R15 R15 K133 ["toJSBoolean"]
      576 MOVE                             R16 R14
      577 CALL                             R15 1 1
      578 JUMPIFNOT                        R15 ; [+95]
      579 GETUPVAL                         R15 12
      580 GETTABLEKS                       R15 R15 K74 ["OS"]
      582 JUMPIFEQKS                       R15 K125 ["ios"] ; [+6]
      584 GETUPVAL                         R15 12
      585 GETTABLEKS                       R15 R15 K74 ["OS"]
      587 JUMPIFNOTEQKS                    R15 K134 ["roblox"] ; [+22]
      589 GETUPVAL                         R15 5
      590 GETTABLEKS                       R15 R15 K26 ["createElement"]
      592 MOVE                             R16 R1
      593 GETUPVAL                         R17 11
      594 GETTABLEKS                       R17 R17 K59 ["assign"]
      596 GETIMPORT                        R18 K81 [table.clone]
      598 MOVE                             R19 R12
      599 CALL                             R18 1 1
      600 DUPTABLE                         R19 K60 [{"ref"}]
      601 GETTABLEKS                       R20 R0 K135 ["_setNativeRef"]
      603 SETTABLEKS                       R20 R19 K31 ["ref"]
      605 CALL                             R17 2 1
      606 MOVE                             R18 R14
      607 MOVE                             R19 R8
      608 CALL                             R15 4 -1
      609 RETURN                           R15 -1
      610 GETUPVAL                         R15 12
      611 GETTABLEKS                       R15 R15 K74 ["OS"]
      613 JUMPIFNOTEQKS                    R15 K75 ["android"] ; [+60]
      615 LOADNIL                          R15
      616 LOADNIL                          R16
      617 GETTABLEKS                       R19 R12 K9 ["style"]
      619 MOVE                             R18 R19
      620 DUPTABLE                         R17 K138 [{"outer", "inner"}]
      621 SETTABLEKS                       R18 R17 K136 ["outer"]
      623 SETTABLEKS                       R18 R17 K137 ["inner"]
      625 GETTABLEKS                       R15 R17 K136 ["outer"]
      627 GETTABLEKS                       R16 R17 K137 ["inner"]
      629 GETUPVAL                         R17 5
      630 GETTABLEKS                       R17 R17 K139 ["cloneElement"]
      632 MOVE                             R18 R14
      633 GETUPVAL                         R19 11
      634 GETTABLEKS                       R19 R19 K59 ["assign"]
      636 DUPTABLE                         R20 K140 [{"style"}]
      637 GETUPVAL                         R21 14
      638 GETTABLEKS                       R21 R21 K105 ["compose"]
      640 MOVE                             R22 R11
      641 MOVE                             R23 R15
      642 CALL                             R21 2 1
      643 SETTABLEKS                       R21 R20 K9 ["style"]
      645 CALL                             R19 1 1
      646 GETUPVAL                         R20 5
      647 GETTABLEKS                       R20 R20 K26 ["createElement"]
      649 MOVE                             R21 R1
      650 GETUPVAL                         R22 11
      651 GETTABLEKS                       R22 R22 K59 ["assign"]
      653 NEWTABLE                         R23 0 0
      655 MOVE                             R24 R12
      656 DUPTABLE                         R25 K141 [{"style", "ref"}]
      657 GETUPVAL                         R26 14
      658 GETTABLEKS                       R26 R26 K105 ["compose"]
      660 MOVE                             R27 R11
      661 MOVE                             R28 R16
      662 CALL                             R26 2 1
      663 SETTABLEKS                       R26 R25 K9 ["style"]
      665 GETTABLEKS                       R26 R0 K135 ["_setNativeRef"]
      667 SETTABLEKS                       R26 R25 K31 ["ref"]
      669 CALL                             R22 3 1
      670 MOVE                             R23 R8
      671 CALL                             R20 3 -1
      672 CALL                             R17 -1 -1
      673 RETURN                           R17 -1
      674 GETTABLEKS                       R15 R0 K135 ["_setNativeRef"]
      676 SETTABLEKS                       R15 R12 K31 ["ref"]
      678 GETUPVAL                         R15 5
      679 GETTABLEKS                       R15 R15 K26 ["createElement"]
      681 MOVE                             R16 R1
      682 MOVE                             R17 R12
      683 MOVE                             R18 R8
      684 CALL                             R15 3 -1
      685 RETURN                           R15 -1

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
       49 DUPTABLE                         R13 K28 [{"OS", "select"}]
       50 LOADK                            R14 K29 ["roblox"]
       51 SETTABLEKS                       R14 R13 K26 ["OS"]
       53 NEWCLOSURE                       R14 P3
       54 CAPTURE                          REF R12
       55 SETTABLEKS                       R14 R13 K27 ["select"]
       57 MOVE                             R12 R13
       58 GETIMPORT                        R13 K4 [require]
       60 GETTABLEKS                       R14 R1 K30 ["React"]
       62 CALL                             R13 1 1
       63 DUPTABLE                         R14 K32 [{"findNodeHandle"}]
       64 DUPCLOSURE                       R15 K33 [PROTO_6]
       65 SETTABLEKS                       R15 R14 K31 ["findNodeHandle"]
       67 GETIMPORT                        R15 K4 [require]
       69 GETIMPORT                        R16 K1 [script]
       71 GETTABLEKS                       R16 R16 K2 ["Parent"]
       73 GETTABLEKS                       R16 R16 K34 ["ScrollViewStickyHeader"]
       75 CALL                             R15 1 1
       76 GETIMPORT                        R16 K4 [require]
       78 GETTABLEKS                       R17 R0 K35 ["StyleSheet"]
       80 GETTABLEKS                       R17 R17 K35 ["StyleSheet"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K4 [require]
       85 GETIMPORT                        R18 K1 [script]
       87 GETTABLEKS                       R18 R18 K2 ["Parent"]
       89 GETTABLEKS                       R18 R18 K2 ["Parent"]
       91 GETTABLEKS                       R18 R18 K36 ["View"]
       93 GETTABLEKS                       R18 R18 K36 ["View"]
       95 CALL                             R17 1 1
       96 DUPTABLE                         R18 K38 [{"measureLayout"}]
       97 DUPCLOSURE                       R19 K39 [PROTO_7]
       98 SETTABLEKS                       R19 R18 K37 ["measureLayout"]
      100 DUPTABLE                         R19 K41 [{"addListener"}]
      101 DUPCLOSURE                       R20 K42 [PROTO_8]
      102 SETTABLEKS                       R20 R19 K40 ["addListener"]
      104 DUPTABLE                         R20 K45 [{"beginScroll", "endScroll"}]
      105 DUPCLOSURE                       R21 K46 [PROTO_9]
      106 SETTABLEKS                       R21 R20 K43 ["beginScroll"]
      108 DUPCLOSURE                       R21 K47 [PROTO_10]
      109 SETTABLEKS                       R21 R20 K44 ["endScroll"]
      111 DUPTABLE                         R21 K51 [{"blurTextInput", "currentlyFocusedInput", "isTextInput"}]
      112 DUPCLOSURE                       R22 K52 [PROTO_11]
      113 SETTABLEKS                       R22 R21 K48 ["blurTextInput"]
      115 DUPCLOSURE                       R22 K53 [PROTO_12]
      116 SETTABLEKS                       R22 R21 K49 ["currentlyFocusedInput"]
      118 DUPCLOSURE                       R22 K54 [PROTO_13]
      119 SETTABLEKS                       R22 R21 K50 ["isTextInput"]
      121 DUPCLOSURE                       R22 K55 [PROTO_14]
      122 DUPCLOSURE                       R23 K56 [PROTO_15]
      123 GETIMPORT                        R24 K4 [require]
      125 GETTABLEKS                       R25 R0 K57 ["jsUtils"]
      127 GETTABLEKS                       R25 R25 K58 ["invariant"]
      129 CALL                             R24 1 1
      130 GETIMPORT                        R25 K4 [require]
      132 GETIMPORT                        R26 K1 [script]
      134 GETTABLEKS                       R26 R26 K2 ["Parent"]
      136 GETTABLEKS                       R26 R26 K59 ["processDecelerationRate"]
      138 CALL                             R25 1 1
      139 DUPCLOSURE                       R26 K60 [PROTO_16]
      140 GETIMPORT                        R27 K4 [require]
      142 GETIMPORT                        R28 K1 [script]
      144 GETTABLEKS                       R28 R28 K2 ["Parent"]
      146 GETTABLEKS                       R28 R28 K2 ["Parent"]
      148 GETTABLEKS                       R28 R28 K2 ["Parent"]
      150 GETTABLEKS                       R28 R28 K61 ["Utilities"]
      152 GETTABLEKS                       R28 R28 K62 ["setAndForwardRef"]
      154 CALL                             R27 1 1
      155 GETIMPORT                        R28 K4 [require]
      157 GETIMPORT                        R29 K1 [script]
      159 GETTABLEKS                       R29 R29 K2 ["Parent"]
      161 GETTABLEKS                       R29 R29 K63 ["ScrollViewContext"]
      163 CALL                             R28 1 1
      164 GETTABLEKS                       R29 R28 K64 ["default"]
      166 GETTABLEKS                       R30 R28 K65 ["HORIZONTAL"]
      168 GETTABLEKS                       R31 R28 K66 ["VERTICAL"]
      170 GETIMPORT                        R32 K4 [require]
      172 GETIMPORT                        R33 K1 [script]
      174 GETTABLEKS                       R33 R33 K2 ["Parent"]
      176 GETTABLEKS                       R33 R33 K34 ["ScrollViewStickyHeader"]
      178 CALL                             R32 1 1
      179 GETIMPORT                        R33 K4 [require]
      181 GETIMPORT                        R34 K1 [script]
      183 GETTABLEKS                       R34 R34 K2 ["Parent"]
      185 GETTABLEKS                       R34 R34 K67 ["ScrollViewCommands"]
      187 CALL                             R33 1 1
      188 GETTABLEKS                       R33 R33 K64 ["default"]
      190 GETIMPORT                        R34 K4 [require]
      192 GETIMPORT                        R35 K1 [script]
      194 GETTABLEKS                       R35 R35 K2 ["Parent"]
      196 GETTABLEKS                       R35 R35 K68 ["ScrollContentViewNativeComponent"]
      198 CALL                             R34 1 1
      199 GETIMPORT                        R35 K4 [require]
      201 GETIMPORT                        R36 K1 [script]
      203 GETTABLEKS                       R36 R36 K2 ["Parent"]
      205 GETTABLEKS                       R36 R36 K69 ["ScrollViewNativeComponent"]
      207 CALL                             R35 1 1
      208 LOADNIL                          R36
      209 LOADNIL                          R37
      210 LOADNIL                          R38
      211 GETTABLEKS                       R40 R12 K26 ["OS"]
      213 JUMPIFNOTEQKS                    R40 K70 ["android"] ; [+19]
      215 DUPTABLE                         R39 K73 [{"NativeHorizontalScrollViewTuple", "NativeVerticalScrollViewTuple"}]
      216 NEWTABLE                         R40 0 2
      218 LOADK                            R41 K74 ["Frame"]
      219 LOADK                            R42 K74 ["Frame"]
      220 SETLIST                          R40 R41 2 [1]
      222 SETTABLEKS                       R40 R39 K71 ["NativeHorizontalScrollViewTuple"]
      224 NEWTABLE                         R40 0 2
      226 MOVE                             R41 R35
      227 MOVE                             R42 R17
      228 SETLIST                          R40 R41 2 [1]
      230 SETTABLEKS                       R40 R39 K72 ["NativeVerticalScrollViewTuple"]
      232 JUMP                             ; [+17]
      233 DUPTABLE                         R39 K73 [{"NativeHorizontalScrollViewTuple", "NativeVerticalScrollViewTuple"}]
      234 NEWTABLE                         R40 0 2
      236 MOVE                             R41 R35
      237 MOVE                             R42 R34
      238 SETLIST                          R40 R41 2 [1]
      240 SETTABLEKS                       R40 R39 K71 ["NativeHorizontalScrollViewTuple"]
      242 NEWTABLE                         R40 0 2
      244 MOVE                             R41 R35
      245 MOVE                             R42 R34
      246 SETLIST                          R40 R41 2 [1]
      248 SETTABLEKS                       R40 R39 K72 ["NativeVerticalScrollViewTuple"]
      250 GETTABLEKS                       R37 R39 K71 ["NativeHorizontalScrollViewTuple"]
      252 GETTABLEKS                       R38 R39 K72 ["NativeVerticalScrollViewTuple"]
      254 GETTABLEKS                       R40 R13 K75 ["Component"]
      256 LOADK                            R42 K76 ["ScrollView"]
      257 NAMECALL                         R40 R40 K77 ["extend"]
      259 CALL                             R40 2 1
      260 SETTABLEKS                       R29 R40 K78 ["Context"]
      262 NEWCLOSURE                       R41 P15
      263 CAPTURE                          VAL R5
      264 CAPTURE                          VAL R13
      265 CAPTURE                          VAL R27
      266 CAPTURE                          VAL R14
      267 CAPTURE                          VAL R33
      268 CAPTURE                          VAL R4
      269 CAPTURE                          VAL R18
      270 CAPTURE                          VAL R24
      271 CAPTURE                          REF R12
      272 CAPTURE                          VAL R3
      273 CAPTURE                          VAL R6
      274 CAPTURE                          VAL R7
      275 CAPTURE                          VAL R11
      276 CAPTURE                          VAL R8
      277 CAPTURE                          VAL R20
      278 CAPTURE                          VAL R21
      279 CAPTURE                          VAL R10
      280 SETTABLEKS                       R41 R40 K79 ["init"]
      282 DUPCLOSURE                       R41 K80 [PROTO_60]
      283 CAPTURE                          VAL R7
      284 CAPTURE                          VAL R4
      285 CAPTURE                          VAL R19
      286 SETTABLEKS                       R41 R40 K81 ["componentDidMount"]
      288 DUPCLOSURE                       R41 K82 [PROTO_61]
      289 CAPTURE                          VAL R4
      290 SETTABLEKS                       R41 R40 K83 ["componentDidUpdate"]
      292 DUPCLOSURE                       R41 K84 [PROTO_62]
      293 SETTABLEKS                       R41 R40 K85 ["componentWillUnmount"]
      295 DUPCLOSURE                       R41 K86 [PROTO_63]
      296 CAPTURE                          VAL R7
      297 SETTABLEKS                       R41 R40 K87 ["_textInputFocusError"]
      299 DUPCLOSURE                       R41 K88 [PROTO_64]
      300 SETTABLEKS                       R41 R40 K89 ["_getKeyForIndex"]
      302 DUPCLOSURE                       R41 K90 [PROTO_65]
      303 CAPTURE                          VAL R10
      304 SETTABLEKS                       R41 R40 K91 ["_updateAnimatedNodeAttachment"]
      306 DUPCLOSURE                       R41 K92 [PROTO_66]
      307 CAPTURE                          VAL R4
      308 SETTABLEKS                       R41 R40 K93 ["_setStickyHeaderRef"]
      310 DUPCLOSURE                       R41 K94 [PROTO_67]
      311 CAPTURE                          VAL R13
      312 CAPTURE                          VAL R3
      313 CAPTURE                          VAL R4
      314 SETTABLEKS                       R41 R40 K95 ["_onStickyHeaderLayout"]
      316 NEWCLOSURE                       R41 P24
      317 CAPTURE                          REF R37
      318 CAPTURE                          REF R38
      319 CAPTURE                          VAL R3
      320 CAPTURE                          VAL R24
      321 CAPTURE                          VAL R9
      322 CAPTURE                          VAL R13
      323 CAPTURE                          VAL R4
      324 CAPTURE                          VAL R15
      325 CAPTURE                          VAL R29
      326 CAPTURE                          VAL R30
      327 CAPTURE                          VAL R31
      328 CAPTURE                          VAL R6
      329 CAPTURE                          REF R12
      330 CAPTURE                          REF R36
      331 CAPTURE                          VAL R16
      332 CAPTURE                          VAL R25
      333 SETTABLEKS                       R41 R40 K96 ["render"]
      335 GETTABLEKS                       R41 R16 K97 ["create"]
      337 DUPTABLE                         R42 K100 [{"baseVertical", "baseHorizontal"}]
      338 DUPTABLE                         R43 K102 [{"ScrollingDirection"}]
      339 GETIMPORT                        R44 K105 [Enum.ScrollingDirection.Y]
      341 SETTABLEKS                       R44 R43 K101 ["ScrollingDirection"]
      343 SETTABLEKS                       R43 R42 K98 ["baseVertical"]
      345 DUPTABLE                         R43 K102 [{"ScrollingDirection"}]
      346 GETIMPORT                        R44 K107 [Enum.ScrollingDirection.X]
      348 SETTABLEKS                       R44 R43 K101 ["ScrollingDirection"]
      350 SETTABLEKS                       R43 R42 K99 ["baseHorizontal"]
      352 CALL                             R41 1 1
      353 MOVE                             R36 R41
      354 DUPCLOSURE                       R41 K108 [PROTO_73]
      355 CAPTURE                          VAL R13
      356 CAPTURE                          VAL R40
      357 CAPTURE                          VAL R6
      358 GETTABLEKS                       R42 R13 K109 ["forwardRef"]
      360 MOVE                             R43 R41
      361 CALL                             R42 1 1
      362 SETTABLEKS                       R29 R42 K78 ["Context"]
      364 LOADK                            R43 K76 ["ScrollView"]
      365 SETTABLEKS                       R43 R42 K110 ["displayName"]
      367 CLOSEUPVALS                      R12
      368 RETURN                           R42 1
