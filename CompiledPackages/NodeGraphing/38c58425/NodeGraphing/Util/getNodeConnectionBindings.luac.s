PROTO_0:
        0 JUMPIFNOT                        R0 ; [+31]
        1 GETTABLEKS                       R1 R0 K0 ["outputNodeId"]
        3 JUMPIFEQKNIL                     R1 ; [+28]
        5 GETTABLEKS                       R1 R0 K1 ["inputNodeId"]
        7 GETUPVAL                         R2 0
        8 JUMPIFEQ                         R1 R2 ; [+6]
       10 GETTABLEKS                       R1 R0 K0 ["outputNodeId"]
       12 GETUPVAL                         R2 0
       13 JUMPIFNOTEQ                      R1 R2 ; [+18]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R3 R0 K2 ["wireId"]
       18 GETTABLE                         R1 R2 R3
       19 JUMPIF                           R1 ; [+12]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R2 R0 K2 ["wireId"]
       23 LOADB                            R3 1
       24 SETTABLE                         R3 R1 R2
       25 GETUPVAL                         R2 2
       26 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       28 MOVE                             R3 R0
       29 GETIMPORT                        R1 K5 [table.insert]
       31 CALL                             R1 2 0
       32 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R2
        8 MOVE                             R5 R0
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 GETTABLEKS                       R10 R9 K0 ["inputLabelPinToConnectionMap"]
       14 LOADNIL                          R11
       15 LOADNIL                          R12
       16 FORGPREP                         R10
       17 MOVE                             R15 R14
       18 LOADNIL                          R16
       19 LOADNIL                          R17
       20 FORGPREP                         R15
       21 JUMPIFNOT                        R19 ; [+27]
       22 GETTABLEKS                       R20 R19 K1 ["outputNodeId"]
       24 JUMPIFEQKNIL                     R20 ; [+24]
       26 GETTABLEKS                       R20 R19 K2 ["inputNodeId"]
       28 JUMPIFEQ                         R20 R1 ; [+5]
       30 GETTABLEKS                       R20 R19 K1 ["outputNodeId"]
       32 JUMPIFNOTEQ                      R20 R1 ; [+16]
       34 GETTABLEKS                       R21 R19 K3 ["wireId"]
       36 GETTABLE                         R20 R3 R21
       37 JUMPIF                           R20 ; [+11]
       38 GETTABLEKS                       R20 R19 K3 ["wireId"]
       40 LOADB                            R21 1
       41 SETTABLE                         R21 R3 R20
       42 FASTCALL2                        TABLE_INSERT R2 R19 ; [+5]
       44 MOVE                             R21 R2
       45 MOVE                             R22 R19
       46 GETIMPORT                        R20 K6 [table.insert]
       48 CALL                             R20 2 0
       49 FORGLOOP                         R15 2 ; [-29]
       51 FORGLOOP                         R10 2 ; [-35]
       53 GETTABLEKS                       R10 R9 K7 ["inputPinToConnectionMap"]
       55 LOADNIL                          R11
       56 LOADNIL                          R12
       57 FORGPREP                         R10
       58 JUMPIFNOT                        R14 ; [+27]
       59 GETTABLEKS                       R15 R14 K1 ["outputNodeId"]
       61 JUMPIFEQKNIL                     R15 ; [+24]
       63 GETTABLEKS                       R15 R14 K2 ["inputNodeId"]
       65 JUMPIFEQ                         R15 R1 ; [+5]
       67 GETTABLEKS                       R15 R14 K1 ["outputNodeId"]
       69 JUMPIFNOTEQ                      R15 R1 ; [+16]
       71 GETTABLEKS                       R16 R14 K3 ["wireId"]
       73 GETTABLE                         R15 R3 R16
       74 JUMPIF                           R15 ; [+11]
       75 GETTABLEKS                       R15 R14 K3 ["wireId"]
       77 LOADB                            R16 1
       78 SETTABLE                         R16 R3 R15
       79 FASTCALL2                        TABLE_INSERT R2 R14 ; [+5]
       81 MOVE                             R16 R2
       82 MOVE                             R17 R14
       83 GETIMPORT                        R15 K6 [table.insert]
       85 CALL                             R15 2 0
       86 FORGLOOP                         R10 2 ; [-29]
       88 GETTABLEKS                       R10 R9 K8 ["inputConnectionsByInputId"]
       90 JUMPIFNOT                        R10 ; [+35]
       91 GETTABLEKS                       R10 R9 K8 ["inputConnectionsByInputId"]
       93 LOADNIL                          R11
       94 LOADNIL                          R12
       95 FORGPREP                         R10
       96 JUMPIFNOT                        R14 ; [+27]
       97 GETTABLEKS                       R15 R14 K1 ["outputNodeId"]
       99 JUMPIFEQKNIL                     R15 ; [+24]
      101 GETTABLEKS                       R15 R14 K2 ["inputNodeId"]
      103 JUMPIFEQ                         R15 R1 ; [+5]
      105 GETTABLEKS                       R15 R14 K1 ["outputNodeId"]
      107 JUMPIFNOTEQ                      R15 R1 ; [+16]
      109 GETTABLEKS                       R16 R14 K3 ["wireId"]
      111 GETTABLE                         R15 R3 R16
      112 JUMPIF                           R15 ; [+11]
      113 GETTABLEKS                       R15 R14 K3 ["wireId"]
      115 LOADB                            R16 1
      116 SETTABLE                         R16 R3 R15
      117 FASTCALL2                        TABLE_INSERT R2 R14 ; [+5]
      119 MOVE                             R16 R2
      120 MOVE                             R17 R14
      121 GETIMPORT                        R15 K6 [table.insert]
      123 CALL                             R15 2 0
      124 FORGLOOP                         R10 2 ; [-29]
      126 FORGLOOP                         R5 2 ; [-115]
      128 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["NodeViewTypes"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_1]
       13 RETURN                           R2 1
