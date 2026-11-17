PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["BaseMaterial"]
        7 SETTABLEKS                       R5 R4 K1 ["Material"]
        9 FORGLOOP                         R0 2 ; [-6]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["Name"]
        7 SETTABLEKS                       R5 R4 K1 ["MaterialVariant"]
        9 FORGLOOP                         R0 2 ; [-6]
       11 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K3 [{"part", "material", "materialVariant"}]
        1 SETTABLEKS                       R0 R1 K0 ["part"]
        3 GETTABLEKS                       R2 R0 K4 ["Material"]
        5 SETTABLEKS                       R2 R1 K1 ["material"]
        7 GETTABLEKS                       R2 R0 K5 ["MaterialVariant"]
        9 SETTABLEKS                       R2 R1 K2 ["materialVariant"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K6 ["BaseMaterial"]
       14 SETTABLEKS                       R2 R0 K4 ["Material"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K7 ["Name"]
       19 SETTABLEKS                       R2 R0 K5 ["MaterialVariant"]
       21 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["current"]
       11 JUMPIFNOT                        R0 ; [+23]
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+21]
       14 GETUPVAL                         R1 3
       15 LENGTH                           R0 R1
       16 LOADN                            R1 0
       17 JUMPIFNOTLT                      R1 R0 ; [+17]
       19 GETUPVAL                         R0 3
       20 LOADNIL                          R1
       21 LOADNIL                          R2
       22 FORGPREP                         R0
       23 GETTABLEKS                       R5 R4 K2 ["part"]
       25 GETTABLEKS                       R6 R4 K3 ["material"]
       27 SETTABLEKS                       R6 R5 K4 ["Material"]
       29 GETTABLEKS                       R6 R4 K5 ["materialVariant"]
       31 SETTABLEKS                       R6 R5 K6 ["MaterialVariant"]
       33 FORGLOOP                         R0 2 ; [-11]
       35 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R1 2
        8 LENGTH                           R0 R1
        9 JUMPIFNOTEQKN                    R0 K1 [0] ; [+3]
       11 DUPCLOSURE                       R0 K2 [PROTO_1]
       12 RETURN                           R0 1
       13 GETUPVAL                         R2 1
       14 JUMPIFNOTEQKNIL                  R2 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 GETUPVAL                         R2 3
       19 FASTCALL2                        ASSERT R1 R2 ; [+3]
       21 GETIMPORT                        R0 K4 [assert]
       23 CALL                             R0 2 0
       24 GETUPVAL                         R0 1
       25 LOADK                            R2 K5 ["BaseMaterial"]
       26 NAMECALL                         R0 R0 K6 ["GetPropertyChangedSignal"]
       28 CALL                             R0 2 1
       29 NEWCLOSURE                       R2 P1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U1
       32 NAMECALL                         R0 R0 K7 ["Connect"]
       34 CALL                             R0 2 1
       35 GETUPVAL                         R1 1
       36 LOADK                            R3 K8 ["Name"]
       37 NAMECALL                         R1 R1 K6 ["GetPropertyChangedSignal"]
       39 CALL                             R1 2 1
       40 NEWCLOSURE                       R3 P2
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U1
       43 NAMECALL                         R1 R1 K7 ["Connect"]
       45 CALL                             R1 2 1
       46 GETUPVAL                         R2 4
       47 GETTABLEKS                       R2 R2 K9 ["map"]
       49 GETUPVAL                         R3 2
       50 NEWCLOSURE                       R4 P3
       51 CAPTURE                          UPVAL U1
       52 CALL                             R2 2 1
       53 GETUPVAL                         R3 5
       54 LOADB                            R4 1
       55 SETTABLEKS                       R4 R3 K10 ["current"]
       57 NEWCLOSURE                       R3 P4
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          VAL R2
       62 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["useRef"]
       10 LOADB                            R5 0
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 2
       13 CALL                             R5 0 0
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 NEWTABLE                         R7 0 0
       21 CALL                             R5 2 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K3 ["useEffect"]
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R8 0 3
       34 GETTABLEKS                       R9 R0 K4 ["enabled"]
       36 MOVE                             R10 R1
       37 MOVE                             R11 R3
       38 SETLIST                          R8 R9 3 [1]
       40 CALL                             R6 2 0
       41 DUPTABLE                         R6 K8 [{"selectedMaterial", "setSelectedMaterial", "applySelectedMaterial"}]
       42 SETTABLEKS                       R1 R6 K5 ["selectedMaterial"]
       44 SETTABLEKS                       R2 R6 K6 ["setSelectedMaterial"]
       46 SETTABLEKS                       R5 R6 K7 ["applySelectedMaterial"]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K9 ["createElement"]
       51 GETUPVAL                         R8 5
       52 GETTABLEKS                       R8 R8 K10 ["Provider"]
       54 DUPTABLE                         R9 K12 [{"value"}]
       55 SETTABLEKS                       R6 R9 K11 ["value"]
       57 GETTABLEKS                       R10 R0 K13 ["children"]
       59 CALL                             R7 3 -1
       60 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["LUAU_ANALYZE_ERROR"]
       30 GETTABLEKS                       R5 R0 K11 ["Src"]
       32 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R5 K13 ["useMaterialVariants"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R5 K14 ["useSelectedParts"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R0 K11 ["Src"]
       48 GETTABLEKS                       R9 R9 K15 ["Util"]
       50 GETTABLEKS                       R9 R9 K16 ["PreviewContext"]
       52 CALL                             R8 1 1
       53 DUPCLOSURE                       R9 K17 [PROTO_7]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R8
       60 RETURN                           R9 1
