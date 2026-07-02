PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["logEvent"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["logEvent"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 2
        6 LOADK                            R2 K1 ["ToggleMicroprofiler"]
        7 NAMECALL                         R0 R0 K2 ["Invoke"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R3 R3 K1 ["use"]
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["Plugin"]
       12 NAMECALL                         R4 R4 K1 ["use"]
       14 CALL                             R4 1 1
       15 NAMECALL                         R5 R4 K3 ["get"]
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K4 ["useContext"]
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R7 R7 K5 ["Context"]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R7 R6 K6 ["useAssetDMContext"]
       27 CALL                             R7 0 2
       28 MOVE                             R9 R7
       29 CALL                             R9 0 1
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K7 ["createElement"]
       33 LOADK                            R11 K8 ["Frame"]
       34 DUPTABLE                         R12 K13 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1}]
       35 GETIMPORT                        R13 K16 [Enum.AutomaticSize.Y]
       37 SETTABLEKS                       R13 R12 K9 ["AutomaticSize"]
       39 GETIMPORT                        R13 K19 [UDim2.fromScale]
       41 LOADN                            R14 1
       42 LOADN                            R15 0
       43 CALL                             R13 2 1
       44 SETTABLEKS                       R13 R12 K10 ["Size"]
       46 DUPTABLE                         R13 K21 [{"ThermometerWrapper"}]
       47 JUMPIF                           R1 ; [+51]
       48 GETUPVAL                         R14 0
       49 GETTABLEKS                       R14 R14 K7 ["createElement"]
       51 GETUPVAL                         R15 4
       52 DUPTABLE                         R16 K31 [{"DrawCallCount", "TriangleCount", "RenderThreadAverageMs", "TaskThreadAverageMs", "IsEditMode", "MicroprofilerVisible", "AutomaticGraphicsQuality", "OnOpenSettings", "OnToggleMicroprofiler"}]
       53 GETTABLEKS                       R18 R9 K33 ["drawCallCount"]
       55 ORK                              R17 R18 K32 [0]
       56 SETTABLEKS                       R17 R16 K22 ["DrawCallCount"]
       58 GETTABLEKS                       R18 R9 K34 ["triangleCount"]
       60 ORK                              R17 R18 K32 [0]
       61 SETTABLEKS                       R17 R16 K23 ["TriangleCount"]
       63 GETTABLEKS                       R18 R9 K35 ["renderThreadAverageMs"]
       65 ORK                              R17 R18 K32 [0]
       66 SETTABLEKS                       R17 R16 K24 ["RenderThreadAverageMs"]
       68 GETTABLEKS                       R18 R9 K36 ["taskThreadAverageMs"]
       70 ORK                              R17 R18 K32 [0]
       71 SETTABLEKS                       R17 R16 K25 ["TaskThreadAverageMs"]
       73 GETTABLEKS                       R17 R9 K37 ["isEditDM"]
       75 SETTABLEKS                       R17 R16 K26 ["IsEditMode"]
       77 GETTABLEKS                       R17 R9 K38 ["microprofilerVisible"]
       79 SETTABLEKS                       R17 R16 K27 ["MicroprofilerVisible"]
       81 GETTABLEKS                       R17 R9 K39 ["automaticGraphicsQuality"]
       83 SETTABLEKS                       R17 R16 K28 ["AutomaticGraphicsQuality"]
       85 NEWCLOSURE                       R17 P0
       86 CAPTURE                          VAL R3
       87 CAPTURE                          UPVAL U5
       88 CAPTURE                          VAL R2
       89 SETTABLEKS                       R17 R16 K29 ["OnOpenSettings"]
       91 NEWCLOSURE                       R17 P1
       92 CAPTURE                          VAL R3
       93 CAPTURE                          UPVAL U6
       94 CAPTURE                          VAL R5
       95 SETTABLEKS                       R17 R16 K30 ["OnToggleMicroprofiler"]
       97 CALL                             R14 2 1
       98 JUMPIF                           R14 ; [+1]
       99 LOADNIL                          R14
      100 SETTABLEKS                       R14 R13 K20 ["ThermometerWrapper"]
      102 CALL                             R10 3 -1
      103 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Components"]
       29 GETTABLEKS                       R5 R5 K12 ["MainThermometer"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Util"]
       38 GETTABLEKS                       R6 R6 K14 ["Telemetry"]
       40 GETTABLEKS                       R6 R6 K15 ["TelemetryContext"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K10 ["Src"]
       47 GETTABLEKS                       R7 R7 K13 ["Util"]
       49 GETTABLEKS                       R7 R7 K14 ["Telemetry"]
       51 GETTABLEKS                       R7 R7 K16 ["Events"]
       53 GETTABLEKS                       R7 R7 K17 ["OpenSettings"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R8 R0 K10 ["Src"]
       60 GETTABLEKS                       R8 R8 K13 ["Util"]
       62 GETTABLEKS                       R8 R8 K14 ["Telemetry"]
       64 GETTABLEKS                       R8 R8 K16 ["Events"]
       66 GETTABLEKS                       R8 R8 K18 ["ToggleMicroprofiler"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K5 [require]
       71 GETTABLEKS                       R9 R0 K10 ["Src"]
       73 GETTABLEKS                       R9 R9 K11 ["Components"]
       75 GETTABLEKS                       R9 R9 K19 ["Contexts"]
       77 GETTABLEKS                       R9 R9 K20 ["AssetDMDataManagerContext"]
       79 CALL                             R8 1 1
       80 DUPCLOSURE                       R9 K21 [PROTO_2]
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R7
       88 RETURN                           R9 1
