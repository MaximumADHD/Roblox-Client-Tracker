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
       21 GETTABLEKS                       R6 R2 K1 ["hydrationOptions"]
       23 GETTABLEKS                       R5 R6 K2 ["mutableSources"]
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
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K5 ["new"]
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
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [0]
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETIMPORT                        R4 K1 [script]
       13 GETTABLEKS                       R3 R4 K2 ["Parent"]
       15 GETTABLEKS                       R2 R3 K5 ["ReactRobloxHostTypes.roblox"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K6 ["ReactReconciler"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Shared"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K6 ["ReactReconciler"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETIMPORT                        R8 K1 [script]
       37 GETTABLEKS                       R7 R8 K2 ["Parent"]
       39 GETTABLEKS                       R6 R7 K8 ["ReactRobloxComponentTree"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K9 ["markContainerAsRoot"]
       44 GETTABLEKS                       R7 R5 K10 ["unmarkContainerAsRoot"]
       46 GETIMPORT                        R8 K4 [require]
       48 GETIMPORT                        R12 K1 [script]
       50 GETTABLEKS                       R11 R12 K2 ["Parent"]
       52 GETTABLEKS                       R10 R11 K2 ["Parent"]
       54 GETTABLEKS                       R9 R10 K11 ["ReactReconciler.roblox"]
       56 CALL                             R8 1 1
       57 GETTABLEKS                       R9 R8 K12 ["createContainer"]
       59 GETTABLEKS                       R10 R8 K13 ["updateContainer"]
       61 GETIMPORT                        R12 K4 [require]
       63 GETTABLEKS                       R13 R0 K7 ["Shared"]
       65 CALL                             R12 1 1
       66 GETTABLEKS                       R11 R12 K14 ["invariant"]
       68 GETIMPORT                        R14 K4 [require]
       70 GETTABLEKS                       R15 R0 K7 ["Shared"]
       72 CALL                             R14 1 1
       73 GETTABLEKS                       R13 R14 K15 ["ReactFeatureFlags"]
       75 GETTABLEKS                       R12 R13 K16 ["enableEagerRootListeners"]
       77 GETTABLEKS                       R13 R8 K17 ["flushSync"]
       79 GETTABLEKS                       R14 R8 K18 ["flushPassiveEffects"]
       81 GETTABLEKS                       R16 R8 K19 ["ReactRootTags"]
       83 GETTABLEKS                       R15 R16 K20 ["BlockingRoot"]
       85 GETTABLEKS                       R17 R8 K19 ["ReactRootTags"]
       87 GETTABLEKS                       R16 R17 K21 ["ConcurrentRoot"]
       89 GETTABLEKS                       R18 R8 K19 ["ReactRootTags"]
       91 GETTABLEKS                       R17 R18 K22 ["LegacyRoot"]
       93 LOADNIL                          R18
       94 NEWTABLE                         R19 4 0
       96 SETTABLEKS                       R19 R19 K23 ["__index"]
       98 NEWCLOSURE                       R20 P0
       99 CAPTURE                          VAL R19
      100 CAPTURE                          REF R18
      101 CAPTURE                          VAL R16
      102 SETTABLEKS                       R20 R19 K24 ["new"]
      104 NEWCLOSURE                       R20 P1
      105 CAPTURE                          VAL R19
      106 CAPTURE                          REF R18
      107 DUPCLOSURE                       R21 K25 [PROTO_2]
      108 CAPTURE                          VAL R10
      109 SETTABLEKS                       R21 R19 K26 ["render"]
      111 DUPCLOSURE                       R21 K27 [PROTO_5]
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R14
      116 SETTABLEKS                       R21 R19 K28 ["unmount"]
      118 DUPCLOSURE                       R18 K29 [PROTO_6]
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R12
      122 NEWTABLE                         R21 4 0
      124 DUPCLOSURE                       R22 K30 [PROTO_7]
      125 SETTABLEKS                       R22 R21 K31 ["isValidContainer"]
      127 DUPCLOSURE                       R23 K32 [PROTO_8]
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R19
      130 SETTABLEKS                       R23 R21 K33 ["createRoot"]
      132 NEWCLOSURE                       R23 P7
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R19
      136 CAPTURE                          REF R18
      137 SETTABLEKS                       R23 R21 K34 ["createBlockingRoot"]
      139 NEWCLOSURE                       R23 P8
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R19
      142 CAPTURE                          REF R18
      143 SETTABLEKS                       R23 R21 K35 ["createLegacyRoot"]
      145 DUPCLOSURE                       R23 K36 [PROTO_11]
      146 SETGLOBAL                        R23 K37 ["warnIfReactDOMContainerInDEV"]
      148 CLOSEUPVALS                      R18
      149 RETURN                           R21 1
