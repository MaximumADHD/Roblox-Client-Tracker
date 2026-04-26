PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 LOADK                            R4 K3 ["%s must be a string, did you write DeveloperTools:%s() instead of DeveloperTools.%s() by mistake?"]
       10 MOVE                             R6 R0
       11 LOADK                            R7 K4 ["forPlugin"]
       12 LOADK                            R8 K4 ["forPlugin"]
       13 NAMECALL                         R4 R4 K5 ["format"]
       15 CALL                             R4 4 -1
       16 FASTCALL                         ASSERT ; [+2]
       17 GETIMPORT                        R2 K7 [assert]
       19 CALL                             R2 -1 0
       20 FASTCALL2K                       ASSERT R1 K8 ; [+5]
       22 MOVE                             R3 R1
       23 LOADK                            R4 K8 ["DeveloperTools:forPlugin() expected plugin for argument #2"]
       24 GETIMPORT                        R2 K7 [assert]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K9 ["new"]
       30 MOVE                             R3 R0
       31 MOVE                             R4 R1
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [typeof]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 LOADK                            R5 K3 ["%s must be a string, did you write DeveloperTools:%s() instead of DeveloperTools.%s() by mistake?"]
       10 MOVE                             R7 R0
       11 LOADK                            R8 K4 ["forStandalonePlugin"]
       12 LOADK                            R9 K4 ["forStandalonePlugin"]
       13 NAMECALL                         R5 R5 K5 ["format"]
       15 CALL                             R5 4 -1
       16 FASTCALL                         ASSERT ; [+2]
       17 GETIMPORT                        R3 K7 [assert]
       19 CALL                             R3 -1 0
       20 FASTCALL2K                       ASSERT R1 K8 ; [+5]
       22 MOVE                             R4 R1
       23 LOADK                            R5 K8 ["DeveloperTools:forStandalonePlugin() expected plugin for argument #2"]
       24 GETIMPORT                        R3 K7 [assert]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K9 ["new"]
       30 MOVE                             R4 R0
       31 MOVE                             R5 R1
       32 MOVE                             R6 R2
       33 CALL                             R3 3 -1
       34 RETURN                           R3 -1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 LOADK                            R4 K3 ["%s must be a string, did you write DeveloperTools:%s() instead of DeveloperTools.%s() by mistake?"]
       10 MOVE                             R6 R0
       11 LOADK                            R7 K4 ["appName"]
       12 LOADK                            R8 K4 ["appName"]
       13 NAMECALL                         R4 R4 K5 ["format"]
       15 CALL                             R4 4 -1
       16 FASTCALL                         ASSERT ; [+2]
       17 GETIMPORT                        R2 K7 [assert]
       19 CALL                             R2 -1 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K8 ["new"]
       23 MOVE                             R3 R0
       24 MOVE                             R4 R1
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 LOADK                            R4 K3 ["%s must be a string, did you write DeveloperTools:%s() instead of DeveloperTools.%s() by mistake?"]
       10 MOVE                             R6 R0
       11 LOADK                            R7 K4 ["libraryName"]
       12 LOADK                            R8 K4 ["libraryName"]
       13 NAMECALL                         R4 R4 K5 ["format"]
       15 CALL                             R4 4 -1
       16 FASTCALL                         ASSERT ; [+2]
       17 GETIMPORT                        R2 K7 [assert]
       19 CALL                             R2 -1 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K8 ["new"]
       23 MOVE                             R3 R0
       24 MOVE                             R4 R1
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Classes"]
        7 GETTABLEKS                       R1 R2 K5 ["PluginDebugInterface"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Classes"]
       16 GETTABLEKS                       R2 R3 K6 ["CoreGuiDebugInterface"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Classes"]
       25 GETTABLEKS                       R3 R4 K7 ["StandalonePluginDebugInterface"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R6 K3 [script]
       32 GETTABLEKS                       R5 R6 K4 ["Classes"]
       34 GETTABLEKS                       R4 R5 K8 ["LibraryDebugInterface"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R7 K3 [script]
       41 GETTABLEKS                       R6 R7 K4 ["Classes"]
       43 GETTABLEKS                       R5 R6 K9 ["InspectorDebugInterface"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K1 [require]
       48 GETIMPORT                        R9 K3 [script]
       50 GETTABLEKS                       R8 R9 K10 ["RoactInspector"]
       52 GETTABLEKS                       R7 R8 K4 ["Classes"]
       54 GETTABLEKS                       R6 R7 K11 ["RoactInspectorApi"]
       56 CALL                             R5 1 1
       57 DUPTABLE                         R6 K17 [{"forPlugin", "forStandalonePlugin", "forCoreGui", "forLibrary", "forInspector", "RoactInspectorApi"}]
       58 DUPCLOSURE                       R7 K18 [PROTO_0]
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R7 R6 K12 ["forPlugin"]
       62 DUPCLOSURE                       R7 K19 [PROTO_1]
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R7 R6 K13 ["forStandalonePlugin"]
       66 DUPCLOSURE                       R7 K20 [PROTO_2]
       67 CAPTURE                          VAL R1
       68 SETTABLEKS                       R7 R6 K14 ["forCoreGui"]
       70 DUPCLOSURE                       R7 K21 [PROTO_3]
       71 CAPTURE                          VAL R3
       72 SETTABLEKS                       R7 R6 K15 ["forLibrary"]
       74 DUPCLOSURE                       R7 K22 [PROTO_4]
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R7 R6 K16 ["forInspector"]
       78 SETTABLEKS                       R5 R6 K11 ["RoactInspectorApi"]
       80 RETURN                           R6 1
