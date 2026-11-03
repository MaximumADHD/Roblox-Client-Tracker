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
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K9 ["Tag"]
       18 JUMPIFNOTEQKNIL                  R3 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 JUMPIF                           R2 ; [+3]
       23 NEWTABLE                         R3 0 0
       25 RETURN                           R3 1
       26 DUPCLOSURE                       R3 K10 [PROTO_0]
       27 GETTABLEKS                       R4 R1 K11 ["createContext"]
       29 DUPTABLE                         R5 K14 [{"registerOnHoverCallback", "onHover"}]
       30 SETTABLEKS                       R3 R5 K12 ["registerOnHoverCallback"]
       32 SETTABLEKS                       R3 R5 K13 ["onHover"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K15 [PROTO_3]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R4
       38 SETGLOBAL                        R5 K16 ["useHoverContext"]
       40 DUPCLOSURE                       R5 K17 [PROTO_6]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R4
       43 SETGLOBAL                        R5 K18 ["Provider"]
       45 DUPTABLE                         R5 K19 [{"useHoverContext", "Provider"}]
       46 GETGLOBAL                        R6 K16 ["useHoverContext"]
       48 SETTABLEKS                       R6 R5 K16 ["useHoverContext"]
       50 GETGLOBAL                        R6 K18 ["Provider"]
       52 SETTABLEKS                       R6 R5 K18 ["Provider"]
       54 RETURN                           R5 1
