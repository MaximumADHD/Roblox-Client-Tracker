PROTO_0:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+21]
        5 GETTABLEKS                       R3 R0 K4 ["__componentName"]
        7 ORK                              R2 R3 K3 ["ReactClass"]
        8 MOVE                             R4 R2
        9 LOADK                            R5 K5 ["."]
       10 MOVE                             R6 R1
       11 CONCAT                           R3 R4 R6
       12 GETUPVAL                         R5 0
       13 GETTABLE                         R4 R5 R3
       14 JUMPIFNOT                        R4 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K6 ["error"]
       19 LOADK                            R5 K7 ["Can't call %s on a component that is not yet mounted. This is a no-op, but it might indicate a bug in your application. Instead, assign to `self.state` directly with the desired state in the %s component's `init` method."]
       20 MOVE                             R6 R1
       21 MOVE                             R7 R2
       22 CALL                             R4 3 0
       23 GETUPVAL                         R4 0
       24 LOADB                            R5 1
       25 SETTABLE                         R5 R4 R3
       26 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R4 K1 [_G]
        2 GETTABLEKS                       R3 R4 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+21]
        5 GETTABLEKS                       R4 R0 K4 ["__componentName"]
        7 ORK                              R3 R4 K3 ["ReactClass"]
        8 MOVE                             R5 R3
        9 LOADK                            R6 K5 ["."]
       10 LOADK                            R7 K6 ["forceUpdate"]
       11 CONCAT                           R4 R5 R7
       12 GETUPVAL                         R6 0
       13 GETTABLE                         R5 R6 R4
       14 JUMPIFNOT                        R5 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K7 ["error"]
       19 LOADK                            R6 K8 ["Can't call %s on a component that is not yet mounted. This is a no-op, but it might indicate a bug in your application. Instead, assign to `self.state` directly with the desired state in the %s component's `init` method."]
       20 LOADK                            R7 K6 ["forceUpdate"]
       21 MOVE                             R8 R3
       22 CALL                             R5 3 0
       23 GETUPVAL                         R5 0
       24 LOADB                            R6 1
       25 SETTABLE                         R6 R5 R4
       26 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R5 K1 [_G]
        2 GETTABLEKS                       R4 R5 K2 ["__DEV__"]
        4 JUMPIFNOT                        R4 ; [+21]
        5 GETTABLEKS                       R5 R0 K4 ["__componentName"]
        7 ORK                              R4 R5 K3 ["ReactClass"]
        8 MOVE                             R6 R4
        9 LOADK                            R7 K5 ["."]
       10 LOADK                            R8 K6 ["replaceState"]
       11 CONCAT                           R5 R6 R8
       12 GETUPVAL                         R7 0
       13 GETTABLE                         R6 R7 R5
       14 JUMPIFNOT                        R6 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R6 R7 K7 ["error"]
       19 LOADK                            R7 K8 ["Can't call %s on a component that is not yet mounted. This is a no-op, but it might indicate a bug in your application. Instead, assign to `self.state` directly with the desired state in the %s component's `init` method."]
       20 LOADK                            R8 K6 ["replaceState"]
       21 MOVE                             R9 R4
       22 CALL                             R6 3 0
       23 GETUPVAL                         R6 0
       24 LOADB                            R7 1
       25 SETTABLE                         R7 R6 R5
       26 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R5 K1 [_G]
        2 GETTABLEKS                       R4 R5 K2 ["__DEV__"]
        4 JUMPIFNOT                        R4 ; [+21]
        5 GETTABLEKS                       R5 R0 K4 ["__componentName"]
        7 ORK                              R4 R5 K3 ["ReactClass"]
        8 MOVE                             R6 R4
        9 LOADK                            R7 K5 ["."]
       10 LOADK                            R8 K6 ["setState"]
       11 CONCAT                           R5 R6 R8
       12 GETUPVAL                         R7 0
       13 GETTABLE                         R6 R7 R5
       14 JUMPIFNOT                        R6 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R6 R7 K7 ["error"]
       19 LOADK                            R7 K8 ["Can't call %s on a component that is not yet mounted. This is a no-op, but it might indicate a bug in your application. Instead, assign to `self.state` directly with the desired state in the %s component's `init` method."]
       20 LOADK                            R8 K6 ["setState"]
       21 MOVE                             R9 R4
       22 CALL                             R6 3 0
       23 GETUPVAL                         R6 0
       24 LOADB                            R7 1
       25 SETTABLE                         R7 R6 R5
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Shared"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R1 R2 K6 ["console"]
       14 NEWTABLE                         R2 0 0
       16 DUPCLOSURE                       R3 K7 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 DUPTABLE                         R4 K12 [{"isMounted", "enqueueForceUpdate", "enqueueReplaceState", "enqueueSetState"}]
       20 DUPCLOSURE                       R5 K13 [PROTO_1]
       21 SETTABLEKS                       R5 R4 K8 ["isMounted"]
       23 DUPCLOSURE                       R5 K14 [PROTO_2]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R5 R4 K9 ["enqueueForceUpdate"]
       28 DUPCLOSURE                       R5 K15 [PROTO_3]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R5 R4 K10 ["enqueueReplaceState"]
       33 DUPCLOSURE                       R5 K16 [PROTO_4]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R5 R4 K11 ["enqueueSetState"]
       38 RETURN                           R4 1
