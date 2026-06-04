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
       11 GETTABLEKS                       R2 R0 K5 ["Shared"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K2 ["Parent"]
       20 GETTABLEKS                       R3 R4 K6 ["ReactRobloxHostTypes.roblox"]
       22 CALL                             R2 1 1
       23 LOADNIL                          R3
       24 GETIMPORT                        R4 K4 [require]
       26 GETIMPORT                        R5 K1 [script]
       28 GETTABLEKS                       R5 R5 K2 ["Parent"]
       30 GETTABLEKS                       R5 R5 K7 ["ReactRobloxRoot"]
       32 CALL                             R4 1 1
       33 MOVE                             R3 R4
       34 GETTABLEKS                       R4 R3 K8 ["createRoot"]
       36 GETTABLEKS                       R5 R3 K9 ["createBlockingRoot"]
       38 GETTABLEKS                       R6 R3 K10 ["createLegacyRoot"]
       40 GETTABLEKS                       R7 R3 K11 ["isValidContainer"]
       42 GETIMPORT                        R8 K4 [require]
       44 GETIMPORT                        R10 K1 [script]
       46 GETTABLEKS                       R10 R10 K2 ["Parent"]
       48 GETTABLEKS                       R10 R10 K2 ["Parent"]
       50 GETTABLEKS                       R9 R10 K12 ["ReactReconciler.roblox"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R8 K13 ["batchedUpdates"]
       55 GETTABLEKS                       R10 R8 K14 ["flushSync"]
       57 GETTABLEKS                       R11 R8 K15 ["injectIntoDevTools"]
       59 GETTABLEKS                       R12 R8 K16 ["flushPassiveEffects"]
       61 GETTABLEKS                       R13 R8 K17 ["IsThisRendererActing"]
       63 GETTABLEKS                       R14 R8 K18 ["createPortal"]
       65 GETIMPORT                        R15 K4 [require]
       67 GETTABLEKS                       R16 R0 K5 ["Shared"]
       69 CALL                             R15 1 1
       70 GETTABLEKS                       R15 R15 K19 ["ReactVersion"]
       72 GETIMPORT                        R16 K4 [require]
       74 GETTABLEKS                       R17 R0 K5 ["Shared"]
       76 CALL                             R16 1 1
       77 GETTABLEKS                       R16 R16 K20 ["invariant"]
       79 GETIMPORT                        R17 K4 [require]
       81 GETTABLEKS                       R18 R0 K5 ["Shared"]
       83 CALL                             R17 1 1
       84 GETTABLEKS                       R17 R17 K21 ["ReactFeatureFlags"]
       86 GETTABLEKS                       R18 R17 K22 ["enableNewReconciler"]
       88 GETIMPORT                        R19 K4 [require]
       90 GETIMPORT                        R20 K1 [script]
       92 GETTABLEKS                       R20 R20 K2 ["Parent"]
       94 GETTABLEKS                       R20 R20 K23 ["ReactRobloxComponentTree"]
       96 CALL                             R19 1 1
       97 GETTABLEKS                       R20 R19 K24 ["getInstanceFromNode"]
       99 GETTABLEKS                       R21 R19 K25 ["getNodeFromInstance"]
      101 GETTABLEKS                       R22 R19 K26 ["getFiberCurrentPropsFromNode"]
      103 GETTABLEKS                       R23 R19 K27 ["getClosestInstanceFromNode"]
      105 GETIMPORT                        R24 K4 [require]
      107 GETTABLEKS                       R25 R0 K5 ["Shared"]
      109 CALL                             R24 1 1
      110 GETTABLEKS                       R24 R24 K28 ["Event"]
      112 GETIMPORT                        R25 K4 [require]
      114 GETTABLEKS                       R26 R0 K5 ["Shared"]
      116 CALL                             R25 1 1
      117 GETTABLEKS                       R25 R25 K29 ["Change"]
      119 GETIMPORT                        R26 K4 [require]
      121 GETTABLEKS                       R27 R0 K5 ["Shared"]
      123 CALL                             R26 1 1
      124 GETTABLEKS                       R26 R26 K30 ["Tag"]
      126 DUPCLOSURE                       R27 K31 [PROTO_0]
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R14
      130 DUPTABLE                         R28 K33 [{"Events"}]
      131 DUPTABLE                         R29 K34 [{"getInstanceFromNode", "getNodeFromInstance", "getFiberCurrentPropsFromNode", "flushPassiveEffects", "IsThisRendererActing"}]
      132 SETTABLEKS                       R20 R29 K24 ["getInstanceFromNode"]
      134 SETTABLEKS                       R21 R29 K25 ["getNodeFromInstance"]
      136 SETTABLEKS                       R22 R29 K26 ["getFiberCurrentPropsFromNode"]
      138 SETTABLEKS                       R12 R29 K16 ["flushPassiveEffects"]
      140 SETTABLEKS                       R13 R29 K17 ["IsThisRendererActing"]
      142 SETTABLEKS                       R29 R28 K32 ["Events"]
      144 DUPTABLE                         R29 K40 [{"createPortal", "unstable_batchedUpdates", "flushSync", "__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED", "version", "createRoot", "createBlockingRoot", "createLegacyRoot", "Event", "Change", "Tag", "unstable_isNewReconciler", "act"}]
      145 SETTABLEKS                       R27 R29 K18 ["createPortal"]
      147 SETTABLEKS                       R9 R29 K35 ["unstable_batchedUpdates"]
      149 SETTABLEKS                       R10 R29 K14 ["flushSync"]
      151 SETTABLEKS                       R28 R29 K36 ["__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED"]
      153 SETTABLEKS                       R15 R29 K37 ["version"]
      155 SETTABLEKS                       R4 R29 K8 ["createRoot"]
      157 SETTABLEKS                       R5 R29 K9 ["createBlockingRoot"]
      159 SETTABLEKS                       R6 R29 K10 ["createLegacyRoot"]
      161 SETTABLEKS                       R24 R29 K28 ["Event"]
      163 SETTABLEKS                       R25 R29 K29 ["Change"]
      165 SETTABLEKS                       R26 R29 K30 ["Tag"]
      167 SETTABLEKS                       R18 R29 K38 ["unstable_isNewReconciler"]
      169 DUPCLOSURE                       R30 K41 [PROTO_1]
      170 SETTABLEKS                       R30 R29 K39 ["act"]
      172 GETIMPORT                        R30 K43 [_G]
      174 GETTABLEKS                       R30 R30 K44 ["__ROACT_17_MOCK_SCHEDULER__"]
      176 JUMPIFNOT                        R30 ; [+4]
      177 GETTABLEKS                       R30 R8 K39 ["act"]
      179 SETTABLEKS                       R30 R29 K39 ["act"]
      181 MOVE                             R30 R11
      182 DUPTABLE                         R31 K48 [{"findFiberByHostInstance", "bundleType", "version", "rendererPackageName"}]
      183 SETTABLEKS                       R23 R31 K45 ["findFiberByHostInstance"]
      185 GETIMPORT                        R33 K43 [_G]
      187 GETTABLEKS                       R33 R33 K49 ["__DEV__"]
      189 JUMPIFNOT                        R33 ; [+2]
      190 LOADN                            R32 1
      191 JUMP                             ; [+1]
      192 LOADN                            R32 0
      193 SETTABLEKS                       R32 R31 K46 ["bundleType"]
      195 SETTABLEKS                       R15 R31 K37 ["version"]
      197 LOADK                            R32 K50 ["ReactRoblox"]
      198 SETTABLEKS                       R32 R31 K47 ["rendererPackageName"]
      200 CALL                             R30 1 1
      201 GETIMPORT                        R31 K43 [_G]
      203 GETTABLEKS                       R31 R31 K49 ["__DEV__"]
      205 JUMPIFNOT                        R31 ; [0]
      206 GETTABLEKS                       R31 R8 K51 ["robloxReactProfiling"]
      208 SETTABLEKS                       R31 R29 K51 ["robloxReactProfiling"]
      210 GETTABLEKS                       R31 R8 K52 ["schedulingProfiler"]
      212 SETTABLEKS                       R31 R29 K52 ["schedulingProfiler"]
      214 RETURN                           R29 1
