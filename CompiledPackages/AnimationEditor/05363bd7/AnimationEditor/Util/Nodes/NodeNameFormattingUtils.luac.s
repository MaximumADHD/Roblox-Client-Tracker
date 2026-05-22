PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%s*Animation%s*"]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 1
        6 MOVE                             R0 R1
        7 GETIMPORT                        R1 K2 [string.gsub]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 ["%s*Node%s*"]
       11 LOADK                            R4 K4 [""]
       12 CALL                             R1 3 1
       13 MOVE                             R0 R1
       14 GETIMPORT                        R1 K2 [string.gsub]
       16 MOVE                             R2 R0
       17 LOADK                            R3 K6 ["([a-z])([A-Z])"]
       18 LOADK                            R4 K7 ["%1 %2"]
       19 CALL                             R1 3 1
       20 MOVE                             R0 R1
       21 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["PARAMETER_NODE_CLASSNAME"]
        4 JUMPIFNOTEQ                      R1 R2 ; [+2]
        6 RETURN                           R0 1
        7 JUMPIFNOT                        R0 ; [+40]
        8 JUMPIFNOT                        R1 ; [+39]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["formatName"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K1 ["formatName"]
       17 MOVE                             R4 R0
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQ                      R3 R2 ; [+2]
       21 RETURN                           R3 1
       22 GETIMPORT                        R4 K4 [string.gsub]
       24 MOVE                             R5 R3
       25 LOADK                            R7 K5 ["\\b%*\\b"]
       26 MOVE                             R9 R2
       27 NAMECALL                         R7 R7 K6 ["format"]
       29 CALL                             R7 2 1
       30 MOVE                             R6 R7
       31 LOADK                            R7 K7 [""]
       32 CALL                             R4 3 1
       33 MOVE                             R3 R4
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K1 ["formatName"]
       37 MOVE                             R5 R3
       38 CALL                             R4 1 1
       39 MOVE                             R3 R4
       40 LOADK                            R5 K8 ["%* (%*)"]
       41 MOVE                             R7 R3
       42 MOVE                             R8 R2
       43 NAMECALL                         R5 R5 K6 ["format"]
       45 CALL                             R5 3 1
       46 MOVE                             R4 R5
       47 RETURN                           R4 1
       48 JUMPIFNOT                        R0 ; [+6]
       49 GETUPVAL                         R2 1
       50 GETTABLEKS                       R2 R2 K1 ["formatName"]
       52 MOVE                             R3 R0
       53 CALL                             R2 1 -1
       54 RETURN                           R2 -1
       55 JUMPIFNOT                        R1 ; [+6]
       56 GETUPVAL                         R2 1
       57 GETTABLEKS                       R2 R2 K1 ["formatName"]
       59 MOVE                             R3 R1
       60 CALL                             R2 1 -1
       61 RETURN                           R2 -1
       62 LOADK                            R2 K9 ["Untitled"]
       63 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["animationId"] ; [+3]
        2 LOADK                            R1 K1 ["Clip"]
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K4 [string.gsub]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K5 ["([a-z])([A-Z])"]
        8 LOADK                            R4 K6 ["%1 %2"]
        9 CALL                             R1 3 1
       10 MOVE                             R0 R1
       11 GETIMPORT                        R1 K4 [string.gsub]
       13 MOVE                             R2 R0
       14 LOADK                            R3 K7 ["^%l"]
       15 GETIMPORT                        R4 K9 [string.upper]
       17 CALL                             R1 3 1
       18 MOVE                             R0 R1
       19 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 SETTABLEKS                       R3 R2 K9 ["formatName"]
       19 DUPCLOSURE                       R3 K10 [PROTO_1]
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R3 R2 K11 ["getDisplayName"]
       24 DUPCLOSURE                       R3 K12 [PROTO_2]
       25 SETTABLEKS                       R3 R2 K13 ["formatPropertyName"]
       27 RETURN                           R2 1
