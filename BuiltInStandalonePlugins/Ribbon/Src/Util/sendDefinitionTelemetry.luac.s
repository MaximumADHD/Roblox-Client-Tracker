PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["TabControls"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 0
        8 MOVE                             R8 R5
        9 CALL                             R7 1 1
       10 GETTABLEKS                       R8 R7 K1 ["Type"]
       12 JUMPIFNOTEQKS                    R8 K2 ["Custom"] ; [+2]
       14 SETTABLE                         R6 R1 R5
       15 FORGLOOP                         R2 2 ; [-9]
       17 DUPTABLE                         R2 K4 [{"TabControls", "Layout"}]
       18 SETTABLEKS                       R1 R2 K0 ["TabControls"]
       20 GETTABLEKS                       R3 R0 K3 ["Layout"]
       22 SETTABLEKS                       R3 R2 K3 ["Layout"]
       24 GETUPVAL                         R3 1
       25 MOVE                             R5 R2
       26 NAMECALL                         R3 R3 K5 ["JSONEncode"]
       28 CALL                             R3 2 1
       29 LENGTH                           R4 R3
       30 GETUPVAL                         R5 2
       31 JUMPIFNOTLT                      R5 R4 ; [+8]
       33 LOADK                            R4 K6 ["Too long (%* chars > %* max)"]
       34 LENGTH                           R6 R3
       35 GETUPVAL                         R7 2
       36 NAMECALL                         R4 R4 K7 ["format"]
       38 CALL                             R4 3 1
       39 MOVE                             R3 R4
       40 GETUPVAL                         R4 3
       41 GETUPVAL                         R7 4
       42 GETTABLEKS                       R6 R7 K8 ["RIBBON_DEFINITION"]
       44 GETUPVAL                         R8 5
       45 GETTABLEKS                       R7 R8 K9 ["joinDeep"]
       47 GETUPVAL                         R9 4
       48 GETTABLEKS                       R8 R9 K10 ["DEFAULT_METADATA"]
       50 DUPTABLE                         R9 K12 [{"customFields"}]
       51 DUPTABLE                         R10 K16 [{"ribbonDefinition", "sessionId", "clientId"}]
       52 SETTABLEKS                       R3 R10 K13 ["ribbonDefinition"]
       54 GETUPVAL                         R11 6
       55 NAMECALL                         R11 R11 K17 ["GetSessionId"]
       57 CALL                             R11 1 1
       58 SETTABLEKS                       R11 R10 K14 ["sessionId"]
       60 GETUPVAL                         R11 6
       61 NAMECALL                         R11 R11 K18 ["GetClientId"]
       63 CALL                             R11 1 1
       64 SETTABLEKS                       R11 R10 K15 ["clientId"]
       66 SETTABLEKS                       R10 R9 K11 ["customFields"]
       68 CALL                             R7 2 -1
       69 NAMECALL                         R4 R4 K19 ["LogEvent"]
       71 CALL                             R4 -1 0
       72 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["RbxAnalyticsService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["TelemetryService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R6 R0 K12 ["Packages"]
       29 GETTABLEKS                       R5 R6 K13 ["Dash"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R8 R0 K14 ["Src"]
       36 GETTABLEKS                       R7 R8 K15 ["Resources"]
       38 GETTABLEKS                       R6 R7 K16 ["TelemetryConfigs"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K11 [require]
       43 GETTABLEKS                       R8 R0 K14 ["Src"]
       45 GETTABLEKS                       R7 R8 K17 ["Types"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETTABLEKS                       R10 R0 K14 ["Src"]
       52 GETTABLEKS                       R9 R10 K18 ["Util"]
       54 GETTABLEKS                       R8 R9 K19 ["stringToControlsIdentifier"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [game]
       59 LOADK                            R10 K20 ["RibbonDefinitionEventMaxStringLength"]
       60 LOADN                            R11 16
       61 NAMECALL                         R8 R8 K21 ["DefineFastInt"]
       63 CALL                             R8 3 1
       64 DUPCLOSURE                       R9 K22 [PROTO_0]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R2
       72 RETURN                           R9 1
