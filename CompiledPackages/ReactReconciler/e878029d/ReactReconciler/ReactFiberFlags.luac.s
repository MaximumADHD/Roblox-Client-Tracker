MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 LOADN                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["NoFlags"]
        6 LOADN                            R1 1
        7 SETTABLEKS                       R1 R0 K1 ["PerformedWork"]
        9 LOADN                            R1 2
       10 SETTABLEKS                       R1 R0 K2 ["Placement"]
       12 LOADN                            R1 4
       13 SETTABLEKS                       R1 R0 K3 ["Update"]
       15 LOADN                            R1 6
       16 SETTABLEKS                       R1 R0 K4 ["PlacementAndUpdate"]
       18 LOADN                            R1 8
       19 SETTABLEKS                       R1 R0 K5 ["Deletion"]
       21 LOADN                            R1 16
       22 SETTABLEKS                       R1 R0 K6 ["ContentReset"]
       24 LOADN                            R1 32
       25 SETTABLEKS                       R1 R0 K7 ["Callback"]
       27 LOADN                            R1 64
       28 SETTABLEKS                       R1 R0 K8 ["DidCapture"]
       30 LOADN                            R1 128
       31 SETTABLEKS                       R1 R0 K9 ["Ref"]
       33 LOADN                            R1 0
       34 SETTABLEKS                       R1 R0 K10 ["Snapshot"]
       36 LOADN                            R1 0
       37 SETTABLEKS                       R1 R0 K11 ["Passive"]
       39 LOADN                            R1 0
       40 SETTABLEKS                       R1 R0 K12 ["PassiveUnmountPendingDev"]
       42 LOADN                            R1 0
       43 SETTABLEKS                       R1 R0 K13 ["Hydrating"]
       45 LOADN                            R1 4
       46 SETTABLEKS                       R1 R0 K14 ["HydratingAndUpdate"]
       48 LOADN                            R1 164
       49 SETTABLEKS                       R1 R0 K15 ["LifecycleEffectMask"]
       51 LOADN                            R1 255
       52 SETTABLEKS                       R1 R0 K16 ["HostEffectMask"]
       54 LOADN                            R1 0
       55 SETTABLEKS                       R1 R0 K17 ["Incomplete"]
       57 LOADN                            R1 0
       58 SETTABLEKS                       R1 R0 K18 ["ShouldCapture"]
       60 LOADN                            R1 0
       61 SETTABLEKS                       R1 R0 K19 ["ForceUpdateForLegacySuspense"]
       63 LOADK                            R1 K20 [32768]
       64 SETTABLEKS                       R1 R0 K21 ["PassiveStatic"]
       66 LOADN                            R1 10
       67 SETTABLEKS                       R1 R0 K22 ["BeforeMutationMask"]
       69 LOADN                            R1 158
       70 SETTABLEKS                       R1 R0 K23 ["MutationMask"]
       72 LOADN                            R1 164
       73 SETTABLEKS                       R1 R0 K24 ["LayoutMask"]
       75 LOADN                            R1 8
       76 SETTABLEKS                       R1 R0 K25 ["PassiveMask"]
       78 LOADK                            R1 K20 [32768]
       79 SETTABLEKS                       R1 R0 K26 ["StaticMask"]
       81 LOADK                            R1 K27 [65536]
       82 SETTABLEKS                       R1 R0 K28 ["MountLayoutDev"]
       84 LOADK                            R1 K29 [131072]
       85 SETTABLEKS                       R1 R0 K30 ["MountPassiveDev"]
       87 RETURN                           R0 1
