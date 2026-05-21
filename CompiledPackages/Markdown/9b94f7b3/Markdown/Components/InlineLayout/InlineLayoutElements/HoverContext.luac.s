PROTO_0:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R1 K2 ["Wrap the component using HoverContext with a HoverContext.Provider element"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["registerOnHoverCallback"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onHover"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useEffect"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R6 0 0
       19 CALL                             R4 2 0
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R6 0 1
       28 MOVE                             R7 R0
       29 SETLIST                          R6 R7 1 [1]
       31 CALL                             R4 2 1
       32 MOVE                             R5 R2
       33 MOVE                             R6 R4
       34 RETURN                           R5 2

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["current"]
        3 GETTABLE                         R2 R5 R0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 MOVE                             R7 R6
        8 MOVE                             R8 R1
        9 CALL                             R7 1 0
       10 FORGLOOP                         R2 2 ; [-4]
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+8]
        5 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
        7 MOVE                             R4 R2
        8 MOVE                             R5 R1
        9 GETIMPORT                        R3 K3 [table.insert]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["current"]
       16 NEWTABLE                         R4 0 1
       18 MOVE                             R5 R1
       19 SETLIST                          R4 R5 1 [1]
       21 SETTABLE                         R4 R3 R0
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R4 0 0
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K1 ["useCallback"]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R5 0 0
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K2 ["createElement"]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K3 ["Provider"]
       28 DUPTABLE                         R6 K5 [{"value"}]
       29 DUPTABLE                         R7 K8 [{"onHover", "registerOnHoverCallback"}]
       30 SETTABLEKS                       R2 R7 K6 ["onHover"]
       32 SETTABLEKS                       R3 R7 K7 ["registerOnHoverCallback"]
       34 SETTABLEKS                       R7 R6 K4 ["value"]
       36 GETTABLEKS                       R7 R0 K9 ["children"]
       38 CALL                             R4 3 -1
       39 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["React"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 GETTABLEKS                       R3 R1 K8 ["createContext"]
       15 DUPTABLE                         R4 K11 [{"registerOnHoverCallback", "onHover"}]
       16 SETTABLEKS                       R2 R4 K9 ["registerOnHoverCallback"]
       18 SETTABLEKS                       R2 R4 K10 ["onHover"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K12 [PROTO_3]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R3
       24 SETGLOBAL                        R4 K13 ["useHoverContext"]
       26 DUPCLOSURE                       R4 K14 [PROTO_6]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 SETGLOBAL                        R4 K15 ["Provider"]
       31 DUPTABLE                         R4 K16 [{"useHoverContext", "Provider"}]
       32 GETGLOBAL                        R5 K13 ["useHoverContext"]
       34 SETTABLEKS                       R5 R4 K13 ["useHoverContext"]
       36 GETGLOBAL                        R5 K15 ["Provider"]
       38 SETTABLEKS                       R5 R4 K15 ["Provider"]
       40 RETURN                           R4 1
