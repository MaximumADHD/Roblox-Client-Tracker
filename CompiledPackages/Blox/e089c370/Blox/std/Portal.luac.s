PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+19]
        2 LOADK                            R4 K0 ["PluginGui"]
        3 NAMECALL                         R2 R1 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+5]
        7 LOADK                            R4 K2 ["ScreenGui"]
        8 NAMECALL                         R2 R1 K1 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+1]
       12 RETURN                           R1 1
       13 GETTABLEKS                       R2 R1 K3 ["Parent"]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R1 K3 ["Parent"]
       20 JUMPBACK                         ; [-20]
       21 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["current"]
        2 JUMPIFNOT                        R2 ; [+13]
        3 GETTABLEKS                       R2 R0 K0 ["current"]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["alive"]
        8 GETTABLEKS                       R2 R1 K2 ["publish"]
       10 GETTABLEKS                       R3 R0 K0 ["current"]
       12 CALL                             R2 1 0
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R0 K0 ["current"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R2 R0 K0 ["current"]
        4 JUMPIFNOT                        R2 ; [+13]
        5 GETTABLEKS                       R2 R0 K0 ["current"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K1 ["alive"]
       10 GETTABLEKS                       R2 R1 K2 ["publish"]
       12 GETTABLEKS                       R3 R0 K0 ["current"]
       14 CALL                             R2 1 0
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R0 K0 ["current"]
       18 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R1 K0 ["peek"]
        2 GETTABLEKS                       R5 R0 K1 ["target"]
        4 CALL                             R4 1 1
        5 JUMPIF                           R4 ; [+4]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R5 R1 K2 ["host"]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R5 R1 K0 ["peek"]
       12 GETTABLEKS                       R6 R0 K3 ["children"]
       14 CALL                             R5 1 1
       15 GETTABLEKS                       R6 R2 K4 ["current"]
       17 JUMPIFNOT                        R6 ; [+13]
       18 GETTABLEKS                       R6 R2 K4 ["current"]
       20 LOADB                            R7 0
       21 SETTABLEKS                       R7 R6 K5 ["alive"]
       23 GETTABLEKS                       R6 R1 K6 ["publish"]
       25 GETTABLEKS                       R7 R2 K4 ["current"]
       27 CALL                             R6 1 0
       28 LOADNIL                          R6
       29 SETTABLEKS                       R6 R2 K4 ["current"]
       31 JUMPIFNOT                        R5 ; [+47]
       32 LENGTH                           R6 R5
       33 LOADN                            R7 0
       34 JUMPIFNOTLT                      R7 R6 ; [+44]
       36 DUPTABLE                         R6 K10 [{"type", "name", "defaultParams", "children"}]
       37 LOADK                            R7 K11 ["Template"]
       38 SETTABLEKS                       R7 R6 K7 ["type"]
       40 LOADK                            R7 K12 ["inner/portal/dynamic"]
       41 SETTABLEKS                       R7 R6 K8 ["name"]
       43 NEWTABLE                         R7 0 0
       45 SETTABLEKS                       R7 R6 K9 ["defaultParams"]
       47 SETTABLEKS                       R5 R6 K3 ["children"]
       49 DUPTABLE                         R7 K16 [{"type", "templateAst", "templateId", "params", "children"}]
       50 LOADK                            R8 K17 ["Ref"]
       51 SETTABLEKS                       R8 R7 K7 ["type"]
       53 SETTABLEKS                       R6 R7 K13 ["templateAst"]
       55 LOADK                            R8 K12 ["inner/portal/dynamic"]
       56 SETTABLEKS                       R8 R7 K14 ["templateId"]
       58 NEWTABLE                         R8 0 0
       60 SETTABLEKS                       R8 R7 K15 ["params"]
       62 NEWTABLE                         R8 0 0
       64 SETTABLEKS                       R8 R7 K3 ["children"]
       66 GETTABLEKS                       R8 R1 K18 ["createChild"]
       68 MOVE                             R9 R7
       69 GETTABLEKS                       R10 R1 K19 ["childOrder"]
       71 MOVE                             R11 R4
       72 CALL                             R8 3 1
       73 SETTABLEKS                       R8 R2 K4 ["current"]
       75 GETTABLEKS                       R9 R1 K6 ["publish"]
       77 MOVE                             R10 R8
       78 CALL                             R9 1 0
       79 NEWCLOSURE                       R6 P0
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R1
       82 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["state"]
       16 GETTABLEKS                       R3 R3 K7 ["Signals"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K8 [PROTO_0]
       20 DUPCLOSURE                       R4 K9 [PROTO_1]
       21 DUPTABLE                         R5 K17 [{"type", "name", "defaultParams", "children", "controller", "analyze", "mountEffect"}]
       22 LOADK                            R6 K18 ["Template"]
       23 SETTABLEKS                       R6 R5 K10 ["type"]
       25 LOADK                            R6 K19 ["Portal"]
       26 SETTABLEKS                       R6 R5 K11 ["name"]
       28 DUPTABLE                         R6 K21 [{"target", "children"}]
       29 LOADNIL                          R7
       30 SETTABLEKS                       R7 R6 K20 ["target"]
       32 NEWTABLE                         R7 0 0
       34 SETTABLEKS                       R7 R6 K13 ["children"]
       36 SETTABLEKS                       R6 R5 K12 ["defaultParams"]
       38 NEWTABLE                         R6 0 0
       40 SETTABLEKS                       R6 R5 K13 ["children"]
       42 LOADNIL                          R6
       43 SETTABLEKS                       R6 R5 K14 ["controller"]
       45 LOADNIL                          R6
       46 SETTABLEKS                       R6 R5 K15 ["analyze"]
       48 DUPCLOSURE                       R6 K22 [PROTO_3]
       49 CAPTURE                          VAL R3
       50 SETTABLEKS                       R6 R5 K16 ["mountEffect"]
       52 RETURN                           R5 1
