PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_status"]
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+24]
        5 GETTABLEKS                       R1 R0 K2 ["default"]
        7 GETIMPORT                        R2 K4 [_G]
        9 GETTABLEKS                       R2 R2 K5 ["__DEV__"]
       11 JUMPIFNOT                        R2 ; [+10]
       12 JUMPIFNOTEQKNIL                  R1 ; [+9]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K6 ["error"]
       17 LOADK                            R3 K7 ["lazy: Expected the result of a dynamic import() call. Instead received: `%s`\n\nYour code should look like: \n  local MyComponent = lazy(function() return reqquire(script.Parent.MyComponent) end)"]
       18 GETUPVAL                         R4 2
       19 MOVE                             R5 R0
       20 CALL                             R4 1 -1
       21 CALL                             R2 -1 0
       22 GETUPVAL                         R2 0
       23 LOADN                            R3 1
       24 SETTABLEKS                       R3 R2 K0 ["_status"]
       26 SETTABLEKS                       R1 R2 K8 ["_result"]
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_status"]
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+7]
        5 GETUPVAL                         R1 0
        6 LOADN                            R2 2
        7 SETTABLEKS                       R2 R1 K0 ["_status"]
        9 SETTABLEKS                       R0 R1 K2 ["_result"]
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_status"]
        2 JUMPIFNOTEQKN                    R1 K1 [-1] ; [+19]
        4 GETTABLEKS                       R1 R0 K2 ["_result"]
        6 MOVE                             R2 R1
        7 CALL                             R2 0 1
        8 LOADN                            R3 0
        9 SETTABLEKS                       R3 R0 K0 ["_status"]
       11 SETTABLEKS                       R2 R0 K2 ["_result"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 NEWCLOSURE                       R6 P1
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R3 R2 K3 ["andThen"]
       21 CALL                             R3 3 0
       22 GETTABLEKS                       R1 R0 K0 ["_status"]
       24 JUMPIFNOTEQKN                    R1 K4 [1] ; [+4]
       26 GETTABLEKS                       R1 R0 K2 ["_result"]
       28 RETURN                           R1 1
       29 GETIMPORT                        R1 K6 [error]
       31 GETTABLEKS                       R2 R0 K2 ["_result"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKS                    R1 K0 ["defaultProps"] ; [+3]
        2 GETUPVAL                         R2 0
        3 RETURN                           R2 1
        4 JUMPIFNOTEQKS                    R1 K1 ["propTypes"] ; [+3]
        6 GETUPVAL                         R2 1
        7 RETURN                           R2 1
        8 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKS                    R1 K0 ["defaultProps"] ; [+20]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["error"]
        5 LOADK                            R4 K2 ["React.lazy(...): It is not supported to assign `defaultProps` to a lazy component import. Either specify them where the component is defined, or create a wrapping component around it."]
        6 CALL                             R3 1 0
        7 SETUPVAL                         R2 1
        8 DUPTABLE                         R5 K5 [{"__index", "__newindex"}]
        9 DUPCLOSURE                       R6 K6 [PROTO_4]
       10 SETTABLEKS                       R6 R5 K3 ["__index"]
       12 DUPCLOSURE                       R6 K7 [PROTO_5]
       13 SETTABLEKS                       R6 R5 K4 ["__newindex"]
       15 FASTCALL2                        SETMETATABLE R0 R5 ; [+4]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K9 [setmetatable]
       20 CALL                             R3 2 0
       21 JUMPIFNOTEQKS                    R1 K10 ["propTypes"] ; [+20]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K1 ["error"]
       26 LOADK                            R4 K11 ["React.lazy(...): It is not supported to assign `propTypes` to a lazy component import. Either specify them where the component is defined, or create a wrapping component around it."]
       27 CALL                             R3 1 0
       28 SETUPVAL                         R2 2
       29 DUPTABLE                         R5 K5 [{"__index", "__newindex"}]
       30 DUPCLOSURE                       R6 K12 [PROTO_6]
       31 SETTABLEKS                       R6 R5 K3 ["__index"]
       33 DUPCLOSURE                       R6 K13 [PROTO_7]
       34 SETTABLEKS                       R6 R5 K4 ["__newindex"]
       36 FASTCALL2                        SETMETATABLE R0 R5 ; [+4]
       38 MOVE                             R4 R0
       39 GETIMPORT                        R3 K9 [setmetatable]
       41 CALL                             R3 2 0
       42 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"_status", "_result"}]
        1 LOADN                            R2 255
        2 SETTABLEKS                       R2 R1 K0 ["_status"]
        4 SETTABLEKS                       R0 R1 K1 ["_result"]
        6 NEWTABLE                         R2 4 0
        8 GETUPVAL                         R3 0
        9 SETTABLEKS                       R3 R2 K3 ["$$typeof"]
       11 SETTABLEKS                       R1 R2 K4 ["_payload"]
       13 GETGLOBAL                        R3 K5 ["lazyInitializer"]
       15 SETTABLEKS                       R3 R2 K6 ["_init"]
       17 GETIMPORT                        R3 K8 [_G]
       19 GETTABLEKS                       R3 R3 K9 ["__DEV__"]
       21 JUMPIFNOT                        R3 ; [+21]
       22 LOADNIL                          R3
       23 LOADNIL                          R4
       24 DUPTABLE                         R7 K12 [{"__index", "__newindex"}]
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          REF R3
       27 CAPTURE                          REF R4
       28 SETTABLEKS                       R8 R7 K10 ["__index"]
       30 NEWCLOSURE                       R8 P1
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          REF R3
       33 CAPTURE                          REF R4
       34 SETTABLEKS                       R8 R7 K11 ["__newindex"]
       36 FASTCALL2                        SETMETATABLE R2 R7 ; [+4]
       38 MOVE                             R6 R2
       39 GETIMPORT                        R5 K14 [setmetatable]
       41 CALL                             R5 2 0
       42 CLOSEUPVALS                      R3
       43 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["console"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["LuauPolyfill"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K8 ["util"]
       21 GETTABLEKS                       R4 R4 K9 ["inspect"]
       23 GETIMPORT                        R5 K4 [require]
       25 GETTABLEKS                       R6 R0 K5 ["Shared"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K4 [require]
       30 GETTABLEKS                       R7 R0 K5 ["Shared"]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R6 R6 K10 ["ReactSymbols"]
       35 GETTABLEKS                       R7 R6 K11 ["REACT_LAZY_TYPE"]
       37 DUPCLOSURE                       R8 K12 [PROTO_2]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R4
       40 SETGLOBAL                        R8 K13 ["lazyInitializer"]
       42 NEWTABLE                         R8 1 0
       44 DUPCLOSURE                       R9 K14 [PROTO_9]
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R9 R8 K15 ["lazy"]
       49 RETURN                           R8 1
