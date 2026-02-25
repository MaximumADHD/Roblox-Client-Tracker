PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [setmetatable]
        8 CALL                             R1 2 0
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["GetService"]
        4 LOADK                            R3 K1 ["StreamingService"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+26]
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 MOVE                             R10 R6
       12 GETTABLEKS                       R11 R7 K2 ["Command"]
       14 GETTABLEKS                       R12 R7 K3 ["IsSequential"]
       16 GETTABLEKS                       R13 R7 K4 ["IsPublic"]
       18 NAMECALL                         R8 R2 K5 ["RegisterCommandInternal"]
       20 CALL                             R8 5 0
       21 FORGLOOP                         R3 2 ; [-11]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R3 R4 K6 ["new"]
       26 CALL                             R3 0 1
       27 SETTABLEKS                       R3 R0 K7 ["streamingServiceListener"]
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R3 R4 K8 ["register"]
       32 CALL                             R3 0 0
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R3 R4 K0 ["GetService"]
       36 LOADK                            R4 K9 ["ChatbotUIService"]
       37 CALL                             R3 1 1
       38 LOADK                            R6 K10 ["PluginConnected"]
       39 NEWTABLE                         R7 0 0
       41 NAMECALL                         R4 R3 K11 ["DisplayContent"]
       43 CALL                             R4 3 0
       44 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["GetService"]
        4 LOADK                            R3 K1 ["StreamingService"]
        5 CALL                             R2 1 1
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 MOVE                             R10 R6
       11 NAMECALL                         R8 R2 K2 ["UnregisterCommand"]
       13 CALL                             R8 2 0
       14 FORGLOOP                         R3 2 ; [-5]
       16 GETTABLEKS                       R3 R0 K3 ["streamingServiceListener"]
       18 JUMPIFNOT                        R3 ; [+8]
       19 GETTABLEKS                       R3 R0 K3 ["streamingServiceListener"]
       21 NAMECALL                         R3 R3 K4 ["destroy"]
       23 CALL                             R3 1 0
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R0 K3 ["streamingServiceListener"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R3 R4 K4 ["destroy"]
       30 CALL                             R3 0 0
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R3 R4 K4 ["destroy"]
       34 CALL                             R3 0 0
       35 GETUPVAL                         R4 4
       36 GETTABLEKS                       R3 R4 K5 ["unregister"]
       38 CALL                             R3 0 0
       39 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Commands"]
       13 GETTABLEKS                       R3 R4 K8 ["BuilderCommands"]
       15 GETTABLEKS                       R2 R3 K9 ["BuilderNameMap"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Utils"]
       24 GETTABLEKS                       R3 R4 K11 ["CliAdapter"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K7 ["Commands"]
       33 GETTABLEKS                       R4 R5 K12 ["CommandRegistry"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R7 R0 K6 ["Src"]
       40 GETTABLEKS                       R6 R7 K13 ["ContextCollectors"]
       42 GETTABLEKS                       R5 R6 K14 ["DefaultContextCollector"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R8 R0 K6 ["Src"]
       49 GETTABLEKS                       R7 R8 K15 ["Listeners"]
       51 GETTABLEKS                       R6 R7 K16 ["StreamingServiceListener"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Src"]
       58 GETTABLEKS                       R8 R9 K10 ["Utils"]
       60 GETTABLEKS                       R7 R8 K10 ["Utils"]
       62 CALL                             R6 1 1
       63 NEWTABLE                         R7 4 0
       65 SETTABLEKS                       R7 R7 K17 ["__index"]
       67 DUPCLOSURE                       R8 K18 [PROTO_0]
       68 CAPTURE                          VAL R7
       69 SETTABLEKS                       R8 R7 K19 ["new"]
       71 DUPCLOSURE                       R8 K20 [PROTO_1]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R8 R7 K21 ["init"]
       78 DUPCLOSURE                       R8 K22 [PROTO_2]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R8 R7 K23 ["destroy"]
       86 RETURN                           R7 1
