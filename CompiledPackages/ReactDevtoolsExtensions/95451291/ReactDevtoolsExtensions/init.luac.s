PROTO_0:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["ReactGlobals"]
        5 CALL                             R1 1 1
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K3 ["__DEV__"]
        9 ORK                              R2 R0 K4 [False]
       10 SETTABLEKS                       R2 R1 K5 ["__DEBUG__"]
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K6 ["__PROFILE__"]
       15 LOADB                            R2 1
       16 SETTABLEKS                       R2 R1 K7 ["__EXPERIMENTAL__"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K8 ["__REACT_DEVTOOLS_COMPONENT_FILTERS__"]
       22 GETIMPORT                        R2 K1 [require]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K9 ["ReactDevtoolsShared"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R4 K1 [require]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K10 ["ReactDevtoolsExtensions"]
       33 GETTABLEKS                       R5 R6 K11 ["backend"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R3 R4 K12 ["setup"]
       38 GETTABLEKS                       R5 R2 K13 ["hook"]
       40 GETTABLEKS                       R4 R5 K14 ["installHook"]
       42 GETTABLEKS                       R6 R2 K15 ["devtools"]
       44 GETTABLEKS                       R5 R6 K16 ["store"]
       46 MOVE                             R6 R4
       47 MOVE                             R7 R1
       48 CALL                             R6 1 0
       49 GETIMPORT                        R6 K1 [require]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R7 R8 K17 ["React"]
       54 CALL                             R6 1 0
       55 GETIMPORT                        R6 K1 [require]
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R7 R8 K18 ["ReactRoblox"]
       60 CALL                             R6 1 0
       61 GETTABLEKS                       R6 R1 K19 ["__REACT_DEVTOOLS_GLOBAL_HOOK__"]
       63 GETIMPORT                        R8 K1 [require]
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R9 R10 K20 ["Shared"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R7 R8 K21 ["ReactFeatureFlags"]
       71 GETTABLEKS                       R8 R7 K22 ["enableSchedulingProfiler"]
       73 JUMPIF                           R8 ; [+4]
       74 GETIMPORT                        R8 K24 [warn]
       76 LOADK                            R9 K25 ["[DeveloperTools] React was initialized before DeveloperTools. Call inspector.setupReactDevtools before requiring React to enable profiling."]
       77 CALL                             R8 1 0
       78 MOVE                             R8 R3
       79 MOVE                             R9 R6
       80 CALL                             R8 1 1
       81 DUPTABLE                         R9 K28 [{"agent", "bridge", "hook", "store"}]
       82 GETTABLEKS                       R10 R8 K26 ["agent"]
       84 SETTABLEKS                       R10 R9 K26 ["agent"]
       86 GETTABLEKS                       R10 R8 K27 ["bridge"]
       88 SETTABLEKS                       R10 R9 K27 ["bridge"]
       90 GETTABLEKS                       R10 R8 K13 ["hook"]
       92 SETTABLEKS                       R10 R9 K13 ["hook"]
       94 GETTABLEKS                       R10 R5 K29 ["new"]
       96 GETTABLEKS                       R11 R8 K27 ["bridge"]
       98 CALL                             R10 1 1
       99 SETTABLEKS                       R10 R9 K16 ["store"]
      101 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 DUPTABLE                         R1 K4 [{"setup"}]
        6 DUPCLOSURE                       R2 K5 [PROTO_0]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R1 K3 ["setup"]
       10 RETURN                           R1 1
