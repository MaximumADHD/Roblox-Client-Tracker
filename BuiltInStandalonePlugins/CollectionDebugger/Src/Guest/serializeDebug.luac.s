PROTO_0:
        0 DUPTABLE                         R1 K5 [{"Runtime", "FunctionName", "LineNumber", "ScriptName", "Enabled"}]
        1 GETTABLEKS                       R2 R0 K0 ["Runtime"]
        3 SETTABLEKS                       R2 R1 K0 ["Runtime"]
        5 GETTABLEKS                       R2 R0 K1 ["FunctionName"]
        7 SETTABLEKS                       R2 R1 K1 ["FunctionName"]
        9 GETTABLEKS                       R2 R0 K2 ["LineNumber"]
       11 SETTABLEKS                       R2 R1 K2 ["LineNumber"]
       13 GETTABLEKS                       R2 R0 K3 ["ScriptName"]
       15 SETTABLEKS                       R2 R1 K3 ["ScriptName"]
       17 GETTABLEKS                       R2 R0 K4 ["Enabled"]
       19 SETTABLEKS                       R2 R1 K4 ["Enabled"]
       21 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R8 0
        5 GETTABLE                         R7 R8 R5
        6 JUMPIF                           R7 ; [+58]
        7 JUMPIFEQKS                       R5 K0 ["OnPropertyChanged"] ; [+3]
        9 JUMPIFNOTEQKS                    R5 K1 ["OnAttributeChanged"] ; [+33]
       11 NEWTABLE                         R7 0 0
       13 MOVE                             R8 R6
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 DUPTABLE                         R13 K7 [{"Runtime", "FunctionName", "LineNumber", "ScriptName", "Enabled"}]
       18 GETTABLEKS                       R14 R12 K2 ["Runtime"]
       20 SETTABLEKS                       R14 R13 K2 ["Runtime"]
       22 GETTABLEKS                       R14 R12 K3 ["FunctionName"]
       24 SETTABLEKS                       R14 R13 K3 ["FunctionName"]
       26 GETTABLEKS                       R14 R12 K4 ["LineNumber"]
       28 SETTABLEKS                       R14 R13 K4 ["LineNumber"]
       30 GETTABLEKS                       R14 R12 K5 ["ScriptName"]
       32 SETTABLEKS                       R14 R13 K5 ["ScriptName"]
       34 GETTABLEKS                       R14 R12 K6 ["Enabled"]
       36 SETTABLEKS                       R14 R13 K6 ["Enabled"]
       38 SETTABLE                         R13 R7 R11
       39 FORGLOOP                         R8 2 ; [-23]
       41 SETTABLE                         R7 R1 R5
       42 JUMP                             ; [+22]
       43 DUPTABLE                         R7 K7 [{"Runtime", "FunctionName", "LineNumber", "ScriptName", "Enabled"}]
       44 GETTABLEKS                       R8 R6 K2 ["Runtime"]
       46 SETTABLEKS                       R8 R7 K2 ["Runtime"]
       48 GETTABLEKS                       R8 R6 K3 ["FunctionName"]
       50 SETTABLEKS                       R8 R7 K3 ["FunctionName"]
       52 GETTABLEKS                       R8 R6 K4 ["LineNumber"]
       54 SETTABLEKS                       R8 R7 K4 ["LineNumber"]
       56 GETTABLEKS                       R8 R6 K5 ["ScriptName"]
       58 SETTABLEKS                       R8 R7 K5 ["ScriptName"]
       60 GETTABLEKS                       R8 R6 K6 ["Enabled"]
       62 SETTABLEKS                       R8 R7 K6 ["Enabled"]
       64 SETTABLE                         R7 R1 R5
       65 FORGLOOP                         R2 2 ; [-62]
       67 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R1 K4 [{"Id", "Query", "Size", "Enabled"}]
        1 GETTABLEKS                       R2 R0 K0 ["Id"]
        3 SETTABLEKS                       R2 R1 K0 ["Id"]
        5 GETTABLEKS                       R2 R0 K1 ["Query"]
        7 SETTABLEKS                       R2 R1 K1 ["Query"]
        9 GETTABLEKS                       R2 R0 K2 ["Size"]
       11 SETTABLEKS                       R2 R1 K2 ["Size"]
       13 GETTABLEKS                       R2 R0 K3 ["Enabled"]
       15 SETTABLEKS                       R2 R1 K3 ["Enabled"]
       17 GETUPVAL                         R2 0
       18 MOVE                             R3 R0
       19 MOVE                             R4 R1
       20 CALL                             R2 2 1
       21 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CollectionDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K15 [{["Id"] = True, ["Query"] = True, ["Size"] = True, ["Root"] = True, ["Enabled"] = True, ["Contains"] = True}]
       15 DUPCLOSURE                       R3 K16 [PROTO_0]
       16 DUPCLOSURE                       R4 K17 [PROTO_1]
       17 CAPTURE                          VAL R2
       18 DUPCLOSURE                       R5 K18 [PROTO_2]
       19 CAPTURE                          VAL R4
       20 DUPTABLE                         R6 K21 [{"serialize", "serializeCallbacks"}]
       21 SETTABLEKS                       R5 R6 K19 ["serialize"]
       23 SETTABLEKS                       R4 R6 K20 ["serializeCallbacks"]
       25 RETURN                           R6 1
