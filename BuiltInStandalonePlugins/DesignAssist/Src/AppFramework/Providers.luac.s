PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["DeviceProfileContext"]
        4 GETTABLEKS                       R4 R4 K1 ["Provider"]
        6 DUPTABLE                         R5 K3 [{"value"}]
        7 SETTABLEKS                       R0 R5 K2 ["value"]
        9 DUPTABLE                         R6 K5 [{"LayoutMetrics"}]
       10 GETUPVAL                         R7 0
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K6 ["LayoutMetricsContext"]
       14 GETTABLEKS                       R8 R8 K1 ["Provider"]
       16 DUPTABLE                         R9 K3 [{"value"}]
       17 GETUPVAL                         R10 2
       18 GETTABLEKS                       R10 R10 K7 ["getLayoutMetrics"]
       20 GETTABLEKS                       R11 R0 K8 ["width"]
       22 CALL                             R10 1 1
       23 SETTABLEKS                       R10 R9 K2 ["value"]
       25 DUPTABLE                         R10 K10 [{"Insets"}]
       26 GETUPVAL                         R11 0
       27 GETUPVAL                         R12 1
       28 GETTABLEKS                       R12 R12 K11 ["UseInsetsContext"]
       30 GETTABLEKS                       R12 R12 K1 ["Provider"]
       32 DUPTABLE                         R13 K3 [{"value"}]
       33 JUMPIFEQKB                       R1 TRUE ; [+2]
       35 LOADB                            R14 0 +1
       36 LOADB                            R14 1
       37 SETTABLEKS                       R14 R13 K2 ["value"]
       39 MOVE                             R14 R2
       40 CALL                             R11 3 1
       41 SETTABLEKS                       R11 R10 K9 ["Insets"]
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K4 ["LayoutMetrics"]
       46 CALL                             R3 3 -1
       47 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AbsoluteSize"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["makeResizableProfile"]
        6 LOADN                            R3 1
        7 GETTABLEKS                       R4 R0 K2 ["X"]
        9 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       11 GETIMPORT                        R2 K5 [math.max]
       13 CALL                             R2 2 1
       14 LOADN                            R4 1
       15 GETTABLEKS                       R5 R0 K6 ["Y"]
       17 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       19 GETIMPORT                        R3 K5 [math.max]
       21 CALL                             R3 2 1
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["layoutBreakpoint"]
        3 GETTABLEKS                       R2 R0 K0 ["layoutBreakpoint"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+8]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["orientation"]
       10 GETTABLEKS                       R2 R0 K1 ["orientation"]
       12 JUMPIFEQ                         R1 R2 ; [+3]
       14 GETUPVAL                         R1 0
       15 RETURN                           R1 1
       16 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AbsoluteSize"]
        3 LOADN                            R2 1
        4 GETTABLEKS                       R3 R0 K1 ["X"]
        6 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        8 GETIMPORT                        R1 K4 [math.max]
       10 CALL                             R1 2 1
       11 LOADN                            R3 1
       12 GETTABLEKS                       R4 R0 K5 ["Y"]
       14 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       16 GETIMPORT                        R2 K4 [math.max]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K6 ["makeResizableProfile"]
       22 MOVE                             R4 R1
       23 MOVE                             R5 R2
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 2
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R3
       28 CALL                             R4 1 0
       29 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        7 LOADN                            R3 1
        8 GETTABLEKS                       R4 R1 K1 ["X"]
       10 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       12 GETIMPORT                        R2 K4 [math.max]
       14 CALL                             R2 2 1
       15 LOADN                            R4 1
       16 GETTABLEKS                       R5 R1 K5 ["Y"]
       18 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       20 GETIMPORT                        R3 K4 [math.max]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K6 ["makeResizableProfile"]
       26 MOVE                             R5 R2
       27 MOVE                             R6 R3
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 2
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R4
       32 CALL                             R5 1 0
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K0 ["AbsoluteSize"]
       35 NAMECALL                         R1 R1 K7 ["GetPropertyChangedSignal"]
       37 CALL                             R1 2 1
       38 MOVE                             R3 R0
       39 NAMECALL                         R1 R1 K8 ["Connect"]
       41 CALL                             R1 2 1
       42 NEWCLOSURE                       R2 P2
       43 CAPTURE                          VAL R1
       44 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["canvasInstance"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["useEffect"]
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R3
       16 NEWTABLE                         R6 0 1
       18 MOVE                             R7 R1
       19 SETLIST                          R6 R7 1 [1]
       21 CALL                             R4 2 0
       22 GETUPVAL                         R4 2
       23 MOVE                             R5 R2
       24 GETTABLEKS                       R6 R0 K3 ["useInsets"]
       26 GETTABLEKS                       R7 R0 K4 ["children"]
       28 CALL                             R4 3 -1
       29 RETURN                           R4 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["profile"]
        2 GETTABLEKS                       R1 R1 K1 ["chrome"]
        4 JUMPIFNOTEQKS                    R1 K2 ["None"] ; [+24]
        6 GETTABLEKS                       R1 R0 K3 ["canvasInstance"]
        8 JUMPIFEQKNIL                     R1 ; [+20]
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R2 1
       12 DUPTABLE                         R3 K5 [{"profile", "useInsets", "canvasInstance"}]
       13 GETTABLEKS                       R4 R0 K0 ["profile"]
       15 SETTABLEKS                       R4 R3 K0 ["profile"]
       17 GETTABLEKS                       R4 R0 K4 ["useInsets"]
       19 SETTABLEKS                       R4 R3 K4 ["useInsets"]
       21 GETTABLEKS                       R4 R0 K3 ["canvasInstance"]
       23 SETTABLEKS                       R4 R3 K3 ["canvasInstance"]
       25 GETTABLEKS                       R4 R0 K6 ["children"]
       27 CALL                             R1 3 -1
       28 RETURN                           R1 -1
       29 GETUPVAL                         R1 2
       30 GETTABLEKS                       R2 R0 K0 ["profile"]
       32 GETTABLEKS                       R3 R0 K4 ["useInsets"]
       34 GETTABLEKS                       R4 R0 K6 ["children"]
       36 CALL                             R1 3 -1
       37 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.Providers must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETIMPORT                        R3 K1 [script]
       25 GETTABLEKS                       R3 R3 K11 ["Parent"]
       27 GETTABLEKS                       R3 R3 K12 ["Contexts"]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K8 [require]
       32 GETIMPORT                        R4 K1 [script]
       34 GETTABLEKS                       R4 R4 K11 ["Parent"]
       36 GETTABLEKS                       R4 R4 K13 ["DeviceProfiles"]
       38 CALL                             R3 1 1
       39 GETTABLEKS                       R4 R1 K14 ["createElement"]
       41 NEWTABLE                         R5 1 0
       43 DUPCLOSURE                       R6 K15 [PROTO_0]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 DUPCLOSURE                       R7 K16 [PROTO_6]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 DUPCLOSURE                       R8 K17 [PROTO_7]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 SETTABLEKS                       R8 R5 K18 ["DeviceProfileProvider"]
       57 RETURN                           R5 1
