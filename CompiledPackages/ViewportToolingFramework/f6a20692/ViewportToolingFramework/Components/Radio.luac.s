PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnChange"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R1 K1 ["Items"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R0 K2 ["NextOrder"]
       11 CALL                             R8 0 1
       12 GETTABLEKS                       R9 R7 K3 ["Id"]
       14 GETUPVAL                         R11 0
       15 GETTABLEKS                       R10 R11 K4 ["createElement"]
       17 GETUPVAL                         R11 1
       18 DUPTABLE                         R12 K5 [{"Item", "NextOrder"}]
       19 DUPTABLE                         R13 K13 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick", "Selected", "Enabled"}]
       20 LOADK                            R14 K14 ["Button"]
       21 SETTABLEKS                       R14 R13 K6 ["Type"]
       23 GETTABLEKS                       R14 R7 K7 ["Tooltip"]
       25 SETTABLEKS                       R14 R13 K7 ["Tooltip"]
       27 GETTABLEKS                       R14 R7 K8 ["TooltipDescription"]
       29 SETTABLEKS                       R14 R13 K8 ["TooltipDescription"]
       31 GETTABLEKS                       R14 R7 K9 ["Icon"]
       33 SETTABLEKS                       R14 R13 K9 ["Icon"]
       35 NEWCLOSURE                       R14 P0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R7
       38 SETTABLEKS                       R14 R13 K10 ["OnClick"]
       40 GETTABLEKS                       R15 R1 K15 ["Value"]
       42 GETTABLEKS                       R16 R7 K3 ["Id"]
       44 JUMPIFEQ                         R15 R16 ; [+2]
       46 LOADB                            R14 0 +1
       47 LOADB                            R14 1
       48 SETTABLEKS                       R14 R13 K11 ["Selected"]
       50 GETTABLEKS                       R14 R7 K12 ["Enabled"]
       52 SETTABLEKS                       R14 R13 K12 ["Enabled"]
       54 SETTABLEKS                       R13 R12 K0 ["Item"]
       56 NEWCLOSURE                       R13 P1
       57 CAPTURE                          VAL R8
       58 SETTABLEKS                       R13 R12 K2 ["NextOrder"]
       60 CALL                             R10 2 1
       61 SETTABLE                         R10 R2 R9
       62 FORGLOOP                         R3 2 ; [-54]
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R3 R4 K4 ["createElement"]
       67 GETUPVAL                         R5 0
       68 GETTABLEKS                       R4 R5 K16 ["Fragment"]
       70 NEWTABLE                         R5 0 0
       72 MOVE                             R6 R2
       73 CALL                             R3 3 -1
       74 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R4 K9 ["Button"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_2]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 RETURN                           R4 1
