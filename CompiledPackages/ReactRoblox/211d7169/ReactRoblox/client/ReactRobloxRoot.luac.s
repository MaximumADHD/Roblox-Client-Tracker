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
        6 LOADNIL                          R7
        7 CALL                             R3 4 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_internalRoot"]
        2 GETTABLEKS                       R2 R1 K1 ["containerInfo"]
        4 GETUPVAL                         R3 0
        5 LOADNIL                          R4
        6 MOVE                             R5 R1
        7 LOADNIL                          R6
        8 NEWCLOSURE                       R7 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 CALL                             R3 4 0
       12 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R3 0
        1 JUMPIFEQKNIL                     R2 ; [+7]
        3 GETTABLEKS                       R4 R2 K0 ["hydrate"]
        5 JUMPIFEQKB                       R4 TRUE ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 JUMPIFEQKNIL                     R2 ; [+4]
       11 GETTABLEKS                       R4 R2 K1 ["hydrationOptions"]
       13 JUMPIF                           R4 ; [+1]
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

PROTO_6:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Instance"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_7:
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

PROTO_9:
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

PROTO_10:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [0]
        5 RETURN                           R0 0

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
       20 GETTABLEKS                       R3 R0 K6 ["ReactReconciler"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Shared"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K6 ["ReactReconciler"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R6 R6 K2 ["Parent"]
       39 GETTABLEKS                       R6 R6 K8 ["ReactRobloxComponentTree"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K9 ["markContainerAsRoot"]
       44 GETTABLEKS                       R7 R5 K10 ["unmarkContainerAsRoot"]
       46 GETIMPORT                        R8 K4 [require]
       48 GETIMPORT                        R10 K1 [script]
       50 GETTABLEKS                       R10 R10 K2 ["Parent"]
       52 GETTABLEKS                       R10 R10 K2 ["Parent"]
       54 GETTABLEKS                       R9 R10 K11 ["ReactReconciler.roblox"]
       56 CALL                             R8 1 1
       57 GETTABLEKS                       R9 R8 K12 ["createContainer"]
       59 GETTABLEKS                       R10 R8 K13 ["updateContainer"]
       61 GETIMPORT                        R11 K4 [require]
       63 GETTABLEKS                       R12 R0 K7 ["Shared"]
       65 CALL                             R11 1 1
       66 GETTABLEKS                       R11 R11 K14 ["invariant"]
       68 GETIMPORT                        R12 K4 [require]
       70 GETTABLEKS                       R13 R0 K7 ["Shared"]
       72 CALL                             R12 1 1
       73 GETTABLEKS                       R12 R12 K15 ["ReactFeatureFlags"]
       75 GETTABLEKS                       R12 R12 K16 ["enableEagerRootListeners"]
       77 GETTABLEKS                       R13 R8 K17 ["ReactRootTags"]
       79 GETTABLEKS                       R13 R13 K18 ["BlockingRoot"]
       81 GETTABLEKS                       R14 R8 K17 ["ReactRootTags"]
       83 GETTABLEKS                       R14 R14 K19 ["ConcurrentRoot"]
       85 GETTABLEKS                       R15 R8 K17 ["ReactRootTags"]
       87 GETTABLEKS                       R15 R15 K20 ["LegacyRoot"]
       89 LOADNIL                          R16
       90 NEWTABLE                         R17 4 0
       92 SETTABLEKS                       R17 R17 K21 ["__index"]
       94 NEWCLOSURE                       R18 P0
       95 CAPTURE                          VAL R17
       96 CAPTURE                          REF R16
       97 CAPTURE                          VAL R14
       98 SETTABLEKS                       R18 R17 K22 ["new"]
      100 NEWCLOSURE                       R18 P1
      101 CAPTURE                          VAL R17
      102 CAPTURE                          REF R16
      103 DUPCLOSURE                       R19 K23 [PROTO_2]
      104 CAPTURE                          VAL R10
      105 SETTABLEKS                       R19 R17 K24 ["render"]
      107 DUPCLOSURE                       R19 K25 [PROTO_4]
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R7
      110 SETTABLEKS                       R19 R17 K26 ["unmount"]
      112 DUPCLOSURE                       R16 K27 [PROTO_5]
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R12
      116 NEWTABLE                         R19 4 0
      118 DUPCLOSURE                       R20 K28 [PROTO_6]
      119 SETTABLEKS                       R20 R19 K29 ["isValidContainer"]
      121 DUPCLOSURE                       R21 K30 [PROTO_7]
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R17
      124 SETTABLEKS                       R21 R19 K31 ["createRoot"]
      126 NEWCLOSURE                       R21 P7
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R17
      130 CAPTURE                          REF R16
      131 SETTABLEKS                       R21 R19 K32 ["createBlockingRoot"]
      133 NEWCLOSURE                       R21 P8
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R17
      136 CAPTURE                          REF R16
      137 SETTABLEKS                       R21 R19 K33 ["createLegacyRoot"]
      139 DUPCLOSURE                       R21 K34 [PROTO_10]
      140 SETGLOBAL                        R21 K35 ["warnIfReactDOMContainerInDEV"]
      142 CLOSEUPVALS                      R16
      143 RETURN                           R19 1
