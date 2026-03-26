PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAnimationNodeTypes"]
        3 CALL                             R0 1 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R7 0
       11 MOVE                             R9 R6
       12 NAMECALL                         R7 R7 K1 ["GetAnimationNodeDefinition"]
       14 CALL                             R7 2 1
       15 GETTABLEKS                       R9 R7 K2 ["Group"]
       17 GETTABLE                         R8 R1 R9
       18 JUMPIF                           R8 ; [+12]
       19 GETTABLEKS                       R8 R7 K2 ["Group"]
       21 DUPTABLE                         R9 K5 [{"name", "nodes"}]
       22 GETTABLEKS                       R10 R7 K2 ["Group"]
       24 SETTABLEKS                       R10 R9 K3 ["name"]
       26 NEWTABLE                         R10 0 0
       28 SETTABLEKS                       R10 R9 K4 ["nodes"]
       30 SETTABLE                         R9 R1 R8
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R10 R7 K6 ["Type"]
       34 GETTABLE                         R8 R9 R10
       35 GETTABLEKS                       R12 R7 K2 ["Group"]
       37 GETTABLE                         R11 R1 R12
       38 GETTABLEKS                       R10 R11 K4 ["nodes"]
       40 DUPTABLE                         R11 K9 [{"nodeType", "name", "isDisabled"}]
       41 SETTABLEKS                       R6 R11 K7 ["nodeType"]
       43 GETUPVAL                         R13 2
       44 GETTABLEKS                       R12 R13 K10 ["formatName"]
       46 GETTABLEKS                       R14 R7 K6 ["Type"]
       48 JUMPIFNOT                        R14 ; [+5]
       49 GETTABLEKS                       R14 R7 K6 ["Type"]
       51 GETTABLEKS                       R13 R14 K11 ["Name"]
       53 JUMPIF                           R13 ; [+1]
       54 LOADK                            R13 K12 ["No Definition Type"]
       55 CALL                             R12 1 1
       56 SETTABLEKS                       R12 R11 K3 ["name"]
       58 NOT                              R12 R8
       59 SETTABLEKS                       R12 R11 K8 ["isDisabled"]
       61 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       63 GETIMPORT                        R9 K15 [table.insert]
       65 CALL                             R9 2 0
       66 FORGLOOP                         R2 2 ; [-57]
       68 MOVE                             R2 R1
       69 LOADNIL                          R3
       70 LOADNIL                          R4
       71 FORGPREP                         R2
       72 SETTABLE                         R6 R1 R5
       73 LOADNIL                          R7
       74 SETTABLE                         R7 R1 R6
       75 FORGLOOP                         R2 2 ; [-4]
       77 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"nodeGroups"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["nodeGroups"]
        4 SETTABLEKS                       R2 R1 K0 ["nodeGroups"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K3 ["Provider"]
       12 DUPTABLE                         R4 K5 [{"value"}]
       13 SETTABLEKS                       R1 R4 K4 ["value"]
       15 GETTABLEKS                       R5 R0 K6 ["children"]
       17 CALL                             R2 3 -1
       18 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationNodeWrapper"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Util"]
       18 GETTABLEKS                       R4 R5 K8 ["Nodes"]
       20 GETTABLEKS                       R3 R4 K9 ["NodeNameFormattingUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["NodeViewTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["React"]
       34 CALL                             R4 1 1
       35 NEWTABLE                         R5 16 0
       37 GETIMPORT                        R6 K16 [Enum.AnimationNodeType.AddNode]
       39 LOADB                            R7 1
       40 SETTABLE                         R7 R5 R6
       41 GETIMPORT                        R6 K18 [Enum.AnimationNodeType.OverNode]
       43 LOADB                            R7 1
       44 SETTABLE                         R7 R5 R6
       45 GETIMPORT                        R6 K20 [Enum.AnimationNodeType.Blend1DNode]
       47 LOADB                            R7 1
       48 SETTABLE                         R7 R5 R6
       49 GETIMPORT                        R6 K22 [Enum.AnimationNodeType.Blend2DNode]
       51 LOADB                            R7 1
       52 SETTABLE                         R7 R5 R6
       53 GETIMPORT                        R6 K24 [Enum.AnimationNodeType.ClipNode]
       55 LOADB                            R7 1
       56 SETTABLE                         R7 R5 R6
       57 GETIMPORT                        R6 K26 [Enum.AnimationNodeType.SelectNode]
       59 LOADB                            R7 1
       60 SETTABLE                         R7 R5 R6
       61 GETIMPORT                        R6 K28 [Enum.AnimationNodeType.SequenceNode]
       63 LOADB                            R7 1
       64 SETTABLE                         R7 R5 R6
       65 GETIMPORT                        R6 K30 [Enum.AnimationNodeType.RandomSequenceNode]
       67 LOADB                            R7 1
       68 SETTABLE                         R7 R5 R6
       69 GETIMPORT                        R6 K32 [Enum.AnimationNodeType.SpeedNode]
       71 LOADB                            R7 1
       72 SETTABLE                         R7 R5 R6
       73 GETIMPORT                        R6 K34 [Enum.AnimationNodeType.SubtractNode]
       75 LOADB                            R7 1
       76 SETTABLE                         R7 R5 R6
       77 GETIMPORT                        R6 K36 [Enum.AnimationNodeType.PrioritySelectNode]
       79 LOADB                            R7 1
       80 SETTABLE                         R7 R5 R6
       81 GETIMPORT                        R6 K38 [Enum.AnimationNodeType.MaskNode]
       83 LOADB                            R7 1
       84 SETTABLE                         R7 R5 R6
       85 DUPCLOSURE                       R6 K39 [PROTO_0]
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R2
       89 DUPTABLE                         R7 K41 [{"nodeGroups"}]
       90 MOVE                             R8 R6
       91 CALL                             R8 0 1
       92 SETTABLEKS                       R8 R7 K40 ["nodeGroups"]
       94 GETTABLEKS                       R8 R4 K42 ["createContext"]
       96 MOVE                             R9 R7
       97 CALL                             R8 1 1
       98 DUPCLOSURE                       R9 K43 [PROTO_1]
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R8
      102 DUPTABLE                         R10 K46 [{"Context", "Provider"}]
      103 SETTABLEKS                       R8 R10 K44 ["Context"]
      105 SETTABLEKS                       R9 R10 K45 ["Provider"]
      107 RETURN                           R10 1
