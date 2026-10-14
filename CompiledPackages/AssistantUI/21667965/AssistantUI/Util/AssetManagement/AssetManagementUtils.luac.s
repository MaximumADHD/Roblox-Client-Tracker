PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETIMPORT                        R1 K2 [print]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKN                    R0 K0 [32] ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 JUMPIFNOTEQKS                    R6 K1 ["Package"] ; [+3]
       11 LOADB                            R7 1
       12 RETURN                           R7 1
       13 FORGLOOP                         R2 2 ; [-5]
       15 LOADB                            R2 0
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 CAPTURE                          VAL R1
       14 DUPCLOSURE                       R3 K8 [PROTO_1]
       15 DUPTABLE                         R4 K11 [{"isPackageAsset", "debugPrint"}]
       16 SETTABLEKS                       R3 R4 K9 ["isPackageAsset"]
       18 SETTABLEKS                       R2 R4 K10 ["debugPrint"]
       20 RETURN                           R4 1
