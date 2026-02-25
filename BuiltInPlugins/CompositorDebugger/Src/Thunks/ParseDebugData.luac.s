PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["children"]
        2 JUMPIFNOT                        R2 ; [+16]
        3 GETTABLEKS                       R2 R0 K0 ["children"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R9 R6 K2 ["weight"]
       10 ORK                              R8 R9 K1 [1]
       11 GETTABLEKS                       R10 R0 K2 ["weight"]
       13 ORK                              R9 R10 K1 [1]
       14 MUL                              R7 R8 R9
       15 SETTABLEKS                       R7 R6 K2 ["weight"]
       17 FORGLOOP                         R2 2 ; [-10]
       19 GETTABLEKS                       R2 R0 K3 ["id"]
       21 JUMPIFNOT                        R2 ; [+4]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R3 R0 K3 ["id"]
       25 SETTABLE                         R0 R2 R3
       26 GETUPVAL                         R2 1
       27 JUMPIFNOT                        R2 ; [+45]
       28 GETUPVAL                         R4 2
       29 FASTCALL2                        MATH_MAX R1 R4 ; [+4]
       31 MOVE                             R3 R1
       32 GETIMPORT                        R2 K6 [math.max]
       34 CALL                             R2 2 1
       35 SETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R0 K7 ["className"]
       38 JUMPIFNOT                        R2 ; [+34]
       39 GETUPVAL                         R3 3
       40 GETTABLEKS                       R4 R0 K7 ["className"]
       42 GETTABLE                         R2 R3 R4
       43 JUMPIF                           R2 ; [+7]
       44 DUPTABLE                         R2 K9 [{"count", "children"}]
       45 LOADN                            R3 0
       46 SETTABLEKS                       R3 R2 K8 ["count"]
       48 LOADN                            R3 0
       49 SETTABLEKS                       R3 R2 K0 ["children"]
       51 GETTABLEKS                       R3 R2 K8 ["count"]
       53 ADDK                             R3 R3 K1 [1]
       54 SETTABLEKS                       R3 R2 K8 ["count"]
       56 GETTABLEKS                       R3 R2 K0 ["children"]
       58 GETTABLEKS                       R5 R0 K0 ["children"]
       60 JUMPIFNOT                        R5 ; [+4]
       61 GETTABLEKS                       R5 R0 K0 ["children"]
       63 LENGTH                           R4 R5
       64 JUMP                             ; [+1]
       65 LOADN                            R4 0
       66 ADD                              R3 R3 R4
       67 SETTABLEKS                       R3 R2 K0 ["children"]
       69 GETUPVAL                         R3 3
       70 GETTABLEKS                       R4 R0 K7 ["className"]
       72 SETTABLE                         R2 R3 R4
       73 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R3 K2 ["HistoryOffset"]
        7 JUMPIFEQKNIL                     R2 ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R1 K1 ["Status"]
       12 GETTABLEKS                       R2 R3 K3 ["SendPayloadAnalytics"]
       14 NEWTABLE                         R3 0 0
       16 LOADN                            R4 0
       17 NEWTABLE                         R5 0 0
       19 GETUPVAL                         R6 0
       20 JUMPIFNOT                        R6 ; [+95]
       21 GETUPVAL                         R6 1
       22 GETUPVAL                         R7 0
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 CAPTURE                          REF R4
       27 CAPTURE                          VAL R5
       28 CALL                             R6 2 0
       29 NAMECALL                         R8 R0 K0 ["getState"]
       31 CALL                             R8 1 1
       32 GETTABLEKS                       R7 R8 K4 ["DebugData"]
       34 GETTABLEKS                       R6 R7 K5 ["FrameBuffer"]
       36 NAMECALL                         R6 R6 K6 ["clone"]
       38 CALL                             R6 1 1
       39 DUPTABLE                         R7 K10 [{"payload", "layerMap", "timestamp"}]
       40 GETUPVAL                         R8 0
       41 SETTABLEKS                       R8 R7 K7 ["payload"]
       43 SETTABLEKS                       R3 R7 K8 ["layerMap"]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K9 ["timestamp"]
       48 SETTABLEKS                       R8 R7 K9 ["timestamp"]
       50 MOVE                             R10 R7
       51 NAMECALL                         R8 R6 K11 ["push"]
       53 CALL                             R8 2 0
       54 JUMPIFNOT                        R2 ; [+32]
       55 GETUPVAL                         R8 2
       56 JUMPIFNOT                        R8 ; [+30]
       57 NEWTABLE                         R8 0 0
       59 MOVE                             R9 R5
       60 LOADNIL                          R10
       61 LOADNIL                          R11
       62 FORGPREP                         R9
       63 SETTABLEKS                       R12 R13 K12 ["name"]
       65 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
       67 MOVE                             R15 R8
       68 MOVE                             R16 R13
       69 GETIMPORT                        R14 K15 [table.insert]
       71 CALL                             R14 2 0
       72 FORGLOOP                         R9 2 ; [-10]
       74 GETUPVAL                         R9 2
       75 LOADK                            R11 K16 ["onCompositorConnected"]
       76 MOVE                             R12 R4
       77 MOVE                             R13 R8
       78 NAMECALL                         R9 R9 K17 ["report"]
       80 CALL                             R9 4 0
       81 GETUPVAL                         R11 3
       82 LOADB                            R12 0
       83 CALL                             R11 1 -1
       84 NAMECALL                         R9 R0 K18 ["dispatch"]
       86 CALL                             R9 -1 0
       87 LOADN                            R9 1
       88 GETTABLEKS                       R12 R1 K1 ["Status"]
       90 GETTABLEKS                       R11 R12 K19 ["SkipCounter"]
       92 GETTABLEKS                       R14 R1 K1 ["Status"]
       94 GETTABLEKS                       R13 R14 K21 ["SkipLimit"]
       96 ADDK                             R12 R13 K20 [1]
       97 MOD                              R10 R11 R12
       98 ADD                              R8 R9 R10
       99 GETUPVAL                         R11 4
      100 MOVE                             R12 R8
      101 CALL                             R11 1 -1
      102 NAMECALL                         R9 R0 K18 ["dispatch"]
      104 CALL                             R9 -1 0
      105 GETUPVAL                         R11 5
      106 MOVE                             R12 R6
      107 CALL                             R11 1 -1
      108 NAMECALL                         R9 R0 K18 ["dispatch"]
      110 CALL                             R9 -1 0
      111 GETUPVAL                         R11 6
      112 CALL                             R11 0 -1
      113 NAMECALL                         R9 R0 K18 ["dispatch"]
      115 CALL                             R9 -1 0
      116 CLOSEUPVALS                      R4
      117 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetFrameBuffer"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetSendPayloadAnalytics"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["SetSkipCounter"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R6 R0 K4 ["Src"]
       28 GETTABLEKS                       R5 R6 K11 ["Thunks"]
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R5 K12 ["RenderAdornments"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R8 R0 K4 ["Src"]
       37 GETTABLEKS                       R7 R8 K13 ["Util"]
       39 GETIMPORT                        R8 K7 [require]
       41 GETTABLEKS                       R9 R7 K14 ["traverse"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K7 [require]
       46 GETTABLEKS                       R11 R0 K4 ["Src"]
       48 GETTABLEKS                       R10 R11 K15 ["Types"]
       50 CALL                             R9 1 1
       51 DUPCLOSURE                       R10 K16 [PROTO_2]
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R6
       57 RETURN                           R10 1
