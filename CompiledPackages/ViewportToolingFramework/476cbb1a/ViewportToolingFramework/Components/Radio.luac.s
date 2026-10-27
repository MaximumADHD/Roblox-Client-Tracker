PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChange"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Id"]
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
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R10 R10 K4 ["createElement"]
       17 GETUPVAL                         R11 1
       18 DUPTABLE                         R12 K5 [{"Item", "NextOrder"}]
       19 DUPTABLE                         R13 K14 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["OnClick"], ["Selected"], ["Enabled"]}]
       20 GETTABLEKS                       R14 R7 K8 ["Tooltip"]
       22 SETTABLEKS                       R14 R13 K8 ["Tooltip"]
       24 GETTABLEKS                       R14 R7 K9 ["TooltipDescription"]
       26 SETTABLEKS                       R14 R13 K9 ["TooltipDescription"]
       28 GETTABLEKS                       R14 R7 K10 ["Icon"]
       30 SETTABLEKS                       R14 R13 K10 ["Icon"]
       32 NEWCLOSURE                       R14 P0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R7
       35 SETTABLEKS                       R14 R13 K11 ["OnClick"]
       37 GETTABLEKS                       R15 R1 K15 ["Value"]
       39 GETTABLEKS                       R16 R7 K3 ["Id"]
       41 JUMPIFEQ                         R15 R16 ; [+2]
       43 LOADB                            R14 0 +1
       44 LOADB                            R14 1
       45 SETTABLEKS                       R14 R13 K12 ["Selected"]
       47 GETTABLEKS                       R14 R7 K13 ["Enabled"]
       49 SETTABLEKS                       R14 R13 K13 ["Enabled"]
       51 SETTABLEKS                       R13 R12 K0 ["Item"]
       53 NEWCLOSURE                       R13 P1
       54 CAPTURE                          VAL R8
       55 SETTABLEKS                       R13 R12 K2 ["NextOrder"]
       57 CALL                             R10 2 1
       58 SETTABLE                         R10 R2 R9
       59 FORGLOOP                         R3 2 ; [-51]
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R3 R3 K4 ["createElement"]
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K16 ["Fragment"]
       67 NEWTABLE                         R5 0 0
       69 MOVE                             R6 R2
       70 CALL                             R3 3 -1
       71 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Button"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_2]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 RETURN                           R4 1
