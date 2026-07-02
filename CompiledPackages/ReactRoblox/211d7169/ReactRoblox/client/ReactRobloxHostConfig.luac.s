PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K1 [print]
        6 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K1 [print]
       10 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: "]
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R5 R0
       13 GETIMPORT                        R4 K5 [tostring]
       15 CALL                             R4 1 1
       16 CONCAT                           R2 R3 R4
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K7 [error]
       20 LOADK                            R3 K8 ["FIXME (roblox): "]
       21 MOVE                             R4 R0
       22 LOADK                            R5 K9 [" is unimplemented"]
       23 CONCAT                           R2 R3 R5
       24 LOADN                            R3 2
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        2 RETURN                           R1 1

PROTO_2:
        0 RETURN                           R0 1

PROTO_3:
        0 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+23]
        2 GETIMPORT                        R1 K1 [print]
        4 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        5 CALL                             R1 1 0
        6 GETIMPORT                        R1 K1 [print]
        8 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        9 CALL                             R1 1 0
       10 GETIMPORT                        R1 K1 [print]
       12 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: "]
       13 LOADK                            R5 K4 ["enableCreateEventHandleAPI"]
       14 FASTCALL1                        TOSTRING R5 ; [+2]
       15 GETIMPORT                        R4 K6 [tostring]
       17 CALL                             R4 1 1
       18 CONCAT                           R2 R3 R4
       19 CALL                             R1 1 0
       20 GETIMPORT                        R1 K8 [error]
       22 LOADK                            R2 K9 ["FIXME (roblox): enableCreateEventHandleAPI is unimplemented"]
       23 LOADN                            R3 2
       24 CALL                             R1 2 0
       25 LOADNIL                          R1
       26 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+23]
        2 GETIMPORT                        R0 K1 [print]
        4 LOADK                            R1 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K1 [print]
        8 LOADK                            R1 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K1 [print]
       12 LOADK                            R2 K3 ["UNIMPLEMENTED ERROR: "]
       13 LOADK                            R4 K4 ["enableCreateEventHandleAPI"]
       14 FASTCALL1                        TOSTRING R4 ; [+2]
       15 GETIMPORT                        R3 K6 [tostring]
       17 CALL                             R3 1 1
       18 CONCAT                           R1 R2 R3
       19 CALL                             R0 1 0
       20 GETIMPORT                        R0 K8 [error]
       22 LOADK                            R1 K9 ["FIXME (roblox): enableCreateEventHandleAPI is unimplemented"]
       23 LOADN                            R2 2
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+23]
        2 GETIMPORT                        R0 K1 [print]
        4 LOADK                            R1 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K1 [print]
        8 LOADK                            R1 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K1 [print]
       12 LOADK                            R2 K3 ["UNIMPLEMENTED ERROR: "]
       13 LOADK                            R4 K4 ["enableCreateEventHandleAPI"]
       14 FASTCALL1                        TOSTRING R4 ; [+2]
       15 GETIMPORT                        R3 K6 [tostring]
       17 CALL                             R3 1 1
       18 CONCAT                           R1 R2 R3
       19 CALL                             R0 1 0
       20 GETIMPORT                        R0 K8 [error]
       22 LOADK                            R1 K9 ["FIXME (roblox): enableCreateEventHandleAPI is unimplemented"]
       23 LOADN                            R2 2
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R5 K2 [Instance.new]
        2 MOVE                             R6 R0
        3 CALL                             R5 1 1
        4 GETTABLEKS                       R6 R4 K3 ["key"]
        6 JUMPIFNOT                        R6 ; [+5]
        7 GETTABLEKS                       R6 R4 K3 ["key"]
        9 SETTABLEKS                       R6 R5 K4 ["Name"]
       11 JUMP                             ; [+14]
       12 GETTABLEKS                       R6 R4 K5 ["return_"]
       14 JUMPIFNOT                        R6 ; [+11]
       15 GETTABLEKS                       R7 R6 K3 ["key"]
       17 JUMPIFNOT                        R7 ; [+5]
       18 GETTABLEKS                       R7 R6 K3 ["key"]
       20 SETTABLEKS                       R7 R5 K4 ["Name"]
       22 JUMP                             ; [+3]
       23 GETTABLEKS                       R6 R6 K5 ["return_"]
       25 JUMPBACK                         ; [-12]
       26 GETUPVAL                         R6 0
       27 MOVE                             R7 R4
       28 MOVE                             R8 R5
       29 CALL                             R6 2 0
       30 GETUPVAL                         R6 1
       31 MOVE                             R7 R5
       32 MOVE                             R8 R1
       33 CALL                             R6 2 0
       34 RETURN                           R5 1

PROTO_9:
        0 SETTABLEKS                       R0 R1 K0 ["Parent"]
        2 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 CALL                             R5 4 0
        6 LOADB                            R5 0
        7 RETURN                           R5 1

PROTO_11:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 MOVE                             R8 R1
        3 MOVE                             R9 R2
        4 MOVE                             R10 R3
        5 MOVE                             R11 R4
        6 CALL                             R6 5 -1
        7 RETURN                           R6 -1

PROTO_12:
        0 LOADB                            R2 0
        1 RETURN                           R2 1

PROTO_13:
        0 GETIMPORT                        R4 K1 [print]
        2 LOADK                            R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R4 1 0
        4 GETIMPORT                        R4 K1 [print]
        6 LOADK                            R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R4 1 0
        8 GETIMPORT                        R4 K1 [print]
       10 LOADK                            R6 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R8 K4 ["createTextInstance"]
       12 FASTCALL1                        TOSTRING R8 ; [+2]
       13 GETIMPORT                        R7 K6 [tostring]
       15 CALL                             R7 1 1
       16 CONCAT                           R5 R6 R7
       17 CALL                             R4 1 0
       18 GETIMPORT                        R4 K8 [error]
       20 LOADK                            R5 K9 ["FIXME (roblox): createTextInstance is unimplemented"]
       21 LOADN                            R6 2
       22 CALL                             R4 2 0
       23 LOADNIL                          R4
       24 RETURN                           R4 1

PROTO_14:
        0 GETIMPORT                        R4 K1 [print]
        2 LOADK                            R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R4 1 0
        4 GETIMPORT                        R4 K1 [print]
        6 LOADK                            R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R4 1 0
        8 GETIMPORT                        R4 K1 [print]
       10 LOADK                            R6 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R8 K4 ["commitMount"]
       12 FASTCALL1                        TOSTRING R8 ; [+2]
       13 GETIMPORT                        R7 K6 [tostring]
       15 CALL                             R7 1 1
       16 CONCAT                           R5 R6 R7
       17 CALL                             R4 1 0
       18 GETIMPORT                        R4 K8 [error]
       20 LOADK                            R5 K9 ["FIXME (roblox): commitMount is unimplemented"]
       21 LOADN                            R6 2
       22 CALL                             R4 2 0
       23 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R0
        2 MOVE                             R8 R4
        3 CALL                             R6 2 0
        4 GETUPVAL                         R6 1
        5 MOVE                             R7 R0
        6 MOVE                             R8 R1
        7 MOVE                             R9 R2
        8 MOVE                             R10 R3
        9 MOVE                             R11 R4
       10 CALL                             R6 5 0
       11 RETURN                           R0 0

PROTO_16:
        0 SETTABLEKS                       R0 R1 K0 ["Parent"]
        2 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["appendChild"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_18:
        0 SETTABLEKS                       R0 R1 K0 ["Parent"]
        2 RETURN                           R0 0

PROTO_19:
        0 SETTABLEKS                       R0 R1 K0 ["Parent"]
        2 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R1 K0 ["Parent"]
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["removeChild"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R2 1 0
        4 GETIMPORT                        R2 K1 [print]
        6 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R2 1 0
        8 GETIMPORT                        R2 K1 [print]
       10 LOADK                            R4 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R6 K4 ["clearSuspenseBoundary"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K6 [tostring]
       15 CALL                             R5 1 1
       16 CONCAT                           R3 R4 R5
       17 CALL                             R2 1 0
       18 GETIMPORT                        R2 K8 [error]
       20 LOADK                            R3 K9 ["FIXME (roblox): clearSuspenseBoundary is unimplemented"]
       21 LOADN                            R4 2
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R2 1 0
        4 GETIMPORT                        R2 K1 [print]
        6 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R2 1 0
        8 GETIMPORT                        R2 K1 [print]
       10 LOADK                            R4 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R6 K4 ["clearSuspenseBoundaryFromContainer"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K6 [tostring]
       15 CALL                             R5 1 1
       16 CONCAT                           R3 R4 R5
       17 CALL                             R2 1 0
       18 GETIMPORT                        R2 K8 [error]
       20 LOADK                            R3 K9 ["FIXME (roblox): clearSuspenseBoundaryFromContainer is unimplemented"]
       21 LOADN                            R4 2
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K1 [print]
        6 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K1 [print]
       10 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R5 K4 ["hideInstance"]
       12 FASTCALL1                        TOSTRING R5 ; [+2]
       13 GETIMPORT                        R4 K6 [tostring]
       15 CALL                             R4 1 1
       16 CONCAT                           R2 R3 R4
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K8 [error]
       20 LOADK                            R2 K9 ["FIXME (roblox): hideInstance is unimplemented"]
       21 LOADN                            R3 2
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K1 [print]
        6 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K1 [print]
       10 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R5 K4 ["hideTextInstance"]
       12 FASTCALL1                        TOSTRING R5 ; [+2]
       13 GETIMPORT                        R4 K6 [tostring]
       15 CALL                             R4 1 1
       16 CONCAT                           R2 R3 R4
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K8 [error]
       20 LOADK                            R2 K9 ["FIXME (roblox): hideTextInstance is unimplemented"]
       21 LOADN                            R3 2
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R2 1 0
        4 GETIMPORT                        R2 K1 [print]
        6 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R2 1 0
        8 GETIMPORT                        R2 K1 [print]
       10 LOADK                            R4 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R6 K4 ["unhideInstance"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K6 [tostring]
       15 CALL                             R5 1 1
       16 CONCAT                           R3 R4 R5
       17 CALL                             R2 1 0
       18 GETIMPORT                        R2 K8 [error]
       20 LOADK                            R3 K9 ["FIXME (roblox): unhideInstance is unimplemented"]
       21 LOADN                            R4 2
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_27:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R2 1 0
        4 GETIMPORT                        R2 K1 [print]
        6 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R2 1 0
        8 GETIMPORT                        R2 K1 [print]
       10 LOADK                            R4 K3 ["UNIMPLEMENTED ERROR: "]
       11 LOADK                            R6 K4 ["unhideTextInstance"]
       12 FASTCALL1                        TOSTRING R6 ; [+2]
       13 GETIMPORT                        R5 K6 [tostring]
       15 CALL                             R5 1 1
       16 CONCAT                           R3 R4 R5
       17 CALL                             R2 1 0
       18 GETIMPORT                        R2 K8 [error]
       20 LOADK                            R3 K9 ["FIXME (roblox): unhideTextInstance is unimplemented"]
       21 LOADN                            R4 2
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R1 K1 [pairs]
        2 NAMECALL                         R2 R0 K2 ["GetChildren"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 3
        6 FORGPREP_NEXT                    R1
        7 LOADNIL                          R6
        8 SETTABLEKS                       R6 R5 K3 ["Parent"]
       10 FORGLOOP                         R1 2 ; [-4]
       12 RETURN                           R0 0

PROTO_29:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R1 K2 [script]
        4 GETTABLEKS                       R1 R1 K3 ["Parent"]
        6 GETTABLEKS                       R1 R1 K3 ["Parent"]
        8 GETTABLEKS                       R1 R1 K3 ["Parent"]
       10 GETIMPORT                        R2 K5 [require]
       12 GETTABLEKS                       R3 R1 K6 ["LuauPolyfill"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R3 R2 K7 ["Object"]
       17 GETTABLEKS                       R4 R2 K8 ["setTimeout"]
       19 GETTABLEKS                       R5 R2 K9 ["clearTimeout"]
       21 GETIMPORT                        R6 K5 [require]
       23 GETIMPORT                        R8 K2 [script]
       25 GETTABLEKS                       R8 R8 K3 ["Parent"]
       27 GETTABLEKS                       R7 R8 K10 ["ReactRobloxHostTypes.roblox"]
       29 CALL                             R6 1 1
       30 GETIMPORT                        R7 K5 [require]
       32 GETIMPORT                        R8 K2 [script]
       34 GETTABLEKS                       R8 R8 K3 ["Parent"]
       36 GETTABLEKS                       R8 R8 K11 ["ReactRobloxComponentTree"]
       38 CALL                             R7 1 1
       39 GETTABLEKS                       R8 R7 K12 ["precacheFiberNode"]
       41 GETTABLEKS                       R9 R7 K13 ["updateFiberProps"]
       43 GETIMPORT                        R10 K5 [require]
       45 GETIMPORT                        R11 K2 [script]
       47 GETTABLEKS                       R11 R11 K3 ["Parent"]
       49 GETTABLEKS                       R11 R11 K14 ["ReactRobloxComponent"]
       51 CALL                             R10 1 1
       52 GETTABLEKS                       R11 R10 K15 ["setInitialProperties"]
       54 GETTABLEKS                       R12 R10 K16 ["diffProperties"]
       56 GETTABLEKS                       R13 R10 K17 ["updateProperties"]
       58 GETTABLEKS                       R14 R10 K18 ["cleanupHostComponent"]
       60 GETIMPORT                        R15 K5 [require]
       62 GETTABLEKS                       R16 R1 K19 ["Shared"]
       64 CALL                             R15 1 1
       65 GETTABLEKS                       R15 R15 K20 ["ReactFeatureFlags"]
       67 GETTABLEKS                       R16 R15 K21 ["enableCreateEventHandleAPI"]
       69 NEWTABLE                         R17 64 0
       71 GETTABLEKS                       R18 R3 K22 ["assign"]
       73 MOVE                             R19 R17
       74 GETIMPORT                        R20 K5 [require]
       76 GETTABLEKS                       R21 R1 K19 ["Shared"]
       78 CALL                             R20 1 1
       79 GETTABLEKS                       R20 R20 K23 ["ReactFiberHostConfig"]
       81 GETTABLEKS                       R20 R20 K24 ["WithNoPersistence"]
       83 CALL                             R18 2 0
       84 DUPCLOSURE                       R18 K25 [PROTO_1]
       85 SETTABLEKS                       R18 R17 K26 ["getRootHostContext"]
       87 DUPCLOSURE                       R18 K27 [PROTO_2]
       88 SETTABLEKS                       R18 R17 K28 ["getChildHostContext"]
       90 DUPCLOSURE                       R18 K29 [PROTO_3]
       91 SETTABLEKS                       R18 R17 K30 ["getPublicInstance"]
       93 DUPCLOSURE                       R18 K31 [PROTO_4]
       94 CAPTURE                          VAL R16
       95 SETTABLEKS                       R18 R17 K32 ["prepareForCommit"]
       97 DUPCLOSURE                       R18 K33 [PROTO_5]
       98 CAPTURE                          VAL R16
       99 SETTABLEKS                       R18 R17 K34 ["beforeActiveInstanceBlur"]
      101 DUPCLOSURE                       R18 K35 [PROTO_6]
      102 CAPTURE                          VAL R16
      103 SETTABLEKS                       R18 R17 K36 ["afterActiveInstanceBlur"]
      105 DUPCLOSURE                       R18 K37 [PROTO_7]
      106 SETTABLEKS                       R18 R17 K38 ["resetAfterCommit"]
      108 DUPCLOSURE                       R18 K39 [PROTO_8]
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R9
      111 SETTABLEKS                       R18 R17 K40 ["createInstance"]
      113 DUPCLOSURE                       R18 K41 [PROTO_9]
      114 SETTABLEKS                       R18 R17 K42 ["appendInitialChild"]
      116 DUPCLOSURE                       R18 K43 [PROTO_10]
      117 CAPTURE                          VAL R11
      118 SETTABLEKS                       R18 R17 K44 ["finalizeInitialChildren"]
      120 DUPCLOSURE                       R18 K45 [PROTO_11]
      121 CAPTURE                          VAL R12
      122 SETTABLEKS                       R18 R17 K46 ["prepareUpdate"]
      124 DUPCLOSURE                       R19 K47 [PROTO_12]
      125 SETTABLEKS                       R19 R17 K48 ["shouldSetTextContent"]
      127 DUPCLOSURE                       R19 K49 [PROTO_13]
      128 SETTABLEKS                       R19 R17 K50 ["createTextInstance"]
      130 LOADB                            R19 1
      131 SETTABLEKS                       R19 R17 K51 ["isPrimaryRenderer"]
      133 LOADB                            R19 1
      134 SETTABLEKS                       R19 R17 K52 ["warnsIfNotActing"]
      136 SETTABLEKS                       R4 R17 K53 ["scheduleTimeout"]
      138 SETTABLEKS                       R5 R17 K54 ["cancelTimeout"]
      140 LOADN                            R19 -1
      141 SETTABLEKS                       R19 R17 K55 ["noTimeout"]
      143 LOADB                            R19 1
      144 SETTABLEKS                       R19 R17 K56 ["supportsMutation"]
      146 DUPCLOSURE                       R19 K57 [PROTO_14]
      147 SETTABLEKS                       R19 R17 K58 ["commitMount"]
      149 DUPCLOSURE                       R19 K59 [PROTO_15]
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R13
      152 SETTABLEKS                       R19 R17 K60 ["commitUpdate"]
      154 DUPCLOSURE                       R19 K61 [PROTO_16]
      155 SETTABLEKS                       R19 R17 K62 ["appendChild"]
      157 DUPCLOSURE                       R19 K63 [PROTO_17]
      158 CAPTURE                          VAL R17
      159 SETTABLEKS                       R19 R17 K64 ["appendChildToContainer"]
      161 DUPCLOSURE                       R19 K65 [PROTO_18]
      162 SETTABLEKS                       R19 R17 K66 ["insertBefore"]
      164 DUPCLOSURE                       R19 K67 [PROTO_19]
      165 SETTABLEKS                       R19 R17 K68 ["insertInContainerBefore"]
      167 DUPCLOSURE                       R19 K69 [PROTO_20]
      168 CAPTURE                          VAL R14
      169 SETTABLEKS                       R19 R17 K70 ["removeChild"]
      171 DUPCLOSURE                       R19 K71 [PROTO_21]
      172 CAPTURE                          VAL R17
      173 SETTABLEKS                       R19 R17 K72 ["removeChildFromContainer"]
      175 DUPCLOSURE                       R19 K73 [PROTO_22]
      176 SETTABLEKS                       R19 R17 K74 ["clearSuspenseBoundary"]
      178 DUPCLOSURE                       R19 K75 [PROTO_23]
      179 SETTABLEKS                       R19 R17 K76 ["clearSuspenseBoundaryFromContainer"]
      181 DUPCLOSURE                       R19 K77 [PROTO_24]
      182 SETTABLEKS                       R19 R17 K78 ["hideInstance"]
      184 DUPCLOSURE                       R19 K79 [PROTO_25]
      185 SETTABLEKS                       R19 R17 K80 ["hideTextInstance"]
      187 DUPCLOSURE                       R19 K81 [PROTO_26]
      188 SETTABLEKS                       R19 R17 K82 ["unhideInstance"]
      190 DUPCLOSURE                       R19 K83 [PROTO_27]
      191 SETTABLEKS                       R19 R17 K84 ["unhideTextInstance"]
      193 DUPCLOSURE                       R19 K85 [PROTO_28]
      194 SETTABLEKS                       R19 R17 K86 ["clearContainer"]
      196 DUPCLOSURE                       R19 K87 [PROTO_29]
      197 SETTABLEKS                       R19 R17 K88 ["preparePortalMount"]
      199 RETURN                           R17 1
