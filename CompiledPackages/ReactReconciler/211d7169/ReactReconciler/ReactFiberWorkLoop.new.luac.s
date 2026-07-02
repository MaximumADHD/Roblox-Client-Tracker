PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R1 1
        7 NAMECALL                         R2 R0 K1 ["ipairs"]
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 MOVE                             R9 R6
       12 NAMECALL                         R7 R1 K2 ["add"]
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 2 ; [-5]
       17 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [next]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["originalBeginWorkRef"]
        3 JUMPIF                           R3 ; [+14]
        4 GETUPVAL                         R3 0
        5 GETIMPORT                        R4 K2 [require]
        7 GETIMPORT                        R6 K5 [script]
        9 GETTABLEKS                       R6 R6 K6 ["Parent"]
       11 GETTABLEKS                       R5 R6 K3 ["ReactFiberBeginWork.new"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R4 R4 K7 ["beginWork"]
       16 SETTABLEKS                       R4 R3 K0 ["originalBeginWorkRef"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["originalBeginWorkRef"]
       21 MOVE                             R4 R0
       22 MOVE                             R5 R1
       23 MOVE                             R6 R2
       24 CALL                             R3 3 -1
       25 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["completeWorkRef"]
        3 JUMPIF                           R3 ; [+14]
        4 GETUPVAL                         R3 0
        5 GETIMPORT                        R4 K2 [require]
        7 GETIMPORT                        R6 K5 [script]
        9 GETTABLEKS                       R6 R6 K6 ["Parent"]
       11 GETTABLEKS                       R5 R6 K3 ["ReactFiberCompleteWork.new"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R4 R4 K7 ["completeWork"]
       16 SETTABLEKS                       R4 R3 K0 ["completeWorkRef"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["completeWorkRef"]
       21 MOVE                             R4 R0
       22 MOVE                             R5 R1
       23 MOVE                             R6 R2
       24 CALL                             R3 3 -1
       25 RETURN                           R3 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R2 K4 [script]
        4 GETTABLEKS                       R2 R2 K5 ["Parent"]
        6 GETTABLEKS                       R1 R2 K2 ["ReactFiberHooks.new"]
        8 CALL                             R0 1 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K6 ["resetHooksAfterThrow"]
       14 SETTABLEKS                       R1 R0 K7 ["resetHooksAfterThrowRef"]
       16 GETUPVAL                         R0 1
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K8 ["ContextOnlyDispatcher"]
       20 SETTABLEKS                       R1 R0 K9 ["ContextOnlyDispatcherRef"]
       22 GETUPVAL                         R0 1
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K10 ["getIsUpdatingOpaqueValueInRenderPhaseInDEV"]
       26 SETTABLEKS                       R1 R0 K11 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       28 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resetHooksAfterThrowRef"]
        3 JUMPIF                           R0 ; [+28]
        4 GETIMPORT                        R0 K2 [require]
        6 GETIMPORT                        R2 K5 [script]
        8 GETTABLEKS                       R2 R2 K6 ["Parent"]
       10 GETTABLEKS                       R1 R2 K3 ["ReactFiberHooks.new"]
       12 CALL                             R0 1 1
       13 SETUPVAL                         R0 1
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K7 ["resetHooksAfterThrow"]
       18 SETTABLEKS                       R1 R0 K0 ["resetHooksAfterThrowRef"]
       20 GETUPVAL                         R0 0
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K8 ["ContextOnlyDispatcher"]
       24 SETTABLEKS                       R1 R0 K9 ["ContextOnlyDispatcherRef"]
       26 GETUPVAL                         R0 0
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K10 ["getIsUpdatingOpaqueValueInRenderPhaseInDEV"]
       30 SETTABLEKS                       R1 R0 K11 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       32 GETUPVAL                         R0 0
       33 GETTABLEKS                       R0 R0 K0 ["resetHooksAfterThrowRef"]
       35 CALL                             R0 0 -1
       36 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextOnlyDispatcherRef"]
        3 JUMPIF                           R0 ; [+28]
        4 GETIMPORT                        R0 K2 [require]
        6 GETIMPORT                        R2 K5 [script]
        8 GETTABLEKS                       R2 R2 K6 ["Parent"]
       10 GETTABLEKS                       R1 R2 K3 ["ReactFiberHooks.new"]
       12 CALL                             R0 1 1
       13 SETUPVAL                         R0 1
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K7 ["resetHooksAfterThrow"]
       18 SETTABLEKS                       R1 R0 K8 ["resetHooksAfterThrowRef"]
       20 GETUPVAL                         R0 0
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K9 ["ContextOnlyDispatcher"]
       24 SETTABLEKS                       R1 R0 K0 ["ContextOnlyDispatcherRef"]
       26 GETUPVAL                         R0 0
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K10 ["getIsUpdatingOpaqueValueInRenderPhaseInDEV"]
       30 SETTABLEKS                       R1 R0 K11 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       32 GETUPVAL                         R0 0
       33 GETTABLEKS                       R0 R0 K0 ["ContextOnlyDispatcherRef"]
       35 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
        3 JUMPIF                           R0 ; [+28]
        4 GETIMPORT                        R0 K2 [require]
        6 GETIMPORT                        R2 K5 [script]
        8 GETTABLEKS                       R2 R2 K6 ["Parent"]
       10 GETTABLEKS                       R1 R2 K3 ["ReactFiberHooks.new"]
       12 CALL                             R0 1 1
       13 SETUPVAL                         R0 1
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K7 ["resetHooksAfterThrow"]
       18 SETTABLEKS                       R1 R0 K8 ["resetHooksAfterThrowRef"]
       20 GETUPVAL                         R0 0
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K9 ["ContextOnlyDispatcher"]
       24 SETTABLEKS                       R1 R0 K10 ["ContextOnlyDispatcherRef"]
       26 GETUPVAL                         R0 0
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K11 ["getIsUpdatingOpaqueValueInRenderPhaseInDEV"]
       30 SETTABLEKS                       R1 R0 K0 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       32 GETUPVAL                         R0 0
       33 GETTABLEKS                       R0 R0 K0 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       35 CALL                             R0 0 -1
       36 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 1
        1 CALL                             R1 0 1
        2 ADDK                             R0 R1 K0 [500]
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       BIT32_BAND R1 K0 ; [+4]
        3 LOADK                            R2 K0 [48]
        4 GETIMPORT                        R0 K3 [bit32.band]
        6 CALL                             R0 2 1
        7 JUMPIFEQKN                       R0 K4 [0] ; [+4]
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R1 3
       14 JUMPIFEQ                         R0 R1 ; [+3]
       16 GETUPVAL                         R0 2
       17 RETURN                           R0 1
       18 GETUPVAL                         R0 1
       19 CALL                             R0 0 1
       20 SETUPVAL                         R0 2
       21 GETUPVAL                         R0 2
       22 RETURN                           R0 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["mode"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["BlockingMode"]
        5 FASTCALL2                        BIT32_BAND R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K4 [bit32.band]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["NoMode"]
       14 JUMPIFNOTEQ                      R2 R3 ; [+3]
       16 GETUPVAL                         R2 1
       17 RETURN                           R2 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K6 ["ConcurrentMode"]
       21 FASTCALL2                        BIT32_BAND R1 R4 ; [+4]
       23 MOVE                             R3 R1
       24 GETIMPORT                        R2 K4 [bit32.band]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K5 ["NoMode"]
       30 JUMPIFNOTEQ                      R2 R3 ; [+10]
       32 GETUPVAL                         R3 2
       33 CALL                             R3 0 1
       34 GETUPVAL                         R4 3
       35 JUMPIFNOTEQ                      R3 R4 ; [+3]
       37 GETUPVAL                         R2 1
       38 JUMPIF                           R2 ; [+1]
       39 GETUPVAL                         R2 4
       40 RETURN                           R2 1
       41 GETUPVAL                         R2 5
       42 GETTABLEKS                       R2 R2 K7 ["deferRenderPhaseUpdateToNextBatch"]
       44 JUMPIF                           R2 ; [+19]
       45 GETUPVAL                         R3 6
       46 FASTCALL2K                       BIT32_BAND R3 K8 ; [+4]
       48 LOADK                            R4 K8 [16]
       49 GETIMPORT                        R2 K4 [bit32.band]
       51 CALL                             R2 2 1
       52 JUMPIFEQKN                       R2 K9 [0] ; [+11]
       54 GETUPVAL                         R2 7
       55 GETUPVAL                         R3 8
       56 GETTABLEKS                       R3 R3 K10 ["NoLanes"]
       58 JUMPIFEQ                         R2 R3 ; [+5]
       60 GETUPVAL                         R2 9
       61 GETUPVAL                         R3 7
       62 CALL                             R2 1 -1
       63 RETURN                           R2 -1
       64 GETUPVAL                         R2 10
       65 GETUPVAL                         R3 8
       66 GETTABLEKS                       R3 R3 K10 ["NoLanes"]
       68 JUMPIFNOTEQ                      R2 R3 ; [+3]
       70 GETUPVAL                         R2 11
       71 SETUPVAL                         R2 10
       72 GETUPVAL                         R3 12
       73 GETTABLEKS                       R3 R3 K11 ["requestCurrentTransition"]
       75 CALL                             R3 0 1
       76 GETUPVAL                         R4 12
       77 GETTABLEKS                       R4 R4 K12 ["NoTransition"]
       79 JUMPIFNOTEQ                      R3 R4 ; [+2]
       81 LOADB                            R2 0 +1
       82 LOADB                            R2 1
       83 JUMPIFNOT                        R2 ; [+23]
       84 GETUPVAL                         R3 13
       85 GETUPVAL                         R4 8
       86 GETTABLEKS                       R4 R4 K10 ["NoLanes"]
       88 JUMPIFEQ                         R3 R4 ; [+13]
       90 GETUPVAL                         R3 14
       91 JUMPIFEQKNIL                     R3 ; [+6]
       93 GETUPVAL                         R3 14
       94 GETTABLEKS                       R3 R3 K13 ["pendingLanes"]
       96 SETUPVAL                         R3 13
       97 JUMP                             ; [+4]
       98 GETUPVAL                         R3 8
       99 GETTABLEKS                       R3 R3 K10 ["NoLanes"]
      101 SETUPVAL                         R3 13
      102 GETUPVAL                         R3 15
      103 GETUPVAL                         R4 10
      104 GETUPVAL                         R5 13
      105 CALL                             R3 2 -1
      106 RETURN                           R3 -1
      107 GETUPVAL                         R3 2
      108 CALL                             R3 0 1
      109 LOADNIL                          R4
      110 GETUPVAL                         R6 6
      111 FASTCALL2K                       BIT32_BAND R6 K14 ; [+4]
      113 LOADK                            R7 K14 [4]
      114 GETIMPORT                        R5 K4 [bit32.band]
      116 CALL                             R5 2 1
      117 JUMPIFEQKN                       R5 K9 [0] ; [+12]
      119 GETUPVAL                         R5 16
      120 JUMPIFNOTEQ                      R3 R5 ; [+9]
      122 GETUPVAL                         R5 17
      123 GETUPVAL                         R6 8
      124 GETTABLEKS                       R6 R6 K15 ["InputDiscreteLanePriority"]
      126 GETUPVAL                         R7 10
      127 CALL                             R5 2 1
      128 MOVE                             R4 R5
      129 RETURN                           R4 1
      130 GETUPVAL                         R5 18
      131 MOVE                             R6 R3
      132 CALL                             R5 1 1
      133 GETUPVAL                         R6 5
      134 GETTABLEKS                       R6 R6 K16 ["decoupleUpdatePriorityFromScheduler"]
      136 JUMPIFNOT                        R6 ; [+29]
      137 GETUPVAL                         R6 19
      138 CALL                             R6 0 1
      139 JUMPIFEQ                         R5 R6 ; [+26]
      141 GETUPVAL                         R7 8
      142 GETTABLEKS                       R7 R7 K17 ["NoLanePriority"]
      144 JUMPIFEQ                         R6 R7 ; [+21]
      146 GETIMPORT                        R7 K19 [_G]
      148 GETTABLEKS                       R7 R7 K20 ["__DEV__"]
      150 JUMPIFNOT                        R7 ; [+15]
      151 GETUPVAL                         R7 20
      152 GETTABLEKS                       R7 R7 K21 ["error"]
      154 LOADK                            R8 K22 ["Expected current scheduler lane priority %s to match current update lane priority %s"]
      155 FASTCALL1                        TOSTRING R5 ; [+3]
      156 MOVE                             R10 R5
      157 GETIMPORT                        R9 K24 [tostring]
      159 CALL                             R9 1 1
      160 FASTCALL1                        TOSTRING R6 ; [+3]
      161 MOVE                             R11 R6
      162 GETIMPORT                        R10 K24 [tostring]
      164 CALL                             R10 1 1
      165 CALL                             R7 3 0
      166 GETUPVAL                         R6 17
      167 MOVE                             R7 R5
      168 GETUPVAL                         R8 10
      169 CALL                             R6 2 1
      170 MOVE                             R4 R6
      171 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 JUMPIFNOTEQ                      R0 R1 ; [+3]
        5 GETUPVAL                         R0 2
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 3
        8 RETURN                           R0 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["mode"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["BlockingMode"]
        5 FASTCALL2                        BIT32_BAND R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K4 [bit32.band]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["NoMode"]
       14 JUMPIFNOTEQ                      R2 R3 ; [+3]
       16 GETUPVAL                         R2 1
       17 RETURN                           R2 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K6 ["ConcurrentMode"]
       21 FASTCALL2                        BIT32_BAND R1 R4 ; [+4]
       23 MOVE                             R3 R1
       24 GETIMPORT                        R2 K4 [bit32.band]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K5 ["NoMode"]
       30 JUMPIFNOTEQ                      R2 R3 ; [+10]
       32 GETUPVAL                         R3 2
       33 CALL                             R3 0 1
       34 GETUPVAL                         R4 3
       35 JUMPIFNOTEQ                      R3 R4 ; [+3]
       37 GETUPVAL                         R2 1
       38 RETURN                           R2 1
       39 GETUPVAL                         R2 4
       40 RETURN                           R2 1
       41 GETUPVAL                         R2 5
       42 GETUPVAL                         R3 6
       43 GETTABLEKS                       R3 R3 K7 ["NoLanes"]
       45 JUMPIFNOTEQ                      R2 R3 ; [+3]
       47 GETUPVAL                         R2 7
       48 SETUPVAL                         R2 5
       49 GETUPVAL                         R2 8
       50 GETUPVAL                         R3 5
       51 CALL                             R2 1 -1
       52 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["checkForNestedUpdates"]
        3 CALL                             R3 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["markUpdateLaneFromFiberToRoot"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 CALL                             R3 2 1
       10 JUMPIFNOTEQKNIL                  R3 ; [+3]
       12 LOADNIL                          R4
       13 RETURN                           R4 1
       14 GETUPVAL                         R4 1
       15 MOVE                             R5 R3
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 CALL                             R4 3 0
       19 GETUPVAL                         R4 2
       20 JUMPIFNOTEQ                      R3 R4 ; [+33]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K2 ["warnAboutRenderPhaseUpdatesInDEV"]
       25 MOVE                             R5 R0
       26 CALL                             R4 1 0
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R4 R4 K3 ["deferRenderPhaseUpdateToNextBatch"]
       30 JUMPIF                           R4 ; [+9]
       31 GETUPVAL                         R5 4
       32 FASTCALL2K                       BIT32_BAND R5 K4 ; [+4]
       34 LOADK                            R6 K4 [16]
       35 GETIMPORT                        R4 K7 [bit32.band]
       37 CALL                             R4 2 1
       38 JUMPIFNOTEQKN                    R4 K8 [0] ; [+6]
       40 GETUPVAL                         R4 6
       41 GETUPVAL                         R5 5
       42 MOVE                             R6 R1
       43 CALL                             R4 2 1
       44 SETUPVAL                         R4 5
       45 GETUPVAL                         R4 7
       46 JUMPIFNOTEQKN                    R4 K9 [4] ; [+7]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K10 ["markRootSuspended"]
       51 MOVE                             R5 R3
       52 GETUPVAL                         R6 8
       53 CALL                             R4 2 0
       54 GETUPVAL                         R4 9
       55 CALL                             R4 0 1
       56 GETUPVAL                         R5 10
       57 JUMPIFNOTEQ                      R1 R5 ; [+51]
       59 GETUPVAL                         R6 4
       60 FASTCALL2K                       BIT32_BAND R6 K11 ; [+4]
       62 LOADK                            R7 K11 [8]
       63 GETIMPORT                        R5 K7 [bit32.band]
       65 CALL                             R5 2 1
       66 JUMPIFEQKN                       R5 K8 [0] ; [+22]
       68 GETUPVAL                         R6 4
       69 FASTCALL2K                       BIT32_BAND R6 K12 ; [+4]
       71 LOADK                            R7 K12 [48]
       72 GETIMPORT                        R5 K7 [bit32.band]
       74 CALL                             R5 2 1
       75 JUMPIFNOTEQKN                    R5 K8 [0] ; [+13]
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R5 R5 K13 ["schedulePendingInteractions"]
       80 MOVE                             R6 R3
       81 MOVE                             R7 R1
       82 CALL                             R5 2 0
       83 GETUPVAL                         R5 0
       84 GETTABLEKS                       R5 R5 K14 ["performSyncWorkOnRoot"]
       86 MOVE                             R6 R3
       87 CALL                             R5 1 0
       88 JUMP                             ; [+57]
       89 GETUPVAL                         R5 11
       90 MOVE                             R6 R3
       91 MOVE                             R7 R2
       92 CALL                             R5 2 0
       93 GETUPVAL                         R5 0
       94 GETTABLEKS                       R5 R5 K13 ["schedulePendingInteractions"]
       96 MOVE                             R6 R3
       97 MOVE                             R7 R1
       98 CALL                             R5 2 0
       99 GETUPVAL                         R5 4
      100 JUMPIFNOTEQKN                    R5 K8 [0] ; [+45]
      102 GETUPVAL                         R6 13
      103 CALL                             R6 0 1
      104 ADDK                             R5 R6 K15 [500]
      105 SETUPVAL                         R5 12
      106 GETUPVAL                         R5 14
      107 CALL                             R5 0 0
      108 JUMP                             ; [+37]
      109 GETUPVAL                         R6 4
      110 FASTCALL2K                       BIT32_BAND R6 K9 ; [+4]
      112 LOADK                            R7 K9 [4]
      113 GETIMPORT                        R5 K7 [bit32.band]
      115 CALL                             R5 2 1
      116 JUMPIFEQKN                       R5 K8 [0] ; [+19]
      118 GETUPVAL                         R5 15
      119 JUMPIFEQ                         R4 R5 ; [+4]
      121 GETUPVAL                         R5 16
      122 JUMPIFNOTEQ                      R4 R5 ; [+13]
      124 GETUPVAL                         R5 17
      125 JUMPIFNOTEQKNIL                  R5 ; [+7]
      127 NEWTABLE                         R5 1 0
      129 LOADB                            R6 1
      130 SETTABLE                         R6 R5 R3
      131 SETUPVAL                         R5 17
      132 JUMP                             ; [+3]
      133 GETUPVAL                         R5 17
      134 LOADB                            R6 1
      135 SETTABLE                         R6 R5 R3
      136 GETUPVAL                         R5 11
      137 MOVE                             R6 R3
      138 MOVE                             R7 R2
      139 CALL                             R5 2 0
      140 GETUPVAL                         R5 0
      141 GETTABLEKS                       R5 R5 K13 ["schedulePendingInteractions"]
      143 MOVE                             R6 R3
      144 MOVE                             R7 R1
      145 CALL                             R5 2 0
      146 SETUPVAL                         R3 18
      147 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["lanes"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 SETTABLEKS                       R2 R0 K0 ["lanes"]
        7 GETTABLEKS                       R2 R0 K1 ["alternate"]
        9 JUMPIFEQKNIL                     R2 ; [+8]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R4 R2 K0 ["lanes"]
       14 MOVE                             R5 R1
       15 CALL                             R3 2 1
       16 SETTABLEKS                       R3 R2 K0 ["lanes"]
       18 GETIMPORT                        R3 K3 [_G]
       20 GETTABLEKS                       R3 R3 K4 ["__DEV__"]
       22 JUMPIFNOT                        R3 ; [+30]
       23 JUMPIFNOTEQKNIL                  R2 ; [+29]
       25 GETTABLEKS                       R4 R0 K5 ["flags"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K6 ["Placement"]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K7 ["Hydrating"]
       33 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       35 GETIMPORT                        R5 K10 [bit32.bor]
       37 CALL                             R5 2 1
       38 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       40 GETIMPORT                        R3 K12 [bit32.band]
       42 CALL                             R3 2 1
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K13 ["NoFlags"]
       46 JUMPIFEQ                         R3 R4 ; [+6]
       48 GETUPVAL                         R3 2
       49 GETTABLEKS                       R3 R3 K14 ["warnAboutUpdateOnNotYetMountedFiberInDEV"]
       51 MOVE                             R4 R0
       52 CALL                             R3 1 0
       53 MOVE                             R3 R0
       54 GETTABLEKS                       R4 R0 K15 ["return_"]
       56 JUMPIFEQKNIL                     R4 ; [+57]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R6 R4 K16 ["childLanes"]
       61 MOVE                             R7 R1
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R4 K16 ["childLanes"]
       65 GETTABLEKS                       R2 R4 K1 ["alternate"]
       67 JUMPIFEQKNIL                     R2 ; [+9]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R6 R2 K16 ["childLanes"]
       72 MOVE                             R7 R1
       73 CALL                             R5 2 1
       74 SETTABLEKS                       R5 R2 K16 ["childLanes"]
       76 JUMP                             ; [+33]
       77 GETIMPORT                        R5 K3 [_G]
       79 GETTABLEKS                       R5 R5 K4 ["__DEV__"]
       81 JUMPIFNOT                        R5 ; [+28]
       82 GETTABLEKS                       R6 R4 K5 ["flags"]
       84 GETUPVAL                         R8 1
       85 GETTABLEKS                       R8 R8 K6 ["Placement"]
       87 GETUPVAL                         R9 1
       88 GETTABLEKS                       R9 R9 K7 ["Hydrating"]
       90 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
       92 GETIMPORT                        R7 K10 [bit32.bor]
       94 CALL                             R7 2 1
       95 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       97 GETIMPORT                        R5 K12 [bit32.band]
       99 CALL                             R5 2 1
      100 GETUPVAL                         R6 1
      101 GETTABLEKS                       R6 R6 K13 ["NoFlags"]
      103 JUMPIFEQ                         R5 R6 ; [+6]
      105 GETUPVAL                         R5 2
      106 GETTABLEKS                       R5 R5 K14 ["warnAboutUpdateOnNotYetMountedFiberInDEV"]
      108 MOVE                             R6 R0
      109 CALL                             R5 1 0
      110 MOVE                             R3 R4
      111 GETTABLEKS                       R4 R4 K15 ["return_"]
      113 JUMPBACK                         ; [-58]
      114 GETTABLEKS                       R5 R3 K17 ["tag"]
      116 GETUPVAL                         R6 3
      117 GETTABLEKS                       R6 R6 K18 ["HostRoot"]
      119 JUMPIFNOTEQ                      R5 R6 ; [+4]
      121 GETTABLEKS                       R5 R3 K19 ["stateNode"]
      123 RETURN                           R5 1
      124 LOADNIL                          R5
      125 RETURN                           R5 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["performSyncWorkOnRoot"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["performSyncWorkOnRoot"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["performConcurrentWorkOnRoot"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["callbackNode"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 0
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 1
        8 JUMPIFNOTEQ                      R0 R4 ; [+3]
       10 GETUPVAL                         R3 2
       11 JUMP                             ; [+3]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K1 ["NoLanes"]
       15 GETUPVAL                         R4 4
       16 MOVE                             R5 R0
       17 MOVE                             R6 R3
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 5
       20 CALL                             R5 0 1
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K1 ["NoLanes"]
       24 JUMPIFNOTEQ                      R4 R6 ; [+15]
       26 JUMPIFEQKNIL                     R2 ; [+12]
       28 GETUPVAL                         R6 6
       29 MOVE                             R7 R2
       30 CALL                             R6 1 0
       31 LOADNIL                          R6
       32 SETTABLEKS                       R6 R0 K0 ["callbackNode"]
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R6 R6 K2 ["NoLanePriority"]
       37 SETTABLEKS                       R6 R0 K3 ["callbackPriority"]
       39 RETURN                           R0 0
       40 JUMPIFEQKNIL                     R2 ; [+9]
       42 GETTABLEKS                       R6 R0 K3 ["callbackPriority"]
       44 JUMPIFNOTEQ                      R6 R5 ; [+2]
       46 RETURN                           R0 0
       47 GETUPVAL                         R7 6
       48 MOVE                             R8 R2
       49 CALL                             R7 1 0
       50 LOADNIL                          R6
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R7 R7 K4 ["SyncLanePriority"]
       54 JUMPIFNOTEQ                      R5 R7 ; [+8]
       56 GETUPVAL                         R7 7
       57 NEWCLOSURE                       R8 P0
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          VAL R0
       60 CALL                             R7 1 1
       61 MOVE                             R6 R7
       62 JUMP                             ; [+23]
       63 GETUPVAL                         R7 3
       64 GETTABLEKS                       R7 R7 K5 ["SyncBatchedLanePriority"]
       66 JUMPIFNOTEQ                      R5 R7 ; [+9]
       68 GETUPVAL                         R7 9
       69 GETUPVAL                         R8 10
       70 NEWCLOSURE                       R9 P1
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          VAL R0
       73 CALL                             R7 2 1
       74 MOVE                             R6 R7
       75 JUMP                             ; [+10]
       76 GETUPVAL                         R7 11
       77 MOVE                             R8 R5
       78 CALL                             R7 1 1
       79 GETUPVAL                         R8 9
       80 MOVE                             R9 R7
       81 NEWCLOSURE                       R10 P2
       82 CAPTURE                          UPVAL U8
       83 CAPTURE                          VAL R0
       84 CALL                             R8 2 1
       85 MOVE                             R6 R8
       86 SETTABLEKS                       R5 R0 K3 ["callbackPriority"]
       88 SETTABLEKS                       R6 R0 K0 ["callbackNode"]
       90 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["performConcurrentWorkOnRoot"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 3
        3 GETTABLEKS                       R1 R1 K0 ["NoLanes"]
        5 SETUPVAL                         R1 2
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R1 R1 K0 ["NoLanes"]
        9 SETUPVAL                         R1 4
       10 GETUPVAL                         R1 5
       11 GETUPVAL                         R4 6
       12 FASTCALL2K                       BIT32_BAND R4 K1 ; [+4]
       14 LOADK                            R5 K1 [48]
       15 GETIMPORT                        R3 K4 [bit32.band]
       17 CALL                             R3 2 1
       18 JUMPIFEQKN                       R3 K5 [0] ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 LOADK                            R3 K6 ["Should not already be working."]
       23 CALL                             R1 2 0
       24 GETTABLEKS                       R1 R0 K7 ["callbackNode"]
       26 GETUPVAL                         R2 7
       27 GETTABLEKS                       R2 R2 K8 ["flushPassiveEffects"]
       29 CALL                             R2 0 1
       30 JUMPIFNOT                        R2 ; [+6]
       31 GETTABLEKS                       R3 R0 K7 ["callbackNode"]
       33 JUMPIFEQ                         R3 R1 ; [+3]
       35 LOADNIL                          R3
       36 RETURN                           R3 1
       37 LOADNIL                          R3
       38 GETUPVAL                         R4 8
       39 JUMPIFNOTEQ                      R0 R4 ; [+3]
       41 GETUPVAL                         R3 9
       42 JUMP                             ; [+3]
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R3 R4 K0 ["NoLanes"]
       46 GETUPVAL                         R4 10
       47 MOVE                             R5 R0
       48 MOVE                             R6 R3
       49 CALL                             R4 2 1
       50 GETUPVAL                         R5 3
       51 GETTABLEKS                       R5 R5 K0 ["NoLanes"]
       53 JUMPIFNOTEQ                      R4 R5 ; [+3]
       55 LOADNIL                          R5
       56 RETURN                           R5 1
       57 GETUPVAL                         R5 11
       58 GETTABLEKS                       R5 R5 K9 ["renderRootConcurrent"]
       60 MOVE                             R6 R0
       61 MOVE                             R7 R4
       62 CALL                             R5 2 1
       63 GETUPVAL                         R6 12
       64 GETUPVAL                         R7 13
       65 GETUPVAL                         R8 14
       66 CALL                             R6 2 1
       67 JUMPIFNOT                        R6 ; [+9]
       68 GETUPVAL                         R6 11
       69 GETTABLEKS                       R6 R6 K10 ["prepareFreshStack"]
       71 MOVE                             R7 R0
       72 GETUPVAL                         R8 3
       73 GETTABLEKS                       R8 R8 K0 ["NoLanes"]
       75 CALL                             R6 2 0
       76 JUMP                             ; [+81]
       77 JUMPIFEQKN                       R5 K5 [0] ; [+80]
       79 JUMPIFNOTEQKN                    R5 K11 [2] ; [+37]
       81 GETUPVAL                         R7 6
       82 FASTCALL2K                       BIT32_BOR R7 K12 ; [+4]
       84 LOADK                            R8 K12 [64]
       85 GETIMPORT                        R6 K14 [bit32.bor]
       87 CALL                             R6 2 1
       88 SETUPVAL                         R6 6
       89 GETTABLEKS                       R6 R0 K15 ["hydrate"]
       91 JUMPIFNOT                        R6 ; [+9]
       92 LOADB                            R6 0
       93 SETTABLEKS                       R6 R0 K15 ["hydrate"]
       95 GETUPVAL                         R6 15
       96 GETTABLEKS                       R6 R6 K16 ["clearContainer"]
       98 GETTABLEKS                       R7 R0 K17 ["containerInfo"]
      100 CALL                             R6 1 0
      101 GETUPVAL                         R6 16
      102 MOVE                             R7 R0
      103 CALL                             R6 1 1
      104 MOVE                             R4 R6
      105 GETUPVAL                         R6 3
      106 GETTABLEKS                       R6 R6 K0 ["NoLanes"]
      108 JUMPIFEQ                         R4 R6 ; [+8]
      110 GETUPVAL                         R6 11
      111 GETTABLEKS                       R6 R6 K18 ["renderRootSync"]
      113 MOVE                             R7 R0
      114 MOVE                             R8 R4
      115 CALL                             R6 2 1
      116 MOVE                             R5 R6
      117 JUMPIFNOTEQKN                    R5 K19 [1] ; [+25]
      119 GETUPVAL                         R6 17
      120 GETUPVAL                         R7 11
      121 GETTABLEKS                       R7 R7 K10 ["prepareFreshStack"]
      123 MOVE                             R8 R0
      124 GETUPVAL                         R9 3
      125 GETTABLEKS                       R9 R9 K0 ["NoLanes"]
      127 CALL                             R7 2 0
      128 GETUPVAL                         R7 11
      129 GETTABLEKS                       R7 R7 K20 ["markRootSuspended"]
      131 MOVE                             R8 R0
      132 MOVE                             R9 R4
      133 CALL                             R7 2 0
      134 GETUPVAL                         R7 18
      135 MOVE                             R8 R0
      136 GETUPVAL                         R9 19
      137 CALL                             R9 0 -1
      138 CALL                             R7 -1 0
      139 GETIMPORT                        R7 K22 [error]
      141 MOVE                             R8 R6
      142 CALL                             R7 1 0
      143 GETTABLEKS                       R6 R0 K23 ["current"]
      145 GETTABLEKS                       R6 R6 K24 ["alternate"]
      147 SETTABLEKS                       R6 R0 K25 ["finishedWork"]
      149 SETTABLEKS                       R4 R0 K26 ["finishedLanes"]
      151 GETUPVAL                         R7 11
      152 GETTABLEKS                       R7 R7 K27 ["finishConcurrentRender"]
      154 MOVE                             R8 R0
      155 MOVE                             R9 R5
      156 MOVE                             R10 R4
      157 CALL                             R7 3 0
      158 GETUPVAL                         R6 18
      159 MOVE                             R7 R0
      160 GETUPVAL                         R8 19
      161 CALL                             R8 0 -1
      162 CALL                             R6 -1 0
      163 GETTABLEKS                       R6 R0 K7 ["callbackNode"]
      165 JUMPIFNOTEQ                      R6 R1 ; [+5]
      167 NEWCLOSURE                       R6 P0
      168 CAPTURE                          UPVAL U11
      169 CAPTURE                          VAL R0
      170 RETURN                           R6 1
      171 LOADNIL                          R6
      172 RETURN                           R6 1

PROTO_23:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R1 0
        6 LOADN                            R2 0
        7 JUMPIFLT                         R2 R1 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["commitRoot"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["commitRoot"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_26:
        0 JUMPIFEQKN                       R1 K0 [0] ; [+3]
        2 JUMPIFNOTEQKN                    R1 K1 [1] ; [+6]
        4 GETUPVAL                         R3 0
        5 LOADB                            R4 0
        6 LOADK                            R5 K2 ["Root did not complete. This is a bug in React."]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0
        9 JUMPIFNOTEQKN                    R1 K3 [2] ; [+7]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["commitRoot"]
       14 MOVE                             R4 R0
       15 CALL                             R3 1 0
       16 RETURN                           R0 0
       17 JUMPIFNOTEQKN                    R1 K5 [3] ; [+69]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K6 ["markRootSuspended"]
       22 MOVE                             R4 R0
       23 MOVE                             R5 R2
       24 CALL                             R3 2 0
       25 GETUPVAL                         R3 2
       26 MOVE                             R4 R2
       27 CALL                             R3 1 1
       28 JUMPIFNOT                        R3 ; [+52]
       29 GETGLOBAL                        R3 K7 ["shouldForceFlushFallbacksInDEV"]
       31 CALL                             R3 0 1
       32 JUMPIF                           R3 ; [+48]
       33 GETUPVAL                         R5 3
       34 ADDK                             R4 R5 K8 [500]
       35 GETUPVAL                         R5 4
       36 CALL                             R5 0 1
       37 SUB                              R3 R4 R5
       38 LOADN                            R4 10
       39 JUMPIFNOTLT                      R4 R3 ; [+41]
       41 GETUPVAL                         R4 5
       42 MOVE                             R5 R0
       43 GETUPVAL                         R6 6
       44 GETTABLEKS                       R6 R6 K9 ["NoLanes"]
       46 CALL                             R4 2 1
       47 GETUPVAL                         R5 6
       48 GETTABLEKS                       R5 R5 K9 ["NoLanes"]
       50 JUMPIFEQ                         R4 R5 ; [+2]
       52 RETURN                           R0 0
       53 GETTABLEKS                       R5 R0 K10 ["suspendedLanes"]
       55 GETUPVAL                         R6 7
       56 MOVE                             R7 R5
       57 MOVE                             R8 R2
       58 CALL                             R6 2 1
       59 JUMPIF                           R6 ; [+10]
       60 GETUPVAL                         R6 8
       61 GETTABLEKS                       R6 R6 K11 ["requestEventTime"]
       63 CALL                             R6 0 1
       64 GETUPVAL                         R7 9
       65 MOVE                             R8 R0
       66 MOVE                             R9 R5
       67 MOVE                             R10 R6
       68 CALL                             R7 3 0
       69 RETURN                           R0 0
       70 GETUPVAL                         R6 10
       71 GETTABLEKS                       R6 R6 K12 ["scheduleTimeout"]
       73 NEWCLOSURE                       R7 P0
       74 CAPTURE                          UPVAL U1
       75 CAPTURE                          VAL R0
       76 MOVE                             R8 R3
       77 CALL                             R6 2 1
       78 SETTABLEKS                       R6 R0 K13 ["timeoutHandle"]
       80 RETURN                           R0 0
       81 GETUPVAL                         R3 1
       82 GETTABLEKS                       R3 R3 K4 ["commitRoot"]
       84 MOVE                             R4 R0
       85 CALL                             R3 1 0
       86 RETURN                           R0 0
       87 JUMPIFNOTEQKN                    R1 K14 [4] ; [+48]
       89 GETUPVAL                         R3 1
       90 GETTABLEKS                       R3 R3 K6 ["markRootSuspended"]
       92 MOVE                             R4 R0
       93 MOVE                             R5 R2
       94 CALL                             R3 2 0
       95 GETUPVAL                         R3 11
       96 MOVE                             R4 R2
       97 CALL                             R3 1 1
       98 JUMPIFNOT                        R3 ; [+1]
       99 RETURN                           R0 0
      100 GETGLOBAL                        R3 K7 ["shouldForceFlushFallbacksInDEV"]
      102 CALL                             R3 0 1
      103 JUMPIF                           R3 ; [+26]
      104 GETUPVAL                         R3 12
      105 MOVE                             R4 R0
      106 MOVE                             R5 R2
      107 CALL                             R3 2 1
      108 GETUPVAL                         R5 4
      109 CALL                             R5 0 1
      110 SUB                              R4 R5 R3
      111 GETGLOBAL                        R6 K15 ["jnd"]
      113 MOVE                             R7 R4
      114 CALL                             R6 1 1
      115 SUB                              R5 R6 R4
      116 LOADN                            R6 10
      117 JUMPIFNOTLT                      R6 R5 ; [+12]
      119 GETUPVAL                         R6 10
      120 GETTABLEKS                       R6 R6 K12 ["scheduleTimeout"]
      122 NEWCLOSURE                       R7 P1
      123 CAPTURE                          UPVAL U1
      124 CAPTURE                          VAL R0
      125 MOVE                             R8 R5
      126 CALL                             R6 2 1
      127 SETTABLEKS                       R6 R0 K13 ["timeoutHandle"]
      129 RETURN                           R0 0
      130 GETUPVAL                         R3 1
      131 GETTABLEKS                       R3 R3 K4 ["commitRoot"]
      133 MOVE                             R4 R0
      134 CALL                             R3 1 0
      135 RETURN                           R0 0
      136 JUMPIFNOTEQKN                    R1 K16 [5] ; [+7]
      138 GETUPVAL                         R3 1
      139 GETTABLEKS                       R3 R3 K4 ["commitRoot"]
      141 MOVE                             R4 R0
      142 CALL                             R3 1 0
      143 RETURN                           R0 0
      144 GETUPVAL                         R3 0
      145 LOADB                            R4 0
      146 LOADK                            R5 K17 ["Unknown root exit status."]
      147 CALL                             R3 2 0
      148 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 GETUPVAL                         R4 2
        8 CALL                             R2 2 1
        9 MOVE                             R1 R2
       10 GETUPVAL                         R2 3
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 FASTCALL2K                       BIT32_BAND R4 K0 ; [+4]
        4 LOADK                            R5 K0 [48]
        5 GETIMPORT                        R3 K3 [bit32.band]
        7 CALL                             R3 2 1
        8 JUMPIFEQKN                       R3 K4 [0] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 LOADK                            R3 K5 ["Should not already be working."]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K6 ["flushPassiveEffects"]
       17 CALL                             R1 0 0
       18 LOADNIL                          R1
       19 LOADNIL                          R2
       20 GETUPVAL                         R3 3
       21 JUMPIFNOTEQ                      R0 R3 ; [+33]
       23 GETUPVAL                         R3 4
       24 GETTABLEKS                       R4 R0 K7 ["expiredLanes"]
       26 GETUPVAL                         R5 5
       27 CALL                             R3 2 1
       28 JUMPIFNOT                        R3 ; [+26]
       29 GETUPVAL                         R1 5
       30 GETUPVAL                         R3 6
       31 GETTABLEKS                       R3 R3 K8 ["renderRootSync"]
       33 MOVE                             R4 R0
       34 MOVE                             R5 R1
       35 CALL                             R3 2 1
       36 MOVE                             R2 R3
       37 GETUPVAL                         R3 4
       38 GETUPVAL                         R4 7
       39 GETUPVAL                         R5 8
       40 CALL                             R3 2 1
       41 JUMPIFNOT                        R3 ; [+27]
       42 GETUPVAL                         R3 9
       43 MOVE                             R4 R0
       44 MOVE                             R5 R1
       45 CALL                             R3 2 1
       46 MOVE                             R1 R3
       47 GETUPVAL                         R3 6
       48 GETTABLEKS                       R3 R3 K8 ["renderRootSync"]
       50 MOVE                             R4 R0
       51 MOVE                             R5 R1
       52 CALL                             R3 2 1
       53 MOVE                             R2 R3
       54 JUMP                             ; [+14]
       55 GETUPVAL                         R3 9
       56 MOVE                             R4 R0
       57 GETUPVAL                         R5 10
       58 GETTABLEKS                       R5 R5 K9 ["NoLanes"]
       60 CALL                             R3 2 1
       61 MOVE                             R1 R3
       62 GETUPVAL                         R3 6
       63 GETTABLEKS                       R3 R3 K8 ["renderRootSync"]
       65 MOVE                             R4 R0
       66 MOVE                             R5 R1
       67 CALL                             R3 2 1
       68 MOVE                             R2 R3
       69 GETTABLEKS                       R3 R0 K10 ["tag"]
       71 GETUPVAL                         R4 11
       72 JUMPIFEQ                         R3 R4 ; [+39]
       74 JUMPIFNOTEQKN                    R2 K11 [2] ; [+37]
       76 GETUPVAL                         R4 1
       77 FASTCALL2K                       BIT32_BOR R4 K12 ; [+4]
       79 LOADK                            R5 K12 [64]
       80 GETIMPORT                        R3 K14 [bit32.bor]
       82 CALL                             R3 2 1
       83 SETUPVAL                         R3 1
       84 GETTABLEKS                       R3 R0 K15 ["hydrate"]
       86 JUMPIFNOT                        R3 ; [+9]
       87 LOADB                            R3 0
       88 SETTABLEKS                       R3 R0 K15 ["hydrate"]
       90 GETUPVAL                         R3 12
       91 GETTABLEKS                       R3 R3 K16 ["clearContainer"]
       93 GETTABLEKS                       R4 R0 K17 ["containerInfo"]
       95 CALL                             R3 1 0
       96 GETUPVAL                         R3 13
       97 MOVE                             R4 R0
       98 CALL                             R3 1 1
       99 MOVE                             R1 R3
      100 GETUPVAL                         R3 10
      101 GETTABLEKS                       R3 R3 K9 ["NoLanes"]
      103 JUMPIFEQ                         R1 R3 ; [+8]
      105 GETUPVAL                         R3 6
      106 GETTABLEKS                       R3 R3 K8 ["renderRootSync"]
      108 MOVE                             R4 R0
      109 MOVE                             R5 R1
      110 CALL                             R3 2 1
      111 MOVE                             R2 R3
      112 JUMPIFNOTEQKN                    R2 K18 [1] ; [+25]
      114 GETUPVAL                         R3 14
      115 GETUPVAL                         R4 6
      116 GETTABLEKS                       R4 R4 K19 ["prepareFreshStack"]
      118 MOVE                             R5 R0
      119 GETUPVAL                         R6 10
      120 GETTABLEKS                       R6 R6 K9 ["NoLanes"]
      122 CALL                             R4 2 0
      123 GETUPVAL                         R4 6
      124 GETTABLEKS                       R4 R4 K20 ["markRootSuspended"]
      126 MOVE                             R5 R0
      127 MOVE                             R6 R1
      128 CALL                             R4 2 0
      129 GETUPVAL                         R4 15
      130 MOVE                             R5 R0
      131 GETUPVAL                         R6 16
      132 CALL                             R6 0 -1
      133 CALL                             R4 -1 0
      134 GETIMPORT                        R4 K22 [error]
      136 MOVE                             R5 R3
      137 CALL                             R4 1 0
      138 GETTABLEKS                       R3 R0 K23 ["current"]
      140 GETTABLEKS                       R3 R3 K24 ["alternate"]
      142 SETTABLEKS                       R3 R0 K25 ["finishedWork"]
      144 SETTABLEKS                       R1 R0 K26 ["finishedLanes"]
      146 GETUPVAL                         R4 6
      147 GETTABLEKS                       R4 R4 K27 ["commitRoot"]
      149 MOVE                             R5 R0
      150 CALL                             R4 1 0
      151 GETUPVAL                         R4 15
      152 MOVE                             R5 R0
      153 GETUPVAL                         R6 16
      154 CALL                             R6 0 -1
      155 CALL                             R4 -1 0
      156 LOADNIL                          R4
      157 RETURN                           R4 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 2
        7 CALL                             R4 0 -1
        8 CALL                             R2 -1 0
        9 GETUPVAL                         R3 3
       10 FASTCALL2K                       BIT32_BAND R3 K0 ; [+4]
       12 LOADK                            R4 K0 [48]
       13 GETIMPORT                        R2 K3 [bit32.band]
       15 CALL                             R2 2 1
       16 JUMPIFNOTEQKN                    R2 K4 [0] ; [+7]
       18 GETUPVAL                         R3 2
       19 CALL                             R3 0 1
       20 ADDK                             R2 R3 K5 [500]
       21 SETUPVAL                         R2 4
       22 GETUPVAL                         R2 5
       23 CALL                             R2 0 0
       24 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       BIT32_BAND R1 K0 ; [+4]
        3 LOADK                            R2 K0 [49]
        4 GETIMPORT                        R0 K3 [bit32.band]
        6 CALL                             R0 2 1
        7 JUMPIFEQKN                       R0 K4 [0] ; [+21]
        9 GETIMPORT                        R0 K6 [_G]
       11 GETTABLEKS                       R0 R0 K7 ["__DEV__"]
       13 JUMPIFNOT                        R0 ; [+14]
       14 GETUPVAL                         R1 0
       15 FASTCALL2K                       BIT32_BAND R1 K8 ; [+4]
       17 LOADK                            R2 K8 [16]
       18 GETIMPORT                        R0 K3 [bit32.band]
       20 CALL                             R0 2 1
       21 JUMPIFEQKN                       R0 K4 [0] ; [+6]
       23 GETUPVAL                         R0 1
       24 GETTABLEKS                       R0 R0 K9 ["error"]
       26 LOADK                            R1 K10 ["unstable_flushDiscreteUpdates: Cannot flush updates when React is already rendering."]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R0 2
       30 GETTABLEKS                       R0 R0 K11 ["flushPendingDiscreteUpdates"]
       32 CALL                             R0 0 0
       33 GETUPVAL                         R0 3
       34 GETTABLEKS                       R0 R0 K12 ["flushPassiveEffects"]
       36 CALL                             R0 0 0
       37 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["decoupleUpdatePriorityFromScheduler"]
        3 JUMPIFNOT                        R1 ; [+44]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 GETIMPORT                        R4 K2 [_G]
       10 GETTABLEKS                       R4 R4 K3 ["__YOLO__"]
       12 JUMPIF                           R4 ; [+14]
       13 GETUPVAL                         R4 2
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K4 ["DefaultLanePriority"]
       17 CALL                             R4 1 0
       18 GETIMPORT                        R4 K6 [pcall]
       20 GETUPVAL                         R5 4
       21 GETUPVAL                         R6 5
       22 MOVE                             R7 R0
       23 CALL                             R4 3 2
       24 MOVE                             R2 R4
       25 MOVE                             R3 R5
       26 JUMP                             ; [+11]
       27 LOADB                            R2 1
       28 GETUPVAL                         R4 2
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K4 ["DefaultLanePriority"]
       32 CALL                             R4 1 0
       33 GETUPVAL                         R4 4
       34 GETUPVAL                         R5 5
       35 MOVE                             R6 R0
       36 CALL                             R4 2 1
       37 MOVE                             R3 R4
       38 GETUPVAL                         R4 2
       39 MOVE                             R5 R1
       40 CALL                             R4 1 0
       41 JUMPIFNOT                        R2 ; [+1]
       42 RETURN                           R3 1
       43 GETIMPORT                        R4 K8 [error]
       45 MOVE                             R5 R3
       46 CALL                             R4 1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R1 4
       49 GETUPVAL                         R2 5
       50 MOVE                             R3 R0
       51 CALL                             R1 2 -1
       52 RETURN                           R1 -1
       53 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+19]
        3 GETUPVAL                         R0 0
        4 LOADNIL                          R1
        5 SETUPVAL                         R1 0
        6 GETIMPORT                        R1 K1 [pairs]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 3
       10 FORGPREP_NEXT                    R1
       11 GETUPVAL                         R6 1
       12 MOVE                             R7 R4
       13 CALL                             R6 1 0
       14 GETUPVAL                         R6 2
       15 MOVE                             R7 R4
       16 GETUPVAL                         R8 3
       17 CALL                             R8 0 -1
       18 CALL                             R6 -1 0
       19 FORGLOOP                         R1 2 ; [-9]
       21 GETUPVAL                         R0 4
       22 CALL                             R0 0 0
       23 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 0
        2 FASTCALL2K                       BIT32_BOR R4 K0 ; [+4]
        4 LOADK                            R5 K0 [1]
        5 GETIMPORT                        R3 K3 [bit32.bor]
        7 CALL                             R3 2 1
        8 SETUPVAL                         R3 0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 GETIMPORT                        R5 K5 [_G]
       13 GETTABLEKS                       R5 R5 K6 ["__YOLO__"]
       15 JUMPIF                           R5 ; [+8]
       16 GETIMPORT                        R5 K8 [pcall]
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 CALL                             R5 2 2
       21 MOVE                             R3 R5
       22 MOVE                             R4 R6
       23 JUMP                             ; [+5]
       24 LOADB                            R3 1
       25 MOVE                             R5 R0
       26 MOVE                             R6 R1
       27 CALL                             R5 1 1
       28 MOVE                             R4 R5
       29 SETUPVAL                         R2 0
       30 GETUPVAL                         R5 0
       31 JUMPIFNOTEQKN                    R5 K9 [0] ; [+7]
       33 GETUPVAL                         R6 2
       34 CALL                             R6 0 1
       35 ADDK                             R5 R6 K10 [500]
       36 SETUPVAL                         R5 1
       37 GETUPVAL                         R5 3
       38 CALL                             R5 0 0
       39 JUMPIFNOT                        R3 ; [+1]
       40 RETURN                           R4 1
       41 GETIMPORT                        R5 K12 [error]
       43 MOVE                             R6 R4
       44 CALL                             R5 1 0
       45 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 0
        2 FASTCALL2K                       BIT32_BOR R4 K0 ; [+4]
        4 LOADK                            R5 K0 [2]
        5 GETIMPORT                        R3 K3 [bit32.bor]
        7 CALL                             R3 2 1
        8 SETUPVAL                         R3 0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 GETIMPORT                        R5 K5 [_G]
       13 GETTABLEKS                       R5 R5 K6 ["__YOLO__"]
       15 JUMPIF                           R5 ; [+8]
       16 GETIMPORT                        R5 K8 [pcall]
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 CALL                             R5 2 2
       21 MOVE                             R3 R5
       22 MOVE                             R4 R6
       23 JUMP                             ; [+5]
       24 LOADB                            R3 1
       25 MOVE                             R5 R0
       26 MOVE                             R6 R1
       27 CALL                             R5 1 1
       28 MOVE                             R4 R5
       29 SETUPVAL                         R2 0
       30 GETUPVAL                         R5 0
       31 JUMPIFNOTEQKN                    R5 K9 [0] ; [+7]
       33 GETUPVAL                         R6 2
       34 CALL                             R6 0 1
       35 ADDK                             R5 R6 K10 [500]
       36 SETUPVAL                         R5 1
       37 GETUPVAL                         R5 3
       38 CALL                             R5 0 0
       39 JUMPIFNOT                        R3 ; [+1]
       40 RETURN                           R4 1
       41 GETIMPORT                        R5 K12 [error]
       43 MOVE                             R6 R4
       44 CALL                             R5 1 0
       45 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 CALL                             R0 4 -1
        6 RETURN                           R0 -1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 CALL                             R0 4 -1
        6 RETURN                           R0 -1

PROTO_38:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R7 0
        2 FASTCALL2K                       BIT32_BOR R7 K0 ; [+4]
        4 LOADK                            R8 K0 [4]
        5 GETIMPORT                        R6 K3 [bit32.bor]
        7 CALL                             R6 2 1
        8 SETUPVAL                         R6 0
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K4 ["decoupleUpdatePriorityFromScheduler"]
       12 JUMPIFNOT                        R6 ; [+38]
       13 GETUPVAL                         R6 2
       14 CALL                             R6 0 1
       15 GETUPVAL                         R7 3
       16 GETUPVAL                         R8 4
       17 GETTABLEKS                       R8 R8 K5 ["InputDiscreteLanePriority"]
       19 CALL                             R7 1 0
       20 GETIMPORT                        R7 K7 [pcall]
       22 GETUPVAL                         R8 5
       23 GETUPVAL                         R9 6
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R4
       30 CALL                             R7 3 2
       31 GETUPVAL                         R9 3
       32 MOVE                             R10 R6
       33 CALL                             R9 1 0
       34 SETUPVAL                         R5 0
       35 GETUPVAL                         R9 0
       36 JUMPIFNOTEQKN                    R9 K8 [0] ; [+7]
       38 GETUPVAL                         R10 8
       39 CALL                             R10 0 1
       40 ADDK                             R9 R10 K9 [500]
       41 SETUPVAL                         R9 7
       42 GETUPVAL                         R9 9
       43 CALL                             R9 0 0
       44 JUMPIFNOT                        R7 ; [+1]
       45 RETURN                           R8 1
       46 GETIMPORT                        R9 K11 [error]
       48 MOVE                             R10 R8
       49 CALL                             R9 1 0
       50 RETURN                           R0 0
       51 GETIMPORT                        R6 K7 [pcall]
       53 GETUPVAL                         R7 5
       54 GETUPVAL                         R8 6
       55 NEWCLOSURE                       R9 P1
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 CALL                             R6 3 2
       62 SETUPVAL                         R5 0
       63 GETUPVAL                         R8 0
       64 JUMPIFNOTEQKN                    R8 K8 [0] ; [+7]
       66 GETUPVAL                         R9 8
       67 CALL                             R9 0 1
       68 ADDK                             R8 R9 K9 [500]
       69 SETUPVAL                         R8 7
       70 GETUPVAL                         R8 9
       71 CALL                             R8 0 0
       72 JUMPIFNOT                        R6 ; [+1]
       73 RETURN                           R7 1
       74 GETIMPORT                        R8 K11 [error]
       76 MOVE                             R9 R7
       77 CALL                             R8 1 0
       78 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 0
        2 FASTCALL2K                       BIT32_BAND R4 K0 ; [+4]
        4 LOADK                            R5 K0 [4294967294]
        5 GETIMPORT                        R3 K3 [bit32.band]
        7 CALL                             R3 2 1
        8 SETUPVAL                         R3 0
        9 GETUPVAL                         R4 0
       10 FASTCALL2K                       BIT32_BOR R4 K4 ; [+4]
       12 LOADK                            R5 K4 [8]
       13 GETIMPORT                        R3 K6 [bit32.bor]
       15 CALL                             R3 2 1
       16 SETUPVAL                         R3 0
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 GETIMPORT                        R5 K8 [_G]
       21 GETTABLEKS                       R5 R5 K9 ["__YOLO__"]
       23 JUMPIF                           R5 ; [+8]
       24 GETIMPORT                        R5 K11 [pcall]
       26 MOVE                             R6 R0
       27 MOVE                             R7 R1
       28 CALL                             R5 2 2
       29 MOVE                             R3 R5
       30 MOVE                             R4 R6
       31 JUMP                             ; [+5]
       32 LOADB                            R3 1
       33 MOVE                             R5 R0
       34 MOVE                             R6 R1
       35 CALL                             R5 1 1
       36 MOVE                             R4 R5
       37 SETUPVAL                         R2 0
       38 GETUPVAL                         R5 0
       39 JUMPIFNOTEQKN                    R5 K12 [0] ; [+7]
       41 GETUPVAL                         R6 2
       42 CALL                             R6 0 1
       43 ADDK                             R5 R6 K13 [500]
       44 SETUPVAL                         R5 1
       45 GETUPVAL                         R5 3
       46 CALL                             R5 0 0
       47 JUMPIFNOT                        R3 ; [+1]
       48 RETURN                           R4 1
       49 GETIMPORT                        R5 K15 [error]
       51 MOVE                             R6 R4
       52 CALL                             R5 1 0
       53 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       BIT32_BAND R2 K0 ; [+5]
        3 MOVE                             R4 R2
        4 LOADK                            R5 K0 [48]
        5 GETIMPORT                        R3 K3 [bit32.band]
        7 CALL                             R3 2 1
        8 JUMPIFEQKN                       R3 K4 [0] ; [+15]
       10 GETIMPORT                        R3 K6 [_G]
       12 GETTABLEKS                       R3 R3 K7 ["__DEV__"]
       14 JUMPIFNOT                        R3 ; [+5]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K8 ["error"]
       18 LOADK                            R4 K9 ["flushSync was called from inside a lifecycle method. React cannot flush when React is already rendering. Consider moving this call to a scheduler task or micro task."]
       19 CALL                             R3 1 0
       20 MOVE                             R3 R0
       21 MOVE                             R4 R1
       22 CALL                             R3 1 -1
       23 RETURN                           R3 -1
       24 GETUPVAL                         R4 0
       25 FASTCALL2K                       BIT32_BOR R4 K10 ; [+4]
       27 LOADK                            R5 K10 [1]
       28 GETIMPORT                        R3 K12 [bit32.bor]
       30 CALL                             R3 2 1
       31 SETUPVAL                         R3 0
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K13 ["decoupleUpdatePriorityFromScheduler"]
       35 JUMPIFNOT                        R3 ; [+59]
       36 GETUPVAL                         R3 3
       37 CALL                             R3 0 1
       38 GETUPVAL                         R4 4
       39 GETUPVAL                         R5 5
       40 GETTABLEKS                       R5 R5 K14 ["SyncLanePriority"]
       42 CALL                             R4 1 0
       43 LOADNIL                          R4
       44 LOADNIL                          R5
       45 GETIMPORT                        R6 K6 [_G]
       47 GETTABLEKS                       R6 R6 K15 ["__YOLO__"]
       49 JUMPIF                           R6 ; [+15]
       50 JUMPIFNOT                        R0 ; [+11]
       51 GETIMPORT                        R6 K17 [pcall]
       53 GETUPVAL                         R7 6
       54 GETUPVAL                         R8 7
       55 NEWCLOSURE                       R9 P0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R1
       58 CALL                             R6 3 2
       59 MOVE                             R4 R6
       60 MOVE                             R5 R7
       61 JUMP                             ; [+19]
       62 LOADB                            R4 1
       63 LOADNIL                          R5
       64 JUMP                             ; [+16]
       65 LOADB                            R4 1
       66 GETUPVAL                         R6 4
       67 GETUPVAL                         R7 5
       68 GETTABLEKS                       R7 R7 K14 ["SyncLanePriority"]
       70 CALL                             R6 1 0
       71 JUMPIFNOT                        R0 ; [+8]
       72 GETUPVAL                         R6 6
       73 GETUPVAL                         R7 7
       74 NEWCLOSURE                       R8 P1
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R1
       77 CALL                             R6 2 1
       78 MOVE                             R5 R6
       79 JUMP                             ; [+1]
       80 LOADNIL                          R5
       81 GETUPVAL                         R6 4
       82 MOVE                             R7 R3
       83 CALL                             R6 1 0
       84 SETUPVAL                         R2 0
       85 GETUPVAL                         R6 8
       86 CALL                             R6 0 0
       87 JUMPIF                           R4 ; [+6]
       88 GETIMPORT                        R6 K18 [error]
       90 MOVE                             R7 R5
       91 CALL                             R6 1 0
       92 LOADNIL                          R6
       93 RETURN                           R6 1
       94 RETURN                           R5 1
       95 LOADNIL                          R3
       96 LOADNIL                          R4
       97 GETIMPORT                        R5 K6 [_G]
       99 GETTABLEKS                       R5 R5 K15 ["__YOLO__"]
      101 JUMPIF                           R5 ; [+15]
      102 JUMPIFNOT                        R0 ; [+11]
      103 GETIMPORT                        R5 K17 [pcall]
      105 GETUPVAL                         R6 6
      106 GETUPVAL                         R7 7
      107 NEWCLOSURE                       R8 P2
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R1
      110 CALL                             R5 3 2
      111 MOVE                             R3 R5
      112 MOVE                             R4 R6
      113 JUMP                             ; [+14]
      114 LOADB                            R3 1
      115 LOADNIL                          R4
      116 JUMP                             ; [+11]
      117 LOADB                            R3 1
      118 JUMPIFNOT                        R0 ; [+8]
      119 GETUPVAL                         R5 6
      120 GETUPVAL                         R6 7
      121 NEWCLOSURE                       R7 P3
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R1
      124 CALL                             R5 2 1
      125 MOVE                             R4 R5
      126 JUMP                             ; [+1]
      127 LOADNIL                          R4
      128 SETUPVAL                         R2 0
      129 GETUPVAL                         R5 8
      130 CALL                             R5 0 0
      131 JUMPIF                           R3 ; [+4]
      132 GETIMPORT                        R5 K18 [error]
      134 MOVE                             R6 R4
      135 CALL                             R5 1 0
      136 RETURN                           R4 1

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 0
        2 FASTCALL2K                       BIT32_BOR R3 K0 ; [+4]
        4 LOADK                            R4 K0 [1]
        5 GETIMPORT                        R2 K3 [bit32.bor]
        7 CALL                             R2 2 1
        8 SETUPVAL                         R2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K4 ["decoupleUpdatePriorityFromScheduler"]
       12 JUMPIFNOT                        R2 ; [+32]
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 3
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K5 ["SyncLanePriority"]
       19 CALL                             R3 1 0
       20 GETIMPORT                        R3 K7 [pcall]
       22 GETUPVAL                         R4 5
       23 GETUPVAL                         R5 6
       24 MOVE                             R6 R0
       25 CALL                             R3 3 2
       26 GETUPVAL                         R5 3
       27 MOVE                             R6 R2
       28 CALL                             R5 1 0
       29 SETUPVAL                         R1 0
       30 GETUPVAL                         R5 0
       31 JUMPIFNOTEQKN                    R5 K8 [0] ; [+7]
       33 GETUPVAL                         R6 8
       34 CALL                             R6 0 1
       35 ADDK                             R5 R6 K9 [500]
       36 SETUPVAL                         R5 7
       37 GETUPVAL                         R5 9
       38 CALL                             R5 0 0
       39 JUMPIF                           R3 ; [+26]
       40 GETIMPORT                        R5 K11 [error]
       42 MOVE                             R6 R4
       43 CALL                             R5 1 0
       44 RETURN                           R0 0
       45 GETIMPORT                        R2 K7 [pcall]
       47 GETUPVAL                         R3 5
       48 GETUPVAL                         R4 6
       49 MOVE                             R5 R0
       50 CALL                             R2 3 2
       51 SETUPVAL                         R1 0
       52 GETUPVAL                         R4 0
       53 JUMPIFNOTEQKN                    R4 K8 [0] ; [+7]
       55 GETUPVAL                         R5 8
       56 CALL                             R5 0 1
       57 ADDK                             R4 R5 K9 [500]
       58 SETUPVAL                         R4 7
       59 GETUPVAL                         R4 9
       60 CALL                             R4 0 0
       61 JUMPIF                           R2 ; [+4]
       62 GETIMPORT                        R4 K11 [error]
       64 MOVE                             R5 R3
       65 CALL                             R4 1 0
       66 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["subtreeRenderLanes"]
        5 MOVE                             R5 R0
        6 CALL                             R2 3 0
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K0 ["subtreeRenderLanes"]
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K0 ["subtreeRenderLanes"]
       16 GETUPVAL                         R2 3
       17 GETUPVAL                         R3 4
       18 MOVE                             R4 R1
       19 CALL                             R2 2 1
       20 SETUPVAL                         R2 4
       21 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 SETTABLEKS                       R2 R1 K1 ["subtreeRenderLanes"]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_48:
        0 LOADNIL                          R2
        1 SETTABLEKS                       R2 R0 K0 ["finishedWork"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["NoLanes"]
        6 SETTABLEKS                       R2 R0 K2 ["finishedLanes"]
        8 GETTABLEKS                       R2 R0 K3 ["timeoutHandle"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["noTimeout"]
       13 JUMPIFEQ                         R2 R3 ; [+11]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["noTimeout"]
       18 SETTABLEKS                       R3 R0 K3 ["timeoutHandle"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K5 ["cancelTimeout"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 GETUPVAL                         R3 2
       26 JUMPIFEQKNIL                     R3 ; [+12]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K6 ["return_"]
       31 JUMPIFEQKNIL                     R3 ; [+7]
       33 GETUPVAL                         R4 3
       34 MOVE                             R5 R3
       35 CALL                             R4 1 0
       36 GETTABLEKS                       R3 R3 K6 ["return_"]
       38 JUMPBACK                         ; [-8]
       39 SETUPVAL                         R0 4
       40 GETUPVAL                         R3 5
       41 GETTABLEKS                       R3 R3 K7 ["createWorkInProgress"]
       43 GETTABLEKS                       R4 R0 K8 ["current"]
       45 LOADNIL                          R5
       46 CALL                             R3 2 1
       47 SETUPVAL                         R3 2
       48 SETUPVAL                         R1 6
       49 GETUPVAL                         R3 7
       50 SETTABLEKS                       R1 R3 K9 ["subtreeRenderLanes"]
       52 SETUPVAL                         R1 8
       53 LOADN                            R3 0
       54 SETUPVAL                         R3 9
       55 LOADNIL                          R3
       56 SETUPVAL                         R3 10
       57 GETUPVAL                         R3 11
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K1 ["NoLanes"]
       61 CALL                             R3 1 0
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K1 ["NoLanes"]
       65 SETUPVAL                         R3 12
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R3 R3 K1 ["NoLanes"]
       69 SETUPVAL                         R3 13
       70 GETUPVAL                         R3 14
       71 GETTABLEKS                       R3 R3 K10 ["enableSchedulerTracing"]
       73 JUMPIFNOT                        R3 ; [+2]
       74 LOADNIL                          R3
       75 SETUPVAL                         R3 15
       76 GETIMPORT                        R3 K12 [_G]
       78 GETTABLEKS                       R3 R3 K13 ["__DEV__"]
       80 JUMPIFNOT                        R3 ; [+4]
       81 GETUPVAL                         R3 16
       82 GETTABLEKS                       R3 R3 K14 ["discardPendingWarnings"]
       84 CALL                             R3 0 0
       85 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["resetHooksAfterThrowRef"]
        5 JUMPIF                           R0 ; [+28]
        6 GETIMPORT                        R0 K2 [require]
        8 GETIMPORT                        R2 K5 [script]
       10 GETTABLEKS                       R2 R2 K6 ["Parent"]
       12 GETTABLEKS                       R1 R2 K3 ["ReactFiberHooks.new"]
       14 CALL                             R0 1 1
       15 SETUPVAL                         R0 2
       16 GETUPVAL                         R0 1
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K7 ["resetHooksAfterThrow"]
       20 SETTABLEKS                       R1 R0 K0 ["resetHooksAfterThrowRef"]
       22 GETUPVAL                         R0 1
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K8 ["ContextOnlyDispatcher"]
       26 SETTABLEKS                       R1 R0 K9 ["ContextOnlyDispatcherRef"]
       28 GETUPVAL                         R0 1
       29 GETUPVAL                         R1 2
       30 GETTABLEKS                       R1 R1 K10 ["getIsUpdatingOpaqueValueInRenderPhaseInDEV"]
       32 SETTABLEKS                       R1 R0 K11 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       34 GETUPVAL                         R0 1
       35 GETTABLEKS                       R0 R0 K0 ["resetHooksAfterThrowRef"]
       37 CALL                             R0 0 1
       38 GETUPVAL                         R0 3
       39 CALL                             R0 0 0
       40 GETUPVAL                         R0 4
       41 LOADNIL                          R1
       42 SETTABLEKS                       R1 R0 K12 ["current"]
       44 GETUPVAL                         R0 5
       45 JUMPIFEQKNIL                     R0 ; [+6]
       47 GETUPVAL                         R0 5
       48 GETTABLEKS                       R0 R0 K13 ["return_"]
       50 JUMPIFNOTEQKNIL                  R0 ; [+8]
       52 LOADN                            R0 1
       53 SETUPVAL                         R0 6
       54 GETUPVAL                         R0 8
       55 SETUPVAL                         R0 7
       56 LOADNIL                          R0
       57 SETUPVAL                         R0 9
       58 RETURN                           R0 0
       59 GETUPVAL                         R0 10
       60 GETTABLEKS                       R0 R0 K14 ["enableProfilerTimer"]
       62 JUMPIFNOT                        R0 ; [+19]
       63 GETUPVAL                         R1 5
       64 GETTABLEKS                       R1 R1 K15 ["mode"]
       66 GETUPVAL                         R2 11
       67 GETTABLEKS                       R2 R2 K16 ["ProfileMode"]
       69 FASTCALL2                        BIT32_BAND R1 R2 ; [+3]
       71 GETIMPORT                        R0 K19 [bit32.band]
       73 CALL                             R0 2 1
       74 JUMPIFEQKN                       R0 K20 [0] ; [+7]
       76 GETUPVAL                         R0 12
       77 GETTABLEKS                       R0 R0 K21 ["stopProfilerTimerIfRunningAndRecordDelta"]
       79 GETUPVAL                         R1 5
       80 LOADB                            R2 1
       81 CALL                             R0 2 0
       82 GETUPVAL                         R0 13
       83 GETUPVAL                         R1 14
       84 GETUPVAL                         R2 5
       85 GETTABLEKS                       R2 R2 K13 ["return_"]
       87 GETUPVAL                         R3 5
       88 GETUPVAL                         R4 8
       89 GETUPVAL                         R5 15
       90 GETUPVAL                         R6 16
       91 GETTABLEKS                       R6 R6 K22 ["onUncaughtError"]
       93 GETUPVAL                         R7 16
       94 GETTABLEKS                       R7 R7 K23 ["renderDidError"]
       96 CALL                             R0 7 0
       97 GETUPVAL                         R0 17
       98 GETTABLEKS                       R0 R0 K24 ["completeUnitOfWork"]
      100 GETUPVAL                         R1 5
      101 CALL                             R0 1 0
      102 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K1 [pcall]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          REF R2
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          REF R1
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 CAPTURE                          UPVAL U10
       17 CAPTURE                          UPVAL U11
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U12
       20 CAPTURE                          UPVAL U13
       21 CAPTURE                          UPVAL U14
       22 CALL                             R3 1 2
       23 JUMPIF                           R3 ; [+13]
       24 MOVE                             R1 R4
       25 GETUPVAL                         R5 0
       26 JUMPIFNOTEQ                      R5 R2 ; [+7]
       28 JUMPIFEQKNIL                     R2 ; [+5]
       30 GETTABLEKS                       R2 R2 K2 ["return_"]
       32 SETUPVAL                         R2 0
       33 JUMP                             ; [+1]
       34 GETUPVAL                         R2 0
       35 CLOSEUPVALS                      R2
       36 JUMP                             ; [+3]
       37 CLOSEUPVALS                      R1
       38 RETURN                           R0 0
       39 CLOSEUPVALS                      R2
       40 JUMPBACK                         ; [-41]
       41 CLOSEUPVALS                      R1
       42 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["ContextOnlyDispatcherRef"]
        7 JUMPIF                           R3 ; [+28]
        8 GETIMPORT                        R3 K3 [require]
       10 GETIMPORT                        R5 K6 [script]
       12 GETTABLEKS                       R5 R5 K7 ["Parent"]
       14 GETTABLEKS                       R4 R5 K4 ["ReactFiberHooks.new"]
       16 CALL                             R3 1 1
       17 SETUPVAL                         R3 2
       18 GETUPVAL                         R3 1
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K8 ["resetHooksAfterThrow"]
       22 SETTABLEKS                       R4 R3 K9 ["resetHooksAfterThrowRef"]
       24 GETUPVAL                         R3 1
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K10 ["ContextOnlyDispatcher"]
       28 SETTABLEKS                       R4 R3 K1 ["ContextOnlyDispatcherRef"]
       30 GETUPVAL                         R3 1
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K11 ["getIsUpdatingOpaqueValueInRenderPhaseInDEV"]
       34 SETTABLEKS                       R4 R3 K12 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K1 ["ContextOnlyDispatcherRef"]
       39 SETTABLEKS                       R2 R1 K0 ["current"]
       41 JUMPIFNOTEQKNIL                  R0 ; [+37]
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R2 R2 K1 ["ContextOnlyDispatcherRef"]
       46 JUMPIF                           R2 ; [+28]
       47 GETIMPORT                        R2 K3 [require]
       49 GETIMPORT                        R4 K6 [script]
       51 GETTABLEKS                       R4 R4 K7 ["Parent"]
       53 GETTABLEKS                       R3 R4 K4 ["ReactFiberHooks.new"]
       55 CALL                             R2 1 1
       56 SETUPVAL                         R2 2
       57 GETUPVAL                         R2 1
       58 GETUPVAL                         R3 2
       59 GETTABLEKS                       R3 R3 K8 ["resetHooksAfterThrow"]
       61 SETTABLEKS                       R3 R2 K9 ["resetHooksAfterThrowRef"]
       63 GETUPVAL                         R2 1
       64 GETUPVAL                         R3 2
       65 GETTABLEKS                       R3 R3 K10 ["ContextOnlyDispatcher"]
       67 SETTABLEKS                       R3 R2 K1 ["ContextOnlyDispatcherRef"]
       69 GETUPVAL                         R2 1
       70 GETUPVAL                         R3 2
       71 GETTABLEKS                       R3 R3 K11 ["getIsUpdatingOpaqueValueInRenderPhaseInDEV"]
       73 SETTABLEKS                       R3 R2 K12 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       75 GETUPVAL                         R1 1
       76 GETTABLEKS                       R1 R1 K1 ["ContextOnlyDispatcherRef"]
       78 RETURN                           R1 1
       79 RETURN                           R0 1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enableSchedulerTracing"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["current"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R0 K2 ["memoizedInteractions"]
       10 SETTABLEKS                       R3 R2 K1 ["current"]
       12 RETURN                           R1 1
       13 LOADNIL                          R1
       14 RETURN                           R1 1

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enableSchedulerTracing"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R0 R1 K1 ["current"]
        7 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["markSkippedUpdateLanes"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        3 LOADN                            R0 3
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKN                       R0 K0 [0] ; [+4]
        3 GETUPVAL                         R0 0
        4 JUMPIFNOTEQKN                    R0 K1 [3] ; [+3]
        6 LOADN                            R0 4
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFEQKNIL                     R0 ; [+16]
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R1 3
       13 CALL                             R1 0 -1
       14 CALL                             R0 -1 1
       15 JUMPIF                           R0 ; [+4]
       16 GETUPVAL                         R0 2
       17 GETUPVAL                         R1 4
       18 CALL                             R0 1 1
       19 JUMPIFNOT                        R0 ; [+6]
       20 GETUPVAL                         R0 5
       21 GETTABLEKS                       R0 R0 K2 ["markRootSuspended"]
       23 GETUPVAL                         R1 1
       24 GETUPVAL                         R2 6
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKN                       R0 K0 [5] ; [+3]
        3 LOADN                            R0 2
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKN                       R1 K0 [0] ; [+2]
        3 LOADB                            R0 0 +1
        4 LOADB                            R0 1
        5 RETURN                           R0 1

PROTO_61:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 0
        2 FASTCALL2K                       BIT32_BOR R4 K0 ; [+4]
        4 LOADK                            R5 K0 [16]
        5 GETIMPORT                        R3 K3 [bit32.bor]
        7 CALL                             R3 2 1
        8 SETUPVAL                         R3 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K4 ["pushDispatcher"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 2
       14 JUMPIFNOTEQ                      R4 R0 ; [+4]
       16 GETUPVAL                         R4 3
       17 JUMPIFEQ                         R4 R1 ; [+13]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K5 ["prepareFreshStack"]
       22 MOVE                             R5 R0
       23 MOVE                             R6 R1
       24 CALL                             R4 2 0
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K6 ["startWorkOnPendingInteractions"]
       28 MOVE                             R5 R0
       29 MOVE                             R6 R1
       30 CALL                             R4 2 0
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K7 ["pushInteractions"]
       34 MOVE                             R5 R0
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [_G]
       38 GETTABLEKS                       R5 R5 K10 ["__DEV__"]
       40 JUMPIFNOT                        R5 ; [+9]
       41 GETUPVAL                         R5 4
       42 GETTABLEKS                       R5 R5 K11 ["enableDebugTracing"]
       44 JUMPIFNOT                        R5 ; [+5]
       45 GETUPVAL                         R5 5
       46 GETTABLEKS                       R5 R5 K12 ["logRenderStarted"]
       48 MOVE                             R6 R1
       49 CALL                             R5 1 0
       50 GETUPVAL                         R5 4
       51 GETTABLEKS                       R5 R5 K13 ["enableSchedulingProfiler"]
       53 JUMPIFNOT                        R5 ; [+5]
       54 GETUPVAL                         R5 6
       55 GETTABLEKS                       R5 R5 K14 ["markRenderStarted"]
       57 MOVE                             R6 R1
       58 CALL                             R5 1 0
       59 LOADNIL                          R5
       60 LOADNIL                          R6
       61 GETIMPORT                        R7 K9 [_G]
       63 GETTABLEKS                       R7 R7 K15 ["__YOLO__"]
       65 JUMPIF                           R7 ; [+9]
       66 GETIMPORT                        R7 K17 [pcall]
       68 GETUPVAL                         R8 1
       69 GETTABLEKS                       R8 R8 K18 ["workLoopSync"]
       71 CALL                             R7 1 2
       72 MOVE                             R5 R7
       73 MOVE                             R6 R8
       74 JUMP                             ; [+5]
       75 LOADB                            R5 1
       76 GETUPVAL                         R7 1
       77 GETTABLEKS                       R7 R7 K18 ["workLoopSync"]
       79 CALL                             R7 0 0
       80 JUMPIF                           R5 ; [+9]
       81 GETUPVAL                         R7 1
       82 GETTABLEKS                       R7 R7 K19 ["handleError"]
       84 MOVE                             R8 R0
       85 MOVE                             R9 R6
       86 CALL                             R7 2 0
       87 JUMP                             ; [+1]
       88 JUMP                             ; [+1]
       89 JUMPBACK                         ; [-31]
       90 GETUPVAL                         R5 7
       91 CALL                             R5 0 0
       92 GETUPVAL                         R5 4
       93 GETTABLEKS                       R5 R5 K20 ["enableSchedulerTracing"]
       95 JUMPIFNOT                        R5 ; [+5]
       96 GETUPVAL                         R5 1
       97 GETTABLEKS                       R5 R5 K21 ["popInteractions"]
       99 MOVE                             R6 R4
      100 CALL                             R5 1 0
      101 SETUPVAL                         R2 0
      102 GETUPVAL                         R5 1
      103 GETTABLEKS                       R5 R5 K22 ["popDispatcher"]
      105 MOVE                             R6 R3
      106 CALL                             R5 1 0
      107 GETUPVAL                         R5 8
      108 JUMPIFEQKNIL                     R5 ; [+5]
      110 GETUPVAL                         R5 9
      111 LOADB                            R6 0
      112 LOADK                            R7 K23 ["Cannot commit an incomplete root. This error is likely caused by a bug in React. Please file an issue."]
      113 CALL                             R5 2 0
      114 GETIMPORT                        R5 K9 [_G]
      116 GETTABLEKS                       R5 R5 K10 ["__DEV__"]
      118 JUMPIFNOT                        R5 ; [+8]
      119 GETUPVAL                         R5 4
      120 GETTABLEKS                       R5 R5 K11 ["enableDebugTracing"]
      122 JUMPIFNOT                        R5 ; [+4]
      123 GETUPVAL                         R5 5
      124 GETTABLEKS                       R5 R5 K24 ["logRenderStopped"]
      126 CALL                             R5 0 0
      127 GETUPVAL                         R5 4
      128 GETTABLEKS                       R5 R5 K13 ["enableSchedulingProfiler"]
      130 JUMPIFNOT                        R5 ; [+4]
      131 GETUPVAL                         R5 6
      132 GETTABLEKS                       R5 R5 K25 ["markRenderStopped"]
      134 CALL                             R5 0 0
      135 LOADNIL                          R5
      136 SETUPVAL                         R5 2
      137 GETUPVAL                         R5 10
      138 GETTABLEKS                       R5 R5 K26 ["NoLanes"]
      140 SETUPVAL                         R5 3
      141 GETUPVAL                         R5 11
      142 RETURN                           R5 1

PROTO_62:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["performUnitOfWork"]
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 0
        8 JUMPBACK                         ; [-9]
        9 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 0
        2 FASTCALL2K                       BIT32_BOR R4 K0 ; [+4]
        4 LOADK                            R5 K0 [16]
        5 GETIMPORT                        R3 K3 [bit32.bor]
        7 CALL                             R3 2 1
        8 SETUPVAL                         R3 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K4 ["pushDispatcher"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 2
       14 JUMPIFNOTEQ                      R4 R0 ; [+4]
       16 GETUPVAL                         R4 3
       17 JUMPIFEQ                         R4 R1 ; [+17]
       19 GETUPVAL                         R5 5
       20 CALL                             R5 0 1
       21 ADDK                             R4 R5 K5 [500]
       22 SETUPVAL                         R4 4
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K6 ["prepareFreshStack"]
       26 MOVE                             R5 R0
       27 MOVE                             R6 R1
       28 CALL                             R4 2 0
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K7 ["startWorkOnPendingInteractions"]
       32 MOVE                             R5 R0
       33 MOVE                             R6 R1
       34 CALL                             R4 2 0
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K8 ["pushInteractions"]
       38 MOVE                             R5 R0
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K10 [_G]
       42 GETTABLEKS                       R5 R5 K11 ["__DEV__"]
       44 JUMPIFNOT                        R5 ; [+9]
       45 GETUPVAL                         R5 6
       46 GETTABLEKS                       R5 R5 K12 ["enableDebugTracing"]
       48 JUMPIFNOT                        R5 ; [+5]
       49 GETUPVAL                         R5 7
       50 GETTABLEKS                       R5 R5 K13 ["logRenderStarted"]
       52 MOVE                             R6 R1
       53 CALL                             R5 1 0
       54 GETUPVAL                         R5 6
       55 GETTABLEKS                       R5 R5 K14 ["enableSchedulingProfiler"]
       57 JUMPIFNOT                        R5 ; [+5]
       58 GETUPVAL                         R5 8
       59 GETTABLEKS                       R5 R5 K15 ["markRenderStarted"]
       61 MOVE                             R6 R1
       62 CALL                             R5 1 0
       63 LOADNIL                          R5
       64 LOADNIL                          R6
       65 GETIMPORT                        R7 K10 [_G]
       67 GETTABLEKS                       R7 R7 K16 ["__YOLO__"]
       69 JUMPIF                           R7 ; [+11]
       70 GETIMPORT                        R7 K18 [pcall]
       72 GETUPVAL                         R8 1
       73 GETTABLEKS                       R8 R8 K19 ["workLoopConcurrent"]
       75 CALL                             R7 1 2
       76 MOVE                             R5 R7
       77 MOVE                             R6 R8
       78 JUMPIFNOT                        R5 ; [+8]
       79 LOADK                            R6 K20 ["break"]
       80 JUMP                             ; [+6]
       81 LOADB                            R5 1
       82 LOADK                            R6 K20 ["break"]
       83 GETUPVAL                         R7 1
       84 GETTABLEKS                       R7 R7 K19 ["workLoopConcurrent"]
       86 CALL                             R7 0 0
       87 JUMPIFEQKS                       R6 K20 ["break"] ; [+9]
       89 JUMPIF                           R5 ; [+6]
       90 GETUPVAL                         R7 1
       91 GETTABLEKS                       R7 R7 K21 ["handleError"]
       93 MOVE                             R8 R0
       94 MOVE                             R9 R6
       95 CALL                             R7 2 0
       96 JUMPBACK                         ; [-34]
       97 GETUPVAL                         R5 9
       98 CALL                             R5 0 0
       99 GETUPVAL                         R5 6
      100 GETTABLEKS                       R5 R5 K22 ["enableSchedulerTracing"]
      102 JUMPIFNOT                        R5 ; [+5]
      103 GETUPVAL                         R5 1
      104 GETTABLEKS                       R5 R5 K23 ["popInteractions"]
      106 MOVE                             R6 R4
      107 CALL                             R5 1 0
      108 GETUPVAL                         R5 1
      109 GETTABLEKS                       R5 R5 K24 ["popDispatcher"]
      111 MOVE                             R6 R3
      112 CALL                             R5 1 0
      113 SETUPVAL                         R2 0
      114 GETIMPORT                        R5 K10 [_G]
      116 GETTABLEKS                       R5 R5 K11 ["__DEV__"]
      118 JUMPIFNOT                        R5 ; [+8]
      119 GETUPVAL                         R5 6
      120 GETTABLEKS                       R5 R5 K12 ["enableDebugTracing"]
      122 JUMPIFNOT                        R5 ; [+4]
      123 GETUPVAL                         R5 7
      124 GETTABLEKS                       R5 R5 K25 ["logRenderStopped"]
      126 CALL                             R5 0 0
      127 GETUPVAL                         R5 10
      128 JUMPIFEQKNIL                     R5 ; [+11]
      130 GETUPVAL                         R5 6
      131 GETTABLEKS                       R5 R5 K14 ["enableSchedulingProfiler"]
      133 JUMPIFNOT                        R5 ; [+4]
      134 GETUPVAL                         R5 8
      135 GETTABLEKS                       R5 R5 K26 ["markRenderYielded"]
      137 CALL                             R5 0 0
      138 LOADN                            R5 0
      139 RETURN                           R5 1
      140 GETUPVAL                         R5 6
      141 GETTABLEKS                       R5 R5 K14 ["enableSchedulingProfiler"]
      143 JUMPIFNOT                        R5 ; [+4]
      144 GETUPVAL                         R5 8
      145 GETTABLEKS                       R5 R5 K27 ["markRenderStopped"]
      147 CALL                             R5 0 0
      148 LOADNIL                          R5
      149 SETUPVAL                         R5 2
      150 GETUPVAL                         R5 11
      151 GETTABLEKS                       R5 R5 K28 ["NoLanes"]
      153 SETUPVAL                         R5 3
      154 GETUPVAL                         R5 12
      155 RETURN                           R5 1

PROTO_64:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["performUnitOfWork"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 JUMPBACK                         ; [-12]
       12 RETURN                           R0 0

PROTO_65:
        0 GETTABLEKS                       R1 R0 K0 ["alternate"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 0
        5 LOADNIL                          R2
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["enableProfilerTimer"]
        9 JUMPIFNOT                        R3 ; [+37]
       10 GETTABLEKS                       R4 R0 K2 ["mode"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K3 ["ProfileMode"]
       15 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       17 GETIMPORT                        R3 K6 [bit32.band]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K7 ["NoMode"]
       23 JUMPIFEQ                         R3 R4 ; [+23]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K8 ["startProfilerTimer"]
       28 MOVE                             R4 R0
       29 CALL                             R3 1 0
       30 GETUPVAL                         R3 4
       31 GETTABLEKS                       R3 R3 K9 ["beginWork"]
       33 MOVE                             R4 R1
       34 MOVE                             R5 R0
       35 GETUPVAL                         R6 5
       36 GETTABLEKS                       R6 R6 K10 ["subtreeRenderLanes"]
       38 CALL                             R3 3 1
       39 MOVE                             R2 R3
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R3 R3 K11 ["stopProfilerTimerIfRunningAndRecordDelta"]
       43 MOVE                             R4 R0
       44 LOADB                            R5 1
       45 CALL                             R3 2 0
       46 JUMP                             ; [+10]
       47 GETUPVAL                         R3 4
       48 GETTABLEKS                       R3 R3 K9 ["beginWork"]
       50 MOVE                             R4 R1
       51 MOVE                             R5 R0
       52 GETUPVAL                         R6 5
       53 GETTABLEKS                       R6 R6 K10 ["subtreeRenderLanes"]
       55 CALL                             R3 3 1
       56 MOVE                             R2 R3
       57 GETUPVAL                         R3 6
       58 CALL                             R3 0 0
       59 GETTABLEKS                       R3 R0 K12 ["pendingProps"]
       61 SETTABLEKS                       R3 R0 K13 ["memoizedProps"]
       63 JUMPIFNOTEQKNIL                  R2 ; [+7]
       65 GETUPVAL                         R3 4
       66 GETTABLEKS                       R3 R3 K14 ["completeUnitOfWork"]
       68 MOVE                             R4 R0
       69 CALL                             R3 1 0
       70 JUMP                             ; [+1]
       71 SETUPVAL                         R2 7
       72 GETUPVAL                         R3 8
       73 LOADNIL                          R4
       74 SETTABLEKS                       R4 R3 K15 ["current"]
       76 RETURN                           R0 0

PROTO_66:
        0 MOVE                             R1 R0
        1 GETTABLEKS                       R2 R1 K0 ["alternate"]
        3 GETTABLEKS                       R3 R1 K1 ["return_"]
        5 GETTABLEKS                       R5 R1 K2 ["flags"]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K3 ["Incomplete"]
       10 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       12 GETIMPORT                        R4 K6 [bit32.band]
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K7 ["NoFlags"]
       18 JUMPIFNOTEQ                      R4 R5 ; [+103]
       20 GETUPVAL                         R4 1
       21 MOVE                             R5 R1
       22 CALL                             R4 1 0
       23 LOADNIL                          R4
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K8 ["enableProfilerTimer"]
       27 JUMPIFNOT                        R5 ; [+15]
       28 GETTABLEKS                       R6 R1 K9 ["mode"]
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R7 R7 K10 ["ProfileMode"]
       33 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       35 GETIMPORT                        R5 K6 [bit32.band]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K11 ["NoMode"]
       41 JUMPIFNOTEQ                      R5 R6 ; [+32]
       43 MOVE                             R5 R1
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R6 R6 K12 ["subtreeRenderLanes"]
       47 GETUPVAL                         R7 5
       48 GETTABLEKS                       R7 R7 K13 ["completeWorkRef"]
       50 JUMPIF                           R7 ; [+14]
       51 GETUPVAL                         R7 5
       52 GETIMPORT                        R8 K15 [require]
       54 GETIMPORT                        R10 K18 [script]
       56 GETTABLEKS                       R10 R10 K19 ["Parent"]
       58 GETTABLEKS                       R9 R10 K16 ["ReactFiberCompleteWork.new"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R8 R8 K20 ["completeWork"]
       63 SETTABLEKS                       R8 R7 K13 ["completeWorkRef"]
       65 GETUPVAL                         R7 5
       66 GETTABLEKS                       R7 R7 K13 ["completeWorkRef"]
       68 MOVE                             R8 R2
       69 MOVE                             R9 R5
       70 MOVE                             R10 R6
       71 CALL                             R7 3 1
       72 MOVE                             R4 R7
       73 JUMP                             ; [+41]
       74 GETUPVAL                         R5 6
       75 GETTABLEKS                       R5 R5 K21 ["startProfilerTimer"]
       77 MOVE                             R6 R1
       78 CALL                             R5 1 0
       79 MOVE                             R5 R1
       80 GETUPVAL                         R6 4
       81 GETTABLEKS                       R6 R6 K12 ["subtreeRenderLanes"]
       83 GETUPVAL                         R7 5
       84 GETTABLEKS                       R7 R7 K13 ["completeWorkRef"]
       86 JUMPIF                           R7 ; [+14]
       87 GETUPVAL                         R7 5
       88 GETIMPORT                        R8 K15 [require]
       90 GETIMPORT                        R10 K18 [script]
       92 GETTABLEKS                       R10 R10 K19 ["Parent"]
       94 GETTABLEKS                       R9 R10 K16 ["ReactFiberCompleteWork.new"]
       96 CALL                             R8 1 1
       97 GETTABLEKS                       R8 R8 K20 ["completeWork"]
       99 SETTABLEKS                       R8 R7 K13 ["completeWorkRef"]
      101 GETUPVAL                         R7 5
      102 GETTABLEKS                       R7 R7 K13 ["completeWorkRef"]
      104 MOVE                             R8 R2
      105 MOVE                             R9 R5
      106 MOVE                             R10 R6
      107 CALL                             R7 3 1
      108 MOVE                             R4 R7
      109 GETUPVAL                         R5 6
      110 GETTABLEKS                       R5 R5 K22 ["stopProfilerTimerIfRunningAndRecordDelta"]
      112 MOVE                             R6 R1
      113 LOADB                            R7 0
      114 CALL                             R5 2 0
      115 GETUPVAL                         R5 7
      116 CALL                             R5 0 0
      117 JUMPIFEQKNIL                     R4 ; [+87]
      119 SETUPVAL                         R4 8
      120 RETURN                           R0 0
      121 JUMP                             ; [+83]
      122 GETUPVAL                         R4 9
      123 MOVE                             R5 R1
      124 GETUPVAL                         R6 4
      125 GETTABLEKS                       R6 R6 K12 ["subtreeRenderLanes"]
      127 CALL                             R4 2 1
      128 JUMPIFEQKNIL                     R4 ; [+15]
      130 GETTABLEKS                       R6 R4 K2 ["flags"]
      132 GETUPVAL                         R7 0
      133 GETTABLEKS                       R7 R7 K23 ["HostEffectMask"]
      135 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
      137 GETIMPORT                        R5 K6 [bit32.band]
      139 CALL                             R5 2 1
      140 SETTABLEKS                       R5 R4 K2 ["flags"]
      142 SETUPVAL                         R4 8
      143 RETURN                           R0 0
      144 GETUPVAL                         R5 2
      145 GETTABLEKS                       R5 R5 K8 ["enableProfilerTimer"]
      147 JUMPIFNOT                        R5 ; [+35]
      148 GETTABLEKS                       R6 R1 K9 ["mode"]
      150 GETUPVAL                         R7 3
      151 GETTABLEKS                       R7 R7 K10 ["ProfileMode"]
      153 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
      155 GETIMPORT                        R5 K6 [bit32.band]
      157 CALL                             R5 2 1
      158 GETUPVAL                         R6 3
      159 GETTABLEKS                       R6 R6 K11 ["NoMode"]
      161 JUMPIFEQ                         R5 R6 ; [+21]
      163 GETUPVAL                         R5 6
      164 GETTABLEKS                       R5 R5 K22 ["stopProfilerTimerIfRunningAndRecordDelta"]
      166 MOVE                             R6 R1
      167 LOADB                            R7 0
      168 CALL                             R5 2 0
      169 GETTABLEKS                       R5 R1 K24 ["actualDuration"]
      171 GETTABLEKS                       R6 R1 K25 ["child"]
      173 JUMPIFEQKNIL                     R6 ; [+7]
      175 GETTABLEKS                       R7 R6 K24 ["actualDuration"]
      177 ADD                              R5 R5 R7
      178 GETTABLEKS                       R6 R6 K26 ["sibling"]
      180 JUMPBACK                         ; [-8]
      181 SETTABLEKS                       R5 R1 K24 ["actualDuration"]
      183 JUMPIFEQKNIL                     R3 ; [+21]
      185 GETTABLEKS                       R6 R3 K2 ["flags"]
      187 GETUPVAL                         R7 0
      188 GETTABLEKS                       R7 R7 K3 ["Incomplete"]
      190 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
      192 GETIMPORT                        R5 K28 [bit32.bor]
      194 CALL                             R5 2 1
      195 SETTABLEKS                       R5 R3 K2 ["flags"]
      197 GETUPVAL                         R5 0
      198 GETTABLEKS                       R5 R5 K7 ["NoFlags"]
      200 SETTABLEKS                       R5 R3 K29 ["subtreeFlags"]
      202 LOADNIL                          R5
      203 SETTABLEKS                       R5 R3 K30 ["deletions"]
      205 GETTABLEKS                       R4 R1 K26 ["sibling"]
      207 JUMPIFEQKNIL                     R4 ; [+3]
      209 SETUPVAL                         R4 8
      210 RETURN                           R0 0
      211 MOVE                             R1 R3
      212 SETUPVAL                         R1 8
      213 JUMPIFEQKNIL                     R1 ; [+2]
      215 JUMPBACK                         ; [-215]
      216 GETUPVAL                         R2 10
      217 JUMPIFNOTEQKN                    R2 K31 [0] ; [+3]
      219 LOADN                            R2 5
      220 SETUPVAL                         R2 10
      221 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["commitRootImpl"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_68:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 2 0
        9 LOADNIL                          R2
       10 RETURN                           R2 1

PROTO_69:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["flushPassiveEffects"]
        3 CALL                             R0 0 0
        4 LOADNIL                          R0
        5 RETURN                           R0 1

PROTO_70:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["flushPassiveEffects"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 1
        5 JUMPIFEQKNIL                     R2 ; [+2]
        7 JUMPBACK                         ; [-8]
        8 GETGLOBAL                        R2 K1 ["flushRenderPhaseStrictModeWarningsInDEV"]
       10 CALL                             R2 0 0
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R5 3
       13 FASTCALL2K                       BIT32_BAND R5 K2 ; [+4]
       15 LOADK                            R6 K2 [48]
       16 GETIMPORT                        R4 K5 [bit32.band]
       18 CALL                             R4 2 1
       19 JUMPIFEQKN                       R4 K6 [0] ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 LOADK                            R4 K7 ["Should not already be working."]
       24 CALL                             R2 2 0
       25 GETTABLEKS                       R2 R0 K8 ["finishedWork"]
       27 GETTABLEKS                       R3 R0 K9 ["finishedLanes"]
       29 GETIMPORT                        R4 K11 [_G]
       31 GETTABLEKS                       R4 R4 K12 ["__DEV__"]
       33 JUMPIFNOT                        R4 ; [+9]
       34 GETUPVAL                         R4 4
       35 GETTABLEKS                       R4 R4 K13 ["enableDebugTracing"]
       37 JUMPIFNOT                        R4 ; [+5]
       38 GETUPVAL                         R4 5
       39 GETTABLEKS                       R4 R4 K14 ["logCommitStarted"]
       41 MOVE                             R5 R3
       42 CALL                             R4 1 0
       43 GETUPVAL                         R4 4
       44 GETTABLEKS                       R4 R4 K15 ["enableSchedulingProfiler"]
       46 JUMPIFNOT                        R4 ; [+5]
       47 GETUPVAL                         R4 6
       48 GETTABLEKS                       R4 R4 K16 ["markCommitStarted"]
       50 MOVE                             R5 R3
       51 CALL                             R4 1 0
       52 JUMPIFNOTEQKNIL                  R2 ; [+24]
       54 GETIMPORT                        R4 K11 [_G]
       56 GETTABLEKS                       R4 R4 K12 ["__DEV__"]
       58 JUMPIFNOT                        R4 ; [+8]
       59 GETUPVAL                         R4 4
       60 GETTABLEKS                       R4 R4 K13 ["enableDebugTracing"]
       62 JUMPIFNOT                        R4 ; [+4]
       63 GETUPVAL                         R4 5
       64 GETTABLEKS                       R4 R4 K17 ["logCommitStopped"]
       66 CALL                             R4 0 0
       67 GETUPVAL                         R4 4
       68 GETTABLEKS                       R4 R4 K15 ["enableSchedulingProfiler"]
       70 JUMPIFNOT                        R4 ; [+4]
       71 GETUPVAL                         R4 6
       72 GETTABLEKS                       R4 R4 K18 ["markCommitStopped"]
       74 CALL                             R4 0 0
       75 LOADNIL                          R4
       76 RETURN                           R4 1
       77 LOADNIL                          R4
       78 SETTABLEKS                       R4 R0 K8 ["finishedWork"]
       80 GETUPVAL                         R4 7
       81 GETTABLEKS                       R4 R4 K19 ["NoLanes"]
       83 SETTABLEKS                       R4 R0 K9 ["finishedLanes"]
       85 GETUPVAL                         R4 2
       86 GETTABLEKS                       R6 R0 K20 ["current"]
       88 JUMPIFNOTEQ                      R2 R6 ; [+2]
       90 LOADB                            R5 0 +1
       91 LOADB                            R5 1
       92 LOADK                            R6 K21 ["Cannot commit the same tree as before. This error is likely caused by a bug in React. Please file an issue."]
       93 CALL                             R4 2 0
       94 LOADNIL                          R4
       95 SETTABLEKS                       R4 R0 K22 ["callbackNode"]
       97 GETUPVAL                         R4 8
       98 GETTABLEKS                       R5 R2 K23 ["lanes"]
      100 GETTABLEKS                       R6 R2 K24 ["childLanes"]
      102 CALL                             R4 2 1
      103 GETUPVAL                         R5 9
      104 MOVE                             R6 R0
      105 MOVE                             R7 R4
      106 CALL                             R5 2 0
      107 GETUPVAL                         R5 10
      108 JUMPIFEQKNIL                     R5 ; [+12]
      110 GETUPVAL                         R5 11
      111 MOVE                             R6 R4
      112 CALL                             R5 1 1
      113 JUMPIF                           R5 ; [+7]
      114 GETUPVAL                         R6 10
      115 GETTABLE                         R5 R6 R0
      116 JUMPIFEQKNIL                     R5 ; [+4]
      118 GETUPVAL                         R5 10
      119 LOADNIL                          R6
      120 SETTABLE                         R6 R5 R0
      121 GETUPVAL                         R5 12
      122 JUMPIFNOTEQ                      R0 R5 ; [+10]
      124 LOADNIL                          R5
      125 SETUPVAL                         R5 12
      126 LOADNIL                          R5
      127 SETUPVAL                         R5 13
      128 GETUPVAL                         R5 7
      129 GETTABLEKS                       R5 R5 K19 ["NoLanes"]
      131 SETUPVAL                         R5 14
      132 JUMP                             ; [0]
      133 GETTABLEKS                       R7 R2 K25 ["subtreeFlags"]
      135 GETUPVAL                         R9 15
      136 GETTABLEKS                       R9 R9 K26 ["BeforeMutationMask"]
      138 GETUPVAL                         R10 15
      139 GETTABLEKS                       R10 R10 K27 ["MutationMask"]
      141 GETUPVAL                         R11 15
      142 GETTABLEKS                       R11 R11 K28 ["LayoutMask"]
      144 GETUPVAL                         R12 15
      145 GETTABLEKS                       R12 R12 K29 ["PassiveMask"]
      147 FASTCALL                         BIT32_BOR ; [+2]
      148 GETIMPORT                        R8 K31 [bit32.bor]
      150 CALL                             R8 4 1
      151 FASTCALL2                        BIT32_BAND R7 R8 ; [+3]
      153 GETIMPORT                        R6 K5 [bit32.band]
      155 CALL                             R6 2 1
      156 GETUPVAL                         R7 15
      157 GETTABLEKS                       R7 R7 K32 ["NoFlags"]
      159 JUMPIFNOTEQ                      R6 R7 ; [+2]
      161 LOADB                            R5 0 +1
      162 LOADB                            R5 1
      163 GETTABLEKS                       R8 R2 K33 ["flags"]
      165 GETUPVAL                         R10 15
      166 GETTABLEKS                       R10 R10 K26 ["BeforeMutationMask"]
      168 GETUPVAL                         R11 15
      169 GETTABLEKS                       R11 R11 K27 ["MutationMask"]
      171 GETUPVAL                         R12 15
      172 GETTABLEKS                       R12 R12 K28 ["LayoutMask"]
      174 GETUPVAL                         R13 15
      175 GETTABLEKS                       R13 R13 K29 ["PassiveMask"]
      177 FASTCALL                         BIT32_BOR ; [+2]
      178 GETIMPORT                        R9 K31 [bit32.bor]
      180 CALL                             R9 4 1
      181 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
      183 GETIMPORT                        R7 K5 [bit32.band]
      185 CALL                             R7 2 1
      186 GETUPVAL                         R8 15
      187 GETTABLEKS                       R8 R8 K32 ["NoFlags"]
      189 JUMPIFNOTEQ                      R7 R8 ; [+2]
      191 LOADB                            R6 0 +1
      192 LOADB                            R6 1
      193 JUMPIF                           R5 ; [+1]
      194 JUMPIFNOT                        R6 ; [+254]
      195 LOADNIL                          R7
      196 GETUPVAL                         R8 4
      197 GETTABLEKS                       R8 R8 K34 ["decoupleUpdatePriorityFromScheduler"]
      199 JUMPIFNOT                        R8 ; [+8]
      200 GETUPVAL                         R8 16
      201 CALL                             R8 0 1
      202 MOVE                             R7 R8
      203 GETUPVAL                         R8 17
      204 GETUPVAL                         R9 7
      205 GETTABLEKS                       R9 R9 K35 ["SyncLanePriority"]
      207 CALL                             R8 1 0
      208 GETUPVAL                         R8 3
      209 GETUPVAL                         R10 3
      210 FASTCALL2K                       BIT32_BOR R10 K36 ; [+4]
      212 LOADK                            R11 K36 [32]
      213 GETIMPORT                        R9 K31 [bit32.bor]
      215 CALL                             R9 2 1
      216 SETUPVAL                         R9 3
      217 GETUPVAL                         R9 18
      218 GETTABLEKS                       R9 R9 K37 ["pushInteractions"]
      220 MOVE                             R10 R0
      221 CALL                             R9 1 1
      222 GETUPVAL                         R10 19
      223 LOADNIL                          R11
      224 SETTABLEKS                       R11 R10 K20 ["current"]
      226 GETUPVAL                         R10 21
      227 GETTABLEKS                       R10 R10 K38 ["prepareForCommit"]
      229 GETTABLEKS                       R11 R0 K39 ["containerInfo"]
      231 CALL                             R10 1 1
      232 SETUPVAL                         R10 20
      233 LOADB                            R10 0
      234 SETUPVAL                         R10 22
      235 GETUPVAL                         R10 18
      236 GETTABLEKS                       R10 R10 K40 ["commitBeforeMutationEffects"]
      238 MOVE                             R11 R2
      239 CALL                             R10 1 0
      240 LOADNIL                          R10
      241 SETUPVAL                         R10 20
      242 GETUPVAL                         R10 4
      243 GETTABLEKS                       R10 R10 K41 ["enableProfilerTimer"]
      245 JUMPIFNOT                        R10 ; [+4]
      246 GETUPVAL                         R10 23
      247 GETTABLEKS                       R10 R10 K42 ["recordCommitTime"]
      249 CALL                             R10 0 0
      250 GETUPVAL                         R10 18
      251 GETTABLEKS                       R10 R10 K43 ["commitMutationEffects"]
      253 MOVE                             R11 R2
      254 MOVE                             R12 R0
      255 MOVE                             R13 R1
      256 CALL                             R10 3 0
      257 GETUPVAL                         R10 22
      258 JUMPIFNOT                        R10 ; [+4]
      259 GETUPVAL                         R10 21
      260 GETTABLEKS                       R10 R10 K44 ["afterActiveInstanceBlur"]
      262 CALL                             R10 0 0
      263 GETUPVAL                         R10 21
      264 GETTABLEKS                       R10 R10 K45 ["resetAfterCommit"]
      266 GETTABLEKS                       R11 R0 K39 ["containerInfo"]
      268 CALL                             R10 1 0
      269 SETTABLEKS                       R2 R0 K20 ["current"]
      271 GETIMPORT                        R10 K11 [_G]
      273 GETTABLEKS                       R10 R10 K12 ["__DEV__"]
      275 JUMPIFNOT                        R10 ; [+9]
      276 GETUPVAL                         R10 4
      277 GETTABLEKS                       R10 R10 K13 ["enableDebugTracing"]
      279 JUMPIFNOT                        R10 ; [+5]
      280 GETUPVAL                         R10 5
      281 GETTABLEKS                       R10 R10 K46 ["logLayoutEffectsStarted"]
      283 MOVE                             R11 R3
      284 CALL                             R10 1 0
      285 GETUPVAL                         R10 4
      286 GETTABLEKS                       R10 R10 K15 ["enableSchedulingProfiler"]
      288 JUMPIFNOT                        R10 ; [+5]
      289 GETUPVAL                         R10 6
      290 GETTABLEKS                       R10 R10 K47 ["markLayoutEffectsStarted"]
      292 MOVE                             R11 R3
      293 CALL                             R10 1 0
      294 GETIMPORT                        R10 K11 [_G]
      296 GETTABLEKS                       R10 R10 K12 ["__DEV__"]
      298 JUMPIFNOT                        R10 ; [+29]
      299 GETUPVAL                         R10 24
      300 MOVE                             R11 R2
      301 CALL                             R10 1 0
      302 GETUPVAL                         R10 25
      303 LOADNIL                          R11
      304 GETUPVAL                         R12 26
      305 LOADNIL                          R13
      306 MOVE                             R14 R2
      307 MOVE                             R15 R0
      308 GETUPVAL                         R16 0
      309 GETTABLEKS                       R16 R16 K48 ["captureCommitPhaseError"]
      311 GETUPVAL                         R17 0
      312 GETTABLEKS                       R17 R17 K49 ["schedulePassiveEffectCallback"]
      314 CALL                             R10 7 0
      315 GETUPVAL                         R10 27
      316 CALL                             R10 0 1
      317 JUMPIFNOT                        R10 ; [+7]
      318 GETUPVAL                         R10 28
      319 CALL                             R10 0 1
      320 GETUPVAL                         R11 29
      321 MOVE                             R12 R2
      322 MOVE                             R13 R2
      323 MOVE                             R14 R10
      324 CALL                             R11 3 0
      325 GETUPVAL                         R10 30
      326 CALL                             R10 0 0
      327 JUMP                             ; [+39]
      328 LOADNIL                          R10
      329 LOADNIL                          R11
      330 GETIMPORT                        R12 K11 [_G]
      332 GETTABLEKS                       R12 R12 K50 ["__YOLO__"]
      334 JUMPIF                           R12 ; [+15]
      335 GETIMPORT                        R12 K52 [pcall]
      337 GETUPVAL                         R13 26
      338 MOVE                             R14 R2
      339 MOVE                             R15 R0
      340 GETUPVAL                         R16 0
      341 GETTABLEKS                       R16 R16 K48 ["captureCommitPhaseError"]
      343 GETUPVAL                         R17 0
      344 GETTABLEKS                       R17 R17 K49 ["schedulePassiveEffectCallback"]
      346 CALL                             R12 5 2
      347 MOVE                             R10 R12
      348 MOVE                             R11 R13
      349 JUMP                             ; [+11]
      350 LOADB                            R10 1
      351 GETUPVAL                         R12 26
      352 MOVE                             R13 R2
      353 MOVE                             R14 R0
      354 GETUPVAL                         R15 0
      355 GETTABLEKS                       R15 R15 K48 ["captureCommitPhaseError"]
      357 GETUPVAL                         R16 0
      358 GETTABLEKS                       R16 R16 K49 ["schedulePassiveEffectCallback"]
      360 CALL                             R12 4 0
      361 JUMPIF                           R10 ; [+5]
      362 GETUPVAL                         R12 29
      363 MOVE                             R13 R2
      364 MOVE                             R14 R2
      365 MOVE                             R15 R11
      366 CALL                             R12 3 0
      367 GETIMPORT                        R10 K11 [_G]
      369 GETTABLEKS                       R10 R10 K12 ["__DEV__"]
      371 JUMPIFNOT                        R10 ; [+8]
      372 GETUPVAL                         R10 4
      373 GETTABLEKS                       R10 R10 K13 ["enableDebugTracing"]
      375 JUMPIFNOT                        R10 ; [+4]
      376 GETUPVAL                         R10 5
      377 GETTABLEKS                       R10 R10 K53 ["logLayoutEffectsStopped"]
      379 CALL                             R10 0 0
      380 GETUPVAL                         R10 4
      381 GETTABLEKS                       R10 R10 K15 ["enableSchedulingProfiler"]
      383 JUMPIFNOT                        R10 ; [+4]
      384 GETUPVAL                         R10 6
      385 GETTABLEKS                       R10 R10 K54 ["markLayoutEffectsStopped"]
      387 CALL                             R10 0 0
      388 GETTABLEKS                       R11 R2 K25 ["subtreeFlags"]
      390 GETUPVAL                         R12 15
      391 GETTABLEKS                       R12 R12 K29 ["PassiveMask"]
      393 FASTCALL2                        BIT32_BAND R11 R12 ; [+3]
      395 GETIMPORT                        R10 K5 [bit32.band]
      397 CALL                             R10 2 1
      398 GETUPVAL                         R11 15
      399 GETTABLEKS                       R11 R11 K32 ["NoFlags"]
      401 JUMPIFNOTEQ                      R10 R11 ; [+16]
      403 GETTABLEKS                       R11 R2 K33 ["flags"]
      405 GETUPVAL                         R12 15
      406 GETTABLEKS                       R12 R12 K29 ["PassiveMask"]
      408 FASTCALL2                        BIT32_BAND R11 R12 ; [+3]
      410 GETIMPORT                        R10 K5 [bit32.band]
      412 CALL                             R10 2 1
      413 GETUPVAL                         R11 15
      414 GETTABLEKS                       R11 R11 K32 ["NoFlags"]
      416 JUMPIFEQ                         R10 R11 ; [+10]
      418 GETUPVAL                         R10 31
      419 JUMPIF                           R10 ; [+7]
      420 LOADB                            R10 1
      421 SETUPVAL                         R10 31
      422 GETUPVAL                         R10 32
      423 GETUPVAL                         R11 33
      424 DUPCLOSURE                       R12 K55 [PROTO_69]
      425 CAPTURE                          UPVAL U0
      426 CALL                             R10 2 0
      427 GETUPVAL                         R10 34
      428 CALL                             R10 0 0
      429 GETUPVAL                         R10 4
      430 GETTABLEKS                       R10 R10 K56 ["enableSchedulerTracing"]
      432 JUMPIFNOT                        R10 ; [+5]
      433 GETUPVAL                         R10 18
      434 GETTABLEKS                       R10 R10 K57 ["popInteractions"]
      436 MOVE                             R11 R9
      437 CALL                             R10 1 0
      438 SETUPVAL                         R8 3
      439 GETUPVAL                         R10 4
      440 GETTABLEKS                       R10 R10 K34 ["decoupleUpdatePriorityFromScheduler"]
      442 JUMPIFNOT                        R10 ; [+16]
      443 JUMPIFEQKNIL                     R7 ; [+15]
      445 GETUPVAL                         R10 17
      446 MOVE                             R11 R7
      447 CALL                             R10 1 0
      448 JUMP                             ; [+10]
      449 SETTABLEKS                       R2 R0 K20 ["current"]
      451 GETUPVAL                         R7 4
      452 GETTABLEKS                       R7 R7 K41 ["enableProfilerTimer"]
      454 JUMPIFNOT                        R7 ; [+4]
      455 GETUPVAL                         R7 23
      456 GETTABLEKS                       R7 R7 K42 ["recordCommitTime"]
      458 CALL                             R7 0 0
      459 GETUPVAL                         R7 31
      460 GETUPVAL                         R8 31
      461 JUMPIFNOT                        R8 ; [+5]
      462 LOADB                            R8 0
      463 SETUPVAL                         R8 31
      464 SETUPVAL                         R0 1
      465 SETUPVAL                         R3 35
      466 SETUPVAL                         R1 36
      467 GETTABLEKS                       R4 R0 K58 ["pendingLanes"]
      469 GETUPVAL                         R8 7
      470 GETTABLEKS                       R8 R8 K19 ["NoLanes"]
      472 JUMPIFEQ                         R4 R8 ; [+30]
      474 GETUPVAL                         R8 4
      475 GETTABLEKS                       R8 R8 K56 ["enableSchedulerTracing"]
      477 JUMPIFNOT                        R8 ; [+27]
      478 GETUPVAL                         R8 37
      479 JUMPIFEQKNIL                     R8 ; [+16]
      481 GETUPVAL                         R8 37
      482 LOADNIL                          R9
      483 SETUPVAL                         R9 37
      484 LOADN                            R11 1
      485 LENGTH                           R9 R8
      486 LOADN                            R10 1
      487 FORNPREP                         R9
      488 GETGLOBAL                        R12 K59 ["scheduleInteractions"]
      490 MOVE                             R13 R0
      491 GETTABLE                         R14 R8 R11
      492 GETTABLEKS                       R15 R0 K60 ["memoizedInteractions"]
      494 CALL                             R12 3 0
      495 FORNLOOP                         R9
      496 GETUPVAL                         R8 18
      497 GETTABLEKS                       R8 R8 K61 ["schedulePendingInteractions"]
      499 MOVE                             R9 R0
      500 MOVE                             R10 R4
      501 CALL                             R8 2 0
      502 JUMP                             ; [+2]
      503 LOADNIL                          R8
      504 SETUPVAL                         R8 38
      505 GETIMPORT                        R8 K11 [_G]
      507 GETTABLEKS                       R8 R8 K12 ["__DEV__"]
      509 JUMPIFNOT                        R8 ; [+9]
      510 GETUPVAL                         R8 39
      511 JUMPIFNOT                        R8 ; [+7]
      512 JUMPIF                           R7 ; [+6]
      513 GETGLOBAL                        R8 K62 ["commitDoubleInvokeEffectsInDEV"]
      515 GETTABLEKS                       R9 R0 K20 ["current"]
      517 LOADB                            R10 0
      518 CALL                             R8 2 0
      519 GETUPVAL                         R8 4
      520 GETTABLEKS                       R8 R8 K56 ["enableSchedulerTracing"]
      522 JUMPIFNOT                        R8 ; [+7]
      523 JUMPIF                           R7 ; [+6]
      524 GETUPVAL                         R8 18
      525 GETTABLEKS                       R8 R8 K63 ["finishPendingInteractions"]
      527 MOVE                             R9 R0
      528 MOVE                             R10 R3
      529 CALL                             R8 2 0
      530 GETUPVAL                         R8 40
      531 JUMPIFNOTEQ                      R4 R8 ; [+12]
      533 GETUPVAL                         R8 41
      534 JUMPIFNOTEQ                      R0 R8 ; [+5]
      536 GETUPVAL                         R8 42
      537 ADDK                             R8 R8 K64 [1]
      538 SETUPVAL                         R8 42
      539 JUMP                             ; [+6]
      540 LOADN                            R8 0
      541 SETUPVAL                         R8 42
      542 SETUPVAL                         R0 41
      543 JUMP                             ; [+2]
      544 LOADN                            R8 0
      545 SETUPVAL                         R8 42
      546 GETUPVAL                         R8 43
      547 GETTABLEKS                       R9 R2 K65 ["stateNode"]
      549 MOVE                             R10 R1
      550 CALL                             R8 2 0
      551 GETIMPORT                        R8 K11 [_G]
      553 GETTABLEKS                       R8 R8 K12 ["__DEV__"]
      555 JUMPIFNOT                        R8 ; [+2]
      556 GETUPVAL                         R8 44
      557 CALL                             R8 0 0
      558 GETUPVAL                         R8 45
      559 MOVE                             R9 R0
      560 GETUPVAL                         R10 46
      561 CALL                             R10 0 -1
      562 CALL                             R8 -1 0
      563 GETUPVAL                         R8 47
      564 JUMPIFNOT                        R8 ; [+9]
      565 LOADB                            R8 0
      566 SETUPVAL                         R8 47
      567 GETUPVAL                         R8 48
      568 LOADNIL                          R9
      569 SETUPVAL                         R9 48
      570 GETIMPORT                        R9 K67 [error]
      572 MOVE                             R10 R8
      573 CALL                             R9 1 0
      574 GETUPVAL                         R9 3
      575 FASTCALL2K                       BIT32_BAND R9 K68 ; [+4]
      577 LOADK                            R10 K68 [8]
      578 GETIMPORT                        R8 K5 [bit32.band]
      580 CALL                             R8 2 1
      581 JUMPIFEQKN                       R8 K6 [0] ; [+24]
      583 GETIMPORT                        R8 K11 [_G]
      585 GETTABLEKS                       R8 R8 K12 ["__DEV__"]
      587 JUMPIFNOT                        R8 ; [+8]
      588 GETUPVAL                         R8 4
      589 GETTABLEKS                       R8 R8 K13 ["enableDebugTracing"]
      591 JUMPIFNOT                        R8 ; [+4]
      592 GETUPVAL                         R8 5
      593 GETTABLEKS                       R8 R8 K17 ["logCommitStopped"]
      595 CALL                             R8 0 0
      596 GETUPVAL                         R8 4
      597 GETTABLEKS                       R8 R8 K15 ["enableSchedulingProfiler"]
      599 JUMPIFNOT                        R8 ; [+4]
      600 GETUPVAL                         R8 6
      601 GETTABLEKS                       R8 R8 K18 ["markCommitStopped"]
      603 CALL                             R8 0 0
      604 LOADNIL                          R8
      605 RETURN                           R8 1
      606 GETUPVAL                         R8 49
      607 CALL                             R8 0 0
      608 GETIMPORT                        R8 K11 [_G]
      610 GETTABLEKS                       R8 R8 K12 ["__DEV__"]
      612 JUMPIFNOT                        R8 ; [+8]
      613 GETUPVAL                         R8 4
      614 GETTABLEKS                       R8 R8 K13 ["enableDebugTracing"]
      616 JUMPIFNOT                        R8 ; [+4]
      617 GETUPVAL                         R8 5
      618 GETTABLEKS                       R8 R8 K17 ["logCommitStopped"]
      620 CALL                             R8 0 0
      621 GETUPVAL                         R8 4
      622 GETTABLEKS                       R8 R8 K15 ["enableSchedulingProfiler"]
      624 JUMPIFNOT                        R8 ; [+4]
      625 GETUPVAL                         R8 6
      626 GETTABLEKS                       R8 R8 K18 ["markCommitStopped"]
      628 CALL                             R8 0 0
      629 LOADNIL                          R8
      630 RETURN                           R8 1

PROTO_71:
        0 MOVE                             R1 R0
        1 JUMPIFEQKNIL                     R1 ; [+103]
        3 GETTABLEKS                       R2 R1 K0 ["deletions"]
        5 JUMPIFEQKNIL                     R2 ; [+7]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["commitBeforeMutationEffectsDeletions"]
       10 GETTABLEKS                       R3 R1 K0 ["deletions"]
       12 CALL                             R2 1 0
       13 GETTABLEKS                       R2 R1 K2 ["child"]
       15 JUMPIFEQKNIL                     R2 ; [+22]
       17 GETTABLEKS                       R3 R1 K3 ["subtreeFlags"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K4 ["BeforeMutationMask"]
       22 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       24 GETIMPORT                        R2 K7 [bit32.band]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K8 ["NoFlags"]
       30 JUMPIFEQ                         R2 R3 ; [+7]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K9 ["commitBeforeMutationEffects"]
       35 GETTABLEKS                       R4 R1 K2 ["child"]
       37 CALL                             R3 1 0
       38 GETIMPORT                        R2 K11 [_G]
       40 GETTABLEKS                       R2 R2 K12 ["__DEV__"]
       42 JUMPIFNOT                        R2 ; [+27]
       43 GETUPVAL                         R2 2
       44 MOVE                             R3 R1
       45 CALL                             R2 1 0
       46 GETUPVAL                         R2 3
       47 LOADNIL                          R3
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K13 ["commitBeforeMutationEffectsImpl"]
       51 LOADNIL                          R5
       52 MOVE                             R6 R1
       53 CALL                             R2 4 0
       54 GETUPVAL                         R2 4
       55 CALL                             R2 0 1
       56 JUMPIFNOT                        R2 ; [+10]
       57 GETUPVAL                         R2 5
       58 CALL                             R2 0 1
       59 GETUPVAL                         R3 6
       60 GETTABLEKS                       R3 R3 K14 ["captureCommitPhaseError"]
       62 MOVE                             R4 R1
       63 GETTABLEKS                       R5 R1 K15 ["return_"]
       65 MOVE                             R6 R2
       66 CALL                             R3 3 0
       67 GETUPVAL                         R2 7
       68 CALL                             R2 0 0
       69 JUMP                             ; [+32]
       70 LOADNIL                          R2
       71 LOADNIL                          R3
       72 GETIMPORT                        R4 K11 [_G]
       74 GETTABLEKS                       R4 R4 K16 ["__YOLO__"]
       76 JUMPIF                           R4 ; [+10]
       77 GETIMPORT                        R4 K18 [pcall]
       79 GETUPVAL                         R5 0
       80 GETTABLEKS                       R5 R5 K13 ["commitBeforeMutationEffectsImpl"]
       82 MOVE                             R6 R1
       83 CALL                             R4 2 2
       84 MOVE                             R2 R4
       85 MOVE                             R3 R5
       86 JUMP                             ; [+6]
       87 LOADB                            R2 1
       88 GETUPVAL                         R4 0
       89 GETTABLEKS                       R4 R4 K13 ["commitBeforeMutationEffectsImpl"]
       91 MOVE                             R5 R1
       92 CALL                             R4 1 0
       93 JUMPIF                           R2 ; [+8]
       94 GETUPVAL                         R4 6
       95 GETTABLEKS                       R4 R4 K14 ["captureCommitPhaseError"]
       97 MOVE                             R5 R1
       98 GETTABLEKS                       R6 R1 K15 ["return_"]
      100 MOVE                             R7 R3
      101 CALL                             R4 3 0
      102 GETTABLEKS                       R1 R1 K19 ["sibling"]
      104 JUMPBACK                         ; [-104]
      105 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["flushPassiveEffects"]
        3 CALL                             R0 0 0
        4 LOADNIL                          R0
        5 RETURN                           R0 1

PROTO_73:
        0 GETTABLEKS                       R1 R0 K0 ["alternate"]
        2 GETTABLEKS                       R2 R0 K1 ["flags"]
        4 GETUPVAL                         R3 0
        5 JUMPIF                           R3 ; [+28]
        6 GETUPVAL                         R3 1
        7 JUMPIFEQKNIL                     R3 ; [+26]
        9 GETTABLEKS                       R3 R0 K2 ["tag"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["SuspenseComponent"]
       14 JUMPIFNOTEQ                      R3 R4 ; [+19]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K4 ["isSuspenseBoundaryBeingHidden"]
       19 MOVE                             R4 R1
       20 MOVE                             R5 R0
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+11]
       23 GETUPVAL                         R3 4
       24 MOVE                             R4 R0
       25 GETUPVAL                         R5 1
       26 CALL                             R3 2 1
       27 JUMPIFNOT                        R3 ; [+6]
       28 LOADB                            R3 1
       29 SETUPVAL                         R3 0
       30 GETUPVAL                         R3 5
       31 GETTABLEKS                       R3 R3 K5 ["beforeActiveInstanceBlur"]
       33 CALL                             R3 0 0
       34 GETUPVAL                         R5 6
       35 GETTABLEKS                       R5 R5 K6 ["Snapshot"]
       37 FASTCALL2                        BIT32_BAND R2 R5 ; [+4]
       39 MOVE                             R4 R2
       40 GETIMPORT                        R3 K9 [bit32.band]
       42 CALL                             R3 2 1
       43 GETUPVAL                         R4 6
       44 GETTABLEKS                       R4 R4 K10 ["NoFlags"]
       46 JUMPIFEQ                         R3 R4 ; [+10]
       48 GETUPVAL                         R3 7
       49 MOVE                             R4 R0
       50 CALL                             R3 1 0
       51 GETUPVAL                         R3 8
       52 MOVE                             R4 R1
       53 MOVE                             R5 R0
       54 CALL                             R3 2 0
       55 GETUPVAL                         R3 9
       56 CALL                             R3 0 0
       57 GETUPVAL                         R5 6
       58 GETTABLEKS                       R5 R5 K11 ["Passive"]
       60 FASTCALL2                        BIT32_BAND R2 R5 ; [+4]
       62 MOVE                             R4 R2
       63 GETIMPORT                        R3 K9 [bit32.band]
       65 CALL                             R3 2 1
       66 GETUPVAL                         R4 6
       67 GETTABLEKS                       R4 R4 K10 ["NoFlags"]
       69 JUMPIFEQ                         R3 R4 ; [+10]
       71 GETUPVAL                         R3 10
       72 JUMPIF                           R3 ; [+7]
       73 LOADB                            R3 1
       74 SETUPVAL                         R3 10
       75 GETUPVAL                         R3 11
       76 GETUPVAL                         R4 12
       77 DUPCLOSURE                       R5 K12 [PROTO_72]
       78 CAPTURE                          UPVAL U13
       79 CALL                             R3 2 0
       80 RETURN                           R0 0

PROTO_74:
        0 LOADN                            R3 1
        1 LENGTH                           R1 R0
        2 LOADN                            R2 1
        3 FORNPREP                         R1
        4 GETTABLE                         R4 R0 R3
        5 GETUPVAL                         R5 0
        6 MOVE                             R6 R4
        7 GETUPVAL                         R7 1
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+6]
       10 LOADB                            R5 1
       11 SETUPVAL                         R5 2
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K0 ["beforeActiveInstanceBlur"]
       15 CALL                             R5 0 0
       16 FORNLOOP                         R1
       17 RETURN                           R0 0

PROTO_75:
        0 MOVE                             R3 R0
        1 JUMPIFEQKNIL                     R3 ; [+128]
        3 GETTABLEKS                       R4 R3 K0 ["deletions"]
        5 JUMPIFEQKNIL                     R4 ; [+24]
        7 GETIMPORT                        R5 K2 [ipairs]
        9 MOVE                             R6 R4
       10 CALL                             R5 1 3
       11 FORGPREP_INEXT                   R5
       12 GETIMPORT                        R10 K4 [pcall]
       14 GETUPVAL                         R11 0
       15 MOVE                             R12 R1
       16 MOVE                             R13 R9
       17 MOVE                             R14 R3
       18 MOVE                             R15 R2
       19 CALL                             R10 5 2
       20 JUMPIF                           R10 ; [+7]
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R12 R12 K5 ["captureCommitPhaseError"]
       24 MOVE                             R13 R9
       25 MOVE                             R14 R3
       26 MOVE                             R15 R11
       27 CALL                             R12 3 0
       28 FORGLOOP                         R5 2 [inext] ; [-17]
       30 GETTABLEKS                       R5 R3 K6 ["child"]
       32 JUMPIFEQKNIL                     R5 ; [+24]
       34 GETTABLEKS                       R6 R3 K7 ["subtreeFlags"]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K8 ["MutationMask"]
       39 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       41 GETIMPORT                        R5 K11 [bit32.band]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R6 2
       45 GETTABLEKS                       R6 R6 K12 ["NoFlags"]
       47 JUMPIFEQ                         R5 R6 ; [+9]
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R6 R6 K13 ["commitMutationEffects"]
       52 GETTABLEKS                       R7 R3 K6 ["child"]
       54 MOVE                             R8 R1
       55 MOVE                             R9 R2
       56 CALL                             R6 3 0
       57 GETIMPORT                        R5 K15 [_G]
       59 GETTABLEKS                       R5 R5 K16 ["__DEV__"]
       61 JUMPIFNOT                        R5 ; [+29]
       62 GETUPVAL                         R5 4
       63 MOVE                             R6 R3
       64 CALL                             R5 1 0
       65 GETUPVAL                         R5 5
       66 LOADNIL                          R6
       67 GETUPVAL                         R7 3
       68 GETTABLEKS                       R7 R7 K17 ["commitMutationEffectsImpl"]
       70 LOADNIL                          R8
       71 MOVE                             R9 R3
       72 MOVE                             R10 R1
       73 MOVE                             R11 R2
       74 CALL                             R5 6 0
       75 GETUPVAL                         R5 6
       76 CALL                             R5 0 1
       77 JUMPIFNOT                        R5 ; [+10]
       78 GETUPVAL                         R5 7
       79 CALL                             R5 0 1
       80 GETUPVAL                         R6 1
       81 GETTABLEKS                       R6 R6 K5 ["captureCommitPhaseError"]
       83 MOVE                             R7 R3
       84 GETTABLEKS                       R8 R3 K18 ["return_"]
       86 MOVE                             R9 R5
       87 CALL                             R6 3 0
       88 GETUPVAL                         R5 8
       89 CALL                             R5 0 0
       90 JUMP                             ; [+36]
       91 LOADNIL                          R5
       92 LOADNIL                          R6
       93 GETIMPORT                        R7 K15 [_G]
       95 GETTABLEKS                       R7 R7 K19 ["__YOLO__"]
       97 JUMPIF                           R7 ; [+12]
       98 GETIMPORT                        R7 K4 [pcall]
      100 GETUPVAL                         R8 3
      101 GETTABLEKS                       R8 R8 K17 ["commitMutationEffectsImpl"]
      103 MOVE                             R9 R3
      104 MOVE                             R10 R1
      105 MOVE                             R11 R2
      106 CALL                             R7 4 2
      107 MOVE                             R5 R7
      108 MOVE                             R6 R8
      109 JUMP                             ; [+8]
      110 LOADB                            R5 1
      111 GETUPVAL                         R7 3
      112 GETTABLEKS                       R7 R7 K17 ["commitMutationEffectsImpl"]
      114 MOVE                             R8 R3
      115 MOVE                             R9 R1
      116 MOVE                             R10 R2
      117 CALL                             R7 3 0
      118 JUMPIF                           R5 ; [+8]
      119 GETUPVAL                         R7 1
      120 GETTABLEKS                       R7 R7 K5 ["captureCommitPhaseError"]
      122 MOVE                             R8 R3
      123 GETTABLEKS                       R9 R3 K18 ["return_"]
      125 MOVE                             R10 R6
      126 CALL                             R7 3 0
      127 GETTABLEKS                       R3 R3 K20 ["sibling"]
      129 JUMPBACK                         ; [-129]
      130 RETURN                           R0 0

PROTO_76:
        0 GETTABLEKS                       R3 R0 K0 ["flags"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["Ref"]
        5 FASTCALL2                        BIT32_BAND R3 R6 ; [+4]
        7 MOVE                             R5 R3
        8 GETIMPORT                        R4 K4 [bit32.band]
       10 CALL                             R4 2 1
       11 JUMPIFEQKN                       R4 K5 [0] ; [+8]
       13 GETTABLEKS                       R4 R0 K6 ["alternate"]
       15 JUMPIFEQKNIL                     R4 ; [+4]
       17 GETUPVAL                         R5 1
       18 MOVE                             R6 R4
       19 CALL                             R5 1 0
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K7 ["Placement"]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K8 ["Update"]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K9 ["Hydrating"]
       29 FASTCALL                         BIT32_BOR ; [+2]
       30 GETIMPORT                        R6 K11 [bit32.bor]
       32 CALL                             R6 3 1
       33 FASTCALL2                        BIT32_BAND R3 R6 ; [+4]
       35 MOVE                             R5 R3
       36 GETIMPORT                        R4 K4 [bit32.band]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K7 ["Placement"]
       42 JUMPIFNOTEQ                      R4 R5 ; [+21]
       44 GETUPVAL                         R5 2
       45 MOVE                             R6 R0
       46 CALL                             R5 1 0
       47 GETTABLEKS                       R6 R0 K0 ["flags"]
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K7 ["Placement"]
       52 FASTCALL1                        BIT32_BNOT R8 ; [+2]
       53 GETIMPORT                        R7 K13 [bit32.bnot]
       55 CALL                             R7 1 1
       56 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       58 GETIMPORT                        R5 K4 [bit32.band]
       60 CALL                             R5 2 1
       61 SETTABLEKS                       R5 R0 K0 ["flags"]
       63 RETURN                           R0 0
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R5 R5 K14 ["PlacementAndUpdate"]
       67 JUMPIFNOTEQ                      R4 R5 ; [+27]
       69 GETUPVAL                         R5 2
       70 MOVE                             R6 R0
       71 CALL                             R5 1 0
       72 GETTABLEKS                       R6 R0 K0 ["flags"]
       74 GETUPVAL                         R8 0
       75 GETTABLEKS                       R8 R8 K7 ["Placement"]
       77 FASTCALL1                        BIT32_BNOT R8 ; [+2]
       78 GETIMPORT                        R7 K13 [bit32.bnot]
       80 CALL                             R7 1 1
       81 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       83 GETIMPORT                        R5 K4 [bit32.band]
       85 CALL                             R5 2 1
       86 SETTABLEKS                       R5 R0 K0 ["flags"]
       88 GETTABLEKS                       R5 R0 K6 ["alternate"]
       90 GETUPVAL                         R6 3
       91 MOVE                             R7 R5
       92 MOVE                             R8 R0
       93 CALL                             R6 2 0
       94 RETURN                           R0 0
       95 GETUPVAL                         R5 0
       96 GETTABLEKS                       R5 R5 K8 ["Update"]
       98 JUMPIFNOTEQ                      R4 R5 ; [+7]
      100 GETTABLEKS                       R5 R0 K6 ["alternate"]
      102 GETUPVAL                         R6 3
      103 MOVE                             R7 R5
      104 MOVE                             R8 R0
      105 CALL                             R6 2 0
      106 RETURN                           R0 0

PROTO_77:
        0 GETIMPORT                        R4 K1 [ipairs]
        2 MOVE                             R5 R0
        3 CALL                             R4 1 3
        4 FORGPREP_INEXT                   R4
        5 GETIMPORT                        R9 K3 [pcall]
        7 GETUPVAL                         R10 0
        8 MOVE                             R11 R2
        9 MOVE                             R12 R8
       10 MOVE                             R13 R1
       11 MOVE                             R14 R3
       12 CALL                             R9 5 2
       13 JUMPIF                           R9 ; [+7]
       14 GETUPVAL                         R11 1
       15 GETTABLEKS                       R11 R11 K4 ["captureCommitPhaseError"]
       17 MOVE                             R12 R8
       18 MOVE                             R13 R1
       19 MOVE                             R14 R10
       20 CALL                             R11 3 0
       21 FORGLOOP                         R4 2 [inext] ; [-17]
       23 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["flushPassiveEffects"]
        3 CALL                             R0 0 0
        4 LOADNIL                          R0
        5 RETURN                           R0 1

PROTO_79:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+7]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 DUPCLOSURE                       R2 K0 [PROTO_78]
        7 CAPTURE                          UPVAL U3
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_80:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQ                         R0 R1 ; [+63]
        4 LOADNIL                          R0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 JUMPIFNOTLT                      R2 R1 ; [+3]
        9 GETUPVAL                         R0 2
       10 JUMP                             ; [+1]
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R1 1
       13 SETUPVAL                         R1 0
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K0 ["decoupleUpdatePriorityFromScheduler"]
       17 JUMPIFNOT                        R1 ; [+43]
       18 GETUPVAL                         R1 4
       19 CALL                             R1 0 1
       20 GETUPVAL                         R2 5
       21 GETUPVAL                         R3 6
       22 MOVE                             R4 R0
       23 CALL                             R3 1 -1
       24 CALL                             R2 -1 0
       25 LOADNIL                          R2
       26 LOADNIL                          R3
       27 GETIMPORT                        R4 K2 [_G]
       29 GETTABLEKS                       R4 R4 K3 ["__YOLO__"]
       31 JUMPIF                           R4 ; [+9]
       32 GETIMPORT                        R4 K5 [pcall]
       34 GETUPVAL                         R5 7
       35 MOVE                             R6 R0
       36 GETUPVAL                         R7 8
       37 CALL                             R4 3 2
       38 MOVE                             R2 R4
       39 MOVE                             R3 R5
       40 JUMP                             ; [+11]
       41 LOADB                            R2 1
       42 GETUPVAL                         R4 5
       43 GETUPVAL                         R5 6
       44 MOVE                             R6 R0
       45 CALL                             R5 1 -1
       46 CALL                             R4 -1 0
       47 GETUPVAL                         R4 7
       48 MOVE                             R5 R0
       49 GETUPVAL                         R6 8
       50 CALL                             R4 2 1
       51 MOVE                             R3 R4
       52 GETUPVAL                         R4 5
       53 MOVE                             R5 R1
       54 CALL                             R4 1 0
       55 JUMPIF                           R2 ; [+4]
       56 GETIMPORT                        R4 K7 [error]
       58 MOVE                             R5 R3
       59 CALL                             R4 1 0
       60 RETURN                           R3 1
       61 GETUPVAL                         R1 7
       62 MOVE                             R2 R0
       63 GETUPVAL                         R3 8
       64 CALL                             R1 2 -1
       65 RETURN                           R1 -1
       66 LOADB                            R0 0
       67 RETURN                           R0 1

PROTO_81:
        0 MOVE                             R2 R1
        1 JUMPIFEQKNIL                     R2 ; [+151]
        3 LOADNIL                          R3
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["enableProfilerTimer"]
        7 JUMPIFNOT                        R4 ; [+13]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["enableProfilerCommitHooks"]
       11 JUMPIFNOT                        R4 ; [+9]
       12 GETTABLEKS                       R4 R2 K2 ["tag"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K3 ["Profiler"]
       17 JUMPIFNOTEQ                      R4 R5 ; [+3]
       19 GETUPVAL                         R3 2
       20 SETUPVAL                         R2 2
       21 GETTABLEKS                       R5 R2 K4 ["subtreeFlags"]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K5 ["PassiveMask"]
       26 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       28 GETIMPORT                        R4 K8 [bit32.band]
       30 CALL                             R4 2 1
       31 GETTABLEKS                       R5 R2 K9 ["child"]
       33 JUMPIFEQKNIL                     R5 ; [+11]
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R5 R5 K10 ["NoFlags"]
       38 JUMPIFEQ                         R4 R5 ; [+6]
       40 GETUPVAL                         R5 4
       41 MOVE                             R6 R0
       42 GETTABLEKS                       R7 R2 K9 ["child"]
       44 CALL                             R5 2 0
       45 GETTABLEKS                       R6 R2 K11 ["flags"]
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R7 R7 K12 ["Passive"]
       50 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       52 GETIMPORT                        R5 K8 [bit32.band]
       54 CALL                             R5 2 1
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R6 R6 K10 ["NoFlags"]
       58 JUMPIFEQ                         R5 R6 ; [+62]
       60 GETIMPORT                        R5 K14 [_G]
       62 GETTABLEKS                       R5 R5 K15 ["__DEV__"]
       64 JUMPIFNOT                        R5 ; [+26]
       65 GETUPVAL                         R5 5
       66 MOVE                             R6 R2
       67 CALL                             R5 1 0
       68 GETUPVAL                         R5 6
       69 LOADNIL                          R6
       70 GETUPVAL                         R7 7
       71 LOADNIL                          R8
       72 MOVE                             R9 R0
       73 MOVE                             R10 R2
       74 CALL                             R5 5 0
       75 GETUPVAL                         R5 8
       76 CALL                             R5 0 1
       77 JUMPIFNOT                        R5 ; [+10]
       78 GETUPVAL                         R5 9
       79 CALL                             R5 0 1
       80 GETUPVAL                         R6 10
       81 GETTABLEKS                       R6 R6 K16 ["captureCommitPhaseError"]
       83 MOVE                             R7 R2
       84 GETTABLEKS                       R8 R2 K17 ["return_"]
       86 MOVE                             R9 R5
       87 CALL                             R6 3 0
       88 GETUPVAL                         R5 11
       89 CALL                             R5 0 0
       90 JUMP                             ; [+30]
       91 LOADNIL                          R5
       92 LOADNIL                          R6
       93 GETIMPORT                        R7 K14 [_G]
       95 GETTABLEKS                       R7 R7 K18 ["__YOLO__"]
       97 JUMPIF                           R7 ; [+9]
       98 GETIMPORT                        R7 K20 [pcall]
      100 GETUPVAL                         R8 7
      101 MOVE                             R9 R0
      102 MOVE                             R10 R2
      103 CALL                             R7 3 2
      104 MOVE                             R5 R7
      105 MOVE                             R6 R8
      106 JUMP                             ; [+5]
      107 LOADB                            R5 1
      108 GETUPVAL                         R7 7
      109 MOVE                             R8 R0
      110 MOVE                             R9 R2
      111 CALL                             R7 2 0
      112 JUMPIF                           R5 ; [+8]
      113 GETUPVAL                         R7 10
      114 GETTABLEKS                       R7 R7 K16 ["captureCommitPhaseError"]
      116 MOVE                             R8 R2
      117 GETTABLEKS                       R9 R2 K17 ["return_"]
      119 MOVE                             R10 R6
      120 CALL                             R7 3 0
      121 GETUPVAL                         R5 0
      122 GETTABLEKS                       R5 R5 K0 ["enableProfilerTimer"]
      124 JUMPIFNOT                        R5 ; [+25]
      125 GETUPVAL                         R5 0
      126 GETTABLEKS                       R5 R5 K1 ["enableProfilerCommitHooks"]
      128 JUMPIFNOT                        R5 ; [+21]
      129 GETTABLEKS                       R5 R2 K2 ["tag"]
      131 GETUPVAL                         R6 1
      132 GETTABLEKS                       R6 R6 K3 ["Profiler"]
      134 JUMPIFNOTEQ                      R5 R6 ; [+15]
      136 JUMPIFEQKNIL                     R3 ; [+12]
      138 GETTABLEKS                       R5 R3 K21 ["stateNode"]
      140 GETTABLEKS                       R6 R5 K22 ["passiveEffectDuration"]
      142 GETTABLEKS                       R7 R2 K21 ["stateNode"]
      144 GETTABLEKS                       R7 R7 K22 ["passiveEffectDuration"]
      146 ADD                              R6 R6 R7
      147 SETTABLEKS                       R6 R5 K22 ["passiveEffectDuration"]
      149 SETUPVAL                         R3 2
      150 GETTABLEKS                       R2 R2 K23 ["sibling"]
      152 JUMPBACK                         ; [-152]
      153 RETURN                           R0 0

PROTO_82:
        0 MOVE                             R1 R0
        1 JUMPIFEQKNIL                     R1 ; [+70]
        3 GETTABLEKS                       R2 R1 K0 ["deletions"]
        5 JUMPIFEQKNIL                     R2 ; [+18]
        7 LOADN                            R5 1
        8 LENGTH                           R3 R2
        9 LOADN                            R4 1
       10 FORNPREP                         R3
       11 GETTABLE                         R6 R2 R5
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K1 ["flushPassiveUnmountEffectsInsideOfDeletedTree"]
       15 MOVE                             R8 R6
       16 MOVE                             R9 R1
       17 CALL                             R7 2 0
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K2 ["detachFiberAfterEffects"]
       21 MOVE                             R8 R6
       22 CALL                             R7 1 0
       23 FORNLOOP                         R3
       24 GETTABLEKS                       R3 R1 K3 ["child"]
       26 JUMPIFEQKNIL                     R3 ; [+19]
       28 GETTABLEKS                       R5 R1 K4 ["subtreeFlags"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K5 ["PassiveMask"]
       33 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       35 GETIMPORT                        R4 K8 [bit32.band]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K9 ["NoFlags"]
       41 JUMPIFEQ                         R4 R5 ; [+4]
       43 GETUPVAL                         R5 2
       44 MOVE                             R6 R3
       45 CALL                             R5 1 0
       46 GETTABLEKS                       R5 R1 K10 ["flags"]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K11 ["Passive"]
       51 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       53 GETIMPORT                        R4 K8 [bit32.band]
       55 CALL                             R4 2 1
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R5 R5 K9 ["NoFlags"]
       59 JUMPIFEQ                         R4 R5 ; [+9]
       61 GETUPVAL                         R5 3
       62 MOVE                             R6 R1
       63 CALL                             R5 1 0
       64 GETUPVAL                         R5 4
       65 MOVE                             R6 R1
       66 CALL                             R5 1 0
       67 GETUPVAL                         R5 5
       68 CALL                             R5 0 0
       69 GETTABLEKS                       R1 R1 K12 ["sibling"]
       71 JUMPBACK                         ; [-71]
       72 RETURN                           R0 0

PROTO_83:
        0 GETTABLEKS                       R3 R0 K0 ["subtreeFlags"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["PassiveStatic"]
        5 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
        7 GETIMPORT                        R2 K4 [bit32.band]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K5 ["NoFlags"]
       13 JUMPIFEQ                         R2 R3 ; [+14]
       15 GETTABLEKS                       R2 R0 K6 ["child"]
       17 JUMPIFEQKNIL                     R2 ; [+10]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K7 ["flushPassiveUnmountEffectsInsideOfDeletedTree"]
       22 MOVE                             R4 R2
       23 MOVE                             R5 R1
       24 CALL                             R3 2 0
       25 GETTABLEKS                       R2 R2 K8 ["sibling"]
       27 JUMPBACK                         ; [-11]
       28 GETTABLEKS                       R3 R0 K9 ["flags"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K1 ["PassiveStatic"]
       33 FASTCALL2                        BIT32_BAND R3 R4 ; [+3]
       35 GETIMPORT                        R2 K4 [bit32.band]
       37 CALL                             R2 2 1
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K5 ["NoFlags"]
       41 JUMPIFEQ                         R2 R3 ; [+10]
       43 GETUPVAL                         R2 2
       44 MOVE                             R3 R0
       45 CALL                             R2 1 0
       46 GETUPVAL                         R2 3
       47 MOVE                             R3 R0
       48 MOVE                             R4 R1
       49 CALL                             R2 2 0
       50 GETUPVAL                         R2 4
       51 CALL                             R2 0 0
       52 RETURN                           R0 0

PROTO_84:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R1 1
        7 LOADNIL                          R2
        8 SETUPVAL                         R2 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["NoLanes"]
       12 SETUPVAL                         R2 1
       13 GETUPVAL                         R2 3
       14 GETUPVAL                         R5 4
       15 FASTCALL2K                       BIT32_BAND R5 K1 ; [+4]
       17 LOADK                            R6 K1 [48]
       18 GETIMPORT                        R4 K4 [bit32.band]
       20 CALL                             R4 2 1
       21 JUMPIFEQKN                       R4 K5 [0] ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 LOADK                            R4 K6 ["Cannot flush passive effects while already rendering."]
       26 CALL                             R2 2 0
       27 GETIMPORT                        R2 K8 [_G]
       29 GETTABLEKS                       R2 R2 K9 ["__DEV__"]
       31 JUMPIFNOT                        R2 ; [+9]
       32 GETUPVAL                         R2 5
       33 GETTABLEKS                       R2 R2 K10 ["enableDebugTracing"]
       35 JUMPIFNOT                        R2 ; [+5]
       36 GETUPVAL                         R2 6
       37 GETTABLEKS                       R2 R2 K11 ["logPassiveEffectsStarted"]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 GETUPVAL                         R2 5
       42 GETTABLEKS                       R2 R2 K12 ["enableSchedulingProfiler"]
       44 JUMPIFNOT                        R2 ; [+5]
       45 GETUPVAL                         R2 7
       46 GETTABLEKS                       R2 R2 K13 ["markPassiveEffectsStarted"]
       48 MOVE                             R3 R1
       49 CALL                             R2 1 0
       50 GETUPVAL                         R2 4
       51 GETUPVAL                         R4 4
       52 FASTCALL2K                       BIT32_BOR R4 K14 ; [+4]
       54 LOADK                            R5 K14 [32]
       55 GETIMPORT                        R3 K16 [bit32.bor]
       57 CALL                             R3 2 1
       58 SETUPVAL                         R3 4
       59 GETUPVAL                         R3 8
       60 GETTABLEKS                       R3 R3 K17 ["pushInteractions"]
       62 MOVE                             R4 R0
       63 CALL                             R3 1 1
       64 GETUPVAL                         R4 9
       65 GETTABLEKS                       R5 R0 K18 ["current"]
       67 CALL                             R4 1 0
       68 GETUPVAL                         R4 10
       69 MOVE                             R5 R0
       70 GETTABLEKS                       R6 R0 K18 ["current"]
       72 CALL                             R4 2 0
       73 GETIMPORT                        R4 K8 [_G]
       75 GETTABLEKS                       R4 R4 K9 ["__DEV__"]
       77 JUMPIFNOT                        R4 ; [+8]
       78 GETUPVAL                         R4 5
       79 GETTABLEKS                       R4 R4 K10 ["enableDebugTracing"]
       81 JUMPIFNOT                        R4 ; [+4]
       82 GETUPVAL                         R4 6
       83 GETTABLEKS                       R4 R4 K19 ["logPassiveEffectsStopped"]
       85 CALL                             R4 0 0
       86 GETUPVAL                         R4 5
       87 GETTABLEKS                       R4 R4 K12 ["enableSchedulingProfiler"]
       89 JUMPIFNOT                        R4 ; [+4]
       90 GETUPVAL                         R4 7
       91 GETTABLEKS                       R4 R4 K20 ["markPassiveEffectsStopped"]
       93 CALL                             R4 0 0
       94 GETIMPORT                        R4 K8 [_G]
       96 GETTABLEKS                       R4 R4 K9 ["__DEV__"]
       98 JUMPIFNOT                        R4 ; [+8]
       99 GETUPVAL                         R4 11
      100 JUMPIFNOT                        R4 ; [+6]
      101 GETGLOBAL                        R4 K21 ["commitDoubleInvokeEffectsInDEV"]
      103 GETTABLEKS                       R5 R0 K18 ["current"]
      105 LOADB                            R6 1
      106 CALL                             R4 2 0
      107 GETUPVAL                         R4 5
      108 GETTABLEKS                       R4 R4 K22 ["enableSchedulerTracing"]
      110 JUMPIFNOT                        R4 ; [+11]
      111 GETUPVAL                         R4 8
      112 GETTABLEKS                       R4 R4 K23 ["popInteractions"]
      114 MOVE                             R5 R3
      115 CALL                             R4 1 0
      116 GETUPVAL                         R4 8
      117 GETTABLEKS                       R4 R4 K24 ["finishPendingInteractions"]
      119 MOVE                             R5 R0
      120 MOVE                             R6 R1
      121 CALL                             R4 2 0
      122 SETUPVAL                         R2 4
      123 GETUPVAL                         R4 12
      124 CALL                             R4 0 0
      125 GETUPVAL                         R4 0
      126 JUMPIFNOTEQKNIL                  R4 ; [+4]
      128 LOADN                            R4 0
      129 SETUPVAL                         R4 13
      130 JUMP                             ; [+3]
      131 GETUPVAL                         R5 13
      132 ADDK                             R4 R5 K25 [1]
      133 SETUPVAL                         R4 13
      134 LOADB                            R4 1
      135 RETURN                           R4 1

PROTO_85:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 JUMPIFEQKNIL                     R2 ; [+3]
        4 GETUPVAL                         R2 0
        5 GETTABLE                         R1 R2 R0
        6 RETURN                           R1 1

PROTO_86:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+7]
        3 NEWTABLE                         R1 1 0
        5 LOADB                            R2 1
        6 SETTABLE                         R2 R1 R0
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 0
       10 LOADB                            R2 1
       11 SETTABLE                         R2 R1 R0
       12 RETURN                           R0 0

PROTO_87:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 LOADB                            R1 1
        3 SETUPVAL                         R1 0
        4 SETUPVAL                         R0 1
        5 RETURN                           R0 0

PROTO_88:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 MOVE                             R6 R3
        7 GETUPVAL                         R7 2
        8 GETUPVAL                         R8 3
        9 GETTABLEKS                       R8 R8 K0 ["onUncaughtError"]
       11 CALL                             R4 4 1
       12 GETUPVAL                         R5 4
       13 MOVE                             R6 R0
       14 MOVE                             R7 R4
       15 CALL                             R5 2 0
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K1 ["requestEventTime"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R6 R6 K2 ["markUpdateLaneFromFiberToRoot"]
       23 MOVE                             R7 R0
       24 GETUPVAL                         R8 2
       25 CALL                             R6 2 1
       26 JUMPIFEQKNIL                     R6 ; [+16]
       28 GETUPVAL                         R7 6
       29 MOVE                             R8 R6
       30 GETUPVAL                         R9 2
       31 MOVE                             R10 R5
       32 CALL                             R7 3 0
       33 GETUPVAL                         R7 7
       34 MOVE                             R8 R6
       35 MOVE                             R9 R5
       36 CALL                             R7 2 0
       37 GETUPVAL                         R7 5
       38 GETTABLEKS                       R7 R7 K3 ["schedulePendingInteractions"]
       40 MOVE                             R8 R6
       41 GETUPVAL                         R9 2
       42 CALL                             R7 2 0
       43 RETURN                           R0 0

PROTO_89:
        0 GETTABLEKS                       R3 R0 K0 ["tag"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["HostRoot"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+7]
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 MOVE                             R5 R0
       10 MOVE                             R6 R2
       11 CALL                             R3 3 0
       12 RETURN                           R0 0
       13 LOADNIL                          R3
       14 GETUPVAL                         R4 2
       15 JUMPIFNOT                        R4 ; [+2]
       16 MOVE                             R3 R1
       17 JUMP                             ; [+2]
       18 GETTABLEKS                       R3 R0 K2 ["return_"]
       20 JUMPIFEQKNIL                     R3 ; [+91]
       22 GETTABLEKS                       R4 R3 K0 ["tag"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K1 ["HostRoot"]
       27 JUMPIFNOTEQ                      R4 R5 ; [+7]
       29 GETUPVAL                         R4 1
       30 MOVE                             R5 R3
       31 MOVE                             R6 R0
       32 MOVE                             R7 R2
       33 CALL                             R4 3 0
       34 RETURN                           R0 0
       35 GETTABLEKS                       R4 R3 K0 ["tag"]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K3 ["ClassComponent"]
       40 JUMPIFNOTEQ                      R4 R5 ; [+68]
       42 GETTABLEKS                       R4 R3 K4 ["type"]
       44 GETTABLEKS                       R5 R3 K5 ["stateNode"]
       46 GETTABLEKS                       R7 R4 K6 ["getDerivedStateFromError"]
       48 FASTCALL1                        TYPEOF R7 ; [+2]
       49 GETIMPORT                        R6 K8 [typeof]
       51 CALL                             R6 1 1
       52 JUMPIFEQKS                       R6 K9 ["function"] ; [+15]
       54 GETTABLEKS                       R7 R5 K10 ["componentDidCatch"]
       56 FASTCALL1                        TYPEOF R7 ; [+2]
       57 GETIMPORT                        R6 K8 [typeof]
       59 CALL                             R6 1 1
       60 JUMPIFNOTEQKS                    R6 K9 ["function"] ; [+48]
       62 GETUPVAL                         R6 3
       63 GETTABLEKS                       R6 R6 K11 ["isAlreadyFailedLegacyErrorBoundary"]
       65 MOVE                             R7 R5
       66 CALL                             R6 1 1
       67 JUMPIF                           R6 ; [+41]
       68 GETUPVAL                         R6 4
       69 MOVE                             R7 R2
       70 MOVE                             R8 R0
       71 CALL                             R6 2 1
       72 GETUPVAL                         R7 5
       73 MOVE                             R8 R3
       74 MOVE                             R9 R6
       75 GETUPVAL                         R10 6
       76 CALL                             R7 3 1
       77 GETUPVAL                         R8 7
       78 MOVE                             R9 R3
       79 MOVE                             R10 R7
       80 CALL                             R8 2 0
       81 GETUPVAL                         R8 3
       82 GETTABLEKS                       R8 R8 K12 ["requestEventTime"]
       84 CALL                             R8 0 1
       85 GETUPVAL                         R9 8
       86 GETTABLEKS                       R9 R9 K13 ["markUpdateLaneFromFiberToRoot"]
       88 MOVE                             R10 R3
       89 GETUPVAL                         R11 6
       90 CALL                             R9 2 1
       91 JUMPIFEQKNIL                     R9 ; [+16]
       93 GETUPVAL                         R10 9
       94 MOVE                             R11 R9
       95 GETUPVAL                         R12 6
       96 MOVE                             R13 R8
       97 CALL                             R10 3 0
       98 GETUPVAL                         R10 10
       99 MOVE                             R11 R9
      100 MOVE                             R12 R8
      101 CALL                             R10 2 0
      102 GETUPVAL                         R10 8
      103 GETTABLEKS                       R10 R10 K14 ["schedulePendingInteractions"]
      105 MOVE                             R11 R9
      106 GETUPVAL                         R12 6
      107 CALL                             R10 2 0
      108 RETURN                           R0 0
      109 GETTABLEKS                       R3 R3 K2 ["return_"]
      111 JUMPBACK                         ; [-92]
      112 RETURN                           R0 0

PROTO_90:
        0 GETTABLEKS                       R3 R0 K0 ["pingCache"]
        2 JUMPIFEQKNIL                     R3 ; [+3]
        4 LOADNIL                          R4
        5 SETTABLE                         R4 R3 R1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["requestEventTime"]
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R0
       12 MOVE                             R7 R2
       13 MOVE                             R8 R4
       14 CALL                             R5 3 0
       15 GETUPVAL                         R5 2
       16 JUMPIFNOTEQ                      R5 R0 ; [+37]
       18 GETUPVAL                         R5 3
       19 GETUPVAL                         R6 4
       20 MOVE                             R7 R2
       21 CALL                             R5 2 1
       22 JUMPIFNOT                        R5 ; [+31]
       23 GETUPVAL                         R5 5
       24 JUMPIFEQKN                       R5 K2 [4] ; [+15]
       26 GETUPVAL                         R5 5
       27 JUMPIFNOTEQKN                    R5 K3 [3] ; [+21]
       29 GETUPVAL                         R5 6
       30 GETUPVAL                         R6 4
       31 CALL                             R5 1 1
       32 JUMPIFNOT                        R5 ; [+16]
       33 GETUPVAL                         R6 7
       34 CALL                             R6 0 1
       35 GETUPVAL                         R7 8
       36 SUB                              R5 R6 R7
       37 LOADN                            R6 500
       38 JUMPIFNOTLT                      R5 R6 ; [+10]
       40 GETUPVAL                         R5 9
       41 GETTABLEKS                       R5 R5 K4 ["prepareFreshStack"]
       43 MOVE                             R6 R0
       44 GETUPVAL                         R7 10
       45 GETTABLEKS                       R7 R7 K5 ["NoLanes"]
       47 CALL                             R5 2 0
       48 JUMP                             ; [+5]
       49 GETUPVAL                         R5 12
       50 GETUPVAL                         R6 11
       51 MOVE                             R7 R2
       52 CALL                             R5 2 1
       53 SETUPVAL                         R5 11
       54 GETUPVAL                         R5 13
       55 MOVE                             R6 R0
       56 MOVE                             R7 R4
       57 CALL                             R5 2 0
       58 GETUPVAL                         R5 9
       59 GETTABLEKS                       R5 R5 K6 ["schedulePendingInteractions"]
       61 MOVE                             R6 R0
       62 MOVE                             R7 R2
       63 CALL                             R5 2 0
       64 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NoLane"]
        3 JUMPIFNOTEQ                      R1 R2 ; [+6]
        5 GETGLOBAL                        R2 K1 ["requestRetryLane"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 MOVE                             R1 R2
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["requestEventTime"]
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K3 ["markUpdateLaneFromFiberToRoot"]
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 CALL                             R3 2 1
       20 JUMPIFEQKNIL                     R3 ; [+16]
       22 GETUPVAL                         R4 3
       23 MOVE                             R5 R3
       24 MOVE                             R6 R1
       25 MOVE                             R7 R2
       26 CALL                             R4 3 0
       27 GETUPVAL                         R4 4
       28 MOVE                             R5 R3
       29 MOVE                             R6 R2
       30 CALL                             R4 2 0
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K4 ["schedulePendingInteractions"]
       34 MOVE                             R5 R3
       35 MOVE                             R6 R1
       36 CALL                             R4 2 0
       37 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NoLane"]
        3 LOADNIL                          R3
        4 GETTABLEKS                       R3 R0 K1 ["stateNode"]
        6 JUMPIFEQKNIL                     R3 ; [+5]
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R3 K2 ["delete"]
       11 CALL                             R4 2 0
       12 GETGLOBAL                        R4 K3 ["retryTimedOutBoundary"]
       14 MOVE                             R5 R0
       15 MOVE                             R6 R2
       16 CALL                             R4 2 0
       17 RETURN                           R0 0

PROTO_93:
        0 LOADN                            R1 120
        1 JUMPIFNOTLT                      R0 R1 ; [+3]
        3 LOADN                            R1 120
        4 RETURN                           R1 1
        5 LOADN                            R1 480
        6 JUMPIFNOTLT                      R0 R1 ; [+3]
        8 LOADN                            R1 480
        9 RETURN                           R1 1
       10 LOADN                            R1 1080
       11 JUMPIFNOTLT                      R0 R1 ; [+3]
       13 LOADN                            R1 1080
       14 RETURN                           R1 1
       15 LOADN                            R1 1920
       16 JUMPIFNOTLT                      R0 R1 ; [+3]
       18 LOADN                            R1 1920
       19 RETURN                           R1 1
       20 LOADN                            R1 3000
       21 JUMPIFNOTLT                      R0 R1 ; [+3]
       23 LOADN                            R1 3000
       24 RETURN                           R1 1
       25 LOADN                            R1 4320
       26 JUMPIFNOTLT                      R0 R1 ; [+3]
       28 LOADN                            R1 4320
       29 RETURN                           R1 1
       30 DIVK                             R3 R0 K0 [1960]
       31 FASTCALL1                        MATH_CEIL R3 ; [+2]
       32 GETIMPORT                        R2 K3 [math.ceil]
       34 CALL                             R2 1 1
       35 MULK                             R1 R2 K0 [1960]
       36 RETURN                           R1 1

PROTO_94:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 50
        2 JUMPIFNOTLT                      R1 R0 ; [+9]
        4 LOADN                            R0 0
        5 SETUPVAL                         R0 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 1
        8 GETUPVAL                         R0 2
        9 LOADB                            R1 0
       10 LOADK                            R2 K0 ["Maximum update depth exceeded. This can happen when a component repeatedly calls setState inside componentWillUpdate or componentDidUpdate. React limits the number of nested updates to prevent infinite loops."]
       11 CALL                             R0 2 0
       12 GETIMPORT                        R0 K2 [_G]
       14 GETTABLEKS                       R0 R0 K3 ["__DEV__"]
       16 JUMPIFNOT                        R0 ; [+11]
       17 GETUPVAL                         R0 3
       18 LOADN                            R1 50
       19 JUMPIFNOTLT                      R1 R0 ; [+8]
       21 LOADN                            R0 0
       22 SETUPVAL                         R0 3
       23 GETUPVAL                         R0 4
       24 GETTABLEKS                       R0 R0 K4 ["error"]
       26 LOADK                            R1 K5 ["Maximum update depth exceeded. This can happen when a component calls setState inside useEffect, but useEffect either doesn't have a dependency array, or one of the dependencies changes on every render."]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_95:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+12]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K3 ["flushLegacyContextWarning"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K4 ["warnAboutDeprecatedLifecycles"]
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K5 ["flushPendingUnsafeLifecycleWarnings"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_96:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+41]
        5 GETUPVAL                         R2 0
        6 JUMPIFNOT                        R2 ; [+39]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 GETGLOBAL                        R2 K3 ["invokeEffectsInDev"]
       12 MOVE                             R3 R0
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K4 ["MountLayoutDev"]
       16 GETUPVAL                         R5 3
       17 CALL                             R2 3 0
       18 JUMPIFNOT                        R1 ; [+8]
       19 GETGLOBAL                        R2 K3 ["invokeEffectsInDev"]
       21 MOVE                             R3 R0
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K5 ["MountPassiveDev"]
       25 GETUPVAL                         R5 4
       26 CALL                             R2 3 0
       27 GETGLOBAL                        R2 K3 ["invokeEffectsInDev"]
       29 MOVE                             R3 R0
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K4 ["MountLayoutDev"]
       33 GETUPVAL                         R5 5
       34 CALL                             R2 3 0
       35 JUMPIFNOT                        R1 ; [+8]
       36 GETGLOBAL                        R2 K3 ["invokeEffectsInDev"]
       38 MOVE                             R3 R0
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K5 ["MountPassiveDev"]
       42 GETUPVAL                         R5 6
       43 CALL                             R2 3 0
       44 GETUPVAL                         R2 7
       45 CALL                             R2 0 0
       46 RETURN                           R0 0

PROTO_97:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R3 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+48]
        5 GETUPVAL                         R3 0
        6 JUMPIFNOT                        R3 ; [+46]
        7 MOVE                             R3 R0
        8 JUMPIFEQKNIL                     R3 ; [+44]
       10 GETTABLEKS                       R4 R3 K3 ["child"]
       12 JUMPIFEQKNIL                     R4 ; [+21]
       14 GETTABLEKS                       R5 R3 K4 ["subtreeFlags"]
       16 FASTCALL2                        BIT32_BAND R5 R1 ; [+4]
       18 MOVE                             R6 R1
       19 GETIMPORT                        R4 K7 [bit32.band]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K8 ["NoFlags"]
       25 JUMPIFEQ                         R4 R5 ; [+8]
       27 GETGLOBAL                        R5 K9 ["invokeEffectsInDev"]
       29 GETTABLEKS                       R6 R3 K3 ["child"]
       31 MOVE                             R7 R1
       32 MOVE                             R8 R2
       33 CALL                             R5 3 0
       34 GETTABLEKS                       R5 R3 K10 ["flags"]
       36 FASTCALL2                        BIT32_BAND R5 R1 ; [+4]
       38 MOVE                             R6 R1
       39 GETIMPORT                        R4 K7 [bit32.band]
       41 CALL                             R4 2 1
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K8 ["NoFlags"]
       45 JUMPIFEQ                         R4 R5 ; [+4]
       47 MOVE                             R4 R2
       48 MOVE                             R5 R3
       49 CALL                             R4 1 0
       50 GETTABLEKS                       R3 R3 K11 ["sibling"]
       52 JUMPBACK                         ; [-45]
       53 RETURN                           R0 0

PROTO_98:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETTABLEKS                       R0 R0 K0 ["error"]
        6 LOADK                            R1 K1 ["Can't perform a React state update on a component that hasn't mounted yet. This indicates that you have a side-effect in your render function that asynchronously later calls tries to update the component. Move this work to useEffect instead."]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_99:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+117]
        5 GETUPVAL                         R2 0
        6 FASTCALL2K                       BIT32_BAND R2 K3 ; [+4]
        8 LOADK                            R3 K3 [16]
        9 GETIMPORT                        R1 K6 [bit32.band]
       11 CALL                             R1 2 1
       12 JUMPIFEQKN                       R1 K7 [0] ; [+2]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R2 R0 K8 ["mode"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K9 ["BlockingMode"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K10 ["ConcurrentMode"]
       23 FASTCALL2                        BIT32_BOR R4 R5 ; [+3]
       25 GETIMPORT                        R3 K12 [bit32.bor]
       27 CALL                             R3 2 1
       28 FASTCALL2                        BIT32_BAND R2 R3 ; [+3]
       30 GETIMPORT                        R1 K6 [bit32.band]
       32 CALL                             R1 2 1
       33 JUMPIFNOTEQKN                    R1 K7 [0] ; [+2]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R1 R0 K13 ["tag"]
       38 GETUPVAL                         R2 2
       39 GETTABLEKS                       R2 R2 K14 ["IndeterminateComponent"]
       41 JUMPIFEQ                         R1 R2 ; [+37]
       43 GETUPVAL                         R2 2
       44 GETTABLEKS                       R2 R2 K15 ["HostRoot"]
       46 JUMPIFEQ                         R1 R2 ; [+32]
       48 GETUPVAL                         R2 2
       49 GETTABLEKS                       R2 R2 K16 ["ClassComponent"]
       51 JUMPIFEQ                         R1 R2 ; [+27]
       53 GETUPVAL                         R2 2
       54 GETTABLEKS                       R2 R2 K17 ["FunctionComponent"]
       56 JUMPIFEQ                         R1 R2 ; [+22]
       58 GETUPVAL                         R2 2
       59 GETTABLEKS                       R2 R2 K18 ["ForwardRef"]
       61 JUMPIFEQ                         R1 R2 ; [+17]
       63 GETUPVAL                         R2 2
       64 GETTABLEKS                       R2 R2 K19 ["MemoComponent"]
       66 JUMPIFEQ                         R1 R2 ; [+12]
       68 GETUPVAL                         R2 2
       69 GETTABLEKS                       R2 R2 K20 ["SimpleMemoComponent"]
       71 JUMPIFEQ                         R1 R2 ; [+7]
       73 GETUPVAL                         R2 2
       74 GETTABLEKS                       R2 R2 K21 ["Block"]
       76 JUMPIFEQ                         R1 R2 ; [+2]
       78 RETURN                           R0 0
       79 GETUPVAL                         R3 3
       80 GETTABLEKS                       R4 R0 K23 ["type"]
       82 CALL                             R3 1 1
       83 ORK                              R2 R3 K22 ["ReactComponent"]
       84 GETUPVAL                         R3 4
       85 JUMPIFEQKNIL                     R3 ; [+9]
       87 GETUPVAL                         R4 4
       88 GETTABLE                         R3 R4 R2
       89 JUMPIFNOT                        R3 ; [+1]
       90 RETURN                           R0 0
       91 GETUPVAL                         R3 4
       92 LOADB                            R4 1
       93 SETTABLE                         R4 R3 R2
       94 JUMP                             ; [+5]
       95 NEWTABLE                         R3 1 0
       97 LOADB                            R4 1
       98 SETTABLE                         R4 R3 R2
       99 SETUPVAL                         R3 4
      100 GETUPVAL                         R3 5
      101 GETTABLEKS                       R3 R3 K24 ["current"]
      103 GETIMPORT                        R4 K26 [pcall]
      105 NEWCLOSURE                       R5 P0
      106 CAPTURE                          UPVAL U6
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U7
      109 CALL                             R4 1 2
      110 JUMPIFNOT                        R3 ; [+4]
      111 GETUPVAL                         R6 6
      112 MOVE                             R7 R0
      113 CALL                             R6 1 0
      114 JUMP                             ; [+2]
      115 GETUPVAL                         R6 8
      116 CALL                             R6 0 0
      117 JUMPIF                           R4 ; [+4]
      118 GETIMPORT                        R6 K28 [error]
      120 MOVE                             R7 R5
      121 CALL                             R6 1 0
      122 RETURN                           R0 0

PROTO_100:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["assignFiberPropertiesInDEV"]
        3 LOADNIL                          R4
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETIMPORT                        R4 K2 [pcall]
        8 GETUPVAL                         R5 1
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 MOVE                             R8 R2
       12 CALL                             R4 4 2
       13 JUMPIF                           R4 ; [+111]
       14 JUMPIFEQKNIL                     R5 ; [+20]
       16 FASTCALL1                        TYPEOF R5 ; [+3]
       17 MOVE                             R7 R5
       18 GETIMPORT                        R6 K4 [typeof]
       20 CALL                             R6 1 1
       21 JUMPIFNOTEQKS                    R6 K5 ["table"] ; [+13]
       23 GETTABLEKS                       R7 R5 K6 ["andThen"]
       25 FASTCALL1                        TYPEOF R7 ; [+2]
       26 GETIMPORT                        R6 K4 [typeof]
       28 CALL                             R6 1 1
       29 JUMPIFNOTEQKS                    R6 K7 ["function"] ; [+5]
       31 GETIMPORT                        R6 K9 [error]
       33 MOVE                             R7 R5
       34 CALL                             R6 1 0
       35 GETUPVAL                         R6 2
       36 CALL                             R6 0 0
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K10 ["resetHooksAfterThrowRef"]
       40 JUMPIF                           R6 ; [+28]
       41 GETIMPORT                        R6 K12 [require]
       43 GETIMPORT                        R8 K15 [script]
       45 GETTABLEKS                       R8 R8 K16 ["Parent"]
       47 GETTABLEKS                       R7 R8 K13 ["ReactFiberHooks.new"]
       49 CALL                             R6 1 1
       50 SETUPVAL                         R6 4
       51 GETUPVAL                         R6 3
       52 GETUPVAL                         R7 4
       53 GETTABLEKS                       R7 R7 K17 ["resetHooksAfterThrow"]
       55 SETTABLEKS                       R7 R6 K10 ["resetHooksAfterThrowRef"]
       57 GETUPVAL                         R6 3
       58 GETUPVAL                         R7 4
       59 GETTABLEKS                       R7 R7 K18 ["ContextOnlyDispatcher"]
       61 SETTABLEKS                       R7 R6 K19 ["ContextOnlyDispatcherRef"]
       63 GETUPVAL                         R6 3
       64 GETUPVAL                         R7 4
       65 GETTABLEKS                       R7 R7 K20 ["getIsUpdatingOpaqueValueInRenderPhaseInDEV"]
       67 SETTABLEKS                       R7 R6 K21 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       69 GETUPVAL                         R6 3
       70 GETTABLEKS                       R6 R6 K10 ["resetHooksAfterThrowRef"]
       72 CALL                             R6 0 1
       73 GETUPVAL                         R6 5
       74 MOVE                             R7 R1
       75 CALL                             R6 1 0
       76 GETUPVAL                         R6 0
       77 GETTABLEKS                       R6 R6 K0 ["assignFiberPropertiesInDEV"]
       79 MOVE                             R7 R1
       80 MOVE                             R8 R3
       81 CALL                             R6 2 0
       82 GETUPVAL                         R6 6
       83 GETTABLEKS                       R6 R6 K22 ["enableProfilerTimer"]
       85 JUMPIFNOT                        R6 ; [+17]
       86 GETTABLEKS                       R7 R1 K23 ["mode"]
       88 GETUPVAL                         R8 7
       89 GETTABLEKS                       R8 R8 K24 ["ProfileMode"]
       91 FASTCALL2                        BIT32_BAND R7 R8 ; [+3]
       93 GETIMPORT                        R6 K27 [bit32.band]
       95 CALL                             R6 2 1
       96 JUMPIFEQKN                       R6 K28 [0] ; [+6]
       98 GETUPVAL                         R6 8
       99 GETTABLEKS                       R6 R6 K29 ["startProfilerTimer"]
      101 MOVE                             R7 R1
      102 CALL                             R6 1 0
      103 GETUPVAL                         R6 9
      104 LOADNIL                          R7
      105 GETUPVAL                         R8 1
      106 LOADNIL                          R9
      107 MOVE                             R10 R0
      108 MOVE                             R11 R1
      109 MOVE                             R12 R2
      110 CALL                             R6 6 0
      111 GETUPVAL                         R6 10
      112 CALL                             R6 0 1
      113 JUMPIFNOT                        R6 ; [+7]
      114 GETUPVAL                         R6 11
      115 CALL                             R6 0 1
      116 GETIMPORT                        R7 K9 [error]
      118 MOVE                             R8 R6
      119 CALL                             R7 1 0
      120 RETURN                           R5 1
      121 GETIMPORT                        R6 K9 [error]
      123 MOVE                             R7 R5
      124 CALL                             R6 1 0
      125 RETURN                           R5 1

PROTO_101:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["type"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1
        9 LOADK                            R0 K1 ["Unknown"]
       10 RETURN                           R0 1

PROTO_102:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+118]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["isRendering"]
        8 JUMPIFNOT                        R1 ; [+114]
        9 GETUPVAL                         R2 1
       10 FASTCALL2K                       BIT32_BAND R2 K4 ; [+4]
       12 LOADK                            R3 K4 [16]
       13 GETIMPORT                        R1 K7 [bit32.band]
       15 CALL                             R1 2 1
       16 JUMPIFEQKN                       R1 K8 [0] ; [+106]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K9 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       21 JUMPIF                           R2 ; [+28]
       22 GETIMPORT                        R2 K11 [require]
       24 GETIMPORT                        R4 K14 [script]
       26 GETTABLEKS                       R4 R4 K15 ["Parent"]
       28 GETTABLEKS                       R3 R4 K12 ["ReactFiberHooks.new"]
       30 CALL                             R2 1 1
       31 SETUPVAL                         R2 3
       32 GETUPVAL                         R2 2
       33 GETUPVAL                         R3 3
       34 GETTABLEKS                       R3 R3 K16 ["resetHooksAfterThrow"]
       36 SETTABLEKS                       R3 R2 K17 ["resetHooksAfterThrowRef"]
       38 GETUPVAL                         R2 2
       39 GETUPVAL                         R3 3
       40 GETTABLEKS                       R3 R3 K18 ["ContextOnlyDispatcher"]
       42 SETTABLEKS                       R3 R2 K19 ["ContextOnlyDispatcherRef"]
       44 GETUPVAL                         R2 2
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R3 R3 K20 ["getIsUpdatingOpaqueValueInRenderPhaseInDEV"]
       48 SETTABLEKS                       R3 R2 K9 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       50 GETUPVAL                         R1 2
       51 GETTABLEKS                       R1 R1 K9 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       53 CALL                             R1 0 1
       54 JUMPIF                           R1 ; [+68]
       55 GETTABLEKS                       R1 R0 K21 ["tag"]
       57 GETUPVAL                         R2 4
       58 GETTABLEKS                       R2 R2 K22 ["FunctionComponent"]
       60 JUMPIFEQ                         R1 R2 ; [+15]
       62 GETTABLEKS                       R1 R0 K21 ["tag"]
       64 GETUPVAL                         R2 4
       65 GETTABLEKS                       R2 R2 K23 ["ForwardRef"]
       67 JUMPIFEQ                         R1 R2 ; [+8]
       69 GETTABLEKS                       R1 R0 K21 ["tag"]
       71 GETUPVAL                         R2 4
       72 GETTABLEKS                       R2 R2 K24 ["SimpleMemoComponent"]
       74 JUMPIFNOTEQ                      R1 R2 ; [+32]
       76 GETUPVAL                         R2 5
       77 JUMPIFEQKNIL                     R2 ; [+7]
       79 GETUPVAL                         R1 6
       80 GETUPVAL                         R2 5
       81 GETTABLEKS                       R2 R2 K25 ["type"]
       83 CALL                             R1 1 1
       84 JUMP                             ; [+1]
       85 LOADK                            R1 K26 ["Unknown"]
       86 GETUPVAL                         R3 7
       87 GETTABLE                         R2 R3 R1
       88 JUMPIFNOTEQKNIL                  R2 ; [+34]
       90 GETUPVAL                         R2 7
       91 LOADB                            R3 1
       92 SETTABLE                         R3 R2 R1
       93 GETUPVAL                         R3 6
       94 GETTABLEKS                       R4 R0 K25 ["type"]
       96 CALL                             R3 1 1
       97 ORK                              R2 R3 K26 ["Unknown"]
       98 GETUPVAL                         R3 8
       99 GETTABLEKS                       R3 R3 K27 ["error"]
      101 LOADK                            R4 K28 ["Cannot update a component (`%s`) while rendering a different component (`%s`). To locate the bad setState() call inside `%s`, follow the stack trace as described in https://reactjs.org/link/setstate-in-render"]
      102 MOVE                             R5 R2
      103 MOVE                             R6 R1
      104 MOVE                             R7 R1
      105 CALL                             R3 4 0
      106 RETURN                           R0 0
      107 GETTABLEKS                       R1 R0 K21 ["tag"]
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K29 ["ClassComponent"]
      112 JUMPIFNOTEQ                      R1 R2 ; [+10]
      114 GETUPVAL                         R1 9
      115 JUMPIF                           R1 ; [+7]
      116 GETUPVAL                         R1 8
      117 GETTABLEKS                       R1 R1 K27 ["error"]
      119 LOADK                            R2 K30 ["Cannot update during an existing state transition (such as within `render`). Render methods should be a pure function of props and state."]
      120 CALL                             R1 1 0
      121 LOADB                            R1 1
      122 SETUPVAL                         R1 9
      123 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETTABLEKS                       R0 R0 K0 ["error"]
        6 LOADK                            R1 K1 ["It looks like you're using the wrong act() around your test interactions.\nBe sure to use the matching version of act() corresponding to your renderer:\n\n-- for react-roblox:\nlocal React = require(Packages.React)\n-- ...\nReact.TestUtils.act(function() ... end)\n\n-- for react-test-renderer:\nlocal TestRenderer = require(Packages.ReactTestRenderer)\n-- ...\nTestRenderer.act(function() ... end)"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_104:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+39]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["warnsIfNotActing"]
        8 JUMPIFNOTEQKB                    R1 TRUE ; [+35]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K4 ["current"]
       13 JUMPIFNOTEQKB                    R1 TRUE ; [+30]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K5 ["IsThisRendererActing"]
       18 GETTABLEKS                       R1 R1 K4 ["current"]
       20 JUMPIFEQKB                       R1 TRUE ; [+23]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K4 ["current"]
       25 GETIMPORT                        R2 K7 [pcall]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U5
       31 CALL                             R2 1 2
       32 JUMPIFNOT                        R1 ; [+4]
       33 GETUPVAL                         R4 4
       34 MOVE                             R5 R0
       35 CALL                             R4 1 0
       36 JUMP                             ; [+2]
       37 GETUPVAL                         R4 6
       38 CALL                             R4 0 0
       39 JUMPIF                           R2 ; [+4]
       40 GETIMPORT                        R4 K9 [error]
       42 MOVE                             R5 R3
       43 CALL                             R4 1 0
       44 RETURN                           R0 0

PROTO_105:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+41]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["warnsIfNotActing"]
        8 JUMPIFNOTEQKB                    R1 TRUE ; [+37]
       10 GETTABLEKS                       R2 R0 K4 ["mode"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K5 ["StrictMode"]
       15 FASTCALL2                        BIT32_BAND R2 R3 ; [+3]
       17 GETIMPORT                        R1 K8 [bit32.band]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K9 ["NoMode"]
       23 JUMPIFEQ                         R1 R2 ; [+22]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K10 ["current"]
       28 JUMPIFNOTEQKB                    R1 FALSE ; [+17]
       30 GETUPVAL                         R1 3
       31 GETTABLEKS                       R1 R1 K11 ["IsThisRendererActing"]
       33 GETTABLEKS                       R1 R1 K10 ["current"]
       35 JUMPIFNOTEQKB                    R1 FALSE ; [+10]
       37 GETUPVAL                         R1 4
       38 GETTABLEKS                       R1 R1 K12 ["error"]
       40 LOADK                            R2 K13 ["An update to %s ran an effect, but was not wrapped in act(...).\n\nWhen testing, code that causes React state updates should be wrapped into act(...):\n\nact(function()\n  --[[ fire events that update state ]]\nend)\n--[[ assert on the output ]]\n\nThis ensures that you're testing the behavior the user would see in the real client. Learn more at https://reactjs.org/link/wrap-tests-with-act"]
       41 GETUPVAL                         R3 5
       42 GETTABLEKS                       R4 R0 K14 ["type"]
       44 CALL                             R3 1 -1
       45 CALL                             R1 -1 0
       46 RETURN                           R0 0

PROTO_106:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETTABLEKS                       R0 R0 K0 ["error"]
        6 LOADK                            R1 K1 ["An update to %s inside a test was not wrapped in act(...).\n\nWhen testing, code that causes React state updates should be wrapped into act(...):\n\nact(function()\n  --[[ fire events that update state ]]\nend)\n--[[ assert on the output ]]\n\nThis ensures that you're testing the behavior the user would see in the client application. Learn more at https://reactjs.org/link/wrap-tests-with-act"]
        7 GETUPVAL                         R2 3
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["type"]
       11 CALL                             R2 1 -1
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_107:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+38]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["warnsIfNotActing"]
        8 JUMPIFNOTEQKB                    R1 TRUE ; [+34]
       10 GETUPVAL                         R1 1
       11 JUMPIFNOTEQKN                    R1 K4 [0] ; [+31]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["current"]
       16 JUMPIFNOTEQKB                    R1 FALSE ; [+26]
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K6 ["IsThisRendererActing"]
       21 GETTABLEKS                       R1 R1 K5 ["current"]
       23 JUMPIFNOTEQKB                    R1 FALSE ; [+19]
       25 GETUPVAL                         R1 4
       26 GETIMPORT                        R2 K8 [pcall]
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U7
       33 CALL                             R2 1 2
       34 JUMPIFNOT                        R1 ; [+4]
       35 GETUPVAL                         R4 5
       36 MOVE                             R5 R0
       37 CALL                             R4 1 0
       38 JUMP                             ; [+2]
       39 GETUPVAL                         R4 8
       40 CALL                             R4 0 0
       41 JUMPIFNOT                        R2 ; [+1]
       42 RETURN                           R3 1
       43 RETURN                           R0 0

PROTO_108:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+52]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOTEQKB                    R1 FALSE ; [+50]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["unstable_flushAllWithoutAsserting"]
       11 JUMPIFNOTEQKNIL                  R1 ; [+45]
       13 GETTABLEKS                       R2 R0 K4 ["mode"]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K5 ["BlockingMode"]
       18 FASTCALL2                        BIT32_BAND R2 R3 ; [+3]
       20 GETIMPORT                        R1 K8 [bit32.band]
       22 CALL                             R1 2 1
       23 JUMPIFNOTEQKN                    R1 K9 [0] ; [+13]
       25 GETTABLEKS                       R2 R0 K4 ["mode"]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K10 ["ConcurrentMode"]
       30 FASTCALL2                        BIT32_BAND R2 R3 ; [+3]
       32 GETIMPORT                        R1 K8 [bit32.band]
       34 CALL                             R1 2 1
       35 JUMPIFEQKN                       R1 K9 [0] ; [+9]
       37 LOADB                            R1 1
       38 SETUPVAL                         R1 0
       39 GETUPVAL                         R1 3
       40 GETTABLEKS                       R1 R1 K11 ["error"]
       42 LOADK                            R2 K12 ["In Concurrent or Sync modes, the 'scheduler' module needs to be mocked to guarantee consistent behaviour across tests and client application. For example, with RobloxJest: \nRobloxJest.mock('scheduler', function() return require(Packages.Scheduler).unstable_mock end)\n\nFor more info, visit https://reactjs.org/link/mock-scheduler"]
       43 CALL                             R1 1 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R1 4
       46 GETTABLEKS                       R1 R1 K13 ["warnAboutUnmockedScheduler"]
       48 JUMPIFNOTEQKB                    R1 TRUE ; [+8]
       50 LOADB                            R1 1
       51 SETUPVAL                         R1 0
       52 GETUPVAL                         R1 3
       53 GETTABLEKS                       R1 R1 K11 ["error"]
       55 LOADK                            R2 K14 ["Starting from React v18, the 'scheduler' module will need to be mocked to guarantee consistent behaviour across tests and client applications. For example, with RobloxJest: \nRobloxJest.mock('scheduler', function() return require(Packages.Scheduler).unstable_mock end)\n\nFor more info, visit https://reactjs.org/link/mock-scheduler"]
       56 CALL                             R1 1 0
       57 RETURN                           R0 0

PROTO_109:
        0 MULK                             R3 R1 K0 [1000]
        1 GETTABLEKS                       R4 R0 K1 ["interactionThreadID"]
        3 ADD                              R2 R3 R4
        4 RETURN                           R2 1

PROTO_110:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enableSchedulerTracing"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+8]
        8 NEWTABLE                         R1 0 1
       10 MOVE                             R2 R0
       11 SETLIST                          R1 R2 1 [1]
       13 SETUPVAL                         R1 1
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       18 MOVE                             R3 R0
       19 GETIMPORT                        R1 K3 [table.insert]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_111:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["enableSchedulerTracing"]
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R4 K2 [next]
        7 MOVE                             R5 R2
        8 CALL                             R4 1 1
        9 JUMPIFNOTEQKNIL                  R4 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 JUMPIFNOT                        R3 ; [+89]
       14 GETTABLEKS                       R3 R0 K3 ["pendingInteractionMap"]
       16 GETTABLE                         R4 R3 R1
       17 JUMPIFEQKNIL                     R4 ; [+38]
       19 GETTABLEKS                       R5 R2 K4 ["ipairs"]
       21 JUMPIFEQKNIL                     R5 ; [+17]
       23 NAMECALL                         R5 R2 K4 ["ipairs"]
       25 CALL                             R5 1 3
       26 FORGPREP                         R5
       27 GETTABLE                         R10 R4 R9
       28 JUMPIF                           R10 ; [+5]
       29 GETTABLEKS                       R10 R9 K5 ["__count"]
       31 ADDK                             R10 R10 K6 [1]
       32 SETTABLEKS                       R10 R9 K5 ["__count"]
       34 LOADB                            R10 1
       35 SETTABLE                         R10 R4 R9
       36 FORGLOOP                         R5 2 ; [-10]
       38 JUMP                             ; [+49]
       39 GETIMPORT                        R5 K7 [ipairs]
       41 MOVE                             R6 R2
       42 CALL                             R5 1 3
       43 FORGPREP_INEXT                   R5
       44 GETTABLE                         R10 R4 R9
       45 JUMPIF                           R10 ; [+5]
       46 GETTABLEKS                       R10 R9 K5 ["__count"]
       48 ADDK                             R10 R10 K6 [1]
       49 SETTABLEKS                       R10 R9 K5 ["__count"]
       51 LOADB                            R10 1
       52 SETTABLE                         R10 R4 R9
       53 FORGLOOP                         R5 2 [inext] ; [-10]
       55 JUMP                             ; [+32]
       56 GETUPVAL                         R5 1
       57 MOVE                             R6 R2
       58 CALL                             R5 1 1
       59 SETTABLE                         R5 R3 R1
       60 GETTABLEKS                       R5 R2 K4 ["ipairs"]
       62 JUMPIFEQKNIL                     R5 ; [+13]
       64 NAMECALL                         R5 R2 K4 ["ipairs"]
       66 CALL                             R5 1 3
       67 FORGPREP                         R5
       68 GETTABLEKS                       R10 R9 K5 ["__count"]
       70 ADDK                             R10 R10 K6 [1]
       71 SETTABLEKS                       R10 R9 K5 ["__count"]
       73 FORGLOOP                         R5 2 ; [-6]
       75 JUMP                             ; [+12]
       76 GETIMPORT                        R5 K7 [ipairs]
       78 MOVE                             R6 R2
       79 CALL                             R5 1 3
       80 FORGPREP_INEXT                   R5
       81 GETTABLEKS                       R10 R9 K5 ["__count"]
       83 ADDK                             R10 R10 K6 [1]
       84 SETTABLEKS                       R10 R9 K5 ["__count"]
       86 FORGLOOP                         R5 2 [inext] ; [-6]
       88 GETUPVAL                         R5 2
       89 GETTABLEKS                       R5 R5 K8 ["current"]
       91 JUMPIFEQKNIL                     R5 ; [+11]
       93 GETGLOBAL                        R6 K9 ["computeThreadID"]
       95 MOVE                             R7 R0
       96 MOVE                             R8 R1
       97 CALL                             R6 2 1
       98 GETTABLEKS                       R7 R5 K10 ["onWorkScheduled"]
      100 MOVE                             R8 R2
      101 MOVE                             R9 R6
      102 CALL                             R7 2 0
      103 RETURN                           R0 0

PROTO_112:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["enableSchedulerTracing"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETGLOBAL                        R2 K1 ["scheduleInteractions"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["current"]
       12 CALL                             R2 3 0
       13 RETURN                           R0 0

PROTO_113:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_114:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["enableSchedulerTracing"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["new"]
        8 CALL                             R2 0 1
        9 GETIMPORT                        R3 K3 [pairs]
       11 GETTABLEKS                       R4 R0 K4 ["pendingInteractionMap"]
       13 CALL                             R3 1 3
       14 FORGPREP_NEXT                    R3
       15 GETUPVAL                         R8 2
       16 MOVE                             R9 R1
       17 MOVE                             R10 R6
       18 CALL                             R8 2 1
       19 JUMPIFNOT                        R8 ; [+10]
       20 NAMECALL                         R8 R7 K5 ["ipairs"]
       22 CALL                             R8 1 3
       23 FORGPREP                         R8
       24 MOVE                             R15 R12
       25 NAMECALL                         R13 R2 K6 ["add"]
       27 CALL                             R13 2 0
       28 FORGLOOP                         R8 2 ; [-5]
       30 FORGLOOP                         R3 2 ; [-16]
       32 SETTABLEKS                       R2 R0 K7 ["memoizedInteractions"]
       34 GETIMPORT                        R4 K9 [next]
       36 MOVE                             R5 R2
       37 CALL                             R4 1 1
       38 JUMPIFNOTEQKNIL                  R4 ; [+2]
       40 LOADB                            R3 0 +1
       41 LOADB                            R3 1
       42 JUMPIFNOT                        R3 ; [+23]
       43 GETUPVAL                         R3 3
       44 GETTABLEKS                       R3 R3 K10 ["current"]
       46 JUMPIFEQKNIL                     R3 ; [+19]
       48 GETGLOBAL                        R4 K11 ["computeThreadID"]
       50 MOVE                             R5 R0
       51 MOVE                             R6 R1
       52 CALL                             R4 2 1
       53 GETIMPORT                        R5 K13 [pcall]
       55 GETTABLEKS                       R6 R3 K14 ["onWorkStarted"]
       57 MOVE                             R7 R2
       58 MOVE                             R8 R4
       59 CALL                             R5 3 2
       60 JUMPIF                           R5 ; [+5]
       61 GETUPVAL                         R7 4
       62 GETUPVAL                         R8 5
       63 NEWCLOSURE                       R9 P0
       64 CAPTURE                          VAL R6
       65 CALL                             R7 2 0
       66 RETURN                           R0 0

PROTO_115:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_116:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_117:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_118:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["enableSchedulerTracing"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K1 ["pendingLanes"]
        7 LOADNIL                          R3
        8 LOADB                            R4 1
        9 LOADNIL                          R5
       10 JUMPIFEQKNIL                     R3 ; [+30]
       12 GETTABLEKS                       R7 R0 K2 ["memoizedInteractions"]
       14 GETIMPORT                        R8 K4 [next]
       16 MOVE                             R9 R7
       17 CALL                             R8 1 1
       18 JUMPIFNOTEQKNIL                  R8 ; [+2]
       20 LOADB                            R6 0 +1
       21 LOADB                            R6 1
       22 JUMPIFNOT                        R6 ; [+18]
       23 GETGLOBAL                        R6 K5 ["computeThreadID"]
       25 MOVE                             R7 R0
       26 MOVE                             R8 R1
       27 CALL                             R6 2 1
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R3 R7 K6 ["current"]
       31 GETIMPORT                        R7 K8 [pcall]
       33 GETTABLEKS                       R8 R3 K9 ["onWorkStopped"]
       35 GETTABLEKS                       R9 R0 K2 ["memoizedInteractions"]
       37 MOVE                             R10 R6
       38 CALL                             R7 3 2
       39 MOVE                             R4 R7
       40 MOVE                             R5 R8
       41 GETTABLEKS                       R6 R0 K10 ["pendingInteractionMap"]
       43 GETIMPORT                        R7 K12 [pairs]
       45 MOVE                             R8 R6
       46 CALL                             R7 1 3
       47 FORGPREP_NEXT                    R7
       48 GETUPVAL                         R12 2
       49 MOVE                             R13 R2
       50 MOVE                             R14 R10
       51 CALL                             R12 2 1
       52 JUMPIF                           R12 ; [+70]
       53 LOADNIL                          R12
       54 SETTABLE                         R12 R6 R10
       55 GETTABLEKS                       R12 R11 K13 ["size"]
       57 JUMPIFEQKN                       R12 K14 [0] ; [+65]
       59 GETTABLEKS                       R12 R11 K15 ["ipairs"]
       61 JUMPIFEQKNIL                     R12 ; [+31]
       63 NAMECALL                         R12 R11 K15 ["ipairs"]
       65 CALL                             R12 1 3
       66 FORGPREP                         R12
       67 GETTABLEKS                       R17 R16 K16 ["__count"]
       69 SUBK                             R17 R17 K17 [1]
       70 SETTABLEKS                       R17 R16 K16 ["__count"]
       72 JUMPIFEQKNIL                     R3 ; [+17]
       74 GETTABLEKS                       R17 R16 K16 ["__count"]
       76 JUMPIFNOTEQKN                    R17 K14 [0] ; [+13]
       78 GETIMPORT                        R17 K8 [pcall]
       80 GETTABLEKS                       R18 R3 K18 ["onInteractionScheduledWorkCompleted"]
       82 MOVE                             R19 R16
       83 CALL                             R17 2 2
       84 JUMPIF                           R17 ; [+5]
       85 GETUPVAL                         R19 3
       86 GETUPVAL                         R20 4
       87 NEWCLOSURE                       R21 P0
       88 CAPTURE                          VAL R18
       89 CALL                             R19 2 0
       90 FORGLOOP                         R12 2 ; [-24]
       92 JUMP                             ; [+30]
       93 GETIMPORT                        R12 K19 [ipairs]
       95 MOVE                             R13 R11
       96 CALL                             R12 1 3
       97 FORGPREP_INEXT                   R12
       98 GETTABLEKS                       R17 R16 K16 ["__count"]
      100 SUBK                             R17 R17 K17 [1]
      101 SETTABLEKS                       R17 R16 K16 ["__count"]
      103 JUMPIFEQKNIL                     R3 ; [+17]
      105 GETTABLEKS                       R17 R16 K16 ["__count"]
      107 JUMPIFNOTEQKN                    R17 K14 [0] ; [+13]
      109 GETIMPORT                        R17 K8 [pcall]
      111 GETTABLEKS                       R18 R3 K18 ["onInteractionScheduledWorkCompleted"]
      113 MOVE                             R19 R16
      114 CALL                             R17 2 2
      115 JUMPIF                           R17 ; [+5]
      116 GETUPVAL                         R19 3
      117 GETUPVAL                         R20 4
      118 NEWCLOSURE                       R21 P1
      119 CAPTURE                          VAL R18
      120 CALL                             R19 2 0
      121 FORGLOOP                         R12 2 [inext] ; [-24]
      123 FORGLOOP                         R7 2 ; [-76]
      125 JUMPIF                           R4 ; [+5]
      126 GETUPVAL                         R7 3
      127 GETUPVAL                         R8 4
      128 NEWCLOSURE                       R9 P2
      129 CAPTURE                          REF R5
      130 CALL                             R7 2 0
      131 CLOSEUPVALS                      R5
      132 RETURN                           R0 0

PROTO_119:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["flushPassiveEffects"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADB                            R0 1
        7 JUMPBACK                         ; [-7]
        8 RETURN                           R0 1

PROTO_120:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+17]
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 SETUPVAL                         R1 1
        6 GETIMPORT                        R1 K1 [pcall]
        8 GETUPVAL                         R2 0
        9 CALL                             R1 1 2
       10 SETUPVAL                         R0 1
       11 JUMPIF                           R1 ; [+5]
       12 GETIMPORT                        R3 K3 [error]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 RETURN                           R0 0
       17 RETURN                           R2 1
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 1
       20 LOADB                            R1 1
       21 SETUPVAL                         R1 1
       22 GETIMPORT                        R1 K1 [pcall]
       24 DUPCLOSURE                       R2 K4 [PROTO_119]
       25 CAPTURE                          UPVAL U2
       26 CALL                             R1 1 2
       27 SETUPVAL                         R0 1
       28 JUMPIF                           R1 ; [+5]
       29 GETIMPORT                        R3 K3 [error]
       31 MOVE                             R4 R2
       32 CALL                             R3 1 0
       33 RETURN                           R0 0
       34 RETURN                           R2 1
       35 RETURN                           R0 0

PROTO_121:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_122:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 2
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETIMPORT                        R3 K1 [pcall]
        7 GETUPVAL                         R4 1
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CALL                             R3 2 2
       13 MOVE                             R1 R3
       14 MOVE                             R2 R4
       15 JUMPIF                           R1 ; [+3]
       16 MOVE                             R3 R0
       17 MOVE                             R4 R2
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_123:
        0 GETUPVAL                         R0 0
        1 SUBK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 SETTABLEKS                       R1 R0 K1 ["current"]
        7 GETUPVAL                         R0 3
        8 GETTABLEKS                       R0 R0 K2 ["IsThisRendererActing"]
       10 GETUPVAL                         R1 4
       11 SETTABLEKS                       R1 R0 K1 ["current"]
       13 GETUPVAL                         R0 6
       14 SETUPVAL                         R0 5
       15 GETIMPORT                        R0 K4 [_G]
       17 GETTABLEKS                       R0 R0 K5 ["__DEV__"]
       19 JUMPIFNOT                        R0 ; [+9]
       20 GETUPVAL                         R0 0
       21 GETUPVAL                         R1 7
       22 JUMPIFNOTLT                      R1 R0 ; [+6]
       24 GETUPVAL                         R0 8
       25 GETTABLEKS                       R0 R0 K6 ["error"]
       27 LOADK                            R1 K7 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_124:
        0 RETURN                           R0 0

PROTO_125:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKB                    R0 FALSE ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["error"]
        6 LOADK                            R1 K1 ["You called act(Promise.new(function() --[[ ... ]] end)) without :await() or :expect(). This could lead to unexpected testing behaviour, interleaving multiple act calls and mixing their scopes. You should - act(function() Promise.new(function() --[[ ... ]] end):await() end);"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_126:
        0 GETUPVAL                         R1 0
        1 SUBK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 SETTABLEKS                       R2 R1 K1 ["current"]
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K2 ["IsThisRendererActing"]
       10 GETUPVAL                         R2 4
       11 SETTABLEKS                       R2 R1 K1 ["current"]
       13 GETUPVAL                         R1 6
       14 SETUPVAL                         R1 5
       15 GETIMPORT                        R1 K4 [_G]
       17 GETTABLEKS                       R1 R1 K5 ["__DEV__"]
       19 JUMPIFNOT                        R1 ; [+9]
       20 GETUPVAL                         R1 0
       21 GETUPVAL                         R2 7
       22 JUMPIFNOTLT                      R2 R1 ; [+6]
       24 GETUPVAL                         R1 8
       25 GETTABLEKS                       R1 R1 K6 ["error"]
       27 LOADK                            R2 K7 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       28 CALL                             R1 1 0
       29 JUMPIFNOT                        R0 ; [+4]
       30 GETUPVAL                         R1 9
       31 MOVE                             R2 R0
       32 CALL                             R1 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R1 10
       35 CALL                             R1 0 0
       36 RETURN                           R0 0

PROTO_127:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 JUMPIFLT                         R1 R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOTEQKB                    R0 TRUE ; [+36]
        7 GETUPVAL                         R0 2
        8 JUMPIFNOTEQKB                    R0 TRUE ; [+33]
       10 GETUPVAL                         R0 0
       11 SUBK                             R0 R0 K0 [1]
       12 SETUPVAL                         R0 0
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 2
       15 SETTABLEKS                       R1 R0 K1 ["current"]
       17 GETUPVAL                         R0 4
       18 GETTABLEKS                       R0 R0 K2 ["IsThisRendererActing"]
       20 GETUPVAL                         R1 5
       21 SETTABLEKS                       R1 R0 K1 ["current"]
       23 GETUPVAL                         R0 7
       24 SETUPVAL                         R0 6
       25 GETIMPORT                        R0 K4 [_G]
       27 GETTABLEKS                       R0 R0 K5 ["__DEV__"]
       29 JUMPIFNOT                        R0 ; [+9]
       30 GETUPVAL                         R0 0
       31 GETUPVAL                         R1 8
       32 JUMPIFNOTLT                      R1 R0 ; [+6]
       34 GETUPVAL                         R0 9
       35 GETTABLEKS                       R0 R0 K6 ["error"]
       37 LOADK                            R1 K7 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       38 CALL                             R0 1 0
       39 GETUPVAL                         R0 10
       40 CALL                             R0 0 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R0 11
       43 NEWCLOSURE                       R1 P0
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          UPVAL U12
       54 CAPTURE                          UPVAL U10
       55 CALL                             R0 1 0
       56 RETURN                           R0 0

PROTO_128:
        0 GETUPVAL                         R1 0
        1 SUBK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 SETTABLEKS                       R2 R1 K1 ["current"]
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K2 ["IsThisRendererActing"]
       10 GETUPVAL                         R2 4
       11 SETTABLEKS                       R2 R1 K1 ["current"]
       13 GETUPVAL                         R1 6
       14 SETUPVAL                         R1 5
       15 GETIMPORT                        R1 K4 [_G]
       17 GETTABLEKS                       R1 R1 K5 ["__DEV__"]
       19 JUMPIFNOT                        R1 ; [+9]
       20 GETUPVAL                         R1 0
       21 GETUPVAL                         R2 7
       22 JUMPIFNOTLT                      R2 R1 ; [+6]
       24 GETUPVAL                         R1 8
       25 GETTABLEKS                       R1 R1 K6 ["error"]
       27 LOADK                            R2 K7 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 9
       30 MOVE                             R2 R0
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_129:
        0 LOADB                            R3 1
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          VAL R2
       17 NEWCLOSURE                       R6 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          UPVAL U9
       25 CAPTURE                          UPVAL U10
       26 CAPTURE                          UPVAL U11
       27 CAPTURE                          VAL R2
       28 NAMECALL                         R3 R3 K0 ["andThen"]
       30 CALL                             R3 3 0
       31 RETURN                           R0 0

PROTO_130:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [1] ; [+9]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKB                       R0 FALSE ; [+4]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOTEQKB                    R0 FALSE ; [+3]
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 0
       12 SUBK                             R0 R0 K0 [1]
       13 SETUPVAL                         R0 0
       14 GETUPVAL                         R0 4
       15 GETUPVAL                         R1 2
       16 SETTABLEKS                       R1 R0 K1 ["current"]
       18 GETUPVAL                         R0 5
       19 GETTABLEKS                       R0 R0 K2 ["IsThisRendererActing"]
       21 GETUPVAL                         R1 6
       22 SETTABLEKS                       R1 R0 K1 ["current"]
       24 GETUPVAL                         R0 8
       25 SETUPVAL                         R0 7
       26 GETIMPORT                        R0 K4 [_G]
       28 GETTABLEKS                       R0 R0 K5 ["__DEV__"]
       30 JUMPIFNOT                        R0 ; [+9]
       31 GETUPVAL                         R0 0
       32 GETUPVAL                         R1 9
       33 JUMPIFNOTLT                      R1 R0 ; [+6]
       35 GETUPVAL                         R0 10
       36 GETTABLEKS                       R0 R0 K6 ["error"]
       38 LOADK                            R1 K7 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       39 CALL                             R0 1 0
       40 RETURN                           R0 0

PROTO_131:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R3 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K3 ["error"]
        8 LOADK                            R4 K4 ["Do not await the result of calling act(...) with sync logic, it is not a Promise."]
        9 CALL                             R3 1 0
       10 MOVE                             R3 R1
       11 CALL                             R3 0 0
       12 RETURN                           R0 0

PROTO_132:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIF                           R1 ; [+15]
        5 GETIMPORT                        R1 K1 [_G]
        7 GETTABLEKS                       R1 R1 K3 ["__ROACT_17_MOCK_SCHEDULER__"]
        9 JUMPIF                           R1 ; [+10]
       10 GETUPVAL                         R1 0
       11 JUMPIFNOTEQKB                    R1 FALSE ; [+8]
       13 LOADB                            R1 1
       14 SETUPVAL                         R1 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K4 ["error"]
       18 LOADK                            R2 K5 ["act(...) is not supported in production builds of React, and might not behave as expected."]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 2
       21 GETUPVAL                         R2 2
       22 ADDK                             R2 R2 K6 [1]
       23 SETUPVAL                         R2 2
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K7 ["current"]
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R3 R3 K8 ["IsThisRendererActing"]
       30 GETTABLEKS                       R3 R3 K7 ["current"]
       32 GETUPVAL                         R4 5
       33 GETUPVAL                         R5 3
       34 LOADB                            R6 1
       35 SETTABLEKS                       R6 R5 K7 ["current"]
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R5 R5 K8 ["IsThisRendererActing"]
       40 LOADB                            R6 1
       41 SETTABLEKS                       R6 R5 K7 ["current"]
       43 LOADB                            R5 1
       44 SETUPVAL                         R5 5
       45 NEWCLOSURE                       R5 P0
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R2
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U1
       55 GETIMPORT                        R6 K10 [pcall]
       57 GETUPVAL                         R7 4
       58 GETTABLEKS                       R7 R7 K11 ["batchedUpdates"]
       60 MOVE                             R8 R0
       61 CALL                             R6 2 2
       62 JUMPIF                           R6 ; [+29]
       63 GETUPVAL                         R8 2
       64 SUBK                             R8 R8 K6 [1]
       65 SETUPVAL                         R8 2
       66 GETUPVAL                         R8 3
       67 SETTABLEKS                       R2 R8 K7 ["current"]
       69 GETUPVAL                         R8 4
       70 GETTABLEKS                       R8 R8 K8 ["IsThisRendererActing"]
       72 SETTABLEKS                       R3 R8 K7 ["current"]
       74 SETUPVAL                         R4 5
       75 GETIMPORT                        R8 K1 [_G]
       77 GETTABLEKS                       R8 R8 K2 ["__DEV__"]
       79 JUMPIFNOT                        R8 ; [+8]
       80 GETUPVAL                         R8 2
       81 JUMPIFNOTLT                      R1 R8 ; [+6]
       83 GETUPVAL                         R8 1
       84 GETTABLEKS                       R8 R8 K4 ["error"]
       86 LOADK                            R9 K12 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       87 CALL                             R8 1 0
       88 GETIMPORT                        R8 K13 [error]
       90 MOVE                             R9 R7
       91 CALL                             R8 1 0
       92 JUMPIFEQKNIL                     R7 ; [+63]
       94 FASTCALL1                        TYPEOF R7 ; [+3]
       95 MOVE                             R9 R7
       96 GETIMPORT                        R8 K15 [typeof]
       98 CALL                             R8 1 1
       99 JUMPIFNOTEQKS                    R8 K16 ["table"] ; [+56]
      101 GETTABLEKS                       R9 R7 K17 ["andThen"]
      103 FASTCALL1                        TYPEOF R9 ; [+2]
      104 GETIMPORT                        R8 K15 [typeof]
      106 CALL                             R8 1 1
      107 JUMPIFNOTEQKS                    R8 K18 ["function"] ; [+48]
      109 LOADB                            R8 0
      110 GETIMPORT                        R9 K1 [_G]
      112 GETTABLEKS                       R9 R9 K2 ["__DEV__"]
      114 JUMPIFNOT                        R9 ; [+21]
      115 GETUPVAL                         R10 6
      116 FASTCALL1                        TYPEOF R10 ; [+2]
      117 GETIMPORT                        R9 K15 [typeof]
      119 CALL                             R9 1 1
      120 JUMPIFEQKNIL                     R9 ; [+15]
      122 GETUPVAL                         R9 6
      123 GETTABLEKS                       R9 R9 K19 ["resolve"]
      125 CALL                             R9 0 1
      126 DUPCLOSURE                       R11 K20 [PROTO_124]
      127 NAMECALL                         R9 R9 K17 ["andThen"]
      129 CALL                             R9 2 1
      130 NEWCLOSURE                       R11 P2
      131 CAPTURE                          REF R8
      132 CAPTURE                          UPVAL U1
      133 NAMECALL                         R9 R9 K17 ["andThen"]
      135 CALL                             R9 2 0
      136 DUPTABLE                         R9 K21 [{"andThen"}]
      137 NEWCLOSURE                       R10 P3
      138 CAPTURE                          REF R8
      139 CAPTURE                          VAL R7
      140 CAPTURE                          UPVAL U2
      141 CAPTURE                          UPVAL U7
      142 CAPTURE                          VAL R2
      143 CAPTURE                          UPVAL U3
      144 CAPTURE                          UPVAL U4
      145 CAPTURE                          VAL R3
      146 CAPTURE                          UPVAL U5
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R1
      149 CAPTURE                          UPVAL U1
      150 CAPTURE                          UPVAL U8
      151 SETTABLEKS                       R10 R9 K17 ["andThen"]
      153 CLOSEUPVALS                      R8
      154 RETURN                           R9 1
      155 CLOSEUPVALS                      R8
      156 GETIMPORT                        R8 K1 [_G]
      158 GETTABLEKS                       R8 R8 K2 ["__DEV__"]
      160 JUMPIFNOT                        R8 ; [+12]
      161 JUMPIFEQKNIL                     R7 ; [+11]
      163 GETUPVAL                         R8 1
      164 GETTABLEKS                       R8 R8 K4 ["error"]
      166 LOADK                            R9 K22 ["The callback passed to act(...) function must return nil, or a Promise. You returned %s"]
      167 FASTCALL1                        TOSTRING R7 ; [+3]
      168 MOVE                             R11 R7
      169 GETIMPORT                        R10 K24 [tostring]
      171 CALL                             R10 1 1
      172 CALL                             R8 2 0
      173 GETIMPORT                        R8 K10 [pcall]
      175 NEWCLOSURE                       R9 P4
      176 CAPTURE                          UPVAL U2
      177 CAPTURE                          UPVAL U7
      178 CAPTURE                          VAL R2
      179 CAPTURE                          UPVAL U9
      180 CAPTURE                          UPVAL U3
      181 CAPTURE                          UPVAL U4
      182 CAPTURE                          VAL R3
      183 CAPTURE                          UPVAL U5
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R1
      186 CAPTURE                          UPVAL U1
      187 CALL                             R8 1 2
      188 JUMPIF                           R8 ; [+29]
      189 GETUPVAL                         R10 2
      190 SUBK                             R10 R10 K6 [1]
      191 SETUPVAL                         R10 2
      192 GETUPVAL                         R10 3
      193 SETTABLEKS                       R2 R10 K7 ["current"]
      195 GETUPVAL                         R10 4
      196 GETTABLEKS                       R10 R10 K8 ["IsThisRendererActing"]
      198 SETTABLEKS                       R3 R10 K7 ["current"]
      200 SETUPVAL                         R4 5
      201 GETIMPORT                        R10 K1 [_G]
      203 GETTABLEKS                       R10 R10 K2 ["__DEV__"]
      205 JUMPIFNOT                        R10 ; [+8]
      206 GETUPVAL                         R10 2
      207 JUMPIFNOTLT                      R1 R10 ; [+6]
      209 GETUPVAL                         R10 1
      210 GETTABLEKS                       R10 R10 K4 ["error"]
      212 LOADK                            R11 K12 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
      213 CALL                             R10 1 0
      214 GETIMPORT                        R10 K13 [error]
      216 MOVE                             R11 R9
      217 CALL                             R10 1 0
      218 DUPTABLE                         R10 K21 [{"andThen"}]
      219 DUPCLOSURE                       R11 K25 [PROTO_131]
      220 CAPTURE                          UPVAL U1
      221 SETTABLEKS                       R11 R10 K17 ["andThen"]
      223 RETURN                           R10 1

PROTO_133:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["child"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["deletions"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["dependencies"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["memoizedProps"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["memoizedState"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["pendingProps"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K6 ["sibling"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K7 ["stateNode"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K8 ["updateQueue"]
       27 GETIMPORT                        R1 K10 [_G]
       29 GETTABLEKS                       R1 R1 K11 ["__DEV__"]
       31 JUMPIFNOT                        R1 ; [+3]
       32 LOADNIL                          R1
       33 SETTABLEKS                       R1 R0 K12 ["_debugOwner"]
       35 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R1 R1 K6 ["console"]
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["LuauPolyfill"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K8 ["Set"]
       21 NEWTABLE                         R4 64 0
       23 DUPCLOSURE                       R5 K9 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 DUPCLOSURE                       R6 K10 [PROTO_1]
       26 GETIMPORT                        R7 K4 [require]
       28 GETTABLEKS                       R8 R0 K5 ["Shared"]
       30 CALL                             R7 1 1
       31 GETIMPORT                        R8 K4 [require]
       33 GETIMPORT                        R9 K1 [script]
       35 GETTABLEKS                       R9 R9 K2 ["Parent"]
       37 GETTABLEKS                       R9 R9 K11 ["ReactInternalTypes"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K4 [require]
       42 GETIMPORT                        R10 K1 [script]
       44 GETTABLEKS                       R10 R10 K2 ["Parent"]
       46 GETTABLEKS                       R10 R10 K12 ["ReactFiberLane"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K4 [require]
       51 GETTABLEKS                       R11 R0 K13 ["Scheduler"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K4 [require]
       56 GETIMPORT                        R13 K1 [script]
       58 GETTABLEKS                       R13 R13 K2 ["Parent"]
       60 GETTABLEKS                       R12 R13 K14 ["ReactFiberSuspenseComponent.new"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K4 [require]
       65 GETIMPORT                        R14 K1 [script]
       67 GETTABLEKS                       R14 R14 K2 ["Parent"]
       69 GETTABLEKS                       R13 R14 K15 ["ReactFiberStack.new"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K4 [require]
       74 GETTABLEKS                       R14 R0 K5 ["Shared"]
       76 CALL                             R13 1 1
       77 GETTABLEKS                       R13 R13 K16 ["ReactFeatureFlags"]
       79 GETTABLEKS                       R14 R13 K17 ["skipUnmountedBoundaries"]
       81 GETTABLEKS                       R15 R13 K18 ["enableDoubleInvokingEffects"]
       83 GETIMPORT                        R16 K4 [require]
       85 GETTABLEKS                       R17 R0 K5 ["Shared"]
       87 CALL                             R16 1 1
       88 GETTABLEKS                       R17 R16 K19 ["ReactSharedInternals"]
       90 GETTABLEKS                       R18 R16 K20 ["invariant"]
       92 GETIMPORT                        R19 K4 [require]
       94 GETIMPORT                        R21 K1 [script]
       96 GETTABLEKS                       R21 R21 K2 ["Parent"]
       98 GETTABLEKS                       R20 R21 K21 ["SchedulerWithReactIntegration.new"]
      100 CALL                             R19 1 1
      101 GETTABLEKS                       R20 R19 K22 ["scheduleCallback"]
      103 GETTABLEKS                       R21 R19 K23 ["cancelCallback"]
      105 GETTABLEKS                       R22 R19 K24 ["getCurrentPriorityLevel"]
      107 GETTABLEKS                       R23 R19 K25 ["runWithPriority"]
      109 GETTABLEKS                       R24 R19 K26 ["shouldYield"]
      111 GETTABLEKS                       R25 R19 K27 ["requestPaint"]
      113 GETTABLEKS                       R26 R19 K28 ["now"]
      115 GETTABLEKS                       R27 R19 K29 ["NoPriority"]
      117 GETTABLEKS                       R28 R19 K30 ["ImmediatePriority"]
      119 GETTABLEKS                       R29 R19 K31 ["UserBlockingPriority"]
      121 GETTABLEKS                       R30 R19 K32 ["NormalPriority"]
      123 GETTABLEKS                       R31 R19 K33 ["flushSyncCallbackQueue"]
      125 GETTABLEKS                       R32 R19 K34 ["scheduleSyncCallback"]
      127 GETIMPORT                        R33 K4 [require]
      129 GETIMPORT                        R34 K1 [script]
      131 GETTABLEKS                       R34 R34 K2 ["Parent"]
      133 GETTABLEKS                       R34 R34 K35 ["DebugTracing"]
      135 CALL                             R33 1 1
      136 GETIMPORT                        R34 K4 [require]
      138 GETIMPORT                        R35 K1 [script]
      140 GETTABLEKS                       R35 R35 K2 ["Parent"]
      142 GETTABLEKS                       R35 R35 K36 ["SchedulingProfiler"]
      144 CALL                             R34 1 1
      145 GETIMPORT                        R35 K4 [require]
      147 GETTABLEKS                       R36 R0 K13 ["Scheduler"]
      149 CALL                             R35 1 1
      150 GETTABLEKS                       R35 R35 K37 ["tracing"]
      152 GETTABLEKS                       R36 R35 K38 ["__interactionsRef"]
      154 GETTABLEKS                       R37 R35 K39 ["__subscriberRef"]
      156 GETIMPORT                        R38 K4 [require]
      158 GETIMPORT                        R39 K1 [script]
      160 GETTABLEKS                       R39 R39 K2 ["Parent"]
      162 GETTABLEKS                       R39 R39 K40 ["ReactFiberHostConfig"]
      164 CALL                             R38 1 1
      165 GETIMPORT                        R39 K4 [require]
      167 GETIMPORT                        R41 K1 [script]
      169 GETTABLEKS                       R41 R41 K2 ["Parent"]
      171 GETTABLEKS                       R40 R41 K41 ["ReactFiber.new"]
      173 CALL                             R39 1 1
      174 GETIMPORT                        R40 K4 [require]
      176 GETIMPORT                        R41 K1 [script]
      178 GETTABLEKS                       R41 R41 K2 ["Parent"]
      180 GETTABLEKS                       R41 R41 K42 ["ReactTypeOfMode"]
      182 CALL                             R40 1 1
      183 GETIMPORT                        R41 K4 [require]
      185 GETIMPORT                        R42 K1 [script]
      187 GETTABLEKS                       R42 R42 K2 ["Parent"]
      189 GETTABLEKS                       R42 R42 K43 ["ReactWorkTags"]
      191 CALL                             R41 1 1
      192 GETIMPORT                        R42 K4 [require]
      194 GETIMPORT                        R43 K1 [script]
      196 GETTABLEKS                       R43 R43 K2 ["Parent"]
      198 GETTABLEKS                       R43 R43 K44 ["ReactRootTags"]
      200 CALL                             R42 1 1
      201 GETTABLEKS                       R42 R42 K45 ["LegacyRoot"]
      203 GETIMPORT                        R43 K4 [require]
      205 GETIMPORT                        R44 K1 [script]
      207 GETTABLEKS                       R44 R44 K2 ["Parent"]
      209 GETTABLEKS                       R44 R44 K46 ["ReactFiberFlags"]
      211 CALL                             R43 1 1
      212 GETTABLEKS                       R44 R9 K47 ["SyncLane"]
      214 GETTABLEKS                       R45 R9 K48 ["SyncBatchedLane"]
      216 GETTABLEKS                       R46 R9 K49 ["NoTimestamp"]
      218 GETTABLEKS                       R47 R9 K50 ["findUpdateLane"]
      220 GETTABLEKS                       R48 R9 K51 ["findTransitionLane"]
      222 GETTABLEKS                       R49 R9 K52 ["findRetryLane"]
      224 GETTABLEKS                       R50 R9 K53 ["includesSomeLane"]
      226 GETTABLEKS                       R51 R9 K54 ["isSubsetOfLanes"]
      228 GETTABLEKS                       R52 R9 K55 ["mergeLanes"]
      230 GETTABLEKS                       R53 R9 K56 ["removeLanes"]
      232 GETTABLEKS                       R54 R9 K57 ["pickArbitraryLane"]
      234 GETTABLEKS                       R55 R9 K58 ["hasDiscreteLanes"]
      236 GETTABLEKS                       R56 R9 K59 ["includesNonIdleWork"]
      238 GETTABLEKS                       R57 R9 K60 ["includesOnlyRetries"]
      240 GETTABLEKS                       R58 R9 K61 ["includesOnlyTransitions"]
      242 GETTABLEKS                       R59 R9 K62 ["getNextLanes"]
      244 GETTABLEKS                       R60 R9 K63 ["returnNextLanesPriority"]
      246 GETTABLEKS                       R61 R9 K64 ["setCurrentUpdateLanePriority"]
      248 GETTABLEKS                       R62 R9 K65 ["getCurrentUpdateLanePriority"]
      250 GETTABLEKS                       R63 R9 K66 ["markStarvedLanesAsExpired"]
      252 GETTABLEKS                       R64 R9 K67 ["getLanesToRetrySynchronouslyOnError"]
      254 GETTABLEKS                       R65 R9 K68 ["getMostRecentEventTime"]
      256 GETTABLEKS                       R66 R9 K69 ["markRootUpdated"]
      258 GETTABLEKS                       R67 R9 K70 ["markRootSuspended"]
      260 GETTABLEKS                       R68 R9 K71 ["markRootPinged"]
      262 GETTABLEKS                       R69 R9 K72 ["markRootExpired"]
      264 GETTABLEKS                       R70 R9 K73 ["markDiscreteUpdatesExpired"]
      266 GETTABLEKS                       R71 R9 K74 ["markRootFinished"]
      268 GETTABLEKS                       R72 R9 K75 ["schedulerPriorityToLanePriority"]
      270 GETTABLEKS                       R73 R9 K76 ["lanePriorityToSchedulerPriority"]
      272 GETIMPORT                        R74 K4 [require]
      274 GETIMPORT                        R75 K1 [script]
      276 GETTABLEKS                       R75 R75 K2 ["Parent"]
      278 GETTABLEKS                       R75 R75 K77 ["ReactFiberTransition"]
      280 CALL                             R74 1 1
      281 GETIMPORT                        R75 K4 [require]
      283 GETIMPORT                        R77 K1 [script]
      285 GETTABLEKS                       R77 R77 K2 ["Parent"]
      287 GETTABLEKS                       R76 R77 K78 ["ReactFiberUnwindWork.new"]
      289 CALL                             R75 1 1
      290 GETTABLEKS                       R76 R75 K79 ["unwindWork"]
      292 GETTABLEKS                       R77 R75 K80 ["unwindInterruptedWork"]
      294 GETIMPORT                        R78 K4 [require]
      296 GETIMPORT                        R80 K1 [script]
      298 GETTABLEKS                       R80 R80 K2 ["Parent"]
      300 GETTABLEKS                       R79 R80 K81 ["ReactFiberThrow.new"]
      302 CALL                             R78 1 1
      303 GETTABLEKS                       R79 R78 K82 ["throwException"]
      305 GETTABLEKS                       R80 R78 K83 ["createRootErrorUpdate"]
      307 GETTABLEKS                       R81 R78 K84 ["createClassErrorUpdate"]
      309 GETIMPORT                        R82 K4 [require]
      311 GETIMPORT                        R84 K1 [script]
      313 GETTABLEKS                       R84 R84 K2 ["Parent"]
      315 GETTABLEKS                       R83 R84 K85 ["ReactFiberCommitWork.new"]
      317 CALL                             R82 1 1
      318 GETTABLEKS                       R83 R82 K86 ["commitBeforeMutationLifeCycles"]
      320 GETTABLEKS                       R84 R82 K87 ["commitPlacement"]
      322 GETTABLEKS                       R85 R82 K88 ["commitWork"]
      324 GETTABLEKS                       R86 R82 K89 ["commitDeletion"]
      326 GETTABLEKS                       R87 R82 K90 ["commitPassiveUnmount"]
      328 GETTABLEKS                       R88 R82 K91 ["commitPassiveUnmountInsideDeletedTree"]
      330 GETTABLEKS                       R89 R82 K92 ["commitPassiveMount"]
      332 GETTABLEKS                       R90 R82 K93 ["commitDetachRef"]
      334 GETTABLEKS                       R91 R82 K94 ["invokeLayoutEffectMountInDEV"]
      336 GETTABLEKS                       R92 R82 K95 ["invokePassiveEffectMountInDEV"]
      338 GETTABLEKS                       R93 R82 K96 ["invokeLayoutEffectUnmountInDEV"]
      340 GETTABLEKS                       R94 R82 K97 ["invokePassiveEffectUnmountInDEV"]
      342 GETTABLEKS                       R95 R82 K98 ["recursivelyCommitLayoutEffects"]
      344 GETIMPORT                        R96 K4 [require]
      346 GETTABLEKS                       R97 R0 K99 ["Promise"]
      348 CALL                             R96 1 1
      349 GETIMPORT                        R97 K4 [require]
      351 GETIMPORT                        R99 K1 [script]
      353 GETTABLEKS                       R99 R99 K2 ["Parent"]
      355 GETTABLEKS                       R98 R99 K100 ["ReactUpdateQueue.new"]
      357 CALL                             R97 1 1
      358 GETTABLEKS                       R97 R97 K101 ["enqueueUpdate"]
      360 GETIMPORT                        R98 K4 [require]
      362 GETIMPORT                        R100 K1 [script]
      364 GETTABLEKS                       R100 R100 K2 ["Parent"]
      366 GETTABLEKS                       R99 R100 K102 ["ReactFiberNewContext.new"]
      368 CALL                             R98 1 1
      369 GETTABLEKS                       R98 R98 K103 ["resetContextDependencies"]
      371 LOADNIL                          R99
      372 DUPTABLE                         R100 K110 [{["resetHooksAfterThrowRef"] = , ["ContextOnlyDispatcherRef"] = , ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"] = , ["originalBeginWorkRef"] = , ["completeWorkRef"] = }]
      373 DUPCLOSURE                       R101 K111 [PROTO_2]
      374 CAPTURE                          VAL R100
      375 DUPCLOSURE                       R102 K112 [PROTO_3]
      376 CAPTURE                          VAL R100
      377 LOADNIL                          R103
      378 NEWCLOSURE                       R104 P4
      379 CAPTURE                          REF R103
      380 CAPTURE                          VAL R100
      381 NEWCLOSURE                       R105 P5
      382 CAPTURE                          VAL R100
      383 CAPTURE                          REF R103
      384 NEWCLOSURE                       R106 P6
      385 CAPTURE                          VAL R100
      386 CAPTURE                          REF R103
      387 NEWCLOSURE                       R107 P7
      388 CAPTURE                          VAL R100
      389 CAPTURE                          REF R103
      390 GETIMPORT                        R108 K4 [require]
      392 GETIMPORT                        R109 K1 [script]
      394 GETTABLEKS                       R109 R109 K2 ["Parent"]
      396 GETTABLEKS                       R109 R109 K113 ["ReactCapturedValue"]
      398 CALL                             R108 1 1
      399 GETTABLEKS                       R108 R108 K114 ["createCapturedValue"]
      401 GETTABLEKS                       R109 R12 K115 ["push"]
      403 GETTABLEKS                       R110 R12 K116 ["pop"]
      405 GETTABLEKS                       R111 R12 K117 ["createCursor"]
      407 GETIMPORT                        R112 K4 [require]
      409 GETIMPORT                        R114 K1 [script]
      411 GETTABLEKS                       R114 R114 K2 ["Parent"]
      413 GETTABLEKS                       R113 R114 K118 ["ReactProfilerTimer.new"]
      415 CALL                             R112 1 1
      416 GETIMPORT                        R113 K4 [require]
      418 GETTABLEKS                       R114 R0 K5 ["Shared"]
      420 CALL                             R113 1 1
      421 GETTABLEKS                       R113 R113 K119 ["getComponentName"]
      423 GETIMPORT                        R114 K4 [require]
      425 GETIMPORT                        R116 K1 [script]
      427 GETTABLEKS                       R116 R116 K2 ["Parent"]
      429 GETTABLEKS                       R115 R116 K120 ["ReactStrictModeWarnings.new"]
      431 CALL                             R114 1 1
      432 GETIMPORT                        R115 K4 [require]
      434 GETIMPORT                        R116 K1 [script]
      436 GETTABLEKS                       R116 R116 K2 ["Parent"]
      438 GETTABLEKS                       R116 R116 K121 ["ReactCurrentFiber"]
      440 CALL                             R115 1 1
      441 GETTABLEKS                       R116 R115 K122 ["current"]
      443 GETTABLEKS                       R117 R115 K123 ["resetCurrentFiber"]
      445 GETTABLEKS                       R118 R115 K124 ["setCurrentFiber"]
      447 GETIMPORT                        R119 K4 [require]
      449 GETTABLEKS                       R120 R0 K5 ["Shared"]
      451 CALL                             R119 1 1
      452 GETTABLEKS                       R119 R119 K125 ["ReactErrorUtils"]
      454 GETTABLEKS                       R120 R119 K126 ["invokeGuardedCallback"]
      456 GETTABLEKS                       R121 R119 K127 ["hasCaughtError"]
      458 GETTABLEKS                       R122 R119 K128 ["clearCaughtError"]
      460 GETIMPORT                        R123 K4 [require]
      462 GETIMPORT                        R125 K1 [script]
      464 GETTABLEKS                       R125 R125 K2 ["Parent"]
      466 GETTABLEKS                       R124 R125 K129 ["ReactFiberDevToolsHook.new"]
      468 CALL                             R123 1 1
      469 GETTABLEKS                       R123 R123 K130 ["onCommitRoot"]
      471 GETIMPORT                        R124 K4 [require]
      473 GETIMPORT                        R125 K1 [script]
      475 GETTABLEKS                       R125 R125 K2 ["Parent"]
      477 GETTABLEKS                       R125 R125 K131 ["ReactTestSelectors"]
      479 CALL                             R124 1 1
      480 GETTABLEKS                       R124 R124 K130 ["onCommitRoot"]
      482 GETIMPORT                        R125 K4 [require]
      484 GETTABLEKS                       R126 R0 K5 ["Shared"]
      486 CALL                             R125 1 1
      487 GETTABLEKS                       R125 R125 K132 ["enqueueTask"]
      489 GETIMPORT                        R126 K4 [require]
      491 GETIMPORT                        R127 K1 [script]
      493 GETTABLEKS                       R127 R127 K2 ["Parent"]
      495 GETTABLEKS                       R127 R127 K133 ["ReactFiberTreeReflection"]
      497 CALL                             R126 1 1
      498 GETTABLEKS                       R126 R126 K134 ["doesFiberContain"]
      500 GETTABLEKS                       R127 R17 K135 ["ReactCurrentDispatcher"]
      502 GETTABLEKS                       R128 R17 K136 ["ReactCurrentOwner"]
      504 GETTABLEKS                       R129 R17 K137 ["IsSomeRendererActing"]
      506 LOADNIL                          R130
      507 LOADNIL                          R131
      508 NEWTABLE                         R132 64 0
      510 LOADN                            R133 0
      511 SETTABLEKS                       R133 R4 K138 ["NoContext"]
      513 LOADN                            R133 64
      514 SETTABLEKS                       R133 R4 K139 ["RetryAfterError"]
      516 DUPTABLE                         R133 K152 [{["Incomplete"] = 0, ["FatalErrored"] = 1, ["Errored"] = 2, ["Suspended"] = 3, ["SuspendedWithDelay"] = 4, ["Completed"] = 5}]
      517 LOADN                            R134 0
      518 LOADNIL                          R135
      519 LOADNIL                          R136
      520 GETTABLEKS                       R137 R9 K153 ["NoLanes"]
      522 GETTABLEKS                       R138 R9 K153 ["NoLanes"]
      524 SETTABLEKS                       R138 R4 K154 ["subtreeRenderLanes"]
      526 MOVE                             R138 R111
      527 GETTABLEKS                       R139 R9 K153 ["NoLanes"]
      529 CALL                             R138 1 1
      530 LOADN                            R139 0
      531 LOADNIL                          R140
      532 GETTABLEKS                       R141 R9 K153 ["NoLanes"]
      534 GETIMPORT                        R142 K4 [require]
      536 GETIMPORT                        R143 K1 [script]
      538 GETTABLEKS                       R143 R143 K2 ["Parent"]
      540 GETTABLEKS                       R143 R143 K155 ["ReactFiberWorkInProgress"]
      542 CALL                             R142 1 1
      543 GETTABLEKS                       R143 R142 K156 ["workInProgressRootSkippedLanes"]
      545 GETTABLEKS                       R144 R9 K153 ["NoLanes"]
      547 GETTABLEKS                       R145 R9 K153 ["NoLanes"]
      549 LOADNIL                          R146
      550 LOADN                            R147 0
      551 LOADK                            R148 K157 [∞]
      552 LOADNIL                          R149
      553 NEWCLOSURE                       R150 P8
      554 CAPTURE                          REF R148
      555 CAPTURE                          VAL R26
      556 NEWCLOSURE                       R151 P9
      557 CAPTURE                          REF R148
      558 SETTABLEKS                       R151 R4 K158 ["getRenderTargetTime"]
      560 LOADB                            R151 0
      561 LOADNIL                          R152
      562 LOADNIL                          R153
      563 LOADB                            R154 0
      564 LOADNIL                          R155
      565 MOVE                             R156 R27
      566 GETTABLEKS                       R157 R9 K153 ["NoLanes"]
      568 LOADNIL                          R158
      569 LOADN                            R159 0
      570 LOADNIL                          R160
      571 LOADN                            R161 0
      572 LOADNIL                          R162
      573 MOVE                             R163 R46
      574 GETTABLEKS                       R164 R9 K153 ["NoLanes"]
      576 GETTABLEKS                       R165 R9 K153 ["NoLanes"]
      578 LOADNIL                          R166
      579 LOADB                            R167 0
      580 NEWCLOSURE                       R168 P10
      581 CAPTURE                          REF R135
      582 SETTABLEKS                       R168 R4 K159 ["getWorkInProgressRoot"]
      584 NEWCLOSURE                       R168 P11
      585 CAPTURE                          REF R134
      586 CAPTURE                          VAL R26
      587 CAPTURE                          REF R163
      588 CAPTURE                          VAL R46
      589 SETTABLEKS                       R168 R4 K160 ["requestEventTime"]
      591 NEWCLOSURE                       R168 P12
      592 CAPTURE                          VAL R40
      593 CAPTURE                          VAL R44
      594 CAPTURE                          VAL R22
      595 CAPTURE                          VAL R28
      596 CAPTURE                          VAL R45
      597 CAPTURE                          VAL R13
      598 CAPTURE                          REF R134
      599 CAPTURE                          REF R137
      600 CAPTURE                          VAL R9
      601 CAPTURE                          VAL R54
      602 CAPTURE                          REF R164
      603 CAPTURE                          REF R141
      604 CAPTURE                          VAL R74
      605 CAPTURE                          REF R165
      606 CAPTURE                          REF R146
      607 CAPTURE                          VAL R48
      608 CAPTURE                          VAL R29
      609 CAPTURE                          VAL R47
      610 CAPTURE                          VAL R72
      611 CAPTURE                          VAL R62
      612 CAPTURE                          VAL R1
      613 SETTABLEKS                       R168 R4 K161 ["requestUpdateLane"]
      615 NEWCLOSURE                       R168 P13
      616 CAPTURE                          VAL R40
      617 CAPTURE                          VAL R44
      618 CAPTURE                          VAL R22
      619 CAPTURE                          VAL R28
      620 CAPTURE                          VAL R45
      621 CAPTURE                          REF R164
      622 CAPTURE                          VAL R9
      623 CAPTURE                          REF R141
      624 CAPTURE                          VAL R49
      625 SETGLOBAL                        R168 K162 ["requestRetryLane"]
      627 NEWCLOSURE                       R168 P14
      628 CAPTURE                          VAL R132
      629 CAPTURE                          VAL R66
      630 CAPTURE                          REF R135
      631 CAPTURE                          VAL R13
      632 CAPTURE                          REF R134
      633 CAPTURE                          REF R144
      634 CAPTURE                          VAL R52
      635 CAPTURE                          REF R139
      636 CAPTURE                          REF R137
      637 CAPTURE                          VAL R22
      638 CAPTURE                          VAL R44
      639 CAPTURE                          REF R99
      640 CAPTURE                          REF R148
      641 CAPTURE                          VAL R26
      642 CAPTURE                          VAL R31
      643 CAPTURE                          VAL R29
      644 CAPTURE                          VAL R28
      645 CAPTURE                          REF R158
      646 CAPTURE                          REF R146
      647 SETTABLEKS                       R168 R4 K163 ["scheduleUpdateOnFiber"]
      649 DUPCLOSURE                       R168 K164 [PROTO_16]
      650 CAPTURE                          VAL R52
      651 CAPTURE                          VAL R43
      652 CAPTURE                          VAL R132
      653 CAPTURE                          VAL R41
      654 SETTABLEKS                       R168 R132 K165 ["markUpdateLaneFromFiberToRoot"]
      656 NEWCLOSURE                       R99 P16
      657 CAPTURE                          VAL R63
      658 CAPTURE                          REF R135
      659 CAPTURE                          REF R137
      660 CAPTURE                          VAL R9
      661 CAPTURE                          VAL R59
      662 CAPTURE                          VAL R60
      663 CAPTURE                          VAL R21
      664 CAPTURE                          VAL R32
      665 CAPTURE                          VAL R132
      666 CAPTURE                          VAL R20
      667 CAPTURE                          VAL R28
      668 CAPTURE                          VAL R73
      669 NEWCLOSURE                       R168 P17
      670 CAPTURE                          REF R163
      671 CAPTURE                          VAL R46
      672 CAPTURE                          REF R164
      673 CAPTURE                          VAL R9
      674 CAPTURE                          REF R165
      675 CAPTURE                          VAL R18
      676 CAPTURE                          REF R134
      677 CAPTURE                          VAL R4
      678 CAPTURE                          REF R135
      679 CAPTURE                          REF R137
      680 CAPTURE                          VAL R59
      681 CAPTURE                          VAL R132
      682 CAPTURE                          VAL R50
      683 CAPTURE                          REF R141
      684 CAPTURE                          REF R144
      685 CAPTURE                          VAL R38
      686 CAPTURE                          VAL R64
      687 CAPTURE                          REF R140
      688 CAPTURE                          REF R99
      689 CAPTURE                          VAL R26
      690 SETTABLEKS                       R168 R132 K166 ["performConcurrentWorkOnRoot"]
      692 LOADN                            R168 0
      693 LOADB                            R169 0
      694 NEWCLOSURE                       R170 P18
      695 CAPTURE                          REF R168
      696 SETGLOBAL                        R170 K167 ["shouldForceFlushFallbacksInDEV"]
      698 NEWCLOSURE                       R170 P19
      699 CAPTURE                          VAL R18
      700 CAPTURE                          VAL R132
      701 CAPTURE                          VAL R57
      702 CAPTURE                          REF R147
      703 CAPTURE                          VAL R26
      704 CAPTURE                          VAL R59
      705 CAPTURE                          VAL R9
      706 CAPTURE                          VAL R51
      707 CAPTURE                          VAL R4
      708 CAPTURE                          VAL R68
      709 CAPTURE                          VAL R38
      710 CAPTURE                          VAL R58
      711 CAPTURE                          VAL R65
      712 SETTABLEKS                       R170 R132 K168 ["finishConcurrentRender"]
      714 NEWCLOSURE                       R170 P20
      715 CAPTURE                          VAL R53
      716 CAPTURE                          REF R145
      717 CAPTURE                          REF R144
      718 CAPTURE                          VAL R67
      719 SETTABLEKS                       R170 R132 K70 ["markRootSuspended"]
      721 NEWCLOSURE                       R170 P21
      722 CAPTURE                          VAL R18
      723 CAPTURE                          REF R134
      724 CAPTURE                          VAL R4
      725 CAPTURE                          REF R135
      726 CAPTURE                          VAL R50
      727 CAPTURE                          REF R137
      728 CAPTURE                          VAL R132
      729 CAPTURE                          REF R141
      730 CAPTURE                          REF R144
      731 CAPTURE                          VAL R59
      732 CAPTURE                          VAL R9
      733 CAPTURE                          VAL R42
      734 CAPTURE                          VAL R38
      735 CAPTURE                          VAL R64
      736 CAPTURE                          REF R140
      737 CAPTURE                          REF R99
      738 CAPTURE                          VAL R26
      739 SETTABLEKS                       R170 R132 K169 ["performSyncWorkOnRoot"]
      741 NEWCLOSURE                       R170 P22
      742 CAPTURE                          VAL R69
      743 CAPTURE                          REF R99
      744 CAPTURE                          VAL R26
      745 CAPTURE                          REF R134
      746 CAPTURE                          REF R148
      747 CAPTURE                          VAL R31
      748 SETTABLEKS                       R170 R4 K170 ["flushRoot"]
      750 NEWCLOSURE                       R170 P23
      751 CAPTURE                          REF R134
      752 SETTABLEKS                       R170 R4 K171 ["getExecutionContext"]
      754 NEWCLOSURE                       R170 P24
      755 CAPTURE                          REF R134
      756 CAPTURE                          VAL R1
      757 CAPTURE                          VAL R132
      758 CAPTURE                          VAL R4
      759 SETTABLEKS                       R170 R4 K172 ["flushDiscreteUpdates"]
      761 DUPCLOSURE                       R170 K173 [PROTO_32]
      762 CAPTURE                          VAL R13
      763 CAPTURE                          VAL R62
      764 CAPTURE                          VAL R61
      765 CAPTURE                          VAL R9
      766 CAPTURE                          VAL R23
      767 CAPTURE                          VAL R30
      768 SETTABLEKS                       R170 R4 K174 ["deferredUpdates"]
      770 NEWCLOSURE                       R170 P26
      771 CAPTURE                          REF R158
      772 CAPTURE                          VAL R70
      773 CAPTURE                          REF R99
      774 CAPTURE                          VAL R26
      775 CAPTURE                          VAL R31
      776 SETTABLEKS                       R170 R132 K175 ["flushPendingDiscreteUpdates"]
      778 NEWCLOSURE                       R170 P27
      779 CAPTURE                          REF R134
      780 CAPTURE                          REF R148
      781 CAPTURE                          VAL R26
      782 CAPTURE                          VAL R31
      783 SETTABLEKS                       R170 R4 K176 ["batchedUpdates"]
      785 NEWCLOSURE                       R170 P28
      786 CAPTURE                          REF R134
      787 CAPTURE                          REF R148
      788 CAPTURE                          VAL R26
      789 CAPTURE                          VAL R31
      790 SETTABLEKS                       R170 R4 K177 ["batchedEventUpdates"]
      792 NEWCLOSURE                       R170 P29
      793 CAPTURE                          REF R134
      794 CAPTURE                          VAL R13
      795 CAPTURE                          VAL R62
      796 CAPTURE                          VAL R61
      797 CAPTURE                          VAL R9
      798 CAPTURE                          VAL R23
      799 CAPTURE                          VAL R29
      800 CAPTURE                          REF R148
      801 CAPTURE                          VAL R26
      802 CAPTURE                          VAL R31
      803 SETTABLEKS                       R170 R4 K178 ["discreteUpdates"]
      805 NEWCLOSURE                       R170 P30
      806 CAPTURE                          REF R134
      807 CAPTURE                          REF R148
      808 CAPTURE                          VAL R26
      809 CAPTURE                          VAL R31
      810 SETTABLEKS                       R170 R4 K179 ["unbatchedUpdates"]
      812 NEWCLOSURE                       R170 P31
      813 CAPTURE                          REF R134
      814 CAPTURE                          VAL R1
      815 CAPTURE                          VAL R13
      816 CAPTURE                          VAL R62
      817 CAPTURE                          VAL R61
      818 CAPTURE                          VAL R9
      819 CAPTURE                          VAL R23
      820 CAPTURE                          VAL R28
      821 CAPTURE                          VAL R31
      822 SETTABLEKS                       R170 R4 K180 ["flushSync"]
      824 NEWCLOSURE                       R170 P32
      825 CAPTURE                          REF R134
      826 CAPTURE                          VAL R13
      827 CAPTURE                          VAL R62
      828 CAPTURE                          VAL R61
      829 CAPTURE                          VAL R9
      830 CAPTURE                          VAL R23
      831 CAPTURE                          VAL R28
      832 CAPTURE                          REF R148
      833 CAPTURE                          VAL R26
      834 CAPTURE                          VAL R31
      835 SETTABLEKS                       R170 R4 K181 ["flushControlled"]
      837 NEWCLOSURE                       R170 P33
      838 CAPTURE                          VAL R109
      839 CAPTURE                          VAL R138
      840 CAPTURE                          VAL R4
      841 CAPTURE                          VAL R52
      842 CAPTURE                          REF R141
      843 SETTABLEKS                       R170 R4 K182 ["pushRenderLanes"]
      845 DUPCLOSURE                       R170 K183 [PROTO_47]
      846 CAPTURE                          VAL R4
      847 CAPTURE                          VAL R138
      848 CAPTURE                          VAL R110
      849 SETTABLEKS                       R170 R4 K184 ["popRenderLanes"]
      851 NEWCLOSURE                       R170 P35
      852 CAPTURE                          VAL R9
      853 CAPTURE                          VAL R38
      854 CAPTURE                          REF R136
      855 CAPTURE                          VAL R77
      856 CAPTURE                          REF R135
      857 CAPTURE                          VAL R39
      858 CAPTURE                          REF R137
      859 CAPTURE                          VAL R4
      860 CAPTURE                          REF R141
      861 CAPTURE                          REF R139
      862 CAPTURE                          REF R140
      863 CAPTURE                          VAL R143
      864 CAPTURE                          REF R144
      865 CAPTURE                          REF R145
      866 CAPTURE                          VAL R13
      867 CAPTURE                          REF R162
      868 CAPTURE                          VAL R114
      869 SETTABLEKS                       R170 R132 K185 ["prepareFreshStack"]
      871 NEWCLOSURE                       R170 P36
      872 CAPTURE                          REF R136
      873 CAPTURE                          VAL R98
      874 CAPTURE                          VAL R100
      875 CAPTURE                          REF R103
      876 CAPTURE                          VAL R117
      877 CAPTURE                          VAL R128
      878 CAPTURE                          REF R139
      879 CAPTURE                          REF R140
      880 CAPTURE                          VAL R13
      881 CAPTURE                          VAL R40
      882 CAPTURE                          VAL R112
      883 CAPTURE                          VAL R79
      884 CAPTURE                          REF R137
      885 CAPTURE                          VAL R4
      886 CAPTURE                          VAL R132
      887 SETTABLEKS                       R170 R132 K186 ["handleError"]
      889 NEWCLOSURE                       R170 P37
      890 CAPTURE                          VAL R127
      891 CAPTURE                          VAL R100
      892 CAPTURE                          REF R103
      893 SETTABLEKS                       R170 R132 K187 ["pushDispatcher"]
      895 DUPCLOSURE                       R170 K188 [PROTO_52]
      896 CAPTURE                          VAL R127
      897 SETTABLEKS                       R170 R132 K189 ["popDispatcher"]
      899 DUPCLOSURE                       R170 K190 [PROTO_53]
      900 CAPTURE                          VAL R13
      901 CAPTURE                          VAL R36
      902 SETTABLEKS                       R170 R132 K191 ["pushInteractions"]
      904 DUPCLOSURE                       R170 K192 [PROTO_54]
      905 CAPTURE                          VAL R13
      906 CAPTURE                          VAL R36
      907 SETTABLEKS                       R170 R132 K193 ["popInteractions"]
      909 NEWCLOSURE                       R170 P41
      910 CAPTURE                          REF R147
      911 CAPTURE                          VAL R26
      912 SETTABLEKS                       R170 R4 K194 ["markCommitTimeOfFallback"]
      914 DUPCLOSURE                       R170 K195 [PROTO_56]
      915 CAPTURE                          VAL R142
      916 SETTABLEKS                       R170 R4 K196 ["markSkippedUpdateLanes"]
      918 NEWCLOSURE                       R170 P43
      919 CAPTURE                          REF R139
      920 SETTABLEKS                       R170 R4 K197 ["renderDidSuspend"]
      922 NEWCLOSURE                       R170 P44
      923 CAPTURE                          REF R139
      924 CAPTURE                          REF R135
      925 CAPTURE                          VAL R56
      926 CAPTURE                          VAL R143
      927 CAPTURE                          REF R144
      928 CAPTURE                          VAL R132
      929 CAPTURE                          REF R137
      930 SETTABLEKS                       R170 R4 K198 ["renderDidSuspendDelayIfPossible"]
      932 NEWCLOSURE                       R170 P45
      933 CAPTURE                          REF R139
      934 SETTABLEKS                       R170 R4 K199 ["renderDidError"]
      936 NEWCLOSURE                       R170 P46
      937 CAPTURE                          REF R139
      938 SETTABLEKS                       R170 R4 K200 ["renderHasNotSuspendedYet"]
      940 NEWCLOSURE                       R170 P47
      941 CAPTURE                          REF R134
      942 CAPTURE                          VAL R132
      943 CAPTURE                          REF R135
      944 CAPTURE                          REF R137
      945 CAPTURE                          VAL R13
      946 CAPTURE                          VAL R33
      947 CAPTURE                          VAL R34
      948 CAPTURE                          VAL R98
      949 CAPTURE                          REF R136
      950 CAPTURE                          VAL R18
      951 CAPTURE                          VAL R9
      952 CAPTURE                          REF R139
      953 SETTABLEKS                       R170 R132 K201 ["renderRootSync"]
      955 NEWCLOSURE                       R170 P48
      956 CAPTURE                          REF R136
      957 CAPTURE                          VAL R132
      958 SETTABLEKS                       R170 R132 K202 ["workLoopSync"]
      960 NEWCLOSURE                       R170 P49
      961 CAPTURE                          REF R134
      962 CAPTURE                          VAL R132
      963 CAPTURE                          REF R135
      964 CAPTURE                          REF R137
      965 CAPTURE                          REF R148
      966 CAPTURE                          VAL R26
      967 CAPTURE                          VAL R13
      968 CAPTURE                          VAL R33
      969 CAPTURE                          VAL R34
      970 CAPTURE                          VAL R98
      971 CAPTURE                          REF R136
      972 CAPTURE                          VAL R9
      973 CAPTURE                          REF R139
      974 SETTABLEKS                       R170 R132 K203 ["renderRootConcurrent"]
      976 NEWCLOSURE                       R170 P50
      977 CAPTURE                          REF R136
      978 CAPTURE                          VAL R24
      979 CAPTURE                          VAL R132
      980 SETTABLEKS                       R170 R132 K204 ["workLoopConcurrent"]
      982 NEWCLOSURE                       R170 P51
      983 CAPTURE                          VAL R118
      984 CAPTURE                          VAL R13
      985 CAPTURE                          VAL R40
      986 CAPTURE                          VAL R112
      987 CAPTURE                          VAL R132
      988 CAPTURE                          VAL R4
      989 CAPTURE                          VAL R117
      990 CAPTURE                          REF R136
      991 CAPTURE                          VAL R128
      992 SETTABLEKS                       R170 R132 K205 ["performUnitOfWork"]
      994 NEWCLOSURE                       R170 P52
      995 CAPTURE                          VAL R43
      996 CAPTURE                          VAL R118
      997 CAPTURE                          VAL R13
      998 CAPTURE                          VAL R40
      999 CAPTURE                          VAL R4
     1000 CAPTURE                          VAL R100
     1001 CAPTURE                          VAL R112
     1002 CAPTURE                          VAL R117
     1003 CAPTURE                          REF R136
     1004 CAPTURE                          VAL R76
     1005 CAPTURE                          REF R139
     1006 SETTABLEKS                       R170 R132 K206 ["completeUnitOfWork"]
     1008 DUPCLOSURE                       R170 K207 [PROTO_68]
     1009 CAPTURE                          VAL R22
     1010 CAPTURE                          VAL R23
     1011 CAPTURE                          VAL R28
     1012 CAPTURE                          VAL R132
     1013 SETTABLEKS                       R170 R132 K208 ["commitRoot"]
     1015 NEWCLOSURE                       R170 P54
     1016 CAPTURE                          VAL R4
     1017 CAPTURE                          REF R155
     1018 CAPTURE                          VAL R18
     1019 CAPTURE                          REF R134
     1020 CAPTURE                          VAL R13
     1021 CAPTURE                          VAL R33
     1022 CAPTURE                          VAL R34
     1023 CAPTURE                          VAL R9
     1024 CAPTURE                          VAL R52
     1025 CAPTURE                          VAL R71
     1026 CAPTURE                          REF R158
     1027 CAPTURE                          VAL R55
     1028 CAPTURE                          REF R135
     1029 CAPTURE                          REF R136
     1030 CAPTURE                          REF R137
     1031 CAPTURE                          VAL R43
     1032 CAPTURE                          VAL R62
     1033 CAPTURE                          VAL R61
     1034 CAPTURE                          VAL R132
     1035 CAPTURE                          VAL R128
     1036 CAPTURE                          REF R166
     1037 CAPTURE                          VAL R38
     1038 CAPTURE                          REF R167
     1039 CAPTURE                          VAL R112
     1040 CAPTURE                          VAL R118
     1041 CAPTURE                          VAL R120
     1042 CAPTURE                          VAL R95
     1043 CAPTURE                          VAL R121
     1044 CAPTURE                          VAL R122
     1045 CAPTURE                          REF R130
     1046 CAPTURE                          VAL R117
     1047 CAPTURE                          REF R154
     1048 CAPTURE                          VAL R20
     1049 CAPTURE                          VAL R30
     1050 CAPTURE                          VAL R25
     1051 CAPTURE                          REF R157
     1052 CAPTURE                          REF R156
     1053 CAPTURE                          REF R162
     1054 CAPTURE                          REF R153
     1055 CAPTURE                          VAL R15
     1056 CAPTURE                          VAL R44
     1057 CAPTURE                          REF R160
     1058 CAPTURE                          REF R159
     1059 CAPTURE                          VAL R123
     1060 CAPTURE                          VAL R124
     1061 CAPTURE                          REF R99
     1062 CAPTURE                          VAL R26
     1063 CAPTURE                          REF R151
     1064 CAPTURE                          REF R152
     1065 CAPTURE                          VAL R31
     1066 SETTABLEKS                       R170 R132 K209 ["commitRootImpl"]
     1068 DUPCLOSURE                       R170 K210 [PROTO_71]
     1069 CAPTURE                          VAL R132
     1070 CAPTURE                          VAL R43
     1071 CAPTURE                          VAL R118
     1072 CAPTURE                          VAL R120
     1073 CAPTURE                          VAL R121
     1074 CAPTURE                          VAL R122
     1075 CAPTURE                          VAL R4
     1076 CAPTURE                          VAL R117
     1077 SETTABLEKS                       R170 R132 K211 ["commitBeforeMutationEffects"]
     1079 NEWCLOSURE                       R170 P56
     1080 CAPTURE                          REF R167
     1081 CAPTURE                          REF R166
     1082 CAPTURE                          VAL R41
     1083 CAPTURE                          VAL R82
     1084 CAPTURE                          VAL R126
     1085 CAPTURE                          VAL R38
     1086 CAPTURE                          VAL R43
     1087 CAPTURE                          VAL R118
     1088 CAPTURE                          VAL R83
     1089 CAPTURE                          VAL R117
     1090 CAPTURE                          REF R154
     1091 CAPTURE                          VAL R20
     1092 CAPTURE                          VAL R30
     1093 CAPTURE                          VAL R4
     1094 SETTABLEKS                       R170 R132 K212 ["commitBeforeMutationEffectsImpl"]
     1096 NEWCLOSURE                       R170 P57
     1097 CAPTURE                          VAL R126
     1098 CAPTURE                          REF R166
     1099 CAPTURE                          REF R167
     1100 CAPTURE                          VAL R38
     1101 SETTABLEKS                       R170 R132 K213 ["commitBeforeMutationEffectsDeletions"]
     1103 DUPCLOSURE                       R170 K214 [PROTO_75]
     1104 CAPTURE                          VAL R86
     1105 CAPTURE                          VAL R4
     1106 CAPTURE                          VAL R43
     1107 CAPTURE                          VAL R132
     1108 CAPTURE                          VAL R118
     1109 CAPTURE                          VAL R120
     1110 CAPTURE                          VAL R121
     1111 CAPTURE                          VAL R122
     1112 CAPTURE                          VAL R117
     1113 SETTABLEKS                       R170 R132 K215 ["commitMutationEffects"]
     1115 DUPCLOSURE                       R170 K216 [PROTO_76]
     1116 CAPTURE                          VAL R43
     1117 CAPTURE                          VAL R90
     1118 CAPTURE                          VAL R84
     1119 CAPTURE                          VAL R85
     1120 SETTABLEKS                       R170 R132 K217 ["commitMutationEffectsImpl"]
     1122 DUPCLOSURE                       R170 K218 [PROTO_77]
     1123 CAPTURE                          VAL R86
     1124 CAPTURE                          VAL R4
     1125 SETTABLEKS                       R170 R132 K219 ["commitMutationEffectsDeletions"]
     1127 NEWCLOSURE                       R170 P61
     1128 CAPTURE                          REF R154
     1129 CAPTURE                          VAL R20
     1130 CAPTURE                          VAL R30
     1131 CAPTURE                          VAL R4
     1132 SETTABLEKS                       R170 R4 K220 ["schedulePassiveEffectCallback"]
     1134 LOADNIL                          R170
     1135 NEWCLOSURE                       R171 P62
     1136 CAPTURE                          REF R156
     1137 CAPTURE                          VAL R27
     1138 CAPTURE                          VAL R30
     1139 CAPTURE                          VAL R13
     1140 CAPTURE                          VAL R62
     1141 CAPTURE                          VAL R61
     1142 CAPTURE                          VAL R72
     1143 CAPTURE                          VAL R23
     1144 CAPTURE                          REF R170
     1145 SETTABLEKS                       R171 R4 K221 ["flushPassiveEffects"]
     1147 NEWCLOSURE                       R131 P63
     1148 CAPTURE                          VAL R13
     1149 CAPTURE                          VAL R41
     1150 CAPTURE                          REF R149
     1151 CAPTURE                          VAL R43
     1152 CAPTURE                          REF R131
     1153 CAPTURE                          VAL R118
     1154 CAPTURE                          VAL R120
     1155 CAPTURE                          VAL R89
     1156 CAPTURE                          VAL R121
     1157 CAPTURE                          VAL R122
     1158 CAPTURE                          VAL R4
     1159 CAPTURE                          VAL R117
     1160 DUPCLOSURE                       R171 K222 [PROTO_82]
     1161 CAPTURE                          VAL R132
     1162 CAPTURE                          VAL R43
     1163 CAPTURE                          VAL R171
     1164 CAPTURE                          VAL R118
     1165 CAPTURE                          VAL R87
     1166 CAPTURE                          VAL R117
     1167 DUPCLOSURE                       R172 K223 [PROTO_83]
     1168 CAPTURE                          VAL R43
     1169 CAPTURE                          VAL R132
     1170 CAPTURE                          VAL R118
     1171 CAPTURE                          VAL R88
     1172 CAPTURE                          VAL R117
     1173 SETTABLEKS                       R172 R132 K224 ["flushPassiveUnmountEffectsInsideOfDeletedTree"]
     1175 NEWCLOSURE                       R170 P66
     1176 CAPTURE                          REF R155
     1177 CAPTURE                          REF R157
     1178 CAPTURE                          VAL R9
     1179 CAPTURE                          VAL R18
     1180 CAPTURE                          REF R134
     1181 CAPTURE                          VAL R13
     1182 CAPTURE                          VAL R33
     1183 CAPTURE                          VAL R34
     1184 CAPTURE                          VAL R132
     1185 CAPTURE                          VAL R171
     1186 CAPTURE                          REF R131
     1187 CAPTURE                          VAL R15
     1188 CAPTURE                          VAL R31
     1189 CAPTURE                          REF R161
     1190 NEWCLOSURE                       R172 P67
     1191 CAPTURE                          REF R153
     1192 SETTABLEKS                       R172 R4 K225 ["isAlreadyFailedLegacyErrorBoundary"]
     1194 NEWCLOSURE                       R172 P68
     1195 CAPTURE                          REF R153
     1196 SETTABLEKS                       R172 R4 K226 ["markLegacyErrorBoundaryAsFailed"]
     1198 NEWCLOSURE                       R172 P69
     1199 CAPTURE                          REF R151
     1200 CAPTURE                          REF R152
     1201 SETTABLEKS                       R172 R4 K227 ["onUncaughtError"]
     1203 NEWCLOSURE                       R130 P70
     1204 CAPTURE                          VAL R108
     1205 CAPTURE                          VAL R80
     1206 CAPTURE                          VAL R44
     1207 CAPTURE                          VAL R4
     1208 CAPTURE                          VAL R97
     1209 CAPTURE                          VAL R132
     1210 CAPTURE                          VAL R66
     1211 CAPTURE                          REF R99
     1212 NEWCLOSURE                       R173 P71
     1213 CAPTURE                          VAL R41
     1214 CAPTURE                          REF R130
     1215 CAPTURE                          VAL R14
     1216 CAPTURE                          VAL R4
     1217 CAPTURE                          VAL R108
     1218 CAPTURE                          VAL R81
     1219 CAPTURE                          VAL R44
     1220 CAPTURE                          VAL R97
     1221 CAPTURE                          VAL R132
     1222 CAPTURE                          VAL R66
     1223 CAPTURE                          REF R99
     1224 SETTABLEKS                       R173 R4 K228 ["captureCommitPhaseError"]
     1226 NEWCLOSURE                       R173 P72
     1227 CAPTURE                          VAL R4
     1228 CAPTURE                          VAL R68
     1229 CAPTURE                          REF R135
     1230 CAPTURE                          VAL R51
     1231 CAPTURE                          REF R137
     1232 CAPTURE                          REF R139
     1233 CAPTURE                          VAL R57
     1234 CAPTURE                          VAL R26
     1235 CAPTURE                          REF R147
     1236 CAPTURE                          VAL R132
     1237 CAPTURE                          VAL R9
     1238 CAPTURE                          REF R145
     1239 CAPTURE                          VAL R52
     1240 CAPTURE                          REF R99
     1241 SETTABLEKS                       R173 R4 K229 ["pingSuspendedRoot"]
     1243 NEWCLOSURE                       R173 P73
     1244 CAPTURE                          VAL R9
     1245 CAPTURE                          VAL R4
     1246 CAPTURE                          VAL R132
     1247 CAPTURE                          VAL R66
     1248 CAPTURE                          REF R99
     1249 SETGLOBAL                        R173 K230 ["retryTimedOutBoundary"]
     1251 DUPCLOSURE                       R173 K231 [PROTO_92]
     1252 CAPTURE                          VAL R9
     1253 SETTABLEKS                       R173 R4 K232 ["resolveRetryWakeable"]
     1255 DUPCLOSURE                       R173 K233 [PROTO_93]
     1256 SETGLOBAL                        R173 K234 ["jnd"]
     1258 NEWCLOSURE                       R173 P76
     1259 CAPTURE                          REF R159
     1260 CAPTURE                          REF R160
     1261 CAPTURE                          VAL R18
     1262 CAPTURE                          REF R161
     1263 CAPTURE                          VAL R1
     1264 SETTABLEKS                       R173 R132 K235 ["checkForNestedUpdates"]
     1266 DUPCLOSURE                       R173 K236 [PROTO_95]
     1267 CAPTURE                          VAL R114
     1268 CAPTURE                          VAL R13
     1269 SETGLOBAL                        R173 K237 ["flushRenderPhaseStrictModeWarningsInDEV"]
     1271 DUPCLOSURE                       R173 K238 [PROTO_96]
     1272 CAPTURE                          VAL R15
     1273 CAPTURE                          VAL R118
     1274 CAPTURE                          VAL R43
     1275 CAPTURE                          VAL R93
     1276 CAPTURE                          VAL R94
     1277 CAPTURE                          VAL R91
     1278 CAPTURE                          VAL R92
     1279 CAPTURE                          VAL R117
     1280 SETGLOBAL                        R173 K239 ["commitDoubleInvokeEffectsInDEV"]
     1282 DUPCLOSURE                       R173 K240 [PROTO_97]
     1283 CAPTURE                          VAL R15
     1284 CAPTURE                          VAL R43
     1285 SETGLOBAL                        R173 K241 ["invokeEffectsInDev"]
     1287 LOADNIL                          R173
     1288 NEWCLOSURE                       R174 P80
     1289 CAPTURE                          REF R134
     1290 CAPTURE                          VAL R40
     1291 CAPTURE                          VAL R41
     1292 CAPTURE                          VAL R113
     1293 CAPTURE                          REF R173
     1294 CAPTURE                          VAL R115
     1295 CAPTURE                          VAL R118
     1296 CAPTURE                          VAL R1
     1297 CAPTURE                          VAL R117
     1298 SETTABLEKS                       R174 R132 K242 ["warnAboutUpdateOnNotYetMountedFiberInDEV"]
     1300 GETIMPORT                        R174 K244 [_G]
     1302 GETTABLEKS                       R174 R174 K245 ["__DEV__"]
     1304 JUMPIFNOT                        R174 ; [+19]
     1305 GETTABLEKS                       R174 R13 K246 ["replayFailedUnitOfWorkWithInvokeGuardedCallback"]
     1307 JUMPIFNOT                        R174 ; [+16]
     1308 NEWCLOSURE                       R174 P81
     1309 CAPTURE                          VAL R39
     1310 CAPTURE                          VAL R101
     1311 CAPTURE                          VAL R98
     1312 CAPTURE                          VAL R100
     1313 CAPTURE                          REF R103
     1314 CAPTURE                          VAL R77
     1315 CAPTURE                          VAL R13
     1316 CAPTURE                          VAL R40
     1317 CAPTURE                          VAL R112
     1318 CAPTURE                          VAL R120
     1319 CAPTURE                          VAL R121
     1320 CAPTURE                          VAL R122
     1321 SETTABLEKS                       R174 R132 K247 ["beginWork"]
     1323 JUMP                             ; [+2]
     1324 SETTABLEKS                       R101 R132 K247 ["beginWork"]
     1326 LOADB                            R174 0
     1327 LOADNIL                          R175
     1328 GETIMPORT                        R176 K244 [_G]
     1330 GETTABLEKS                       R176 R176 K245 ["__DEV__"]
     1332 JUMPIFNOT                        R176 ; [+2]
     1333 NEWTABLE                         R175 0 0
     1335 NEWCLOSURE                       R176 P82
     1336 CAPTURE                          VAL R115
     1337 CAPTURE                          REF R134
     1338 CAPTURE                          VAL R100
     1339 CAPTURE                          REF R103
     1340 CAPTURE                          VAL R41
     1341 CAPTURE                          REF R136
     1342 CAPTURE                          VAL R113
     1343 CAPTURE                          REF R175
     1344 CAPTURE                          VAL R1
     1345 CAPTURE                          REF R174
     1346 SETTABLEKS                       R176 R132 K248 ["warnAboutRenderPhaseUpdatesInDEV"]
     1348 DUPTABLE                         R176 K250 [{["current"] = False}]
     1349 SETTABLEKS                       R176 R4 K251 ["IsThisRendererActing"]
     1351 DUPCLOSURE                       R176 K252 [PROTO_104]
     1352 CAPTURE                          VAL R38
     1353 CAPTURE                          VAL R129
     1354 CAPTURE                          VAL R4
     1355 CAPTURE                          VAL R115
     1356 CAPTURE                          VAL R118
     1357 CAPTURE                          VAL R1
     1358 CAPTURE                          VAL R117
     1359 SETTABLEKS                       R176 R4 K253 ["warnIfNotScopedWithMatchingAct"]
     1361 DUPCLOSURE                       R176 K254 [PROTO_105]
     1362 CAPTURE                          VAL R38
     1363 CAPTURE                          VAL R40
     1364 CAPTURE                          VAL R129
     1365 CAPTURE                          VAL R4
     1366 CAPTURE                          VAL R1
     1367 CAPTURE                          VAL R113
     1368 SETTABLEKS                       R176 R4 K255 ["warnIfNotCurrentlyActingEffectsInDEV"]
     1370 NEWCLOSURE                       R176 P85
     1371 CAPTURE                          VAL R38
     1372 CAPTURE                          REF R134
     1373 CAPTURE                          VAL R129
     1374 CAPTURE                          VAL R4
     1375 CAPTURE                          VAL R116
     1376 CAPTURE                          VAL R118
     1377 CAPTURE                          VAL R1
     1378 CAPTURE                          VAL R113
     1379 CAPTURE                          VAL R117
     1380 SETTABLEKS                       R176 R4 K256 ["warnIfNotCurrentlyActingUpdatesInDEV"]
     1382 LOADB                            R176 0
     1383 NEWCLOSURE                       R177 P86
     1384 CAPTURE                          REF R176
     1385 CAPTURE                          VAL R10
     1386 CAPTURE                          VAL R40
     1387 CAPTURE                          VAL R1
     1388 CAPTURE                          VAL R13
     1389 SETTABLEKS                       R177 R4 K257 ["warnIfUnmockedScheduler"]
     1391 DUPCLOSURE                       R177 K258 [PROTO_109]
     1392 SETGLOBAL                        R177 K259 ["computeThreadID"]
     1394 NEWCLOSURE                       R177 P88
     1395 CAPTURE                          VAL R13
     1396 CAPTURE                          REF R162
     1397 SETTABLEKS                       R177 R4 K260 ["markSpawnedWork"]
     1399 DUPCLOSURE                       R177 K261 [PROTO_111]
     1400 CAPTURE                          VAL R13
     1401 CAPTURE                          VAL R5
     1402 CAPTURE                          VAL R37
     1403 SETGLOBAL                        R177 K262 ["scheduleInteractions"]
     1405 DUPCLOSURE                       R177 K263 [PROTO_112]
     1406 CAPTURE                          VAL R13
     1407 CAPTURE                          VAL R36
     1408 SETTABLEKS                       R177 R132 K264 ["schedulePendingInteractions"]
     1410 DUPCLOSURE                       R177 K265 [PROTO_114]
     1411 CAPTURE                          VAL R13
     1412 CAPTURE                          VAL R3
     1413 CAPTURE                          VAL R50
     1414 CAPTURE                          VAL R37
     1415 CAPTURE                          VAL R20
     1416 CAPTURE                          VAL R28
     1417 SETTABLEKS                       R177 R132 K266 ["startWorkOnPendingInteractions"]
     1419 DUPCLOSURE                       R177 K267 [PROTO_118]
     1420 CAPTURE                          VAL R13
     1421 CAPTURE                          VAL R37
     1422 CAPTURE                          VAL R50
     1423 CAPTURE                          VAL R20
     1424 CAPTURE                          VAL R28
     1425 SETTABLEKS                       R177 R132 K268 ["finishPendingInteractions"]
     1427 LOADB                            R177 0
     1428 LOADB                            R178 0
     1429 GETTABLEKS                       R179 R10 K269 ["unstable_flushAllWithoutAsserting"]
     1431 FASTCALL1                        TYPEOF R179 ; [+3]
     1432 MOVE                             R182 R179
     1433 GETIMPORT                        R181 K271 [typeof]
     1435 CALL                             R181 1 1
     1436 JUMPIFEQKS                       R181 K272 ["function"] ; [+2]
     1438 LOADB                            R180 0 +1
     1439 LOADB                            R180 1
     1440 NEWCLOSURE                       R181 P93
     1441 CAPTURE                          VAL R179
     1442 CAPTURE                          REF R177
     1443 CAPTURE                          VAL R4
     1444 DUPCLOSURE                       R182 K273 [PROTO_122]
     1445 CAPTURE                          VAL R181
     1446 CAPTURE                          VAL R125
     1447 CAPTURE                          VAL R182
     1448 NEWCLOSURE                       R183 P95
     1449 CAPTURE                          REF R169
     1450 CAPTURE                          VAL R1
     1451 CAPTURE                          REF R168
     1452 CAPTURE                          VAL R129
     1453 CAPTURE                          VAL R4
     1454 CAPTURE                          REF R178
     1455 CAPTURE                          VAL R96
     1456 CAPTURE                          VAL R180
     1457 CAPTURE                          VAL R182
     1458 CAPTURE                          VAL R181
     1459 SETTABLEKS                       R183 R4 K274 ["act"]
     1461 DUPCLOSURE                       R183 K275 [PROTO_133]
     1462 SETTABLEKS                       R183 R132 K276 ["detachFiberAfterEffects"]
     1464 CLOSEUPVALS                      R99
     1465 RETURN                           R4 1
