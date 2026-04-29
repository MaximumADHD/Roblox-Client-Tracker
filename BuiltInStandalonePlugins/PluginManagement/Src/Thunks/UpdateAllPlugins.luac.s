PROTO_0:
        0 NAMECALL                         R3 R0 K0 ["getState"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K1 ["Management"]
        5 GETTABLEKS                       R1 R2 K2 ["plugins"]
        7 GETIMPORT                        R2 K4 [pairs]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 LOADNIL                          R7
       13 GETUPVAL                         R8 0
       14 CALL                             R8 0 1
       15 JUMPIFNOT                        R8 ; [+10]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R10 R6 K5 ["assetId"]
       19 GETTABLEKS                       R11 R6 K6 ["latestVersion"]
       21 NAMECALL                         R8 R8 K7 ["IsPluginUpToDate"]
       23 CALL                             R8 3 1
       24 MOVE                             R7 R8
       25 JUMP                             ; [+9]
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R10 R6 K5 ["assetId"]
       29 GETTABLEKS                       R11 R6 K6 ["latestVersion"]
       31 NAMECALL                         R8 R8 K7 ["IsPluginUpToDate"]
       33 CALL                             R8 3 1
       34 MOVE                             R7 R8
       35 JUMPIF                           R7 ; [+8]
       36 GETUPVAL                         R10 3
       37 GETUPVAL                         R11 1
       38 MOVE                             R12 R6
       39 GETUPVAL                         R13 4
       40 CALL                             R10 3 -1
       41 NAMECALL                         R8 R0 K8 ["dispatch"]
       43 CALL                             R8 -1 0
       44 FORGLOOP                         R2 2 ; [-33]
       46 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R3 K6 ["getFFlagStudioFixPluginManagementPluginTests"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K8 [game]
       18 LOADK                            R4 K9 ["StudioService"]
       19 NAMECALL                         R2 R2 K10 ["GetService"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R6 R0 K11 ["Src"]
       26 GETTABLEKS                       R5 R6 K12 ["Thunks"]
       28 GETTABLEKS                       R4 R5 K13 ["UpdatePlugin"]
       30 CALL                             R3 1 1
       31 DUPCLOSURE                       R4 K14 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 RETURN                           R4 1
