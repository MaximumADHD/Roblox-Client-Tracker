PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 GETTABLEKS                       R0 R0 K1 ["destroy"]
        9 CALL                             R0 0 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RidlCommandExample"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["create"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K3 ["onNoiseReceived"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U2
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 3
       16 SETTABLEKS                       R1 R2 K4 ["current"]
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          UPVAL U3
       20 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 GETTABLEKS                       R0 R0 K1 ["sayHelloToAnimals"]
        9 LOADN                            R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["plugin"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADK                            R3 K2 ["No noise yet..."]
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["useRef"]
       10 LOADNIL                          R5
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R4
       20 NEWTABLE                         R7 0 0
       22 CALL                             R5 2 0
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R4
       28 NEWTABLE                         R7 0 0
       30 CALL                             R5 2 1
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K6 ["createElement"]
       34 GETUPVAL                         R7 2
       35 DUPTABLE                         R8 K8 [{"tag"}]
       36 LOADK                            R9 K9 ["size-full-full col align-y-center align-x-center padding-medium bg-surface-200 gap-medium"]
       37 SETTABLEKS                       R9 R8 K7 ["tag"]
       39 DUPTABLE                         R9 K12 [{"NoiseDisplay", "TriggerButton"}]
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R10 R10 K6 ["createElement"]
       43 GETUPVAL                         R11 3
       44 DUPTABLE                         R12 K14 [{"Text", "tag"}]
       45 SETTABLEKS                       R2 R12 K13 ["Text"]
       47 LOADK                            R13 K15 ["padding-small auto-xy bg-surface-0 content-emphasis text-body-medium radius-small"]
       48 SETTABLEKS                       R13 R12 K7 ["tag"]
       50 CALL                             R10 2 1
       51 SETTABLEKS                       R10 R9 K10 ["NoiseDisplay"]
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K6 ["createElement"]
       56 GETUPVAL                         R11 4
       57 DUPTABLE                         R12 K19 [{"text", "onActivated", "variant"}]
       58 LOADK                            R13 K20 ["Say Hello to Animals"]
       59 SETTABLEKS                       R13 R12 K16 ["text"]
       61 SETTABLEKS                       R5 R12 K17 ["onActivated"]
       63 GETUPVAL                         R13 5
       64 GETTABLEKS                       R13 R13 K21 ["Emphasis"]
       66 SETTABLEKS                       R13 R12 K18 ["variant"]
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R9 K11 ["TriggerButton"]
       71 CALL                             R6 3 -1
       72 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SuperTemplate"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["Button"]
       27 GETTABLEKS                       R6 R2 K12 ["Enums"]
       29 GETTABLEKS                       R6 R6 K13 ["ButtonVariant"]
       31 GETIMPORT                        R7 K5 [require]
       33 GETIMPORT                        R8 K1 [script]
       35 GETTABLEKS                       R8 R8 K14 ["AnimalNoiseListener"]
       37 CALL                             R7 1 1
       38 DUPCLOSURE                       R8 K15 [PROTO_4]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R6
       45 RETURN                           R8 1
