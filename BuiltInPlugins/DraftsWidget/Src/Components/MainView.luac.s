PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["DraftsServiceEnabled"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["DraftsServiceError"]
       12 JUMPIFEQKNIL                     R2 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 LOADNIL                          R5
       17 JUMPIFNOT                        R4 ; [+27]
       18 DUPTABLE                         R6 K5 [{"LoadingIndicator"}]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K6 ["createElement"]
       22 GETUPVAL                         R8 1
       23 DUPTABLE                         R9 K9 [{"Position", "AnchorPoint"}]
       24 GETIMPORT                        R10 K12 [UDim2.new]
       26 LOADK                            R11 K13 [0.5]
       27 LOADN                            R12 0
       28 LOADK                            R13 K13 [0.5]
       29 LOADN                            R14 0
       30 CALL                             R10 4 1
       31 SETTABLEKS                       R10 R9 K7 ["Position"]
       33 GETIMPORT                        R10 K15 [Vector2.new]
       35 LOADK                            R11 K13 [0.5]
       36 LOADK                            R12 K13 [0.5]
       37 CALL                             R10 2 1
       38 SETTABLEKS                       R10 R9 K8 ["AnchorPoint"]
       40 CALL                             R7 2 1
       41 SETTABLEKS                       R7 R6 K4 ["LoadingIndicator"]
       43 MOVE                             R5 R6
       44 JUMP                             ; [+23]
       45 JUMPIF                           R2 ; [+13]
       46 DUPTABLE                         R6 K17 [{"FeatureDisabledPage"}]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R7 R8 K6 ["createElement"]
       50 GETUPVAL                         R8 2
       51 DUPTABLE                         R9 K19 [{"Text"}]
       52 SETTABLEKS                       R3 R9 K18 ["Text"]
       54 CALL                             R7 2 1
       55 SETTABLEKS                       R7 R6 K16 ["FeatureDisabledPage"]
       57 MOVE                             R5 R6
       58 JUMP                             ; [+9]
       59 DUPTABLE                         R6 K21 [{"ScriptList"}]
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R7 R8 K6 ["createElement"]
       63 GETUPVAL                         R8 3
       64 CALL                             R7 1 1
       65 SETTABLEKS                       R7 R6 K20 ["ScriptList"]
       67 MOVE                             R5 R6
       68 GETUPVAL                         R7 0
       69 GETTABLEKS                       R6 R7 K6 ["createElement"]
       71 LOADK                            R7 K22 ["Frame"]
       72 DUPTABLE                         R8 K25 [{"BackgroundColor3", "Size"}]
       73 GETTABLEKS                       R9 R1 K26 ["backgroundColor"]
       75 SETTABLEKS                       R9 R8 K23 ["BackgroundColor3"]
       77 GETIMPORT                        R9 K12 [UDim2.new]
       79 LOADN                            R10 1
       80 LOADN                            R11 0
       81 LOADN                            R12 1
       82 LOADN                            R13 0
       83 CALL                             R9 4 1
       84 SETTABLEKS                       R9 R8 K24 ["Size"]
       86 MOVE                             R9 R5
       87 CALL                             R6 3 -1
       88 RETURN                           R6 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["DraftsServiceStatus"]
        2 DUPTABLE                         R3 K3 [{"DraftsServiceEnabled", "DraftsServiceError"}]
        3 GETTABLEKS                       R4 R2 K4 ["Enabled"]
        5 SETTABLEKS                       R4 R3 K1 ["DraftsServiceEnabled"]
        7 GETTABLEKS                       R4 R2 K5 ["Error"]
        9 SETTABLEKS                       R4 R3 K2 ["DraftsServiceError"]
       11 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R9 R0 K11 ["Src"]
       38 GETTABLEKS                       R8 R9 K12 ["Components"]
       40 GETTABLEKS                       R7 R8 K13 ["DraftListView"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R10 R0 K11 ["Src"]
       47 GETTABLEKS                       R9 R10 K12 ["Components"]
       49 GETTABLEKS                       R8 R9 K14 ["FeatureDisabledPage"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R3 K15 ["UI"]
       54 GETTABLEKS                       R9 R8 K16 ["LoadingIndicator"]
       56 GETTABLEKS                       R10 R1 K17 ["Component"]
       58 LOADK                            R12 K18 ["MainView"]
       59 NAMECALL                         R10 R10 K19 ["extend"]
       61 CALL                             R10 2 1
       62 DUPCLOSURE                       R11 K20 [PROTO_0]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R6
       67 SETTABLEKS                       R11 R10 K21 ["render"]
       69 MOVE                             R11 R5
       70 DUPTABLE                         R12 K23 [{"Stylizer"}]
       71 GETTABLEKS                       R13 R4 K22 ["Stylizer"]
       73 SETTABLEKS                       R13 R12 K22 ["Stylizer"]
       75 CALL                             R11 1 1
       76 MOVE                             R12 R10
       77 CALL                             R11 1 1
       78 MOVE                             R10 R11
       79 DUPCLOSURE                       R11 K24 [PROTO_1]
       80 GETTABLEKS                       R12 R2 K25 ["connect"]
       82 MOVE                             R13 R11
       83 CALL                             R12 1 1
       84 MOVE                             R13 R10
       85 CALL                             R12 1 -1
       86 RETURN                           R12 -1
