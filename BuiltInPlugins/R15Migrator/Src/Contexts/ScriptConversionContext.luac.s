PROTO_0:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K1 [setmetatable]
        8 CALL                             R2 2 0
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["_scripts"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["_scriptGUIDs"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K4 ["_connections"]
       21 SETTABLEKS                       R0 R1 K5 ["_scriptDestroyingCallback"]
       23 NEWTABLE                         R2 0 0
       25 SETTABLEKS                       R2 R1 K6 ["_revertedSources"]
       27 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R1 ; [+32]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["_scriptDestroyingCallback"]
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["_connections"]
       10 GETUPVAL                         R4 2
       11 GETTABLE                         R2 R3 R4
       12 NAMECALL                         R2 R2 K2 ["Disconnect"]
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K1 ["_connections"]
       18 GETUPVAL                         R3 2
       19 LOADNIL                          R4
       20 SETTABLE                         R4 R2 R3
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["_scripts"]
       24 GETUPVAL                         R3 1
       25 LOADNIL                          R4
       26 SETTABLE                         R4 R2 R3
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K4 ["_scriptGUIDs"]
       30 GETUPVAL                         R3 2
       31 LOADNIL                          R4
       32 SETTABLE                         R4 R2 R3
       33 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_connections"]
        2 GETTABLEKS                       R4 R1 K1 ["AncestryChanged"]
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 NAMECALL                         R4 R4 K2 ["Connect"]
       10 CALL                             R4 2 1
       11 SETTABLE                         R4 R3 R2
       12 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_scripts"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_4:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["findScriptGUID"]
        3 CALL                             R2 2 1
        4 MOVE                             R5 R1
        5 NAMECALL                         R3 R0 K0 ["findScriptGUID"]
        7 CALL                             R3 2 1
        8 JUMPIF                           R3 ; [+17]
        9 GETUPVAL                         R3 0
       10 LOADB                            R5 1
       11 NAMECALL                         R3 R3 K1 ["GenerateGUID"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 GETTABLEKS                       R3 R0 K2 ["_scripts"]
       17 SETTABLE                         R2 R3 R1
       18 GETTABLEKS                       R3 R0 K3 ["_scriptGUIDs"]
       20 SETTABLE                         R1 R3 R2
       21 MOVE                             R5 R1
       22 MOVE                             R6 R2
       23 NAMECALL                         R3 R0 K4 ["initConnections"]
       25 CALL                             R3 3 0
       26 RETURN                           R2 1

PROTO_5:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getScriptInstanceFromGUID"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R3 K1 ["FindScriptDocument"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+3]
       12 NAMECALL                         R4 R3 K2 ["CloseAsync"]
       14 CALL                             R4 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getScriptInstanceFromGUID"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R0 K1 ["_revertedSources"]
        6 GETUPVAL                         R4 0
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R4 K2 ["GetEditorSource"]
       10 CALL                             R4 2 1
       11 SETTABLE                         R4 R3 R1
       12 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_revertedSources"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["_scriptGUIDs"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ScriptEditorService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["R15Migrator"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["Framework"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R3 K13 ["ContextServices"]
       28 GETTABLEKS                       R4 R4 K14 ["ContextItem"]
       30 LOADK                            R7 K15 ["ScriptConversionContext"]
       31 NAMECALL                         R5 R4 K16 ["extend"]
       33 CALL                             R5 2 1
       34 DUPCLOSURE                       R6 K17 [PROTO_0]
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R6 R5 K18 ["new"]
       38 DUPCLOSURE                       R6 K19 [PROTO_2]
       39 SETTABLEKS                       R6 R5 K20 ["initConnections"]
       41 DUPCLOSURE                       R6 K21 [PROTO_3]
       42 SETTABLEKS                       R6 R5 K22 ["findScriptGUID"]
       44 DUPCLOSURE                       R6 K23 [PROTO_4]
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R6 R5 K24 ["addOrFindScript"]
       48 DUPCLOSURE                       R6 K25 [PROTO_5]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R6 R5 K26 ["closeScriptIfOpen"]
       52 DUPCLOSURE                       R6 K27 [PROTO_6]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R6 R5 K28 ["setRevertedScriptSource"]
       56 DUPCLOSURE                       R6 K29 [PROTO_7]
       57 SETTABLEKS                       R6 R5 K30 ["getRevertedScriptSource"]
       59 DUPCLOSURE                       R6 K31 [PROTO_8]
       60 SETTABLEKS                       R6 R5 K32 ["getScriptInstanceFromGUID"]
       62 RETURN                           R5 1
