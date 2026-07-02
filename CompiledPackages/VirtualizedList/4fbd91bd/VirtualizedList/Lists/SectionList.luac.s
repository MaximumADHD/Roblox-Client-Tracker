PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_wrapperListRef"]
        3 RETURN                           R0 0

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R2 R0 K1 ["_captureRef"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_wrapperListRef"]
        2 JUMPIFEQKNIL                     R2 ; [+7]
        4 GETTABLEKS                       R2 R0 K0 ["_wrapperListRef"]
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K1 ["scrollToLocation"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_wrapperListRef"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["_wrapperListRef"]
        5 NAMECALL                         R1 R1 K1 ["getListRef"]
        7 CALL                             R1 1 1
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R1 R0 K0 ["_wrapperListRef"]
       11 JUMPIFNOT                        R1 ; [+3]
       12 NAMECALL                         R2 R1 K2 ["recordInteraction"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_wrapperListRef"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["_wrapperListRef"]
        5 NAMECALL                         R1 R1 K1 ["getListRef"]
        7 CALL                             R1 1 1
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R1 R0 K0 ["_wrapperListRef"]
       11 JUMPIFNOT                        R1 ; [+3]
       12 NAMECALL                         R2 R1 K2 ["flashScrollIndicators"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_wrapperListRef"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["_wrapperListRef"]
        5 NAMECALL                         R1 R1 K1 ["getListRef"]
        7 CALL                             R1 1 1
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R1 R0 K0 ["_wrapperListRef"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["toJSBoolean"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+4]
       17 NAMECALL                         R2 R1 K3 ["getScrollResponder"]
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1
       21 LOADNIL                          R2
       22 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_wrapperListRefthen"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R1 R0 K1 ["_wrapperListRef"]
        5 NAMECALL                         R1 R1 K2 ["getListRef"]
        7 CALL                             R1 1 1
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R1 R0 K1 ["_wrapperListRef"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["toJSBoolean"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+4]
       17 NAMECALL                         R2 R1 K4 ["getScrollableNode"]
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1
       21 LOADNIL                          R2
       22 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_wrapperListRef"]
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["_wrapperListRef"]
        5 NAMECALL                         R2 R2 K1 ["getListRef"]
        7 CALL                             R2 1 1
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R2 R0 K0 ["_wrapperListRef"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["toJSBoolean"]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 1
       16 JUMPIFNOT                        R3 ; [+4]
       17 MOVE                             R5 R1
       18 NAMECALL                         R3 R2 K3 ["setNativeProps"]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_8:
        0 LENGTH                           R1 R0
        1 RETURN                           R1 1

PROTO_9:
        0 GETTABLE                         R2 R0 R1
        1 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["stickySectionHeadersEnabled"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["assign"]
        7 NEWTABLE                         R3 0 0
        9 GETTABLEKS                       R4 R0 K0 ["props"]
       11 DUPTABLE                         R5 K3 [{"stickySectionHeadersEnabled"}]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K4 ["None"]
       15 SETTABLEKS                       R6 R5 K1 ["stickySectionHeadersEnabled"]
       17 CALL                             R2 3 1
       18 JUMPIFEQKNIL                     R1 ; [+3]
       20 MOVE                             R3 R1
       21 JUMP                             ; [+1]
       22 LOADB                            R3 0
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K5 ["createElement"]
       26 GETUPVAL                         R5 2
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K2 ["assign"]
       30 NEWTABLE                         R7 0 0
       32 MOVE                             R8 R2
       33 DUPTABLE                         R9 K9 [{"stickySectionHeadersEnabled", "ref", "getItemCount", "getItem"}]
       34 SETTABLEKS                       R3 R9 K1 ["stickySectionHeadersEnabled"]
       36 GETTABLEKS                       R10 R0 K10 ["_captureRef"]
       38 SETTABLEKS                       R10 R9 K6 ["ref"]
       40 DUPCLOSURE                       R10 K11 [PROTO_8]
       41 SETTABLEKS                       R10 R9 K7 ["getItemCount"]
       43 DUPCLOSURE                       R10 K12 [PROTO_9]
       44 SETTABLEKS                       R10 R9 K8 ["getItem"]
       46 CALL                             R6 3 -1
       47 CALL                             R4 -1 -1
       48 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Boolean"]
       16 GETTABLEKS                       R4 R2 K7 ["Object"]
       18 NEWTABLE                         R5 1 0
       20 DUPTABLE                         R6 K10 [{["OS"] = "roblox"}]
       21 GETIMPORT                        R7 K4 [require]
       23 GETTABLEKS                       R8 R1 K11 ["React"]
       25 CALL                             R7 1 1
       26 GETIMPORT                        R8 K4 [require]
       28 GETIMPORT                        R9 K1 [script]
       30 GETTABLEKS                       R9 R9 K2 ["Parent"]
       32 GETTABLEKS                       R9 R9 K12 ["VirtualizedSectionList"]
       34 CALL                             R8 1 1
       35 GETIMPORT                        R9 K4 [require]
       37 GETTABLEKS                       R10 R0 K13 ["Components"]
       39 GETTABLEKS                       R10 R10 K14 ["ScrollView"]
       41 GETTABLEKS                       R10 R10 K14 ["ScrollView"]
       43 CALL                             R9 1 1
       44 GETTABLEKS                       R10 R7 K15 ["PureComponent"]
       46 LOADK                            R12 K16 ["SectionList"]
       47 NAMECALL                         R10 R10 K17 ["extend"]
       49 CALL                             R10 2 1
       50 DUPCLOSURE                       R11 K18 [PROTO_1]
       51 SETTABLEKS                       R11 R10 K19 ["init"]
       53 DUPCLOSURE                       R11 K20 [PROTO_2]
       54 SETTABLEKS                       R11 R10 K21 ["scrollToLocation"]
       56 DUPCLOSURE                       R11 K22 [PROTO_3]
       57 SETTABLEKS                       R11 R10 K23 ["recordInteraction"]
       59 DUPCLOSURE                       R11 K24 [PROTO_4]
       60 SETTABLEKS                       R11 R10 K25 ["flashScrollIndicators"]
       62 DUPCLOSURE                       R11 K26 [PROTO_5]
       63 CAPTURE                          VAL R3
       64 SETTABLEKS                       R11 R10 K27 ["getScrollResponder"]
       66 DUPCLOSURE                       R11 K28 [PROTO_6]
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R11 R10 K29 ["getScrollableNode"]
       70 DUPCLOSURE                       R11 K30 [PROTO_7]
       71 CAPTURE                          VAL R3
       72 SETTABLEKS                       R11 R10 K31 ["setNativeProps"]
       74 DUPCLOSURE                       R11 K32 [PROTO_10]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 SETTABLEKS                       R11 R10 K33 ["render"]
       80 SETTABLEKS                       R10 R5 K34 ["default"]
       82 RETURN                           R5 1
