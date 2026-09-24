PROTO_0:
        0 LOADK                            R3 K0 ["[&<>\"']"]
        1 NEWTABLE                         R4 8 0
        3 LOADK                            R5 K1 ["&amp;"]
        4 SETTABLEKS                       R5 R4 K2 ["&"]
        6 LOADK                            R5 K3 ["&lt;"]
        7 SETTABLEKS                       R5 R4 K4 ["<"]
        9 LOADK                            R5 K5 ["&gt;"]
       10 SETTABLEKS                       R5 R4 K6 [">"]
       12 LOADK                            R5 K7 ["&quot;"]
       13 SETTABLEKS                       R5 R4 K8 ["\""]
       15 LOADK                            R5 K9 ["&apos;"]
       16 SETTABLEKS                       R5 R4 K10 ["'"]
       18 NAMECALL                         R1 R0 K11 ["gsub"]
       20 CALL                             R1 3 -1
       21 RETURN                           R1 -1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["nodeLibrary"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 MOVE                             R6 R5
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 FORGPREP                         R6
       12 GETTABLEKS                       R11 R10 K1 ["id"]
       14 SETTABLE                         R10 R0 R11
       15 FORGLOOP                         R6 2 ; [-4]
       17 FORGLOOP                         R1 2 ; [-10]
       19 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["nodeType"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["nodeType"]
        8 GETTABLE                         R0 R1 R2
        9 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 NEWTABLE                         R1 0 0
        6 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["of"]
        6 LOADNIL                          R1
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R0 2
       10 JUMPIFEQKNIL                     R0 ; [+6]
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K1 ["observeDynamicName"]
       15 JUMPIFNOTEQKNIL                  R0 ; [+7]
       17 GETUPVAL                         R0 1
       18 GETTABLEKS                       R0 R0 K0 ["of"]
       20 LOADNIL                          R1
       21 CALL                             R0 1 -1
       22 RETURN                           R0 -1
       23 GETUPVAL                         R0 3
       24 GETTABLEKS                       R0 R0 K2 ["observeNodePropsById"]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K3 ["id"]
       29 CALL                             R0 1 1
       30 GETUPVAL                         R1 4
       31 GETTABLEKS                       R1 R1 K4 ["createComputed"]
       33 NEWCLOSURE                       R2 P0
       34 CAPTURE                          VAL R0
       35 CALL                             R1 1 1
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R2 R2 K1 ["observeDynamicName"]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 -1
       41 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+9]
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["displayName"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["displayName"]
       10 RETURN                           R0 1
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K1 ["className"]
       14 JUMPIF                           R0 ; [+3]
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K2 ["nodeType"]
       18 LOADK                            R3 K3 ["Node$"]
       19 LOADK                            R4 K4 [""]
       20 NAMECALL                         R1 R0 K5 ["gsub"]
       22 CALL                             R1 3 1
       23 LOADK                            R3 K6 ["([a-z])([A-Z])"]
       24 LOADK                            R4 K7 ["%1 %2"]
       25 NAMECALL                         R1 R1 K5 ["gsub"]
       27 CALL                             R1 3 -1
       28 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R5 0 1
       21 GETTABLEKS                       R6 R2 K3 ["nodeLibrary"]
       23 SETLIST                          R5 R6 1 [1]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R6 0 2
       34 MOVE                             R7 R3
       35 GETTABLEKS                       R8 R0 K4 ["nodeType"]
       37 SETLIST                          R6 R7 2 [1]
       39 CALL                             R4 2 1
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       43 NEWCLOSURE                       R6 P2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U4
       49 NEWTABLE                         R7 0 3
       51 MOVE                             R8 R0
       52 MOVE                             R9 R4
       53 JUMPIFNOT                        R9 ; [+2]
       54 GETTABLEKS                       R9 R4 K5 ["observeDynamicName"]
       56 GETTABLEKS                       R10 R1 K6 ["observeNodePropsById"]
       58 SETLIST                          R7 R8 3 [1]
       60 CALL                             R5 2 1
       61 GETUPVAL                         R6 5
       62 GETTABLEKS                       R6 R6 K7 ["useSignalState"]
       64 MOVE                             R7 R5
       65 CALL                             R6 1 1
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       69 NEWCLOSURE                       R8 P3
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R0
       72 NEWTABLE                         R9 0 2
       74 MOVE                             R10 R4
       75 JUMPIFNOT                        R10 ; [+2]
       76 GETTABLEKS                       R10 R4 K8 ["displayName"]
       78 GETTABLEKS                       R11 R0 K9 ["className"]
       80 JUMPIF                           R11 ; [+2]
       81 GETTABLEKS                       R11 R0 K4 ["nodeType"]
       83 SETLIST                          R9 R10 2 [1]
       85 CALL                             R7 2 1
       86 GETTABLEKS                       R9 R0 K10 ["name"]
       88 JUMPIF                           R9 ; [+3]
       89 MOVE                             R9 R6
       90 JUMPIF                           R9 ; [+1]
       91 MOVE                             R9 R7
       92 LOADK                            R12 K11 ["[&<>\"']"]
       93 NEWTABLE                         R13 8 0
       95 LOADK                            R14 K12 ["&amp;"]
       96 SETTABLEKS                       R14 R13 K13 ["&"]
       98 LOADK                            R14 K14 ["&lt;"]
       99 SETTABLEKS                       R14 R13 K15 ["<"]
      101 LOADK                            R14 K16 ["&gt;"]
      102 SETTABLEKS                       R14 R13 K17 [">"]
      104 LOADK                            R14 K18 ["&quot;"]
      105 SETTABLEKS                       R14 R13 K19 ["\""]
      107 LOADK                            R14 K20 ["&apos;"]
      108 SETTABLEKS                       R14 R13 K21 ["'"]
      110 NAMECALL                         R10 R9 K22 ["gsub"]
      112 CALL                             R10 3 1
      113 MOVE                             R8 R10
      114 GETTABLEKS                       R9 R0 K10 ["name"]
      116 JUMPIFEQKNIL                     R9 ; [+8]
      118 GETTABLEKS                       R9 R0 K9 ["className"]
      120 GETUPVAL                         R10 6
      121 GETTABLEKS                       R10 R10 K23 ["PARAMETER_NODE_CLASSNAME"]
      123 JUMPIFNOTEQ                      R9 R10 ; [+3]
      125 JUMPIFEQKNIL                     R6 ; [+8]
      127 LOADK                            R9 K24 ["%* <font transparency=\"0.6\">(%*)</font>"]
      128 MOVE                             R11 R8
      129 MOVE                             R12 R7
      130 NAMECALL                         R9 R9 K25 ["format"]
      132 CALL                             R9 3 1
      133 MOVE                             R8 R9
      134 DUPTABLE                         R9 K27 [{"displayName", "editName"}]
      135 SETTABLEKS                       R8 R9 K8 ["displayName"]
      137 GETTABLEKS                       R10 R0 K10 ["name"]
      139 JUMPIF                           R10 ; [+3]
      140 MOVE                             R10 R6
      141 JUMPIF                           R10 ; [+1]
      142 LOADK                            R10 K28 [""]
      143 SETTABLEKS                       R10 R9 K26 ["editName"]
      145 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["GraphContext"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Components"]
       23 GETTABLEKS                       R4 R4 K9 ["NodeLibraryContext"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["NodeViewTypes"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K11 ["Parent"]
       35 GETTABLEKS                       R6 R6 K12 ["React"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K11 ["Parent"]
       42 GETTABLEKS                       R7 R7 K13 ["Signals"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K11 ["Parent"]
       49 GETTABLEKS                       R8 R8 K14 ["SignalsReact"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K11 ["Parent"]
       56 GETTABLEKS                       R9 R9 K15 ["SignalsUtils"]
       58 CALL                             R8 1 1
       59 DUPCLOSURE                       R9 K16 [PROTO_0]
       60 DUPCLOSURE                       R10 K17 [PROTO_6]
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R1
       68 RETURN                           R10 1
