PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["scriptInstance"]
        3 GETTABLEKS                       R4 R1 K0 ["scriptInstance"]
        5 JUMPIFNOTEQ                      R3 R4 ; [+20]
        7 LOADB                            R2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R4 R0 K1 ["str"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R5 R1 K1 ["str"]
       15 CALL                             R4 1 1
       16 JUMPIFNOTEQ                      R3 R4 ; [+9]
       18 GETTABLEKS                       R3 R0 K2 ["range"]
       20 GETTABLEKS                       R4 R1 K2 ["range"]
       22 JUMPIFEQ                         R3 R4 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["str"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_2:
        0 DUPTABLE                         R4 K4 [{"str", "name", "range", "scriptInstance"}]
        1 SETTABLEKS                       R0 R4 K0 ["str"]
        3 SETTABLEKS                       R0 R4 K1 ["name"]
        5 SETTABLEKS                       R1 R4 K2 ["range"]
        7 SETTABLEKS                       R2 R4 K3 ["scriptInstance"]
        9 GETUPVAL                         R5 0
       10 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       12 GETIMPORT                        R3 K6 [setmetatable]
       14 CALL                             R3 2 1
       15 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETTABLEKS                       R1 R1 K6 ["ScriptAnalysis"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Constants"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R0 K4 ["Src"]
       20 GETTABLEKS                       R3 R3 K5 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["AnimationConversion"]
       24 GETIMPORT                        R4 K8 [require]
       26 GETTABLEKS                       R5 R3 K11 ["normalizeAssetId"]
       28 CALL                             R4 1 1
       29 NEWTABLE                         R5 4 0
       31 SETTABLEKS                       R5 R5 K12 ["__index"]
       33 DUPCLOSURE                       R6 K13 [PROTO_0]
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R6 R5 K14 ["__eq"]
       37 DUPCLOSURE                       R6 K15 [PROTO_1]
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R6 R5 K16 ["id"]
       41 DUPCLOSURE                       R6 K17 [PROTO_2]
       42 CAPTURE                          VAL R5
       43 SETTABLEKS                       R6 R5 K18 ["new"]
       45 RETURN                           R5 1
