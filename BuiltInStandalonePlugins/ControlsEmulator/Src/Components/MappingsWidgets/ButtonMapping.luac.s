PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 1 0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["Tag"]
        9 LOADK                            R5 K3 ["Mapping-Widget Width-Scaling"]
       10 SETTABLE                         R5 R3 R4
       11 DUPTABLE                         R4 K6 [{"Label", "Arrow"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 1
       16 DUPTABLE                         R7 K10 [{"keyName", "side", "Position"}]
       17 GETTABLEKS                       R8 R0 K7 ["keyName"]
       19 SETTABLEKS                       R8 R7 K7 ["keyName"]
       21 GETTABLEKS                       R8 R0 K8 ["side"]
       23 SETTABLEKS                       R8 R7 K8 ["side"]
       25 GETTABLEKS                       R8 R0 K9 ["Position"]
       27 SETTABLEKS                       R8 R7 K9 ["Position"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K4 ["Label"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K0 ["createElement"]
       35 GETUPVAL                         R6 2
       36 DUPTABLE                         R7 K14 [{"arrowStart", "arrowDestination", "arrowBendPoint"}]
       37 GETTABLEKS                       R8 R0 K9 ["Position"]
       39 SETTABLEKS                       R8 R7 K11 ["arrowStart"]
       41 GETTABLEKS                       R8 R0 K12 ["arrowDestination"]
       43 SETTABLEKS                       R8 R7 K12 ["arrowDestination"]
       45 GETTABLEKS                       R8 R0 K13 ["arrowBendPoint"]
       47 SETTABLEKS                       R8 R7 K13 ["arrowBendPoint"]
       49 CALL                             R5 2 1
       50 SETTABLEKS                       R5 R4 K5 ["Arrow"]
       52 CALL                             R1 3 -1
       53 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["Arrow"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K8 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["MappingLabel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K11 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["KeyNamesConstants"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K14 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 GETTABLEKS                       R6 R1 K15 ["memo"]
       47 MOVE                             R7 R5
       48 CALL                             R6 1 -1
       49 RETURN                           R6 -1
