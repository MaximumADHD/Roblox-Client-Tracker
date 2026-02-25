PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["arguments"]
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K1 ["DisplaySuggestions"]
        4 MOVE                             R5 R1
        5 NAMECALL                         R2 R2 K2 ["DisplayContent"]
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utils"]
       13 GETTABLEKS                       R2 R3 K8 ["CliAdapter"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K10 ["GetService"]
       25 LOADK                            R4 K11 ["ChatbotUIService"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K12 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 RETURN                           R4 1
