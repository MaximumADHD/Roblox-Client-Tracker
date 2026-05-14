PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceTypes"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R8 R5
        7 NAMECALL                         R6 R0 K1 ["IsA"]
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+2]
       11 LOADB                            R6 1
       12 RETURN                           R6 1
       13 FORGLOOP                         R1 2 ; [-8]
       15 LOADB                            R1 0
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["connections"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+18]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["connections"]
        8 GETTABLE                         R1 R4 R0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 JUMPIFNOT                        R5 ; [+3]
       13 NAMECALL                         R6 R5 K1 ["Disconnect"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 ; [-5]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["connections"]
       21 LOADNIL                          R2
       22 SETTABLE                         R2 R1 R0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Parent"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["removeInstanceConnections"]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K2 ["updateHierarchy"]
       13 GETUPVAL                         R1 0
       14 LOADK                            R2 K3 ["PropertyChanged"]
       15 GETUPVAL                         R3 2
       16 CALL                             R0 3 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["connectedProperties"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 NEWTABLE                         R2 0 0
        8 MOVE                             R3 R1
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 MOVE                             R10 R6
       13 NAMECALL                         R8 R0 K1 ["IsA"]
       15 CALL                             R8 2 1
       16 JUMPIFNOT                        R8 ; [+18]
       17 MOVE                             R8 R7
       18 LOADNIL                          R9
       19 LOADNIL                          R10
       20 FORGPREP                         R8
       21 MOVE                             R15 R12
       22 NAMECALL                         R13 R0 K2 ["GetPropertyChangedSignal"]
       24 CALL                             R13 2 1
       25 NEWCLOSURE                       R15 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R12
       29 NAMECALL                         R13 R13 K3 ["Connect"]
       31 CALL                             R13 2 1
       32 SETTABLE                         R13 R2 R12
       33 FORGLOOP                         R8 2 ; [-13]
       35 FORGLOOP                         R3 2 ; [-24]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K4 ["connections"]
       40 GETTABLE                         R3 R4 R0
       41 JUMPIFNOT                        R3 ; [+12]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K4 ["connections"]
       45 GETUPVAL                         R4 1
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K4 ["connections"]
       49 GETTABLE                         R5 R6 R0
       50 MOVE                             R6 R2
       51 CALL                             R4 2 1
       52 SETTABLE                         R4 R3 R0
       53 RETURN                           R0 0
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R3 R3 K4 ["connections"]
       57 SETTABLE                         R2 R3 R0
       58 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["addInstanceConnections"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["updateHierarchy"]
        8 GETUPVAL                         R2 1
        9 LOADK                            R3 K2 ["DescendantAdded"]
       10 MOVE                             R4 R0
       11 CALL                             R1 3 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["removeInstanceConnections"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["updateHierarchy"]
        8 GETUPVAL                         R2 1
        9 LOADK                            R3 K2 ["DescendantRemoving"]
       10 MOVE                             R4 R0
       11 CALL                             R1 3 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeInstanceConnections"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["updateHierarchy"]
        8 GETUPVAL                         R1 1
        9 LOADK                            R2 K2 ["Destroying"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["connections"]
        5 DUPTABLE                         R2 K4 [{"descendantAdded", "descendantRemoving", "instanceDestroying"}]
        6 GETTABLEKS                       R3 R0 K5 ["DescendantAdded"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R3 R3 K6 ["Connect"]
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K1 ["descendantAdded"]
       16 GETTABLEKS                       R3 R0 K7 ["DescendantRemoving"]
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 NAMECALL                         R3 R3 K6 ["Connect"]
       23 CALL                             R3 2 1
       24 SETTABLEKS                       R3 R2 K2 ["descendantRemoving"]
       26 GETTABLEKS                       R3 R0 K8 ["Destroying"]
       28 NEWCLOSURE                       R5 P2
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R0
       31 NAMECALL                         R3 R3 K6 ["Connect"]
       33 CALL                             R3 2 1
       34 SETTABLEKS                       R3 R2 K3 ["instanceDestroying"]
       36 SETTABLE                         R2 R1 R0
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K9 ["addInstanceConnections"]
       40 MOVE                             R2 R0
       41 CALL                             R1 1 0
       42 NAMECALL                         R1 R0 K10 ["GetDescendants"]
       44 CALL                             R1 1 1
       45 MOVE                             R2 R1
       46 LOADNIL                          R3
       47 LOADNIL                          R4
       48 FORGPREP                         R2
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K11 ["isFilteredType"]
       52 MOVE                             R8 R6
       53 CALL                             R7 1 1
       54 JUMPIFNOT                        R7 ; [+5]
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R7 R7 K9 ["addInstanceConnections"]
       58 MOVE                             R8 R6
       59 CALL                             R7 1 0
       60 FORGLOOP                         R2 2 ; [-12]
       62 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["connections"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["connections"]
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 FORGPREP                         R0
       11 MOVE                             R5 R4
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 FORGPREP                         R5
       15 JUMPIFNOT                        R9 ; [+3]
       16 NAMECALL                         R10 R9 K1 ["Disconnect"]
       18 CALL                             R10 1 0
       19 FORGLOOP                         R5 2 ; [-5]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K0 ["connections"]
       24 LOADNIL                          R6
       25 SETTABLE                         R6 R5 R3
       26 FORGLOOP                         R0 2 ; [-16]
       28 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeAllConnections"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["connectedProperties"]
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K2 ["noop"]
       13 SETTABLEKS                       R1 R0 K3 ["updateHierarchy"]
       15 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R5 K4 [{"connections", "updateHierarchy", "connectedProperties", "instanceTypes"}]
        1 NEWTABLE                         R6 0 0
        3 SETTABLEKS                       R6 R5 K0 ["connections"]
        5 SETTABLEKS                       R1 R5 K1 ["updateHierarchy"]
        7 SETTABLEKS                       R2 R5 K2 ["connectedProperties"]
        9 JUMPIF                           R3 ; [+6]
       10 NEWTABLE                         R6 0 1
       12 LOADK                            R7 K5 ["StyleBase"]
       13 SETLIST                          R6 R7 1 [1]
       15 JUMP                             ; [+1]
       16 MOVE                             R6 R3
       17 SETTABLEKS                       R6 R5 K3 ["instanceTypes"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R5
       21 SETTABLEKS                       R6 R5 K6 ["isFilteredType"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          VAL R5
       25 SETTABLEKS                       R6 R5 K7 ["removeInstanceConnections"]
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          VAL R5
       29 CAPTURE                          UPVAL U0
       30 SETTABLEKS                       R6 R5 K8 ["addInstanceConnections"]
       32 NEWCLOSURE                       R6 P3
       33 CAPTURE                          VAL R5
       34 SETTABLEKS                       R6 R5 K9 ["addRootInstanceConnections"]
       36 NEWCLOSURE                       R6 P4
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R6 R5 K10 ["removeAllConnections"]
       40 NEWCLOSURE                       R6 P5
       41 CAPTURE                          VAL R5
       42 CAPTURE                          UPVAL U1
       43 SETTABLEKS                       R6 R5 K11 ["destroyListener"]
       45 GETUPVAL                         R6 2
       46 JUMPIFNOT                        R6 ; [+15]
       47 JUMPIFNOTEQKNIL                  R4 ; [+2]
       49 LOADB                            R7 0 +1
       50 LOADB                            R7 1
       51 FASTCALL2K                       ASSERT R7 K12 ; [+4]
       53 LOADK                            R8 K12 ["expecting valid source"]
       54 GETIMPORT                        R6 K14 [assert]
       56 CALL                             R6 2 0
       57 GETTABLEKS                       R6 R5 K9 ["addRootInstanceConnections"]
       59 MOVE                             R7 R4
       60 CALL                             R6 1 0
       61 JUMP                             ; [+20]
       62 JUMPIFNOTEQKNIL                  R0 ; [+2]
       64 LOADB                            R7 0 +1
       65 LOADB                            R7 1
       66 FASTCALL2K                       ASSERT R7 K15 ; [+4]
       68 LOADK                            R8 K15 ["expecting valid roots"]
       69 GETIMPORT                        R6 K14 [assert]
       71 CALL                             R6 2 0
       72 MOVE                             R6 R0
       73 LOADNIL                          R7
       74 LOADNIL                          R8
       75 FORGPREP                         R6
       76 GETTABLEKS                       R11 R5 K9 ["addRootInstanceConnections"]
       78 MOVE                             R12 R10
       79 CALL                             R11 1 0
       80 FORGLOOP                         R6 2 ; [-5]
       82 DUPTABLE                         R8 K17 [{"__index"}]
       83 GETUPVAL                         R9 3
       84 SETTABLEKS                       R9 R8 K16 ["__index"]
       86 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       88 MOVE                             R7 R5
       89 GETIMPORT                        R6 K19 [setmetatable]
       91 CALL                             R6 2 1
       92 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["join"]
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R0 K8 ["Src"]
       22 GETTABLEKS                       R4 R4 K9 ["Flags"]
       24 GETTABLEKS                       R4 R4 K10 ["getFFlagStyleEditorPluginStyleSheets"]
       26 CALL                             R3 1 1
       27 CALL                             R3 0 1
       28 NEWTABLE                         R4 1 0
       30 DUPCLOSURE                       R5 K11 [PROTO_10]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R5 R4 K12 ["new"]
       37 RETURN                           R4 1
