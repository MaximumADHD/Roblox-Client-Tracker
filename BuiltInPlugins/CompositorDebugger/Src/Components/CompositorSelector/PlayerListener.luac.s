PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["COMPOSITOR_ATTRIBUTE"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+14]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["onAttributeChangedEvent"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K3 ["props"]
       14 GETTABLEKS                       R1 R2 K4 ["OnValidSelection"]
       16 GETUPVAL                         R2 2
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["CheckSelectedInstance"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 2
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["INSTANCE_CHECK"]
       10 GETTABLEKS                       R3 R4 K3 ["Valid"]
       12 JUMPIFNOTEQ                      R1 R3 ; [+9]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K0 ["props"]
       17 GETTABLEKS                       R3 R4 K4 ["OnValidSelection"]
       19 MOVE                             R4 R0
       20 CALL                             R3 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K2 ["INSTANCE_CHECK"]
       25 GETTABLEKS                       R3 R4 K5 ["MissingHasCompositorAttribute"]
       27 JUMPIFNOTEQ                      R1 R3 ; [+13]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R4 R2 K6 ["AttributeChanged"]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R4 R4 K7 ["Connect"]
       38 CALL                             R4 2 1
       39 SETTABLEKS                       R4 R3 K8 ["onAttributeChangedEvent"]
       41 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Character"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["onCharacterAdded"]
        6 GETTABLEKS                       R2 R0 K0 ["Character"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["onCharacterAddedEvent"]
       12 JUMPIFNOT                        R1 ; [+6]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K2 ["onCharacterAddedEvent"]
       16 NAMECALL                         R1 R1 K3 ["Disconnect"]
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R2 R0 K4 ["CharacterAdded"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K1 ["onCharacterAdded"]
       25 NAMECALL                         R2 R2 K5 ["Connect"]
       27 CALL                             R2 2 1
       28 SETTABLEKS                       R2 R1 K2 ["onCharacterAddedEvent"]
       30 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onCharacterAdded"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K1 ["onPlayerAdded"]
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsRunning"]
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["IsClient"]
        9 CALL                             R1 1 1
       10 JUMPIFNOT                        R1 ; [+39]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K2 ["LocalPlayer"]
       14 JUMPIFNOT                        R1 ; [+35]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K2 ["LocalPlayer"]
       18 GETTABLEKS                       R1 R2 K3 ["Character"]
       20 JUMPIFNOT                        R1 ; [+8]
       21 GETTABLEKS                       R1 R0 K4 ["onCharacterAdded"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K2 ["LocalPlayer"]
       26 GETTABLEKS                       R2 R3 K3 ["Character"]
       28 CALL                             R1 1 0
       29 GETTABLEKS                       R1 R0 K5 ["onCharacterAddedEvent"]
       31 JUMPIFNOT                        R1 ; [+5]
       32 GETTABLEKS                       R1 R0 K5 ["onCharacterAddedEvent"]
       34 NAMECALL                         R1 R1 K6 ["Disconnect"]
       36 CALL                             R1 1 0
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R2 R3 K2 ["LocalPlayer"]
       40 GETTABLEKS                       R1 R2 K7 ["CharacterAdded"]
       42 GETTABLEKS                       R3 R0 K4 ["onCharacterAdded"]
       44 NAMECALL                         R1 R1 K8 ["Connect"]
       46 CALL                             R1 2 1
       47 SETTABLEKS                       R1 R0 K5 ["onCharacterAddedEvent"]
       49 RETURN                           R0 0
       50 GETUPVAL                         R1 1
       51 NAMECALL                         R1 R1 K9 ["GetPlayers"]
       53 CALL                             R1 1 1
       54 GETTABLEN                        R2 R1 1
       55 JUMPIFNOT                        R2 ; [+18]
       56 GETTABLEN                        R3 R1 1
       57 GETTABLEKS                       R2 R3 K3 ["Character"]
       59 JUMPIFNOT                        R2 ; [+6]
       60 GETTABLEKS                       R2 R0 K4 ["onCharacterAdded"]
       62 GETTABLEN                        R4 R1 1
       63 GETTABLEKS                       R3 R4 K3 ["Character"]
       65 CALL                             R2 1 0
       66 GETTABLEN                        R3 R1 1
       67 GETTABLEKS                       R2 R3 K7 ["CharacterAdded"]
       69 GETTABLEKS                       R4 R0 K4 ["onCharacterAdded"]
       71 NAMECALL                         R2 R2 K8 ["Connect"]
       73 CALL                             R2 2 0
       74 GETTABLEKS                       R2 R0 K10 ["onPlayerAddedEvent"]
       76 JUMPIFNOT                        R2 ; [+5]
       77 GETTABLEKS                       R2 R0 K10 ["onPlayerAddedEvent"]
       79 NAMECALL                         R2 R2 K6 ["Disconnect"]
       81 CALL                             R2 1 0
       82 GETUPVAL                         R3 1
       83 GETTABLEKS                       R2 R3 K11 ["PlayerAdded"]
       85 GETTABLEKS                       R4 R0 K12 ["onPlayerAdded"]
       87 NAMECALL                         R2 R2 K8 ["Connect"]
       89 CALL                             R2 2 1
       90 SETTABLEKS                       R2 R0 K10 ["onPlayerAddedEvent"]
       92 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["onPlayerAddedEvent"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["onPlayerAddedEvent"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K2 ["onPlayerAdded"]
       11 GETTABLEKS                       R1 R0 K3 ["onCharacterAddedEvent"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K3 ["onCharacterAddedEvent"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K3 ["onCharacterAddedEvent"]
       22 GETTABLEKS                       R1 R0 K4 ["onAttributeChangedEvent"]
       24 JUMPIFNOT                        R1 ; [+8]
       25 GETTABLEKS                       R1 R0 K4 ["onAttributeChangedEvent"]
       27 NAMECALL                         R1 R1 K1 ["Disconnect"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K4 ["onAttributeChangedEvent"]
       33 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RunService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["CompositorDebugger"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R5 K12 ["AnimationEditor"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R2 K11 ["Packages"]
       30 GETTABLEKS                       R5 R6 K13 ["React"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R6 R2 K14 ["Src"]
       35 GETTABLEKS                       R5 R6 K15 ["Util"]
       37 GETIMPORT                        R6 K10 [require]
       39 GETTABLEKS                       R9 R2 K16 ["Bin"]
       41 GETTABLEKS                       R8 R9 K17 ["Common"]
       43 GETTABLEKS                       R7 R8 K18 ["defineLuaFlags"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R3 K19 ["Constants"]
       48 GETTABLEKS                       R8 R4 K20 ["PureComponent"]
       50 LOADK                            R10 K21 ["PlayerListener"]
       51 NAMECALL                         R8 R8 K22 ["extend"]
       53 CALL                             R8 2 1
       54 DUPCLOSURE                       R9 K23 [PROTO_3]
       55 CAPTURE                          VAL R7
       56 SETTABLEKS                       R9 R8 K24 ["init"]
       58 DUPCLOSURE                       R9 K25 [PROTO_4]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R9 R8 K26 ["didMount"]
       63 DUPCLOSURE                       R9 K27 [PROTO_5]
       64 SETTABLEKS                       R9 R8 K28 ["willUnmount"]
       66 DUPCLOSURE                       R9 K29 [PROTO_6]
       67 SETTABLEKS                       R9 R8 K30 ["render"]
       69 RETURN                           R8 1
