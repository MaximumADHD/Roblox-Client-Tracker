PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RulesSchemaVersion"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 MOVE                             R2 R0
        6 JUMPIFNOT                        R2 ; [+5]
        7 LOADN                            R3 3
        8 JUMPIFLE                         R3 R1 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RulesSchemaVersion"]
        2 NAMECALL                         R0 R0 K1 ["GetPropertyChangedSignal"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["CreateAvatarRules"]
        4 GETTABLEKS                       R2 R2 K1 ["fromAssetDm"]
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETIMPORT                        R1 K1 [pcall]
        7 DUPCLOSURE                       R2 K2 [PROTO_2]
        8 CAPTURE                          UPVAL U1
        9 CALL                             R1 1 2
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 NAMECALL                         R3 R2 K3 ["Connect"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K2 ["AvatarSettings"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R0 K9 ["Src"]
       17 GETTABLEKS                       R3 R3 K10 ["Util"]
       19 GETTABLEKS                       R3 R3 K11 ["InvokeKeys"]
       21 CALL                             R2 1 1
       22 NEWTABLE                         R3 2 0
       24 LOADB                            R4 0
       25 DUPCLOSURE                       R5 K12 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R5 R3 K13 ["isActive"]
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          REF R4
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R5 R3 K14 ["connect"]
       35 CLOSEUPVALS                      R4
       36 RETURN                           R3 1
