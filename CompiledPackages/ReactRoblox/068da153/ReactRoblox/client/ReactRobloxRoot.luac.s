PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R0
       10 GETUPVAL                         R5 2
       11 MOVE                             R6 R1
       12 CALL                             R3 3 1
       13 SETTABLEKS                       R3 R2 K2 ["_internalRoot"]
       15 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 CALL                             R4 3 1
       13 SETTABLEKS                       R4 R3 K2 ["_internalRoot"]
       15 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_internalRoot"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 LOADNIL                          R6
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 1
        3 LOADNIL                          R3
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 4 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_internalRoot"]
        2 GETTABLEKS                       R2 R1 K1 ["containerInfo"]
        4 GETUPVAL                         R3 0
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R2
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 3
       12 CALL                             R3 0 0
       13 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R3 0
        1 JUMPIFEQKNIL                     R2 ; [+7]
        3 GETTABLEKS                       R4 R2 K0 ["hydrate"]
        5 JUMPIFEQKB                       R4 TRUE ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 JUMPIFEQKNIL                     R2 ; [+4]
       11 GETTABLEKS                       R4 R2 K1 ["hydrationOptions"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R4
       15 JUMPIFEQKNIL                     R2 ; [+10]
       17 GETTABLEKS                       R6 R2 K1 ["hydrationOptions"]
       19 JUMPIFEQKNIL                     R6 ; [+6]
       21 GETTABLEKS                       R5 R2 K1 ["hydrationOptions"]
       23 GETTABLEKS                       R5 R5 K2 ["mutableSources"]
       25 JUMPIF                           R5 ; [+1]
       26 LOADNIL                          R5
       27 GETUPVAL                         R6 0
       28 MOVE                             R7 R0
       29 MOVE                             R8 R1
       30 MOVE                             R9 R3
       31 MOVE                             R10 R4
       32 CALL                             R6 4 1
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R8 R6 K3 ["current"]
       36 MOVE                             R9 R0
       37 CALL                             R7 2 0
       38 GETUPVAL                         R7 2
       39 JUMPIFNOT                        R7 ; [0]
       40 JUMPIFNOT                        R5 ; [0]
       41 RETURN                           R6 1

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Instance"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["Instance"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 LOADK                            R4 K3 ["createRoot(...): Target container is not a Roblox Instance."]
       11 CALL                             R2 2 0
       12 GETGLOBAL                        R2 K4 ["warnIfReactDOMContainerInDEV"]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K5 ["new"]
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["Instance"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 LOADK                            R4 K3 ["createRoot(...): Target container is not a Roblox Instance."]
       11 CALL                             R2 2 0
       12 GETGLOBAL                        R2 K4 ["warnIfReactDOMContainerInDEV"]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 0
       16 GETUPVAL                         R3 1
       17 NEWTABLE                         R5 0 0
       19 GETUPVAL                         R6 2
       20 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       22 GETIMPORT                        R4 K6 [setmetatable]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 3
       26 MOVE                             R6 R0
       27 MOVE                             R7 R3
       28 MOVE                             R8 R1
       29 CALL                             R5 3 1
       30 SETTABLEKS                       R5 R4 K7 ["_internalRoot"]
       32 MOVE                             R2 R4
       33 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 NEWTABLE                         R5 0 0
        3 GETUPVAL                         R6 1
        4 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
        6 GETIMPORT                        R4 K1 [setmetatable]
        8 CALL                             R4 2 1
        9 GETUPVAL                         R5 2
       10 MOVE                             R6 R0
       11 MOVE                             R7 R3
       12 MOVE                             R8 R1
       13 CALL                             R5 3 1
       14 SETTABLEKS                       R5 R4 K2 ["_internalRoot"]
       16 MOVE                             R2 R4
       17 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [0]
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R3 R3 K2 ["Parent"]
       15 GETTABLEKS                       R2 R3 K5 ["ReactRobloxHostTypes.roblox"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K6 ["ReactGlobals"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["ReactReconciler"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Shared"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K7 ["ReactReconciler"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETIMPORT                        R7 K1 [script]
       42 GETTABLEKS                       R7 R7 K2 ["Parent"]
       44 GETTABLEKS                       R7 R7 K9 ["ReactRobloxComponentTree"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R6 K10 ["markContainerAsRoot"]
       49 GETTABLEKS                       R8 R6 K11 ["unmarkContainerAsRoot"]
       51 GETIMPORT                        R9 K4 [require]
       53 GETIMPORT                        R11 K1 [script]
       55 GETTABLEKS                       R11 R11 K2 ["Parent"]
       57 GETTABLEKS                       R11 R11 K2 ["Parent"]
       59 GETTABLEKS                       R10 R11 K12 ["ReactReconciler.roblox"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R10 R9 K13 ["createContainer"]
       64 GETTABLEKS                       R11 R9 K14 ["updateContainer"]
       66 GETIMPORT                        R12 K4 [require]
       68 GETTABLEKS                       R13 R0 K8 ["Shared"]
       70 CALL                             R12 1 1
       71 GETTABLEKS                       R12 R12 K15 ["invariant"]
       73 GETIMPORT                        R13 K4 [require]
       75 GETTABLEKS                       R14 R0 K8 ["Shared"]
       77 CALL                             R13 1 1
       78 GETTABLEKS                       R13 R13 K16 ["ReactFeatureFlags"]
       80 GETTABLEKS                       R13 R13 K17 ["enableEagerRootListeners"]
       82 GETTABLEKS                       R14 R9 K18 ["flushSync"]
       84 GETTABLEKS                       R15 R9 K19 ["flushPassiveEffects"]
       86 GETTABLEKS                       R16 R9 K20 ["ReactRootTags"]
       88 GETTABLEKS                       R16 R16 K21 ["BlockingRoot"]
       90 GETTABLEKS                       R17 R9 K20 ["ReactRootTags"]
       92 GETTABLEKS                       R17 R17 K22 ["ConcurrentRoot"]
       94 GETTABLEKS                       R18 R9 K20 ["ReactRootTags"]
       96 GETTABLEKS                       R18 R18 K23 ["LegacyRoot"]
       98 LOADNIL                          R19
       99 NEWTABLE                         R20 4 0
      101 SETTABLEKS                       R20 R20 K24 ["__index"]
      103 NEWCLOSURE                       R21 P0
      104 CAPTURE                          VAL R20
      105 CAPTURE                          REF R19
      106 CAPTURE                          VAL R17
      107 SETTABLEKS                       R21 R20 K25 ["new"]
      109 NEWCLOSURE                       R21 P1
      110 CAPTURE                          VAL R20
      111 CAPTURE                          REF R19
      112 DUPCLOSURE                       R22 K26 [PROTO_2]
      113 CAPTURE                          VAL R11
      114 SETTABLEKS                       R22 R20 K27 ["render"]
      116 DUPCLOSURE                       R22 K28 [PROTO_5]
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R15
      121 SETTABLEKS                       R22 R20 K29 ["unmount"]
      123 DUPCLOSURE                       R19 K30 [PROTO_6]
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R13
      127 NEWTABLE                         R22 4 0
      129 DUPCLOSURE                       R23 K31 [PROTO_7]
      130 SETTABLEKS                       R23 R22 K32 ["isValidContainer"]
      132 DUPCLOSURE                       R24 K33 [PROTO_8]
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R20
      135 SETTABLEKS                       R24 R22 K34 ["createRoot"]
      137 NEWCLOSURE                       R24 P7
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R20
      141 CAPTURE                          REF R19
      142 SETTABLEKS                       R24 R22 K35 ["createBlockingRoot"]
      144 NEWCLOSURE                       R24 P8
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R20
      147 CAPTURE                          REF R19
      148 SETTABLEKS                       R24 R22 K36 ["createLegacyRoot"]
      150 DUPCLOSURE                       R24 K37 [PROTO_11]
      151 CAPTURE                          VAL R2
      152 SETGLOBAL                        R24 K38 ["warnIfReactDOMContainerInDEV"]
      154 CLOSEUPVALS                      R19
      155 RETURN                           R22 1
