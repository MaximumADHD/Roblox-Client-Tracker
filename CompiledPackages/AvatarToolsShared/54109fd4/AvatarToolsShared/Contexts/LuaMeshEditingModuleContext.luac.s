PROTO_0:
        0 DUPTABLE                         R2 K3 [{"_currentTool", "_tools", "_toolChangedSignal"}]
        1 LOADNIL                          R3
        2 SETTABLEKS                       R3 R2 K0 ["_currentTool"]
        4 SETTABLEKS                       R0 R2 K1 ["_tools"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["new"]
        9 CALL                             R3 0 1
       10 SETTABLEKS                       R3 R2 K2 ["_toolChangedSignal"]
       12 GETUPVAL                         R3 1
       13 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       15 GETIMPORT                        R1 K6 [setmetatable]
       17 CALL                             R1 2 1
       18 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_innerCageContext"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_innerCageContext"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K0 ["_innerCageContext"]
        7 JUMPIFNOT                        R2 ; [+13]
        8 GETIMPORT                        R2 K2 [pairs]
       10 GETTABLEKS                       R3 R0 K3 ["_tools"]
       12 CALL                             R2 1 3
       13 FORGPREP_NEXT                    R2
       14 GETTABLEKS                       R9 R0 K0 ["_innerCageContext"]
       16 NAMECALL                         R7 R6 K4 ["removeContext"]
       18 CALL                             R7 2 0
       19 FORGLOOP                         R2 2 ; [-6]
       21 SETTABLEKS                       R1 R0 K0 ["_innerCageContext"]
       23 JUMPIFNOT                        R1 ; [+13]
       24 GETIMPORT                        R2 K2 [pairs]
       26 GETTABLEKS                       R3 R0 K3 ["_tools"]
       28 CALL                             R2 1 3
       29 FORGPREP_NEXT                    R2
       30 GETTABLEKS                       R9 R0 K0 ["_innerCageContext"]
       32 NAMECALL                         R7 R6 K5 ["addContext"]
       34 CALL                             R7 2 0
       35 FORGLOOP                         R2 2 ; [-6]
       37 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_outerCageContext"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_outerCageContext"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K0 ["_outerCageContext"]
        7 JUMPIFNOT                        R2 ; [+13]
        8 GETIMPORT                        R2 K2 [pairs]
       10 GETTABLEKS                       R3 R0 K3 ["_tools"]
       12 CALL                             R2 1 3
       13 FORGPREP_NEXT                    R2
       14 GETTABLEKS                       R9 R0 K0 ["_outerCageContext"]
       16 NAMECALL                         R7 R6 K4 ["removeContext"]
       18 CALL                             R7 2 0
       19 FORGLOOP                         R2 2 ; [-6]
       21 SETTABLEKS                       R1 R0 K0 ["_outerCageContext"]
       23 JUMPIFNOT                        R1 ; [+13]
       24 GETIMPORT                        R2 K2 [pairs]
       26 GETTABLEKS                       R3 R0 K3 ["_tools"]
       28 CALL                             R2 1 3
       29 FORGPREP_NEXT                    R2
       30 GETTABLEKS                       R9 R0 K0 ["_outerCageContext"]
       32 NAMECALL                         R7 R6 K5 ["addContext"]
       34 CALL                             R7 2 0
       35 FORGLOOP                         R2 2 ; [-6]
       37 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R4 0
        1 NAMECALL                         R2 R0 K0 ["setCurrentToolEnabled"]
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R2 R0 K1 ["_outerCageContext"]
        6 JUMPIFNOT                        R2 ; [+8]
        7 GETTABLEKS                       R2 R0 K1 ["_outerCageContext"]
        9 GETIMPORT                        R4 K5 [Enum.CageType.Outer]
       11 MOVE                             R5 R1
       12 NAMECALL                         R2 R2 K6 ["updateCageLocationFromInstance"]
       14 CALL                             R2 3 0
       15 GETTABLEKS                       R2 R0 K7 ["_innerCageContext"]
       17 JUMPIFNOT                        R2 ; [+8]
       18 GETTABLEKS                       R2 R0 K7 ["_innerCageContext"]
       20 GETIMPORT                        R4 K9 [Enum.CageType.Inner]
       22 MOVE                             R5 R1
       23 NAMECALL                         R2 R2 K6 ["updateCageLocationFromInstance"]
       25 CALL                             R2 3 0
       26 LOADB                            R4 1
       27 NAMECALL                         R2 R0 K0 ["setCurrentToolEnabled"]
       29 CALL                             R2 2 0
       30 NAMECALL                         R2 R0 K10 ["getCurrentTool"]
       32 CALL                             R2 1 1
       33 JUMPIF                           R2 ; [+1]
       34 RETURN                           R0 0
       35 NAMECALL                         R3 R2 K11 ["getCurrentContext"]
       37 CALL                             R3 1 1
       38 JUMPIF                           R3 ; [+1]
       39 RETURN                           R0 0
       40 NAMECALL                         R4 R3 K12 ["getMeshDataChangedSignal"]
       42 CALL                             R4 1 1
       43 NAMECALL                         R4 R4 K13 ["Fire"]
       45 CALL                             R4 1 0
       46 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_currentToolKey"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R2 K4 [Enum.CageType.Outer]
        6 JUMPIFNOTEQ                      R1 R2 ; [+10]
        8 NAMECALL                         R2 R0 K5 ["getCurrentTool"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R4 R0 K6 ["_outerCageContext"]
       13 NAMECALL                         R2 R2 K7 ["setCurrentContext"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0
       17 GETIMPORT                        R2 K9 [Enum.CageType.Inner]
       19 JUMPIFNOTEQ                      R1 R2 ; [+9]
       21 NAMECALL                         R2 R0 K5 ["getCurrentTool"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R4 R0 K10 ["_innerCageContext"]
       26 NAMECALL                         R2 R2 K7 ["setCurrentContext"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_tools"]
        2 GETTABLEKS                       R3 R0 K1 ["_currentToolKey"]
        4 GETTABLE                         R1 R2 R3
        5 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_currentToolKey"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 NAMECALL                         R1 R0 K1 ["getCurrentTool"]
        5 CALL                             R1 1 1
        6 NAMECALL                         R1 R1 K2 ["getCurrentContext"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["_currentToolKey"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 NAMECALL                         R2 R0 K1 ["getCurrentTool"]
        5 CALL                             R2 1 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K2 ["setEnabled"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R4 0
        1 NAMECALL                         R2 R0 K0 ["setCurrentToolEnabled"]
        3 CALL                             R2 2 0
        4 JUMPIF                           R1 ; [+4]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R0 K1 ["_currentToolKey"]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R0 K2 ["_tools"]
       11 GETTABLE                         R2 R3 R1
       12 FASTCALL2K                       ASSERT R2 K3 ; [+5]
       14 MOVE                             R4 R2
       15 LOADK                            R5 K3 ["Tool not found in context."]
       16 GETIMPORT                        R3 K5 [assert]
       18 CALL                             R3 2 0
       19 SETTABLEKS                       R1 R0 K1 ["_currentToolKey"]
       21 LOADB                            R5 1
       22 NAMECALL                         R3 R0 K0 ["setCurrentToolEnabled"]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R2 R0 K0 ["getCurrentTool"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+4]
        4 NAMECALL                         R3 R2 K1 ["getTransparency"]
        6 CALL                             R3 1 -1
        7 RETURN                           R3 -1
        8 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R2 K1 [pairs]
        2 GETTABLEKS                       R3 R0 K2 ["_tools"]
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 MOVE                             R9 R1
        7 NAMECALL                         R7 R6 K3 ["setTransparency"]
        9 CALL                             R7 2 0
       10 FORGLOOP                         R2 2 ; [-5]
       12 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["_tools"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 NAMECALL                         R6 R5 K3 ["resetCurrentContext"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-4]
       11 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_toolChangedSignal"]
        2 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_currentToolKey"]
        2 JUMPIFNOT                        R1 ; [+13]
        3 NAMECALL                         R1 R0 K1 ["getCurrentContext"]
        5 CALL                             R1 1 1
        6 SETTABLEKS                       R1 R0 K2 ["_previousContext"]
        8 GETTABLEKS                       R1 R0 K0 ["_currentToolKey"]
       10 SETTABLEKS                       R1 R0 K3 ["_previousTool"]
       12 LOADNIL                          R3
       13 NAMECALL                         R1 R0 K4 ["setCurrentTool"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_previousTool"]
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETTABLEKS                       R3 R0 K0 ["_previousTool"]
        5 NAMECALL                         R1 R0 K1 ["setCurrentTool"]
        7 CALL                             R1 2 0
        8 NAMECALL                         R1 R0 K2 ["getCurrentTool"]
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R3 R0 K3 ["_previousContext"]
       13 NAMECALL                         R1 R1 K4 ["setCurrentContext"]
       15 CALL                             R1 2 0
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K0 ["_previousTool"]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K3 ["_previousContext"]
       22 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["_tools"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 GETTABLEKS                       R6 R0 K3 ["_innerCageContext"]
        8 JUMPIFNOT                        R6 ; [+5]
        9 GETTABLEKS                       R8 R0 K3 ["_innerCageContext"]
       11 NAMECALL                         R6 R5 K4 ["removeContext"]
       13 CALL                             R6 2 0
       14 GETTABLEKS                       R6 R0 K5 ["_outerCageContext"]
       16 JUMPIFNOT                        R6 ; [+5]
       17 GETTABLEKS                       R8 R0 K5 ["_outerCageContext"]
       19 NAMECALL                         R6 R5 K4 ["removeContext"]
       21 CALL                             R6 2 0
       22 NAMECALL                         R6 R5 K6 ["cleanup"]
       24 CALL                             R6 1 0
       25 FORGLOOP                         R1 2 ; [-20]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K7 ["_currentToolKey"]
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K3 ["_innerCageContext"]
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K5 ["_outerCageContext"]
       36 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Framework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R4 R2 K6 ["ContextServices"]
       16 GETTABLEKS                       R3 R4 K7 ["ContextItem"]
       18 GETTABLEKS                       R4 R2 K8 ["Util"]
       20 GETTABLEKS                       R5 R4 K9 ["Signal"]
       22 LOADK                            R8 K10 ["LuaMeshEditingModuleContext"]
       23 NAMECALL                         R6 R3 K11 ["extend"]
       25 CALL                             R6 2 1
       26 DUPCLOSURE                       R7 K12 [PROTO_0]
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R6
       29 SETTABLEKS                       R7 R6 K13 ["new"]
       31 DUPCLOSURE                       R7 K14 [PROTO_1]
       32 SETTABLEKS                       R7 R6 K15 ["getInnerCageContext"]
       34 DUPCLOSURE                       R7 K16 [PROTO_2]
       35 SETTABLEKS                       R7 R6 K17 ["setInnerCageContext"]
       37 DUPCLOSURE                       R7 K18 [PROTO_3]
       38 SETTABLEKS                       R7 R6 K19 ["getOuterCageContext"]
       40 DUPCLOSURE                       R7 K20 [PROTO_4]
       41 SETTABLEKS                       R7 R6 K21 ["setOuterCageContext"]
       43 DUPCLOSURE                       R7 K22 [PROTO_5]
       44 SETTABLEKS                       R7 R6 K23 ["updateCageLocationsFromInstance"]
       46 DUPCLOSURE                       R7 K24 [PROTO_6]
       47 SETTABLEKS                       R7 R6 K25 ["changeEditingCage"]
       49 DUPCLOSURE                       R7 K26 [PROTO_7]
       50 SETTABLEKS                       R7 R6 K27 ["getCurrentTool"]
       52 DUPCLOSURE                       R7 K28 [PROTO_8]
       53 SETTABLEKS                       R7 R6 K29 ["getCurrentContext"]
       55 DUPCLOSURE                       R7 K30 [PROTO_9]
       56 SETTABLEKS                       R7 R6 K31 ["setCurrentToolEnabled"]
       58 DUPCLOSURE                       R7 K32 [PROTO_10]
       59 SETTABLEKS                       R7 R6 K33 ["setCurrentTool"]
       61 DUPCLOSURE                       R7 K34 [PROTO_11]
       62 SETTABLEKS                       R7 R6 K35 ["getTransparency"]
       64 DUPCLOSURE                       R7 K36 [PROTO_12]
       65 SETTABLEKS                       R7 R6 K37 ["setTransparency"]
       67 DUPCLOSURE                       R7 K38 [PROTO_13]
       68 SETTABLEKS                       R7 R6 K39 ["resetTools"]
       70 DUPCLOSURE                       R7 K40 [PROTO_14]
       71 SETTABLEKS                       R7 R6 K41 ["getToolChangedSignal"]
       73 DUPCLOSURE                       R7 K42 [PROTO_15]
       74 SETTABLEKS                       R7 R6 K43 ["disableEditing"]
       76 DUPCLOSURE                       R7 K44 [PROTO_16]
       77 SETTABLEKS                       R7 R6 K45 ["enableEditing"]
       79 DUPCLOSURE                       R7 K46 [PROTO_17]
       80 SETTABLEKS                       R7 R6 K47 ["cleanup"]
       82 RETURN                           R6 1
