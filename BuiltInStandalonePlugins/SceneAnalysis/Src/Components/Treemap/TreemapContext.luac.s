PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["original"]
        2 JUMPIFNOT                        R3 ; [+21]
        3 GETTABLEKS                       R4 R0 K0 ["original"]
        5 GETTABLEKS                       R3 R4 K1 ["Id"]
        7 JUMPIFNOT                        R3 ; [+16]
        8 GETTABLEKS                       R6 R0 K0 ["original"]
       10 GETTABLEKS                       R5 R6 K1 ["Id"]
       12 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R3 K4 [table.insert]
       17 CALL                             R3 2 0
       18 GETTABLEKS                       R4 R0 K0 ["original"]
       20 GETTABLEKS                       R3 R4 K1 ["Id"]
       22 LOADB                            R4 1
       23 SETTABLE                         R4 R2 R3
       24 GETTABLEKS                       R3 R0 K5 ["Children"]
       26 JUMPIFNOT                        R3 ; [+12]
       27 GETTABLEKS                       R3 R0 K5 ["Children"]
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 GETUPVAL                         R8 0
       33 MOVE                             R9 R7
       34 MOVE                             R10 R1
       35 MOVE                             R11 R2
       36 CALL                             R8 3 0
       37 FORGLOOP                         R3 2 ; [-6]
       39 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 1
        2 MOVE                             R3 R1
        3 SETLIST                          R2 R3 1 [1]
        5 SETTABLEKS                       R2 R0 K0 ["selectedNodeIds"]
        7 GETTABLEKS                       R3 R0 K1 ["treemapRef"]
        9 GETTABLEKS                       R2 R3 K2 ["current"]
       11 JUMPIFNOT                        R2 ; [+12]
       12 GETTABLEKS                       R3 R0 K1 ["treemapRef"]
       14 GETTABLEKS                       R2 R3 K2 ["current"]
       16 NEWTABLE                         R4 0 1
       18 MOVE                             R5 R1
       19 SETLIST                          R4 R5 1 [1]
       21 NAMECALL                         R2 R2 K3 ["setSelectedNodeIdsFromContext"]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R2 0
       25 JUMPIFNOT                        R2 ; [+6]
       26 GETUPVAL                         R2 0
       27 NEWTABLE                         R3 1 0
       29 LOADB                            R4 1
       30 SETTABLE                         R4 R3 R1
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["selectedNodeIds"]
        3 GETTABLEKS                       R2 R0 K1 ["treemapRef"]
        5 GETTABLEKS                       R1 R2 K2 ["current"]
        7 JUMPIFNOT                        R1 ; [+9]
        8 GETTABLEKS                       R2 R0 K1 ["treemapRef"]
       10 GETTABLEKS                       R1 R2 K2 ["current"]
       12 NEWTABLE                         R3 0 0
       14 NAMECALL                         R1 R1 K3 ["setSelectedNodeIdsFromContext"]
       16 CALL                             R1 2 0
       17 GETUPVAL                         R1 0
       18 JUMPIFNOT                        R1 ; [+3]
       19 GETUPVAL                         R1 0
       20 LOADNIL                          R2
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["original"]
        2 GETTABLEKS                       R2 R3 K1 ["Id"]
        4 GETTABLEKS                       R3 R0 K2 ["selectedNodeIds"]
        6 JUMPIFNOT                        R3 ; [+37]
        7 GETTABLEKS                       R3 R0 K2 ["selectedNodeIds"]
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 JUMPIFNOTEQ                      R7 R2 ; [+29]
       14 NAMECALL                         R8 R0 K3 ["clearSelectedNodes"]
       16 CALL                             R8 1 0
       17 GETTABLEKS                       R8 R0 K4 ["virtualizedListRef"]
       19 JUMPIFNOT                        R8 ; [+21]
       20 GETTABLEKS                       R9 R0 K4 ["virtualizedListRef"]
       22 GETTABLEKS                       R8 R9 K5 ["current"]
       24 JUMPIFNOT                        R8 ; [+16]
       25 GETTABLEKS                       R10 R0 K4 ["virtualizedListRef"]
       27 GETTABLEKS                       R9 R10 K5 ["current"]
       29 GETTABLEKS                       R8 R9 K6 ["setSelectedIdsHash"]
       31 LOADNIL                          R9
       32 CALL                             R8 1 0
       33 GETTABLEKS                       R10 R0 K4 ["virtualizedListRef"]
       35 GETTABLEKS                       R9 R10 K5 ["current"]
       37 GETTABLEKS                       R8 R9 K7 ["setSelectedNodeId"]
       39 LOADNIL                          R9
       40 CALL                             R8 1 0
       41 RETURN                           R0 0
       42 FORGLOOP                         R3 2 ; [-31]
       44 LOADNIL                          R3
       45 LOADNIL                          R4
       46 GETTABLEKS                       R5 R1 K8 ["Children"]
       48 JUMPIFNOT                        R5 ; [+16]
       49 GETTABLEKS                       R6 R1 K8 ["Children"]
       51 LENGTH                           R5 R6
       52 LOADN                            R6 0
       53 JUMPIFNOTLT                      R6 R5 ; [+11]
       55 NEWTABLE                         R3 0 0
       57 NEWTABLE                         R4 0 0
       59 GETUPVAL                         R5 0
       60 MOVE                             R6 R1
       61 MOVE                             R7 R3
       62 MOVE                             R8 R4
       63 CALL                             R5 3 0
       64 JUMP                             ; [+11]
       65 NEWTABLE                         R5 0 1
       67 MOVE                             R6 R2
       68 SETLIST                          R5 R6 1 [1]
       70 MOVE                             R3 R5
       71 NEWTABLE                         R5 1 0
       73 LOADB                            R6 1
       74 SETTABLE                         R6 R5 R2
       75 MOVE                             R4 R5
       76 SETTABLEKS                       R3 R0 K2 ["selectedNodeIds"]
       78 GETTABLEKS                       R6 R0 K9 ["treemapRef"]
       80 GETTABLEKS                       R5 R6 K5 ["current"]
       82 JUMPIFNOT                        R5 ; [+8]
       83 GETTABLEKS                       R6 R0 K9 ["treemapRef"]
       85 GETTABLEKS                       R5 R6 K5 ["current"]
       87 MOVE                             R7 R3
       88 NAMECALL                         R5 R5 K10 ["setSelectedNodeIdsFromContext"]
       90 CALL                             R5 2 0
       91 GETTABLEKS                       R5 R0 K4 ["virtualizedListRef"]
       93 JUMPIFNOT                        R5 ; [+21]
       94 GETTABLEKS                       R6 R0 K4 ["virtualizedListRef"]
       96 GETTABLEKS                       R5 R6 K5 ["current"]
       98 JUMPIFNOT                        R5 ; [+16]
       99 GETTABLEKS                       R7 R0 K4 ["virtualizedListRef"]
      101 GETTABLEKS                       R6 R7 K5 ["current"]
      103 GETTABLEKS                       R5 R6 K6 ["setSelectedIdsHash"]
      105 MOVE                             R6 R4
      106 CALL                             R5 1 0
      107 GETTABLEKS                       R7 R0 K4 ["virtualizedListRef"]
      109 GETTABLEKS                       R6 R7 K5 ["current"]
      111 GETTABLEKS                       R5 R6 K7 ["setSelectedNodeId"]
      113 MOVE                             R6 R2
      114 CALL                             R5 1 0
      115 GETUPVAL                         R5 1
      116 JUMPIFNOT                        R5 ; [+3]
      117 GETUPVAL                         R5 1
      118 MOVE                             R6 R4
      119 CALL                             R5 1 0
      120 GETUPVAL                         R5 2
      121 JUMPIFNOT                        R5 ; [+3]
      122 GETUPVAL                         R5 2
      123 MOVE                             R6 R2
      124 CALL                             R5 1 0
      125 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K0 ["original"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R5 K3 [{"selectedNodeIds", "treemapRef", "virtualizedListRef"}]
        1 LOADNIL                          R6
        2 SETTABLEKS                       R6 R5 K0 ["selectedNodeIds"]
        4 SETTABLEKS                       R0 R5 K1 ["treemapRef"]
        6 SETTABLEKS                       R1 R5 K2 ["virtualizedListRef"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R4
       10 SETTABLEKS                       R6 R5 K4 ["setSelectedNodeIdFromListView"]
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R4
       14 SETTABLEKS                       R6 R5 K5 ["clearSelectedNodes"]
       16 NEWCLOSURE                       R6 P2
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R6 R5 K6 ["selectNodeFromTreemap"]
       22 NEWCLOSURE                       R6 P3
       23 CAPTURE                          VAL R3
       24 SETTABLEKS                       R6 R5 K7 ["rightClickNode"]
       26 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["SceneAnalysis"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R4 R1 K6 ["Packages"]
       13 GETTABLEKS                       R3 R4 K7 ["React"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 CAPTURE                          VAL R3
       18 DUPCLOSURE                       R4 K9 [PROTO_5]
       19 CAPTURE                          VAL R3
       20 SETTABLEKS                       R4 R0 K10 ["new"]
       22 RETURN                           R0 1
