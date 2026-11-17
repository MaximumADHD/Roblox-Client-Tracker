PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_1:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 DUPCLOSURE                       R3 K0 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 NEWTABLE                         R4 0 0
        6 MOVE                             R5 R1
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 FORGPREP                         R5
       10 DUPTABLE                         R12 K4 [{"Id", "Title", "Items"}]
       11 GETTABLEKS                       R13 R9 K1 ["Id"]
       13 SETTABLEKS                       R13 R12 K1 ["Id"]
       15 MOVE                             R13 R3
       16 GETTABLEKS                       R14 R9 K5 ["TitleKey"]
       18 CALL                             R13 1 1
       19 SETTABLEKS                       R13 R12 K2 ["Title"]
       21 GETTABLEKS                       R13 R9 K3 ["Items"]
       23 SETTABLEKS                       R13 R12 K3 ["Items"]
       25 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       27 MOVE                             R11 R4
       28 GETIMPORT                        R10 K8 [table.insert]
       30 CALL                             R10 2 0
       31 FORGLOOP                         R5 2 ; [-22]
       33 LOADK                            R7 K9 ["SystemMenuController"]
       34 NAMECALL                         R5 R0 K10 ["GetPluginComponent"]
       36 CALL                             R5 2 1
       37 MOVE                             R8 R4
       38 NAMECALL                         R6 R5 K11 ["SetSystemMenuAsync"]
       40 CALL                             R6 2 0
       41 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SystemMenu"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["getLocalizedText"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 RETURN                           R3 1
