PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["Localization"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 NEWTABLE                         R7 0 1
        6 DUPTABLE                         R8 K4 [{"Id", "Layout", "Schema"}]
        7 GETUPVAL                         R9 1
        8 GETTABLEKS                       R9 R9 K5 ["Clear"]
       10 SETTABLEKS                       R9 R8 K1 ["Id"]
       12 GETIMPORT                        R9 K9 [Enum.FillDirection.Vertical]
       14 SETTABLEKS                       R9 R8 K2 ["Layout"]
       16 DUPTABLE                         R9 K13 [{["Label"], ["Type"] = "Button"}]
       17 GETUPVAL                         R12 2
       18 GETTABLEKS                       R12 R12 K14 ["ClearSettings"]
       20 LOADK                            R13 K15 ["ClearButtonLabel"]
       21 NAMECALL                         R10 R4 K16 ["getText"]
       23 CALL                             R10 3 1
       24 SETTABLEKS                       R10 R9 K10 ["Label"]
       26 SETTABLEKS                       R9 R8 K3 ["Schema"]
       28 SETLIST                          R7 R8 1 [1]
       30 DUPTABLE                         R8 K20 [{"Category", "Data", "Overrides"}]
       31 GETUPVAL                         R9 3
       32 SETTABLEKS                       R9 R8 K17 ["Category"]
       34 SETTABLEKS                       R1 R8 K18 ["Data"]
       36 SETTABLEKS                       R3 R8 K19 ["Overrides"]
       38 CALL                             R5 3 -1
       39 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["ApplyById"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Category"]
       25 GETTABLEKS                       R4 R2 K11 ["ClearSettings"]
       27 GETTABLEKS                       R5 R2 K12 ["Storage"]
       29 GETTABLEKS                       R6 R3 K11 ["ClearSettings"]
       31 NEWTABLE                         R7 2 0
       33 NEWTABLE                         R8 1 0
       35 GETTABLEKS                       R9 R4 K13 ["Clear"]
       37 GETTABLEKS                       R10 R5 K14 ["LocalSession"]
       39 SETTABLE                         R10 R8 R9
       40 SETTABLEKS                       R8 R7 K12 ["Storage"]
       42 DUPCLOSURE                       R8 K15 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R6
       47 SETTABLEKS                       R8 R7 K16 ["Generator"]
       49 RETURN                           R7 1
