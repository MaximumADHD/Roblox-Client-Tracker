PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["bindToAction"]
        3 DUPTABLE                         R1 K4 [{"uri", "shouldFocusExplorer", "onActionActivated"}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K5 ["fromAction"]
        7 LOADK                            R3 K6 ["Common"]
        8 LOADK                            R4 K7 ["Delete"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K1 ["uri"]
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K2 ["shouldFocusExplorer"]
       15 DUPCLOSURE                       R2 K8 [PROTO_0]
       16 SETTABLEKS                       R2 R1 K3 ["onActionActivated"]
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["useEffect"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 NEWTABLE                         R3 0 0
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["ActionContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R2 K12 ["Util"]
       32 GETTABLEKS                       R4 R5 K13 ["StudioUri"]
       34 DUPCLOSURE                       R5 K14 [PROTO_2]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R4
       38 RETURN                           R5 1
