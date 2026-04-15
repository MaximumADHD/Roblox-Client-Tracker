PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R1
        3 CALL                             R4 1 1
        4 LOADK                            R5 K0 ["Target container is not a Roblox Instance."]
        5 CALL                             R3 2 0
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 LOADNIL                          R6
       10 MOVE                             R7 R2
       11 CALL                             R3 4 -1
       12 RETURN                           R3 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["ReactRoblox.act is only available in testing environments, not production. Enable the `__ROACT_17_MOCK_SCHEDULER__` global in your test configuration in order to use `act`."]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Shared"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K2 ["Parent"]
       20 GETTABLEKS                       R3 R4 K6 ["ReactRobloxHostTypes.roblox"]
       22 CALL                             R2 1 1
       23 LOADNIL                          R3
       24 GETIMPORT                        R4 K4 [require]
       26 GETIMPORT                        R7 K1 [script]
       28 GETTABLEKS                       R6 R7 K2 ["Parent"]
       30 GETTABLEKS                       R5 R6 K7 ["ReactRobloxRoot"]
       32 CALL                             R4 1 1
       33 MOVE                             R3 R4
       34 GETTABLEKS                       R4 R3 K8 ["createRoot"]
       36 GETTABLEKS                       R5 R3 K9 ["createBlockingRoot"]
       38 GETTABLEKS                       R6 R3 K10 ["createLegacyRoot"]
       40 GETTABLEKS                       R7 R3 K11 ["isValidContainer"]
       42 GETIMPORT                        R8 K4 [require]
       44 GETIMPORT                        R12 K1 [script]
       46 GETTABLEKS                       R11 R12 K2 ["Parent"]
       48 GETTABLEKS                       R10 R11 K2 ["Parent"]
       50 GETTABLEKS                       R9 R10 K12 ["ReactReconciler.roblox"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R8 K13 ["batchedUpdates"]
       55 GETTABLEKS                       R10 R8 K14 ["injectIntoDevTools"]
       57 GETTABLEKS                       R11 R8 K15 ["flushPassiveEffects"]
       59 GETTABLEKS                       R12 R8 K16 ["IsThisRendererActing"]
       61 GETTABLEKS                       R13 R8 K17 ["createPortal"]
       63 GETIMPORT                        R15 K4 [require]
       65 GETTABLEKS                       R16 R0 K5 ["Shared"]
       67 CALL                             R15 1 1
       68 GETTABLEKS                       R14 R15 K18 ["ReactVersion"]
       70 GETIMPORT                        R16 K4 [require]
       72 GETTABLEKS                       R17 R0 K5 ["Shared"]
       74 CALL                             R16 1 1
       75 GETTABLEKS                       R15 R16 K19 ["invariant"]
       77 GETIMPORT                        R17 K4 [require]
       79 GETTABLEKS                       R18 R0 K5 ["Shared"]
       81 CALL                             R17 1 1
       82 GETTABLEKS                       R16 R17 K20 ["ReactFeatureFlags"]
       84 GETTABLEKS                       R17 R16 K21 ["enableNewReconciler"]
       86 GETIMPORT                        R18 K4 [require]
       88 GETIMPORT                        R21 K1 [script]
       90 GETTABLEKS                       R20 R21 K2 ["Parent"]
       92 GETTABLEKS                       R19 R20 K22 ["ReactRobloxComponentTree"]
       94 CALL                             R18 1 1
       95 GETTABLEKS                       R19 R18 K23 ["getInstanceFromNode"]
       97 GETTABLEKS                       R20 R18 K24 ["getNodeFromInstance"]
       99 GETTABLEKS                       R21 R18 K25 ["getFiberCurrentPropsFromNode"]
      101 GETTABLEKS                       R22 R18 K26 ["getClosestInstanceFromNode"]
      103 GETIMPORT                        R23 K4 [require]
      105 GETIMPORT                        R28 K1 [script]
      107 GETTABLEKS                       R27 R28 K2 ["Parent"]
      109 GETTABLEKS                       R26 R27 K27 ["roblox"]
      111 GETTABLEKS                       R25 R26 K28 ["PropMarkers"]
      113 GETTABLEKS                       R24 R25 K29 ["Event"]
      115 CALL                             R23 1 1
      116 GETIMPORT                        R24 K4 [require]
      118 GETIMPORT                        R29 K1 [script]
      120 GETTABLEKS                       R28 R29 K2 ["Parent"]
      122 GETTABLEKS                       R27 R28 K27 ["roblox"]
      124 GETTABLEKS                       R26 R27 K28 ["PropMarkers"]
      126 GETTABLEKS                       R25 R26 K30 ["Change"]
      128 CALL                             R24 1 1
      129 DUPCLOSURE                       R25 K31 [PROTO_0]
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R13
      133 DUPTABLE                         R26 K33 [{"Events"}]
      134 DUPTABLE                         R27 K34 [{"getInstanceFromNode", "getNodeFromInstance", "getFiberCurrentPropsFromNode", "flushPassiveEffects", "IsThisRendererActing"}]
      135 SETTABLEKS                       R19 R27 K23 ["getInstanceFromNode"]
      137 SETTABLEKS                       R20 R27 K24 ["getNodeFromInstance"]
      139 SETTABLEKS                       R21 R27 K25 ["getFiberCurrentPropsFromNode"]
      141 SETTABLEKS                       R11 R27 K15 ["flushPassiveEffects"]
      143 SETTABLEKS                       R12 R27 K16 ["IsThisRendererActing"]
      145 SETTABLEKS                       R27 R26 K32 ["Events"]
      147 DUPTABLE                         R27 K40 [{"createPortal", "unstable_batchedUpdates", "__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED", "version", "createRoot", "createBlockingRoot", "createLegacyRoot", "Event", "Change", "unstable_isNewReconciler", "act"}]
      148 SETTABLEKS                       R25 R27 K17 ["createPortal"]
      150 SETTABLEKS                       R9 R27 K35 ["unstable_batchedUpdates"]
      152 SETTABLEKS                       R26 R27 K36 ["__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED"]
      154 SETTABLEKS                       R14 R27 K37 ["version"]
      156 SETTABLEKS                       R4 R27 K8 ["createRoot"]
      158 SETTABLEKS                       R5 R27 K9 ["createBlockingRoot"]
      160 SETTABLEKS                       R6 R27 K10 ["createLegacyRoot"]
      162 SETTABLEKS                       R23 R27 K29 ["Event"]
      164 SETTABLEKS                       R24 R27 K30 ["Change"]
      166 SETTABLEKS                       R17 R27 K38 ["unstable_isNewReconciler"]
      168 DUPCLOSURE                       R28 K41 [PROTO_1]
      169 SETTABLEKS                       R28 R27 K39 ["act"]
      171 GETIMPORT                        R29 K43 [_G]
      173 GETTABLEKS                       R28 R29 K44 ["__ROACT_17_MOCK_SCHEDULER__"]
      175 JUMPIFNOT                        R28 ; [+4]
      176 GETTABLEKS                       R28 R8 K39 ["act"]
      178 SETTABLEKS                       R28 R27 K39 ["act"]
      180 MOVE                             R28 R10
      181 DUPTABLE                         R29 K48 [{"findFiberByHostInstance", "bundleType", "version", "rendererPackageName"}]
      182 SETTABLEKS                       R22 R29 K45 ["findFiberByHostInstance"]
      184 GETIMPORT                        R32 K43 [_G]
      186 GETTABLEKS                       R31 R32 K49 ["__DEV__"]
      188 JUMPIFNOT                        R31 ; [+2]
      189 LOADN                            R30 1
      190 JUMP                             ; [+1]
      191 LOADN                            R30 0
      192 SETTABLEKS                       R30 R29 K46 ["bundleType"]
      194 SETTABLEKS                       R14 R29 K37 ["version"]
      196 LOADK                            R30 K50 ["ReactRoblox"]
      197 SETTABLEKS                       R30 R29 K47 ["rendererPackageName"]
      199 CALL                             R28 1 1
      200 GETIMPORT                        R30 K43 [_G]
      202 GETTABLEKS                       R29 R30 K49 ["__DEV__"]
      204 JUMPIFNOT                        R29 ; [0]
      205 RETURN                           R27 1
