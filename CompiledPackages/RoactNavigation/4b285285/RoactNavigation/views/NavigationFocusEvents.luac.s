PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_handleAction"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_handleWillFocus"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_handleWillBlur"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_handleDidFocus"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_handleDidBlur"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_handleRefocus"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["navigation"]
        4 GETTABLEKS                       R2 R1 K2 ["addListener"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["Action"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R0 K4 ["_actionSubscription"]
       14 GETTABLEKS                       R2 R1 K2 ["addListener"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K5 ["WillFocus"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R0
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R0 K6 ["_willFocusSubscription"]
       24 GETTABLEKS                       R2 R1 K2 ["addListener"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K7 ["WillBlur"]
       29 NEWCLOSURE                       R4 P2
       30 CAPTURE                          VAL R0
       31 CALL                             R2 2 1
       32 SETTABLEKS                       R2 R0 K8 ["_willBlurSubscription"]
       34 GETTABLEKS                       R2 R1 K2 ["addListener"]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K9 ["DidFocus"]
       39 NEWCLOSURE                       R4 P3
       40 CAPTURE                          VAL R0
       41 CALL                             R2 2 1
       42 SETTABLEKS                       R2 R0 K10 ["_didFocusSubscription"]
       44 GETTABLEKS                       R2 R1 K2 ["addListener"]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K11 ["DidBlur"]
       49 NEWCLOSURE                       R4 P4
       50 CAPTURE                          VAL R0
       51 CALL                             R2 2 1
       52 SETTABLEKS                       R2 R0 K12 ["_didBlurSubscription"]
       54 GETTABLEKS                       R2 R1 K2 ["addListener"]
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R3 R3 K13 ["Refocus"]
       59 NEWCLOSURE                       R4 P5
       60 CAPTURE                          VAL R0
       61 CALL                             R2 2 1
       62 SETTABLEKS                       R2 R0 K14 ["_refocusSubscription"]
       64 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_actionSubscription"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_actionSubscription"]
        5 GETTABLEKS                       R1 R1 K1 ["remove"]
        7 CALL                             R1 0 0
        8 GETTABLEKS                       R1 R0 K2 ["_willFocusSubscription"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["_willFocusSubscription"]
       13 GETTABLEKS                       R1 R1 K1 ["remove"]
       15 CALL                             R1 0 0
       16 GETTABLEKS                       R1 R0 K3 ["_willBlurSubscription"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K3 ["_willBlurSubscription"]
       21 GETTABLEKS                       R1 R1 K1 ["remove"]
       23 CALL                             R1 0 0
       24 GETTABLEKS                       R1 R0 K4 ["_didFocusSubscription"]
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETTABLEKS                       R1 R0 K4 ["_didFocusSubscription"]
       29 GETTABLEKS                       R1 R1 K1 ["remove"]
       31 CALL                             R1 0 0
       32 GETTABLEKS                       R1 R0 K5 ["_didBlurSubscription"]
       34 JUMPIFNOT                        R1 ; [+5]
       35 GETTABLEKS                       R1 R0 K5 ["_didBlurSubscription"]
       37 GETTABLEKS                       R1 R1 K1 ["remove"]
       39 CALL                             R1 0 0
       40 GETTABLEKS                       R1 R0 K6 ["_refocusSubscription"]
       42 JUMPIFNOT                        R1 ; [+5]
       43 GETTABLEKS                       R1 R0 K6 ["_refocusSubscription"]
       45 GETTABLEKS                       R1 R1 K1 ["remove"]
       47 CALL                             R1 0 0
       48 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["state"]
        2 GETTABLEKS                       R3 R1 K1 ["lastState"]
        4 GETTABLEKS                       R4 R1 K2 ["action"]
        6 GETTABLEKS                       R5 R1 K3 ["type"]
        8 GETTABLEKS                       R6 R1 K4 ["context"]
       10 GETTABLEKS                       R7 R0 K5 ["props"]
       12 GETTABLEKS                       R7 R7 K6 ["navigation"]
       14 GETTABLEKS                       R8 R0 K5 ["props"]
       16 GETTABLEKS                       R8 R8 K7 ["onEvent"]
       18 GETTABLEKS                       R9 R7 K8 ["isFocused"]
       20 CALL                             R9 0 1
       21 JUMPIF                           R9 ; [+1]
       22 RETURN                           R0 0
       23 LOADNIL                          R9
       24 JUMPIFNOT                        R3 ; [+8]
       25 GETTABLEKS                       R10 R3 K9 ["routes"]
       27 JUMPIFNOT                        R10 ; [+5]
       28 GETTABLEKS                       R10 R3 K9 ["routes"]
       30 GETTABLEKS                       R11 R3 K10 ["index"]
       32 GETTABLE                         R9 R10 R11
       33 GETTABLEKS                       R11 R2 K9 ["routes"]
       35 GETTABLEKS                       R12 R2 K10 ["index"]
       37 GETTABLE                         R10 R11 R12
       38 DUPTABLE                         R11 K11 [{"context", "state", "lastState", "action", "type"}]
       39 LOADK                            R12 K12 ["%s:%s_%s"]
       40 GETTABLEKS                       R14 R10 K13 ["key"]
       42 GETTABLEKS                       R16 R4 K3 ["type"]
       44 FASTCALL1                        TOSTRING R16 ; [+2]
       45 GETIMPORT                        R15 K15 [tostring]
       47 CALL                             R15 1 1
       48 ORK                              R16 R6 K16 ["Root"]
       49 NAMECALL                         R12 R12 K17 ["format"]
       51 CALL                             R12 4 1
       52 SETTABLEKS                       R12 R11 K4 ["context"]
       54 SETTABLEKS                       R10 R11 K0 ["state"]
       56 SETTABLEKS                       R9 R11 K1 ["lastState"]
       58 SETTABLEKS                       R4 R11 K2 ["action"]
       60 SETTABLEKS                       R5 R11 K3 ["type"]
       62 MOVE                             R12 R9
       63 JUMPIFNOT                        R12 ; [+2]
       64 GETTABLEKS                       R12 R9 K13 ["key"]
       66 GETTABLEKS                       R13 R10 K13 ["key"]
       68 JUMPIFEQ                         R12 R13 ; [+17]
       70 GETTABLEKS                       R14 R10 K13 ["key"]
       72 MOVE                             R15 R11
       73 NAMECALL                         R12 R0 K18 ["_emitWillFocus"]
       75 CALL                             R12 3 0
       76 JUMPIFNOT                        R9 ; [+9]
       77 GETTABLEKS                       R12 R9 K13 ["key"]
       79 JUMPIFNOT                        R12 ; [+6]
       80 GETTABLEKS                       R14 R9 K13 ["key"]
       82 MOVE                             R15 R11
       83 NAMECALL                         R12 R0 K19 ["_emitWillBlur"]
       85 CALL                             R12 3 0
       86 JUMPIFNOT                        R3 ; [+28]
       87 GETTABLEKS                       R12 R3 K20 ["isTransitioning"]
       89 GETTABLEKS                       R13 R2 K20 ["isTransitioning"]
       91 JUMPIFEQ                         R12 R13 ; [+23]
       93 GETTABLEKS                       R12 R2 K20 ["isTransitioning"]
       95 JUMPIFNOTEQKB                    R12 FALSE ; [+19]
       97 GETTABLEKS                       R12 R0 K21 ["_lastWillBlurKey"]
       99 JUMPIFNOT                        R12 ; [+6]
      100 GETTABLEKS                       R14 R0 K21 ["_lastWillBlurKey"]
      102 MOVE                             R15 R11
      103 NAMECALL                         R12 R0 K22 ["_emitDidBlur"]
      105 CALL                             R12 3 0
      106 GETTABLEKS                       R12 R0 K23 ["_lastWillFocusKey"]
      108 JUMPIFNOT                        R12 ; [+6]
      109 GETTABLEKS                       R14 R0 K23 ["_lastWillFocusKey"]
      111 MOVE                             R15 R11
      112 NAMECALL                         R12 R0 K24 ["_emitDidFocus"]
      114 CALL                             R12 3 0
      115 MOVE                             R12 R8
      116 GETTABLEKS                       R13 R10 K13 ["key"]
      118 GETUPVAL                         R14 0
      119 GETTABLEKS                       R14 R14 K25 ["Action"]
      121 MOVE                             R15 R11
      122 CALL                             R12 3 0
      123 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["key"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["lastState"]
        2 GETTABLEKS                       R3 R1 K1 ["action"]
        4 GETTABLEKS                       R4 R1 K2 ["context"]
        6 GETTABLEKS                       R5 R1 K3 ["type"]
        8 GETTABLEKS                       R6 R0 K4 ["props"]
       10 GETTABLEKS                       R6 R6 K5 ["navigation"]
       12 GETTABLEKS                       R8 R6 K6 ["state"]
       14 GETTABLEKS                       R8 R8 K7 ["routes"]
       16 GETTABLEKS                       R9 R6 K6 ["state"]
       18 GETTABLEKS                       R9 R9 K8 ["index"]
       20 GETTABLE                         R7 R8 R9
       21 LOADNIL                          R8
       22 JUMPIFNOT                        R2 ; [+21]
       23 GETTABLEKS                       R9 R2 K7 ["routes"]
       25 JUMPIFNOT                        R9 ; [+18]
       26 JUMPIFNOT                        R2 ; [+9]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K9 ["findIndex"]
       30 GETTABLEKS                       R10 R2 K7 ["routes"]
       32 NEWCLOSURE                       R11 P0
       33 CAPTURE                          VAL R7
       34 CALL                             R9 2 1
       35 JUMP                             ; [+2]
       36 NEWTABLE                         R9 0 0
       38 LOADN                            R10 0
       39 JUMPIFNOTLT                      R10 R9 ; [+4]
       41 GETTABLEKS                       R10 R2 K7 ["routes"]
       43 GETTABLE                         R8 R10 R9
       44 GETTABLEKS                       R11 R7 K10 ["key"]
       46 DUPTABLE                         R12 K11 [{"context", "state", "lastState", "action", "type"}]
       47 LOADK                            R13 K12 ["%s:%s_%s"]
       48 GETTABLEKS                       R15 R7 K10 ["key"]
       50 GETTABLEKS                       R17 R3 K3 ["type"]
       52 FASTCALL1                        TOSTRING R17 ; [+2]
       53 GETIMPORT                        R16 K14 [tostring]
       55 CALL                             R16 1 1
       56 ORK                              R17 R4 K15 ["Root"]
       57 NAMECALL                         R13 R13 K16 ["format"]
       59 CALL                             R13 4 1
       60 SETTABLEKS                       R13 R12 K2 ["context"]
       62 SETTABLEKS                       R7 R12 K6 ["state"]
       64 SETTABLEKS                       R8 R12 K0 ["lastState"]
       66 SETTABLEKS                       R3 R12 K1 ["action"]
       68 SETTABLEKS                       R5 R12 K3 ["type"]
       70 NAMECALL                         R9 R0 K17 ["_emitWillFocus"]
       72 CALL                             R9 3 0
       73 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["key"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["lastState"]
        2 GETTABLEKS                       R3 R1 K1 ["action"]
        4 GETTABLEKS                       R4 R1 K2 ["context"]
        6 GETTABLEKS                       R5 R1 K3 ["type"]
        8 GETTABLEKS                       R6 R0 K4 ["props"]
       10 GETTABLEKS                       R6 R6 K5 ["navigation"]
       12 GETTABLEKS                       R8 R6 K6 ["state"]
       14 GETTABLEKS                       R8 R8 K7 ["routes"]
       16 GETTABLEKS                       R9 R6 K6 ["state"]
       18 GETTABLEKS                       R9 R9 K8 ["index"]
       20 GETTABLE                         R7 R8 R9
       21 LOADNIL                          R8
       22 JUMPIFNOT                        R2 ; [+21]
       23 GETTABLEKS                       R9 R2 K7 ["routes"]
       25 JUMPIFNOT                        R9 ; [+18]
       26 JUMPIFNOT                        R2 ; [+9]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K9 ["findIndex"]
       30 GETTABLEKS                       R10 R2 K7 ["routes"]
       32 NEWCLOSURE                       R11 P0
       33 CAPTURE                          VAL R7
       34 CALL                             R9 2 1
       35 JUMP                             ; [+2]
       36 NEWTABLE                         R9 0 0
       38 LOADN                            R10 0
       39 JUMPIFNOTLT                      R10 R9 ; [+4]
       41 GETTABLEKS                       R10 R2 K7 ["routes"]
       43 GETTABLE                         R8 R10 R9
       44 GETTABLEKS                       R11 R7 K10 ["key"]
       46 DUPTABLE                         R12 K11 [{"context", "state", "lastState", "action", "type"}]
       47 LOADK                            R13 K12 ["%s:%s_%s"]
       48 GETTABLEKS                       R15 R7 K10 ["key"]
       50 GETTABLEKS                       R17 R3 K3 ["type"]
       52 FASTCALL1                        TOSTRING R17 ; [+2]
       53 GETIMPORT                        R16 K14 [tostring]
       55 CALL                             R16 1 1
       56 ORK                              R17 R4 K15 ["Root"]
       57 NAMECALL                         R13 R13 K16 ["format"]
       59 CALL                             R13 4 1
       60 SETTABLEKS                       R13 R12 K2 ["context"]
       62 SETTABLEKS                       R7 R12 K6 ["state"]
       64 SETTABLEKS                       R8 R12 K0 ["lastState"]
       66 SETTABLEKS                       R3 R12 K1 ["action"]
       68 SETTABLEKS                       R5 R12 K3 ["type"]
       70 NAMECALL                         R9 R0 K17 ["_emitWillBlur"]
       72 CALL                             R9 3 0
       73 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["_lastWillFocusKey"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["key"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["lastState"]
        2 GETTABLEKS                       R3 R1 K1 ["action"]
        4 GETTABLEKS                       R4 R1 K2 ["context"]
        6 GETTABLEKS                       R5 R1 K3 ["type"]
        8 GETTABLEKS                       R6 R0 K4 ["props"]
       10 GETTABLEKS                       R6 R6 K5 ["navigation"]
       12 GETTABLEKS                       R7 R0 K6 ["_lastWillFocusKey"]
       14 JUMPIFNOT                        R7 ; [+68]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K7 ["findIndex"]
       18 GETTABLEKS                       R8 R6 K8 ["state"]
       20 GETTABLEKS                       R8 R8 K9 ["routes"]
       22 NEWCLOSURE                       R9 P0
       23 CAPTURE                          VAL R0
       24 CALL                             R7 2 1
       25 JUMPIFNOT                        R7 ; [+57]
       26 GETTABLEKS                       R9 R6 K8 ["state"]
       28 GETTABLEKS                       R9 R9 K9 ["routes"]
       30 GETTABLE                         R8 R9 R7
       31 LOADNIL                          R9
       32 JUMPIFNOT                        R2 ; [+21]
       33 GETTABLEKS                       R10 R2 K9 ["routes"]
       35 JUMPIFNOT                        R10 ; [+18]
       36 JUMPIFNOT                        R2 ; [+9]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K7 ["findIndex"]
       40 GETTABLEKS                       R11 R2 K9 ["routes"]
       42 NEWCLOSURE                       R12 P1
       43 CAPTURE                          VAL R8
       44 CALL                             R10 2 1
       45 JUMP                             ; [+2]
       46 NEWTABLE                         R10 0 0
       48 LOADN                            R11 0
       49 JUMPIFNOTLT                      R11 R10 ; [+4]
       51 GETTABLEKS                       R11 R2 K9 ["routes"]
       53 GETTABLE                         R9 R11 R10
       54 GETTABLEKS                       R12 R8 K10 ["key"]
       56 DUPTABLE                         R13 K11 [{"context", "state", "lastState", "action", "type"}]
       57 LOADK                            R14 K12 ["%s:%s_%s"]
       58 GETTABLEKS                       R16 R8 K10 ["key"]
       60 GETTABLEKS                       R18 R3 K3 ["type"]
       62 FASTCALL1                        TOSTRING R18 ; [+2]
       63 GETIMPORT                        R17 K14 [tostring]
       65 CALL                             R17 1 1
       66 ORK                              R18 R4 K15 ["Root"]
       67 NAMECALL                         R14 R14 K16 ["format"]
       69 CALL                             R14 4 1
       70 SETTABLEKS                       R14 R13 K2 ["context"]
       72 SETTABLEKS                       R8 R13 K8 ["state"]
       74 SETTABLEKS                       R9 R13 K0 ["lastState"]
       76 SETTABLEKS                       R3 R13 K1 ["action"]
       78 SETTABLEKS                       R5 R13 K3 ["type"]
       80 NAMECALL                         R10 R0 K17 ["_emitDidFocus"]
       82 CALL                             R10 3 0
       83 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["_lastWillBlurKey"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["key"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["key"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R2 R1 K0 ["lastState"]
        2 GETTABLEKS                       R3 R1 K1 ["action"]
        4 GETTABLEKS                       R4 R1 K2 ["context"]
        6 GETTABLEKS                       R5 R1 K3 ["type"]
        8 GETTABLEKS                       R6 R0 K4 ["props"]
       10 GETTABLEKS                       R6 R6 K5 ["navigation"]
       12 GETTABLEKS                       R7 R0 K6 ["_lastWillBlurKey"]
       14 JUMPIFNOT                        R7 ; [+68]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K7 ["findIndex"]
       18 GETTABLEKS                       R8 R6 K8 ["state"]
       20 GETTABLEKS                       R8 R8 K9 ["routes"]
       22 NEWCLOSURE                       R9 P0
       23 CAPTURE                          VAL R0
       24 CALL                             R7 2 1
       25 LOADN                            R8 0
       26 JUMPIFNOTLT                      R8 R7 ; [+56]
       28 GETTABLEKS                       R9 R6 K8 ["state"]
       30 GETTABLEKS                       R9 R9 K9 ["routes"]
       32 GETTABLE                         R8 R9 R7
       33 LOADNIL                          R9
       34 JUMPIFNOT                        R2 ; [+19]
       35 GETTABLEKS                       R10 R2 K9 ["routes"]
       37 JUMPIFNOT                        R10 ; [+16]
       38 JUMPIFNOT                        R2 ; [+9]
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K7 ["findIndex"]
       42 GETTABLEKS                       R11 R2 K9 ["routes"]
       44 NEWCLOSURE                       R12 P1
       45 CAPTURE                          VAL R8
       46 CALL                             R10 2 1
       47 JUMP                             ; [+2]
       48 NEWTABLE                         R10 0 0
       50 JUMPIFNOT                        R10 ; [+3]
       51 GETTABLEKS                       R11 R2 K9 ["routes"]
       53 GETTABLE                         R9 R11 R10
       54 GETTABLEKS                       R12 R8 K10 ["key"]
       56 DUPTABLE                         R13 K11 [{"context", "state", "lastState", "action", "type"}]
       57 LOADK                            R14 K12 ["%s:%s_%s"]
       58 GETTABLEKS                       R16 R8 K10 ["key"]
       60 GETTABLEKS                       R18 R3 K3 ["type"]
       62 FASTCALL1                        TOSTRING R18 ; [+2]
       63 GETIMPORT                        R17 K14 [tostring]
       65 CALL                             R17 1 1
       66 ORK                              R18 R4 K15 ["Root"]
       67 NAMECALL                         R14 R14 K16 ["format"]
       69 CALL                             R14 4 1
       70 SETTABLEKS                       R14 R13 K2 ["context"]
       72 SETTABLEKS                       R8 R13 K8 ["state"]
       74 SETTABLEKS                       R9 R13 K0 ["lastState"]
       76 SETTABLEKS                       R3 R13 K1 ["action"]
       78 SETTABLEKS                       R5 R13 K3 ["type"]
       80 NAMECALL                         R10 R0 K17 ["_emitDidBlur"]
       82 CALL                             R10 3 0
       83 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["onEvent"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["navigation"]
        8 GETTABLEKS                       R4 R2 K3 ["state"]
       10 GETTABLEKS                       R4 R4 K4 ["routes"]
       12 GETTABLEKS                       R5 R2 K3 ["state"]
       14 GETTABLEKS                       R5 R5 K5 ["index"]
       16 GETTABLE                         R3 R4 R5
       17 MOVE                             R4 R1
       18 GETTABLEKS                       R5 R3 K6 ["key"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K7 ["Refocus"]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["_lastWillBlurKey"]
        2 JUMPIFNOTEQ                      R3 R1 ; [+4]
        4 LOADNIL                          R3
        5 SETTABLEKS                       R3 R0 K0 ["_lastWillBlurKey"]
        7 GETTABLEKS                       R3 R0 K1 ["_lastWillFocusKey"]
        9 JUMPIFNOTEQ                      R3 R1 ; [+2]
       11 RETURN                           R0 0
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R0 K2 ["_lastDidFocusKey"]
       15 SETTABLEKS                       R1 R0 K1 ["_lastWillFocusKey"]
       17 GETTABLEKS                       R3 R0 K3 ["props"]
       19 GETTABLEKS                       R3 R3 K4 ["navigation"]
       21 GETTABLEKS                       R4 R0 K3 ["props"]
       23 GETTABLEKS                       R4 R4 K5 ["onEvent"]
       25 MOVE                             R5 R4
       26 MOVE                             R6 R1
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K6 ["WillFocus"]
       30 MOVE                             R8 R2
       31 CALL                             R5 3 0
       32 GETTABLEKS                       R6 R3 K7 ["state"]
       34 GETTABLEKS                       R6 R6 K8 ["isTransitioning"]
       36 FASTCALL1                        TYPE R6 ; [+2]
       37 GETIMPORT                        R5 K10 [type]
       39 CALL                             R5 1 1
       40 JUMPIFNOTEQKS                    R5 K11 ["boolean"] ; [+11]
       42 GETTABLEKS                       R5 R3 K7 ["state"]
       44 GETTABLEKS                       R5 R5 K8 ["isTransitioning"]
       46 JUMPIFEQKB                       R5 TRUE ; [+10]
       48 GETTABLEKS                       R5 R3 K12 ["_dangerouslyGetParent"]
       50 CALL                             R5 0 1
       51 JUMPIF                           R5 ; [+5]
       52 MOVE                             R7 R1
       53 MOVE                             R8 R2
       54 NAMECALL                         R5 R0 K13 ["_emitDidFocus"]
       56 CALL                             R5 3 0
       57 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["_lastWillFocusKey"]
        2 JUMPIFNOTEQ                      R3 R1 ; [+4]
        4 LOADNIL                          R3
        5 SETTABLEKS                       R3 R0 K0 ["_lastWillFocusKey"]
        7 GETTABLEKS                       R3 R0 K1 ["_lastWillBlurKey"]
        9 JUMPIFNOTEQ                      R3 R1 ; [+2]
       11 RETURN                           R0 0
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R0 K2 ["_lastDidBlurKey"]
       15 SETTABLEKS                       R1 R0 K1 ["_lastWillBlurKey"]
       17 GETTABLEKS                       R3 R0 K3 ["props"]
       19 GETTABLEKS                       R3 R3 K4 ["navigation"]
       21 GETTABLEKS                       R4 R0 K3 ["props"]
       23 GETTABLEKS                       R4 R4 K5 ["onEvent"]
       25 MOVE                             R5 R4
       26 MOVE                             R6 R1
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K6 ["WillBlur"]
       30 MOVE                             R8 R2
       31 CALL                             R5 3 0
       32 GETTABLEKS                       R6 R3 K7 ["state"]
       34 GETTABLEKS                       R6 R6 K8 ["isTransitioning"]
       36 FASTCALL1                        TYPE R6 ; [+2]
       37 GETIMPORT                        R5 K10 [type]
       39 CALL                             R5 1 1
       40 JUMPIFNOTEQKS                    R5 K11 ["boolean"] ; [+11]
       42 GETTABLEKS                       R5 R3 K7 ["state"]
       44 GETTABLEKS                       R5 R5 K8 ["isTransitioning"]
       46 JUMPIFEQKB                       R5 TRUE ; [+10]
       48 GETTABLEKS                       R5 R3 K12 ["_dangerouslyGetParent"]
       50 CALL                             R5 0 1
       51 JUMPIF                           R5 ; [+5]
       52 MOVE                             R7 R1
       53 MOVE                             R8 R2
       54 NAMECALL                         R5 R0 K13 ["_emitDidBlur"]
       56 CALL                             R5 3 0
       57 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["_lastWillFocusKey"]
        2 JUMPIFNOTEQ                      R3 R1 ; [+5]
        4 GETTABLEKS                       R3 R0 K1 ["_lastDidFocusKey"]
        6 JUMPIFNOTEQ                      R3 R1 ; [+2]
        8 RETURN                           R0 0
        9 SETTABLEKS                       R1 R0 K1 ["_lastDidFocusKey"]
       11 GETTABLEKS                       R3 R0 K2 ["props"]
       13 GETTABLEKS                       R3 R3 K3 ["onEvent"]
       15 MOVE                             R4 R3
       16 MOVE                             R5 R1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K4 ["DidFocus"]
       20 MOVE                             R7 R2
       21 CALL                             R4 3 0
       22 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R3 R0 K0 ["_lastWillBlurKey"]
        2 JUMPIFNOTEQ                      R3 R1 ; [+5]
        4 GETTABLEKS                       R3 R0 K1 ["_lastDidBlurKey"]
        6 JUMPIFNOTEQ                      R3 R1 ; [+2]
        8 RETURN                           R0 0
        9 SETTABLEKS                       R1 R0 K1 ["_lastDidBlurKey"]
       11 GETTABLEKS                       R3 R0 K2 ["props"]
       13 GETTABLEKS                       R3 R3 K3 ["onEvent"]
       15 MOVE                             R4 R3
       16 MOVE                             R5 R1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K4 ["DidBlur"]
       20 MOVE                             R7 R2
       21 CALL                             R4 3 0
       22 RETURN                           R0 0

PROTO_24:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R1 K7 ["Roact"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Events"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R6 R4 K9 ["Component"]
       28 LOADK                            R8 K10 ["NavigationEventManager"]
       29 NAMECALL                         R6 R6 K11 ["extend"]
       31 CALL                             R6 2 1
       32 DUPCLOSURE                       R7 K12 [PROTO_6]
       33 CAPTURE                          VAL R5
       34 SETTABLEKS                       R7 R6 K13 ["didMount"]
       36 DUPCLOSURE                       R7 K14 [PROTO_7]
       37 SETTABLEKS                       R7 R6 K15 ["willUnmount"]
       39 DUPCLOSURE                       R7 K16 [PROTO_8]
       40 CAPTURE                          VAL R5
       41 SETTABLEKS                       R7 R6 K17 ["_handleAction"]
       43 DUPCLOSURE                       R7 K18 [PROTO_10]
       44 CAPTURE                          VAL R3
       45 SETTABLEKS                       R7 R6 K19 ["_handleWillFocus"]
       47 DUPCLOSURE                       R7 K20 [PROTO_12]
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R7 R6 K21 ["_handleWillBlur"]
       51 DUPCLOSURE                       R7 K22 [PROTO_15]
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R7 R6 K23 ["_handleDidFocus"]
       55 DUPCLOSURE                       R7 K24 [PROTO_18]
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R7 R6 K25 ["_handleDidBlur"]
       59 DUPCLOSURE                       R7 K26 [PROTO_19]
       60 CAPTURE                          VAL R5
       61 SETTABLEKS                       R7 R6 K27 ["_handleRefocus"]
       63 DUPCLOSURE                       R7 K28 [PROTO_20]
       64 CAPTURE                          VAL R5
       65 SETTABLEKS                       R7 R6 K29 ["_emitWillFocus"]
       67 DUPCLOSURE                       R7 K30 [PROTO_21]
       68 CAPTURE                          VAL R5
       69 SETTABLEKS                       R7 R6 K31 ["_emitWillBlur"]
       71 DUPCLOSURE                       R7 K32 [PROTO_22]
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R7 R6 K33 ["_emitDidFocus"]
       75 DUPCLOSURE                       R7 K34 [PROTO_23]
       76 CAPTURE                          VAL R5
       77 SETTABLEKS                       R7 R6 K35 ["_emitDidBlur"]
       79 DUPCLOSURE                       R7 K36 [PROTO_24]
       80 SETTABLEKS                       R7 R6 K37 ["render"]
       82 RETURN                           R6 1
