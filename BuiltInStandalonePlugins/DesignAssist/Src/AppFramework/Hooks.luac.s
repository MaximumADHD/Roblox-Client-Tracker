PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["DeviceProfileContext"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ScaffoldContext"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["RegionContext"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["StructureContext"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 LOADN                            R2 1376
        1 JUMPIFNOTLE                      R2 R0 ; [+4]
        3 GETTABLEKS                       R2 R1 K0 ["l"]
        5 RETURN                           R2 1
        6 LOADN                            R2 864
        7 JUMPIFNOTLE                      R2 R0 ; [+4]
        9 GETTABLEKS                       R2 R1 K1 ["m"]
       11 RETURN                           R2 1
       12 LOADN                            R2 480
       13 JUMPIFNOTLE                      R2 R0 ; [+4]
       15 GETTABLEKS                       R2 R1 K2 ["s"]
       17 RETURN                           R2 1
       18 GETTABLEKS                       R2 R1 K3 ["xs"]
       20 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["AbsoluteSize"]
        6 GETUPVAL                         R2 2
        7 JUMPIFNOTEQKS                    R2 K1 ["X"] ; [+4]
        9 GETTABLEKS                       R1 R0 K1 ["X"]
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R1 R0 K2 ["Y"]
       14 LOADN                            R2 0
       15 JUMPIFNOTLT                      R2 R1 ; [+8]
       17 GETUPVAL                         R2 3
       18 JUMPIFEQ                         R1 R2 ; [+5]
       20 SETUPVAL                         R1 3
       21 GETUPVAL                         R2 4
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 JUMPIF                           R1 ; [+1]
        6 JUMP                             ; [+21]
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
       10 GETUPVAL                         R3 4
       11 JUMPIFNOTEQKS                    R3 K2 ["X"] ; [+4]
       13 GETTABLEKS                       R2 R1 K2 ["X"]
       15 JUMP                             ; [+2]
       16 GETTABLEKS                       R2 R1 K3 ["Y"]
       18 LOADN                            R3 0
       19 JUMPIFNOTLT                      R3 R2 ; [+8]
       21 GETUPVAL                         R3 1
       22 JUMPIFEQ                         R2 R3 ; [+5]
       24 SETUPVAL                         R2 1
       25 GETUPVAL                         R3 5
       26 MOVE                             R4 R2
       27 CALL                             R3 1 0
       28 GETUPVAL                         R2 1
       29 JUMPIFNOTEQ                      R2 R0 ; [+4]
       31 GETUPVAL                         R2 6
       32 ADDK                             R1 R2 K0 [1]
       33 JUMP                             ; [+1]
       34 LOADN                            R1 0
       35 SETUPVAL                         R1 6
       36 GETUPVAL                         R1 0
       37 LOADN                            R2 20
       38 JUMPIFLE                         R2 R1 ; [+8]
       40 GETUPVAL                         R1 1
       41 JUMPIFEQKNIL                     R1 ; [+9]
       43 GETUPVAL                         R1 6
       44 LOADN                            R2 4
       45 JUMPIFNOTLE                      R2 R1 ; [+5]
       47 GETUPVAL                         R1 7
       48 NAMECALL                         R1 R1 K4 ["Disconnect"]
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["Connected"]
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 2
       11 NAMECALL                         R0 R0 K0 ["Disconnect"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 LOADB                            R1 1
        7 LOADNIL                          R2
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          REF R1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          REF R2
       13 CAPTURE                          UPVAL U2
       14 JUMPIF                           R1 ; [+1]
       15 JUMP                             ; [+19]
       16 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
       18 GETUPVAL                         R6 1
       19 JUMPIFNOTEQKS                    R6 K2 ["X"] ; [+4]
       21 GETTABLEKS                       R5 R4 K2 ["X"]
       23 JUMP                             ; [+2]
       24 GETTABLEKS                       R5 R4 K3 ["Y"]
       26 LOADN                            R6 0
       27 JUMPIFNOTLT                      R6 R5 ; [+7]
       29 JUMPIFEQ                         R5 R2 ; [+5]
       31 MOVE                             R2 R5
       32 GETUPVAL                         R6 2
       33 MOVE                             R7 R5
       34 CALL                             R6 1 0
       35 LOADK                            R6 K1 ["AbsoluteSize"]
       36 NAMECALL                         R4 R0 K4 ["GetPropertyChangedSignal"]
       38 CALL                             R4 2 1
       39 MOVE                             R6 R3
       40 NAMECALL                         R4 R4 K5 ["Connect"]
       42 CALL                             R4 2 1
       43 LOADN                            R5 0
       44 LOADN                            R6 0
       45 LOADNIL                          R7
       46 GETUPVAL                         R8 3
       47 GETTABLEKS                       R8 R8 K6 ["Heartbeat"]
       49 NEWCLOSURE                       R10 P1
       50 CAPTURE                          REF R5
       51 CAPTURE                          REF R2
       52 CAPTURE                          REF R1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          REF R6
       57 CAPTURE                          REF R7
       58 NAMECALL                         R8 R8 K5 ["Connect"]
       60 CALL                             R8 2 1
       61 MOVE                             R7 R8
       62 NEWCLOSURE                       R8 P2
       63 CAPTURE                          REF R1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          REF R7
       66 CLOSEUPVALS                      R1
       67 RETURN                           R8 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 LOADNIL                          R3
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["useEffect"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U1
       13 NEWTABLE                         R6 0 0
       15 CALL                             R4 2 0
       16 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["X"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["Y"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRegion"]
        3 CALL                             R1 0 1
        4 LOADN                            R3 0
        5 GETTABLEKS                       R4 R1 K1 ["width"]
        7 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
        9 GETIMPORT                        R2 K4 [math.max]
       11 CALL                             R2 2 1
       12 LOADN                            R4 1
       13 LOADN                            R6 1376
       14 JUMPIFNOTLE                      R6 R2 ; [+4]
       16 GETTABLEKS                       R5 R0 K5 ["l"]
       18 JUMP                             ; [+14]
       19 LOADN                            R6 864
       20 JUMPIFNOTLE                      R6 R2 ; [+4]
       22 GETTABLEKS                       R5 R0 K6 ["m"]
       24 JUMP                             ; [+8]
       25 LOADN                            R6 480
       26 JUMPIFNOTLE                      R6 R2 ; [+4]
       28 GETTABLEKS                       R5 R0 K7 ["s"]
       30 JUMP                             ; [+2]
       31 GETTABLEKS                       R5 R0 K8 ["xs"]
       33 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       35 GETIMPORT                        R3 K4 [math.max]
       37 CALL                             R3 2 1
       38 GETTABLEKS                       R5 R1 K9 ["peek"]
       40 LOADN                            R6 0
       41 JUMPIFNOTLT                      R6 R5 ; [+4]
       43 GETTABLEKS                       R4 R1 K9 ["peek"]
       45 JUMP                             ; [+2]
       46 GETTABLEKS                       R4 R1 K10 ["margin"]
       48 GETTABLEKS                       R8 R1 K10 ["margin"]
       50 SUB                              R7 R2 R8
       51 SUB                              R6 R7 R4
       52 GETTABLEKS                       R8 R1 K11 ["gutter"]
       54 SUBK                             R10 R3 K12 [1]
       55 FASTCALL2K                       MATH_MAX R10 K13 ; [+4]
       57 LOADK                            R11 K13 [0]
       58 GETIMPORT                        R9 K4 [math.max]
       60 CALL                             R9 2 1
       61 MUL                              R7 R8 R9
       62 SUB                              R5 R6 R7
       63 DUPTABLE                         R6 K16 [{"tileWidth", "visible"}]
       64 LOADN                            R8 0
       65 DIV                              R9 R5 R3
       66 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       68 GETIMPORT                        R7 K4 [math.max]
       70 CALL                             R7 2 1
       71 SETTABLEKS                       R7 R6 K14 ["tileWidth"]
       73 SETTABLEKS                       R3 R6 K15 ["visible"]
       75 RETURN                           R6 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useRegion"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getContainerBreakpoint"]
        7 GETTABLEKS                       R2 R0 K2 ["width"]
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRegion"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["useDeviceProfile"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["getLayoutMetrics"]
       12 GETTABLEKS                       R4 R0 K3 ["width"]
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1
       16 GETTABLEKS                       R3 R1 K4 ["isProvided"]
       18 JUMPIF                           R3 ; [+7]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K2 ["getLayoutMetrics"]
       22 GETTABLEKS                       R4 R2 K3 ["width"]
       24 CALL                             R3 1 -1
       25 RETURN                           R3 -1
       26 DUPTABLE                         R3 K11 [{"breakpoint", "columns", "margin", "gutter", "gap", "peek"}]
       27 GETTABLEKS                       R4 R1 K5 ["breakpoint"]
       29 SETTABLEKS                       R4 R3 K5 ["breakpoint"]
       31 GETTABLEKS                       R4 R1 K6 ["columns"]
       33 SETTABLEKS                       R4 R3 K6 ["columns"]
       35 GETTABLEKS                       R4 R1 K7 ["margin"]
       37 SETTABLEKS                       R4 R3 K7 ["margin"]
       39 GETTABLEKS                       R4 R1 K8 ["gutter"]
       41 SETTABLEKS                       R4 R3 K8 ["gutter"]
       43 GETTABLEKS                       R4 R1 K8 ["gutter"]
       45 SETTABLEKS                       R4 R3 K9 ["gap"]
       47 GETTABLEKS                       R4 R1 K10 ["peek"]
       49 SETTABLEKS                       R4 R3 K10 ["peek"]
       51 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["RegionInsetContext"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_16:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["orientation"]
        3 JUMPIFNOTEQKS                    R2 K1 ["Portrait"] ; [+7]
        5 GETTABLEKS                       R2 R0 K2 ["breakpoint"]
        7 JUMPIFEQKS                       R2 K3 ["Mobile"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 DUPTABLE                         R2 K5 [{"navigationPlacement"}]
       12 JUMPIFNOT                        R1 ; [+2]
       13 LOADK                            R3 K6 ["Bottom"]
       14 JUMP                             ; [+1]
       15 LOADK                            R3 K7 ["Left"]
       16 SETTABLEKS                       R3 R2 K4 ["navigationPlacement"]
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.Hooks must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K12 [game]
       23 LOADK                            R4 K13 ["RunService"]
       24 NAMECALL                         R2 R2 K14 ["GetService"]
       26 CALL                             R2 2 1
       27 GETIMPORT                        R3 K8 [require]
       29 GETIMPORT                        R4 K1 [script]
       31 GETTABLEKS                       R4 R4 K15 ["Parent"]
       33 GETTABLEKS                       R4 R4 K16 ["Contexts"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K8 [require]
       38 GETIMPORT                        R5 K1 [script]
       40 GETTABLEKS                       R5 R5 K15 ["Parent"]
       42 GETTABLEKS                       R5 R5 K17 ["DeviceProfiles"]
       44 CALL                             R4 1 1
       45 NEWTABLE                         R5 16 0
       47 DUPCLOSURE                       R6 K18 [PROTO_0]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 SETTABLEKS                       R6 R5 K19 ["useDeviceProfile"]
       52 DUPCLOSURE                       R6 K20 [PROTO_1]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R6 R5 K21 ["useScaffold"]
       57 DUPCLOSURE                       R6 K22 [PROTO_2]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R6 R5 K23 ["useRegion"]
       62 DUPCLOSURE                       R6 K24 [PROTO_3]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R6 R5 K25 ["useStructure"]
       67 DUPCLOSURE                       R6 K26 [PROTO_4]
       68 SETTABLEKS                       R6 R5 K27 ["visibleForWidth"]
       70 DUPCLOSURE                       R7 K28 [PROTO_9]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R2
       73 DUPCLOSURE                       R8 K29 [PROTO_10]
       74 CAPTURE                          VAL R7
       75 SETTABLEKS                       R8 R5 K30 ["useMeasuredWidth"]
       77 DUPCLOSURE                       R8 K31 [PROTO_11]
       78 CAPTURE                          VAL R7
       79 SETTABLEKS                       R8 R5 K32 ["useMeasuredHeight"]
       81 DUPCLOSURE                       R8 K33 [PROTO_12]
       82 CAPTURE                          VAL R5
       83 SETTABLEKS                       R8 R5 K34 ["useResponsiveTileWidth"]
       85 DUPCLOSURE                       R8 K35 [PROTO_13]
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R4
       88 SETTABLEKS                       R8 R5 K36 ["useContainerBreakpoint"]
       90 DUPCLOSURE                       R8 K37 [PROTO_14]
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R8 R5 K38 ["useLayoutMetrics"]
       95 DUPCLOSURE                       R8 K39 [PROTO_15]
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R3
       98 SETTABLEKS                       R8 R5 K40 ["useRegionInsets"]
      100 DUPCLOSURE                       R8 K41 [PROTO_16]
      101 SETTABLEKS                       R8 R5 K42 ["useRegionLayout"]
      103 RETURN                           R5 1
