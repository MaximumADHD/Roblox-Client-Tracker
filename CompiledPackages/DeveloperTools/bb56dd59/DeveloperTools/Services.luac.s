PROTO_0:
        0 GETIMPORT                        R1 K1 [script]
        2 GETTABLEKS                       R0 R1 K2 ["Parent"]
        4 LOADK                            R2 K3 ["RunningUnderCLI"]
        5 NAMECALL                         R0 R0 K4 ["FindFirstChild"]
        7 CALL                             R0 2 1
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETTABLEKS                       R1 R0 K5 ["Value"]
       11 JUMPIF                           R1 ; [+1]
       12 LOADB                            R1 0
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isRunningUnderCLI"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETIMPORT                        R0 K3 [Instance.new]
        7 LOADK                            R1 K4 ["Frame"]
        8 CALL                             R0 1 1
        9 JUMPIF                           R0 ; [+6]
       10 GETIMPORT                        R0 K6 [game]
       12 LOADK                            R2 K7 ["StudioService"]
       13 NAMECALL                         R0 R0 K8 ["GetService"]
       15 CALL                             R0 2 1
       16 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isRunningUnderCLI"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETIMPORT                        R0 K3 [Instance.new]
        7 LOADK                            R1 K4 ["Frame"]
        8 CALL                             R0 1 1
        9 JUMPIF                           R0 ; [+6]
       10 GETIMPORT                        R0 K6 [game]
       12 LOADK                            R2 K7 ["CoreGui"]
       13 NAMECALL                         R0 R0 K8 ["GetService"]
       15 CALL                             R0 2 1
       16 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isRunningUnderCLI"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETIMPORT                        R0 K3 [Instance.new]
        7 LOADK                            R1 K4 ["Frame"]
        8 CALL                             R0 1 1
        9 JUMPIF                           R0 ; [+6]
       10 GETIMPORT                        R0 K6 [game]
       12 LOADK                            R2 K7 ["RobloxPluginGuiService"]
       13 NAMECALL                         R0 R0 K8 ["GetService"]
       15 CALL                             R0 2 1
       16 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["isRunningUnderCLI"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["getStudioService"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["getCoreGui"]
       14 DUPCLOSURE                       R1 K6 [PROTO_3]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K7 ["getRobloxPluginGuiService"]
       18 RETURN                           R0 1
