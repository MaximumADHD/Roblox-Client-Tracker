PROTO_0:
        0 DUPTABLE                         R1 K5 [{"setStudsPerTile", "setOrganicPattern", "applyMaterial", "selectMaterial", "getMaterialProperties"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K6 ["event"]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K7 ["MaterialGen.setStudsPerTile"]
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["setStudsPerTile"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K6 ["event"]
       12 MOVE                             R3 R0
       13 LOADK                            R4 K8 ["MaterialGen.setOrganicPattern"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K1 ["setOrganicPattern"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K6 ["event"]
       20 MOVE                             R3 R0
       21 LOADK                            R4 K9 ["MaterialGen.applyMaterial"]
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K2 ["applyMaterial"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K6 ["event"]
       28 MOVE                             R3 R0
       29 LOADK                            R4 K10 ["MaterialGen.selectMaterial"]
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R1 K3 ["selectMaterial"]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K11 ["invoke"]
       36 MOVE                             R3 R0
       37 LOADK                            R4 K12 ["MaterialGen.getMaterialProperties"]
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R1 K4 ["getMaterialProperties"]
       41 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Types"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["Remote"]
       21 NEWTABLE                         R5 1 0
       23 DUPCLOSURE                       R6 K10 [PROTO_0]
       24 CAPTURE                          VAL R4
       25 SETTABLEKS                       R6 R5 K11 ["new"]
       27 RETURN                           R5 1
