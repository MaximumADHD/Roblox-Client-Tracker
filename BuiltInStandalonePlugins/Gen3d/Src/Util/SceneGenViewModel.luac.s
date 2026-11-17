PROTO_0:
        0 LOADK                            R4 K0 ["Gen3dSceneViewModel"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["SetItem"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R6 K0 ["Gen3dSceneIntent:"]
        1 MOVE                             R7 R1
        2 CONCAT                           R5 R6 R7
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R0 K1 ["OnInvoke"]
        6 CALL                             R3 3 1
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R3
        9 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R4 K0 ["Gen3dSceneViewModel"]
        1 NAMECALL                         R2 R0 K1 ["GetItem"]
        3 CALL                             R2 2 1
        4 JUMPIFEQKNIL                     R2 ; [+4]
        6 MOVE                             R3 R1
        7 MOVE                             R4 R2
        8 CALL                             R3 1 0
        9 LOADK                            R5 K0 ["Gen3dSceneViewModel"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R3 R0 K2 ["OnSetItem"]
       13 CALL                             R3 3 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R3
       16 RETURN                           R4 1

PROTO_5:
        0 PREPVARARGS                      2
        1 LOADK                            R5 K0 ["Gen3dSceneIntent:"]
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
       14 DUPTABLE                         R2 K12 [{["Prompt"] = "prompt", ["Settings"] = "settings"}]
       15 DUPTABLE                         R3 K17 [{["Size"] = "size", ["Position"] = "position"}]
       16 DUPTABLE                         R4 K40 [{["SetPrompt"] = "setPrompt", ["SetUseMeshGen"] = "setUseMeshGen", ["SetQuality"] = "setQuality", ["Next"] = "next", ["Back"] = "back", ["SetBoundsAxis"] = "setBoundsAxis", ["PickImage"] = "pickImage", ["RemoveImage"] = "removeImage", ["Generate"] = "generate", ["Close"] = "close", ["Open"] = "open"}]
       17 NEWTABLE                         R5 2 0
       19 DUPCLOSURE                       R6 K41 [PROTO_0]
       20 SETTABLEKS                       R6 R5 K42 ["publish"]
       22 DUPCLOSURE                       R6 K43 [PROTO_2]
       23 SETTABLEKS                       R6 R5 K44 ["onIntent"]
       25 NEWTABLE                         R6 2 0
       27 DUPCLOSURE                       R7 K45 [PROTO_4]
       28 SETTABLEKS                       R7 R6 K46 ["subscribe"]
       30 DUPCLOSURE                       R7 K47 [PROTO_5]
       31 SETTABLEKS                       R7 R6 K48 ["sendIntent"]
       33 DUPTABLE                         R7 K58 [{["Model"], ["View"], ["Intents"], ["Steps"], ["BoundsFields"], ["MAX_IMAGES"] = 4, ["MAX_RUNS"] = 3}]
       34 SETTABLEKS                       R5 R7 K49 ["Model"]
       36 SETTABLEKS                       R6 R7 K50 ["View"]
       38 SETTABLEKS                       R4 R7 K51 ["Intents"]
       40 SETTABLEKS                       R2 R7 K52 ["Steps"]
       42 SETTABLEKS                       R3 R7 K53 ["BoundsFields"]
       44 RETURN                           R7 1
