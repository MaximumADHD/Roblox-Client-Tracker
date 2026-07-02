PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 1
        1 CALL                             R1 0 1
        2 ADDK                             R0 R1 K0 [500]
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
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
      136 JUMPIFNOT                        R6 ; [+26]
      137 GETUPVAL                         R6 19
      138 CALL                             R6 0 1
      139 JUMPIFEQ                         R5 R6 ; [+23]
      141 GETUPVAL                         R7 8
      142 GETTABLEKS                       R7 R7 K17 ["NoLanePriority"]
      144 JUMPIFEQ                         R6 R7 ; [+18]
      146 GETUPVAL                         R7 20
      147 JUMPIFNOT                        R7 ; [+15]
      148 GETUPVAL                         R7 21
      149 GETTABLEKS                       R7 R7 K18 ["error"]
      151 LOADK                            R8 K19 ["Expected current scheduler lane priority %s to match current update lane priority %s"]
      152 FASTCALL1                        TOSTRING R5 ; [+3]
      153 MOVE                             R10 R5
      154 GETIMPORT                        R9 K21 [tostring]
      156 CALL                             R9 1 1
      157 FASTCALL1                        TOSTRING R6 ; [+3]
      158 MOVE                             R11 R6
      159 GETIMPORT                        R10 K21 [tostring]
      161 CALL                             R10 1 1
      162 CALL                             R7 3 0
      163 GETUPVAL                         R6 17
      164 MOVE                             R7 R5
      165 GETUPVAL                         R8 10
      166 CALL                             R6 2 1
      167 MOVE                             R4 R6
      168 RETURN                           R4 1

PROTO_11:
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

PROTO_12:
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
       88 JUMP                             ; [+64]
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
      100 JUMPIFNOTEQKN                    R5 K8 [0] ; [+52]
      102 GETUPVAL                         R6 13
      103 CALL                             R6 0 1
      104 ADDK                             R5 R6 K15 [500]
      105 SETUPVAL                         R5 12
      106 GETUPVAL                         R5 14
      107 CALL                             R5 0 0
      108 JUMP                             ; [+44]
      109 GETUPVAL                         R6 4
      110 FASTCALL2K                       BIT32_BAND R6 K9 ; [+4]
      112 LOADK                            R7 K9 [4]
      113 GETIMPORT                        R5 K7 [bit32.band]
      115 CALL                             R5 2 1
      116 JUMPIFEQKN                       R5 K8 [0] ; [+26]
      118 GETUPVAL                         R5 15
      119 JUMPIFEQ                         R4 R5 ; [+4]
      121 GETUPVAL                         R5 16
      122 JUMPIFNOTEQ                      R4 R5 ; [+20]
      124 GETUPVAL                         R5 17
      125 JUMPIFNOTEQKNIL                  R5 ; [+12]
      127 GETUPVAL                         R5 18
      128 GETTABLEKS                       R5 R5 K16 ["new"]
      130 NEWTABLE                         R6 0 1
      132 MOVE                             R7 R3
      133 SETLIST                          R6 R7 1 [1]
      135 CALL                             R5 1 1
      136 SETUPVAL                         R5 17
      137 JUMP                             ; [+5]
      138 GETUPVAL                         R5 17
      139 MOVE                             R7 R3
      140 NAMECALL                         R5 R5 K17 ["add"]
      142 CALL                             R5 2 0
      143 GETUPVAL                         R5 11
      144 MOVE                             R6 R3
      145 MOVE                             R7 R2
      146 CALL                             R5 2 0
      147 GETUPVAL                         R5 0
      148 GETTABLEKS                       R5 R5 K13 ["schedulePendingInteractions"]
      150 MOVE                             R6 R3
      151 MOVE                             R7 R1
      152 CALL                             R5 2 0
      153 SETUPVAL                         R3 19
      154 RETURN                           R3 1

PROTO_13:
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
       18 GETUPVAL                         R3 1
       19 JUMPIFNOT                        R3 ; [+30]
       20 JUMPIFNOTEQKNIL                  R2 ; [+29]
       22 GETTABLEKS                       R4 R0 K2 ["flags"]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K3 ["Placement"]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K4 ["Hydrating"]
       30 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       32 GETIMPORT                        R5 K7 [bit32.bor]
       34 CALL                             R5 2 1
       35 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       37 GETIMPORT                        R3 K9 [bit32.band]
       39 CALL                             R3 2 1
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K10 ["NoFlags"]
       43 JUMPIFEQ                         R3 R4 ; [+6]
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R3 R3 K11 ["warnAboutUpdateOnNotYetMountedFiberInDEV"]
       48 MOVE                             R4 R0
       49 CALL                             R3 1 0
       50 MOVE                             R3 R0
       51 GETTABLEKS                       R4 R0 K12 ["return_"]
       53 JUMPIFEQKNIL                     R4 ; [+54]
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R6 R4 K13 ["childLanes"]
       58 MOVE                             R7 R1
       59 CALL                             R5 2 1
       60 SETTABLEKS                       R5 R4 K13 ["childLanes"]
       62 GETTABLEKS                       R2 R4 K1 ["alternate"]
       64 JUMPIFEQKNIL                     R2 ; [+9]
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R6 R2 K13 ["childLanes"]
       69 MOVE                             R7 R1
       70 CALL                             R5 2 1
       71 SETTABLEKS                       R5 R2 K13 ["childLanes"]
       73 JUMP                             ; [+30]
       74 GETUPVAL                         R5 1
       75 JUMPIFNOT                        R5 ; [+28]
       76 GETTABLEKS                       R6 R4 K2 ["flags"]
       78 GETUPVAL                         R8 2
       79 GETTABLEKS                       R8 R8 K3 ["Placement"]
       81 GETUPVAL                         R9 2
       82 GETTABLEKS                       R9 R9 K4 ["Hydrating"]
       84 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
       86 GETIMPORT                        R7 K7 [bit32.bor]
       88 CALL                             R7 2 1
       89 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       91 GETIMPORT                        R5 K9 [bit32.band]
       93 CALL                             R5 2 1
       94 GETUPVAL                         R6 2
       95 GETTABLEKS                       R6 R6 K10 ["NoFlags"]
       97 JUMPIFEQ                         R5 R6 ; [+6]
       99 GETUPVAL                         R5 3
      100 GETTABLEKS                       R5 R5 K11 ["warnAboutUpdateOnNotYetMountedFiberInDEV"]
      102 MOVE                             R6 R0
      103 CALL                             R5 1 0
      104 MOVE                             R3 R4
      105 GETTABLEKS                       R4 R4 K12 ["return_"]
      107 JUMPBACK                         ; [-55]
      108 GETTABLEKS                       R5 R3 K14 ["tag"]
      110 GETUPVAL                         R6 4
      111 GETTABLEKS                       R6 R6 K15 ["HostRoot"]
      113 JUMPIFNOTEQ                      R5 R6 ; [+4]
      115 GETTABLEKS                       R5 R3 K16 ["stateNode"]
      117 RETURN                           R5 1
      118 LOADNIL                          R5
      119 RETURN                           R5 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["profileRootBeforeUnitOfWork"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["performSyncWorkOnRoot"]
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["profileRootAfterYielding"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 0
       15 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["profileRootBeforeUnitOfWork"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["performSyncWorkOnRoot"]
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["profileRootAfterYielding"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 0
       15 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["profileRootBeforeUnitOfWork"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["performConcurrentWorkOnRoot"]
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["profileRootAfterYielding"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 0
       15 RETURN                           R1 1

PROTO_17:
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
       54 JUMPIFNOTEQ                      R5 R7 ; [+9]
       56 GETUPVAL                         R7 7
       57 NEWCLOSURE                       R8 P0
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U9
       61 CALL                             R7 1 1
       62 MOVE                             R6 R7
       63 JUMP                             ; [+25]
       64 GETUPVAL                         R7 3
       65 GETTABLEKS                       R7 R7 K5 ["SyncBatchedLanePriority"]
       67 JUMPIFNOTEQ                      R5 R7 ; [+10]
       69 GETUPVAL                         R7 10
       70 GETUPVAL                         R8 11
       71 NEWCLOSURE                       R9 P1
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U9
       75 CALL                             R7 2 1
       76 MOVE                             R6 R7
       77 JUMP                             ; [+11]
       78 GETUPVAL                         R7 12
       79 MOVE                             R8 R5
       80 CALL                             R7 1 1
       81 GETUPVAL                         R8 10
       82 MOVE                             R9 R7
       83 NEWCLOSURE                       R10 P2
       84 CAPTURE                          UPVAL U8
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U9
       87 CALL                             R8 2 1
       88 MOVE                             R6 R8
       89 SETTABLEKS                       R5 R0 K3 ["callbackPriority"]
       91 SETTABLEKS                       R6 R0 K0 ["callbackNode"]
       93 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["profileRootBeforeUnitOfWork"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["performConcurrentWorkOnRoot"]
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["profileRootAfterYielding"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 0
       15 RETURN                           R1 1

PROTO_19:
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
       37 GETUPVAL                         R3 8
       38 MOVE                             R4 R0
       39 GETUPVAL                         R6 9
       40 JUMPIFNOTEQ                      R0 R6 ; [+3]
       42 GETUPVAL                         R5 10
       43 JUMP                             ; [+3]
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K0 ["NoLanes"]
       47 CALL                             R3 2 1
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R4 R4 K0 ["NoLanes"]
       51 JUMPIFNOTEQ                      R3 R4 ; [+3]
       53 LOADNIL                          R4
       54 RETURN                           R4 1
       55 GETUPVAL                         R4 11
       56 GETTABLEKS                       R4 R4 K9 ["renderRootConcurrent"]
       58 MOVE                             R5 R0
       59 MOVE                             R6 R3
       60 CALL                             R4 2 1
       61 GETUPVAL                         R5 12
       62 GETUPVAL                         R6 13
       63 GETUPVAL                         R7 14
       64 CALL                             R5 2 1
       65 JUMPIFNOT                        R5 ; [+9]
       66 GETUPVAL                         R5 11
       67 GETTABLEKS                       R5 R5 K10 ["prepareFreshStack"]
       69 MOVE                             R6 R0
       70 GETUPVAL                         R7 3
       71 GETTABLEKS                       R7 R7 K0 ["NoLanes"]
       73 CALL                             R5 2 0
       74 JUMP                             ; [+81]
       75 JUMPIFEQKN                       R4 K5 [0] ; [+80]
       77 JUMPIFNOTEQKN                    R4 K11 [2] ; [+37]
       79 GETUPVAL                         R6 6
       80 FASTCALL2K                       BIT32_BOR R6 K12 ; [+4]
       82 LOADK                            R7 K12 [64]
       83 GETIMPORT                        R5 K14 [bit32.bor]
       85 CALL                             R5 2 1
       86 SETUPVAL                         R5 6
       87 GETTABLEKS                       R5 R0 K15 ["hydrate"]
       89 JUMPIFNOT                        R5 ; [+9]
       90 LOADB                            R5 0
       91 SETTABLEKS                       R5 R0 K15 ["hydrate"]
       93 GETUPVAL                         R5 15
       94 GETTABLEKS                       R5 R5 K16 ["clearContainer"]
       96 GETTABLEKS                       R6 R0 K17 ["containerInfo"]
       98 CALL                             R5 1 0
       99 GETUPVAL                         R5 16
      100 MOVE                             R6 R0
      101 CALL                             R5 1 1
      102 MOVE                             R3 R5
      103 GETUPVAL                         R5 3
      104 GETTABLEKS                       R5 R5 K0 ["NoLanes"]
      106 JUMPIFEQ                         R3 R5 ; [+8]
      108 GETUPVAL                         R5 11
      109 GETTABLEKS                       R5 R5 K18 ["renderRootSync"]
      111 MOVE                             R6 R0
      112 MOVE                             R7 R3
      113 CALL                             R5 2 1
      114 MOVE                             R4 R5
      115 JUMPIFNOTEQKN                    R4 K19 [1] ; [+25]
      117 GETUPVAL                         R5 17
      118 GETUPVAL                         R6 11
      119 GETTABLEKS                       R6 R6 K10 ["prepareFreshStack"]
      121 MOVE                             R7 R0
      122 GETUPVAL                         R8 3
      123 GETTABLEKS                       R8 R8 K0 ["NoLanes"]
      125 CALL                             R6 2 0
      126 GETUPVAL                         R6 11
      127 GETTABLEKS                       R6 R6 K20 ["markRootSuspended"]
      129 MOVE                             R7 R0
      130 MOVE                             R8 R3
      131 CALL                             R6 2 0
      132 GETUPVAL                         R6 18
      133 MOVE                             R7 R0
      134 GETUPVAL                         R8 19
      135 CALL                             R8 0 -1
      136 CALL                             R6 -1 0
      137 GETIMPORT                        R6 K22 [error]
      139 MOVE                             R7 R5
      140 CALL                             R6 1 0
      141 GETTABLEKS                       R5 R0 K23 ["current"]
      143 GETTABLEKS                       R5 R5 K24 ["alternate"]
      145 SETTABLEKS                       R5 R0 K25 ["finishedWork"]
      147 SETTABLEKS                       R3 R0 K26 ["finishedLanes"]
      149 GETUPVAL                         R6 11
      150 GETTABLEKS                       R6 R6 K27 ["finishConcurrentRender"]
      152 MOVE                             R7 R0
      153 MOVE                             R8 R4
      154 MOVE                             R9 R3
      155 CALL                             R6 3 0
      156 GETUPVAL                         R5 18
      157 MOVE                             R6 R0
      158 GETUPVAL                         R7 19
      159 CALL                             R7 0 -1
      160 CALL                             R5 -1 0
      161 GETTABLEKS                       R5 R0 K7 ["callbackNode"]
      163 JUMPIFNOTEQ                      R5 R1 ; [+6]
      165 NEWCLOSURE                       R5 P0
      166 CAPTURE                          UPVAL U20
      167 CAPTURE                          VAL R0
      168 CAPTURE                          UPVAL U11
      169 RETURN                           R5 1
      170 LOADNIL                          R5
      171 RETURN                           R5 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R1 1
        3 LOADN                            R2 0
        4 JUMPIFLT                         R2 R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["commitRoot"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["commitRoot"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       BIT32_BAND R1 K0 ; [+4]
        3 LOADK                            R2 K0 [49]
        4 GETIMPORT                        R0 K3 [bit32.band]
        6 CALL                             R0 2 1
        7 JUMPIFEQKN                       R0 K4 [0] ; [+18]
        9 GETUPVAL                         R0 1
       10 JUMPIFNOT                        R0 ; [+14]
       11 GETUPVAL                         R1 0
       12 FASTCALL2K                       BIT32_BAND R1 K5 ; [+4]
       14 LOADK                            R2 K5 [16]
       15 GETIMPORT                        R0 K3 [bit32.band]
       17 CALL                             R0 2 1
       18 JUMPIFEQKN                       R0 K4 [0] ; [+6]
       20 GETUPVAL                         R0 2
       21 GETTABLEKS                       R0 R0 K6 ["error"]
       23 LOADK                            R1 K7 ["unstable_flushDiscreteUpdates: Cannot flush updates when React is already rendering."]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 3
       27 GETTABLEKS                       R0 R0 K8 ["flushPendingDiscreteUpdates"]
       29 CALL                             R0 0 0
       30 GETUPVAL                         R0 4
       31 GETTABLEKS                       R0 R0 K9 ["flushPassiveEffects"]
       33 CALL                             R0 0 0
       34 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["decoupleUpdatePriorityFromScheduler"]
        3 JUMPIFNOT                        R1 ; [+42]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 GETUPVAL                         R4 2
        9 JUMPIF                           R4 ; [+15]
       10 GETUPVAL                         R4 3
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R5 R5 K1 ["DefaultLanePriority"]
       14 CALL                             R4 1 0
       15 GETIMPORT                        R4 K3 [xpcall]
       17 GETUPVAL                         R5 5
       18 GETUPVAL                         R6 6
       19 GETUPVAL                         R7 7
       20 MOVE                             R8 R0
       21 CALL                             R4 4 2
       22 MOVE                             R2 R4
       23 MOVE                             R3 R5
       24 JUMP                             ; [+11]
       25 LOADB                            R2 1
       26 GETUPVAL                         R4 3
       27 GETUPVAL                         R5 4
       28 GETTABLEKS                       R5 R5 K1 ["DefaultLanePriority"]
       30 CALL                             R4 1 0
       31 GETUPVAL                         R4 5
       32 GETUPVAL                         R5 7
       33 MOVE                             R6 R0
       34 CALL                             R4 2 1
       35 MOVE                             R3 R4
       36 GETUPVAL                         R4 3
       37 MOVE                             R5 R1
       38 CALL                             R4 1 0
       39 JUMPIFNOT                        R2 ; [+1]
       40 RETURN                           R3 1
       41 GETIMPORT                        R4 K5 [error]
       43 MOVE                             R5 R3
       44 CALL                             R4 1 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R1 5
       47 GETUPVAL                         R2 7
       48 MOVE                             R3 R0
       49 CALL                             R1 2 -1
       50 RETURN                           R1 -1
       51 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 GETUPVAL                         R3 2
        6 CALL                             R3 0 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+11]
        3 GETUPVAL                         R0 0
        4 LOADNIL                          R1
        5 SETUPVAL                         R1 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R1 R0 K0 ["forEach"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R0 4
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 0
        2 FASTCALL2K                       BIT32_BOR R4 K0 ; [+4]
        4 LOADK                            R5 K0 [1]
        5 GETIMPORT                        R3 K3 [bit32.bor]
        7 CALL                             R3 2 1
        8 SETUPVAL                         R3 0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 GETUPVAL                         R5 1
       12 JUMPIF                           R5 ; [+9]
       13 GETIMPORT                        R5 K5 [xpcall]
       15 MOVE                             R6 R0
       16 GETUPVAL                         R7 2
       17 MOVE                             R8 R1
       18 CALL                             R5 3 2
       19 MOVE                             R3 R5
       20 MOVE                             R4 R6
       21 JUMP                             ; [+5]
       22 LOADB                            R3 1
       23 MOVE                             R5 R0
       24 MOVE                             R6 R1
       25 CALL                             R5 1 1
       26 MOVE                             R4 R5
       27 SETUPVAL                         R2 0
       28 GETUPVAL                         R5 0
       29 JUMPIFNOTEQKN                    R5 K6 [0] ; [+7]
       31 GETUPVAL                         R6 4
       32 CALL                             R6 0 1
       33 ADDK                             R5 R6 K7 [500]
       34 SETUPVAL                         R5 3
       35 GETUPVAL                         R5 5
       36 CALL                             R5 0 0
       37 JUMPIFNOT                        R3 ; [+1]
       38 RETURN                           R4 1
       39 GETIMPORT                        R5 K9 [error]
       41 MOVE                             R6 R4
       42 CALL                             R5 1 0
       43 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 0
        2 FASTCALL2K                       BIT32_BOR R4 K0 ; [+4]
        4 LOADK                            R5 K0 [2]
        5 GETIMPORT                        R3 K3 [bit32.bor]
        7 CALL                             R3 2 1
        8 SETUPVAL                         R3 0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 GETUPVAL                         R5 1
       12 JUMPIF                           R5 ; [+9]
       13 GETIMPORT                        R5 K5 [xpcall]
       15 MOVE                             R6 R0
       16 GETUPVAL                         R7 2
       17 MOVE                             R8 R1
       18 CALL                             R5 3 2
       19 MOVE                             R3 R5
       20 MOVE                             R4 R6
       21 JUMP                             ; [+5]
       22 LOADB                            R3 1
       23 MOVE                             R5 R0
       24 MOVE                             R6 R1
       25 CALL                             R5 1 1
       26 MOVE                             R4 R5
       27 SETUPVAL                         R2 0
       28 GETUPVAL                         R5 0
       29 JUMPIFNOTEQKN                    R5 K6 [0] ; [+7]
       31 GETUPVAL                         R6 4
       32 CALL                             R6 0 1
       33 ADDK                             R5 R6 K7 [500]
       34 SETUPVAL                         R5 3
       35 GETUPVAL                         R5 5
       36 CALL                             R5 0 0
       37 JUMPIFNOT                        R3 ; [+1]
       38 RETURN                           R4 1
       39 GETIMPORT                        R5 K9 [error]
       41 MOVE                             R6 R4
       42 CALL                             R5 1 0
       43 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 CALL                             R0 4 -1
        6 RETURN                           R0 -1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 CALL                             R0 4 -1
        6 RETURN                           R0 -1

PROTO_36:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R7 0
        2 FASTCALL2K                       BIT32_BOR R7 K0 ; [+4]
        4 LOADK                            R8 K0 [4]
        5 GETIMPORT                        R6 K3 [bit32.bor]
        7 CALL                             R6 2 1
        8 SETUPVAL                         R6 0
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K4 ["decoupleUpdatePriorityFromScheduler"]
       12 JUMPIFNOT                        R6 ; [+39]
       13 GETUPVAL                         R6 2
       14 CALL                             R6 0 1
       15 GETUPVAL                         R7 3
       16 GETUPVAL                         R8 4
       17 GETTABLEKS                       R8 R8 K5 ["InputDiscreteLanePriority"]
       19 CALL                             R7 1 0
       20 GETIMPORT                        R7 K7 [xpcall]
       22 GETUPVAL                         R8 5
       23 GETUPVAL                         R9 6
       24 GETUPVAL                         R10 7
       25 NEWCLOSURE                       R11 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 CALL                             R7 4 2
       32 GETUPVAL                         R9 3
       33 MOVE                             R10 R6
       34 CALL                             R9 1 0
       35 SETUPVAL                         R5 0
       36 GETUPVAL                         R9 0
       37 JUMPIFNOTEQKN                    R9 K8 [0] ; [+7]
       39 GETUPVAL                         R10 9
       40 CALL                             R10 0 1
       41 ADDK                             R9 R10 K9 [500]
       42 SETUPVAL                         R9 8
       43 GETUPVAL                         R9 10
       44 CALL                             R9 0 0
       45 JUMPIFNOT                        R7 ; [+1]
       46 RETURN                           R8 1
       47 GETIMPORT                        R9 K11 [error]
       49 MOVE                             R10 R8
       50 CALL                             R9 1 0
       51 RETURN                           R0 0
       52 GETIMPORT                        R6 K7 [xpcall]
       54 GETUPVAL                         R7 5
       55 GETUPVAL                         R8 6
       56 GETUPVAL                         R9 7
       57 NEWCLOSURE                       R10 P1
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 CALL                             R6 4 2
       64 SETUPVAL                         R5 0
       65 GETUPVAL                         R8 0
       66 JUMPIFNOTEQKN                    R8 K8 [0] ; [+7]
       68 GETUPVAL                         R9 9
       69 CALL                             R9 0 1
       70 ADDK                             R8 R9 K9 [500]
       71 SETUPVAL                         R8 8
       72 GETUPVAL                         R8 10
       73 CALL                             R8 0 0
       74 JUMPIFNOT                        R6 ; [+1]
       75 RETURN                           R7 1
       76 GETIMPORT                        R8 K11 [error]
       78 MOVE                             R9 R7
       79 CALL                             R8 1 0
       80 RETURN                           R0 0

PROTO_37:
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
       19 GETUPVAL                         R5 1
       20 JUMPIF                           R5 ; [+9]
       21 GETIMPORT                        R5 K8 [xpcall]
       23 MOVE                             R6 R0
       24 GETUPVAL                         R7 2
       25 MOVE                             R8 R1
       26 CALL                             R5 3 2
       27 MOVE                             R3 R5
       28 MOVE                             R4 R6
       29 JUMP                             ; [+5]
       30 LOADB                            R3 1
       31 MOVE                             R5 R0
       32 MOVE                             R6 R1
       33 CALL                             R5 1 1
       34 MOVE                             R4 R5
       35 SETUPVAL                         R2 0
       36 GETUPVAL                         R5 0
       37 JUMPIFNOTEQKN                    R5 K9 [0] ; [+7]
       39 GETUPVAL                         R6 4
       40 CALL                             R6 0 1
       41 ADDK                             R5 R6 K10 [500]
       42 SETUPVAL                         R5 3
       43 GETUPVAL                         R5 5
       44 CALL                             R5 0 0
       45 JUMPIFNOT                        R3 ; [+1]
       46 RETURN                           R4 1
       47 GETIMPORT                        R5 K12 [error]
       49 MOVE                             R6 R4
       50 CALL                             R5 1 0
       51 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

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
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       BIT32_BAND R2 K0 ; [+5]
        3 MOVE                             R4 R2
        4 LOADK                            R5 K0 [48]
        5 GETIMPORT                        R3 K3 [bit32.band]
        7 CALL                             R3 2 1
        8 JUMPIFEQKN                       R3 K4 [0] ; [+12]
       10 GETUPVAL                         R3 1
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K5 ["error"]
       15 LOADK                            R4 K6 ["flushSync was called from inside a lifecycle method. React cannot flush when React is already rendering. Consider moving this call to a scheduler task or micro task."]
       16 CALL                             R3 1 0
       17 MOVE                             R3 R0
       18 MOVE                             R4 R1
       19 CALL                             R3 1 -1
       20 RETURN                           R3 -1
       21 GETUPVAL                         R4 0
       22 FASTCALL2K                       BIT32_BOR R4 K7 ; [+4]
       24 LOADK                            R5 K7 [1]
       25 GETIMPORT                        R3 K9 [bit32.bor]
       27 CALL                             R3 2 1
       28 SETUPVAL                         R3 0
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K10 ["decoupleUpdatePriorityFromScheduler"]
       32 JUMPIFNOT                        R3 ; [+55]
       33 GETUPVAL                         R3 4
       34 CALL                             R3 0 1
       35 GETUPVAL                         R4 5
       36 GETUPVAL                         R5 6
       37 GETTABLEKS                       R5 R5 K11 ["SyncLanePriority"]
       39 CALL                             R4 1 0
       40 LOADNIL                          R4
       41 LOADNIL                          R5
       42 GETUPVAL                         R6 7
       43 JUMPIF                           R6 ; [+16]
       44 JUMPIFNOT                        R0 ; [+12]
       45 GETIMPORT                        R6 K13 [xpcall]
       47 GETUPVAL                         R7 8
       48 GETUPVAL                         R8 9
       49 GETUPVAL                         R9 10
       50 NEWCLOSURE                       R10 P0
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R1
       53 CALL                             R6 4 2
       54 MOVE                             R4 R6
       55 MOVE                             R5 R7
       56 JUMP                             ; [+19]
       57 LOADB                            R4 1
       58 LOADNIL                          R5
       59 JUMP                             ; [+16]
       60 LOADB                            R4 1
       61 GETUPVAL                         R6 5
       62 GETUPVAL                         R7 6
       63 GETTABLEKS                       R7 R7 K11 ["SyncLanePriority"]
       65 CALL                             R6 1 0
       66 JUMPIFNOT                        R0 ; [+8]
       67 GETUPVAL                         R6 8
       68 GETUPVAL                         R7 10
       69 NEWCLOSURE                       R8 P1
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R1
       72 CALL                             R6 2 1
       73 MOVE                             R5 R6
       74 JUMP                             ; [+1]
       75 LOADNIL                          R5
       76 GETUPVAL                         R6 5
       77 MOVE                             R7 R3
       78 CALL                             R6 1 0
       79 SETUPVAL                         R2 0
       80 GETUPVAL                         R6 11
       81 CALL                             R6 0 0
       82 JUMPIF                           R4 ; [+4]
       83 GETIMPORT                        R6 K14 [error]
       85 MOVE                             R7 R5
       86 CALL                             R6 1 0
       87 RETURN                           R5 1
       88 LOADNIL                          R3
       89 LOADNIL                          R4
       90 GETUPVAL                         R5 7
       91 JUMPIF                           R5 ; [+16]
       92 JUMPIFNOT                        R0 ; [+12]
       93 GETIMPORT                        R5 K13 [xpcall]
       95 GETUPVAL                         R6 8
       96 GETUPVAL                         R7 9
       97 GETUPVAL                         R8 10
       98 NEWCLOSURE                       R9 P2
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R1
      101 CALL                             R5 4 2
      102 MOVE                             R3 R5
      103 MOVE                             R4 R6
      104 JUMP                             ; [+14]
      105 LOADB                            R3 1
      106 LOADNIL                          R4
      107 JUMP                             ; [+11]
      108 LOADB                            R3 1
      109 JUMPIFNOT                        R0 ; [+8]
      110 GETUPVAL                         R5 8
      111 GETUPVAL                         R6 10
      112 NEWCLOSURE                       R7 P3
      113 CAPTURE                          VAL R0
      114 CAPTURE                          VAL R1
      115 CALL                             R5 2 1
      116 MOVE                             R4 R5
      117 JUMP                             ; [+1]
      118 LOADNIL                          R4
      119 SETUPVAL                         R2 0
      120 GETUPVAL                         R5 11
      121 CALL                             R5 0 0
      122 JUMPIF                           R3 ; [+4]
      123 GETIMPORT                        R5 K14 [error]
      125 MOVE                             R6 R4
      126 CALL                             R5 1 0
      127 RETURN                           R4 1

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 0
        2 FASTCALL2K                       BIT32_BOR R3 K0 ; [+4]
        4 LOADK                            R4 K0 [1]
        5 GETIMPORT                        R2 K3 [bit32.bor]
        7 CALL                             R2 2 1
        8 SETUPVAL                         R2 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K4 ["decoupleUpdatePriorityFromScheduler"]
       12 JUMPIFNOT                        R2 ; [+33]
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 3
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K5 ["SyncLanePriority"]
       19 CALL                             R3 1 0
       20 GETIMPORT                        R3 K7 [xpcall]
       22 GETUPVAL                         R4 5
       23 GETUPVAL                         R5 6
       24 GETUPVAL                         R6 7
       25 MOVE                             R7 R0
       26 CALL                             R3 4 2
       27 GETUPVAL                         R5 3
       28 MOVE                             R6 R2
       29 CALL                             R5 1 0
       30 SETUPVAL                         R1 0
       31 GETUPVAL                         R5 0
       32 JUMPIFNOTEQKN                    R5 K8 [0] ; [+7]
       34 GETUPVAL                         R6 9
       35 CALL                             R6 0 1
       36 ADDK                             R5 R6 K9 [500]
       37 SETUPVAL                         R5 8
       38 GETUPVAL                         R5 10
       39 CALL                             R5 0 0
       40 JUMPIF                           R3 ; [+27]
       41 GETIMPORT                        R5 K11 [error]
       43 MOVE                             R6 R4
       44 CALL                             R5 1 0
       45 RETURN                           R0 0
       46 GETIMPORT                        R2 K7 [xpcall]
       48 GETUPVAL                         R3 5
       49 GETUPVAL                         R4 6
       50 GETUPVAL                         R5 7
       51 MOVE                             R6 R0
       52 CALL                             R2 4 2
       53 SETUPVAL                         R1 0
       54 GETUPVAL                         R4 0
       55 JUMPIFNOTEQKN                    R4 K8 [0] ; [+7]
       57 GETUPVAL                         R5 9
       58 CALL                             R5 0 1
       59 ADDK                             R4 R5 K9 [500]
       60 SETUPVAL                         R4 8
       61 GETUPVAL                         R4 10
       62 CALL                             R4 0 0
       63 JUMPIF                           R2 ; [+4]
       64 GETIMPORT                        R4 K11 [error]
       66 MOVE                             R5 R3
       67 CALL                             R4 1 0
       68 RETURN                           R0 0

PROTO_44:
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

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 SETTABLEKS                       R2 R1 K1 ["subtreeRenderLanes"]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_46:
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
       76 GETUPVAL                         R3 16
       77 JUMPIFNOT                        R3 ; [+4]
       78 GETUPVAL                         R3 17
       79 GETTABLEKS                       R3 R3 K11 ["discardPendingWarnings"]
       81 CALL                             R3 0 0
       82 RETURN                           R0 0

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_51:
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

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enableSchedulerTracing"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R0 R1 K1 ["current"]
        7 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["markSkippedUpdateLanes"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        3 LOADN                            R0 3
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_56:
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

PROTO_57:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKN                       R0 K0 [5] ; [+3]
        3 LOADN                            R0 2
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKN                       R1 K0 [0] ; [+2]
        3 LOADB                            R0 0 +1
        4 LOADB                            R0 1
        5 RETURN                           R0 1

PROTO_59:
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
       36 GETUPVAL                         R5 4
       37 JUMPIFNOT                        R5 ; [+7]
       38 GETUPVAL                         R5 5
       39 JUMPIFNOT                        R5 ; [+5]
       40 GETUPVAL                         R5 6
       41 GETTABLEKS                       R5 R5 K8 ["logRenderStarted"]
       43 MOVE                             R6 R1
       44 CALL                             R5 1 0
       45 GETUPVAL                         R5 7
       46 JUMPIFNOT                        R5 ; [+5]
       47 GETUPVAL                         R5 8
       48 GETTABLEKS                       R5 R5 K9 ["markRenderStarted"]
       50 MOVE                             R6 R1
       51 CALL                             R5 1 0
       52 LOADNIL                          R5
       53 LOADNIL                          R6
       54 GETUPVAL                         R7 9
       55 JUMPIF                           R7 ; [+10]
       56 GETIMPORT                        R7 K11 [xpcall]
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R8 R8 K12 ["workLoopSync"]
       61 GETUPVAL                         R9 10
       62 CALL                             R7 2 2
       63 MOVE                             R5 R7
       64 MOVE                             R6 R8
       65 JUMP                             ; [+5]
       66 LOADB                            R5 1
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K12 ["workLoopSync"]
       70 CALL                             R7 0 0
       71 JUMPIF                           R5 ; [+9]
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K13 ["handleError"]
       75 MOVE                             R8 R0
       76 MOVE                             R9 R6
       77 CALL                             R7 2 0
       78 JUMP                             ; [+1]
       79 JUMP                             ; [+1]
       80 JUMPBACK                         ; [-29]
       81 GETUPVAL                         R5 11
       82 CALL                             R5 0 0
       83 GETUPVAL                         R5 12
       84 GETTABLEKS                       R5 R5 K14 ["enableSchedulerTracing"]
       86 JUMPIFNOT                        R5 ; [+5]
       87 GETUPVAL                         R5 1
       88 GETTABLEKS                       R5 R5 K15 ["popInteractions"]
       90 MOVE                             R6 R4
       91 CALL                             R5 1 0
       92 SETUPVAL                         R2 0
       93 GETUPVAL                         R5 1
       94 GETTABLEKS                       R5 R5 K16 ["popDispatcher"]
       96 MOVE                             R6 R3
       97 CALL                             R5 1 0
       98 GETUPVAL                         R5 13
       99 JUMPIFEQKNIL                     R5 ; [+5]
      101 GETUPVAL                         R5 14
      102 LOADB                            R6 0
      103 LOADK                            R7 K17 ["Cannot commit an incomplete root. This error is likely caused by a bug in React. Please file an issue."]
      104 CALL                             R5 2 0
      105 GETUPVAL                         R5 4
      106 JUMPIFNOT                        R5 ; [+6]
      107 GETUPVAL                         R5 5
      108 JUMPIFNOT                        R5 ; [+4]
      109 GETUPVAL                         R5 6
      110 GETTABLEKS                       R5 R5 K18 ["logRenderStopped"]
      112 CALL                             R5 0 0
      113 GETUPVAL                         R5 7
      114 JUMPIFNOT                        R5 ; [+4]
      115 GETUPVAL                         R5 8
      116 GETTABLEKS                       R5 R5 K19 ["markRenderStopped"]
      118 CALL                             R5 0 0
      119 LOADNIL                          R5
      120 SETUPVAL                         R5 2
      121 GETUPVAL                         R5 15
      122 GETTABLEKS                       R5 R5 K20 ["NoLanes"]
      124 SETUPVAL                         R5 3
      125 GETUPVAL                         R5 16
      126 RETURN                           R5 1

PROTO_60:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["performUnitOfWork"]
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 0
        8 JUMPBACK                         ; [-9]
        9 RETURN                           R0 0

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
       40 GETUPVAL                         R5 6
       41 JUMPIFNOT                        R5 ; [+7]
       42 GETUPVAL                         R5 7
       43 JUMPIFNOT                        R5 ; [+5]
       44 GETUPVAL                         R5 8
       45 GETTABLEKS                       R5 R5 K9 ["logRenderStarted"]
       47 MOVE                             R6 R1
       48 CALL                             R5 1 0
       49 GETUPVAL                         R5 9
       50 JUMPIFNOT                        R5 ; [+5]
       51 GETUPVAL                         R5 10
       52 GETTABLEKS                       R5 R5 K10 ["markRenderStarted"]
       54 MOVE                             R6 R1
       55 CALL                             R5 1 0
       56 LOADNIL                          R5
       57 LOADNIL                          R6
       58 GETUPVAL                         R7 11
       59 JUMPIF                           R7 ; [+12]
       60 GETIMPORT                        R7 K12 [xpcall]
       62 GETUPVAL                         R8 1
       63 GETTABLEKS                       R8 R8 K13 ["workLoopConcurrent"]
       65 GETUPVAL                         R9 12
       66 CALL                             R7 2 2
       67 MOVE                             R5 R7
       68 MOVE                             R6 R8
       69 JUMPIFNOT                        R5 ; [+8]
       70 LOADK                            R6 K14 ["break"]
       71 JUMP                             ; [+6]
       72 LOADB                            R5 1
       73 LOADK                            R6 K14 ["break"]
       74 GETUPVAL                         R7 1
       75 GETTABLEKS                       R7 R7 K13 ["workLoopConcurrent"]
       77 CALL                             R7 0 0
       78 JUMPIFEQKS                       R6 K14 ["break"] ; [+9]
       80 JUMPIF                           R5 ; [+6]
       81 GETUPVAL                         R7 1
       82 GETTABLEKS                       R7 R7 K15 ["handleError"]
       84 MOVE                             R8 R0
       85 MOVE                             R9 R6
       86 CALL                             R7 2 0
       87 JUMPBACK                         ; [-32]
       88 GETUPVAL                         R5 13
       89 CALL                             R5 0 0
       90 GETUPVAL                         R5 14
       91 GETTABLEKS                       R5 R5 K16 ["enableSchedulerTracing"]
       93 JUMPIFNOT                        R5 ; [+5]
       94 GETUPVAL                         R5 1
       95 GETTABLEKS                       R5 R5 K17 ["popInteractions"]
       97 MOVE                             R6 R4
       98 CALL                             R5 1 0
       99 GETUPVAL                         R5 1
      100 GETTABLEKS                       R5 R5 K18 ["popDispatcher"]
      102 MOVE                             R6 R3
      103 CALL                             R5 1 0
      104 SETUPVAL                         R2 0
      105 GETUPVAL                         R5 6
      106 JUMPIFNOT                        R5 ; [+6]
      107 GETUPVAL                         R5 7
      108 JUMPIFNOT                        R5 ; [+4]
      109 GETUPVAL                         R5 8
      110 GETTABLEKS                       R5 R5 K19 ["logRenderStopped"]
      112 CALL                             R5 0 0
      113 GETUPVAL                         R5 15
      114 JUMPIFEQKNIL                     R5 ; [+9]
      116 GETUPVAL                         R5 9
      117 JUMPIFNOT                        R5 ; [+4]
      118 GETUPVAL                         R5 10
      119 GETTABLEKS                       R5 R5 K20 ["markRenderYielded"]
      121 CALL                             R5 0 0
      122 LOADN                            R5 0
      123 RETURN                           R5 1
      124 GETUPVAL                         R5 9
      125 JUMPIFNOT                        R5 ; [+4]
      126 GETUPVAL                         R5 10
      127 GETTABLEKS                       R5 R5 K21 ["markRenderStopped"]
      129 CALL                             R5 0 0
      130 LOADNIL                          R5
      131 SETUPVAL                         R5 2
      132 GETUPVAL                         R5 16
      133 GETTABLEKS                       R5 R5 K22 ["NoLanes"]
      135 SETUPVAL                         R5 3
      136 GETUPVAL                         R5 17
      137 RETURN                           R5 1

PROTO_62:
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

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["profileUnitOfWorkBefore"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K1 ["alternate"]
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 CALL                             R3 1 0
       10 LOADNIL                          R3
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K2 ["enableProfilerTimer"]
       14 JUMPIFNOT                        R4 ; [+37]
       15 GETTABLEKS                       R5 R0 K3 ["mode"]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R6 R6 K4 ["ProfileMode"]
       20 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       22 GETIMPORT                        R4 K7 [bit32.band]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K8 ["NoMode"]
       28 JUMPIFEQ                         R4 R5 ; [+23]
       30 GETUPVAL                         R4 4
       31 GETTABLEKS                       R4 R4 K9 ["startProfilerTimer"]
       33 MOVE                             R5 R0
       34 CALL                             R4 1 0
       35 GETUPVAL                         R4 5
       36 GETTABLEKS                       R4 R4 K10 ["beginWork"]
       38 MOVE                             R5 R2
       39 MOVE                             R6 R0
       40 GETUPVAL                         R7 6
       41 GETTABLEKS                       R7 R7 K11 ["subtreeRenderLanes"]
       43 CALL                             R4 3 1
       44 MOVE                             R3 R4
       45 GETUPVAL                         R4 4
       46 GETTABLEKS                       R4 R4 K12 ["stopProfilerTimerIfRunningAndRecordDelta"]
       48 MOVE                             R5 R0
       49 LOADB                            R6 1
       50 CALL                             R4 2 0
       51 JUMP                             ; [+10]
       52 GETUPVAL                         R4 5
       53 GETTABLEKS                       R4 R4 K10 ["beginWork"]
       55 MOVE                             R5 R2
       56 MOVE                             R6 R0
       57 GETUPVAL                         R7 6
       58 GETTABLEKS                       R7 R7 K11 ["subtreeRenderLanes"]
       60 CALL                             R4 3 1
       61 MOVE                             R3 R4
       62 GETUPVAL                         R4 7
       63 CALL                             R4 0 0
       64 GETTABLEKS                       R4 R0 K13 ["pendingProps"]
       66 SETTABLEKS                       R4 R0 K14 ["memoizedProps"]
       68 JUMPIFNOTEQKNIL                  R3 ; [+7]
       70 GETUPVAL                         R4 5
       71 GETTABLEKS                       R4 R4 K15 ["completeUnitOfWork"]
       73 MOVE                             R5 R0
       74 CALL                             R4 1 0
       75 JUMP                             ; [+1]
       76 SETUPVAL                         R3 8
       77 GETUPVAL                         R4 9
       78 LOADNIL                          R5
       79 SETTABLEKS                       R5 R4 K16 ["current"]
       81 GETUPVAL                         R4 0
       82 GETTABLEKS                       R4 R4 K17 ["profileUnitOfWorkAfter"]
       84 MOVE                             R5 R1
       85 CALL                             R4 1 0
       86 RETURN                           R0 0

PROTO_64:
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
      117 JUMPIFEQKNIL                     R4 ; [+89]
      119 SETUPVAL                         R4 8
      120 RETURN                           R0 0
      121 JUMP                             ; [+85]
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
      147 JUMPIFNOT                        R5 ; [+37]
      148 GETTABLEKS                       R6 R1 K9 ["mode"]
      150 GETUPVAL                         R7 3
      151 GETTABLEKS                       R7 R7 K10 ["ProfileMode"]
      153 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
      155 GETIMPORT                        R5 K6 [bit32.band]
      157 CALL                             R5 2 1
      158 GETUPVAL                         R6 3
      159 GETTABLEKS                       R6 R6 K11 ["NoMode"]
      161 JUMPIFEQ                         R5 R6 ; [+23]
      163 GETUPVAL                         R5 6
      164 GETTABLEKS                       R5 R5 K22 ["stopProfilerTimerIfRunningAndRecordDelta"]
      166 MOVE                             R6 R1
      167 LOADB                            R7 0
      168 CALL                             R5 2 0
      169 GETTABLEKS                       R6 R1 K25 ["actualDuration"]
      171 ORK                              R5 R6 K24 [0]
      172 GETTABLEKS                       R6 R1 K26 ["child"]
      174 JUMPIFEQKNIL                     R6 ; [+8]
      176 GETTABLEKS                       R8 R6 K25 ["actualDuration"]
      178 ORK                              R7 R8 K24 [0]
      179 ADD                              R5 R5 R7
      180 GETTABLEKS                       R6 R6 K27 ["sibling"]
      182 JUMPBACK                         ; [-9]
      183 SETTABLEKS                       R5 R1 K25 ["actualDuration"]
      185 JUMPIFEQKNIL                     R3 ; [+21]
      187 GETTABLEKS                       R6 R3 K2 ["flags"]
      189 GETUPVAL                         R7 0
      190 GETTABLEKS                       R7 R7 K3 ["Incomplete"]
      192 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
      194 GETIMPORT                        R5 K29 [bit32.bor]
      196 CALL                             R5 2 1
      197 SETTABLEKS                       R5 R3 K2 ["flags"]
      199 GETUPVAL                         R5 0
      200 GETTABLEKS                       R5 R5 K7 ["NoFlags"]
      202 SETTABLEKS                       R5 R3 K30 ["subtreeFlags"]
      204 LOADNIL                          R5
      205 SETTABLEKS                       R5 R3 K31 ["deletions"]
      207 GETTABLEKS                       R4 R1 K27 ["sibling"]
      209 JUMPIFEQKNIL                     R4 ; [+3]
      211 SETUPVAL                         R4 8
      212 RETURN                           R0 0
      213 MOVE                             R1 R3
      214 SETUPVAL                         R1 8
      215 JUMPIFEQKNIL                     R1 ; [+2]
      217 JUMPBACK                         ; [-217]
      218 GETUPVAL                         R2 10
      219 JUMPIFNOTEQKN                    R2 K24 [0] ; [+3]
      221 LOADN                            R2 5
      222 SETUPVAL                         R2 10
      223 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["profileCommitBefore"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["commitRootImpl"]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["profileCommitAfter"]
       13 CALL                             R1 0 0
       14 RETURN                           R0 1

PROTO_66:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 2 0
       10 LOADNIL                          R2
       11 RETURN                           R2 1

PROTO_67:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["flushPassiveEffects"]
        3 CALL                             R0 0 0
        4 LOADNIL                          R0
        5 RETURN                           R0 1

PROTO_68:
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
       29 GETUPVAL                         R4 4
       30 JUMPIFNOT                        R4 ; [+7]
       31 GETUPVAL                         R4 5
       32 JUMPIFNOT                        R4 ; [+5]
       33 GETUPVAL                         R4 6
       34 GETTABLEKS                       R4 R4 K10 ["logCommitStarted"]
       36 MOVE                             R5 R3
       37 CALL                             R4 1 0
       38 GETUPVAL                         R4 7
       39 JUMPIFNOT                        R4 ; [+5]
       40 GETUPVAL                         R4 8
       41 GETTABLEKS                       R4 R4 K11 ["markCommitStarted"]
       43 MOVE                             R5 R3
       44 CALL                             R4 1 0
       45 JUMPIFNOTEQKNIL                  R2 ; [+18]
       47 GETUPVAL                         R4 4
       48 JUMPIFNOT                        R4 ; [+6]
       49 GETUPVAL                         R4 5
       50 JUMPIFNOT                        R4 ; [+4]
       51 GETUPVAL                         R4 6
       52 GETTABLEKS                       R4 R4 K12 ["logCommitStopped"]
       54 CALL                             R4 0 0
       55 GETUPVAL                         R4 7
       56 JUMPIFNOT                        R4 ; [+5]
       57 GETUPVAL                         R4 8
       58 GETTABLEKS                       R4 R4 K13 ["markCommitStopped"]
       60 MOVE                             R5 R0
       61 CALL                             R4 1 0
       62 LOADNIL                          R4
       63 RETURN                           R4 1
       64 LOADNIL                          R4
       65 SETTABLEKS                       R4 R0 K8 ["finishedWork"]
       67 GETUPVAL                         R4 9
       68 GETTABLEKS                       R4 R4 K14 ["NoLanes"]
       70 SETTABLEKS                       R4 R0 K9 ["finishedLanes"]
       72 GETUPVAL                         R4 2
       73 GETTABLEKS                       R6 R0 K15 ["current"]
       75 JUMPIFNOTEQ                      R2 R6 ; [+2]
       77 LOADB                            R5 0 +1
       78 LOADB                            R5 1
       79 LOADK                            R6 K16 ["Cannot commit the same tree as before. This error is likely caused by a bug in React. Please file an issue."]
       80 CALL                             R4 2 0
       81 LOADNIL                          R4
       82 SETTABLEKS                       R4 R0 K17 ["callbackNode"]
       84 GETUPVAL                         R4 10
       85 GETTABLEKS                       R5 R2 K18 ["lanes"]
       87 GETTABLEKS                       R6 R2 K19 ["childLanes"]
       89 CALL                             R4 2 1
       90 GETUPVAL                         R5 11
       91 MOVE                             R6 R0
       92 MOVE                             R7 R4
       93 CALL                             R5 2 0
       94 GETUPVAL                         R5 12
       95 JUMPIFEQKNIL                     R5 ; [+16]
       97 GETUPVAL                         R5 13
       98 MOVE                             R6 R4
       99 CALL                             R5 1 1
      100 JUMPIF                           R5 ; [+11]
      101 GETUPVAL                         R5 12
      102 MOVE                             R7 R0
      103 NAMECALL                         R5 R5 K20 ["has"]
      105 CALL                             R5 2 1
      106 JUMPIFNOT                        R5 ; [+5]
      107 GETUPVAL                         R5 12
      108 MOVE                             R7 R0
      109 NAMECALL                         R5 R5 K21 ["delete"]
      111 CALL                             R5 2 0
      112 GETUPVAL                         R5 14
      113 JUMPIFNOTEQ                      R0 R5 ; [+10]
      115 LOADNIL                          R5
      116 SETUPVAL                         R5 14
      117 LOADNIL                          R5
      118 SETUPVAL                         R5 15
      119 GETUPVAL                         R5 9
      120 GETTABLEKS                       R5 R5 K14 ["NoLanes"]
      122 SETUPVAL                         R5 16
      123 JUMP                             ; [0]
      124 GETTABLEKS                       R7 R2 K22 ["subtreeFlags"]
      126 GETUPVAL                         R9 17
      127 GETTABLEKS                       R9 R9 K23 ["BeforeMutationMask"]
      129 GETUPVAL                         R10 17
      130 GETTABLEKS                       R10 R10 K24 ["MutationMask"]
      132 GETUPVAL                         R11 17
      133 GETTABLEKS                       R11 R11 K25 ["LayoutMask"]
      135 GETUPVAL                         R12 17
      136 GETTABLEKS                       R12 R12 K26 ["PassiveMask"]
      138 FASTCALL                         BIT32_BOR ; [+2]
      139 GETIMPORT                        R8 K28 [bit32.bor]
      141 CALL                             R8 4 1
      142 FASTCALL2                        BIT32_BAND R7 R8 ; [+3]
      144 GETIMPORT                        R6 K5 [bit32.band]
      146 CALL                             R6 2 1
      147 GETUPVAL                         R7 17
      148 GETTABLEKS                       R7 R7 K29 ["NoFlags"]
      150 JUMPIFNOTEQ                      R6 R7 ; [+2]
      152 LOADB                            R5 0 +1
      153 LOADB                            R5 1
      154 GETTABLEKS                       R8 R2 K30 ["flags"]
      156 GETUPVAL                         R10 17
      157 GETTABLEKS                       R10 R10 K23 ["BeforeMutationMask"]
      159 GETUPVAL                         R11 17
      160 GETTABLEKS                       R11 R11 K24 ["MutationMask"]
      162 GETUPVAL                         R12 17
      163 GETTABLEKS                       R12 R12 K25 ["LayoutMask"]
      165 GETUPVAL                         R13 17
      166 GETTABLEKS                       R13 R13 K26 ["PassiveMask"]
      168 FASTCALL                         BIT32_BOR ; [+2]
      169 GETIMPORT                        R9 K28 [bit32.bor]
      171 CALL                             R9 4 1
      172 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
      174 GETIMPORT                        R7 K5 [bit32.band]
      176 CALL                             R7 2 1
      177 GETUPVAL                         R8 17
      178 GETTABLEKS                       R8 R8 K29 ["NoFlags"]
      180 JUMPIFNOTEQ                      R7 R8 ; [+2]
      182 LOADB                            R6 0 +1
      183 LOADB                            R6 1
      184 JUMPIF                           R5 ; [+1]
      185 JUMPIFNOT                        R6 ; [+235]
      186 LOADNIL                          R7
      187 GETUPVAL                         R8 18
      188 GETTABLEKS                       R8 R8 K31 ["decoupleUpdatePriorityFromScheduler"]
      190 JUMPIFNOT                        R8 ; [+8]
      191 GETUPVAL                         R8 19
      192 CALL                             R8 0 1
      193 MOVE                             R7 R8
      194 GETUPVAL                         R8 20
      195 GETUPVAL                         R9 9
      196 GETTABLEKS                       R9 R9 K32 ["SyncLanePriority"]
      198 CALL                             R8 1 0
      199 GETUPVAL                         R8 3
      200 GETUPVAL                         R10 3
      201 FASTCALL2K                       BIT32_BOR R10 K33 ; [+4]
      203 LOADK                            R11 K33 [32]
      204 GETIMPORT                        R9 K28 [bit32.bor]
      206 CALL                             R9 2 1
      207 SETUPVAL                         R9 3
      208 GETUPVAL                         R9 21
      209 GETTABLEKS                       R9 R9 K34 ["pushInteractions"]
      211 MOVE                             R10 R0
      212 CALL                             R9 1 1
      213 GETUPVAL                         R10 22
      214 LOADNIL                          R11
      215 SETTABLEKS                       R11 R10 K15 ["current"]
      217 GETUPVAL                         R10 24
      218 GETTABLEKS                       R10 R10 K35 ["prepareForCommit"]
      220 GETTABLEKS                       R11 R0 K36 ["containerInfo"]
      222 CALL                             R10 1 1
      223 SETUPVAL                         R10 23
      224 LOADB                            R10 0
      225 SETUPVAL                         R10 25
      226 GETUPVAL                         R10 21
      227 GETTABLEKS                       R10 R10 K37 ["commitBeforeMutationEffects"]
      229 MOVE                             R11 R2
      230 CALL                             R10 1 0
      231 LOADNIL                          R10
      232 SETUPVAL                         R10 23
      233 GETUPVAL                         R10 18
      234 GETTABLEKS                       R10 R10 K38 ["enableProfilerTimer"]
      236 JUMPIFNOT                        R10 ; [+4]
      237 GETUPVAL                         R10 26
      238 GETTABLEKS                       R10 R10 K39 ["recordCommitTime"]
      240 CALL                             R10 0 0
      241 GETUPVAL                         R10 21
      242 GETTABLEKS                       R10 R10 K40 ["commitMutationEffects"]
      244 MOVE                             R11 R2
      245 MOVE                             R12 R0
      246 MOVE                             R13 R1
      247 CALL                             R10 3 0
      248 GETUPVAL                         R10 25
      249 JUMPIFNOT                        R10 ; [+4]
      250 GETUPVAL                         R10 24
      251 GETTABLEKS                       R10 R10 K41 ["afterActiveInstanceBlur"]
      253 CALL                             R10 0 0
      254 GETUPVAL                         R10 24
      255 GETTABLEKS                       R10 R10 K42 ["resetAfterCommit"]
      257 GETTABLEKS                       R11 R0 K36 ["containerInfo"]
      259 CALL                             R10 1 0
      260 SETTABLEKS                       R2 R0 K15 ["current"]
      262 GETUPVAL                         R10 4
      263 JUMPIFNOT                        R10 ; [+7]
      264 GETUPVAL                         R10 5
      265 JUMPIFNOT                        R10 ; [+5]
      266 GETUPVAL                         R10 6
      267 GETTABLEKS                       R10 R10 K43 ["logLayoutEffectsStarted"]
      269 MOVE                             R11 R3
      270 CALL                             R10 1 0
      271 GETUPVAL                         R10 7
      272 JUMPIFNOT                        R10 ; [+5]
      273 GETUPVAL                         R10 8
      274 GETTABLEKS                       R10 R10 K44 ["markLayoutEffectsStarted"]
      276 MOVE                             R11 R3
      277 CALL                             R10 1 0
      278 GETUPVAL                         R10 4
      279 JUMPIFNOT                        R10 ; [+29]
      280 GETUPVAL                         R10 27
      281 MOVE                             R11 R2
      282 CALL                             R10 1 0
      283 GETUPVAL                         R10 28
      284 LOADNIL                          R11
      285 GETUPVAL                         R12 29
      286 LOADNIL                          R13
      287 MOVE                             R14 R2
      288 MOVE                             R15 R0
      289 GETUPVAL                         R16 0
      290 GETTABLEKS                       R16 R16 K45 ["captureCommitPhaseError"]
      292 GETUPVAL                         R17 0
      293 GETTABLEKS                       R17 R17 K46 ["schedulePassiveEffectCallback"]
      295 CALL                             R10 7 0
      296 GETUPVAL                         R10 30
      297 CALL                             R10 0 1
      298 JUMPIFNOT                        R10 ; [+7]
      299 GETUPVAL                         R10 31
      300 CALL                             R10 0 1
      301 GETUPVAL                         R11 32
      302 MOVE                             R12 R2
      303 MOVE                             R13 R2
      304 MOVE                             R14 R10
      305 CALL                             R11 3 0
      306 GETUPVAL                         R10 33
      307 CALL                             R10 0 0
      308 JUMP                             ; [+37]
      309 LOADNIL                          R10
      310 LOADNIL                          R11
      311 GETUPVAL                         R12 34
      312 JUMPIF                           R12 ; [+16]
      313 GETIMPORT                        R12 K48 [xpcall]
      315 GETUPVAL                         R13 29
      316 GETUPVAL                         R14 35
      317 MOVE                             R15 R2
      318 MOVE                             R16 R0
      319 GETUPVAL                         R17 0
      320 GETTABLEKS                       R17 R17 K45 ["captureCommitPhaseError"]
      322 GETUPVAL                         R18 0
      323 GETTABLEKS                       R18 R18 K46 ["schedulePassiveEffectCallback"]
      325 CALL                             R12 6 2
      326 MOVE                             R10 R12
      327 MOVE                             R11 R13
      328 JUMP                             ; [+11]
      329 LOADB                            R10 1
      330 GETUPVAL                         R12 29
      331 MOVE                             R13 R2
      332 MOVE                             R14 R0
      333 GETUPVAL                         R15 0
      334 GETTABLEKS                       R15 R15 K45 ["captureCommitPhaseError"]
      336 GETUPVAL                         R16 0
      337 GETTABLEKS                       R16 R16 K46 ["schedulePassiveEffectCallback"]
      339 CALL                             R12 4 0
      340 JUMPIF                           R10 ; [+5]
      341 GETUPVAL                         R12 32
      342 MOVE                             R13 R2
      343 MOVE                             R14 R2
      344 MOVE                             R15 R11
      345 CALL                             R12 3 0
      346 GETUPVAL                         R10 4
      347 JUMPIFNOT                        R10 ; [+6]
      348 GETUPVAL                         R10 5
      349 JUMPIFNOT                        R10 ; [+4]
      350 GETUPVAL                         R10 6
      351 GETTABLEKS                       R10 R10 K49 ["logLayoutEffectsStopped"]
      353 CALL                             R10 0 0
      354 GETUPVAL                         R10 7
      355 JUMPIFNOT                        R10 ; [+4]
      356 GETUPVAL                         R10 8
      357 GETTABLEKS                       R10 R10 K50 ["markLayoutEffectsStopped"]
      359 CALL                             R10 0 0
      360 GETTABLEKS                       R11 R2 K22 ["subtreeFlags"]
      362 GETUPVAL                         R12 17
      363 GETTABLEKS                       R12 R12 K26 ["PassiveMask"]
      365 FASTCALL2                        BIT32_BAND R11 R12 ; [+3]
      367 GETIMPORT                        R10 K5 [bit32.band]
      369 CALL                             R10 2 1
      370 GETUPVAL                         R11 17
      371 GETTABLEKS                       R11 R11 K29 ["NoFlags"]
      373 JUMPIFNOTEQ                      R10 R11 ; [+16]
      375 GETTABLEKS                       R11 R2 K30 ["flags"]
      377 GETUPVAL                         R12 17
      378 GETTABLEKS                       R12 R12 K26 ["PassiveMask"]
      380 FASTCALL2                        BIT32_BAND R11 R12 ; [+3]
      382 GETIMPORT                        R10 K5 [bit32.band]
      384 CALL                             R10 2 1
      385 GETUPVAL                         R11 17
      386 GETTABLEKS                       R11 R11 K29 ["NoFlags"]
      388 JUMPIFEQ                         R10 R11 ; [+10]
      390 GETUPVAL                         R10 36
      391 JUMPIF                           R10 ; [+7]
      392 LOADB                            R10 1
      393 SETUPVAL                         R10 36
      394 GETUPVAL                         R10 37
      395 GETUPVAL                         R11 38
      396 DUPCLOSURE                       R12 K51 [PROTO_67]
      397 CAPTURE                          UPVAL U0
      398 CALL                             R10 2 0
      399 GETUPVAL                         R10 39
      400 CALL                             R10 0 0
      401 GETUPVAL                         R10 18
      402 GETTABLEKS                       R10 R10 K52 ["enableSchedulerTracing"]
      404 JUMPIFNOT                        R10 ; [+5]
      405 GETUPVAL                         R10 21
      406 GETTABLEKS                       R10 R10 K53 ["popInteractions"]
      408 MOVE                             R11 R9
      409 CALL                             R10 1 0
      410 SETUPVAL                         R8 3
      411 GETUPVAL                         R10 18
      412 GETTABLEKS                       R10 R10 K31 ["decoupleUpdatePriorityFromScheduler"]
      414 JUMPIFNOT                        R10 ; [+16]
      415 JUMPIFEQKNIL                     R7 ; [+15]
      417 GETUPVAL                         R10 20
      418 MOVE                             R11 R7
      419 CALL                             R10 1 0
      420 JUMP                             ; [+10]
      421 SETTABLEKS                       R2 R0 K15 ["current"]
      423 GETUPVAL                         R7 18
      424 GETTABLEKS                       R7 R7 K38 ["enableProfilerTimer"]
      426 JUMPIFNOT                        R7 ; [+4]
      427 GETUPVAL                         R7 26
      428 GETTABLEKS                       R7 R7 K39 ["recordCommitTime"]
      430 CALL                             R7 0 0
      431 GETUPVAL                         R7 36
      432 GETUPVAL                         R8 36
      433 JUMPIFNOT                        R8 ; [+5]
      434 LOADB                            R8 0
      435 SETUPVAL                         R8 36
      436 SETUPVAL                         R0 1
      437 SETUPVAL                         R3 40
      438 SETUPVAL                         R1 41
      439 GETTABLEKS                       R4 R0 K54 ["pendingLanes"]
      441 GETUPVAL                         R8 9
      442 GETTABLEKS                       R8 R8 K14 ["NoLanes"]
      444 JUMPIFEQ                         R4 R8 ; [+30]
      446 GETUPVAL                         R8 18
      447 GETTABLEKS                       R8 R8 K52 ["enableSchedulerTracing"]
      449 JUMPIFNOT                        R8 ; [+27]
      450 GETUPVAL                         R8 42
      451 JUMPIFEQKNIL                     R8 ; [+16]
      453 GETUPVAL                         R8 42
      454 LOADNIL                          R9
      455 SETUPVAL                         R9 42
      456 LOADN                            R11 1
      457 LENGTH                           R9 R8
      458 LOADN                            R10 1
      459 FORNPREP                         R9
      460 GETGLOBAL                        R12 K55 ["scheduleInteractions"]
      462 MOVE                             R13 R0
      463 GETTABLE                         R14 R8 R11
      464 GETTABLEKS                       R15 R0 K56 ["memoizedInteractions"]
      466 CALL                             R12 3 0
      467 FORNLOOP                         R9
      468 GETUPVAL                         R8 21
      469 GETTABLEKS                       R8 R8 K57 ["schedulePendingInteractions"]
      471 MOVE                             R9 R0
      472 MOVE                             R10 R4
      473 CALL                             R8 2 0
      474 JUMP                             ; [+2]
      475 LOADNIL                          R8
      476 SETUPVAL                         R8 43
      477 GETUPVAL                         R8 4
      478 JUMPIFNOT                        R8 ; [+9]
      479 GETUPVAL                         R8 44
      480 JUMPIFNOT                        R8 ; [+7]
      481 JUMPIF                           R7 ; [+6]
      482 GETGLOBAL                        R8 K58 ["commitDoubleInvokeEffectsInDEV"]
      484 GETTABLEKS                       R9 R0 K15 ["current"]
      486 LOADB                            R10 0
      487 CALL                             R8 2 0
      488 GETUPVAL                         R8 18
      489 GETTABLEKS                       R8 R8 K52 ["enableSchedulerTracing"]
      491 JUMPIFNOT                        R8 ; [+7]
      492 JUMPIF                           R7 ; [+6]
      493 GETUPVAL                         R8 21
      494 GETTABLEKS                       R8 R8 K59 ["finishPendingInteractions"]
      496 MOVE                             R9 R0
      497 MOVE                             R10 R3
      498 CALL                             R8 2 0
      499 GETUPVAL                         R8 45
      500 JUMPIFNOTEQ                      R4 R8 ; [+12]
      502 GETUPVAL                         R8 46
      503 JUMPIFNOTEQ                      R0 R8 ; [+5]
      505 GETUPVAL                         R8 47
      506 ADDK                             R8 R8 K60 [1]
      507 SETUPVAL                         R8 47
      508 JUMP                             ; [+6]
      509 LOADN                            R8 0
      510 SETUPVAL                         R8 47
      511 SETUPVAL                         R0 46
      512 JUMP                             ; [+2]
      513 LOADN                            R8 0
      514 SETUPVAL                         R8 47
      515 GETUPVAL                         R8 48
      516 GETTABLEKS                       R9 R2 K61 ["stateNode"]
      518 MOVE                             R10 R1
      519 CALL                             R8 2 0
      520 GETUPVAL                         R8 4
      521 JUMPIFNOT                        R8 ; [+2]
      522 GETUPVAL                         R8 49
      523 CALL                             R8 0 0
      524 GETUPVAL                         R8 50
      525 MOVE                             R9 R0
      526 GETUPVAL                         R10 51
      527 CALL                             R10 0 -1
      528 CALL                             R8 -1 0
      529 GETUPVAL                         R8 52
      530 JUMPIFNOT                        R8 ; [+9]
      531 LOADB                            R8 0
      532 SETUPVAL                         R8 52
      533 GETUPVAL                         R8 53
      534 LOADNIL                          R9
      535 SETUPVAL                         R9 53
      536 GETIMPORT                        R9 K63 [error]
      538 MOVE                             R10 R8
      539 CALL                             R9 1 0
      540 GETUPVAL                         R9 3
      541 FASTCALL2K                       BIT32_BAND R9 K64 ; [+4]
      543 LOADK                            R10 K64 [8]
      544 GETIMPORT                        R8 K5 [bit32.band]
      546 CALL                             R8 2 1
      547 JUMPIFEQKN                       R8 K6 [0] ; [+18]
      549 GETUPVAL                         R8 4
      550 JUMPIFNOT                        R8 ; [+6]
      551 GETUPVAL                         R8 5
      552 JUMPIFNOT                        R8 ; [+4]
      553 GETUPVAL                         R8 6
      554 GETTABLEKS                       R8 R8 K12 ["logCommitStopped"]
      556 CALL                             R8 0 0
      557 GETUPVAL                         R8 7
      558 JUMPIFNOT                        R8 ; [+5]
      559 GETUPVAL                         R8 8
      560 GETTABLEKS                       R8 R8 K13 ["markCommitStopped"]
      562 MOVE                             R9 R0
      563 CALL                             R8 1 0
      564 LOADNIL                          R8
      565 RETURN                           R8 1
      566 GETUPVAL                         R8 54
      567 CALL                             R8 0 0
      568 GETUPVAL                         R8 4
      569 JUMPIFNOT                        R8 ; [+6]
      570 GETUPVAL                         R8 5
      571 JUMPIFNOT                        R8 ; [+4]
      572 GETUPVAL                         R8 6
      573 GETTABLEKS                       R8 R8 K12 ["logCommitStopped"]
      575 CALL                             R8 0 0
      576 GETUPVAL                         R8 7
      577 JUMPIFNOT                        R8 ; [+5]
      578 GETUPVAL                         R8 8
      579 GETTABLEKS                       R8 R8 K13 ["markCommitStopped"]
      581 MOVE                             R9 R0
      582 CALL                             R8 1 0
      583 LOADNIL                          R8
      584 RETURN                           R8 1

PROTO_69:
        0 MOVE                             R1 R0
        1 JUMPIFEQKNIL                     R1 ; [+98]
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
       38 GETUPVAL                         R2 2
       39 JUMPIFNOT                        R2 ; [+27]
       40 GETUPVAL                         R2 3
       41 MOVE                             R3 R1
       42 CALL                             R2 1 0
       43 GETUPVAL                         R2 4
       44 LOADNIL                          R3
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K10 ["commitBeforeMutationEffectsImpl"]
       48 LOADNIL                          R5
       49 MOVE                             R6 R1
       50 CALL                             R2 4 0
       51 GETUPVAL                         R2 5
       52 CALL                             R2 0 1
       53 JUMPIFNOT                        R2 ; [+10]
       54 GETUPVAL                         R2 6
       55 CALL                             R2 0 1
       56 GETUPVAL                         R3 7
       57 GETTABLEKS                       R3 R3 K11 ["captureCommitPhaseError"]
       59 MOVE                             R4 R1
       60 GETTABLEKS                       R5 R1 K12 ["return_"]
       62 MOVE                             R6 R2
       63 CALL                             R3 3 0
       64 GETUPVAL                         R2 8
       65 CALL                             R2 0 0
       66 JUMP                             ; [+30]
       67 LOADNIL                          R2
       68 LOADNIL                          R3
       69 GETUPVAL                         R4 9
       70 JUMPIF                           R4 ; [+11]
       71 GETIMPORT                        R4 K14 [xpcall]
       73 GETUPVAL                         R5 0
       74 GETTABLEKS                       R5 R5 K10 ["commitBeforeMutationEffectsImpl"]
       76 GETUPVAL                         R6 10
       77 MOVE                             R7 R1
       78 CALL                             R4 3 2
       79 MOVE                             R2 R4
       80 MOVE                             R3 R5
       81 JUMP                             ; [+6]
       82 LOADB                            R2 1
       83 GETUPVAL                         R4 0
       84 GETTABLEKS                       R4 R4 K10 ["commitBeforeMutationEffectsImpl"]
       86 MOVE                             R5 R1
       87 CALL                             R4 1 0
       88 JUMPIF                           R2 ; [+8]
       89 GETUPVAL                         R4 7
       90 GETTABLEKS                       R4 R4 K11 ["captureCommitPhaseError"]
       92 MOVE                             R5 R1
       93 GETTABLEKS                       R6 R1 K12 ["return_"]
       95 MOVE                             R7 R3
       96 CALL                             R4 3 0
       97 GETTABLEKS                       R1 R1 K15 ["sibling"]
       99 JUMPBACK                         ; [-99]
      100 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["flushPassiveEffects"]
        3 CALL                             R0 0 0
        4 LOADNIL                          R0
        5 RETURN                           R0 1

PROTO_71:
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
       77 DUPCLOSURE                       R5 K12 [PROTO_70]
       78 CAPTURE                          UPVAL U13
       79 CALL                             R3 2 0
       80 RETURN                           R0 0

PROTO_72:
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

PROTO_73:
        0 MOVE                             R3 R0
        1 JUMPIFEQKNIL                     R3 ; [+123]
        3 GETTABLEKS                       R4 R3 K0 ["deletions"]
        5 JUMPIFEQKNIL                     R4 ; [+24]
        7 MOVE                             R5 R4
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 GETIMPORT                        R10 K2 [xpcall]
       13 GETUPVAL                         R11 0
       14 GETUPVAL                         R12 1
       15 MOVE                             R13 R1
       16 MOVE                             R14 R9
       17 MOVE                             R15 R3
       18 MOVE                             R16 R2
       19 CALL                             R10 6 2
       20 JUMPIF                           R10 ; [+7]
       21 GETUPVAL                         R12 2
       22 GETTABLEKS                       R12 R12 K3 ["captureCommitPhaseError"]
       24 MOVE                             R13 R9
       25 MOVE                             R14 R3
       26 MOVE                             R15 R11
       27 CALL                             R12 3 0
       28 FORGLOOP                         R5 2 ; [-18]
       30 GETTABLEKS                       R5 R3 K4 ["child"]
       32 JUMPIFEQKNIL                     R5 ; [+24]
       34 GETTABLEKS                       R6 R3 K5 ["subtreeFlags"]
       36 GETUPVAL                         R7 3
       37 GETTABLEKS                       R7 R7 K6 ["MutationMask"]
       39 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       41 GETIMPORT                        R5 K9 [bit32.band]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K10 ["NoFlags"]
       47 JUMPIFEQ                         R5 R6 ; [+9]
       49 GETUPVAL                         R6 4
       50 GETTABLEKS                       R6 R6 K11 ["commitMutationEffects"]
       52 GETTABLEKS                       R7 R3 K4 ["child"]
       54 MOVE                             R8 R1
       55 MOVE                             R9 R2
       56 CALL                             R6 3 0
       57 GETUPVAL                         R5 5
       58 JUMPIFNOT                        R5 ; [+29]
       59 GETUPVAL                         R5 6
       60 MOVE                             R6 R3
       61 CALL                             R5 1 0
       62 GETUPVAL                         R5 7
       63 LOADNIL                          R6
       64 GETUPVAL                         R7 4
       65 GETTABLEKS                       R7 R7 K12 ["commitMutationEffectsImpl"]
       67 LOADNIL                          R8
       68 MOVE                             R9 R3
       69 MOVE                             R10 R1
       70 MOVE                             R11 R2
       71 CALL                             R5 6 0
       72 GETUPVAL                         R5 8
       73 CALL                             R5 0 1
       74 JUMPIFNOT                        R5 ; [+10]
       75 GETUPVAL                         R5 9
       76 CALL                             R5 0 1
       77 GETUPVAL                         R6 2
       78 GETTABLEKS                       R6 R6 K3 ["captureCommitPhaseError"]
       80 MOVE                             R7 R3
       81 GETTABLEKS                       R8 R3 K13 ["return_"]
       83 MOVE                             R9 R5
       84 CALL                             R6 3 0
       85 GETUPVAL                         R5 10
       86 CALL                             R5 0 0
       87 JUMP                             ; [+34]
       88 LOADNIL                          R5
       89 LOADNIL                          R6
       90 GETUPVAL                         R7 11
       91 JUMPIF                           R7 ; [+13]
       92 GETIMPORT                        R7 K2 [xpcall]
       94 GETUPVAL                         R8 4
       95 GETTABLEKS                       R8 R8 K12 ["commitMutationEffectsImpl"]
       97 GETUPVAL                         R9 1
       98 MOVE                             R10 R3
       99 MOVE                             R11 R1
      100 MOVE                             R12 R2
      101 CALL                             R7 5 2
      102 MOVE                             R5 R7
      103 MOVE                             R6 R8
      104 JUMP                             ; [+8]
      105 LOADB                            R5 1
      106 GETUPVAL                         R7 4
      107 GETTABLEKS                       R7 R7 K12 ["commitMutationEffectsImpl"]
      109 MOVE                             R8 R3
      110 MOVE                             R9 R1
      111 MOVE                             R10 R2
      112 CALL                             R7 3 0
      113 JUMPIF                           R5 ; [+8]
      114 GETUPVAL                         R7 2
      115 GETTABLEKS                       R7 R7 K3 ["captureCommitPhaseError"]
      117 MOVE                             R8 R3
      118 GETTABLEKS                       R9 R3 K13 ["return_"]
      120 MOVE                             R10 R6
      121 CALL                             R7 3 0
      122 GETTABLEKS                       R3 R3 K14 ["sibling"]
      124 JUMPBACK                         ; [-124]
      125 RETURN                           R0 0

PROTO_74:
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

PROTO_75:
        0 MOVE                             R4 R0
        1 LOADNIL                          R5
        2 LOADNIL                          R6
        3 FORGPREP                         R4
        4 GETIMPORT                        R9 K1 [xpcall]
        6 GETUPVAL                         R10 0
        7 GETUPVAL                         R11 1
        8 MOVE                             R12 R2
        9 MOVE                             R13 R8
       10 MOVE                             R14 R1
       11 MOVE                             R15 R3
       12 CALL                             R9 6 2
       13 JUMPIF                           R9 ; [+7]
       14 GETUPVAL                         R11 2
       15 GETTABLEKS                       R11 R11 K2 ["captureCommitPhaseError"]
       17 MOVE                             R12 R8
       18 MOVE                             R13 R1
       19 MOVE                             R14 R10
       20 CALL                             R11 3 0
       21 FORGLOOP                         R4 2 ; [-18]
       23 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["flushPassiveEffects"]
        3 CALL                             R0 0 0
        4 LOADNIL                          R0
        5 RETURN                           R0 1

PROTO_77:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+7]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 DUPCLOSURE                       R2 K0 [PROTO_76]
        7 CAPTURE                          UPVAL U3
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQ                         R0 R1 ; [+60]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 2
        6 JUMPIFNOTLT                      R2 R1 ; [+3]
        8 GETUPVAL                         R0 2
        9 JUMP                             ; [+1]
       10 GETUPVAL                         R0 0
       11 GETUPVAL                         R1 1
       12 SETUPVAL                         R1 0
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K0 ["decoupleUpdatePriorityFromScheduler"]
       16 JUMPIFNOT                        R1 ; [+41]
       17 GETUPVAL                         R1 4
       18 CALL                             R1 0 1
       19 GETUPVAL                         R2 5
       20 GETUPVAL                         R3 6
       21 MOVE                             R4 R0
       22 CALL                             R3 1 -1
       23 CALL                             R2 -1 0
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 GETUPVAL                         R4 7
       27 JUMPIF                           R4 ; [+10]
       28 GETIMPORT                        R4 K2 [xpcall]
       30 GETUPVAL                         R5 8
       31 GETUPVAL                         R6 9
       32 MOVE                             R7 R0
       33 GETUPVAL                         R8 10
       34 CALL                             R4 4 2
       35 MOVE                             R2 R4
       36 MOVE                             R3 R5
       37 JUMP                             ; [+11]
       38 LOADB                            R2 1
       39 GETUPVAL                         R4 5
       40 GETUPVAL                         R5 6
       41 MOVE                             R6 R0
       42 CALL                             R5 1 -1
       43 CALL                             R4 -1 0
       44 GETUPVAL                         R4 8
       45 MOVE                             R5 R0
       46 GETUPVAL                         R6 10
       47 CALL                             R4 2 1
       48 MOVE                             R3 R4
       49 GETUPVAL                         R4 5
       50 MOVE                             R5 R1
       51 CALL                             R4 1 0
       52 JUMPIF                           R2 ; [+4]
       53 GETIMPORT                        R4 K4 [error]
       55 MOVE                             R5 R3
       56 CALL                             R4 1 0
       57 RETURN                           R3 1
       58 GETUPVAL                         R1 8
       59 MOVE                             R2 R0
       60 GETUPVAL                         R3 10
       61 CALL                             R1 2 -1
       62 RETURN                           R1 -1
       63 LOADB                            R0 0
       64 RETURN                           R0 1

PROTO_79:
        0 MOVE                             R2 R1
        1 JUMPIFEQKNIL                     R2 ; [+146]
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
       58 JUMPIFEQ                         R5 R6 ; [+57]
       60 GETUPVAL                         R5 5
       61 JUMPIFNOT                        R5 ; [+26]
       62 GETUPVAL                         R5 6
       63 MOVE                             R6 R2
       64 CALL                             R5 1 0
       65 GETUPVAL                         R5 7
       66 LOADNIL                          R6
       67 GETUPVAL                         R7 8
       68 LOADNIL                          R8
       69 MOVE                             R9 R0
       70 MOVE                             R10 R2
       71 CALL                             R5 5 0
       72 GETUPVAL                         R5 9
       73 CALL                             R5 0 1
       74 JUMPIFNOT                        R5 ; [+10]
       75 GETUPVAL                         R5 10
       76 CALL                             R5 0 1
       77 GETUPVAL                         R6 11
       78 GETTABLEKS                       R6 R6 K13 ["captureCommitPhaseError"]
       80 MOVE                             R7 R2
       81 GETTABLEKS                       R8 R2 K14 ["return_"]
       83 MOVE                             R9 R5
       84 CALL                             R6 3 0
       85 GETUPVAL                         R5 12
       86 CALL                             R5 0 0
       87 JUMP                             ; [+28]
       88 LOADNIL                          R5
       89 LOADNIL                          R6
       90 GETUPVAL                         R7 13
       91 JUMPIF                           R7 ; [+10]
       92 GETIMPORT                        R7 K16 [xpcall]
       94 GETUPVAL                         R8 8
       95 GETUPVAL                         R9 14
       96 MOVE                             R10 R0
       97 MOVE                             R11 R2
       98 CALL                             R7 4 2
       99 MOVE                             R5 R7
      100 MOVE                             R6 R8
      101 JUMP                             ; [+5]
      102 LOADB                            R5 1
      103 GETUPVAL                         R7 8
      104 MOVE                             R8 R0
      105 MOVE                             R9 R2
      106 CALL                             R7 2 0
      107 JUMPIF                           R5 ; [+8]
      108 GETUPVAL                         R7 11
      109 GETTABLEKS                       R7 R7 K13 ["captureCommitPhaseError"]
      111 MOVE                             R8 R2
      112 GETTABLEKS                       R9 R2 K14 ["return_"]
      114 MOVE                             R10 R6
      115 CALL                             R7 3 0
      116 GETUPVAL                         R5 0
      117 GETTABLEKS                       R5 R5 K0 ["enableProfilerTimer"]
      119 JUMPIFNOT                        R5 ; [+25]
      120 GETUPVAL                         R5 0
      121 GETTABLEKS                       R5 R5 K1 ["enableProfilerCommitHooks"]
      123 JUMPIFNOT                        R5 ; [+21]
      124 GETTABLEKS                       R5 R2 K2 ["tag"]
      126 GETUPVAL                         R6 1
      127 GETTABLEKS                       R6 R6 K3 ["Profiler"]
      129 JUMPIFNOTEQ                      R5 R6 ; [+15]
      131 JUMPIFEQKNIL                     R3 ; [+12]
      133 GETTABLEKS                       R5 R3 K17 ["stateNode"]
      135 GETTABLEKS                       R6 R5 K18 ["passiveEffectDuration"]
      137 GETTABLEKS                       R7 R2 K17 ["stateNode"]
      139 GETTABLEKS                       R7 R7 K18 ["passiveEffectDuration"]
      141 ADD                              R6 R6 R7
      142 SETTABLEKS                       R6 R5 K18 ["passiveEffectDuration"]
      144 SETUPVAL                         R3 2
      145 GETTABLEKS                       R2 R2 K19 ["sibling"]
      147 JUMPBACK                         ; [-147]
      148 RETURN                           R0 0

PROTO_80:
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

PROTO_81:
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

PROTO_82:
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
       27 GETUPVAL                         R2 5
       28 JUMPIFNOT                        R2 ; [+7]
       29 GETUPVAL                         R2 6
       30 JUMPIFNOT                        R2 ; [+5]
       31 GETUPVAL                         R2 7
       32 GETTABLEKS                       R2 R2 K7 ["logPassiveEffectsStarted"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 GETUPVAL                         R2 8
       37 JUMPIFNOT                        R2 ; [+5]
       38 GETUPVAL                         R2 9
       39 GETTABLEKS                       R2 R2 K8 ["markPassiveEffectsStarted"]
       41 MOVE                             R3 R1
       42 CALL                             R2 1 0
       43 GETUPVAL                         R2 4
       44 GETUPVAL                         R4 4
       45 FASTCALL2K                       BIT32_BOR R4 K9 ; [+4]
       47 LOADK                            R5 K9 [32]
       48 GETIMPORT                        R3 K11 [bit32.bor]
       50 CALL                             R3 2 1
       51 SETUPVAL                         R3 4
       52 GETUPVAL                         R3 10
       53 GETTABLEKS                       R3 R3 K12 ["pushInteractions"]
       55 MOVE                             R4 R0
       56 CALL                             R3 1 1
       57 GETUPVAL                         R4 11
       58 GETTABLEKS                       R5 R0 K13 ["current"]
       60 CALL                             R4 1 0
       61 GETUPVAL                         R4 12
       62 MOVE                             R5 R0
       63 GETTABLEKS                       R6 R0 K13 ["current"]
       65 CALL                             R4 2 0
       66 GETUPVAL                         R4 5
       67 JUMPIFNOT                        R4 ; [+6]
       68 GETUPVAL                         R4 6
       69 JUMPIFNOT                        R4 ; [+4]
       70 GETUPVAL                         R4 7
       71 GETTABLEKS                       R4 R4 K14 ["logPassiveEffectsStopped"]
       73 CALL                             R4 0 0
       74 GETUPVAL                         R4 8
       75 JUMPIFNOT                        R4 ; [+5]
       76 GETUPVAL                         R4 9
       77 GETTABLEKS                       R4 R4 K15 ["markPassiveEffectsStopped"]
       79 MOVE                             R5 R0
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 5
       82 JUMPIFNOT                        R4 ; [+8]
       83 GETUPVAL                         R4 13
       84 JUMPIFNOT                        R4 ; [+6]
       85 GETGLOBAL                        R4 K16 ["commitDoubleInvokeEffectsInDEV"]
       87 GETTABLEKS                       R5 R0 K13 ["current"]
       89 LOADB                            R6 1
       90 CALL                             R4 2 0
       91 GETUPVAL                         R4 14
       92 GETTABLEKS                       R4 R4 K17 ["enableSchedulerTracing"]
       94 JUMPIFNOT                        R4 ; [+11]
       95 GETUPVAL                         R4 10
       96 GETTABLEKS                       R4 R4 K18 ["popInteractions"]
       98 MOVE                             R5 R3
       99 CALL                             R4 1 0
      100 GETUPVAL                         R4 10
      101 GETTABLEKS                       R4 R4 K19 ["finishPendingInteractions"]
      103 MOVE                             R5 R0
      104 MOVE                             R6 R1
      105 CALL                             R4 2 0
      106 SETUPVAL                         R2 4
      107 GETUPVAL                         R4 15
      108 CALL                             R4 0 0
      109 GETUPVAL                         R4 0
      110 JUMPIFNOTEQKNIL                  R4 ; [+4]
      112 LOADN                            R4 0
      113 SETUPVAL                         R4 16
      114 JUMP                             ; [+3]
      115 GETUPVAL                         R5 16
      116 ADDK                             R4 R5 K20 [1]
      117 SETUPVAL                         R4 16
      118 LOADB                            R4 1
      119 RETURN                           R4 1

PROTO_83:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 JUMPIFEQKNIL                     R2 ; [+6]
        4 GETUPVAL                         R1 0
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K0 ["has"]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_84:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["new"]
        6 NEWTABLE                         R2 0 1
        8 MOVE                             R3 R0
        9 SETLIST                          R2 R3 1 [1]
       11 CALL                             R1 1 1
       12 SETUPVAL                         R1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K1 ["add"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_85:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 LOADB                            R1 1
        3 SETUPVAL                         R1 0
        4 SETUPVAL                         R0 1
        5 RETURN                           R0 0

PROTO_86:
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

PROTO_87:
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

PROTO_88:
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

PROTO_89:
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

PROTO_90:
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

PROTO_91:
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

PROTO_92:
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
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+11]
       14 GETUPVAL                         R0 4
       15 LOADN                            R1 50
       16 JUMPIFNOTLT                      R1 R0 ; [+8]
       18 LOADN                            R0 0
       19 SETUPVAL                         R0 4
       20 GETUPVAL                         R0 5
       21 GETTABLEKS                       R0 R0 K1 ["error"]
       23 LOADK                            R1 K2 ["Maximum update depth exceeded. This can happen when a component calls setState inside useEffect, but useEffect either doesn't have a dependency array, or one of the dependencies changes on every render."]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["flushLegacyContextWarning"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["warnAboutDeprecatedLifecycles"]
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K2 ["flushPendingUnsafeLifecycleWarnings"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+41]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+39]
        4 GETUPVAL                         R2 2
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K0 ["invokeEffectsInDev"]
        9 MOVE                             R3 R0
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["MountLayoutDev"]
       13 GETUPVAL                         R5 4
       14 CALL                             R2 3 0
       15 JUMPIFNOT                        R1 ; [+8]
       16 GETGLOBAL                        R2 K0 ["invokeEffectsInDev"]
       18 MOVE                             R3 R0
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K2 ["MountPassiveDev"]
       22 GETUPVAL                         R5 5
       23 CALL                             R2 3 0
       24 GETGLOBAL                        R2 K0 ["invokeEffectsInDev"]
       26 MOVE                             R3 R0
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R4 R4 K1 ["MountLayoutDev"]
       30 GETUPVAL                         R5 6
       31 CALL                             R2 3 0
       32 JUMPIFNOT                        R1 ; [+8]
       33 GETGLOBAL                        R2 K0 ["invokeEffectsInDev"]
       35 MOVE                             R3 R0
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R4 R4 K2 ["MountPassiveDev"]
       39 GETUPVAL                         R5 7
       40 CALL                             R2 3 0
       41 GETUPVAL                         R2 8
       42 CALL                             R2 0 0
       43 RETURN                           R0 0

PROTO_95:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+48]
        2 GETUPVAL                         R3 1
        3 JUMPIFNOT                        R3 ; [+46]
        4 MOVE                             R3 R0
        5 JUMPIFEQKNIL                     R3 ; [+44]
        7 GETTABLEKS                       R4 R3 K0 ["child"]
        9 JUMPIFEQKNIL                     R4 ; [+21]
       11 GETTABLEKS                       R5 R3 K1 ["subtreeFlags"]
       13 FASTCALL2                        BIT32_BAND R5 R1 ; [+4]
       15 MOVE                             R6 R1
       16 GETIMPORT                        R4 K4 [bit32.band]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K5 ["NoFlags"]
       22 JUMPIFEQ                         R4 R5 ; [+8]
       24 GETGLOBAL                        R5 K6 ["invokeEffectsInDev"]
       26 GETTABLEKS                       R6 R3 K0 ["child"]
       28 MOVE                             R7 R1
       29 MOVE                             R8 R2
       30 CALL                             R5 3 0
       31 GETTABLEKS                       R5 R3 K7 ["flags"]
       33 FASTCALL2                        BIT32_BAND R5 R1 ; [+4]
       35 MOVE                             R6 R1
       36 GETIMPORT                        R4 K4 [bit32.band]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R5 R5 K5 ["NoFlags"]
       42 JUMPIFEQ                         R4 R5 ; [+4]
       44 MOVE                             R4 R2
       45 MOVE                             R5 R3
       46 CALL                             R4 1 0
       47 GETTABLEKS                       R3 R3 K8 ["sibling"]
       49 JUMPBACK                         ; [-45]
       50 RETURN                           R0 0

PROTO_96:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETTABLEKS                       R0 R0 K0 ["error"]
        6 LOADK                            R1 K1 ["Can't perform a React state update on a component that hasn't mounted yet. This indicates that you have a side-effect in your render function that asynchronously later calls tries to update the component. Move this work to useEffect instead."]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_97:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+117]
        2 GETUPVAL                         R2 1
        3 FASTCALL2K                       BIT32_BAND R2 K0 ; [+4]
        5 LOADK                            R3 K0 [16]
        6 GETIMPORT                        R1 K3 [bit32.band]
        8 CALL                             R1 2 1
        9 JUMPIFEQKN                       R1 K4 [0] ; [+2]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R0 K5 ["mode"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K6 ["BlockingMode"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K7 ["ConcurrentMode"]
       20 FASTCALL2                        BIT32_BOR R4 R5 ; [+3]
       22 GETIMPORT                        R3 K9 [bit32.bor]
       24 CALL                             R3 2 1
       25 FASTCALL2                        BIT32_BAND R2 R3 ; [+3]
       27 GETIMPORT                        R1 K3 [bit32.band]
       29 CALL                             R1 2 1
       30 JUMPIFNOTEQKN                    R1 K4 [0] ; [+2]
       32 RETURN                           R0 0
       33 GETTABLEKS                       R1 R0 K10 ["tag"]
       35 GETUPVAL                         R2 3
       36 GETTABLEKS                       R2 R2 K11 ["IndeterminateComponent"]
       38 JUMPIFEQ                         R1 R2 ; [+37]
       40 GETUPVAL                         R2 3
       41 GETTABLEKS                       R2 R2 K12 ["HostRoot"]
       43 JUMPIFEQ                         R1 R2 ; [+32]
       45 GETUPVAL                         R2 3
       46 GETTABLEKS                       R2 R2 K13 ["ClassComponent"]
       48 JUMPIFEQ                         R1 R2 ; [+27]
       50 GETUPVAL                         R2 3
       51 GETTABLEKS                       R2 R2 K14 ["FunctionComponent"]
       53 JUMPIFEQ                         R1 R2 ; [+22]
       55 GETUPVAL                         R2 3
       56 GETTABLEKS                       R2 R2 K15 ["ForwardRef"]
       58 JUMPIFEQ                         R1 R2 ; [+17]
       60 GETUPVAL                         R2 3
       61 GETTABLEKS                       R2 R2 K16 ["MemoComponent"]
       63 JUMPIFEQ                         R1 R2 ; [+12]
       65 GETUPVAL                         R2 3
       66 GETTABLEKS                       R2 R2 K17 ["SimpleMemoComponent"]
       68 JUMPIFEQ                         R1 R2 ; [+7]
       70 GETUPVAL                         R2 3
       71 GETTABLEKS                       R2 R2 K18 ["Block"]
       73 JUMPIFEQ                         R1 R2 ; [+2]
       75 RETURN                           R0 0
       76 GETUPVAL                         R3 4
       77 GETTABLEKS                       R4 R0 K20 ["type"]
       79 CALL                             R3 1 1
       80 ORK                              R2 R3 K19 ["ReactComponent"]
       81 GETUPVAL                         R3 5
       82 JUMPIFEQKNIL                     R3 ; [+9]
       84 GETUPVAL                         R4 5
       85 GETTABLE                         R3 R4 R2
       86 JUMPIFNOT                        R3 ; [+1]
       87 RETURN                           R0 0
       88 GETUPVAL                         R3 5
       89 LOADB                            R4 1
       90 SETTABLE                         R4 R3 R2
       91 JUMP                             ; [+5]
       92 NEWTABLE                         R3 1 0
       94 LOADB                            R4 1
       95 SETTABLE                         R4 R3 R2
       96 SETUPVAL                         R3 5
       97 GETUPVAL                         R3 6
       98 GETTABLEKS                       R3 R3 K21 ["current"]
      100 GETIMPORT                        R4 K23 [pcall]
      102 NEWCLOSURE                       R5 P0
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U8
      106 CALL                             R4 1 2
      107 JUMPIFNOT                        R3 ; [+4]
      108 GETUPVAL                         R6 7
      109 MOVE                             R7 R0
      110 CALL                             R6 1 0
      111 JUMP                             ; [+2]
      112 GETUPVAL                         R6 9
      113 CALL                             R6 0 0
      114 JUMPIF                           R4 ; [+4]
      115 GETIMPORT                        R6 K25 [error]
      117 MOVE                             R7 R5
      118 CALL                             R6 1 0
      119 RETURN                           R0 0

PROTO_98:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["assignFiberPropertiesInDEV"]
        3 LOADNIL                          R4
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETIMPORT                        R4 K2 [xpcall]
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 MOVE                             R7 R0
       11 MOVE                             R8 R1
       12 MOVE                             R9 R2
       13 CALL                             R4 5 2
       14 JUMPIF                           R4 ; [+111]
       15 JUMPIFEQKNIL                     R5 ; [+20]
       17 FASTCALL1                        TYPEOF R5 ; [+3]
       18 MOVE                             R7 R5
       19 GETIMPORT                        R6 K4 [typeof]
       21 CALL                             R6 1 1
       22 JUMPIFNOTEQKS                    R6 K5 ["table"] ; [+13]
       24 GETTABLEKS                       R7 R5 K6 ["andThen"]
       26 FASTCALL1                        TYPEOF R7 ; [+2]
       27 GETIMPORT                        R6 K4 [typeof]
       29 CALL                             R6 1 1
       30 JUMPIFNOTEQKS                    R6 K7 ["function"] ; [+5]
       32 GETIMPORT                        R6 K9 [error]
       34 MOVE                             R7 R5
       35 CALL                             R6 1 0
       36 GETUPVAL                         R6 3
       37 CALL                             R6 0 0
       38 GETUPVAL                         R6 4
       39 GETTABLEKS                       R6 R6 K10 ["resetHooksAfterThrowRef"]
       41 JUMPIF                           R6 ; [+28]
       42 GETIMPORT                        R6 K12 [require]
       44 GETIMPORT                        R8 K15 [script]
       46 GETTABLEKS                       R8 R8 K16 ["Parent"]
       48 GETTABLEKS                       R7 R8 K13 ["ReactFiberHooks.new"]
       50 CALL                             R6 1 1
       51 SETUPVAL                         R6 5
       52 GETUPVAL                         R6 4
       53 GETUPVAL                         R7 5
       54 GETTABLEKS                       R7 R7 K17 ["resetHooksAfterThrow"]
       56 SETTABLEKS                       R7 R6 K10 ["resetHooksAfterThrowRef"]
       58 GETUPVAL                         R6 4
       59 GETUPVAL                         R7 5
       60 GETTABLEKS                       R7 R7 K18 ["ContextOnlyDispatcher"]
       62 SETTABLEKS                       R7 R6 K19 ["ContextOnlyDispatcherRef"]
       64 GETUPVAL                         R6 4
       65 GETUPVAL                         R7 5
       66 GETTABLEKS                       R7 R7 K20 ["getIsUpdatingOpaqueValueInRenderPhaseInDEV"]
       68 SETTABLEKS                       R7 R6 K21 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       70 GETUPVAL                         R6 4
       71 GETTABLEKS                       R6 R6 K10 ["resetHooksAfterThrowRef"]
       73 CALL                             R6 0 1
       74 GETUPVAL                         R6 6
       75 MOVE                             R7 R1
       76 CALL                             R6 1 0
       77 GETUPVAL                         R6 0
       78 GETTABLEKS                       R6 R6 K0 ["assignFiberPropertiesInDEV"]
       80 MOVE                             R7 R1
       81 MOVE                             R8 R3
       82 CALL                             R6 2 0
       83 GETUPVAL                         R6 7
       84 GETTABLEKS                       R6 R6 K22 ["enableProfilerTimer"]
       86 JUMPIFNOT                        R6 ; [+17]
       87 GETTABLEKS                       R7 R1 K23 ["mode"]
       89 GETUPVAL                         R8 8
       90 GETTABLEKS                       R8 R8 K24 ["ProfileMode"]
       92 FASTCALL2                        BIT32_BAND R7 R8 ; [+3]
       94 GETIMPORT                        R6 K27 [bit32.band]
       96 CALL                             R6 2 1
       97 JUMPIFEQKN                       R6 K28 [0] ; [+6]
       99 GETUPVAL                         R6 9
      100 GETTABLEKS                       R6 R6 K29 ["startProfilerTimer"]
      102 MOVE                             R7 R1
      103 CALL                             R6 1 0
      104 GETUPVAL                         R6 10
      105 LOADNIL                          R7
      106 GETUPVAL                         R8 1
      107 LOADNIL                          R9
      108 MOVE                             R10 R0
      109 MOVE                             R11 R1
      110 MOVE                             R12 R2
      111 CALL                             R6 6 0
      112 GETUPVAL                         R6 11
      113 CALL                             R6 0 1
      114 JUMPIFNOT                        R6 ; [+7]
      115 GETUPVAL                         R6 12
      116 CALL                             R6 0 1
      117 GETIMPORT                        R7 K9 [error]
      119 MOVE                             R8 R6
      120 CALL                             R7 1 0
      121 RETURN                           R5 1
      122 GETIMPORT                        R6 K9 [error]
      124 MOVE                             R7 R5
      125 CALL                             R6 1 0
      126 RETURN                           R5 1

PROTO_99:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["type"]
        6 CALL                             R0 1 1
        7 JUMPIF                           R0 ; [+1]
        8 LOADK                            R0 K1 ["Unknown"]
        9 RETURN                           R0 1

PROTO_100:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+117]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["isRendering"]
        5 JUMPIFNOT                        R1 ; [+113]
        6 GETUPVAL                         R2 2
        7 FASTCALL2K                       BIT32_BAND R2 K1 ; [+4]
        9 LOADK                            R3 K1 [16]
       10 GETIMPORT                        R1 K4 [bit32.band]
       12 CALL                             R1 2 1
       13 JUMPIFEQKN                       R1 K5 [0] ; [+105]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K6 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       18 JUMPIF                           R2 ; [+28]
       19 GETIMPORT                        R2 K8 [require]
       21 GETIMPORT                        R4 K11 [script]
       23 GETTABLEKS                       R4 R4 K12 ["Parent"]
       25 GETTABLEKS                       R3 R4 K9 ["ReactFiberHooks.new"]
       27 CALL                             R2 1 1
       28 SETUPVAL                         R2 4
       29 GETUPVAL                         R2 3
       30 GETUPVAL                         R3 4
       31 GETTABLEKS                       R3 R3 K13 ["resetHooksAfterThrow"]
       33 SETTABLEKS                       R3 R2 K14 ["resetHooksAfterThrowRef"]
       35 GETUPVAL                         R2 3
       36 GETUPVAL                         R3 4
       37 GETTABLEKS                       R3 R3 K15 ["ContextOnlyDispatcher"]
       39 SETTABLEKS                       R3 R2 K16 ["ContextOnlyDispatcherRef"]
       41 GETUPVAL                         R2 3
       42 GETUPVAL                         R3 4
       43 GETTABLEKS                       R3 R3 K17 ["getIsUpdatingOpaqueValueInRenderPhaseInDEV"]
       45 SETTABLEKS                       R3 R2 K6 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       47 GETUPVAL                         R1 3
       48 GETTABLEKS                       R1 R1 K6 ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"]
       50 CALL                             R1 0 1
       51 JUMPIF                           R1 ; [+67]
       52 GETTABLEKS                       R1 R0 K18 ["tag"]
       54 GETUPVAL                         R2 5
       55 GETTABLEKS                       R2 R2 K19 ["FunctionComponent"]
       57 JUMPIFEQ                         R1 R2 ; [+15]
       59 GETTABLEKS                       R1 R0 K18 ["tag"]
       61 GETUPVAL                         R2 5
       62 GETTABLEKS                       R2 R2 K20 ["ForwardRef"]
       64 JUMPIFEQ                         R1 R2 ; [+8]
       66 GETTABLEKS                       R1 R0 K18 ["tag"]
       68 GETUPVAL                         R2 5
       69 GETTABLEKS                       R2 R2 K21 ["SimpleMemoComponent"]
       71 JUMPIFNOTEQ                      R1 R2 ; [+31]
       73 GETUPVAL                         R2 6
       74 JUMPIFNOT                        R2 ; [+6]
       75 GETUPVAL                         R1 7
       76 GETUPVAL                         R2 6
       77 GETTABLEKS                       R2 R2 K22 ["type"]
       79 CALL                             R1 1 1
       80 JUMPIF                           R1 ; [+1]
       81 LOADK                            R1 K23 ["Unknown"]
       82 GETUPVAL                         R3 8
       83 GETTABLE                         R2 R3 R1
       84 JUMPIFNOTEQKNIL                  R2 ; [+34]
       86 GETUPVAL                         R2 8
       87 LOADB                            R3 1
       88 SETTABLE                         R3 R2 R1
       89 GETUPVAL                         R3 7
       90 GETTABLEKS                       R4 R0 K22 ["type"]
       92 CALL                             R3 1 1
       93 ORK                              R2 R3 K23 ["Unknown"]
       94 GETUPVAL                         R3 9
       95 GETTABLEKS                       R3 R3 K24 ["error"]
       97 LOADK                            R4 K25 ["Cannot update a component (`%s`) while rendering a different component (`%s`). To locate the bad setState() call inside `%s`, follow the stack trace as described in https://reactjs.org/link/setstate-in-render"]
       98 MOVE                             R5 R2
       99 MOVE                             R6 R1
      100 MOVE                             R7 R1
      101 CALL                             R3 4 0
      102 RETURN                           R0 0
      103 GETTABLEKS                       R1 R0 K18 ["tag"]
      105 GETUPVAL                         R2 5
      106 GETTABLEKS                       R2 R2 K26 ["ClassComponent"]
      108 JUMPIFNOTEQ                      R1 R2 ; [+10]
      110 GETUPVAL                         R1 10
      111 JUMPIF                           R1 ; [+7]
      112 GETUPVAL                         R1 9
      113 GETTABLEKS                       R1 R1 K24 ["error"]
      115 LOADK                            R2 K27 ["Cannot update during an existing state transition (such as within `render`). Render methods should be a pure function of props and state."]
      116 CALL                             R1 1 0
      117 LOADB                            R1 1
      118 SETUPVAL                         R1 10
      119 RETURN                           R0 0

PROTO_101:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETTABLEKS                       R0 R0 K0 ["error"]
        6 LOADK                            R1 K1 ["It looks like you're using the wrong act() around your test interactions.\nBe sure to use the matching version of act() corresponding to your renderer:\n\n-- for react-roblox:\nlocal React = require(Packages.React)\n-- ...\nReact.TestUtils.act(function() ... end)\n\n-- for react-test-renderer:\nlocal TestRenderer = require(Packages.ReactTestRenderer)\n-- ...\nTestRenderer.act(function() ... end)"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_102:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+39]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["warnsIfNotActing"]
        5 JUMPIFNOTEQKB                    R1 TRUE ; [+35]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["current"]
       10 JUMPIFNOTEQKB                    R1 TRUE ; [+30]
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K2 ["IsThisRendererActing"]
       15 GETTABLEKS                       R1 R1 K1 ["current"]
       17 JUMPIFEQKB                       R1 TRUE ; [+23]
       19 GETUPVAL                         R1 4
       20 GETTABLEKS                       R1 R1 K1 ["current"]
       22 GETIMPORT                        R2 K4 [pcall]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U6
       28 CALL                             R2 1 2
       29 JUMPIFNOT                        R1 ; [+4]
       30 GETUPVAL                         R4 5
       31 MOVE                             R5 R0
       32 CALL                             R4 1 0
       33 JUMP                             ; [+2]
       34 GETUPVAL                         R4 7
       35 CALL                             R4 0 0
       36 JUMPIF                           R2 ; [+4]
       37 GETIMPORT                        R4 K6 [error]
       39 MOVE                             R5 R3
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+41]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["warnsIfNotActing"]
        5 JUMPIFNOTEQKB                    R1 TRUE ; [+37]
        7 GETTABLEKS                       R2 R0 K1 ["mode"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["StrictMode"]
       12 FASTCALL2                        BIT32_BAND R2 R3 ; [+3]
       14 GETIMPORT                        R1 K5 [bit32.band]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K6 ["NoMode"]
       20 JUMPIFEQ                         R1 R2 ; [+22]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K7 ["current"]
       25 JUMPIFNOTEQKB                    R1 FALSE ; [+17]
       27 GETUPVAL                         R1 4
       28 GETTABLEKS                       R1 R1 K8 ["IsThisRendererActing"]
       30 GETTABLEKS                       R1 R1 K7 ["current"]
       32 JUMPIFNOTEQKB                    R1 FALSE ; [+10]
       34 GETUPVAL                         R1 5
       35 GETTABLEKS                       R1 R1 K9 ["error"]
       37 LOADK                            R2 K10 ["An update to %s ran an effect, but was not wrapped in act(...).\n\nWhen testing, code that causes React state updates should be wrapped into act(...):\n\nact(function()\n  --[[ fire events that update state ]]\nend)\n--[[ assert on the output ]]\n\nThis ensures that you're testing the behavior the user would see in the real client. Learn more at https://reactjs.org/link/wrap-tests-with-act"]
       38 GETUPVAL                         R3 6
       39 GETTABLEKS                       R4 R0 K11 ["type"]
       41 CALL                             R3 1 -1
       42 CALL                             R1 -1 0
       43 RETURN                           R0 0

PROTO_104:
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

PROTO_105:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+38]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["warnsIfNotActing"]
        5 JUMPIFNOTEQKB                    R1 TRUE ; [+34]
        7 GETUPVAL                         R1 2
        8 JUMPIFNOTEQKN                    R1 K1 [0] ; [+31]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K2 ["current"]
       13 JUMPIFNOTEQKB                    R1 FALSE ; [+26]
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K3 ["IsThisRendererActing"]
       18 GETTABLEKS                       R1 R1 K2 ["current"]
       20 JUMPIFNOTEQKB                    R1 FALSE ; [+19]
       22 GETUPVAL                         R1 5
       23 GETIMPORT                        R2 K5 [pcall]
       25 NEWCLOSURE                       R3 P0
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CALL                             R2 1 2
       31 JUMPIFNOT                        R1 ; [+4]
       32 GETUPVAL                         R4 6
       33 MOVE                             R5 R0
       34 CALL                             R4 1 0
       35 JUMP                             ; [+2]
       36 GETUPVAL                         R4 9
       37 CALL                             R4 0 0
       38 JUMPIFNOT                        R2 ; [+1]
       39 RETURN                           R3 1
       40 RETURN                           R0 0

PROTO_106:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+52]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOTEQKB                    R1 FALSE ; [+50]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["unstable_flushAllWithoutAsserting"]
        8 JUMPIFNOTEQKNIL                  R1 ; [+45]
       10 GETTABLEKS                       R2 R0 K1 ["mode"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K2 ["BlockingMode"]
       15 FASTCALL2                        BIT32_BAND R2 R3 ; [+3]
       17 GETIMPORT                        R1 K5 [bit32.band]
       19 CALL                             R1 2 1
       20 JUMPIFNOTEQKN                    R1 K6 [0] ; [+13]
       22 GETTABLEKS                       R2 R0 K1 ["mode"]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K7 ["ConcurrentMode"]
       27 FASTCALL2                        BIT32_BAND R2 R3 ; [+3]
       29 GETIMPORT                        R1 K5 [bit32.band]
       31 CALL                             R1 2 1
       32 JUMPIFEQKN                       R1 K6 [0] ; [+9]
       34 LOADB                            R1 1
       35 SETUPVAL                         R1 1
       36 GETUPVAL                         R1 4
       37 GETTABLEKS                       R1 R1 K8 ["error"]
       39 LOADK                            R2 K9 ["In Concurrent or Sync modes, the 'scheduler' module needs to be mocked to guarantee consistent behaviour across tests and client application. For example, with Jest: \njest.mock('scheduler', function() return require(Packages.Scheduler).unstable_mock end)\n\nFor more info, visit https://reactjs.org/link/mock-scheduler"]
       40 CALL                             R1 1 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R1 5
       43 GETTABLEKS                       R1 R1 K10 ["warnAboutUnmockedScheduler"]
       45 JUMPIFNOTEQKB                    R1 TRUE ; [+8]
       47 LOADB                            R1 1
       48 SETUPVAL                         R1 1
       49 GETUPVAL                         R1 4
       50 GETTABLEKS                       R1 R1 K8 ["error"]
       52 LOADK                            R2 K11 ["Starting from React v18, the 'scheduler' module will need to be mocked to guarantee consistent behaviour across tests and client applications. For example, with Jest: \njest.mock('scheduler', function() return require(Packages.Scheduler).unstable_mock end)\n\nFor more info, visit https://reactjs.org/link/mock-scheduler"]
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

PROTO_107:
        0 MULK                             R3 R1 K0 [1000]
        1 GETTABLEKS                       R4 R0 K1 ["interactionThreadID"]
        3 ADD                              R2 R3 R4
        4 RETURN                           R2 1

PROTO_108:
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

PROTO_109:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["has"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K1 ["__count"]
        8 ADDK                             R1 R1 K2 [1]
        9 SETTABLEKS                       R1 R0 K1 ["__count"]
       11 GETUPVAL                         R1 0
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K3 ["add"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_110:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["enableSchedulerTracing"]
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R2 K1 ["size"]
        7 LOADN                            R4 0
        8 JUMPIFNOTLT                      R4 R3 ; [+50]
       10 GETTABLEKS                       R3 R0 K2 ["pendingInteractionMap"]
       12 MOVE                             R6 R1
       13 NAMECALL                         R4 R3 K3 ["get"]
       15 CALL                             R4 2 1
       16 JUMPIFEQKNIL                     R4 ; [+7]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R4
       20 NAMECALL                         R5 R2 K4 ["forEach"]
       22 CALL                             R5 2 0
       23 JUMP                             ; [+20]
       24 MOVE                             R7 R1
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K5 ["new"]
       28 MOVE                             R9 R2
       29 CALL                             R8 1 -1
       30 NAMECALL                         R5 R3 K6 ["set"]
       32 CALL                             R5 -1 0
       33 MOVE                             R5 R2
       34 LOADNIL                          R6
       35 LOADNIL                          R7
       36 FORGPREP                         R5
       37 GETTABLEKS                       R10 R9 K7 ["__count"]
       39 ADDK                             R10 R10 K8 [1]
       40 SETTABLEKS                       R10 R9 K7 ["__count"]
       42 FORGLOOP                         R5 2 ; [-6]
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K9 ["current"]
       47 JUMPIFEQKNIL                     R5 ; [+11]
       49 GETGLOBAL                        R6 K10 ["computeThreadID"]
       51 MOVE                             R7 R0
       52 MOVE                             R8 R1
       53 CALL                             R6 2 1
       54 GETTABLEKS                       R7 R5 K11 ["onWorkScheduled"]
       56 MOVE                             R8 R2
       57 MOVE                             R9 R6
       58 CALL                             R7 2 0
       59 RETURN                           R0 0

PROTO_111:
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

PROTO_112:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["add"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_113:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+5]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R2 R0 K0 ["forEach"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_114:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_115:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["enableSchedulerTracing"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["new"]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R3 R0 K2 ["pendingInteractionMap"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 NAMECALL                         R3 R3 K3 ["forEach"]
       17 CALL                             R3 2 0
       18 SETTABLEKS                       R2 R0 K4 ["memoizedInteractions"]
       20 GETTABLEKS                       R3 R2 K5 ["size"]
       22 LOADN                            R4 0
       23 JUMPIFNOTLT                      R4 R3 ; [+25]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K6 ["current"]
       28 JUMPIFEQKNIL                     R3 ; [+20]
       30 GETGLOBAL                        R4 K7 ["computeThreadID"]
       32 MOVE                             R5 R0
       33 MOVE                             R6 R1
       34 CALL                             R4 2 1
       35 GETIMPORT                        R5 K9 [xpcall]
       37 GETTABLEKS                       R6 R3 K10 ["onWorkStarted"]
       39 GETUPVAL                         R7 4
       40 MOVE                             R8 R2
       41 MOVE                             R9 R4
       42 CALL                             R5 4 2
       43 JUMPIF                           R5 ; [+5]
       44 GETUPVAL                         R7 5
       45 GETUPVAL                         R8 6
       46 NEWCLOSURE                       R9 P1
       47 CAPTURE                          VAL R6
       48 CALL                             R7 2 0
       49 RETURN                           R0 0

PROTO_116:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_117:
        0 GETTABLEKS                       R1 R0 K0 ["__count"]
        2 SUBK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["__count"]
        5 GETUPVAL                         R1 0
        6 JUMPIFEQKNIL                     R1 ; [+19]
        8 GETTABLEKS                       R1 R0 K0 ["__count"]
       10 JUMPIFNOTEQKN                    R1 K2 [0] ; [+15]
       12 GETIMPORT                        R1 K4 [xpcall]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K5 ["onInteractionScheduledWorkCompleted"]
       17 GETUPVAL                         R3 1
       18 MOVE                             R4 R0
       19 CALL                             R1 3 2
       20 JUMPIF                           R1 ; [+5]
       21 GETUPVAL                         R3 2
       22 GETUPVAL                         R4 3
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R2
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_118:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+13]
        5 GETUPVAL                         R2 2
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K0 ["delete"]
        9 CALL                             R2 2 0
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 NAMECALL                         R2 R0 K1 ["forEach"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_119:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_120:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["enableSchedulerTracing"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K1 ["pendingLanes"]
        7 LOADNIL                          R3
        8 LOADB                            R4 1
        9 LOADNIL                          R5
       10 JUMPIFEQKNIL                     R3 ; [+27]
       12 GETTABLEKS                       R6 R0 K2 ["memoizedInteractions"]
       14 GETTABLEKS                       R6 R6 K3 ["size"]
       16 LOADN                            R7 0
       17 JUMPIFNOTLT                      R7 R6 ; [+20]
       19 GETGLOBAL                        R6 K4 ["computeThreadID"]
       21 MOVE                             R7 R0
       22 MOVE                             R8 R1
       23 CALL                             R6 2 1
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R3 R7 K5 ["current"]
       27 GETIMPORT                        R7 K7 [xpcall]
       29 GETTABLEKS                       R8 R3 K8 ["onWorkStopped"]
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R10 R0 K2 ["memoizedInteractions"]
       34 MOVE                             R11 R6
       35 CALL                             R7 4 2
       36 MOVE                             R4 R7
       37 MOVE                             R5 R8
       38 GETTABLEKS                       R6 R0 K9 ["pendingInteractionMap"]
       40 NEWCLOSURE                       R9 P0
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R6
       44 CAPTURE                          REF R3
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U5
       48 NAMECALL                         R7 R6 K10 ["forEach"]
       50 CALL                             R7 2 0
       51 JUMPIF                           R4 ; [+5]
       52 GETUPVAL                         R7 4
       53 GETUPVAL                         R8 5
       54 NEWCLOSURE                       R9 P1
       55 CAPTURE                          REF R5
       56 CALL                             R7 2 0
       57 CLOSEUPVALS                      R3
       58 RETURN                           R0 0

PROTO_121:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["flushPassiveEffects"]
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADB                            R0 1
        7 JUMPBACK                         ; [-7]
        8 RETURN                           R0 1

PROTO_122:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+18]
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 SETUPVAL                         R1 1
        6 GETIMPORT                        R1 K1 [xpcall]
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R3 2
       10 CALL                             R1 2 2
       11 SETUPVAL                         R0 1
       12 JUMPIF                           R1 ; [+5]
       13 GETIMPORT                        R3 K3 [error]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 0
       17 RETURN                           R0 0
       18 RETURN                           R2 1
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 1
       21 LOADB                            R1 1
       22 SETUPVAL                         R1 1
       23 GETIMPORT                        R1 K1 [xpcall]
       25 DUPCLOSURE                       R2 K4 [PROTO_121]
       26 CAPTURE                          UPVAL U3
       27 GETUPVAL                         R3 2
       28 CALL                             R1 2 2
       29 SETUPVAL                         R0 1
       30 JUMPIF                           R1 ; [+5]
       31 GETIMPORT                        R3 K3 [error]
       33 MOVE                             R4 R2
       34 CALL                             R3 1 0
       35 RETURN                           R0 0
       36 RETURN                           R2 1
       37 RETURN                           R0 0

PROTO_123:
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

PROTO_124:
        0 GETIMPORT                        R1 K1 [xpcall]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 CALL                             R1 2 2
        5 JUMPIFNOT                        R1 ; [+11]
        6 GETIMPORT                        R3 K1 [xpcall]
        8 GETUPVAL                         R4 2
        9 GETUPVAL                         R5 1
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CALL                             R3 3 2
       15 MOVE                             R1 R3
       16 MOVE                             R2 R4
       17 JUMPIF                           R1 ; [+3]
       18 MOVE                             R3 R0
       19 MOVE                             R4 R2
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

PROTO_125:
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
       15 GETUPVAL                         R0 7
       16 JUMPIFNOT                        R0 ; [+9]
       17 GETUPVAL                         R0 0
       18 GETUPVAL                         R1 8
       19 JUMPIFNOTLT                      R1 R0 ; [+6]
       21 GETUPVAL                         R0 9
       22 GETTABLEKS                       R0 R0 K3 ["error"]
       24 LOADK                            R1 K4 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_126:
        0 RETURN                           R0 0

PROTO_127:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKB                    R0 FALSE ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["error"]
        6 LOADK                            R1 K1 ["You called act(Promise.new(function() --[[ ... ]] end)) without :await() or :expect(). This could lead to unexpected testing behaviour, interleaving multiple act calls and mixing their scopes. You should - act(function() Promise.new(function() --[[ ... ]] end):await() end);"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

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
       15 GETUPVAL                         R1 7
       16 JUMPIFNOT                        R1 ; [+9]
       17 GETUPVAL                         R1 0
       18 GETUPVAL                         R2 8
       19 JUMPIFNOTLT                      R2 R1 ; [+6]
       21 GETUPVAL                         R1 9
       22 GETTABLEKS                       R1 R1 K3 ["error"]
       24 LOADK                            R2 K4 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       25 CALL                             R1 1 0
       26 JUMPIFNOT                        R0 ; [+4]
       27 GETUPVAL                         R1 10
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 11
       32 CALL                             R1 0 0
       33 RETURN                           R0 0

PROTO_129:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 JUMPIFLT                         R1 R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOTEQKB                    R0 TRUE ; [+33]
        7 GETUPVAL                         R0 2
        8 JUMPIFNOTEQKB                    R0 TRUE ; [+30]
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
       25 GETUPVAL                         R0 8
       26 JUMPIFNOT                        R0 ; [+9]
       27 GETUPVAL                         R0 0
       28 GETUPVAL                         R1 9
       29 JUMPIFNOTLT                      R1 R0 ; [+6]
       31 GETUPVAL                         R0 10
       32 GETTABLEKS                       R0 R0 K3 ["error"]
       34 LOADK                            R1 K4 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       35 CALL                             R0 1 0
       36 GETUPVAL                         R0 11
       37 CALL                             R0 0 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R0 12
       40 NEWCLOSURE                       R1 P0
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          UPVAL U8
       49 CAPTURE                          UPVAL U9
       50 CAPTURE                          UPVAL U10
       51 CAPTURE                          UPVAL U13
       52 CAPTURE                          UPVAL U11
       53 CALL                             R0 1 0
       54 RETURN                           R0 0

PROTO_130:
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
       15 GETUPVAL                         R1 7
       16 JUMPIFNOT                        R1 ; [+9]
       17 GETUPVAL                         R1 0
       18 GETUPVAL                         R2 8
       19 JUMPIFNOTLT                      R2 R1 ; [+6]
       21 GETUPVAL                         R1 9
       22 GETTABLEKS                       R1 R1 K3 ["error"]
       24 LOADK                            R2 K4 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 10
       27 MOVE                             R2 R0
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_131:
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
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          VAL R2
       18 NEWCLOSURE                       R6 P1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          UPVAL U8
       25 CAPTURE                          UPVAL U9
       26 CAPTURE                          UPVAL U10
       27 CAPTURE                          UPVAL U11
       28 CAPTURE                          UPVAL U12
       29 CAPTURE                          VAL R2
       30 NAMECALL                         R3 R3 K0 ["andThen"]
       32 CALL                             R3 3 -1
       33 RETURN                           R3 -1

PROTO_132:
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
       26 GETUPVAL                         R0 9
       27 JUMPIFNOT                        R0 ; [+9]
       28 GETUPVAL                         R0 0
       29 GETUPVAL                         R1 10
       30 JUMPIFNOTLT                      R1 R0 ; [+6]
       32 GETUPVAL                         R0 11
       33 GETTABLEKS                       R0 R0 K3 ["error"]
       35 LOADK                            R1 K4 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       36 CALL                             R0 1 0
       37 RETURN                           R0 0

PROTO_133:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+5]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["error"]
        5 LOADK                            R4 K1 ["Do not await the result of calling act(...) with sync logic, it is not a Promise."]
        6 CALL                             R3 1 0
        7 MOVE                             R3 R1
        8 CALL                             R3 0 0
        9 RETURN                           R0 0

PROTO_134:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+14]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["__ROACT_17_MOCK_SCHEDULER__"]
        5 JUMPIF                           R1 ; [+10]
        6 GETUPVAL                         R1 2
        7 JUMPIFNOTEQKB                    R1 FALSE ; [+8]
        9 LOADB                            R1 1
       10 SETUPVAL                         R1 2
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K1 ["error"]
       14 LOADK                            R2 K2 ["act(...) is not supported in production builds of React, and might not behave as expected."]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 4
       17 GETUPVAL                         R2 4
       18 ADDK                             R2 R2 K3 [1]
       19 SETUPVAL                         R2 4
       20 GETUPVAL                         R2 5
       21 GETTABLEKS                       R2 R2 K4 ["current"]
       23 GETUPVAL                         R3 6
       24 GETTABLEKS                       R3 R3 K5 ["IsThisRendererActing"]
       26 GETTABLEKS                       R3 R3 K4 ["current"]
       28 GETUPVAL                         R4 7
       29 GETUPVAL                         R5 5
       30 LOADB                            R6 1
       31 SETTABLEKS                       R6 R5 K4 ["current"]
       33 GETUPVAL                         R5 6
       34 GETTABLEKS                       R5 R5 K5 ["IsThisRendererActing"]
       36 LOADB                            R6 1
       37 SETTABLEKS                       R6 R5 K4 ["current"]
       39 LOADB                            R5 1
       40 SETUPVAL                         R5 7
       41 NEWCLOSURE                       R5 P0
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          VAL R3
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          VAL R4
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U3
       52 GETIMPORT                        R6 K7 [xpcall]
       54 GETUPVAL                         R7 6
       55 GETTABLEKS                       R7 R7 K8 ["batchedUpdates"]
       57 GETUPVAL                         R8 8
       58 MOVE                             R9 R0
       59 CALL                             R6 3 2
       60 JUMPIF                           R6 ; [+26]
       61 GETUPVAL                         R8 4
       62 SUBK                             R8 R8 K3 [1]
       63 SETUPVAL                         R8 4
       64 GETUPVAL                         R8 5
       65 SETTABLEKS                       R2 R8 K4 ["current"]
       67 GETUPVAL                         R8 6
       68 GETTABLEKS                       R8 R8 K5 ["IsThisRendererActing"]
       70 SETTABLEKS                       R3 R8 K4 ["current"]
       72 SETUPVAL                         R4 7
       73 GETUPVAL                         R8 0
       74 JUMPIFNOT                        R8 ; [+8]
       75 GETUPVAL                         R8 4
       76 JUMPIFNOTLT                      R1 R8 ; [+6]
       78 GETUPVAL                         R8 3
       79 GETTABLEKS                       R8 R8 K1 ["error"]
       81 LOADK                            R9 K9 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       82 CALL                             R8 1 0
       83 GETIMPORT                        R8 K10 [error]
       85 MOVE                             R9 R7
       86 CALL                             R8 1 0
       87 JUMPIFEQKNIL                     R7 ; [+61]
       89 FASTCALL1                        TYPEOF R7 ; [+3]
       90 MOVE                             R9 R7
       91 GETIMPORT                        R8 K12 [typeof]
       93 CALL                             R8 1 1
       94 JUMPIFNOTEQKS                    R8 K13 ["table"] ; [+54]
       96 GETTABLEKS                       R9 R7 K14 ["andThen"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K12 [typeof]
      101 CALL                             R8 1 1
      102 JUMPIFNOTEQKS                    R8 K15 ["function"] ; [+46]
      104 LOADB                            R8 0
      105 GETUPVAL                         R9 0
      106 JUMPIFNOT                        R9 ; [+21]
      107 GETUPVAL                         R10 9
      108 FASTCALL1                        TYPEOF R10 ; [+2]
      109 GETIMPORT                        R9 K12 [typeof]
      111 CALL                             R9 1 1
      112 JUMPIFEQKNIL                     R9 ; [+15]
      114 GETUPVAL                         R9 9
      115 GETTABLEKS                       R9 R9 K16 ["resolve"]
      117 CALL                             R9 0 1
      118 DUPCLOSURE                       R11 K17 [PROTO_126]
      119 NAMECALL                         R9 R9 K14 ["andThen"]
      121 CALL                             R9 2 1
      122 NEWCLOSURE                       R11 P2
      123 CAPTURE                          REF R8
      124 CAPTURE                          UPVAL U3
      125 NAMECALL                         R9 R9 K14 ["andThen"]
      127 CALL                             R9 2 0
      128 DUPTABLE                         R9 K18 [{"andThen"}]
      129 NEWCLOSURE                       R10 P3
      130 CAPTURE                          REF R8
      131 CAPTURE                          VAL R7
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          UPVAL U10
      134 CAPTURE                          VAL R2
      135 CAPTURE                          UPVAL U5
      136 CAPTURE                          UPVAL U6
      137 CAPTURE                          VAL R3
      138 CAPTURE                          UPVAL U7
      139 CAPTURE                          VAL R4
      140 CAPTURE                          UPVAL U0
      141 CAPTURE                          VAL R1
      142 CAPTURE                          UPVAL U3
      143 CAPTURE                          UPVAL U11
      144 SETTABLEKS                       R10 R9 K14 ["andThen"]
      146 CLOSEUPVALS                      R8
      147 RETURN                           R9 1
      148 CLOSEUPVALS                      R8
      149 GETUPVAL                         R8 0
      150 JUMPIFNOT                        R8 ; [+12]
      151 JUMPIFEQKNIL                     R7 ; [+11]
      153 GETUPVAL                         R8 3
      154 GETTABLEKS                       R8 R8 K1 ["error"]
      156 LOADK                            R9 K19 ["The callback passed to act(...) function must return nil, or a Promise. You returned %s"]
      157 FASTCALL1                        TOSTRING R7 ; [+3]
      158 MOVE                             R11 R7
      159 GETIMPORT                        R10 K21 [tostring]
      161 CALL                             R10 1 1
      162 CALL                             R8 2 0
      163 GETIMPORT                        R8 K7 [xpcall]
      165 NEWCLOSURE                       R9 P4
      166 CAPTURE                          UPVAL U4
      167 CAPTURE                          UPVAL U10
      168 CAPTURE                          VAL R2
      169 CAPTURE                          UPVAL U12
      170 CAPTURE                          UPVAL U5
      171 CAPTURE                          UPVAL U6
      172 CAPTURE                          VAL R3
      173 CAPTURE                          UPVAL U7
      174 CAPTURE                          VAL R4
      175 CAPTURE                          UPVAL U0
      176 CAPTURE                          VAL R1
      177 CAPTURE                          UPVAL U3
      178 GETUPVAL                         R10 8
      179 CALL                             R8 2 2
      180 JUMPIF                           R8 ; [+26]
      181 GETUPVAL                         R10 4
      182 SUBK                             R10 R10 K3 [1]
      183 SETUPVAL                         R10 4
      184 GETUPVAL                         R10 5
      185 SETTABLEKS                       R2 R10 K4 ["current"]
      187 GETUPVAL                         R10 6
      188 GETTABLEKS                       R10 R10 K5 ["IsThisRendererActing"]
      190 SETTABLEKS                       R3 R10 K4 ["current"]
      192 SETUPVAL                         R4 7
      193 GETUPVAL                         R10 0
      194 JUMPIFNOT                        R10 ; [+8]
      195 GETUPVAL                         R10 4
      196 JUMPIFNOTLT                      R1 R10 ; [+6]
      198 GETUPVAL                         R10 3
      199 GETTABLEKS                       R10 R10 K1 ["error"]
      201 LOADK                            R11 K9 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
      202 CALL                             R10 1 0
      203 GETIMPORT                        R10 K10 [error]
      205 MOVE                             R11 R9
      206 CALL                             R10 1 0
      207 DUPTABLE                         R10 K18 [{"andThen"}]
      208 DUPCLOSURE                       R11 K22 [PROTO_133]
      209 CAPTURE                          UPVAL U0
      210 CAPTURE                          UPVAL U3
      211 SETTABLEKS                       R11 R10 K14 ["andThen"]
      213 RETURN                           R10 1

PROTO_135:
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
       27 GETUPVAL                         R1 0
       28 JUMPIFNOT                        R1 ; [+3]
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K9 ["_debugOwner"]
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K7 ["console"]
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["LuauPolyfill"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R3 K9 ["Set"]
       26 GETTABLEKS                       R5 R1 K10 ["__DEV__"]
       28 GETTABLEKS                       R6 R1 K11 ["__YOLO__"]
       30 NEWTABLE                         R7 64 0
       32 GETIMPORT                        R8 K4 [require]
       34 GETTABLEKS                       R9 R0 K6 ["Shared"]
       36 CALL                             R8 1 1
       37 GETIMPORT                        R9 K4 [require]
       39 GETIMPORT                        R10 K1 [script]
       41 GETTABLEKS                       R10 R10 K2 ["Parent"]
       43 GETTABLEKS                       R10 R10 K12 ["ReactInternalTypes"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K4 [require]
       48 GETIMPORT                        R11 K1 [script]
       50 GETTABLEKS                       R11 R11 K2 ["Parent"]
       52 GETTABLEKS                       R11 R11 K13 ["ReactFiberLane"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K4 [require]
       57 GETTABLEKS                       R12 R0 K14 ["Scheduler"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K4 [require]
       62 GETIMPORT                        R14 K1 [script]
       64 GETTABLEKS                       R14 R14 K2 ["Parent"]
       66 GETTABLEKS                       R13 R14 K15 ["ReactFiberSuspenseComponent.new"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K4 [require]
       71 GETIMPORT                        R15 K1 [script]
       73 GETTABLEKS                       R15 R15 K2 ["Parent"]
       75 GETTABLEKS                       R14 R15 K16 ["ReactFiberStack.new"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K4 [require]
       80 GETTABLEKS                       R15 R0 K6 ["Shared"]
       82 CALL                             R14 1 1
       83 GETTABLEKS                       R14 R14 K17 ["ReactFeatureFlags"]
       85 GETTABLEKS                       R15 R14 K18 ["enableDebugTracing"]
       87 GETTABLEKS                       R16 R14 K19 ["enableSchedulingProfiler"]
       89 GETTABLEKS                       R17 R14 K20 ["skipUnmountedBoundaries"]
       91 GETTABLEKS                       R18 R14 K21 ["enableDoubleInvokingEffects"]
       93 GETIMPORT                        R19 K4 [require]
       95 GETTABLEKS                       R20 R0 K6 ["Shared"]
       97 CALL                             R19 1 1
       98 GETIMPORT                        R20 K4 [require]
      100 GETTABLEKS                       R21 R0 K6 ["Shared"]
      102 CALL                             R20 1 1
      103 GETTABLEKS                       R20 R20 K22 ["describeError"]
      105 GETTABLEKS                       R21 R19 K23 ["ReactSharedInternals"]
      107 GETTABLEKS                       R22 R19 K24 ["invariant"]
      109 GETIMPORT                        R23 K4 [require]
      111 GETIMPORT                        R25 K1 [script]
      113 GETTABLEKS                       R25 R25 K2 ["Parent"]
      115 GETTABLEKS                       R24 R25 K25 ["SchedulerWithReactIntegration.new"]
      117 CALL                             R23 1 1
      118 GETTABLEKS                       R24 R23 K26 ["scheduleCallback"]
      120 GETTABLEKS                       R25 R23 K27 ["cancelCallback"]
      122 GETTABLEKS                       R26 R23 K28 ["getCurrentPriorityLevel"]
      124 GETTABLEKS                       R27 R23 K29 ["runWithPriority"]
      126 GETTABLEKS                       R28 R23 K30 ["shouldYield"]
      128 GETTABLEKS                       R29 R23 K31 ["requestPaint"]
      130 GETTABLEKS                       R30 R23 K32 ["now"]
      132 GETTABLEKS                       R31 R23 K33 ["NoPriority"]
      134 GETTABLEKS                       R32 R23 K34 ["ImmediatePriority"]
      136 GETTABLEKS                       R33 R23 K35 ["UserBlockingPriority"]
      138 GETTABLEKS                       R34 R23 K36 ["NormalPriority"]
      140 GETTABLEKS                       R35 R23 K37 ["flushSyncCallbackQueue"]
      142 GETTABLEKS                       R36 R23 K38 ["scheduleSyncCallback"]
      144 GETIMPORT                        R37 K4 [require]
      146 GETIMPORT                        R38 K1 [script]
      148 GETTABLEKS                       R38 R38 K2 ["Parent"]
      150 GETTABLEKS                       R38 R38 K39 ["DebugTracing"]
      152 CALL                             R37 1 1
      153 GETIMPORT                        R38 K4 [require]
      155 GETIMPORT                        R39 K1 [script]
      157 GETTABLEKS                       R39 R39 K2 ["Parent"]
      159 GETTABLEKS                       R39 R39 K40 ["SchedulingProfiler"]
      161 CALL                             R38 1 1
      162 GETIMPORT                        R39 K4 [require]
      164 GETTABLEKS                       R40 R0 K14 ["Scheduler"]
      166 CALL                             R39 1 1
      167 GETTABLEKS                       R39 R39 K41 ["tracing"]
      169 GETTABLEKS                       R40 R39 K42 ["__interactionsRef"]
      171 GETTABLEKS                       R41 R39 K43 ["__subscriberRef"]
      173 GETIMPORT                        R42 K4 [require]
      175 GETIMPORT                        R43 K1 [script]
      177 GETTABLEKS                       R43 R43 K2 ["Parent"]
      179 GETTABLEKS                       R43 R43 K44 ["ReactFiberHostConfig"]
      181 CALL                             R42 1 1
      182 GETIMPORT                        R43 K4 [require]
      184 GETIMPORT                        R45 K1 [script]
      186 GETTABLEKS                       R45 R45 K2 ["Parent"]
      188 GETTABLEKS                       R44 R45 K45 ["ReactFiber.new"]
      190 CALL                             R43 1 1
      191 GETIMPORT                        R44 K4 [require]
      193 GETIMPORT                        R45 K1 [script]
      195 GETTABLEKS                       R45 R45 K2 ["Parent"]
      197 GETTABLEKS                       R45 R45 K46 ["ReactTypeOfMode"]
      199 CALL                             R44 1 1
      200 GETIMPORT                        R45 K4 [require]
      202 GETIMPORT                        R46 K1 [script]
      204 GETTABLEKS                       R46 R46 K2 ["Parent"]
      206 GETTABLEKS                       R46 R46 K47 ["ReactWorkTags"]
      208 CALL                             R45 1 1
      209 GETIMPORT                        R46 K4 [require]
      211 GETIMPORT                        R47 K1 [script]
      213 GETTABLEKS                       R47 R47 K2 ["Parent"]
      215 GETTABLEKS                       R47 R47 K48 ["ReactRootTags"]
      217 CALL                             R46 1 1
      218 GETTABLEKS                       R46 R46 K49 ["LegacyRoot"]
      220 GETIMPORT                        R47 K4 [require]
      222 GETIMPORT                        R48 K1 [script]
      224 GETTABLEKS                       R48 R48 K2 ["Parent"]
      226 GETTABLEKS                       R48 R48 K50 ["ReactFiberFlags"]
      228 CALL                             R47 1 1
      229 GETTABLEKS                       R48 R10 K51 ["SyncLane"]
      231 GETTABLEKS                       R49 R10 K52 ["SyncBatchedLane"]
      233 GETTABLEKS                       R50 R10 K53 ["NoTimestamp"]
      235 GETTABLEKS                       R51 R10 K54 ["findUpdateLane"]
      237 GETTABLEKS                       R52 R10 K55 ["findTransitionLane"]
      239 GETTABLEKS                       R53 R10 K56 ["findRetryLane"]
      241 GETTABLEKS                       R54 R10 K57 ["includesSomeLane"]
      243 GETTABLEKS                       R55 R10 K58 ["isSubsetOfLanes"]
      245 GETTABLEKS                       R56 R10 K59 ["mergeLanes"]
      247 GETTABLEKS                       R57 R10 K60 ["removeLanes"]
      249 GETTABLEKS                       R58 R10 K61 ["pickArbitraryLane"]
      251 GETTABLEKS                       R59 R10 K62 ["hasDiscreteLanes"]
      253 GETTABLEKS                       R60 R10 K63 ["includesNonIdleWork"]
      255 GETTABLEKS                       R61 R10 K64 ["includesOnlyRetries"]
      257 GETTABLEKS                       R62 R10 K65 ["includesOnlyTransitions"]
      259 GETTABLEKS                       R63 R10 K66 ["getNextLanes"]
      261 GETTABLEKS                       R64 R10 K67 ["returnNextLanesPriority"]
      263 GETTABLEKS                       R65 R10 K68 ["setCurrentUpdateLanePriority"]
      265 GETTABLEKS                       R66 R10 K69 ["getCurrentUpdateLanePriority"]
      267 GETTABLEKS                       R67 R10 K70 ["markStarvedLanesAsExpired"]
      269 GETTABLEKS                       R68 R10 K71 ["getLanesToRetrySynchronouslyOnError"]
      271 GETTABLEKS                       R69 R10 K72 ["getMostRecentEventTime"]
      273 GETTABLEKS                       R70 R10 K73 ["markRootUpdated"]
      275 GETTABLEKS                       R71 R10 K74 ["markRootSuspended"]
      277 GETTABLEKS                       R72 R10 K75 ["markRootPinged"]
      279 GETTABLEKS                       R73 R10 K76 ["markRootExpired"]
      281 GETTABLEKS                       R74 R10 K77 ["markDiscreteUpdatesExpired"]
      283 GETTABLEKS                       R75 R10 K78 ["markRootFinished"]
      285 GETTABLEKS                       R76 R10 K79 ["schedulerPriorityToLanePriority"]
      287 GETTABLEKS                       R77 R10 K80 ["lanePriorityToSchedulerPriority"]
      289 GETIMPORT                        R78 K4 [require]
      291 GETIMPORT                        R79 K1 [script]
      293 GETTABLEKS                       R79 R79 K2 ["Parent"]
      295 GETTABLEKS                       R79 R79 K81 ["ReactFiberTransition"]
      297 CALL                             R78 1 1
      298 GETIMPORT                        R79 K4 [require]
      300 GETIMPORT                        R81 K1 [script]
      302 GETTABLEKS                       R81 R81 K2 ["Parent"]
      304 GETTABLEKS                       R80 R81 K82 ["ReactFiberUnwindWork.new"]
      306 CALL                             R79 1 1
      307 GETTABLEKS                       R80 R79 K83 ["unwindWork"]
      309 GETTABLEKS                       R81 R79 K84 ["unwindInterruptedWork"]
      311 GETIMPORT                        R82 K4 [require]
      313 GETIMPORT                        R84 K1 [script]
      315 GETTABLEKS                       R84 R84 K2 ["Parent"]
      317 GETTABLEKS                       R83 R84 K85 ["ReactFiberThrow.new"]
      319 CALL                             R82 1 1
      320 GETTABLEKS                       R83 R82 K86 ["throwException"]
      322 GETTABLEKS                       R84 R82 K87 ["createRootErrorUpdate"]
      324 GETTABLEKS                       R85 R82 K88 ["createClassErrorUpdate"]
      326 GETIMPORT                        R86 K4 [require]
      328 GETIMPORT                        R88 K1 [script]
      330 GETTABLEKS                       R88 R88 K2 ["Parent"]
      332 GETTABLEKS                       R87 R88 K89 ["ReactFiberCommitWork.new"]
      334 CALL                             R86 1 1
      335 GETTABLEKS                       R87 R86 K90 ["commitBeforeMutationLifeCycles"]
      337 GETTABLEKS                       R88 R86 K91 ["commitPlacement"]
      339 GETTABLEKS                       R89 R86 K92 ["commitWork"]
      341 GETTABLEKS                       R90 R86 K93 ["commitDeletion"]
      343 GETTABLEKS                       R91 R86 K94 ["commitPassiveUnmount"]
      345 GETTABLEKS                       R92 R86 K95 ["commitPassiveUnmountInsideDeletedTree"]
      347 GETTABLEKS                       R93 R86 K96 ["commitPassiveMount"]
      349 GETTABLEKS                       R94 R86 K97 ["commitDetachRef"]
      351 GETTABLEKS                       R95 R86 K98 ["invokeLayoutEffectMountInDEV"]
      353 GETTABLEKS                       R96 R86 K99 ["invokePassiveEffectMountInDEV"]
      355 GETTABLEKS                       R97 R86 K100 ["invokeLayoutEffectUnmountInDEV"]
      357 GETTABLEKS                       R98 R86 K101 ["invokePassiveEffectUnmountInDEV"]
      359 GETTABLEKS                       R99 R86 K102 ["recursivelyCommitLayoutEffects"]
      361 GETIMPORT                        R100 K4 [require]
      363 GETTABLEKS                       R101 R0 K103 ["Promise"]
      365 CALL                             R100 1 1
      366 GETIMPORT                        R101 K4 [require]
      368 GETIMPORT                        R103 K1 [script]
      370 GETTABLEKS                       R103 R103 K2 ["Parent"]
      372 GETTABLEKS                       R102 R103 K104 ["ReactUpdateQueue.new"]
      374 CALL                             R101 1 1
      375 GETTABLEKS                       R101 R101 K105 ["enqueueUpdate"]
      377 GETIMPORT                        R102 K4 [require]
      379 GETIMPORT                        R104 K1 [script]
      381 GETTABLEKS                       R104 R104 K2 ["Parent"]
      383 GETTABLEKS                       R103 R104 K106 ["ReactFiberNewContext.new"]
      385 CALL                             R102 1 1
      386 GETTABLEKS                       R102 R102 K107 ["resetContextDependencies"]
      388 GETIMPORT                        R103 K4 [require]
      390 GETIMPORT                        R104 K1 [script]
      392 GETTABLEKS                       R104 R104 K2 ["Parent"]
      394 GETTABLEKS                       R104 R104 K108 ["RobloxReactProfiling"]
      396 CALL                             R103 1 1
      397 LOADNIL                          R104
      398 DUPTABLE                         R105 K115 [{["resetHooksAfterThrowRef"] = , ["ContextOnlyDispatcherRef"] = , ["getIsUpdatingOpaqueValueInRenderPhaseInDEVRef"] = , ["originalBeginWorkRef"] = , ["completeWorkRef"] = }]
      399 DUPCLOSURE                       R106 K116 [PROTO_0]
      400 CAPTURE                          VAL R105
      401 DUPCLOSURE                       R107 K117 [PROTO_1]
      402 CAPTURE                          VAL R105
      403 LOADNIL                          R108
      404 NEWCLOSURE                       R109 P2
      405 CAPTURE                          REF R108
      406 CAPTURE                          VAL R105
      407 NEWCLOSURE                       R110 P3
      408 CAPTURE                          VAL R105
      409 CAPTURE                          REF R108
      410 NEWCLOSURE                       R111 P4
      411 CAPTURE                          VAL R105
      412 CAPTURE                          REF R108
      413 NEWCLOSURE                       R112 P5
      414 CAPTURE                          VAL R105
      415 CAPTURE                          REF R108
      416 GETIMPORT                        R113 K4 [require]
      418 GETIMPORT                        R114 K1 [script]
      420 GETTABLEKS                       R114 R114 K2 ["Parent"]
      422 GETTABLEKS                       R114 R114 K118 ["ReactCapturedValue"]
      424 CALL                             R113 1 1
      425 GETTABLEKS                       R113 R113 K119 ["createCapturedValue"]
      427 GETTABLEKS                       R114 R13 K120 ["push"]
      429 GETTABLEKS                       R115 R13 K121 ["pop"]
      431 GETTABLEKS                       R116 R13 K122 ["createCursor"]
      433 GETIMPORT                        R117 K4 [require]
      435 GETIMPORT                        R119 K1 [script]
      437 GETTABLEKS                       R119 R119 K2 ["Parent"]
      439 GETTABLEKS                       R118 R119 K123 ["ReactProfilerTimer.new"]
      441 CALL                             R117 1 1
      442 GETIMPORT                        R118 K4 [require]
      444 GETTABLEKS                       R119 R0 K6 ["Shared"]
      446 CALL                             R118 1 1
      447 GETTABLEKS                       R118 R118 K124 ["getComponentName"]
      449 GETIMPORT                        R119 K4 [require]
      451 GETIMPORT                        R121 K1 [script]
      453 GETTABLEKS                       R121 R121 K2 ["Parent"]
      455 GETTABLEKS                       R120 R121 K125 ["ReactStrictModeWarnings.new"]
      457 CALL                             R119 1 1
      458 GETIMPORT                        R120 K4 [require]
      460 GETIMPORT                        R121 K1 [script]
      462 GETTABLEKS                       R121 R121 K2 ["Parent"]
      464 GETTABLEKS                       R121 R121 K126 ["ReactCurrentFiber"]
      466 CALL                             R120 1 1
      467 GETTABLEKS                       R121 R120 K127 ["current"]
      469 GETTABLEKS                       R122 R120 K128 ["resetCurrentFiber"]
      471 GETTABLEKS                       R123 R120 K129 ["setCurrentFiber"]
      473 GETIMPORT                        R124 K4 [require]
      475 GETTABLEKS                       R125 R0 K6 ["Shared"]
      477 CALL                             R124 1 1
      478 GETTABLEKS                       R124 R124 K130 ["ReactErrorUtils"]
      480 GETTABLEKS                       R125 R124 K131 ["invokeGuardedCallback"]
      482 GETTABLEKS                       R126 R124 K132 ["hasCaughtError"]
      484 GETTABLEKS                       R127 R124 K133 ["clearCaughtError"]
      486 GETIMPORT                        R128 K4 [require]
      488 GETIMPORT                        R130 K1 [script]
      490 GETTABLEKS                       R130 R130 K2 ["Parent"]
      492 GETTABLEKS                       R129 R130 K134 ["ReactFiberDevToolsHook.new"]
      494 CALL                             R128 1 1
      495 GETTABLEKS                       R128 R128 K135 ["onCommitRoot"]
      497 GETIMPORT                        R129 K4 [require]
      499 GETIMPORT                        R130 K1 [script]
      501 GETTABLEKS                       R130 R130 K2 ["Parent"]
      503 GETTABLEKS                       R130 R130 K136 ["ReactTestSelectors"]
      505 CALL                             R129 1 1
      506 GETTABLEKS                       R129 R129 K135 ["onCommitRoot"]
      508 GETIMPORT                        R130 K4 [require]
      510 GETTABLEKS                       R131 R0 K6 ["Shared"]
      512 CALL                             R130 1 1
      513 GETTABLEKS                       R130 R130 K137 ["enqueueTask"]
      515 GETIMPORT                        R131 K4 [require]
      517 GETIMPORT                        R132 K1 [script]
      519 GETTABLEKS                       R132 R132 K2 ["Parent"]
      521 GETTABLEKS                       R132 R132 K138 ["ReactFiberTreeReflection"]
      523 CALL                             R131 1 1
      524 GETTABLEKS                       R131 R131 K139 ["doesFiberContain"]
      526 GETTABLEKS                       R132 R21 K140 ["ReactCurrentDispatcher"]
      528 GETTABLEKS                       R133 R21 K141 ["ReactCurrentOwner"]
      530 GETTABLEKS                       R134 R21 K142 ["IsSomeRendererActing"]
      532 LOADNIL                          R135
      533 LOADNIL                          R136
      534 NEWTABLE                         R137 64 0
      536 LOADN                            R138 0
      537 SETTABLEKS                       R138 R7 K143 ["NoContext"]
      539 LOADN                            R138 64
      540 SETTABLEKS                       R138 R7 K144 ["RetryAfterError"]
      542 DUPTABLE                         R138 K157 [{["Incomplete"] = 0, ["FatalErrored"] = 1, ["Errored"] = 2, ["Suspended"] = 3, ["SuspendedWithDelay"] = 4, ["Completed"] = 5}]
      543 LOADN                            R139 0
      544 LOADNIL                          R140
      545 LOADNIL                          R141
      546 GETTABLEKS                       R142 R10 K158 ["NoLanes"]
      548 GETTABLEKS                       R143 R10 K158 ["NoLanes"]
      550 SETTABLEKS                       R143 R7 K159 ["subtreeRenderLanes"]
      552 MOVE                             R143 R116
      553 GETTABLEKS                       R144 R10 K158 ["NoLanes"]
      555 CALL                             R143 1 1
      556 LOADN                            R144 0
      557 LOADNIL                          R145
      558 GETTABLEKS                       R146 R10 K158 ["NoLanes"]
      560 GETIMPORT                        R147 K4 [require]
      562 GETIMPORT                        R148 K1 [script]
      564 GETTABLEKS                       R148 R148 K2 ["Parent"]
      566 GETTABLEKS                       R148 R148 K160 ["ReactFiberWorkInProgress"]
      568 CALL                             R147 1 1
      569 GETTABLEKS                       R148 R147 K161 ["workInProgressRootSkippedLanes"]
      571 GETTABLEKS                       R149 R10 K158 ["NoLanes"]
      573 GETTABLEKS                       R150 R10 K158 ["NoLanes"]
      575 LOADNIL                          R151
      576 LOADN                            R152 0
      577 LOADK                            R153 K162 [∞]
      578 LOADNIL                          R154
      579 NEWCLOSURE                       R155 P6
      580 CAPTURE                          REF R153
      581 CAPTURE                          VAL R30
      582 NEWCLOSURE                       R156 P7
      583 CAPTURE                          REF R153
      584 SETTABLEKS                       R156 R7 K163 ["getRenderTargetTime"]
      586 LOADB                            R156 0
      587 LOADNIL                          R157
      588 LOADNIL                          R158
      589 LOADB                            R159 0
      590 LOADNIL                          R160
      591 MOVE                             R161 R31
      592 GETTABLEKS                       R162 R10 K158 ["NoLanes"]
      594 LOADNIL                          R163
      595 LOADN                            R164 0
      596 LOADNIL                          R165
      597 LOADN                            R166 0
      598 LOADNIL                          R167
      599 MOVE                             R168 R50
      600 GETTABLEKS                       R169 R10 K158 ["NoLanes"]
      602 GETTABLEKS                       R170 R10 K158 ["NoLanes"]
      604 LOADNIL                          R171
      605 LOADB                            R172 0
      606 NEWCLOSURE                       R173 P8
      607 CAPTURE                          REF R140
      608 SETTABLEKS                       R173 R7 K164 ["getWorkInProgressRoot"]
      610 NEWCLOSURE                       R173 P9
      611 CAPTURE                          REF R139
      612 CAPTURE                          VAL R30
      613 CAPTURE                          REF R168
      614 CAPTURE                          VAL R50
      615 SETTABLEKS                       R173 R7 K165 ["requestEventTime"]
      617 NEWCLOSURE                       R173 P10
      618 CAPTURE                          VAL R44
      619 CAPTURE                          VAL R48
      620 CAPTURE                          VAL R26
      621 CAPTURE                          VAL R32
      622 CAPTURE                          VAL R49
      623 CAPTURE                          VAL R14
      624 CAPTURE                          REF R139
      625 CAPTURE                          REF R142
      626 CAPTURE                          VAL R10
      627 CAPTURE                          VAL R58
      628 CAPTURE                          REF R169
      629 CAPTURE                          REF R146
      630 CAPTURE                          VAL R78
      631 CAPTURE                          REF R170
      632 CAPTURE                          REF R151
      633 CAPTURE                          VAL R52
      634 CAPTURE                          VAL R33
      635 CAPTURE                          VAL R51
      636 CAPTURE                          VAL R76
      637 CAPTURE                          VAL R66
      638 CAPTURE                          VAL R5
      639 CAPTURE                          VAL R2
      640 SETTABLEKS                       R173 R7 K166 ["requestUpdateLane"]
      642 NEWCLOSURE                       R173 P11
      643 CAPTURE                          VAL R44
      644 CAPTURE                          VAL R48
      645 CAPTURE                          VAL R26
      646 CAPTURE                          VAL R32
      647 CAPTURE                          VAL R49
      648 CAPTURE                          REF R169
      649 CAPTURE                          VAL R10
      650 CAPTURE                          REF R146
      651 CAPTURE                          VAL R53
      652 SETGLOBAL                        R173 K167 ["requestRetryLane"]
      654 NEWCLOSURE                       R173 P12
      655 CAPTURE                          VAL R137
      656 CAPTURE                          VAL R70
      657 CAPTURE                          REF R140
      658 CAPTURE                          VAL R14
      659 CAPTURE                          REF R139
      660 CAPTURE                          REF R149
      661 CAPTURE                          VAL R56
      662 CAPTURE                          REF R144
      663 CAPTURE                          REF R142
      664 CAPTURE                          VAL R26
      665 CAPTURE                          VAL R48
      666 CAPTURE                          REF R104
      667 CAPTURE                          REF R153
      668 CAPTURE                          VAL R30
      669 CAPTURE                          VAL R35
      670 CAPTURE                          VAL R33
      671 CAPTURE                          VAL R32
      672 CAPTURE                          REF R163
      673 CAPTURE                          VAL R4
      674 CAPTURE                          REF R151
      675 SETTABLEKS                       R173 R7 K168 ["scheduleUpdateOnFiber"]
      677 DUPCLOSURE                       R173 K169 [PROTO_13]
      678 CAPTURE                          VAL R56
      679 CAPTURE                          VAL R5
      680 CAPTURE                          VAL R47
      681 CAPTURE                          VAL R137
      682 CAPTURE                          VAL R45
      683 SETTABLEKS                       R173 R137 K170 ["markUpdateLaneFromFiberToRoot"]
      685 NEWCLOSURE                       R104 P14
      686 CAPTURE                          VAL R67
      687 CAPTURE                          REF R140
      688 CAPTURE                          REF R142
      689 CAPTURE                          VAL R10
      690 CAPTURE                          VAL R63
      691 CAPTURE                          VAL R64
      692 CAPTURE                          VAL R25
      693 CAPTURE                          VAL R36
      694 CAPTURE                          VAL R103
      695 CAPTURE                          VAL R137
      696 CAPTURE                          VAL R24
      697 CAPTURE                          VAL R32
      698 CAPTURE                          VAL R77
      699 NEWCLOSURE                       R173 P15
      700 CAPTURE                          REF R168
      701 CAPTURE                          VAL R50
      702 CAPTURE                          REF R169
      703 CAPTURE                          VAL R10
      704 CAPTURE                          REF R170
      705 CAPTURE                          VAL R22
      706 CAPTURE                          REF R139
      707 CAPTURE                          VAL R7
      708 CAPTURE                          VAL R63
      709 CAPTURE                          REF R140
      710 CAPTURE                          REF R142
      711 CAPTURE                          VAL R137
      712 CAPTURE                          VAL R54
      713 CAPTURE                          REF R146
      714 CAPTURE                          REF R149
      715 CAPTURE                          VAL R42
      716 CAPTURE                          VAL R68
      717 CAPTURE                          REF R145
      718 CAPTURE                          REF R104
      719 CAPTURE                          VAL R30
      720 CAPTURE                          VAL R103
      721 SETTABLEKS                       R173 R137 K171 ["performConcurrentWorkOnRoot"]
      723 LOADN                            R173 0
      724 LOADB                            R174 0
      725 NEWCLOSURE                       R175 P16
      726 CAPTURE                          VAL R5
      727 CAPTURE                          REF R173
      728 SETGLOBAL                        R175 K172 ["shouldForceFlushFallbacksInDEV"]
      730 NEWCLOSURE                       R175 P17
      731 CAPTURE                          VAL R22
      732 CAPTURE                          VAL R137
      733 CAPTURE                          VAL R61
      734 CAPTURE                          REF R152
      735 CAPTURE                          VAL R30
      736 CAPTURE                          VAL R63
      737 CAPTURE                          VAL R10
      738 CAPTURE                          VAL R55
      739 CAPTURE                          VAL R7
      740 CAPTURE                          VAL R72
      741 CAPTURE                          VAL R42
      742 CAPTURE                          VAL R62
      743 CAPTURE                          VAL R69
      744 SETTABLEKS                       R175 R137 K173 ["finishConcurrentRender"]
      746 NEWCLOSURE                       R175 P18
      747 CAPTURE                          VAL R57
      748 CAPTURE                          REF R150
      749 CAPTURE                          REF R149
      750 CAPTURE                          VAL R71
      751 SETTABLEKS                       R175 R137 K74 ["markRootSuspended"]
      753 NEWCLOSURE                       R175 P19
      754 CAPTURE                          VAL R22
      755 CAPTURE                          REF R139
      756 CAPTURE                          VAL R7
      757 CAPTURE                          REF R140
      758 CAPTURE                          VAL R54
      759 CAPTURE                          REF R142
      760 CAPTURE                          VAL R137
      761 CAPTURE                          REF R146
      762 CAPTURE                          REF R149
      763 CAPTURE                          VAL R63
      764 CAPTURE                          VAL R10
      765 CAPTURE                          VAL R46
      766 CAPTURE                          VAL R42
      767 CAPTURE                          VAL R68
      768 CAPTURE                          REF R145
      769 CAPTURE                          REF R104
      770 CAPTURE                          VAL R30
      771 SETTABLEKS                       R175 R137 K174 ["performSyncWorkOnRoot"]
      773 NEWCLOSURE                       R175 P20
      774 CAPTURE                          VAL R73
      775 CAPTURE                          REF R104
      776 CAPTURE                          VAL R30
      777 CAPTURE                          REF R139
      778 CAPTURE                          REF R153
      779 CAPTURE                          VAL R35
      780 SETTABLEKS                       R175 R7 K175 ["flushRoot"]
      782 NEWCLOSURE                       R175 P21
      783 CAPTURE                          REF R139
      784 SETTABLEKS                       R175 R7 K176 ["getExecutionContext"]
      786 NEWCLOSURE                       R175 P22
      787 CAPTURE                          REF R139
      788 CAPTURE                          VAL R5
      789 CAPTURE                          VAL R2
      790 CAPTURE                          VAL R137
      791 CAPTURE                          VAL R7
      792 SETTABLEKS                       R175 R7 K177 ["flushDiscreteUpdates"]
      794 DUPCLOSURE                       R175 K178 [PROTO_29]
      795 CAPTURE                          VAL R14
      796 CAPTURE                          VAL R66
      797 CAPTURE                          VAL R6
      798 CAPTURE                          VAL R65
      799 CAPTURE                          VAL R10
      800 CAPTURE                          VAL R27
      801 CAPTURE                          VAL R20
      802 CAPTURE                          VAL R34
      803 SETTABLEKS                       R175 R7 K179 ["deferredUpdates"]
      805 NEWCLOSURE                       R175 P24
      806 CAPTURE                          REF R163
      807 CAPTURE                          VAL R74
      808 CAPTURE                          REF R104
      809 CAPTURE                          VAL R30
      810 CAPTURE                          VAL R35
      811 SETTABLEKS                       R175 R137 K180 ["flushPendingDiscreteUpdates"]
      813 NEWCLOSURE                       R175 P25
      814 CAPTURE                          REF R139
      815 CAPTURE                          VAL R6
      816 CAPTURE                          VAL R20
      817 CAPTURE                          REF R153
      818 CAPTURE                          VAL R30
      819 CAPTURE                          VAL R35
      820 SETTABLEKS                       R175 R7 K181 ["batchedUpdates"]
      822 NEWCLOSURE                       R175 P26
      823 CAPTURE                          REF R139
      824 CAPTURE                          VAL R6
      825 CAPTURE                          VAL R20
      826 CAPTURE                          REF R153
      827 CAPTURE                          VAL R30
      828 CAPTURE                          VAL R35
      829 SETTABLEKS                       R175 R7 K182 ["batchedEventUpdates"]
      831 NEWCLOSURE                       R175 P27
      832 CAPTURE                          REF R139
      833 CAPTURE                          VAL R14
      834 CAPTURE                          VAL R66
      835 CAPTURE                          VAL R65
      836 CAPTURE                          VAL R10
      837 CAPTURE                          VAL R27
      838 CAPTURE                          VAL R20
      839 CAPTURE                          VAL R33
      840 CAPTURE                          REF R153
      841 CAPTURE                          VAL R30
      842 CAPTURE                          VAL R35
      843 SETTABLEKS                       R175 R7 K183 ["discreteUpdates"]
      845 NEWCLOSURE                       R175 P28
      846 CAPTURE                          REF R139
      847 CAPTURE                          VAL R6
      848 CAPTURE                          VAL R20
      849 CAPTURE                          REF R153
      850 CAPTURE                          VAL R30
      851 CAPTURE                          VAL R35
      852 SETTABLEKS                       R175 R7 K184 ["unbatchedUpdates"]
      854 NEWCLOSURE                       R175 P29
      855 CAPTURE                          REF R139
      856 CAPTURE                          VAL R5
      857 CAPTURE                          VAL R2
      858 CAPTURE                          VAL R14
      859 CAPTURE                          VAL R66
      860 CAPTURE                          VAL R65
      861 CAPTURE                          VAL R10
      862 CAPTURE                          VAL R6
      863 CAPTURE                          VAL R27
      864 CAPTURE                          VAL R20
      865 CAPTURE                          VAL R32
      866 CAPTURE                          VAL R35
      867 SETTABLEKS                       R175 R7 K185 ["flushSync"]
      869 NEWCLOSURE                       R175 P30
      870 CAPTURE                          REF R139
      871 CAPTURE                          VAL R14
      872 CAPTURE                          VAL R66
      873 CAPTURE                          VAL R65
      874 CAPTURE                          VAL R10
      875 CAPTURE                          VAL R27
      876 CAPTURE                          VAL R20
      877 CAPTURE                          VAL R32
      878 CAPTURE                          REF R153
      879 CAPTURE                          VAL R30
      880 CAPTURE                          VAL R35
      881 SETTABLEKS                       R175 R7 K186 ["flushControlled"]
      883 NEWCLOSURE                       R175 P31
      884 CAPTURE                          VAL R114
      885 CAPTURE                          VAL R143
      886 CAPTURE                          VAL R7
      887 CAPTURE                          VAL R56
      888 CAPTURE                          REF R146
      889 SETTABLEKS                       R175 R7 K187 ["pushRenderLanes"]
      891 DUPCLOSURE                       R175 K188 [PROTO_45]
      892 CAPTURE                          VAL R7
      893 CAPTURE                          VAL R143
      894 CAPTURE                          VAL R115
      895 SETTABLEKS                       R175 R7 K189 ["popRenderLanes"]
      897 NEWCLOSURE                       R175 P33
      898 CAPTURE                          VAL R10
      899 CAPTURE                          VAL R42
      900 CAPTURE                          REF R141
      901 CAPTURE                          VAL R81
      902 CAPTURE                          REF R140
      903 CAPTURE                          VAL R43
      904 CAPTURE                          REF R142
      905 CAPTURE                          VAL R7
      906 CAPTURE                          REF R146
      907 CAPTURE                          REF R144
      908 CAPTURE                          REF R145
      909 CAPTURE                          VAL R148
      910 CAPTURE                          REF R149
      911 CAPTURE                          REF R150
      912 CAPTURE                          VAL R14
      913 CAPTURE                          REF R167
      914 CAPTURE                          VAL R5
      915 CAPTURE                          VAL R119
      916 SETTABLEKS                       R175 R137 K190 ["prepareFreshStack"]
      918 NEWCLOSURE                       R175 P34
      919 CAPTURE                          REF R141
      920 CAPTURE                          VAL R102
      921 CAPTURE                          VAL R105
      922 CAPTURE                          REF R108
      923 CAPTURE                          VAL R122
      924 CAPTURE                          VAL R133
      925 CAPTURE                          REF R144
      926 CAPTURE                          REF R145
      927 CAPTURE                          VAL R14
      928 CAPTURE                          VAL R44
      929 CAPTURE                          VAL R117
      930 CAPTURE                          VAL R83
      931 CAPTURE                          REF R142
      932 CAPTURE                          VAL R7
      933 CAPTURE                          VAL R137
      934 SETTABLEKS                       R175 R137 K191 ["handleError"]
      936 NEWCLOSURE                       R175 P35
      937 CAPTURE                          VAL R132
      938 CAPTURE                          VAL R105
      939 CAPTURE                          REF R108
      940 SETTABLEKS                       R175 R137 K192 ["pushDispatcher"]
      942 DUPCLOSURE                       R175 K193 [PROTO_50]
      943 CAPTURE                          VAL R132
      944 SETTABLEKS                       R175 R137 K194 ["popDispatcher"]
      946 DUPCLOSURE                       R175 K195 [PROTO_51]
      947 CAPTURE                          VAL R14
      948 CAPTURE                          VAL R40
      949 SETTABLEKS                       R175 R137 K196 ["pushInteractions"]
      951 DUPCLOSURE                       R175 K197 [PROTO_52]
      952 CAPTURE                          VAL R14
      953 CAPTURE                          VAL R40
      954 SETTABLEKS                       R175 R137 K198 ["popInteractions"]
      956 NEWCLOSURE                       R175 P39
      957 CAPTURE                          REF R152
      958 CAPTURE                          VAL R30
      959 SETTABLEKS                       R175 R7 K199 ["markCommitTimeOfFallback"]
      961 DUPCLOSURE                       R175 K200 [PROTO_54]
      962 CAPTURE                          VAL R147
      963 SETTABLEKS                       R175 R7 K201 ["markSkippedUpdateLanes"]
      965 NEWCLOSURE                       R175 P41
      966 CAPTURE                          REF R144
      967 SETTABLEKS                       R175 R7 K202 ["renderDidSuspend"]
      969 NEWCLOSURE                       R175 P42
      970 CAPTURE                          REF R144
      971 CAPTURE                          REF R140
      972 CAPTURE                          VAL R60
      973 CAPTURE                          VAL R148
      974 CAPTURE                          REF R149
      975 CAPTURE                          VAL R137
      976 CAPTURE                          REF R142
      977 SETTABLEKS                       R175 R7 K203 ["renderDidSuspendDelayIfPossible"]
      979 NEWCLOSURE                       R175 P43
      980 CAPTURE                          REF R144
      981 SETTABLEKS                       R175 R7 K204 ["renderDidError"]
      983 NEWCLOSURE                       R175 P44
      984 CAPTURE                          REF R144
      985 SETTABLEKS                       R175 R7 K205 ["renderHasNotSuspendedYet"]
      987 NEWCLOSURE                       R175 P45
      988 CAPTURE                          REF R139
      989 CAPTURE                          VAL R137
      990 CAPTURE                          REF R140
      991 CAPTURE                          REF R142
      992 CAPTURE                          VAL R5
      993 CAPTURE                          VAL R15
      994 CAPTURE                          VAL R37
      995 CAPTURE                          VAL R16
      996 CAPTURE                          VAL R38
      997 CAPTURE                          VAL R6
      998 CAPTURE                          VAL R20
      999 CAPTURE                          VAL R102
     1000 CAPTURE                          VAL R14
     1001 CAPTURE                          REF R141
     1002 CAPTURE                          VAL R22
     1003 CAPTURE                          VAL R10
     1004 CAPTURE                          REF R144
     1005 SETTABLEKS                       R175 R137 K206 ["renderRootSync"]
     1007 NEWCLOSURE                       R175 P46
     1008 CAPTURE                          REF R141
     1009 CAPTURE                          VAL R137
     1010 SETTABLEKS                       R175 R137 K207 ["workLoopSync"]
     1012 NEWCLOSURE                       R175 P47
     1013 CAPTURE                          REF R139
     1014 CAPTURE                          VAL R137
     1015 CAPTURE                          REF R140
     1016 CAPTURE                          REF R142
     1017 CAPTURE                          REF R153
     1018 CAPTURE                          VAL R30
     1019 CAPTURE                          VAL R5
     1020 CAPTURE                          VAL R15
     1021 CAPTURE                          VAL R37
     1022 CAPTURE                          VAL R16
     1023 CAPTURE                          VAL R38
     1024 CAPTURE                          VAL R6
     1025 CAPTURE                          VAL R20
     1026 CAPTURE                          VAL R102
     1027 CAPTURE                          VAL R14
     1028 CAPTURE                          REF R141
     1029 CAPTURE                          VAL R10
     1030 CAPTURE                          REF R144
     1031 SETTABLEKS                       R175 R137 K208 ["renderRootConcurrent"]
     1033 NEWCLOSURE                       R175 P48
     1034 CAPTURE                          REF R141
     1035 CAPTURE                          VAL R28
     1036 CAPTURE                          VAL R137
     1037 SETTABLEKS                       R175 R137 K209 ["workLoopConcurrent"]
     1039 NEWCLOSURE                       R175 P49
     1040 CAPTURE                          VAL R103
     1041 CAPTURE                          VAL R123
     1042 CAPTURE                          VAL R14
     1043 CAPTURE                          VAL R44
     1044 CAPTURE                          VAL R117
     1045 CAPTURE                          VAL R137
     1046 CAPTURE                          VAL R7
     1047 CAPTURE                          VAL R122
     1048 CAPTURE                          REF R141
     1049 CAPTURE                          VAL R133
     1050 SETTABLEKS                       R175 R137 K210 ["performUnitOfWork"]
     1052 NEWCLOSURE                       R175 P50
     1053 CAPTURE                          VAL R47
     1054 CAPTURE                          VAL R123
     1055 CAPTURE                          VAL R14
     1056 CAPTURE                          VAL R44
     1057 CAPTURE                          VAL R7
     1058 CAPTURE                          VAL R105
     1059 CAPTURE                          VAL R117
     1060 CAPTURE                          VAL R122
     1061 CAPTURE                          REF R141
     1062 CAPTURE                          VAL R80
     1063 CAPTURE                          REF R144
     1064 SETTABLEKS                       R175 R137 K211 ["completeUnitOfWork"]
     1066 DUPCLOSURE                       R175 K212 [PROTO_66]
     1067 CAPTURE                          VAL R26
     1068 CAPTURE                          VAL R27
     1069 CAPTURE                          VAL R32
     1070 CAPTURE                          VAL R103
     1071 CAPTURE                          VAL R137
     1072 SETTABLEKS                       R175 R137 K213 ["commitRoot"]
     1074 NEWCLOSURE                       R175 P52
     1075 CAPTURE                          VAL R7
     1076 CAPTURE                          REF R160
     1077 CAPTURE                          VAL R22
     1078 CAPTURE                          REF R139
     1079 CAPTURE                          VAL R5
     1080 CAPTURE                          VAL R15
     1081 CAPTURE                          VAL R37
     1082 CAPTURE                          VAL R16
     1083 CAPTURE                          VAL R38
     1084 CAPTURE                          VAL R10
     1085 CAPTURE                          VAL R56
     1086 CAPTURE                          VAL R75
     1087 CAPTURE                          REF R163
     1088 CAPTURE                          VAL R59
     1089 CAPTURE                          REF R140
     1090 CAPTURE                          REF R141
     1091 CAPTURE                          REF R142
     1092 CAPTURE                          VAL R47
     1093 CAPTURE                          VAL R14
     1094 CAPTURE                          VAL R66
     1095 CAPTURE                          VAL R65
     1096 CAPTURE                          VAL R137
     1097 CAPTURE                          VAL R133
     1098 CAPTURE                          REF R171
     1099 CAPTURE                          VAL R42
     1100 CAPTURE                          REF R172
     1101 CAPTURE                          VAL R117
     1102 CAPTURE                          VAL R123
     1103 CAPTURE                          VAL R125
     1104 CAPTURE                          VAL R99
     1105 CAPTURE                          VAL R126
     1106 CAPTURE                          VAL R127
     1107 CAPTURE                          REF R135
     1108 CAPTURE                          VAL R122
     1109 CAPTURE                          VAL R6
     1110 CAPTURE                          VAL R20
     1111 CAPTURE                          REF R159
     1112 CAPTURE                          VAL R24
     1113 CAPTURE                          VAL R34
     1114 CAPTURE                          VAL R29
     1115 CAPTURE                          REF R162
     1116 CAPTURE                          REF R161
     1117 CAPTURE                          REF R167
     1118 CAPTURE                          REF R158
     1119 CAPTURE                          VAL R18
     1120 CAPTURE                          VAL R48
     1121 CAPTURE                          REF R165
     1122 CAPTURE                          REF R164
     1123 CAPTURE                          VAL R128
     1124 CAPTURE                          VAL R129
     1125 CAPTURE                          REF R104
     1126 CAPTURE                          VAL R30
     1127 CAPTURE                          REF R156
     1128 CAPTURE                          REF R157
     1129 CAPTURE                          VAL R35
     1130 SETTABLEKS                       R175 R137 K214 ["commitRootImpl"]
     1132 DUPCLOSURE                       R175 K215 [PROTO_69]
     1133 CAPTURE                          VAL R137
     1134 CAPTURE                          VAL R47
     1135 CAPTURE                          VAL R5
     1136 CAPTURE                          VAL R123
     1137 CAPTURE                          VAL R125
     1138 CAPTURE                          VAL R126
     1139 CAPTURE                          VAL R127
     1140 CAPTURE                          VAL R7
     1141 CAPTURE                          VAL R122
     1142 CAPTURE                          VAL R6
     1143 CAPTURE                          VAL R20
     1144 SETTABLEKS                       R175 R137 K216 ["commitBeforeMutationEffects"]
     1146 NEWCLOSURE                       R175 P54
     1147 CAPTURE                          REF R172
     1148 CAPTURE                          REF R171
     1149 CAPTURE                          VAL R45
     1150 CAPTURE                          VAL R86
     1151 CAPTURE                          VAL R131
     1152 CAPTURE                          VAL R42
     1153 CAPTURE                          VAL R47
     1154 CAPTURE                          VAL R123
     1155 CAPTURE                          VAL R87
     1156 CAPTURE                          VAL R122
     1157 CAPTURE                          REF R159
     1158 CAPTURE                          VAL R24
     1159 CAPTURE                          VAL R34
     1160 CAPTURE                          VAL R7
     1161 SETTABLEKS                       R175 R137 K217 ["commitBeforeMutationEffectsImpl"]
     1163 NEWCLOSURE                       R175 P55
     1164 CAPTURE                          VAL R131
     1165 CAPTURE                          REF R171
     1166 CAPTURE                          REF R172
     1167 CAPTURE                          VAL R42
     1168 SETTABLEKS                       R175 R137 K218 ["commitBeforeMutationEffectsDeletions"]
     1170 DUPCLOSURE                       R175 K219 [PROTO_73]
     1171 CAPTURE                          VAL R90
     1172 CAPTURE                          VAL R20
     1173 CAPTURE                          VAL R7
     1174 CAPTURE                          VAL R47
     1175 CAPTURE                          VAL R137
     1176 CAPTURE                          VAL R5
     1177 CAPTURE                          VAL R123
     1178 CAPTURE                          VAL R125
     1179 CAPTURE                          VAL R126
     1180 CAPTURE                          VAL R127
     1181 CAPTURE                          VAL R122
     1182 CAPTURE                          VAL R6
     1183 SETTABLEKS                       R175 R137 K220 ["commitMutationEffects"]
     1185 DUPCLOSURE                       R175 K221 [PROTO_74]
     1186 CAPTURE                          VAL R47
     1187 CAPTURE                          VAL R94
     1188 CAPTURE                          VAL R88
     1189 CAPTURE                          VAL R89
     1190 SETTABLEKS                       R175 R137 K222 ["commitMutationEffectsImpl"]
     1192 DUPCLOSURE                       R175 K223 [PROTO_75]
     1193 CAPTURE                          VAL R90
     1194 CAPTURE                          VAL R20
     1195 CAPTURE                          VAL R7
     1196 SETTABLEKS                       R175 R137 K224 ["commitMutationEffectsDeletions"]
     1198 NEWCLOSURE                       R175 P59
     1199 CAPTURE                          REF R159
     1200 CAPTURE                          VAL R24
     1201 CAPTURE                          VAL R34
     1202 CAPTURE                          VAL R7
     1203 SETTABLEKS                       R175 R7 K225 ["schedulePassiveEffectCallback"]
     1205 LOADNIL                          R175
     1206 NEWCLOSURE                       R176 P60
     1207 CAPTURE                          REF R161
     1208 CAPTURE                          VAL R31
     1209 CAPTURE                          VAL R34
     1210 CAPTURE                          VAL R14
     1211 CAPTURE                          VAL R66
     1212 CAPTURE                          VAL R65
     1213 CAPTURE                          VAL R76
     1214 CAPTURE                          VAL R6
     1215 CAPTURE                          VAL R27
     1216 CAPTURE                          VAL R20
     1217 CAPTURE                          REF R175
     1218 SETTABLEKS                       R176 R7 K226 ["flushPassiveEffects"]
     1220 NEWCLOSURE                       R136 P61
     1221 CAPTURE                          VAL R14
     1222 CAPTURE                          VAL R45
     1223 CAPTURE                          REF R154
     1224 CAPTURE                          VAL R47
     1225 CAPTURE                          REF R136
     1226 CAPTURE                          VAL R5
     1227 CAPTURE                          VAL R123
     1228 CAPTURE                          VAL R125
     1229 CAPTURE                          VAL R93
     1230 CAPTURE                          VAL R126
     1231 CAPTURE                          VAL R127
     1232 CAPTURE                          VAL R7
     1233 CAPTURE                          VAL R122
     1234 CAPTURE                          VAL R6
     1235 CAPTURE                          VAL R20
     1236 DUPCLOSURE                       R176 K227 [PROTO_80]
     1237 CAPTURE                          VAL R137
     1238 CAPTURE                          VAL R47
     1239 CAPTURE                          VAL R176
     1240 CAPTURE                          VAL R123
     1241 CAPTURE                          VAL R91
     1242 CAPTURE                          VAL R122
     1243 DUPCLOSURE                       R177 K228 [PROTO_81]
     1244 CAPTURE                          VAL R47
     1245 CAPTURE                          VAL R137
     1246 CAPTURE                          VAL R123
     1247 CAPTURE                          VAL R92
     1248 CAPTURE                          VAL R122
     1249 SETTABLEKS                       R177 R137 K229 ["flushPassiveUnmountEffectsInsideOfDeletedTree"]
     1251 NEWCLOSURE                       R175 P64
     1252 CAPTURE                          REF R160
     1253 CAPTURE                          REF R162
     1254 CAPTURE                          VAL R10
     1255 CAPTURE                          VAL R22
     1256 CAPTURE                          REF R139
     1257 CAPTURE                          VAL R5
     1258 CAPTURE                          VAL R15
     1259 CAPTURE                          VAL R37
     1260 CAPTURE                          VAL R16
     1261 CAPTURE                          VAL R38
     1262 CAPTURE                          VAL R137
     1263 CAPTURE                          VAL R176
     1264 CAPTURE                          REF R136
     1265 CAPTURE                          VAL R18
     1266 CAPTURE                          VAL R14
     1267 CAPTURE                          VAL R35
     1268 CAPTURE                          REF R166
     1269 NEWCLOSURE                       R177 P65
     1270 CAPTURE                          REF R158
     1271 SETTABLEKS                       R177 R7 K230 ["isAlreadyFailedLegacyErrorBoundary"]
     1273 NEWCLOSURE                       R177 P66
     1274 CAPTURE                          REF R158
     1275 CAPTURE                          VAL R4
     1276 SETTABLEKS                       R177 R7 K231 ["markLegacyErrorBoundaryAsFailed"]
     1278 NEWCLOSURE                       R177 P67
     1279 CAPTURE                          REF R156
     1280 CAPTURE                          REF R157
     1281 SETTABLEKS                       R177 R7 K232 ["onUncaughtError"]
     1283 NEWCLOSURE                       R135 P68
     1284 CAPTURE                          VAL R113
     1285 CAPTURE                          VAL R84
     1286 CAPTURE                          VAL R48
     1287 CAPTURE                          VAL R7
     1288 CAPTURE                          VAL R101
     1289 CAPTURE                          VAL R137
     1290 CAPTURE                          VAL R70
     1291 CAPTURE                          REF R104
     1292 NEWCLOSURE                       R178 P69
     1293 CAPTURE                          VAL R45
     1294 CAPTURE                          REF R135
     1295 CAPTURE                          VAL R17
     1296 CAPTURE                          VAL R7
     1297 CAPTURE                          VAL R113
     1298 CAPTURE                          VAL R85
     1299 CAPTURE                          VAL R48
     1300 CAPTURE                          VAL R101
     1301 CAPTURE                          VAL R137
     1302 CAPTURE                          VAL R70
     1303 CAPTURE                          REF R104
     1304 SETTABLEKS                       R178 R7 K233 ["captureCommitPhaseError"]
     1306 NEWCLOSURE                       R178 P70
     1307 CAPTURE                          VAL R7
     1308 CAPTURE                          VAL R72
     1309 CAPTURE                          REF R140
     1310 CAPTURE                          VAL R55
     1311 CAPTURE                          REF R142
     1312 CAPTURE                          REF R144
     1313 CAPTURE                          VAL R61
     1314 CAPTURE                          VAL R30
     1315 CAPTURE                          REF R152
     1316 CAPTURE                          VAL R137
     1317 CAPTURE                          VAL R10
     1318 CAPTURE                          REF R150
     1319 CAPTURE                          VAL R56
     1320 CAPTURE                          REF R104
     1321 SETTABLEKS                       R178 R7 K234 ["pingSuspendedRoot"]
     1323 NEWCLOSURE                       R178 P71
     1324 CAPTURE                          VAL R10
     1325 CAPTURE                          VAL R7
     1326 CAPTURE                          VAL R137
     1327 CAPTURE                          VAL R70
     1328 CAPTURE                          REF R104
     1329 SETGLOBAL                        R178 K235 ["retryTimedOutBoundary"]
     1331 DUPCLOSURE                       R178 K236 [PROTO_90]
     1332 CAPTURE                          VAL R10
     1333 SETTABLEKS                       R178 R7 K237 ["resolveRetryWakeable"]
     1335 DUPCLOSURE                       R178 K238 [PROTO_91]
     1336 SETGLOBAL                        R178 K239 ["jnd"]
     1338 NEWCLOSURE                       R178 P74
     1339 CAPTURE                          REF R164
     1340 CAPTURE                          REF R165
     1341 CAPTURE                          VAL R22
     1342 CAPTURE                          VAL R5
     1343 CAPTURE                          REF R166
     1344 CAPTURE                          VAL R2
     1345 SETTABLEKS                       R178 R137 K240 ["checkForNestedUpdates"]
     1347 DUPCLOSURE                       R178 K241 [PROTO_93]
     1348 CAPTURE                          VAL R5
     1349 CAPTURE                          VAL R119
     1350 CAPTURE                          VAL R14
     1351 SETGLOBAL                        R178 K242 ["flushRenderPhaseStrictModeWarningsInDEV"]
     1353 DUPCLOSURE                       R178 K243 [PROTO_94]
     1354 CAPTURE                          VAL R5
     1355 CAPTURE                          VAL R18
     1356 CAPTURE                          VAL R123
     1357 CAPTURE                          VAL R47
     1358 CAPTURE                          VAL R97
     1359 CAPTURE                          VAL R98
     1360 CAPTURE                          VAL R95
     1361 CAPTURE                          VAL R96
     1362 CAPTURE                          VAL R122
     1363 SETGLOBAL                        R178 K244 ["commitDoubleInvokeEffectsInDEV"]
     1365 DUPCLOSURE                       R178 K245 [PROTO_95]
     1366 CAPTURE                          VAL R5
     1367 CAPTURE                          VAL R18
     1368 CAPTURE                          VAL R47
     1369 SETGLOBAL                        R178 K246 ["invokeEffectsInDev"]
     1371 LOADNIL                          R178
     1372 NEWCLOSURE                       R179 P78
     1373 CAPTURE                          VAL R5
     1374 CAPTURE                          REF R139
     1375 CAPTURE                          VAL R44
     1376 CAPTURE                          VAL R45
     1377 CAPTURE                          VAL R118
     1378 CAPTURE                          REF R178
     1379 CAPTURE                          VAL R120
     1380 CAPTURE                          VAL R123
     1381 CAPTURE                          VAL R2
     1382 CAPTURE                          VAL R122
     1383 SETTABLEKS                       R179 R137 K247 ["warnAboutUpdateOnNotYetMountedFiberInDEV"]
     1385 JUMPIFNOT                        R5 ; [+20]
     1386 GETTABLEKS                       R179 R14 K248 ["replayFailedUnitOfWorkWithInvokeGuardedCallback"]
     1388 JUMPIFNOT                        R179 ; [+17]
     1389 NEWCLOSURE                       R179 P79
     1390 CAPTURE                          VAL R43
     1391 CAPTURE                          VAL R106
     1392 CAPTURE                          VAL R20
     1393 CAPTURE                          VAL R102
     1394 CAPTURE                          VAL R105
     1395 CAPTURE                          REF R108
     1396 CAPTURE                          VAL R81
     1397 CAPTURE                          VAL R14
     1398 CAPTURE                          VAL R44
     1399 CAPTURE                          VAL R117
     1400 CAPTURE                          VAL R125
     1401 CAPTURE                          VAL R126
     1402 CAPTURE                          VAL R127
     1403 SETTABLEKS                       R179 R137 K249 ["beginWork"]
     1405 JUMP                             ; [+2]
     1406 SETTABLEKS                       R106 R137 K249 ["beginWork"]
     1408 LOADB                            R179 0
     1409 LOADNIL                          R180
     1410 JUMPIFNOT                        R5 ; [+2]
     1411 NEWTABLE                         R180 0 0
     1413 NEWCLOSURE                       R181 P80
     1414 CAPTURE                          VAL R5
     1415 CAPTURE                          VAL R120
     1416 CAPTURE                          REF R139
     1417 CAPTURE                          VAL R105
     1418 CAPTURE                          REF R108
     1419 CAPTURE                          VAL R45
     1420 CAPTURE                          REF R141
     1421 CAPTURE                          VAL R118
     1422 CAPTURE                          REF R180
     1423 CAPTURE                          VAL R2
     1424 CAPTURE                          REF R179
     1425 SETTABLEKS                       R181 R137 K250 ["warnAboutRenderPhaseUpdatesInDEV"]
     1427 DUPTABLE                         R181 K252 [{["current"] = False}]
     1428 SETTABLEKS                       R181 R7 K253 ["IsThisRendererActing"]
     1430 DUPCLOSURE                       R181 K254 [PROTO_102]
     1431 CAPTURE                          VAL R5
     1432 CAPTURE                          VAL R42
     1433 CAPTURE                          VAL R134
     1434 CAPTURE                          VAL R7
     1435 CAPTURE                          VAL R120
     1436 CAPTURE                          VAL R123
     1437 CAPTURE                          VAL R2
     1438 CAPTURE                          VAL R122
     1439 SETTABLEKS                       R181 R7 K255 ["warnIfNotScopedWithMatchingAct"]
     1441 DUPCLOSURE                       R181 K256 [PROTO_103]
     1442 CAPTURE                          VAL R5
     1443 CAPTURE                          VAL R42
     1444 CAPTURE                          VAL R44
     1445 CAPTURE                          VAL R134
     1446 CAPTURE                          VAL R7
     1447 CAPTURE                          VAL R2
     1448 CAPTURE                          VAL R118
     1449 SETTABLEKS                       R181 R7 K257 ["warnIfNotCurrentlyActingEffectsInDEV"]
     1451 NEWCLOSURE                       R181 P83
     1452 CAPTURE                          VAL R5
     1453 CAPTURE                          VAL R42
     1454 CAPTURE                          REF R139
     1455 CAPTURE                          VAL R134
     1456 CAPTURE                          VAL R7
     1457 CAPTURE                          VAL R121
     1458 CAPTURE                          VAL R123
     1459 CAPTURE                          VAL R2
     1460 CAPTURE                          VAL R118
     1461 CAPTURE                          VAL R122
     1462 SETTABLEKS                       R181 R7 K258 ["warnIfNotCurrentlyActingUpdatesInDEV"]
     1464 LOADB                            R181 0
     1465 NEWCLOSURE                       R182 P84
     1466 CAPTURE                          VAL R5
     1467 CAPTURE                          REF R181
     1468 CAPTURE                          VAL R11
     1469 CAPTURE                          VAL R44
     1470 CAPTURE                          VAL R2
     1471 CAPTURE                          VAL R14
     1472 SETTABLEKS                       R182 R7 K259 ["warnIfUnmockedScheduler"]
     1474 DUPCLOSURE                       R182 K260 [PROTO_107]
     1475 SETGLOBAL                        R182 K261 ["computeThreadID"]
     1477 NEWCLOSURE                       R182 P86
     1478 CAPTURE                          VAL R14
     1479 CAPTURE                          REF R167
     1480 SETTABLEKS                       R182 R7 K262 ["markSpawnedWork"]
     1482 DUPCLOSURE                       R182 K263 [PROTO_110]
     1483 CAPTURE                          VAL R14
     1484 CAPTURE                          VAL R4
     1485 CAPTURE                          VAL R41
     1486 SETGLOBAL                        R182 K264 ["scheduleInteractions"]
     1488 DUPCLOSURE                       R182 K265 [PROTO_111]
     1489 CAPTURE                          VAL R14
     1490 CAPTURE                          VAL R40
     1491 SETTABLEKS                       R182 R137 K266 ["schedulePendingInteractions"]
     1493 DUPCLOSURE                       R182 K267 [PROTO_115]
     1494 CAPTURE                          VAL R14
     1495 CAPTURE                          VAL R4
     1496 CAPTURE                          VAL R54
     1497 CAPTURE                          VAL R41
     1498 CAPTURE                          VAL R20
     1499 CAPTURE                          VAL R24
     1500 CAPTURE                          VAL R32
     1501 SETTABLEKS                       R182 R137 K268 ["startWorkOnPendingInteractions"]
     1503 DUPCLOSURE                       R182 K269 [PROTO_120]
     1504 CAPTURE                          VAL R14
     1505 CAPTURE                          VAL R41
     1506 CAPTURE                          VAL R20
     1507 CAPTURE                          VAL R54
     1508 CAPTURE                          VAL R24
     1509 CAPTURE                          VAL R32
     1510 SETTABLEKS                       R182 R137 K270 ["finishPendingInteractions"]
     1512 LOADB                            R182 0
     1513 LOADB                            R183 0
     1514 GETTABLEKS                       R184 R11 K271 ["unstable_flushAllWithoutAsserting"]
     1516 FASTCALL1                        TYPEOF R184 ; [+3]
     1517 MOVE                             R187 R184
     1518 GETIMPORT                        R186 K273 [typeof]
     1520 CALL                             R186 1 1
     1521 JUMPIFEQKS                       R186 K274 ["function"] ; [+2]
     1523 LOADB                            R185 0 +1
     1524 LOADB                            R185 1
     1525 NEWCLOSURE                       R186 P91
     1526 CAPTURE                          VAL R184
     1527 CAPTURE                          REF R182
     1528 CAPTURE                          VAL R20
     1529 CAPTURE                          VAL R7
     1530 DUPCLOSURE                       R187 K275 [PROTO_124]
     1531 CAPTURE                          VAL R186
     1532 CAPTURE                          VAL R20
     1533 CAPTURE                          VAL R130
     1534 CAPTURE                          VAL R187
     1535 NEWCLOSURE                       R188 P93
     1536 CAPTURE                          VAL R5
     1537 CAPTURE                          VAL R1
     1538 CAPTURE                          REF R174
     1539 CAPTURE                          VAL R2
     1540 CAPTURE                          REF R173
     1541 CAPTURE                          VAL R134
     1542 CAPTURE                          VAL R7
     1543 CAPTURE                          REF R183
     1544 CAPTURE                          VAL R20
     1545 CAPTURE                          VAL R100
     1546 CAPTURE                          VAL R185
     1547 CAPTURE                          VAL R187
     1548 CAPTURE                          VAL R186
     1549 SETTABLEKS                       R188 R7 K276 ["act"]
     1551 DUPCLOSURE                       R188 K277 [PROTO_135]
     1552 CAPTURE                          VAL R5
     1553 SETTABLEKS                       R188 R137 K278 ["detachFiberAfterEffects"]
     1555 CLOSEUPVALS                      R104
     1556 RETURN                           R7 1
