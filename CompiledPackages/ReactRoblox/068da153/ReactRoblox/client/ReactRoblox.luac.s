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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Shared"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K2 ["Parent"]
       25 GETTABLEKS                       R4 R5 K7 ["ReactRobloxHostTypes.roblox"]
       27 CALL                             R3 1 1
       28 LOADNIL                          R4
       29 GETIMPORT                        R5 K4 [require]
       31 GETIMPORT                        R6 K1 [script]
       33 GETTABLEKS                       R6 R6 K2 ["Parent"]
       35 GETTABLEKS                       R6 R6 K8 ["ReactRobloxRoot"]
       37 CALL                             R5 1 1
       38 MOVE                             R4 R5
       39 GETTABLEKS                       R5 R4 K9 ["createRoot"]
       41 GETTABLEKS                       R6 R4 K10 ["createBlockingRoot"]
       43 GETTABLEKS                       R7 R4 K11 ["createLegacyRoot"]
       45 GETTABLEKS                       R8 R4 K12 ["isValidContainer"]
       47 GETIMPORT                        R9 K4 [require]
       49 GETIMPORT                        R11 K1 [script]
       51 GETTABLEKS                       R11 R11 K2 ["Parent"]
       53 GETTABLEKS                       R11 R11 K2 ["Parent"]
       55 GETTABLEKS                       R10 R11 K13 ["ReactReconciler.roblox"]
       57 CALL                             R9 1 1
       58 GETTABLEKS                       R10 R9 K14 ["batchedUpdates"]
       60 GETTABLEKS                       R11 R9 K15 ["flushSync"]
       62 GETTABLEKS                       R12 R9 K16 ["injectIntoDevTools"]
       64 GETTABLEKS                       R13 R9 K17 ["flushPassiveEffects"]
       66 GETTABLEKS                       R14 R9 K18 ["IsThisRendererActing"]
       68 GETTABLEKS                       R15 R9 K19 ["createPortal"]
       70 GETIMPORT                        R16 K4 [require]
       72 GETTABLEKS                       R17 R0 K6 ["Shared"]
       74 CALL                             R16 1 1
       75 GETTABLEKS                       R16 R16 K20 ["ReactVersion"]
       77 GETIMPORT                        R17 K4 [require]
       79 GETTABLEKS                       R18 R0 K6 ["Shared"]
       81 CALL                             R17 1 1
       82 GETTABLEKS                       R17 R17 K21 ["invariant"]
       84 GETIMPORT                        R18 K4 [require]
       86 GETTABLEKS                       R19 R0 K6 ["Shared"]
       88 CALL                             R18 1 1
       89 GETTABLEKS                       R18 R18 K22 ["ReactFeatureFlags"]
       91 GETTABLEKS                       R19 R18 K23 ["enableNewReconciler"]
       93 GETIMPORT                        R20 K4 [require]
       95 GETIMPORT                        R21 K1 [script]
       97 GETTABLEKS                       R21 R21 K2 ["Parent"]
       99 GETTABLEKS                       R21 R21 K24 ["ReactRobloxComponentTree"]
      101 CALL                             R20 1 1
      102 GETTABLEKS                       R21 R20 K25 ["getInstanceFromNode"]
      104 GETTABLEKS                       R22 R20 K26 ["getNodeFromInstance"]
      106 GETTABLEKS                       R23 R20 K27 ["getFiberCurrentPropsFromNode"]
      108 GETTABLEKS                       R24 R20 K28 ["getClosestInstanceFromNode"]
      110 GETIMPORT                        R25 K4 [require]
      112 GETTABLEKS                       R26 R0 K6 ["Shared"]
      114 CALL                             R25 1 1
      115 GETTABLEKS                       R25 R25 K29 ["Event"]
      117 GETIMPORT                        R26 K4 [require]
      119 GETTABLEKS                       R27 R0 K6 ["Shared"]
      121 CALL                             R26 1 1
      122 GETTABLEKS                       R26 R26 K30 ["Change"]
      124 GETIMPORT                        R27 K4 [require]
      126 GETTABLEKS                       R28 R0 K6 ["Shared"]
      128 CALL                             R27 1 1
      129 GETTABLEKS                       R27 R27 K31 ["Tag"]
      131 DUPCLOSURE                       R28 K32 [PROTO_0]
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R15
      135 DUPTABLE                         R29 K34 [{"Events"}]
      136 DUPTABLE                         R30 K35 [{"getInstanceFromNode", "getNodeFromInstance", "getFiberCurrentPropsFromNode", "flushPassiveEffects", "IsThisRendererActing"}]
      137 SETTABLEKS                       R21 R30 K25 ["getInstanceFromNode"]
      139 SETTABLEKS                       R22 R30 K26 ["getNodeFromInstance"]
      141 SETTABLEKS                       R23 R30 K27 ["getFiberCurrentPropsFromNode"]
      143 SETTABLEKS                       R13 R30 K17 ["flushPassiveEffects"]
      145 SETTABLEKS                       R14 R30 K18 ["IsThisRendererActing"]
      147 SETTABLEKS                       R30 R29 K33 ["Events"]
      149 DUPTABLE                         R30 K41 [{"createPortal", "unstable_batchedUpdates", "flushSync", "__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED", "version", "createRoot", "createBlockingRoot", "createLegacyRoot", "Event", "Change", "Tag", "unstable_isNewReconciler", "act"}]
      150 SETTABLEKS                       R28 R30 K19 ["createPortal"]
      152 SETTABLEKS                       R10 R30 K36 ["unstable_batchedUpdates"]
      154 SETTABLEKS                       R11 R30 K15 ["flushSync"]
      156 SETTABLEKS                       R29 R30 K37 ["__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED"]
      158 SETTABLEKS                       R16 R30 K38 ["version"]
      160 SETTABLEKS                       R5 R30 K9 ["createRoot"]
      162 SETTABLEKS                       R6 R30 K10 ["createBlockingRoot"]
      164 SETTABLEKS                       R7 R30 K11 ["createLegacyRoot"]
      166 SETTABLEKS                       R25 R30 K29 ["Event"]
      168 SETTABLEKS                       R26 R30 K30 ["Change"]
      170 SETTABLEKS                       R27 R30 K31 ["Tag"]
      172 SETTABLEKS                       R19 R30 K39 ["unstable_isNewReconciler"]
      174 DUPCLOSURE                       R31 K42 [PROTO_1]
      175 SETTABLEKS                       R31 R30 K40 ["act"]
      177 GETTABLEKS                       R31 R1 K43 ["__ROACT_17_MOCK_SCHEDULER__"]
      179 JUMPIFNOT                        R31 ; [+4]
      180 GETTABLEKS                       R31 R9 K40 ["act"]
      182 SETTABLEKS                       R31 R30 K40 ["act"]
      184 MOVE                             R31 R12
      185 DUPTABLE                         R32 K48 [{["findFiberByHostInstance"], ["bundleType"], ["version"], ["rendererPackageName"] = "ReactRoblox"}]
      186 SETTABLEKS                       R24 R32 K44 ["findFiberByHostInstance"]
      188 GETTABLEKS                       R34 R1 K49 ["__DEV__"]
      190 JUMPIFNOT                        R34 ; [+2]
      191 LOADN                            R33 1
      192 JUMP                             ; [+1]
      193 LOADN                            R33 0
      194 SETTABLEKS                       R33 R32 K45 ["bundleType"]
      196 SETTABLEKS                       R16 R32 K38 ["version"]
      198 CALL                             R31 1 1
      199 GETTABLEKS                       R32 R1 K49 ["__DEV__"]
      201 JUMPIFNOT                        R32 ; [0]
      202 GETTABLEKS                       R32 R9 K50 ["robloxReactProfiling"]
      204 SETTABLEKS                       R32 R30 K50 ["robloxReactProfiling"]
      206 GETTABLEKS                       R32 R9 K51 ["schedulingProfiler"]
      208 SETTABLEKS                       R32 R30 K51 ["schedulingProfiler"]
      210 RETURN                           R30 1
