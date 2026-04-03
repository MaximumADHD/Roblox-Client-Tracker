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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["className"]
        3 JUMPIFEQKS                       R0 K1 ["ClipNode"] ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["nodeProps"]
       10 GETTABLEKS                       R0 R1 K3 ["AnimationId"]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K5 [typeof]
       16 CALL                             R1 1 1
       17 JUMPIFEQKS                       R1 K6 ["string"] ; [+3]
       19 LOADNIL                          R1
       20 RETURN                           R1 1
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K7 ["getAssetNameAsync"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R4 0 1
       14 GETTABLEKS                       R5 R0 K3 ["className"]
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K4 ["useAsync"]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R5 0 2
       27 GETTABLEKS                       R7 R0 K3 ["className"]
       29 JUMPIFEQKS                       R7 K5 ["ClipNode"] ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 GETTABLEKS                       R7 R1 K6 ["getAssetNameAsync"]
       35 SETLIST                          R5 R6 2 [1]
       37 CALL                             R3 2 1
       38 GETTABLEKS                       R5 R0 K7 ["name"]
       40 JUMPIF                           R5 ; [+8]
       41 GETTABLEKS                       R6 R3 K8 ["status"]
       43 JUMPIFNOTEQKS                    R6 K9 ["ok"] ; [+4]
       45 GETTABLEKS                       R5 R3 K10 ["value"]
       47 JUMPIF                           R5 ; [+1]
       48 MOVE                             R5 R2
       49 LOADK                            R8 K11 ["[&<>\"']"]
       50 NEWTABLE                         R9 8 0
       52 LOADK                            R10 K12 ["&amp;"]
       53 SETTABLEKS                       R10 R9 K13 ["&"]
       55 LOADK                            R10 K14 ["&lt;"]
       56 SETTABLEKS                       R10 R9 K15 ["<"]
       58 LOADK                            R10 K16 ["&gt;"]
       59 SETTABLEKS                       R10 R9 K17 [">"]
       61 LOADK                            R10 K18 ["&quot;"]
       62 SETTABLEKS                       R10 R9 K19 ["\""]
       64 LOADK                            R10 K20 ["&apos;"]
       65 SETTABLEKS                       R10 R9 K21 ["'"]
       67 NAMECALL                         R6 R5 K22 ["gsub"]
       69 CALL                             R6 3 1
       70 MOVE                             R4 R6
       71 GETTABLEKS                       R5 R0 K7 ["name"]
       73 JUMPIFEQKNIL                     R5 ; [+8]
       75 GETTABLEKS                       R5 R0 K3 ["className"]
       77 GETUPVAL                         R7 3
       78 GETTABLEKS                       R6 R7 K23 ["PARAMETER_NODE_CLASSNAME"]
       80 JUMPIFNOTEQ                      R5 R6 ; [+9]
       82 GETTABLEKS                       R5 R3 K8 ["status"]
       84 JUMPIFNOTEQKS                    R5 K9 ["ok"] ; [+12]
       86 GETTABLEKS                       R5 R3 K10 ["value"]
       88 JUMPIFEQKNIL                     R5 ; [+8]
       90 LOADK                            R5 K24 ["%* <font transparency=\"0.6\">(%*)</font>"]
       91 MOVE                             R7 R4
       92 MOVE                             R8 R2
       93 NAMECALL                         R5 R5 K25 ["format"]
       95 CALL                             R5 3 1
       96 MOVE                             R4 R5
       97 DUPTABLE                         R5 K28 [{"displayName", "editName"}]
       98 SETTABLEKS                       R4 R5 K26 ["displayName"]
      100 GETTABLEKS                       R6 R0 K7 ["name"]
      102 JUMPIF                           R6 ; [+8]
      103 GETTABLEKS                       R7 R3 K8 ["status"]
      105 JUMPIFNOTEQKS                    R7 K9 ["ok"] ; [+4]
      107 GETTABLEKS                       R6 R3 K10 ["value"]
      109 JUMPIF                           R6 ; [+1]
      110 LOADK                            R6 K29 [""]
      111 SETTABLEKS                       R6 R5 K27 ["editName"]
      113 RETURN                           R5 1

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
       23 GETTABLEKS                       R4 R0 K10 ["NodeViewTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Parent"]
       30 GETTABLEKS                       R5 R6 K12 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Parent"]
       37 GETTABLEKS                       R6 R7 K13 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K14 [PROTO_0]
       41 DUPCLOSURE                       R7 K15 [PROTO_3]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R2
       46 RETURN                           R7 1
