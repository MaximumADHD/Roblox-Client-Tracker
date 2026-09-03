PROTO_0:
        0 GETIMPORT                        R1 K2 [table.create]
        2 LENGTH                           R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 DUPTABLE                         R7 K6 [{"status", "thumbnailContent", "errorMessage"}]
        9 GETTABLEKS                       R8 R6 K3 ["status"]
       11 SETTABLEKS                       R8 R7 K3 ["status"]
       13 GETTABLEKS                       R8 R6 K7 ["thumbnailTempId"]
       15 SETTABLEKS                       R8 R7 K4 ["thumbnailContent"]
       17 GETTABLEKS                       R8 R6 K5 ["errorMessage"]
       19 SETTABLEKS                       R8 R7 K5 ["errorMessage"]
       21 SETTABLE                         R7 R1 R5
       22 FORGLOOP                         R2 2 ; [-15]
       24 RETURN                           R1 1

PROTO_1:
        0 JUMPIFEQKNIL                     R1 ; [+17]
        2 LENGTH                           R2 R1
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R2 ; [+13]
        6 LOADK                            R3 K0 ["Subject: %*. Including: %*"]
        7 MOVE                             R5 R0
        8 GETIMPORT                        R6 K3 [table.concat]
       10 MOVE                             R7 R1
       11 LOADK                            R8 K4 [", "]
       12 CALL                             R6 2 1
       13 NAMECALL                         R3 R3 K5 ["format"]
       15 CALL                             R3 3 1
       16 MOVE                             R2 R3
       17 RETURN                           R2 1
       18 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ImageSelection"]
       13 GETTABLEKS                       R2 R2 K8 ["ImageSelectionController"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K7 ["ImageSelection"]
       22 GETTABLEKS                       R3 R3 K9 ["ImageSelectionPicker"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 2 0
       27 DUPCLOSURE                       R4 K10 [PROTO_0]
       28 SETTABLEKS                       R4 R3 K11 ["mapControllerSlotsToWidget"]
       30 DUPCLOSURE                       R4 K12 [PROTO_1]
       31 SETTABLEKS                       R4 R3 K13 ["combinePromptWithParts"]
       33 RETURN                           R3 1
