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
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K2 ["toJSBoolean"]
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
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K3 ["toJSBoolean"]
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
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K2 ["toJSBoolean"]
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
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R3 K1 ["stickySectionHeadersEnabled"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["assign"]
        7 NEWTABLE                         R3 0 0
        9 GETTABLEKS                       R4 R0 K0 ["props"]
       11 DUPTABLE                         R5 K3 [{"stickySectionHeadersEnabled"}]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K4 ["None"]
       15 SETTABLEKS                       R6 R5 K1 ["stickySectionHeadersEnabled"]
       17 CALL                             R2 3 1
       18 JUMPIFEQKNIL                     R1 ; [+3]
       20 MOVE                             R3 R1
       21 JUMP                             ; [+7]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K5 ["OS"]
       25 JUMPIFEQKS                       R4 K6 ["ios"] ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R4 R5 K7 ["createElement"]
       32 GETUPVAL                         R5 3
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K2 ["assign"]
       36 NEWTABLE                         R7 0 0
       38 MOVE                             R8 R2
       39 DUPTABLE                         R9 K11 [{"stickySectionHeadersEnabled", "ref", "getItemCount", "getItem"}]
       40 SETTABLEKS                       R3 R9 K1 ["stickySectionHeadersEnabled"]
       42 GETTABLEKS                       R10 R0 K12 ["_captureRef"]
       44 SETTABLEKS                       R10 R9 K8 ["ref"]
       46 DUPCLOSURE                       R10 K13 [PROTO_8]
       47 SETTABLEKS                       R10 R9 K9 ["getItemCount"]
       49 DUPCLOSURE                       R10 K14 [PROTO_9]
       50 SETTABLEKS                       R10 R9 K10 ["getItem"]
       52 CALL                             R6 3 -1
       53 CALL                             R4 -1 -1
       54 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Boolean"]
       16 GETTABLEKS                       R4 R2 K7 ["Object"]
       18 NEWTABLE                         R5 1 0
       20 DUPTABLE                         R6 K9 [{"OS"}]
       21 LOADK                            R7 K10 ["roblox"]
       22 SETTABLEKS                       R7 R6 K8 ["OS"]
       24 GETIMPORT                        R7 K4 [require]
       26 GETTABLEKS                       R8 R1 K11 ["React"]
       28 CALL                             R7 1 1
       29 GETIMPORT                        R8 K4 [require]
       31 GETIMPORT                        R11 K1 [script]
       33 GETTABLEKS                       R10 R11 K2 ["Parent"]
       35 GETTABLEKS                       R9 R10 K12 ["VirtualizedSectionList"]
       37 CALL                             R8 1 1
       38 GETIMPORT                        R9 K4 [require]
       40 GETTABLEKS                       R12 R0 K13 ["Components"]
       42 GETTABLEKS                       R11 R12 K14 ["ScrollView"]
       44 GETTABLEKS                       R10 R11 K14 ["ScrollView"]
       46 CALL                             R9 1 1
       47 GETTABLEKS                       R10 R7 K15 ["PureComponent"]
       49 LOADK                            R12 K16 ["SectionList"]
       50 NAMECALL                         R10 R10 K17 ["extend"]
       52 CALL                             R10 2 1
       53 DUPCLOSURE                       R11 K18 [PROTO_1]
       54 SETTABLEKS                       R11 R10 K19 ["init"]
       56 DUPCLOSURE                       R11 K20 [PROTO_2]
       57 SETTABLEKS                       R11 R10 K21 ["scrollToLocation"]
       59 DUPCLOSURE                       R11 K22 [PROTO_3]
       60 SETTABLEKS                       R11 R10 K23 ["recordInteraction"]
       62 DUPCLOSURE                       R11 K24 [PROTO_4]
       63 SETTABLEKS                       R11 R10 K25 ["flashScrollIndicators"]
       65 DUPCLOSURE                       R11 K26 [PROTO_5]
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R11 R10 K27 ["getScrollResponder"]
       69 DUPCLOSURE                       R11 K28 [PROTO_6]
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R11 R10 K29 ["getScrollableNode"]
       73 DUPCLOSURE                       R11 K30 [PROTO_7]
       74 CAPTURE                          VAL R3
       75 SETTABLEKS                       R11 R10 K31 ["setNativeProps"]
       77 DUPCLOSURE                       R11 K32 [PROTO_10]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R8
       82 SETTABLEKS                       R11 R10 K33 ["render"]
       84 SETTABLEKS                       R10 R5 K34 ["default"]
       86 RETURN                           R5 1
