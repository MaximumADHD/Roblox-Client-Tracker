PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+18]
        3 LOADB                            R1 1
        4 GETTABLEKS                       R2 R0 K0 ["status"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["Generating"]
        9 JUMPIFEQ                         R2 R3 ; [+10]
       11 GETTABLEKS                       R2 R0 K0 ["status"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["Materializing"]
       16 JUMPIFEQ                         R2 R3 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R4 K0 ["Gen3dMeshViewModel"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["SetItem"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R6 K0 ["Gen3dMeshIntent:"]
        1 MOVE                             R7 R1
        2 CONCAT                           R5 R6 R7
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R0 K1 ["OnInvoke"]
        6 CALL                             R3 3 1
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R3
        9 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R4 K0 ["Gen3dMeshViewModel"]
        1 NAMECALL                         R2 R0 K1 ["GetItem"]
        3 CALL                             R2 2 1
        4 JUMPIFEQKNIL                     R2 ; [+4]
        6 MOVE                             R3 R1
        7 MOVE                             R4 R2
        8 CALL                             R3 1 0
        9 LOADK                            R5 K0 ["Gen3dMeshViewModel"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R3 R0 K2 ["OnSetItem"]
       13 CALL                             R3 3 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R3
       16 RETURN                           R4 1

PROTO_6:
        0 PREPVARARGS                      2
        1 LOADK                            R5 K0 ["Gen3dMeshIntent:"]
        2 MOVE                             R6 R1
        3 CONCAT                           R4 R5 R6
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R2 R0 K1 ["Invoke"]
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dCore"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Gen3dTypes"]
       16 GETTABLEKS                       R2 R2 K9 ["Enums"]
       18 GETTABLEKS                       R2 R2 K10 ["PreviewState"]
       20 DUPTABLE                         R3 K23 [{["SetPrompt"] = "setPrompt", ["SetOptions"] = "setOptions", ["GenerateReferences"] = "generateReferences", ["SelectReference"] = "selectReference", ["Generate"] = "generate", ["Cancel"] = "cancel"}]
       21 GETIMPORT                        R4 K26 [table.freeze]
       23 DUPTABLE                         R5 K31 [{["output"] = "meshAndTexture", ["parts"] = "auto"}]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K32 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 NEWTABLE                         R6 2 0
       29 DUPCLOSURE                       R7 K33 [PROTO_1]
       30 SETTABLEKS                       R7 R6 K34 ["publish"]
       32 DUPCLOSURE                       R7 K35 [PROTO_3]
       33 SETTABLEKS                       R7 R6 K36 ["onIntent"]
       35 NEWTABLE                         R7 2 0
       37 DUPCLOSURE                       R8 K37 [PROTO_5]
       38 SETTABLEKS                       R8 R7 K38 ["subscribe"]
       40 DUPCLOSURE                       R8 K39 [PROTO_6]
       41 SETTABLEKS                       R8 R7 K40 ["sendIntent"]
       43 DUPTABLE                         R8 K48 [{["Model"], ["View"], ["Intents"], ["DEFAULT_OPTIONS"], ["isInProgress"], ["REFERENCE_COUNT"] = 3}]
       44 SETTABLEKS                       R6 R8 K41 ["Model"]
       46 SETTABLEKS                       R7 R8 K42 ["View"]
       48 SETTABLEKS                       R3 R8 K43 ["Intents"]
       50 SETTABLEKS                       R4 R8 K44 ["DEFAULT_OPTIONS"]
       52 SETTABLEKS                       R5 R8 K45 ["isInProgress"]
       54 RETURN                           R8 1
