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
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["observeNodePropsById"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R0 R1 K2 ["of"]
       13 LOADNIL                          R1
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["className"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["className"]
        7 LOADK                            R2 K1 ["Node$"]
        8 LOADK                            R3 K2 [""]
        9 NAMECALL                         R0 R0 K3 ["gsub"]
       11 CALL                             R0 3 1
       12 LOADK                            R2 K4 ["([a-z])([A-Z])"]
       13 LOADK                            R3 K5 ["%1 %2"]
       14 NAMECALL                         R0 R0 K3 ["gsub"]
       16 CALL                             R0 3 1
       17 RETURN                           R0 1
       18 LOADK                            R0 K6 ["???"]
       19 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["className"]
        3 JUMPIFEQKS                       R0 K1 ["ClipNode"] ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 1
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K2 ["AnimationId"]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K4 [typeof]
       16 CALL                             R1 1 1
       17 JUMPIFEQKS                       R1 K5 ["string"] ; [+3]
       19 LOADNIL                          R1
       20 RETURN                           R1 1
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R1 R2 K6 ["getAssetNameAsync"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K2 ["useSignalState"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U4
       24 NEWTABLE                         R6 0 1
       26 GETTABLEKS                       R7 R0 K4 ["id"]
       28 SETLIST                          R6 R7 1 [1]
       30 CALL                             R4 2 -1
       31 CALL                             R3 -1 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          VAL R0
       37 NEWTABLE                         R6 0 1
       39 GETTABLEKS                       R7 R0 K5 ["className"]
       41 SETLIST                          R6 R7 1 [1]
       43 CALL                             R4 2 1
       44 GETUPVAL                         R6 5
       45 GETTABLEKS                       R5 R6 K6 ["useAsync"]
       47 NEWCLOSURE                       R6 P2
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R1
       51 NEWTABLE                         R7 0 3
       53 MOVE                             R8 R3
       54 GETTABLEKS                       R10 R0 K5 ["className"]
       56 JUMPIFEQKS                       R10 K7 ["ClipNode"] ; [+2]
       58 LOADB                            R9 0 +1
       59 LOADB                            R9 1
       60 GETTABLEKS                       R10 R1 K8 ["getAssetNameAsync"]
       62 SETLIST                          R7 R8 3 [1]
       64 CALL                             R5 2 1
       65 GETTABLEKS                       R7 R0 K9 ["name"]
       67 JUMPIF                           R7 ; [+8]
       68 GETTABLEKS                       R8 R5 K10 ["status"]
       70 JUMPIFNOTEQKS                    R8 K11 ["ok"] ; [+4]
       72 GETTABLEKS                       R7 R5 K12 ["value"]
       74 JUMPIF                           R7 ; [+1]
       75 MOVE                             R7 R4
       76 LOADK                            R10 K13 ["[&<>\"']"]
       77 NEWTABLE                         R11 8 0
       79 LOADK                            R12 K14 ["&amp;"]
       80 SETTABLEKS                       R12 R11 K15 ["&"]
       82 LOADK                            R12 K16 ["&lt;"]
       83 SETTABLEKS                       R12 R11 K17 ["<"]
       85 LOADK                            R12 K18 ["&gt;"]
       86 SETTABLEKS                       R12 R11 K19 [">"]
       88 LOADK                            R12 K20 ["&quot;"]
       89 SETTABLEKS                       R12 R11 K21 ["\""]
       91 LOADK                            R12 K22 ["&apos;"]
       92 SETTABLEKS                       R12 R11 K23 ["'"]
       94 NAMECALL                         R8 R7 K24 ["gsub"]
       96 CALL                             R8 3 1
       97 MOVE                             R6 R8
       98 GETTABLEKS                       R7 R0 K9 ["name"]
      100 JUMPIFEQKNIL                     R7 ; [+8]
      102 GETTABLEKS                       R7 R0 K5 ["className"]
      104 GETUPVAL                         R9 6
      105 GETTABLEKS                       R8 R9 K25 ["PARAMETER_NODE_CLASSNAME"]
      107 JUMPIFNOTEQ                      R7 R8 ; [+9]
      109 GETTABLEKS                       R7 R5 K10 ["status"]
      111 JUMPIFNOTEQKS                    R7 K11 ["ok"] ; [+12]
      113 GETTABLEKS                       R7 R5 K12 ["value"]
      115 JUMPIFEQKNIL                     R7 ; [+8]
      117 LOADK                            R7 K26 ["%* <font transparency=\"0.6\">(%*)</font>"]
      118 MOVE                             R9 R6
      119 MOVE                             R10 R4
      120 NAMECALL                         R7 R7 K27 ["format"]
      122 CALL                             R7 3 1
      123 MOVE                             R6 R7
      124 DUPTABLE                         R7 K30 [{"displayName", "editName"}]
      125 SETTABLEKS                       R6 R7 K28 ["displayName"]
      127 GETTABLEKS                       R8 R0 K9 ["name"]
      129 JUMPIF                           R8 ; [+8]
      130 GETTABLEKS                       R9 R5 K10 ["status"]
      132 JUMPIFNOTEQKS                    R9 K11 ["ok"] ; [+4]
      134 GETTABLEKS                       R8 R5 K12 ["value"]
      136 JUMPIF                           R8 ; [+1]
      137 LOADK                            R8 K31 [""]
      138 SETTABLEKS                       R8 R7 K29 ["editName"]
      140 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["AssetNameContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["NativeGraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["NodeViewTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Parent"]
       37 GETTABLEKS                       R6 R7 K13 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Parent"]
       44 GETTABLEKS                       R7 R8 K14 ["ReactUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R10 R0 K8 ["Util"]
       51 GETTABLEKS                       R9 R10 K15 ["Signals"]
       53 GETTABLEKS                       R8 R9 K16 ["SignalsInstanceUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K12 ["Parent"]
       60 GETTABLEKS                       R9 R10 K17 ["SignalsReact"]
       62 CALL                             R8 1 1
       63 DUPCLOSURE                       R9 K18 [PROTO_0]
       64 DUPCLOSURE                       R10 K19 [PROTO_4]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R2
       72 RETURN                           R10 1
